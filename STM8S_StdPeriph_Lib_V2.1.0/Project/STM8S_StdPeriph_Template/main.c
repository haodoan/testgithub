/**
  ******************************************************************************
  * @file UART1_Printf\main.c
  * @brief This file contains the main function for: retarget the C library printf
  *        /scanf functions to the UART1 example.
  * @author  MCD Application Team
  * @version  V2.0.1
  * @date     18-November-2011
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "stm8s.h"
#include "stdio.h"
#include "string.h"
#include "stdlib.h"
#include "stm8s_it.h"
/**
  * @addtogroup UART1_Printf
  * @{
  */
/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
#ifdef _RAISONANCE_
#define PUTCHAR_PROTOTYPE int putchar (char c)
#define GETCHAR_PROTOTYPE int getchar (void)
#elif defined (_COSMIC_)
#define PUTCHAR_PROTOTYPE char putchar (char c)
#define GETCHAR_PROTOTYPE char getchar (void)
#else /* _IAR_ */
#define PUTCHAR_PROTOTYPE int putchar (int c)
#define GETCHAR_PROTOTYPE int getchar (void)
#endif /* _RAISONANCE_ */
/* Private macro -------------------------------------------------------------*/

char IP_ADDRESS_SERVER[] = "123.15.65.32:8080";//"www.google.com.vn"
//char PORT_SERVER[] = "2082";

#define PWKEY_GPIO_PORT  (GPIOD)
#define PWKEY_GPIO_PINS  (GPIO_PIN_4)
#define DTR_GPIO_PINS  (GPIO_PIN_3)
#define TIM4_PERIOD       124 // generate interrupt timer after 1ms
#define true     (bool)1
#define false    (bool)0
/* Private variables ---------------------------------------------------------*/
typedef struct
{
    char vol[5];
    char bat_percent[5] ;
    char charging[2] ;
}BATTERRY_INFO ;

extern __IO uint32_t   system_tick = 0;
extern uint8_t  gps_fix ;
extern UART_RECEIVE_STRUCT  uart_data ;    	
BATTERRY_INFO getBatterry();
/* Private function prototypes -----------------------------------------------*/
void delay(uint16_t nTime);
static void CLK_Config(void);
static void TIM4_Config(void);

void power_on();
uint8_t start_GPS();
uint8_t get_GPS(char *gprmc_buff_data);
int8_t sendATcommand(char* ATcommand, char* expected_answer1, unsigned int timeout);
void delay(uint16_t nCount);
uint32_t millis() ;
void Config_GPRS_SIM908();
uint8_t HTTP_Terminate();
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void setup()
{
        /* Clock configuration -----------------------------------------*/
    CLK_Config();
    CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
    /* TIM4 configuration -----------------------------------------*/
    TIM4_Config();

    UART1_DeInit();
    /* UART1 configuration ------------------------------------------------------*/
    /* UART1 configured as follow:
        - BaudRate = 115200 baudu
        - Word Length = 8 Bits
        - One Stop Bit
        - No parity
        - Receive and transmit enabled
   	 - UART1 Clock disabled
    */
    UART1_Init((uint32_t)115200, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO,
              UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_TXRX_ENABLE);
    UART1_ITConfig(UART1_IT_RXNE_OR, ENABLE);
    GPIO_Init(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PINS|DTR_GPIO_PINS, GPIO_MODE_OUT_PP_LOW_FAST);
    /* Enable general interrupts */
    enableInterrupts();
    power_on(); // Power up Sim908 module
    delay(10000);
    /*****Config Sim908 Module *****************************/
    sendATcommand("ATE0","OK",2000); // off echo
    //sendATcommand("AT+CIPSHUT","SHUT OK",3000); // disconect gprs
    //sendATcommand("AT+CSCLK=0","OK",2000);      // sleep mode
    GPIO_WriteLow(PWKEY_GPIO_PORT, (GPIO_Pin_TypeDef)DTR_GPIO_PINS); //wake up
    // Power up GPS
    sendATcommand("AT+CGPSPWR=1", "OK", 2000); // power up gps
    // Reset GPS Cold mde
    sendATcommand("AT+CGPSRST=1", "OK", 2000);
    sendATcommand("AT+CREG=2","OK",2000);
    //sendATcommand("AT+CIPSHUT","SHUT OK",30000);
    /************End Config Sim908 Module *****************************/
    delay(1000);
    while (sendATcommand("AT+CREG?", "+CREG: 2,1", 2000) == 0); //Wait register to network
    Config_GPRS_SIM908();
    sendATcommand("AT+SAPBR=1,0","OK",200);
    sendATcommand("AT+CGATT=1","OK",2000);
    // sets APN , user name and password
    sendATcommand("AT+SAPBR=3,1,\"Contype\",\"GPRS\"", "OK", 2000);
    sendATcommand("AT+SAPBR=3,1,\"APN\",\"v-internet\"", "OK", 2000);//3m-world
    sendATcommand("AT+SAPBR=3,1,\"USER\",\"mms\"", "OK", 2000);
    sendATcommand("AT+SAPBR=3,1,\"PWD\",\"mms\"", "OK", 2000);
    sendATcommand("AT+HTTPPARA= \"REDIR\",1","OK", 2000);
    HTTP_Terminate();
    sendATcommand("AT+SAPBR=1,1", "OK", 2000);
    // gets the GPRS bearer
//    while (sendATcommand("AT+SAPBR=1,1", "OK", 2000) == 0)
//    {
//        delay(2000);
//    }
	
}


