///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR C/C++ Compiler V1.30.1.50036 for STM8            03/Feb/2015  08:22:52 /
// Copyright 2010-2011 IAR Systems AB.                                        /
//                                                                            /
//    Source file  =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Project\STM8S_Std /
//                    Periph_Template\main.c                                  /
//    Command line =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Project\STM8S_Std /
//                    Periph_Template\main.c -e -Ol --no_cse --no_unroll      /
//                    --no_inline --no_code_motion --no_tbaa --no_cross_call  /
//                    --debug --code_model medium --data_model medium -o      /
//                    D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Project\STM8S_Std /
//                    Periph_Template\EWSTM8\STM8S208\Obj\ --dlib_config      /
//                    "C:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.0\stm8\LIB\dlstm8mmn.h" -D USE_STM8_128_EVAL -D       /
//                    STM8S003 -lC D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Proj /
//                    ect\STM8S_StdPeriph_Template\EWSTM8\STM8S208\List\ -lb  /
//                    D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Project\STM8S_Std /
//                    Periph_Template\EWSTM8\STM8S208\List\ -I                /
//                    D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Project\STM8S_Std /
//                    Periph_Template\EWSTM8\..\ -I                           /
//                    D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Project\STM8S_Std /
//                    Periph_Template\EWSTM8\..\..\..\Libraries\STM8S_StdPeri /
//                    ph_Driver\inc\ -I D:\Project\STM8S_StdPeriph_Lib_V2.1.0 /
//                    \Project\STM8S_StdPeriph_Template\EWSTM8\..\..\..\Utili /
//                    ties\STM8S_EVAL\ -I D:\Project\STM8S_StdPeriph_Lib_V2.1 /
//                    .0\Project\STM8S_StdPeriph_Template\EWSTM8\..\..\..\Uti /
//                    lities\STM8S_EVAL\STM8S-128_EVAL\ -I                    /
//                    D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Project\STM8S_Std /
//                    Periph_Template\EWSTM8\..\..\..\Utilities\STM8S_EVAL\Co /
//                    mmon\ --vregs 16                                        /
//    List file    =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Project\STM8S_Std /
//                    Periph_Template\EWSTM8\STM8S208\List\main.s             /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME main

        EXTERN ?add32_l0_l0_l1
        EXTERN ?b0
        EXTERN ?b12
        EXTERN ?b4
        EXTERN ?b5
        EXTERN ?b6
        EXTERN ?b7
        EXTERN ?b8
        EXTERN ?b9
        EXTERN ?epilogue_l2
        EXTERN ?epilogue_l2_l3
        EXTERN ?epilogue_l2_w6
        EXTERN ?epilogue_w4
        EXTERN ?load32_l0_0x
        EXTERN ?mov_l1_l0
        EXTERN ?mov_l1_l2
        EXTERN ?mov_l1_l3
        EXTERN ?mov_l2_l0
        EXTERN ?mov_l3_l0
        EXTERN ?move1616_v_x_y_a
        EXTERN ?mul16_x_x_w0
        EXTERN ?pop_w7
        EXTERN ?push_l2
        EXTERN ?push_l3
        EXTERN ?push_w0
        EXTERN ?push_w4
        EXTERN ?push_w5
        EXTERN ?push_w6
        EXTERN ?push_w7
        EXTERN ?sub32_l0_l0_l1
        EXTERN ?ucmp32_c_l0_l1
        EXTERN ?w0
        EXTERN ?w1
        EXTERN ?w2
        EXTERN ?w3
        EXTERN ?w4
        EXTERN ?w5
        EXTERN ?w6
        EXTERN ?w7
        EXTERN CLK_HSIPrescalerConfig
        EXTERN GPIO_Init
        EXTERN GPIO_WriteHigh
        EXTERN GPIO_WriteLow
        EXTERN TIM4_ClearFlag
        EXTERN TIM4_Cmd
        EXTERN TIM4_ITConfig
        EXTERN TIM4_TimeBaseInit
        EXTERN UART1_DeInit
        EXTERN UART1_GetFlagStatus
        EXTERN UART1_ITConfig
        EXTERN UART1_Init
        EXTERN UART1_ReceiveData8
        EXTERN UART1_SendData8
        EXTERN __iar_Strstr
        EXTERN gps_fix
        EXTERN memset
        EXTERN printf
        EXTERN sprintf
        EXTERN strcpy
        EXTERN strtok
        EXTERN uart_data

        PUBLIC Config_GPRS_SIM908
        PUBLIC GetCmdDataSIM
        PUBLIC GetResponse
        PUBLIC HTTP_Send
        PUBLIC HTTP_Terminate
        PUBLIC HTTP_init
        PUBLIC IMEI_DEVICE
        PUBLIC IP_ADDRESS_SERVER
        PUBLIC assert_failed
        PUBLIC bat
        PUBLIC delay
        PUBLIC event_send_gprs
        PUBLIC getBatterry
        PUBLIC getLacCellid
        PUBLIC get_GPS
        PUBLIC getchar
        PUBLIC main
        PUBLIC millis
        PUBLIC power_on
        PUBLIC putchar
        PUBLIC sendATcommand
        PUBLIC setup
        PUBLIC start_GPS
        PUBLIC strstr
        PUBLIC system_tick


        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        SECTION_GROUP strstr
        CODE
