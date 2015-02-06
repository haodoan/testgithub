
char IP_ADDRESS_SERVER[] =  "112.213.89.2";
char PORT_SERVER[] = "2082";

void main(void)
{

    setup(); //setup sim908
    //dang ki gprs  //ket noi den server    
    TCP_Connect(IP_ADDRESS_SERVER,PORT_SERVER); // connect to server    
    while(1)
    {
        //About period time to set gprs flag to send
        if( millis() - time_period_to_send > TIME_SEND_GPRS)
        {
    		time_period_to_send = millis() ;  
    		event_send_gprs = 1 ;   
        }
        // Send data GPRS to server
        if(event_send_gprs)
        {
            event_send_gprs  = 0;
            info_bat        = getBatterry();                
            info_cellid     = getLacCellid();            
            // Wake up Sim908
            GPIO_WriteLow(PWKEY_GPIO_PORT, (GPIO_Pin_TypeDef)DTR_GPIO_PINS);
            //Wait when GPS fix
            if(start_GPS()) // time out GPS about 90 second if GPS not fix yet
            {
                gps_fix = 1;
                GPIO_WriteLow(LED_GPIO_PORT, (GPIO_Pin_TypeDef)LED_GPIO_PINS);
                get_GPS();
                //Power Down GPS
                // buffer data to send to server when gps fix
                memset(buff_send_gprs , '\0',120);
                sprintf(buff_send_gprs,"????,861001005220187,1,%s,%s,%s,%s,%s,%d,$$$$",date,latitude,longitude,info_bat.bat_percent,info_bat.vol,number_send++);
                if(1 == sendATcommand("AT+CIPSTATUS","CONNECT OK",10000))                
                {
                     TCP_Send(buff_send_gprs);
                }
                delay(200);            
            }
            else
            {
                gps_fix = 0;
                get_GPS();
              // buffer data to send to server when gps not fix
                memset(buff_send_gprs , '\0',120);
                sprintf(buff_send_gprs,"????,861001005220187,0,%s,%d,%d,%s,%s,%s,%s,%d,$$$$"\
                  ,date,452,4,info_cellid.LAC,info_cellid.CELLID,info_bat.bat_percent,info_bat.vol,number_send++);
                if(1 == sendATcommand("AT+CIPSTATUS","CONNECT OK",10000))                
                {               
                    TCP_Send(buff_send_gprs);
                }
                else                
                {
                    TCP_Connect(IP_ADDRESS_SERVER,PORT_SERVER); // connect to server    
                }
            }
            delay(1000);

        }
    }
}
