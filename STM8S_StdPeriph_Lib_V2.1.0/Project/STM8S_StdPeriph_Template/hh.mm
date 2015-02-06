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
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVEmai
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
#include "ctype.h"
#include "stm8s_it.h"
#include "sim900_register.h"
#include "flasheeprom.h"

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
#define PWKEY_GPIO_PORT  	(GPIOD)
#define PWKEY_GPIO_PINS  	(GPIO_PIN_0)
#define DTR_GPIO_PORT  	    (GPIOE)
#define DTR_GPIO_PINS  		(GPIO_PIN_0)
#define LED_GPIO_PORT  		(GPIOC)
#define LED_GPIO_PINS  		(GPIO_PIN_6)
#define TIM4_PERIOD       	124 	// generate interrupt timer after 1ms
#define TIME_SEND_GPRS     	30000   //30 s
#define true     			(bool)1
#define false    			(bool)0
/* Private variables ---------------------------------------------------------*/
typedef struct
{
    char vol[5];
    char bat_percent[5] ;
    char charging[2] ;
}BATTERRY_INFO ;

extern uint32_t  pulse_RD3024;
extern uint8_t flag_vibration;
uint8_t event_send_gprs = 0 ;
uint8_t vibration_sensor_event = 0 ;
char IP_ADDRESS_SERVER[] = "vdttracking.ddns.net";//"42.113.167.68";//
char PORT_SERVER[] = "2020";
int number_send = 0 ;
char latitude[15];
char longitude[15];
char altitude[6];
char date[16];
char time[7];
extern volatile uint32_t time_read_sensor ;
extern uint8_t  gps_fix;
extern __IO uint32_t   system_tick ;
extern UART_RECEIVE_STRUCT  uart_data ;
BATTERRY_INFO getBatterry();
/*
typedef struct
{
    char latitude[15];
    char longitude[15];
    char date[16];
    char time[7];
    char bucxa ;
    char batterry ;
};*/
/* Private function prototypes -----------------------------------------------*/

typedef enum _tcp_status
{
    TCP_SUCCESS = 0 ,
    TCP_CONNECT_FAIL ,
    TCP_SEND_FAIL ,
    TCP_SEND_TIMEOUT ,
    TCP_FAIL
} TCP_STATUS ;