uint8_t GetResponse(char *expected_answer , uint32_t timeout)
{
    uint8_t answer = 0;
    uint32_t previous ;
    previous = millis();
    do
    {
        if(uart_data.flag_uart_compelete)
        {
            uart_data.flag_uart_compelete = 0;
            if (strstr(uart_data.buff, expected_answer) != NULL)
            {
                answer = 1;
            }
        }
    }while((answer == 0) && ((millis() - previous) < timeout));
    if ((millis() - previous) < timeout)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}


void GetCmdDataSIM(char *str , char DATA_AT[5][10])
{
    //char DATA_AT[5][10];
    char * pch;
    int i=0;
    pch = strtok (str,":");
    while (pch != NULL)
    {
        pch = strtok(NULL,",\"\r\n");
        strcpy(DATA_AT[i++],pch);
        if(i == 5) break;
    }
}

BATTERRY_INFO getBatterry()
{
    char DATA_AT[5][10] ;
    BATTERRY_INFO info_bat ;
    printf("AT+CBC\r");
    if(GetResponse("+CBC:", 2000))
    {
        GetCmdDataSIM(uart_data.buff ,DATA_AT);
        strcpy(info_bat.charging ,DATA_AT[0]);
        strcpy(info_bat.bat_percent ,DATA_AT[1]);
        strcpy(info_bat.vol ,DATA_AT[2]);
        return info_bat ;
    }
//    return 0;
}
typedef struct
{
  char MNC[3];
  char LAC[5];
  char CELLID[5];
}CELLID_INFO;

CELLID_INFO getLacCellid()
{
    char DATA_AT[5][10] ;
    CELLID_INFO info_cellid ;

    printf("AT+CREG?\r");
    if(GetResponse("+CREG:", 2000))
    {
        GetCmdDataSIM(uart_data.buff ,DATA_AT);
        strcpy(info_cellid.LAC,strtok (DATA_AT[2],"\""));
        strcpy(info_cellid.CELLID ,strtok (DATA_AT[3],"\""));
        return info_cellid ;
    }
}
uint32_t millis()
{
	return system_tick ;
}

