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
#include "math.h"
#include "stdlib.h"
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
#define PWKEY_GPIO_PORT  (GPIOH)
#define PWKEY_GPIO_PINS  (GPIO_PIN_3)
#define TIM4_PERIOD       124 // generate interrupt timer after 1ms
#define true     (bool)1
#define false    (bool)0
/* Private variables ---------------------------------------------------------*/
extern __IO uint32_t   system_tick = 0;
int8_t answer;
int32_t onModulePin= 2;
char data[100];
int32_t data_size;
char aux_str[30];
char aux;
int32_t x = 0;
char N_S,W_E;
char url[] = "your ip address or your domain";
char frame[200];
char latitude[15];
char longitude[15];
char altitude[6];
char date[16];
char time[7];
char satellites[3];
char speedOTG[10];
char course[10];

/* Private function prototypes -----------------------------------------------*/
void Delay(__IO uint32_t nTime);
static void CLK_Config(void);
static void TIM4_Config(void);

void power_on();
uint8_t start_GPS();
uint8_t get_GPS();
uint8_t convert2Degrees(char* input);
void send_HTTP();
int8_t sendATcommand(char* ATcommand, char* expected_answer1, unsigned int timeout);
int8_t sendATcommand2(char* ATcommand, char* expected_answer1, 
        char* expected_answer2, unsigned int timeout);
void delay(uint16_t nCount);
uint32_t millis() ;
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void setup(){
        /* Clock configuration -----------------------------------------*/
    CLK_Config(); 
    /* GPIO configuration -----------------------------------------*/
    //GPIO_Config();  
    /* TIM4 configuration -----------------------------------------*/
    TIM4_Config();  
    
    UART1_DeInit();
    /* UART1 configuration ------------------------------------------------------*/
    /* UART1 configured as follow:
        - BaudRate = 115200 baud  
        - Word Length = 8 Bits
        - One Stop Bit
        - No parity
        - Receive and transmit enabled
        - UART1 Clock disabled
    */
    UART1_Init((uint32_t)115200, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO,
              UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_TXRX_ENABLE);    
    printf("Starting...");
    power_on();
    delay(3000);    // sets the PIN code
    //sendATcommand("AT+CPIN=****", "OK", 2000);
    //delay(3000);    
    // starts the GPS and waits for signal
    while ( start_GPS() == 0);
    while (sendATcommand("AT+CREG?", "+CREG: 0,1", 2000) == 0);
    // sets APN , user name and password
   /*  sendATcommand("AT+SAPBR=3,1,\"Contype\",\"GPRS\"", "OK", 2000);
    sendATcommand("AT+SAPBR=3,1,\"APN\",\"v-internet\"", "OK", 2000);
    sendATcommand("AT+SAPBR=3,1,\"USER\",\"user_name\"", "OK", 2000);
    sendATcommand("AT+SAPBR=3,1,\"PWD\",\"password\"", "OK", 2000);

    // gets the GPRS bearer
    while (sendATcommand("AT+SAPBR=1,1", "OK", 20000) == 0)
    {
        delay(5000);
    } */
    while(1)
    {
        get_GPS();  
        printf("latitude : \nlongtide : %s\ntime : %s\n",latitude,longitude,time);
    }

}

void loop(){

    // gets GPS data
    get_GPS();  
    printf("latitude : \nlongtide : %s\ntime : %s\n",latitude,longitude,time);
    // sends GPS data to the script
    send_HTTP();
    delay(5000);
}
uint32_t millis()
{
    return system_tick ;
}

void power_on(){

    uint8_t answer=0;    
    /* Initialize I/Os in Output Mode */
    GPIO_Init(PWKEY_GPIO_PORT, (GPIO_Pin_TypeDef)PWKEY_GPIO_PINS, GPIO_MODE_OUT_PP_LOW_FAST);
    // checks if the module is started
    answer = sendATcommand("AT", "OK", 2000);
    if (answer == 0)
    {        // power on pulse
        GPIO_WriteHigh(PWKEY_GPIO_PORT, (GPIO_Pin_TypeDef)PWKEY_GPIO_PINS);;
        delay(3000);
        GPIO_WriteLow(PWKEY_GPIO_PORT, (GPIO_Pin_TypeDef)PWKEY_GPIO_PINS);;
        // waits for an answer from the module
        while(answer == 0){  
            // Send AT every two seconds and wait for the answer   
            answer = sendATcommand("AT", "OK", 2000);    
        }
    }

}

uint8_t start_GPS(){

    unsigned long previous;

    previous = millis();
    // starts the GPS
    sendATcommand("AT+CGPSPWR=1", "OK", 2000);
    sendATcommand("AT+CGPSRST=0", "OK", 2000); // cold mode

    // waits for fix GPS
    while(( (sendATcommand("AT+CGPSSTATUS?", "2D Fix", 5000) || 
        sendATcommand("AT+CGPSSTATUS?", "3D Fix", 5000)) == 0 ) && 
        ((millis() - previous) < 90000));

    if ((millis() - previous) < 90000)
    {
        return 1;
    }
    else
    {
        return 0;    
    }
}