static void ADC_Config(void);
static void CLK_Config(void);
static void TIM4_Config(void);
void power_on();
uint8_t start_GPS();
uint8_t get_GPS(char* buffer_gps);
int8_t sendATcommand(char* ATcommand, char* expected_answer1, unsigned int timeout);
uint32_t millis() ;
void Config_GPRS_SIM908();
TCP_STATUS TCP_Connect(char * IP_address , char *Port);
TCP_STATUS TCP_Send(char *data_string);
void putsUART(char *string);
/* Private functions ---------------------------------------------------------*/
/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
extern volatile uint8_t     flag_send_mesage ;
extern volatile uint32_t    pulse_sensor;
void setup()
{
    /* Clock configuration


    -----------------------------------------*/
    CLK_Config();
    CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
    /* TIM4 configuration -----------------------------------------*/
    TIM4_Config();
    #if  BEEP_WARNING
    GPIO_Init(BEEP_GPIO_PORT,(GPIO_Pin_TypeDef)BEEP_GPIO_PINS, GPIO_MODE_OUT_PP_LOW_FAST);
    GPIO_WriteLow(BEEP_GPIO_PORT, (GPIO_Pin_TypeDef)(BEEP_GPIO_PINS));
    GPIO_Init(WARN_GPIO_PORT, WARN_GPIO_PINS, GPIO_MODE_IN_PU_NO_IT);
    GPIO_Init(WARN1_GPIO_PORT, WARN1_GPIO_PINS, GPIO_MODE_IN_FL_NO_IT);
    #endif
    GPIO_Init(DTR_GPIO_PORT,(GPIO_Pin_TypeDef)DTR_GPIO_PINS, GPIO_MODE_OUT_PP_LOW_FAST);
    GPIO_Init(PWKEY_GPIO_PORT,(GPIO_Pin_TypeDef)PWKEY_GPIO_PINS, GPIO_MODE_OUT_PP_LOW_FAST);
    GPIO_Init(LED_GPIO_PORT,(GPIO_Pin_TypeDef)LED_GPIO_PINS, GPIO_MODE_OUT_PP_LOW_FAST);
    GPIO_WriteHigh(LED_GPIO_PORT, (GPIO_Pin_TypeDef)(LED_GPIO_PINS));
    GPIO_WriteLow(DTR_GPIO_PORT, (GPIO_Pin_TypeDef)(DTR_GPIO_PINS)); // wake up simm module
    ADC_Config();
    UART2_DeInit();
	/* UART1 configuration ------------------------------------------------------*/
	/* UART1 configured as follow:
		- BaudRate = 115200 baudu
		- Word Length = 8 Bits
		- One Stop Bit
		- No p//arity
		- Receive and transmit enabled
	 - UART1 Clock disabled
	*/
	 UART2_Init((uint32_t)115200, UART2_WORDLENGTH_8D, UART2_STOPBITS_1, UART2_PARITY_NO,
			  UART2_SYNCMODE_CLOCK_DISABLE, UART2_MODE_TXRX_ENABLE);
	 UART2_ITConfig(UART2_IT_RXNE_OR, ENABLE);
     /*setting external interrupt*/
     GPIO_Init(RD3024_GPIO_PORT, RD3024_GPIO_PINS, GPIO_MODE_IN_PU_IT);
     #if VERSION
	 EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOB, EXTI_SENSITIVITY_FALL_ONLY);//falling edge
     #else
   	 EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOD, EXTI_SENSITIVITY_FALL_ONLY);//falling edge
    #endif
     EXTI_SetTLISensitivity(EXTI_TLISENSITIVITY_FALL_ONLY);
	/* Enable general interrupts */
	 enableInterrupts();
#if 1
    power_on(); // Power up Sim908 module
    delay(10000); // wait
    //SentEnglis_SIMmsg("0944500186","123456");
	/*****Config Sim908 Module *****************************/
	sendATcommand("ATE0","OK",2000); // off echo
   	sendATcommand("AT+CFUN=1","OK",2000); // off echo
	sendATcommand("AT+CIPSHUT","SHUT OK",3000); // disconect gprs
	sendATcommand("AT+CSCLK=1","OK",2000);      // sleep mode
    //sendATcommand("AT+CMGF=1","OK",2000);
    //DelAllSmsCmgda();
	//GPIO_WriteLow(DTR_GPIO_PORT, (GPIO_Pin_TypeDef)DTR_GPIO_PINS); //wake up
	// Power up GPS
	sendATcommand("AT+CGPSPWR=1", "OK", 2000); // power up gps
	// Reset GPS Cold mde
	sendATcommand("AT+CGPSRST=1", "OK", 2000);
	sendATcommand("AT+CREG=2","OK",2000);
	/************End Config Sim908 Module *****************************/
	delay(1000);
	while (sendATcommand("AT+CREG?", "+CREG: 2,1", 2000) == 0); //Wait register to network
    //Configure DNS server address
    sendATcommand("AT+CGATT","OK",2000);
    delay(1000);
    sendATcommand("AT+CSTT=\"3m-world\",\"mms\",\"mms\"","OK",2000);
    sendATcommand("AT+CIICR","OK",8000);
    delay(5000);
    sendATcommand("AT+CIPSTATUS","OK",3000);
    delay(2000);
    sendATcommand("AT+CIFSR","OK",3000);
    delay(4000);
    sendATcommand("AT+CDNSCFG=\"8.8.8.8\",\"4.4.4.4\"","OK",2000);
    delay(2000);
    sendATcommand("AT&W","OK",2000);
