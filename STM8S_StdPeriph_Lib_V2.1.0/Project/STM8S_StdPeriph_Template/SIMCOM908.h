
#include "stm8s.h"
#include "stdio.h"
#include "string.h"
#include "stm8s_it.h"
typedef struct
{
	//char MNC[3];
	char LAC[5];
	char CELLID[5];
}CELLID_INFO;

typedef struct
{
    char vol[5];
    char bat_percent[5] ;
    char charging[2] ;
}BATTERRY_INFO ;

uint8_t GetResponse(char *expected_answer , uint32_t timeout);
void GetCmdDataSIM(char *str , char DATA_AT[5][10]);
void GetCmdDataSIM(char *str , char DATA_AT[5][10]);
BATTERRY_INFO getBatterry();
CELLID_INFO getLacCellid();
uint32_t millis();
void power_on();
uint8_t start_GPS();
static char *GetIMEI();
uint8_t TCP_Send(char *data_string);
uint8_t TCP_Close();
int8_t sendATcommand(char* ATcommand, char* expected_answer, unsigned int timeout);
void SendCellid_GPRS(char *buffsend);