// __intrinsic __nounwind __far_func char *strstr(char const *, char const *)
strstr:
        JPF       __iar_Strstr

        SECTION `.near.data`:DATA:REORDER:NOROOT(0)
IP_ADDRESS_SERVER:
        DC8 "123.15.65.32:8080"

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
system_tick:
        DS8 4

        SECTION `.near.data`:DATA:REORDER:NOROOT(0)
IMEI_DEVICE:
        DC8 "123456789"

        SECTION `.far_func.text`:CODE:NOROOT(0)
        CODE
sendATcommand:
        CALLF     L:?push_l2
        CALLF     L:?push_w7
        PUSH      S:?b12
        CALLF     L:?push_w0
        LDW       S:?w7, Y
        CLR       S:?b12
        PUSHW     X
        LDW       X, #`?<Constant "%s\\r">`
        CALLF     printf
        ADD       SP, #0x2
        CALLF     millis
        CALLF     L:?mov_l2_l0
        LDW       X, (0x1,SP)
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, S:?w7
        CALLF     GetResponse
        LD        S:?b12, A
        LD        A, S:?b12
        ADD       SP, #0x2
        POP       S:?b12
        CALLF     L:?pop_w7
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:NOROOT(0)
        CODE
HTTP_Send:
        CALLF     L:?push_l2
        SUB       SP, #0xb4
        LDW       S:?w5, X
        LDW       S:?w4, Y
        LDW       X, #0xb4
        LDW       S:?w0, X
        CLRW      Y
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     memset
        CALLF     L:?push_w5
        CALLF     L:?push_w4
        PUSH      #BYTE1(IP_ADDRESS_SERVER)
        PUSH      #BYTE2(IP_ADDRESS_SERVER)
        LDW       Y, #`?<Constant "AT+HTTPPARA=\\"URL\\",\\"ht...">`
        LDW       X, SP
        ADDW      X, #0x7
        CALLF     sprintf
        ADD       SP, #0x6
        LDW       X, #0x1388
        LDW       S:?w0, X
        LDW       Y, #`?<Constant "OK">`
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     sendATcommand
        CP        A, #0x1
        JRNE      L:??HTTP_Send_0
        LDW       X, #0x9c40
        LDW       S:?w0, X
        LDW       Y, #`?<Constant "+HTTPACTION:0,200">`
        LDW       X, #`?<Constant "AT+HTTPACTION=0">`
        CALLF     sendATcommand
??HTTP_Send_0:
        ADD       SP, #0xb4
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:NOROOT(0)
        CODE
