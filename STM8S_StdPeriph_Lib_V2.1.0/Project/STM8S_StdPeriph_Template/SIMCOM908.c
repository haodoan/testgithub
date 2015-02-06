#include "SIMCOM908.h"

extern UART_RECEIVE_STRUCT  uart_data ;    	

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
    }
   	return info_bat;
}

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
    answer = sendATcommand("AT", "OK", 2000);
    if (answer == 0)
    {   // power on pulse
        GPIO_WriteHigh(PWKEY_GPIO_PORT, (GPIO_Pin_TypeDef)PWKEY_GPIO_PINS);;
        delay(3000);
        GPIO_WriteLow(PWKEY_GPIO_PORT, (GPIO_Pin_TypeDef)PWKEY_GPIO_PINS);;
        //Wake up
        //GPIO_WriteLow(PWKEY_GPIO_PORT, (GPIO_Pin_TypeDef)DTR_GPIO_PINS);
        // waits for an answer from the module
        printf("ATE0\r");
        while(answer == 0)
        {
            // Send AT every two seconds and wait for the answer
            answer = sendATcommand("AT", "OK", 2000);
           //while(UART1_GetFlagStatus(UART1_FLAG_RXNE) == RESET);
        }
    }
    printf("ATE0\r");
}

/*FUNCTION**********************************************************************
 *
 * Function Name : start_GPS
 * Description   : Starting GPS for modul SIM908
 * This function
 *
 *END**************************************************************************/

uint8_t start_GPS()
{
    //Wake up Module Sim
    //GPIO_WriteLow(PWKEY_GPIO_PORT, (GPIO_Pin_TypeDef)DTR_GPIO_PINS);
    // Power up GPS
    //sendATcommand("AT+CGPSPWR=1", "OK", 2000);
    // Reset GPS Hot mde
   // sendATcommand("AT+CGPSRST=1", "OK", 2000);
    // waits for fix GPS
    if((1 == sendATcommand("AT+CGPSSTATUS?", "2D Fix", 1000)) ||
       (1 == sendATcommand("AT+CGPSSTATUS?", "3D Fix", 1000)))
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
 * Function Name : get_GPS
 * Description   : get_GPS GPRS for modul SIM908
 * This function use config get parameter GPS
 *
 *END**************************************************************************/
uint8_t get_GPS()
{
   // First get the NMEA string
    printf("AT+CGPSINF=0\r");
    if(GetResponse("OK",2000))
    {
    // Parses the string
        strtok(uart_data.buff, ",");
        strcpy(longitude,strtok(NULL, ",")); // Gets longitude
        strcpy(latitude,strtok(NULL, ",")); // Gets latitude
        strcpy(altitude,strtok(NULL, ".")); // Gets altitude
        strtok(NULL, ",");
        strcpy(date,strtok(NULL, ".")); // Gets date
        strtok(NULL, ",");
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
uint8_t TCP_Connect(char * IP_address , char *Port)
{
    char command[50] ;
    memset(command , '\0',50);
    //sendATcommand("AT+CIPSHUT","SHUT OK",30000);
    GPIO_Init(RD3024_GPIO_PORT, RD3024_GPIO_PINS, GPIO_MODE_IN_FL_NO_IT);
    sprintf(command ,"AT+CIPSTART=\"TCP\",\"%s\",\"%s\"",IP_address,Port);
    if(1 == sendATcommand(command,"CONNECT OK",20000))
    {
        GPIO_Init(RD3024_GPIO_PORT, RD3024_GPIO_PINS, GPIO_MODE_IN_FL_IT);
        return 1;
    }
    return 0;
}

/*FUNCTION**********************************************************************
 *
 * Function Name : TCP_Send
 * Description   : `
 * This function
 *
 *END**************************************************************************/
uint8_t TCP_Send(char *data_string)
{

    char data_ctrl_z[120];
    GPIO_Init(RD3024_GPIO_PORT, RD3024_GPIO_PINS, GPIO_MODE_IN_FL_NO_IT);
    if(1 == sendATcommand("AT+CIPSTATUS","CONNECT OK",10000))
    {
        memset(data_ctrl_z , '\0',120);
        if (sendATcommand("AT+CIPSEND", ">",30000))
        {
            sprintf(data_ctrl_z,"%s%c",data_string,26);
            if(!sendATcommand(data_ctrl_z, "SEND OK" , 30000))
    		{
            	return 0 ;
    		}
    		else
    		{
                delay(3000);
                GPIO_Init(RD3024_GPIO_PORT, RD3024_GPIO_PINS, GPIO_MODE_IN_FL_IT);
                time_read_sensor = millis();
    			return 1 ;
    		}
    		
        }
    }
    else //if(1 == sendATcommand("AT+CIPSTATUS","TCP CLOSE",10000))
    {
        TCP_Connect(IP_ADDRESS_SERVER,PORT_SERVER); // connect to server
    }
	return 1 ;
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


int8_t sendATcommand(char* ATcommand, char* expected_answer, unsigned int timeout){

	uint8_t answer=0;
	printf("%s\r",ATcommand);    // Send the AT command
    answer = GetResponse(expected_answer , timeout);
    return answer;
}

uint32_t  temp_pulse_RD3024 = 0;
char *imei_number ;
void SendCellid_GPRS(char *buffsend)
{
    //TCP_Connect(IP_ADDRESS_SERVER,PORT_SERVER); // connect to server
//    uint32_t temp_pulse_RD3024 = 0;
    BATTERRY_INFO   info_bat ;
    CELLID_INFO     info_cellid;
    info_bat        = getBatterry();
    info_cellid     = getLacCellid();
    //sendATcommand("AT+GSN","OK",2000);
    //disableInterrupts();
    temp_pulse_RD3024 = pulse_RD3024 ;
    //enableInterrupts();
    sprintf(buffsend,"????,%s,0,%s,%d,%d,%s,%s,%s,%s,%ld,$$$$"\
    ,imei_number,date,452,2,info_cellid.LAC,info_cellid.CELLID,info_bat.bat_percent,info_bat.vol,temp_pulse_RD3024);
    TCP_Send(buffsend);
}