#endif
	//Config_GPRS_SIM908();
}

uint8_t GetResponse(char *expected_answer , uint32_t timeout)
{
    uint8_t answer;
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
    char *buffer_t ;
    char * pch;
    int i=0;
    
    buffer_t = malloc(strlen(str) + 1);
    if( NULL == buffer_t)
    {
        return 0 ;
    }
    strcpy(buffer_t , str);
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
    }
   	return info_bat;
}
typedef struct
{
	//char MNC[3];
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
    }
	return info_cellid ;
}

uint32_t millis()
{
    uint32_t tmp_systick;
    disableInterrupts();
    tmp_systick = system_tick ;
    enableInterrupts();
	return tmp_systick ;
}

void power_on()
{
    uint8_t answer=0;
    /* Initialize I/Os in Output Mode */
    // checks if the module is started
    //answer = sendATcommand("AT", "OK", 2000);
    if(sendATcommand("AT+CREG?", "+CREG: 2,1", 2000) == 0); //Wait register to network
    //if (answer == 0)
    {   // power on pulse
        GPIO_WriteHigh(PWKEY_GPIO_PORT, (GPIO_Pin_TypeDef)PWKEY_GPIO_PINS);;
        delay(3000);
        GPIO_WriteLow(PWKEY_GPIO_PORT, (GPIO_Pin_TypeDef)PWKEY_GPIO_PINS);;
        //Wake up
        //GPIO_WriteLow(PWKEY_GPIO_PORT, (GPIO_Pin_TypeDef)DTR_GPIO_PINS);
        // waits for an answer from the module
        printf("ATE0\r");
        /*if(sendATcommand("AT+CREG?", "+CREG: 2,1", 2000) == 0)
        {
            GPIO_WriteHigh(PWKEY_GPIO_PORT, (GPIO_Pin_TypeDef)PWKEY_GPIO_PINS);;
            delay(3000);
            GPIO_WriteLow(PWKEY_GPIO_PORT, (GPIO_Pin_TypeDef)PWKEY_GPIO_PINS);;
        }*/
    }
    printf("ATE0\r");
}
/*FUNCTION**********************************************************************
 *
 * Function Name : GetIMEI
 * Description   : GetIMEI of Sim module
 * This function use to get id IMEI of Sim module
 *
 *END**************************************************************************/
static char *GetIMEI()
{
    static char imei[16] ;
    uint32_t previous ;
    previous = millis();
    printf("AT+GSN\r");
    do
    {
        if(uart_data.flag_uart_compelete)
        {
            uart_data.flag_uart_compelete = 0;
            strncpy(imei,uart_data.buff + 2,15);
            break;
        }
    }while(millis() - previous < 2000);

    return imei ;

}

/*FUNCTION**********************************************************************
 *
 * Function Name : start_GPS
 * Description   : Starting GPS for modul SIM908
 * This function
 *
 *END**************************************************************************/