get_GPS:
        CALLF     L:?push_w4
        LDW       S:?w4, X
        LDW       X, #`?<Constant "AT+CGPSINF=32\\r">`
        CALLF     printf
        LDW       X, #0x7d0
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "OK">`
        CALLF     GetResponse
        CP        A, #0x0
        JREQ      L:??get_GPS_0
        LDW       Y, #`?<Constant "\\r\\n">`
        LDW       X, #uart_data + 5
        CALLF     strtok
        LDW       Y, X
        LDW       X, S:?w4
        CALLF     strcpy
        LD        A, #0x1
        JPF       L:?epilogue_w4
??get_GPS_0:
        CLR       A
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:NOROOT(0)
        CODE
start_GPS:
        CALLF     L:?push_l2
        CALLF     millis
        CALLF     L:?mov_l2_l0
        LDW       X, #0x7d0
        LDW       S:?w0, X
        LDW       Y, #`?<Constant "2D Fix">`
        LDW       X, #`?<Constant "AT+CGPSSTATUS?">`
        CALLF     sendATcommand
        CP        A, #0x1
        JREQ      L:??start_GPS_0
        LDW       X, #0x7d0
        LDW       S:?w0, X
        LDW       Y, #`?<Constant "3D Fix">`
        LDW       X, #`?<Constant "AT+CGPSSTATUS?">`
        CALLF     sendATcommand
        CP        A, #0x0
        JREQ      L:??start_GPS_1
??start_GPS_0:
        LD        A, #0x1
        JRA       L:??start_GPS_2
??start_GPS_1:
        CLR       A
??start_GPS_2:
        TNZ       A
        JREQ      L:??start_GPS_3
        LD        A, #0x1
        JPF       L:?epilogue_l2
??start_GPS_3:
        CLR       A
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:NOROOT(0)
        CODE
HTTP_Terminate:
        LDW       X, #0x1388
        LDW       S:?w0, X
        LDW       Y, #`?<Constant "OK">`
        LDW       X, #`?<Constant "AT+HTTPTERM">`
        JPF       sendATcommand

        SECTION `.far_func.text`:CODE:NOROOT(0)
        CODE
HTTP_init:
        LDW       X, #0x2710
        LDW       S:?w0, X
        LDW       Y, #`?<Constant "OK">`
        LDW       X, #`?<Constant "AT+HTTPINIT">`
        CALLF     sendATcommand
        CP        A, #0x1
        JRNE      L:??HTTP_init_0
        LDW       X, #0x1388
        LDW       S:?w0, X
        LDW       Y, #`?<Constant "OK">`
        LDW       X, #`?<Constant "AT+HTTPPARA=\\"CID\\",1">`
        CALLF     sendATcommand
        TNZ       A
        JRNE      L:??HTTP_init_1
        CLR       A
        RETF
??HTTP_init_1:
        LD        A, #0x1
        RETF
??HTTP_init_0:
        CLR       A
        RETF

        SECTION `.far_func.text`:CODE:NOROOT(0)
        CODE
GetCmdDataSIM:
        CALLF     L:?push_l2
        CALLF     L:?push_w6
        LDW       S:?w6, Y
        CLR       S:?b9
        CLR       S:?b8
        LDW       Y, #`?<Constant ":">`
        CALLF     strtok
        LDW       S:?w5, X
??GetCmdDataSIM_0:
        LDW       X, S:?w5
        TNZW      X
        JREQ      L:??GetCmdDataSIM_1
        LDW       Y, #`?<Constant ",\\"\\r\\n">`
        CLRW      X
        CALLF     strtok
        LDW       S:?w5, X
        LDW       Y, S:?w5
        LDW       X, #0xa
        LDW       S:?w0, X
        LDW       X, S:?w4
        CALLF     L:?mul16_x_x_w0
        ADDW      X, S:?w6
        CALLF     strcpy
        LDW       X, S:?w4
        INCW      X
        LDW       S:?w4, X
        LDW       X, S:?w4
        CPW       X, #0x5
        JRNE      L:??GetCmdDataSIM_0
??GetCmdDataSIM_1:
        JPF       L:?epilogue_l2_w6

        SECTION `.far_func.text`:CODE:NOROOT(0)
        CODE
getBatterry:
        CALLF     L:?push_w4
        SUB       SP, #0x3e
        LDW       S:?w4, X
        LDW       X, #`?<Constant "AT+CBC\\r">`
        CALLF     printf
        LDW       X, #0x7d0
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "+CBC:">`
        CALLF     GetResponse
        CP        A, #0x0
        JREQ      L:??getBatterry_0
        LDW       Y, SP
        ADDW      Y, #0xd
        LDW       X, #uart_data
        CALLF     GetCmdDataSIM
        LDW       Y, SP
        ADDW      Y, #0xd
        LDW       X, SP
        ADDW      X, #0xb
        CALLF     strcpy
        LDW       Y, SP
        ADDW      Y, #0x17
        LDW       X, SP
        ADDW      X, #0x6
        CALLF     strcpy
        LDW       Y, SP
        ADDW      Y, #0x21
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     strcpy
        LDW       Y, SP
        ADDW      Y, #0x1
        LDW       X, S:?w4
        PUSHW     X
        LD        A, #0xc
        CALLF     L:?move1616_v_x_y_a
        POPW      X
??getBatterry_0:
        ADD       SP, #0x3e
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:NOROOT(0)
        CODE
Config_GPRS_SIM908:
        LDW       X, #0x7d0
        LDW       S:?w0, X
        LDW       Y, #`?<Constant "OK">`
        LDW       X, #`?<Constant "AT+CIPCSGP=1,\\"v-inter...">`
        JPF       sendATcommand

        SECTION `.far_func.text`:CODE:NOROOT(0)
        CODE