uint8_t get_GPS(){

    int8_t counter, answer;
    long previous;

    // First get the NMEA string
    // Clean the input buffer
   // while( Serial.available() > 0) Serial.read(); 
    // request Basic string
    sendATcommand("AT+CGPSINF=0", "AT+CGPSINF=0\r\n\r\n", 2000);
    counter = 0;
    answer = 0;
    memset(frame, '\0', 100);    // Initialize the string
    previous = millis();
    // this loop waits for the NMEA string
    do{

        //if(Serial.available() != 0)
        if(UART1_GetFlagStatus(UART1_FLAG_RXNE) == SET)
        {    
            frame[counter] = getchar();
            counter++;
            // check if the desired answer is in the response of the module
            if (strstr(frame, "OK") != NULL)    
            {
                answer = 1;
            }
        }
        // Waits for the asnwer with time out
    }
    while((answer == 0) && ((millis() - previous) < 2000));  

    frame[counter-3] = '\0'; 
    
    // Parses the string 
    strtok(frame, ",");
    strcpy(longitude,strtok(NULL, ",")); // Gets longitude
    strcpy(latitude,strtok(NULL, ",")); // Gets latitude
    strcpy(altitude,strtok(NULL, ".")); // Gets altitude 
    strtok(NULL, ",");    
    strcpy(date,strtok(NULL, ".")); // Gets date
    strtok(NULL, ",");
    strtok(NULL, ",");  
    strcpy(satellites,strtok(NULL, ",")); // Gets satellites
    strcpy(speedOTG,strtok(NULL, ",")); // Gets speed over ground. Unit is knots.
    strcpy(course,strtok(NULL, "\r")); // Gets course

    convert2Degrees(latitude);
    convert2Degrees(longitude);
    
    return answer;
}

/* convert2Degrees ( input ) - performs the conversion from input 
 * parameters in  DD°MM.mmm’ notation to DD.dddddd° notation. 
 * 
 * Sign '+' is set for positive latitudes/longitudes (North, East)
 * Sign '-' is set for negative latitudes/longitudes (South, West)
 *  
 */
uint8_t convert2Degrees(char* input){

    float deg;
    float minutes;
    bool neg = false;    

    //auxiliar variable
    char aux[10];

    if (input[0] == '-')
    {
        neg = true;
        strcpy(aux, strtok(input+1, "."));

    }
    else
    {
        strcpy(aux, strtok(input, "."));
    }

    // convert string to integer and add it to final float variable
    deg = atof(aux);

    strcpy(aux, strtok(NULL, '\0'));
    minutes=atof(aux);
    minutes/=1000000;
    if (deg < 100)
    {
        minutes += deg;
        deg = 0;
    }
    else
    {
        minutes += (int)deg%100;
        deg = (int)deg / 100;    
    }

    // add minutes to degrees 
    deg=deg+minutes/60;


    if (neg == true)
    {
        deg*=-1.0;
    }

    neg = false;

    if( deg < 0 ){
        neg = true;
        deg*=-1;
    }
    
    float numeroFloat=deg; 
    int parteEntera[10];
    int cifra; 
    long numero=(long)numeroFloat;  
    int size=0;
    
    while(1){
        size=size+1;
        cifra=numero%10;
        numero=numero/10;
        parteEntera[size-1]=cifra; 
        if (numero==0){
            break;
        }
    }
   
    int indice=0;
    if( neg ){
        indice++;
        input[0]='-';
    }
    for (int i=size-1; i >= 0; i--)
    {
        input[indice]=parteEntera[i]+'0'; 
        indice++;
    }

    input[indice]='.';
    indice++;

    numeroFloat=(numeroFloat-(int)numeroFloat);
    for (int i=1; i<=6 ; i++)
    {
        numeroFloat=numeroFloat*10;
        cifra= (long)numeroFloat;          
        numeroFloat=numeroFloat-cifra;
        input[indice]= (char)cifra + 48;
        indice++;
    }
    input[indice]='\0';
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
}

/*FUNCTION**********************************************************************
 *
 * Function Name : Tcp_Connect
 * Description   : 
 * This function 
 *
 *END**************************************************************************/
uint8_t Tcp_Connect(char * IP_address , char *Port)
{
    char command[40] ;
    memset(command , '\0',40);
    sprintf(command ,"AT+CIPSTART=\"TCP\",%s,%s",IP_address,Port);
    if(2 == sendATcommand2(command,"CONNECT OK","CONNECT FAIL",30000))
    {
        return 1;
    }
    return 0;
}