uint8_t start_GPS(){

    //Wake up Module Sim
    //GPIO_WriteLow(PWKEY_GPIO_PORT, (GPIO_Pin_TypeDef)DTR_GPIO_PINS);
    // Power up GPS
    //sendATcommand("AT+CGPSPWR=1", "OK", 2000);
    // Reset GPS Hot mde
    // sendATcommand("AT+CGPSRST=1", "OK", 2000);
    // waits for fix GPS
    if((1 == sendATcommand("AT+CGPSSTATUS?", "2D Fix", 2000)) ||
       (1 == sendATcommand("AT+CGPSSTATUS?", "3D Fix", 2000)))
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

/*FUNCTION**********************************************************************
 *
 * Function Name : get_GPS
 * Description   : get_GPS GPRS for modul SIM908
 * This function use config get parameter GPS
 *
 *END**************************************************************************/
uint8_t get_GPS(char *buffer_gps)
{
    char *buffer_gps_t ;
    buffer_gps_t = malloc(strlen(buffer_gps) + 1);
    if( NULL == buffer_gps_t)
    {
        return 0 ;
    }
    strcpy(buffer_gps_t , buffer_gps);
   // First get the NMEA string
    printf("AT+CGPSINF=0\r");
    if(GetResponse("OK",2000))
    {
    // Parses the string
     // delay(2000);
        strtok(buffer_gps_t, ",");
        strcpy(longitude,strtok(NULL, ",")); // Gets longitude
        strcpy(latitude,strtok(NULL, ",")); // Gets latitude
        strcpy(altitude,strtok(NULL, ".")); // Gets altitude
        strtok(NULL, ",");
        strcpy(date,strtok(NULL, ".")); // Gets date
        strtok(NULL, ",");
        free(buffer_gps_t) ;
		return 1 ;
    }
    free(buffer_gps_t) ;
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
//    sendATcommand("AT+CIPCSGP=1,\"v-internet\",\"\",\"\"","OK", 2000); // For Viettel Network
    // VinaPhone
    sendATcommand("AT+CIPCSGP=1,\"3m-world\",\"mms\",\"mms\"","OK", 2000); // For Vina Network
}

/*FUNCTION**********************************************************************
 *
 * Function Name : Tcp_Connect
 * Description   :
 * This function
 *
 *END**************************************************************************/
TCP_STATUS TCP_Connect(char * IP_address , char *Port)
{
    char command[70] ;
    memset(command , '\0',70);
    sendATcommand("AT+CIPSHUT","SHUT OK",30000);
    delay(2000) ;
    //GPIO_Init(RD3024_GPIO_PORT, RD3024_GPIO_PINS, GPIO_MODE_IN_FL_NO_IT);
    sprintf(command ,"AT+CIPSTART=\"TCP\",\"%s\",\"%s\"",IP_address,Port);
    if(1 == sendATcommand(command,"CONNECT OK",60000))
    {
        //GPIO_Init(RD3024_GPIO_PORT, RD3024_GPIO_PINS, GPIO_MODE_IN_FL_IT);
        return TCP_SUCCESS;
    }
    return TCP_CONNECT_FAIL ;
}

/*FUNCTION**********************************************************************
 *
 * Function Name : TCP_Send
 * Description   : `
 * This function
 *
 *END**************************************************************************/
TCP_STATUS TCP_Send(char *data_string)
{

    //char data_ctrl_z[120];
    char *data_ctrl_z;
    char status ;
    data_ctrl_z = malloc(strlen(data_string)+2);
    //GPIO_Init(RD3024_GPIO_PORT, RD3024_GPIO_PINS, GPIO_MODE_IN_FL_NO_IT);
    if(1 == sendATcommand("AT+CIPSTATUS","CONNECT OK",20000))
    {
        //memset(data_ctrl_z , '\0',120);
        if (sendATcommand("AT+CIPSEND", ">",60000))
        {
            sprintf(data_ctrl_z,"%s%c",data_string,26);
            if(!sendATcommand(data_ctrl_z, "SEND OK" , 30000))
    		{
            	status =  TCP_SUCCESS ;
    		}
    		else
    		{
    			status = TCP_SEND_TIMEOUT ;
    		}

        }
        status = TCP_FAIL ;
    }
    else //if(1 == sendATcommand("AT+CIPSTATUS","TCP CLOSE",10000))
    {
        free(data_ctrl_z);
        status = TCP_CONNECT_FAIL;
    }
    free(data_ctrl_z);
    return status ;
}
/*FUNCTION**********************************************************************
 *
 * Function Name : TCP_Close
 * Description   :
 * This function
 *
 *END**************************************************************************/
uint8_t TCP_Close()
{
    // Closes the socket
    if(1 == sendATcommand("AT+CIPCLOSE", "CLOSE OK", 10000))
	{
		return 1;
	}
	return 0;

}

/*FUNCTION**********************************************************************
 *
 * Function Name : DisableNetWork
 * Description   :
 * This function
 *
 *END**************************************************************************/
void DisableNetWork()
{
    sendATcommand("AT+CFUN=4","OK",2000); //Disable RF and simcard
}

/*FUNCTION**********************************************************************
 *
 * Function Name : EnableNetWork
 * Description   :
 * This function
 *
 *END**************************************************************************/
void EnableNetWork()
{
    sendATcommand("AT+CFUN=1","OK",2000); // fully functionlly
    while (sendATcommand("AT+CREG?", "+CREG: 2,1", 500) == 0) //Wait register to network
    {
      sendATcommand("AT+CFUN=1","OK",2000); // fully functionlly
    }
}

//char buffdebug[100] ;
int8_t sendATcommand(char* ATcommand, char* expected_answer, unsigned int timeout){

	uint8_t answer=0;
    //strcpy(buffdebug,ATcommand);
	printf("%s\r",ATcommand);    // Send the AT command
    answer = GetResponse(expected_answer , timeout);
    return answer;
}
void DisableReadSensor()
{
    GPIO_Init(RD3024_GPIO_PORT, RD3024_GPIO_PINS, GPIO_MODE_IN_FL_NO_IT);
}
void EnableReadSensor()
{
    GPIO_Init(RD3024_GPIO_PORT, RD3024_GPIO_PINS, GPIO_MODE_IN_FL_IT);
}
uint32_t  temp_pulse_RD3024 = 0;
char *imei_number ;
void GetBufferCellid_GPRS(char *buffsend , uint32_t sensor_value)
{
    BATTERRY_INFO   info_bat ;
    CELLID_INFO     info_cellid;
    info_bat        = getBatterry();
    info_cellid     = getLacCellid();
    sprintf(buffsend,"????,%s,0,%s,%d,%d,%s,%s,%s,%s,%ld,$$$$"\
    ,imei_number,date,452,2,info_cellid.LAC,info_cellid.CELLID,info_bat.bat_percent,info_bat.vol,sensor_value);

}

void GetBuffGPSFix(char *buffsend , uint32_t sensor_value)
{
    BATTERRY_INFO   info_bat ;
    info_bat        = getBatterry();
    sprintf(buffsend,"????,%s,1,%s,%s,%s,%s,%s,%ld,$$$$",\
    imei_number,date,latitude,longitude,info_bat.bat_percent,info_bat.vol,sensor_value);
}
enum
{
    READ_SENSOR = 0,
    BEGIN_GPS,
    SEND_GPRS_DATA,
};
#define MAX_LENGH_DATA  100
void main(void)
{
    char   buff_send_gprs[MAX_LENGH_DATA];
    BATTERRY_INFO  info_bat ;
    CELLID_INFO    info_cellid;
    static uint8_t task = READ_SENSOR ;
    TCP_STATUS status ;
    uint32_t pre_pulse_sensor;
    setup(); //setup sim908
    //Config_GPRS_SIM908();
    DisableReadSensor();
    imei_number = GetIMEI();
    get_GPS(uart_data.buff);
    //dang ki gprs  //ket noi den server
    TCP_Connect(IP_ADDRESS_SERVER,PORT_SERVER); // connect to server
    while(true)
    {
        switch(task)
        {
            case READ_SENSOR :
            {
                //delay(1000) ;
                //DisableNetWork();
                GPIO_WriteHigh(DTR_GPIO_PORT, (GPIO_Pin_TypeDef)(DTR_GPIO_PINS));
                delay(5000) ;
                EnableReadSensor();
                pre_pulse_sensor = pulse_sensor ;
                pulse_sensor = 0 ;
                delay(2000) ;
                if((pulse_sensor != 0) && (pre_pulse_sensor == 0))
                {
                    pulse_RD3024 = 0;
                }
                else
                {
                    pulse_RD3024 = pulse_sensor*30 ;
                }
                DisableReadSensor();
                //EnableNetWork();
                GPIO_WriteLow(DTR_GPIO_PORT, (GPIO_Pin_TypeDef)(DTR_GPIO_PINS));
              //  if(pulse_RD3024 > 30) while(1);
//                 delay(5000) ;
//                sendATcommand("AT+CSTT=\"3m-world\",\"mms\",\"mms\"","OK",2000);
//                sendATcommand("AT+CIICR","OK",2000);
//                //sendATcommand("AT+CIPSTATUS","OK",2000);
//                sendATcommand("AT+CIFSR","OK",2000);
//              TCP_Connect(IP_ADDRESS_SERVER,PORT_SERVER); // connect to server
                task = SEND_GPRS_DATA ;
                break ;
            }
            case BEGIN_GPS:
            {
                    if(start_GPS())
                    {
                        gps_fix = 1;
                        //GPIO_WriteHigh(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PINS);
                        get_GPS(uart_data.buff);
                    }
                    else
                    {
                        gps_fix = 0;
                    }
                    task = READ_SENSOR ;
                    break ;
            }
            case SEND_GPRS_DATA :
            {
                //GPIO_WriteLow(DTR_GPIO_PORT, (GPIO_Pin_TypeDef)(DTR_GPIO_PINS));
                memset(buff_send_gprs , '\0',MAX_LENGH_DATA);
                if(!gps_fix)
                {

                    GetBufferCellid_GPRS(buff_send_gprs ,pulse_RD3024);
                }
                else
                {
                    GetBuffGPSFix(buff_send_gprs , pulse_RD3024) ;

                }
                status = TCP_Send(buff_send_gprs) ;
                if(status == TCP_SUCCESS)
                {
                    task =  BEGIN_GPS ;
                    break ;
                }
                else if(status == TCP_CONNECT_FAIL)
                {
                    while(TCP_CONNECT_FAIL != TCP_Connect(IP_ADDRESS_SERVER , PORT_SERVER))
                    {
                        delay(2000);
                    }
                }
                break ;
            }
        }

    }
}

/**
  * @brief  Inserts a delay time.
  * @param  nTime: specifies the delay time length, in milliseconds.
  * @retval None
  */
void delay(uint32_t nTime)
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
 // enableInterrupts();

  /* Enable TIM4 */
  TIM4_Cmd(ENABLE);
}