void power_on()
{
    uint8_t answer=0;
    /* Initialize I/Os in Output Mode */
    GPIO_Init(PWKEY_GPIO_PORT,(GPIO_Pin_TypeDef)PWKEY_GPIO_PINS|DTR_GPIO_PINS, GPIO_MODE_OUT_PP_LOW_FAST);
    // checks if the module is started
    answer = sendATcommand("AT", "OK", 2000);
    if (answer == 0)
    {   // power on pulse
        GPIO_WriteHigh(PWKEY_GPIO_PORT, (GPIO_Pin_TypeDef)PWKEY_GPIO_PINS);;
        delay(3000);
        GPIO_WriteLow(PWKEY_GPIO_PORT, (GPIO_Pin_TypeDef)PWKEY_GPIO_PINS);;
        //Wake up
        GPIO_WriteLow(PWKEY_GPIO_PORT, (GPIO_Pin_TypeDef)DTR_GPIO_PINS);
        // waits for an answer from the module
        printf("ATE0\r");
        while(answer == 0)
        {
            // Send AT every two seconds and wait for the answer
            answer = sendATcommand("AT\r", "OK", 2000);
           //while(UART1_GetFlagStatus(UART1_FLAG_RXNE) == RESET);
        }
    }
    printf("ATE0\r");
}