power_on:
        PUSH      S:?b8
        CLR       S:?b8
        MOV       S:?b0, #0xe0
        LD        A, #0x18
        LDW       X, #0x500f
        CALLF     GPIO_Init
        LDW       X, #0x7d0
        LDW       S:?w0, X
        LDW       Y, #`?<Constant "OK">`
        LDW       X, #`?<Constant "AT">`
        CALLF     sendATcommand
        LD        S:?b8, A
        TNZ       S:?b8
        JRNE      L:??power_on_0
        LD        A, #0x10
        LDW       X, #0x500f
        CALLF     GPIO_WriteHigh
        LDW       X, #0xbb8
        CALLF     delay
        LD        A, #0x10
        LDW       X, #0x500f
        CALLF     GPIO_WriteLow
        LD        A, #0x8
        LDW       X, #0x500f
        CALLF     GPIO_WriteLow
        LDW       X, #`?<Constant "ATE0\\r">`
        CALLF     printf
        JRA       L:??power_on_1
??power_on_2:
        LDW       X, #0x7d0
        LDW       S:?w0, X
        LDW       Y, #`?<Constant "OK">`
        LDW       X, #`?<Constant "AT\\r">`
        CALLF     sendATcommand
        LD        S:?b8, A
??power_on_1:
        TNZ       S:?b8
        JREQ      L:??power_on_2
??power_on_0:
        LDW       X, #`?<Constant "ATE0\\r">`
        CALLF     printf
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
setup:
        CALLF     CLK_Config
        CLR       A
        CALLF     CLK_HSIPrescalerConfig
        CALLF     TIM4_Config
        CALLF     UART1_DeInit
        MOV       S:?b7, #0xc
        MOV       S:?b6, #0x80
        CLR       S:?b5
        CLR       S:?b4
        CLR       A
        LDW       X, #0xc200
        LDW       S:?w1, X
        CLRW      X
        INCW      X
        LDW       S:?w0, X
        CALLF     UART1_Init
        LD        A, #0x1
        LDW       X, #0x205
        CALLF     UART1_ITConfig
        MOV       S:?b0, #0xe0
        LD        A, #0x18
        LDW       X, #0x5005
        CALLF     GPIO_Init
        RIM
        CALLF     power_on
        LDW       X, #0x2710
        CALLF     delay
        LDW       X, #0x7d0
        LDW       S:?w0, X
        LDW       Y, #`?<Constant "OK">`
        LDW       X, #`?<Constant "ATE0">`
        CALLF     sendATcommand
        LD        A, #0x8
        LDW       X, #0x500f
        CALLF     GPIO_WriteLow
        LDW       X, #0x7d0
        LDW       S:?w0, X
        LDW       Y, #`?<Constant "OK">`
        LDW       X, #`?<Constant "AT+CGPSPWR=1">`
        CALLF     sendATcommand
        LDW       X, #0x7d0
        LDW       S:?w0, X
        LDW       Y, #`?<Constant "OK">`
        LDW       X, #`?<Constant "AT+CGPSRST=1">`
        CALLF     sendATcommand
        LDW       X, #0x7d0
        LDW       S:?w0, X
        LDW       Y, #`?<Constant "OK">`
        LDW       X, #`?<Constant "AT+CREG=2">`
        CALLF     sendATcommand
        LDW       X, #0x3e8
        CALLF     delay