/**
  * @brief  Configure ADC2 Continuous Conversion with End Of Conversion interrupt
  *         enabled .
  * @param  None
  * @retval None
  */
static void ADC_Config()
{
  /*  Init GPIO for ADC2 */
  GPIO_Init(GPIOB, GPIO_PIN_1, GPIO_MODE_IN_FL_NO_IT);

  /* De-Init ADC peripheral*/
  ADC1_DeInit();

  /* Init ADC2 peripheral */
  ADC1_Init(ADC1_CONVERSIONMODE_CONTINUOUS, ADC1_CHANNEL_1, ADC1_PRESSEL_FCPU_D18, \
            ADC1_EXTTRIG_TIM, DISABLE, ADC1_ALIGN_RIGHT, ADC1_SCHMITTTRIG_CHANNEL1,\
            DISABLE);

  /* Disable EOC interrupt */
 ADC1_ITConfig(ADC1_IT_EOCIE,DISABLE);

 /* Enable general interrupts */
 // enableInterrupts();

  /*Start Conversion */
  ADC1_StartConversion();
}

/**
  * @brief Retargets the C library printf function to the UART.
  * @param c Character to send
  * @retval char Character sent
  */
PUTCHAR_PROTOTYPE
{
  /* Write a character to the UART1 */
  UART2_SendData8(c);
  /* Loop until the end of transmission */
  while (UART2_GetFlagStatus(UART2_FLAG_TXE) == RESET);

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
  while (UART2_GetFlagStatus(UART2_FLAG_RXNE) == RESET);
    c = UART2_ReceiveData8();
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