uint8_t start_GPS(){

    uint32_t previous;

    previous = millis();
    //Wake up Module Sim
    //GPIO_WriteLow(PWKEY_GPIO_PORT, (GPIO_Pin_TypeDef)DTR_GPIO_PINS);
    // Power up GPS
    //sendATcommand("AT+CGPSPWR=1", "OK", 2000);
    // Reset GPS Hot mde
   // sendATcommand("AT+CGPSRST=1", "OK", 2000);
    // waits for fix GPS
    if((sendATcommand("AT+CGPSSTATUS?", "2D Fix", 2000) == 1 ||
        sendATcommand("AT+CGPSSTATUS?", "3D Fix", 2000)) == 1 )
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

uint8_t get_GPS(char *gprmc_buff_data)
{
   // First get the NMEA string
    char * pch;
    printf("AT+CGPSINF=32\r");
    if(GetResponse("OK",2000))
    {
		//strcpy(gprmc_buff_data , uart_data.buff + 5);            
        pch = strtok (uart_data.buff + 5,"\r\n");
        strcpy(gprmc_buff_data , pch);
		return 1 ;
    }
    return 0;
}

/*FUNCTION**********************************************************************
 *
 * Function Name : Config_GPRS_SIM908
 * Description   : Config GPRS for modul SIM908
 * This function use config gprs to sim908
 *
 *END**************************************************************************/
void Config_GPRS_SIM908()
{
    sendATcommand("AT+CIPCSGP=1,\"v-internet\",\"\",\"\"","OK", 2000); // For Viettel Network
    // VinaPhone
    //sendATcommand("AT+CIPCSGP=1,\"3m-world\",\"mms\",\"mms\"","OK", 2000); // For Vina Network
}
uint8_t HTTP_init()
{

    uint8_t answer ;
    // Initializes HTTP service
    answer = sendATcommand("AT+HTTPINIT", "OK", 10000);
    if (answer == 1)
    {
        // Sets CID parameter
        answer = sendATcommand("AT+HTTPPARA=\"CID\",1", "OK", 5000);
        if(!answer)
        {
            //printf("Error setting the CID");
            return 0 ;
        }
        return 1 ;


    }
    else
    {
        //printf("Error initializating");
        return 0;
    }
}

uint8_t HTTP_Terminate()
{
    uint8_t answer ;
    answer =  sendATcommand("AT+HTTPTERM", "OK", 5000);
    return answer ;
}

char IMEI_DEVICE[] = "123456789";
uint8_t HTTP_Send(char *gprmc_data , char *IMEI)
{

	uint8_t answer ;
	char data_server[180];

    memset(data_server , '\0' ,sizeof(data_server)/sizeof(char));
    // Sets url
    //sprintf(data_server, "AT+HTTPPARA=\"URL\",\"http://www.google.com.vn\"");
    sprintf(data_server, "AT+HTTPPARA=\"URL\",\"http://%s/gprmc/Data?acct=tracking&dev=gprmc_%s&gprmc=$GPRMC,%s\"", IP_ADDRESS_SERVER,IMEI,gprmc_data);
    answer = sendATcommand(data_server, "OK", 5000);
    if (answer == 1)
    {
        // Starts GET act , char IMEIion
        answer = sendATcommand("AT+HTTPACTION=0", "+HTTPACTION:0,200", 40000);
    }

    return answer ;

}

int8_t sendATcommand(char* ATcommand, char* expected_answer, unsigned int timeout)
{

    uint8_t answer=0;
    uint32_t previous;
    printf("%s\r",ATcommand);    // Send the AT command
    previous = millis();
    // this loop waits for the answer
    answer = GetResponse(expected_answer , timeout);
    return answer;
}

uint8_t event_send_gprs = 0 ;
#define  TIME_SEND_GPRS     10000

BATTERRY_INFO bat;
void main(void)
{
    uint32_t  time_period_to_send ;
	char   data_gprmc[65];
    setup(); //setup sim908
    bat = getBatterry();
    while(!HTTP_init())
    {
        HTTP_Terminate() ;
    }
    while(1)
    {
        //About period time to set gprs flag to send
        if( millis() - time_period_to_send > TIME_SEND_GPRS)
        {
    		time_period_to_send = millis() ;
    		event_send_gprs = 1 ;
        }
        if(event_send_gprs)
        {

            event_send_gprs = 0 ;
            if(start_GPS()) // time out GPS about 90 second if GPS not fix yet
            {
                gps_fix = 1;
                GPIO_WriteLow(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PINS);
				memset(data_gprmc , '\0' , sizeof(data_gprmc)/sizeof(char) );
                get_GPS(data_gprmc);
                while(!HTTP_Send(data_gprmc ,IMEI_DEVICE))
                {
                    HTTP_Terminate();
                    HTTP_init();
                }

            }
            else
            {
                gps_fix = 0;
            }

        }
    }
}

/**
  * @brief  Inserts a delay time.
  * @param  nTime: specifies the delay time length, in milliseconds.
  * @retval None
  */
void delay(uint16_t nTime)
{
  uint32_t  delay_time ;
  delay_time = millis() + nTime ;
  while (millis() < delay_time);
}

static void CLK_Config(void)
{
    /* Initialization of the clock */
    /* Clock divider to HSI/1 */
    CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
}
/**
  * @brief  Configure TIM4 to generate an update interrupt each 1ms
  * @param  None
  * @retval None
  */
static void TIM4_Config(void)
{
  /* TIM4 configuration:
   - TIM4CLK is set to 16 MHz, the TIM4 Prescaler is equal to 128 so the TIM1 counter
   clock used is 16 MHz / 128 = 125 000 Hz
  - With 125 000 Hz we can generate time base:
      max time base is 2.048 ms if TIM4_PERIOD = 255 --> (255 + 1) / 125000 = 2.048 ms
      min time base is 0.016 ms if TIM4_PERIOD = 1   --> (  1 + 1) / 125000 = 0.016 ms
  - In this example we need to generate a time base equal to 1 ms
   so TIM4_PERIOD = (0.001 * 125000 - 1) = 124 */

  /* Time base configuration */
  TIM4_TimeBaseInit(TIM4_PRESCALER_128, TIM4_PERIOD);
  /* Clear TIM4 update flag */
  TIM4_ClearFlag(TIM4_FLAG_UPDATE);
  /* Enable update interrupt */
  TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);

  /* enable interrupts */
  enableInterrupts();

  /* Enable TIM4 */
  TIM4_Cmd(ENABLE);
}

/**
  * @brief Retargets the C library printf function to the UART.
  * @param c Character to send
  * @retval char Character sent
  */
PUTCHAR_PROTOTYPE
{
  /* Write a character to the UART1 */
  UART1_SendData8(c);
  /* Loop until the end of transmission */
  while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET);

  return (c);
}

/**
  * @brief Retargets the C library scanf function to the USART.
  * @param None
  * @retval char Character to Read
  */
GETCHAR_PROTOTYPE
{
#ifdef _COSMIC_
  char c = 0;
#else
  int c = 0;
#endif
  /* Loop until the Read data register flag is SET */
  while (UART1_GetFlagStatus(UART1_FLAG_RXNE) == RESET);
    c = UART1_ReceiveData8();
  return (c);
}

#ifdef USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param file: pointer to the source file name
  * @param line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif

/**
  * @}
  */

/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
