#include <string.h>
#include <stdio.h>
#include "sim900_register.h"
#include "flasheeprom.h"

SMS_GSM decodeSMS;
extern UART_RECEIVE_STRUCT  uart_data ;  
STRUCT_EEPROM_SAVE flashv;
char function_eeprom = UNSAVE;
char active = 0; 
char *GetPointText(char *textsms,char checkText,char number)
{
   char i=0,j=0;
   char len_Text = 0;
   len_Text = strlen(textsms);
   for(i=0;i<len_Text;i++)
   {
      if(*(textsms)==checkText)
      {
         j++;
      }
      if(j==number)
      {
         return textsms;
      }
      else
         textsms++;
   }
   return 0;
}
/*************************************************************
Dang ki
   DK    ADMIN PASSWORD                      Dang ki ADMIN
   DK    USER sdt1,sdt2,sdt3,sdt4,sdt5       Dang ki USER
   DMK   mkcu mkmoi                          Doi mat khau
   DB                                        Xem danh ba
   XDB   sdt1,sdt2,sdt3,sdt4,sdt5            Xoa cac so trong danh ba
   XDB   HET                                 Xoa het cac so trong danh ba
   TTK                                        Tra tai khoan
   NTK                                       Nap tien tai khoan
   KTTB                                      Kiem tra cac line cua thiet bi
**************************************************************/
//STRUCT_USER user[6],temp_user;
char decode_sms(char *textSms,SMS_GSM *sms1)
{
   u16 i=0,j=0;
   char *seachChar3,*seachChar4,*seachChar5,*seachChar6;
   seachChar3 = GetPointText(textSms,'"',3);
   seachChar4 = GetPointText(textSms,'"',4);
   seachChar5 = GetPointText(textSms,'"',5);
   seachChar6 = GetPointText(textSms,'"',6);
   if(!(seachChar3&&seachChar4&&seachChar5&&seachChar6)) 
     return 0;
   /* Lay thong tin ve so dien thoai*/
   seachChar3 += 4;
   sms1->numberPhone[0] = '0';
   i = 1;
   while(1)
   {
      sms1->numberPhone[i] = *seachChar3;
      if((seachChar3 == seachChar4)||(i==nPhone))
      {
         break;
      }
      else
         {
            i++;
            seachChar3++;
         }
   }

   for(j=i;j<nPhone;j++)
   {
      sms1->numberPhone[j]=0;
   }
   sms1->numberPhone[nPhone-1] = 0;
   /*
   +CMGR: "REC READ","+841294193048",,"11/11/02,20:00:43+28"
   Yeu anh nhjeu lam
   -Lay thong tin ve thang nam
   Nam    thang ngay gio phut giay "so thu tu tin nhan"
   */
   sms1->sttSms[0]              = *(seachChar5+19);
   sms1->sttSms[1]              = *(seachChar5+20);
   /* Lay thong tin ve noi dung tin nhan*/
   while(*seachChar6 != '\n'&&*seachChar6!='\0')
      seachChar6++ ;
   seachChar6++;
   i = 0;
   while(1)
   {
      sms1->contentTextSms[i] = *seachChar6;
      if((*seachChar6 == '\r')||(*seachChar6 == '\n')||(i>=cTextSms-1))
      {
         break;
      }
      else
         {
            i++;
            seachChar6++;
         }
   }
   for(j=i;j<cTextSms;j++)
   {
      sms1->contentTextSms[j]=0;
   }
   sms1->contentTextSms[cTextSms-1] = '\0';
   return 1;
}

//Ham get ma lenh va tham so cua tin nhan
STRUCTCOMMAND_SIM900 GetCmdDataSim900(char *str)
{
		STRUCTCOMMAND_SIM900 command_receive;
		char * pch;
 		 int i=0;		
		 pch = strtok (str," :,=#");
		 strcpy(command_receive.CMD,pch);
		 while (pch != NULL)
		 {
				pch = strtok(NULL,":, #");  	
				strcpy(command_receive.DATA[i++],pch);
			  command_receive.CNT_DATA = i - 1;			
			  if(i == 6) break;
		 }
			return command_receive;
}
char flag_send = 1;
// Ham Thuc thi cac ma lenh tin nhan nhan duoc cua Sim900
void SIM900_commands(char *buffer)
{
      if(strcmp(buffer,"ON") == 0 )
      {
        active = 1 ;
        flag_send = 0 ;
        //SentEnglis_SIMmsg("01633601590","SUCCESS");
      }
      else if(strcmp(buffer,"OFF") == 0 )
      {
        flag_send = 0;
        active = 0 ;
        //SentEnglis_SIMmsg("01633601590" , "SUCCESS");
      }      
 //  CommadProcess(timeonoff,decodeSMS.contentTextSms);
}
//Ham kiem tra su ton tai cua user trong danh ba
char SearchExistUser(char *numberphone)
{
	char i = 0;
	for(i = 0;i < flashv.cnt_user;i++)
	{
		if(!strcmp(numberphone,(char*)flashv.user[i].PHONE_NO))
			return i;	
	}
	return 10;
}