??setup_0:
        LDW       X, #0x7d0
        LDW       S:?w0, X
        LDW       Y, #`?<Constant "+CREG: 2,1">`
        LDW       X, #`?<Constant "AT+CREG?">`
        CALLF     sendATcommand
        CP        A, #0x0
        JREQ      L:??setup_0
        CALLF     Config_GPRS_SIM908
        LDW       X, #0xc8
        LDW       S:?w0, X
        LDW       Y, #`?<Constant "OK">`
        LDW       X, #`?<Constant "AT+SAPBR=1,0">`
        CALLF     sendATcommand
        LDW       X, #0x7d0
        LDW       S:?w0, X
        LDW       Y, #`?<Constant "OK">`
        LDW       X, #`?<Constant "AT+CGATT=1">`
        CALLF     sendATcommand
        LDW       X, #0x7d0
        LDW       S:?w0, X
        LDW       Y, #`?<Constant "OK">`
        LDW       X, #`?<Constant "AT+SAPBR=3,1,\\"Contype...">`
        CALLF     sendATcommand
        LDW       X, #0x7d0
        LDW       S:?w0, X
        LDW       Y, #`?<Constant "OK">`
        LDW       X, #`?<Constant "AT+SAPBR=3,1,\\"APN\\",\\"v...">`
        CALLF     sendATcommand
        LDW       X, #0x7d0
        LDW       S:?w0, X
        LDW       Y, #`?<Constant "OK">`
        LDW       X, #`?<Constant "AT+SAPBR=3,1,\\"USER\\",\\"...">`
        CALLF     sendATcommand
        LDW       X, #0x7d0
        LDW       S:?w0, X
        LDW       Y, #`?<Constant "OK">`
        LDW       X, #`?<Constant "AT+SAPBR=3,1,\\"PWD\\",\\"mms\\"">`
        CALLF     sendATcommand
        LDW       X, #0x7d0
        LDW       S:?w0, X
        LDW       Y, #`?<Constant "OK">`
        LDW       X, #`?<Constant "AT+HTTPPARA= \\"REDIR\\",1">`
        CALLF     sendATcommand
        CALLF     HTTP_Terminate
        LDW       X, #0x7d0
        LDW       S:?w0, X
        LDW       Y, #`?<Constant "OK">`
        LDW       X, #`?<Constant "AT+SAPBR=1,1">`
        JPF       sendATcommand

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
GetResponse:
        CALLF     L:?push_l2
        CALLF     L:?push_l3
        PUSHW     X
        SUB       SP, #0x1
        CALLF     L:?mov_l3_l0
        CLR       A
        LD        (0x1,SP), A
        CALLF     millis
        CALLF     L:?mov_l2_l0
??GetResponse_0:
        LD        A, L:uart_data + 100
        CP        A, #0x0
        JREQ      L:??GetResponse_1
        MOV       L:uart_data + 100, #0x0
        LDW       Y, (0x2,SP)
        LDW       X, #uart_data
        CALLF     strstr
        TNZW      X
        JREQ      L:??GetResponse_1
        LD        A, #0x1
        LD        (0x1,SP), A
??GetResponse_1:
        TNZ       (0x1,SP)
        JRNE      L:??GetResponse_2
        CALLF     millis
        CALLF     L:?mov_l1_l2
        CALLF     L:?sub32_l0_l0_l1
        CALLF     L:?mov_l1_l3
        CALLF     L:?ucmp32_c_l0_l1
        JRC       L:??GetResponse_0
??GetResponse_2:
        CALLF     millis
        CALLF     L:?mov_l1_l2
        CALLF     L:?sub32_l0_l0_l1
        CALLF     L:?mov_l1_l3
        CALLF     L:?ucmp32_c_l0_l1
        JRNC      L:??GetResponse_3
        LD        A, #0x1
        JRA       L:??GetResponse_4
??GetResponse_3:
        CLR       A
??GetResponse_4:
        ADD       SP, #0x3
        JPF       L:?epilogue_l2_l3

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
getLacCellid:
        CALLF     L:?push_w4
        SUB       SP, #0x3f
        LDW       S:?w4, X
        LDW       X, #`?<Constant "AT+CREG?\\r">`
        CALLF     printf
        LDW       X, #0x7d0
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "+CREG:">`
        CALLF     GetResponse
        CP        A, #0x0
        JREQ      L:??getLacCellid_0
        LDW       Y, SP
        ADDW      Y, #0xe
        LDW       X, #uart_data
        CALLF     GetCmdDataSIM
        LDW       Y, #`?<Constant "\\"">`
        LDW       X, SP
        ADDW      X, #0x22
        CALLF     strtok
        LDW       Y, X
        LDW       X, SP
        ADDW      X, #0x4
        CALLF     strcpy
        LDW       Y, #`?<Constant "\\"">`
        LDW       X, SP
        ADDW      X, #0x2c
        CALLF     strtok
        LDW       Y, X
        LDW       X, SP
        ADDW      X, #0x9
        CALLF     strcpy
        LDW       Y, SP
        ADDW      Y, #0x1
        LDW       X, S:?w4
        PUSHW     X
        LD        A, #0xd
        CALLF     L:?move1616_v_x_y_a
        POPW      X
