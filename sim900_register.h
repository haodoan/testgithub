#ifndef __REGISTER_H
#define __REGISTER_H

//#include "simcom.h"
//#include "alarmtime.h"
//commands register
#include "stm8s.h"
#include "stm8s_it.h"
/*
DK ADMIN MK
DMK
XDK MK
*/

#define nPhone 15
#define cTextSms    160 /*Noi dung tin nhan toi da*/
typedef struct sms_gsm
{
   char numberPhone[nPhone];        //so dien thoai
   char contentTextSms[cTextSms]; //noi dung tin nhan
   char sttSms[3];                        //so thu tin nhan
} SMS_GSM;


//Struct define for data received from UART
typedef struct {
  	char CMD[10];
		char DATA[6][20];
  	unsigned char CNT_DATA; 	
}STRUCTCOMMAND_SIM900;

typedef struct {
	char PASSWORD[10];
	char PHONE_NO[12];	
	char ADMINI;
}STRUCT_USER;

STRUCTCOMMAND_SIM900 GetCmdDataSim900(char *str);
void SIM900_commands(char *);
char SearchExistUser(char *numberphone);
char Register_commands(STRUCTCOMMAND_SIM900 cmd_data);
char *GetPointText(char *textsms,char checkText,char number);
char New_SMS(char *SMS);
uint8_t GetResponse(char *expected_answer , uint32_t timeout);
char ReadEnglis_SIMmsg(unsigned char msgnum);
char decode_sms(char *textSms,SMS_GSM *sms1);
void delay(uint32_t nTime);
char DelAllSmsCmgda(void);
char Processing_Receive();
void CheckUsd();;
char SentEnglis_SIMmsg(char *phonenum,char *msgstr);
#endif
