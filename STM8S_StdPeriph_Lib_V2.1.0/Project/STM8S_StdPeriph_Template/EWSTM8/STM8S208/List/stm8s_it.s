///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR C/C++ Compiler V1.30.1.50036 for STM8            24/Jan/2015  12:33:12 /
// Copyright 2010-2011 IAR Systems AB.                                        /
//                                                                            /
//    Source file  =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Project\STM8S_Std /
//                    Periph_Template\stm8s_it.c                              /
//    Command line =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Project\STM8S_Std /
//                    Periph_Template\stm8s_it.c -e -Ol --no_cse --no_unroll  /
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
//                    Periph_Template\EWSTM8\STM8S208\List\stm8s_it.s         /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm8s_it

        EXTERN ?b0
        EXTERN ?inc32_l0_l0
        EXTERN ?load32_0x_l0
        EXTERN ?load32_l0_0x
        EXTERN ?pop_l0
        EXTERN ?pop_l1
        EXTERN ?pop_w4
        EXTERN ?push_l0
        EXTERN ?push_l1
        EXTERN ?push_w4
        EXTERN ?sub32_l0_l0_0x
        EXTERN ?ucmp32_c_l0_0x
        EXTERN ?w0
        EXTERN ?w1
        EXTERN GPIO_WriteReverse
        EXTERN TIM4_ClearITPendingBit
        EXTERN UART1_ClearFlag
        EXTERN UART1_ReceiveData8
        EXTERN system_tick

        PUBLIC ADC1_IRQHandler
        PUBLIC AWU_IRQHandler
        PUBLIC CLK_IRQHandler
        PUBLIC EEPROM_EEC_IRQHandler
        PUBLIC EXTI_PORTA_IRQHandler
        PUBLIC EXTI_PORTB_IRQHandler
        PUBLIC EXTI_PORTC_IRQHandler
        PUBLIC EXTI_PORTD_IRQHandler
        PUBLIC EXTI_PORTE_IRQHandler
        PUBLIC I2C_IRQHandler
        PUBLIC SPI_IRQHandler
        PUBLIC TIM1_CAP_COM_IRQHandler
        PUBLIC TIM1_UPD_OVF_TRG_BRK_IRQHandler
        PUBLIC TIM2_CAP_COM_IRQHandler
        PUBLIC TIM2_UPD_OVF_BRK_IRQHandler
        PUBLIC TIM4_UPD_OVF_IRQHandler
        PUBLIC TLI_IRQHandler
        PUBLIC TRAP_IRQHandler
        PUBLIC UART1_RX_IRQHandler
        PUBLIC UART1_TX_IRQHandler
        PUBLIC _interrupt_1
        PUBLIC _interrupt_12
        PUBLIC _interrupt_13
        PUBLIC _interrupt_14
        PUBLIC _interrupt_15
        PUBLIC _interrupt_16
        PUBLIC _interrupt_19
        PUBLIC _interrupt_2
        PUBLIC _interrupt_20
        PUBLIC _interrupt_21
        PUBLIC _interrupt_24
        PUBLIC _interrupt_25
        PUBLIC _interrupt_26
        PUBLIC _interrupt_3
        PUBLIC _interrupt_4
        PUBLIC _interrupt_5
        PUBLIC _interrupt_6
        PUBLIC _interrupt_7
        PUBLIC _interrupt_8
        PUBLIC _interrupt_9
        PUBLIC gps_fix
        PUBLIC time_led
        PUBLIC timeout_uart
        PUBLIC uart_data


        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