??getLacCellid_0:
        ADD       SP, #0x3f
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
millis:
        LDW       X, #system_tick
        JPF       L:?load32_l0_0x

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
event_send_gprs:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
bat:
        DS8 12

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
main:
        CALLF     L:?push_l2
        SUB       SP, #0x4d
        CALLF     setup
        LDW       X, SP
        ADDW      X, #0x1
        CALLF     getBatterry
        LDW       Y, SP
        ADDW      Y, #0x1
        LDW       X, #bat
        PUSHW     X
        LD        A, #0xc
        CALLF     L:?move1616_v_x_y_a
        POPW      X
        JRA       L:??main_0
??main_1:
        CALLF     HTTP_Terminate
??main_0:
        CALLF     HTTP_init
        CP        A, #0x0
        JREQ      L:??main_1
??main_2:
        CALLF     millis
        CALLF     L:?mov_l1_l2
        CALLF     L:?sub32_l0_l0_l1
        LDW       X, S:?w0
        CPW       X, #0x0
        JRNE      L:??main_3
        LDW       X, S:?w1
        CPW       X, #0x2711
??main_3:
        JRC       L:??main_4
        CALLF     millis
        CALLF     L:?mov_l2_l0
        MOV       L:event_send_gprs, #0x1
??main_4:
        LD        A, L:event_send_gprs
        CP        A, #0x0
        JREQ      L:??main_2
        MOV       L:event_send_gprs, #0x0
        CALLF     start_GPS
        CP        A, #0x0
        JREQ      L:??main_5
        MOV       L:gps_fix, #0x1
        LD        A, #0x10
        LDW       X, #0x5005
        CALLF     GPIO_WriteLow
        LDW       X, #0x41
        LDW       S:?w0, X
        CLRW      Y
        LDW       X, SP
        ADDW      X, #0xd
        CALLF     memset
        LDW       X, SP
        ADDW      X, #0xd
        CALLF     get_GPS
??main_6:
        LDW       Y, #IMEI_DEVICE
        LDW       X, SP
        ADDW      X, #0xd
        CALLF     HTTP_Send
        CP        A, #0x0
        JRNE      L:??main_2
        CALLF     HTTP_Terminate
        CALLF     HTTP_init
        JRA       L:??main_6
??main_5:
        MOV       L:gps_fix, #0x0
        JRA       L:??main_2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
delay:
        LDW       S:?w3, X
        CLRW      X
        LDW       S:?w2, X
        CALLF     millis
        CALLF     L:?add32_l0_l0_l1
        CALLF     L:?mov_l1_l0
??delay_0:
        CALLF     millis
        CALLF     L:?ucmp32_c_l0_l1
        JRC       L:??delay_0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
CLK_Config:
        CLR       A
        JPF       CLK_HSIPrescalerConfig

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM4_Config:
        MOV       S:?b0, #0x7c
        LD        A, #0x7
        CALLF     TIM4_TimeBaseInit
        LD        A, #0x1
        CALLF     TIM4_ClearFlag
        MOV       S:?b0, #0x1
        LD        A, #0x1
        CALLF     TIM4_ITConfig
        RIM
        LD        A, #0x1
        JPF       TIM4_Cmd

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
putchar:
        CALLF     L:?push_w4
        LDW       S:?w4, X
        LD        A, S:?b9
        CALLF     UART1_SendData8
??putchar_0:
        LDW       X, #0x80
        CALLF     UART1_GetFlagStatus
        CP        A, #0x0
        JREQ      L:??putchar_0
        LDW       X, S:?w4
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
getchar:
        CLRW      X
??getchar_0:
        LDW       X, #0x20
        CALLF     UART1_GetFlagStatus
        CP        A, #0x0
        JREQ      L:??getchar_0
        CALLF     UART1_ReceiveData8
        CLRW      X
        LD        XL, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