//Xoa 1 so co trong danh ba
void Remove_user_contact(STRUCT_USER *src_user,char mem)
{
   char number_user;
   STRUCT_USER dst_user[6];
   if(mem == 0)//xoa tat ca
   {
      for(number_user = 1;number_user < flashv.cnt_user ;number_user++)
      {
        memset(src_user[number_user].PHONE_NO,0,11);
        memset(src_user[number_user].PASSWORD,0,10);
      }
      flashv.cnt_user = 1;//chi co admin, so user = 1
   }
   else{ // xoa 1 so
      for(number_user = 0;number_user < mem ;number_user++)
      {
         dst_user[number_user] = src_user[number_user];
      }
      for(number_user = mem ;number_user < flashv.cnt_user ;number_user++)
      {
         dst_user[number_user] = src_user[number_user + 1];
      }
      for(number_user = 0;number_user < flashv.cnt_user - 1 ;number_user++)
      {
         src_user[number_user] = dst_user[number_user];
      }
      flashv.cnt_user = flashv.cnt_user - 1;//giam user di 1
   }
}

/*******************************************************************************
* Function Name  : DelAllSmsCmgda
* Description    : xoa toan bo tin nhan	, ho tro kieu number hoac text
* Input          : none
* Output         : None
* Return         : None
* Attention		 : None
*******************************************************************************/
char DelAllSmsCmgda(void)
{

	printf("AT+CMGDA=\"DEL ALL\"\r");
	
	if(GetResponse("OK",2000))
	{
		return 1;
	}
	return 0;	
}

/*******************************************************************************
* Function Name  : Init_GSM
* Description    : Kiem tra cac ket noi mang
* Input          : None
* Output         : None
* Return         : None
* Attention		 : None
*******************************************************************************/
char ReadEnglis_SIMmsg(unsigned char msgnum)
{
	char buff_st[20]="";
	sprintf(buff_st,"AT+CMGR=%d\r",msgnum);
	printf(buff_st);
	//delay(2000);
    if(GetResponse("+CMGR:" ,2000))
		return 1;
	else
		return 0;
}

/*******************************************************************************
* Function Name  : SentEnglis_SIMmsg
* Description    : gui tin nhan
* Input          : so dien thoai va noi dung tin nhan
* Output         : None
* Return         : co gui duoc thanh cong hay khong
* Attention		 : None
*******************************************************************************/
char SentEnglis_SIMmsg(char *phonenum,char *msgstr)
{	
    char phone[30];	
    memset(phone , '\0', 30);
    delay(200);
    sprintf(phone,"AT+CMGS=%c+84%s%c\r",34,phonenum+1,34);
    printf(phone);
    if(GetResponse(">" ,2000))
   {
     printf("%s%c",msgstr,26);
     if(GetResponse("OK" ,5000)) 
       return 1;
      return 0;
   }
	return 0;
}
char delok = 0;
char Processing_Receive()
{
	//if(strstr(uart_data.buff,"+CMTI:"))//for new message
	{
//		unsigned char numberSmsStt = 0;
//		char *GetPointTextPhay;
//                uart_data.flag_uart_compelete   = 0 ;
//		GetPointTextPhay = GetPointText(uart_data.buff,',',1);
//		if(isdigit(*(GetPointTextPhay+1))) numberSmsStt = *(GetPointTextPhay+1)-'0';
//		if(isdigit(*(GetPointTextPhay+2))) numberSmsStt = numberSmsStt*10 + ((*(GetPointTextPhay+2))-'0');
		if(ReadEnglis_SIMmsg(1)==1)
		{
			  New_SMS(uart_data.buff);
			  //if(numberSmsStt > 20)
              delok = 0;
              delay(200);
			  while(!DelAllSmsCmgda());
              delok = 1;
		}
    	return 1;	
	}	
	return 0;	
}


char New_SMS(char *SMS)
{
	char *point;
	int i = 0, j = 0;
	point = SMS;
	i = strlen(point);
	while( j < i )
	{
			*(point + j) = toupper(*(point + j));
			j++;
	}
	if(SMS[0]==0)
	{	
		return ERROR;
	}
	
	/*Kiem tra giai ma tin nhan*/
	if(!decode_sms(SMS,&decodeSMS))
	{	
		return ERROR;
	}
	SIM900_commands(decodeSMS.contentTextSms);	
	return 1;
 //  CommadProcess(timeonoff,decodeSMS.contentTextSms);
}

/*Ham thuc hien cac lenh dang ki nguoi dung *************************************************************
Dang ki
   DK    ADMIN PASSWORD                      Dang ki ADMIN
   DK    USER sdt1,sdt2,sdt3,sdt4,sdt5       Dang ki USER
   DMK   mkcu mkmoi                          Doi mat khau
   DB                                        Xem danh ba
   XDB   sdt1,sdt2,sdt3,sdt4,sdt5            Xoa cac so trong danh ba
   XDB   HET                                 Xoa het cac so trong danh ba
   TT                                        Tra tai khoan
   NTK                                       Nap tien tai khoan
*********************************************************************************************************/