timeout_uart:
        DS8 4

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
uart_data:
        DS8 107

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TRAP_IRQHandler:
_interrupt_1:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TLI_IRQHandler:
_interrupt_2:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
AWU_IRQHandler:
_interrupt_3:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
CLK_IRQHandler:
_interrupt_4:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
EXTI_PORTA_IRQHandler:
_interrupt_5:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
EXTI_PORTB_IRQHandler:
_interrupt_6:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
EXTI_PORTC_IRQHandler:
_interrupt_7:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
EXTI_PORTD_IRQHandler:
_interrupt_8:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
EXTI_PORTE_IRQHandler:
_interrupt_9:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SPI_IRQHandler:
_interrupt_12:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_UPD_OVF_TRG_BRK_IRQHandler:
_interrupt_13:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_CAP_COM_IRQHandler:
_interrupt_14:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_UPD_OVF_BRK_IRQHandler:
_interrupt_15:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_CAP_COM_IRQHandler:
_interrupt_16:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_TX_IRQHandler:
_interrupt_19:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_RX_IRQHandler:
_interrupt_20:
        PUSH      CC
        POP       A
        AND       A, #0xbf
        PUSH      A
        POP       CC
        CALLF     L:?push_l0
        CALLF     L:?push_l1
        CALLF     L:?push_w4
        LDW       X, #0x20
        CALLF     UART1_ClearFlag
        LDW       X, #system_tick
        CALLF     L:?load32_l0_0x
        LDW       X, #timeout_uart
        CALLF     L:?load32_0x_l0
        MOV       L:uart_data + 101, #0x1
        LD        A, L:uart_data + 106
        LD        S:?b0, A
        LD        A, S:?b0
        ADD       A, #0x1
        LD        L:uart_data + 106, A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        PUSHW     X
        CALLF     UART1_ReceiveData8
        POPW      X
        LD        (L:uart_data,X), A
        LD        A, L:uart_data + 106
        CP        A, #0x77
        JRNE      L:??UART1_RX_IRQHandler_0
        MOV       L:uart_data + 106, #0x0
??UART1_RX_IRQHandler_0:
        CALLF     L:?pop_w4
        CALLF     L:?pop_l1
        CALLF     L:?pop_l0
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C_IRQHandler:
_interrupt_21:
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ADC1_IRQHandler:
_interrupt_24:
        IRET

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
gps_fix:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
time_led:
        DS8 4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM4_UPD_OVF_IRQHandler:
_interrupt_25:
        PUSH      CC
        POP       A
        AND       A, #0xbf
        PUSH      A
        POP       CC
        CALLF     L:?push_l0
        CALLF     L:?push_l1
        LDW       X, #system_tick
        CALLF     L:?load32_l0_0x
        CALLF     L:?inc32_l0_l0
        LDW       X, #system_tick
        CALLF     L:?load32_0x_l0
        LDW       X, #timeout_uart
        CALLF     L:?load32_l0_0x
        CALLF     L:?inc32_l0_l0
        LDW       X, #system_tick
        CALLF     L:?ucmp32_c_l0_0x
        JRNC      L:??TIM4_UPD_OVF_IRQHandler_0
        LD        A, L:uart_data + 101
        CP        A, #0x1
        JRNE      L:??TIM4_UPD_OVF_IRQHandler_0
        LD        A, L:uart_data + 106
        CLRW      X
        LD        XL, A
        CLR       A
        LD        (L:uart_data,X), A
        MOV       L:uart_data + 106, #0x0
        MOV       L:uart_data + 101, #0x0
        MOV       L:uart_data + 100, #0x1
        LDW       X, #system_tick
        CALLF     L:?load32_l0_0x
        LDW       X, #timeout_uart
        CALLF     L:?load32_0x_l0
??TIM4_UPD_OVF_IRQHandler_0:
        LD        A, L:gps_fix
        CP        A, #0x0
        JRNE      L:??TIM4_UPD_OVF_IRQHandler_1
        LDW       Y, #time_led
        LDW       X, #system_tick
        CALLF     L:?load32_l0_0x
        LDW       X, Y
        CALLF     L:?sub32_l0_l0_0x
        LDW       X, S:?w0
        CPW       X, #0x0
        JRNE      L:??TIM4_UPD_OVF_IRQHandler_2
        LDW       X, S:?w1
        CPW       X, #0x1f5
??TIM4_UPD_OVF_IRQHandler_2:
        JRC       L:??TIM4_UPD_OVF_IRQHandler_1
        LDW       X, #system_tick
        CALLF     L:?load32_l0_0x
        LDW       X, #time_led
        CALLF     L:?load32_0x_l0
        LD        A, #0x10
        LDW       X, #0x5005
        CALLF     GPIO_WriteReverse
??TIM4_UPD_OVF_IRQHandler_1:
        LD        A, #0x1
        CALLF     TIM4_ClearITPendingBit
        CALLF     L:?pop_l1
        CALLF     L:?pop_l0
        IRET

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
EEPROM_EEC_IRQHandler:
_interrupt_26:
        IRET

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        END
// 
// 280 bytes in section .far_func.text
// 116 bytes in section .near.bss
// 
// 280 bytes of CODE memory
// 116 bytes of DATA memory
//
//Errors: none
//Warnings: none