assert_failed:
??assert_failed_0:
        JRA       L:??assert_failed_0

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "ATE0">`:
        DC8 "ATE0"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "OK">`:
        DC8 "OK"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "AT+CGPSPWR=1">`:
        DC8 "AT+CGPSPWR=1"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "AT+CGPSRST=1">`:
        DC8 "AT+CGPSRST=1"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "AT+CREG=2">`:
        DC8 "AT+CREG=2"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "AT+CREG?">`:
        DC8 "AT+CREG?"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "+CREG: 2,1">`:
        DC8 "+CREG: 2,1"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "AT+SAPBR=1,0">`:
        DC8 "AT+SAPBR=1,0"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "AT+CGATT=1">`:
        DC8 "AT+CGATT=1"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "AT+SAPBR=3,1,\\"Contype...">`:
        DC8 "AT+SAPBR=3,1,\"Contype\",\"GPRS\""

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "AT+SAPBR=3,1,\\"APN\\",\\"v...">`:
        DC8 "AT+SAPBR=3,1,\"APN\",\"v-internet\""

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "AT+SAPBR=3,1,\\"USER\\",\\"...">`:
        DC8 "AT+SAPBR=3,1,\"USER\",\"mms\""

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "AT+SAPBR=3,1,\\"PWD\\",\\"mms\\"">`:
        DC8 "AT+SAPBR=3,1,\"PWD\",\"mms\""

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "AT+HTTPPARA= \\"REDIR\\",1">`:
        DC8 "AT+HTTPPARA= \"REDIR\",1"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "AT+SAPBR=1,1">`:
        DC8 "AT+SAPBR=1,1"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant ":">`:
        DC8 ":"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant ",\\"\\r\\n">`:
        DC8 ",\"\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "AT+CBC\\r">`:
        DC8 "AT+CBC\015"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "+CBC:">`:
        DC8 "+CBC:"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "AT+CREG?\\r">`:
        DC8 "AT+CREG?\015"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "+CREG:">`:
        DC8 "+CREG:"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "\\"">`:
        DC8 "\""

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "AT">`:
        DC8 "AT"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "ATE0\\r">`:
        DC8 "ATE0\015"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "AT\\r">`:
        DC8 "AT\015"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "AT+CGPSSTATUS?">`:
        DC8 "AT+CGPSSTATUS?"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "2D Fix">`:
        DC8 "2D Fix"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "3D Fix">`:
        DC8 "3D Fix"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "AT+CGPSINF=32\\r">`:
        DC8 "AT+CGPSINF=32\015"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "\\r\\n">`:
        DC8 "\015\012"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "AT+CIPCSGP=1,\\"v-inter...">`:
        DC8 "AT+CIPCSGP=1,\"v-internet\",\"\",\"\""

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "AT+HTTPINIT">`:
        DC8 "AT+HTTPINIT"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "AT+HTTPPARA=\\"CID\\",1">`:
        DC8 "AT+HTTPPARA=\"CID\",1"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "AT+HTTPTERM">`:
        DC8 "AT+HTTPTERM"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "AT+HTTPPARA=\\"URL\\",\\"ht...">`:
        DC8 41H, 54H, 2BH, 48H, 54H, 54H, 50H, 50H
        DC8 41H, 52H, 41H, 3DH, 22H, 55H, 52H, 4CH
        DC8 22H, 2CH, 22H, 68H, 74H, 74H, 70H, 3AH
        DC8 2FH, 2FH, 25H, 73H, 2FH, 67H, 70H, 72H
        DC8 6DH, 63H, 2FH, 44H, 61H, 74H, 61H, 3FH
        DC8 61H, 63H, 63H, 74H, 3DH, 74H, 72H, 61H
        DC8 63H, 6BH, 69H, 6EH, 67H, 26H, 64H, 65H
        DC8 76H, 3DH, 67H, 70H, 72H, 6DH, 63H, 5FH
        DC8 25H, 73H, 26H, 67H, 70H, 72H, 6DH, 63H
        DC8 3DH, 24H, 47H, 50H, 52H, 4DH, 43H, 2CH
        DC8 25H, 73H, 22H, 0

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "AT+HTTPACTION=0">`:
        DC8 "AT+HTTPACTION=0"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "+HTTPACTION:0,200">`:
        DC8 "+HTTPACTION:0,200"

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "%s\\r">`:
        DC8 "%s\015"

        END
// 
// 1 519 bytes in section .far_func.text
//    17 bytes in section .near.bss
//    28 bytes in section .near.data
//   535 bytes in section .near.rodata
// 
// 1 515 bytes of CODE  memory (+ 4 bytes shared)
//   535 bytes of CONST memory
//    45 bytes of DATA  memory
//
//Errors: none
//Warnings: 6