/*FUNCTION**********************************************************************
 *
 * Function Name : TCP_Send
 * Description   : 
 * This function 
 *
 *END**************************************************************************/
uint8_t TCP_Send(char *data_string)
{
    if (sendATcommand2("AT+CIPSEND", ">", "ERROR", 10000) == 1)    
    {
        sendATcommand2(data_string, "SEND OK", "ERROR", 10000);
        return 1 ;
    }
    else
    {
        return 0 ;
    }
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
    sendATcommand2("AT+CIPCLOSE", "CLOSE OK", "ERROR", 10000) ;
    
}
uint8_t SIM908_Send_Data(char *data_string , char * IP_address , char *Port)
{
    if(!Tcp_Connect(IP_address, Port))
    {
        TCP_Close();
        return 0 ;
    }
    else
    {
        return(TCP_Send(data_string));
    }
}
void send_HTTP(){
    
    // Initializes HTTP service
    answer = sendATcommand("AT+HTTPINIT", "OK", 10000);
    if (answer == 1)
    {
        // Sets CID parameter
        answer = sendATcommand("AT+HTTPPARA=\"CID\",1", "OK", 5000);
        if (answer == 1)
        {
            // Sets url 
            sprintf(aux_str, "AT+HTTPPARA=\"URL\",\"http://%s/demo_sim908.php?", url);
            printf(aux_str);
            sprintf(frame, "visor=false&latitude=%s&longitude=%s&altitude=%s&time=%s&satellites=%s&speedOTG=%s&course=%s",
            latitude, longitude, altitude, date, satellites, speedOTG, course);
            printf(frame);
            answer = sendATcommand("\"", "OK", 5000);
            if (answer == 1)
            {
                // Starts GET action
                answer = sendATcommand("AT+HTTPACTION=0", "+HTTPACTION:0,200", 30000);
                if (answer == 1)
                {

                    printf("Done!\n");
                }
                else
                {
                    printf("Error getting url\n");
                }

            }
            else
            {
                printf("Error setting the url\n");
            }
        }
        else
        {
            printf(("Error setting the CID\n"));
        }    
    }
    else
    {
        printf("Error initializating\n");
    }

    sendATcommand("AT+HTTPTERM", "OK", 5000);
    
}


int8_t sendATcommand(char* ATcommand, char* expected_answer1, unsigned int timeout){

    uint8_t x=0,  answer=0;
    char response[100];
    unsigned long previous;

    memset(response, '\0', 100);    // Initialize the string

    delay(100);

    //write code here
    //while( Serial.available() > 0) Serial.read();    // Clean the input buffer
    while(UART1_GetFlagStatus(UART1_FLAG_RXNE)) getchar();    // Clean the input buffer

    printf(ATcommand);    // Send the AT command 
    x = 0;
    previous = millis();

    // this loop waits for the answer
    do{
        //if(Serial.available() != 0) replace code this line
        if(UART1_GetFlagStatus(UART1_FLAG_RXNE) == SET)
        {    
            response[x] = getchar();
            x++;
            // check if the desired answer is in the response of the module
            if (strstr(response, expected_answer1) != NULL)    
            {
                answer = 1;
            }
        }
        // Waits for the asnwer with time out
    }
    while((answer == 0) && ((millis() - previous) < timeout));    

    return answer;
}

int8_t sendATcommand2(char* ATcommand, char* expected_answer1, 
        char* expected_answer2, unsigned int timeout){

    uint8_t x=0,  answer=0;
    char response[100];
    unsigned long previous;

    memset(response, '\0', 100);    // Initialize the string

    delay(100);

    while(UART1_GetFlagStatus(UART1_FLAG_RXNE)) getchar();    // Clean the input buffer

    printf(ATcommand);    // Send the AT command 

    x = 0;
    previous = millis();

    // this loop waits for the answer
    do{
        // if there are data in the UART input buffer, reads it and checks for the asnwer
        if(UART1_GetFlagStatus(UART1_FLAG_RXNE) == SET)
	{    
            response[x] = getchar();
            x++;
            // check if the desired answer 1  is in the response of the module
            if (strstr(response, expected_answer1) != NULL)    
            {
                answer = 1;
            }
            // check if the desired answer 2 is in the response of the module
            else if (strstr(response, expected_answer2) != NULL)    
            {
                answer = 2;
            }
        }
    }
    // Waits for the asnwer with time out
    while((answer == 0) && ((millis() - previous) < timeout));    

    return answer;
}

void main(void)
{
    //bat nguon sim908
    //dang ki gprs
    //ket noi den server
    
    while (1)
    {

    }
}

/**
  * @brief  Inserts a delay time.
  * @param  nTime: specifies the delay time length, in milliseconds.
  * @retval None
  */
void Delay(uint32_t nTime)
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
