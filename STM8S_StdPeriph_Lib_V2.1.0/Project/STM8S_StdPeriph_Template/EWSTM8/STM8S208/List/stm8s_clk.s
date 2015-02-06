///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR C/C++ Compiler V1.30.1.50036 for STM8            24/Jan/2015  12:33:02 /
// Copyright 2010-2011 IAR Systems AB.                                        /
//                                                                            /
//    Source file  =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_clk.c                         /
//    Command line =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_clk.c -e -Ol --no_cse         /
//                    --no_unroll --no_inline --no_code_motion --no_tbaa      /
//                    --no_cross_call --debug --code_model medium             /
//                    --data_model medium -o D:\Project\STM8S_StdPeriph_Lib_V /
//                    2.1.0\Project\STM8S_StdPeriph_Template\EWSTM8\STM8S208\ /
//                    Obj\ --dlib_config "C:\Program Files\IAR                /
//                    Systems\Embedded Workbench 6.0\stm8\LIB\dlstm8mmn.h"    /
//                    -D USE_STM8_128_EVAL -D STM8S003 -lC                    /
//                    D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Project\STM8S_Std /
//                    Periph_Template\EWSTM8\STM8S208\List\ -lb               /
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
//                    Periph_Template\EWSTM8\STM8S208\List\stm8s_clk.s        /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm8s_clk

        EXTERN ?b0
        EXTERN ?b1
        EXTERN ?b10
        EXTERN ?b11
        EXTERN ?b12
        EXTERN ?b13
        EXTERN ?b2
        EXTERN ?b4
        EXTERN ?b5
        EXTERN ?b6
        EXTERN ?b8
        EXTERN ?b9
        EXTERN ?epilogue_l2_w6
        EXTERN ?epilogue_w4
        EXTERN ?push_l2
        EXTERN ?push_w4
        EXTERN ?push_w6
        EXTERN ?sll16_x_x_a
        EXTERN ?udiv32_l0_dl_l1
        EXTERN ?w0
        EXTERN ?w1
        EXTERN ?w2
        EXTERN ?w3
        EXTERN ?w4
        EXTERN assert_failed

        PUBLIC CLKPrescTable
        PUBLIC CLK_AdjustHSICalibrationValue
        PUBLIC CLK_CCOCmd
        PUBLIC CLK_CCOConfig
        PUBLIC CLK_ClearITPendingBit
        PUBLIC CLK_ClockSecuritySystemEnable
        PUBLIC CLK_ClockSwitchCmd
        PUBLIC CLK_ClockSwitchConfig
        PUBLIC CLK_DeInit
        PUBLIC CLK_FastHaltWakeUpCmd
        PUBLIC CLK_GetClockFreq
        PUBLIC CLK_GetFlagStatus
        PUBLIC CLK_GetITStatus
        PUBLIC CLK_GetSYSCLKSource
        PUBLIC CLK_HSECmd
        PUBLIC CLK_HSICmd
        PUBLIC CLK_HSIPrescalerConfig
        PUBLIC CLK_ITConfig
        PUBLIC CLK_LSICmd
        PUBLIC CLK_PeripheralClockConfig
        PUBLIC CLK_SWIMConfig
        PUBLIC CLK_SYSCLKConfig
        PUBLIC CLK_SYSCLKEmergencyClear
        PUBLIC CLK_SlowActiveHaltWakeUpCmd
        PUBLIC HSIDivFactor


        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
HSIDivFactor:
        DC8 1, 2, 4, 8

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
CLKPrescTable:
        DC8 1, 2, 4, 8, 10, 16, 20, 40

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
CLK_DeInit:
        MOV       L:0x50c0, #0x1
        MOV       L:0x50c1, #0x0
        MOV       L:0x50c4, #0xe1
        MOV       L:0x50c5, #0x0
        MOV       L:0x50c6, #0x18
        MOV       L:0x50c7, #0xff
        MOV       L:0x50ca, #0xff
        MOV       L:0x50c8, #0x0
        MOV       L:0x50c9, #0x0
??CLK_DeInit_0:
        BTJT      L:0x50c9, #0x0, L:??CLK_DeInit_0
        MOV       L:0x50c9, #0x0
        MOV       L:0x50cc, #0x0
        MOV       L:0x50cd, #0x0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
CLK_FastHaltWakeUpCmd:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??CLK_FastHaltWakeUpCmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??CLK_FastHaltWakeUpCmd_0
        LDW       X, #0x63
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??CLK_FastHaltWakeUpCmd_0:
        TNZ       S:?b8
        JREQ      L:??CLK_FastHaltWakeUpCmd_1
        BSET      L:0x50c0, #0x2
        JRA       L:??CLK_FastHaltWakeUpCmd_2
??CLK_FastHaltWakeUpCmd_1:
        BRES      L:0x50c0, #0x2
??CLK_FastHaltWakeUpCmd_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
CLK_HSECmd:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??CLK_HSECmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??CLK_HSECmd_0
        LDW       X, #0x7b
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??CLK_HSECmd_0:
        TNZ       S:?b8
        JREQ      L:??CLK_HSECmd_1
        BSET      L:0x50c1, #0x0
        JRA       L:??CLK_HSECmd_2
??CLK_HSECmd_1:
        BRES      L:0x50c1, #0x0
??CLK_HSECmd_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
CLK_HSICmd:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??CLK_HSICmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??CLK_HSICmd_0
        LDW       X, #0x93
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??CLK_HSICmd_0:
        TNZ       S:?b8
        JREQ      L:??CLK_HSICmd_1
        BSET      L:0x50c0, #0x0
        JRA       L:??CLK_HSICmd_2
??CLK_HSICmd_1:
        BRES      L:0x50c0, #0x0
??CLK_HSICmd_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
CLK_LSICmd:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??CLK_LSICmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??CLK_LSICmd_0
        LDW       X, #0xab
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??CLK_LSICmd_0:
        TNZ       S:?b8
        JREQ      L:??CLK_LSICmd_1
        BSET      L:0x50c0, #0x3
        JRA       L:??CLK_LSICmd_2
??CLK_LSICmd_1:
        BRES      L:0x50c0, #0x3
??CLK_LSICmd_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
CLK_CCOCmd:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??CLK_CCOCmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??CLK_CCOCmd_0
        LDW       X, #0xc4
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??CLK_CCOCmd_0:
        TNZ       S:?b8
        JREQ      L:??CLK_CCOCmd_1
        BSET      L:0x50c9, #0x0
        JRA       L:??CLK_CCOCmd_2
??CLK_CCOCmd_1:
        BRES      L:0x50c9, #0x0
??CLK_CCOCmd_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
CLK_ClockSwitchCmd:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??CLK_ClockSwitchCmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??CLK_ClockSwitchCmd_0
        LDW       X, #0xde
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??CLK_ClockSwitchCmd_0:
        TNZ       S:?b8
        JREQ      L:??CLK_ClockSwitchCmd_1
        BSET      L:0x50c5, #0x1
        JRA       L:??CLK_ClockSwitchCmd_2
??CLK_ClockSwitchCmd_1:
        BRES      L:0x50c5, #0x1
??CLK_ClockSwitchCmd_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
CLK_SlowActiveHaltWakeUpCmd:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??CLK_SlowActiveHaltWakeUpCmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??CLK_SlowActiveHaltWakeUpCmd_0
        LDW       X, #0xf9
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??CLK_SlowActiveHaltWakeUpCmd_0:
        TNZ       S:?b8
        JREQ      L:??CLK_SlowActiveHaltWakeUpCmd_1
        BSET      L:0x50c0, #0x5
        JRA       L:??CLK_SlowActiveHaltWakeUpCmd_2
??CLK_SlowActiveHaltWakeUpCmd_1:
        BRES      L:0x50c0, #0x5
??CLK_SlowActiveHaltWakeUpCmd_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
CLK_PeripheralClockConfig:
        CALLF     L:?push_w4
        LD        S:?b8, A
        MOV       S:?b9, S:?b0
        TNZ       S:?b9
        JREQ      L:??CLK_PeripheralClockConfig_0
        LD        A, S:?b9
        CP        A, #0x1
        JREQ      L:??CLK_PeripheralClockConfig_0
        LDW       X, #0x114
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??CLK_PeripheralClockConfig_0:
        TNZ       S:?b8
        JREQ      L:??CLK_PeripheralClockConfig_1
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??CLK_PeripheralClockConfig_1
        LD        A, S:?b8
        CP        A, #0x3
        JREQ      L:??CLK_PeripheralClockConfig_1
        LD        A, S:?b8
        CP        A, #0x3
        JREQ      L:??CLK_PeripheralClockConfig_1
        LD        A, S:?b8
        CP        A, #0x3
        JREQ      L:??CLK_PeripheralClockConfig_1
        LD        A, S:?b8
        CP        A, #0x4
        JREQ      L:??CLK_PeripheralClockConfig_1
        LD        A, S:?b8
        CP        A, #0x5
        JREQ      L:??CLK_PeripheralClockConfig_1
        LD        A, S:?b8
        CP        A, #0x5
        JREQ      L:??CLK_PeripheralClockConfig_1
        LD        A, S:?b8
        CP        A, #0x4
        JREQ      L:??CLK_PeripheralClockConfig_1
        LD        A, S:?b8
        CP        A, #0x6
        JREQ      L:??CLK_PeripheralClockConfig_1
        LD        A, S:?b8
        CP        A, #0x7
        JREQ      L:??CLK_PeripheralClockConfig_1
        LD        A, S:?b8
        CP        A, #0x17
        JREQ      L:??CLK_PeripheralClockConfig_1
        LD        A, S:?b8
        CP        A, #0x13
        JREQ      L:??CLK_PeripheralClockConfig_1
        LD        A, S:?b8
        CP        A, #0x12
        JREQ      L:??CLK_PeripheralClockConfig_1
        LDW       X, #0x115
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??CLK_PeripheralClockConfig_1:
        LD        A, S:?b8
        AND       A, #0x10
        CP        A, #0x0
        JRNE      L:??CLK_PeripheralClockConfig_2
        TNZ       S:?b9
        JREQ      L:??CLK_PeripheralClockConfig_3
        LD        A, S:?b8
        AND       A, #0xf
        CLRW      X
        INCW      X
        CALLF     L:?sll16_x_x_a
        LD        A, XL
        OR        A, L:0x50c7
        LD        L:0x50c7, A
        JPF       L:?epilogue_w4
??CLK_PeripheralClockConfig_3:
        LD        A, S:?b8
        AND       A, #0xf
        CLRW      X
        INCW      X
        CALLF     L:?sll16_x_x_a
        LD        A, XL
        CPL       A
        AND       A, L:0x50c7
        LD        L:0x50c7, A
        JPF       L:?epilogue_w4
??CLK_PeripheralClockConfig_2:
        TNZ       S:?b9
        JREQ      L:??CLK_PeripheralClockConfig_4
        LD        A, S:?b8
        AND       A, #0xf
        CLRW      X
        INCW      X
        CALLF     L:?sll16_x_x_a
        LD        A, XL
        OR        A, L:0x50ca
        LD        L:0x50ca, A
        JPF       L:?epilogue_w4
??CLK_PeripheralClockConfig_4:
        LD        A, S:?b8
        AND       A, #0xf
        CLRW      X
        INCW      X
        CALLF     L:?sll16_x_x_a
        LD        A, XL
        CPL       A
        AND       A, L:0x50ca
        LD        L:0x50ca, A
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
CLK_ClockSwitchConfig:
        CALLF     L:?push_l2
        CALLF     L:?push_w6
        LD        S:?b10, A
        MOV       S:?b11, S:?b0
        MOV       S:?b12, S:?b1
        MOV       S:?b13, S:?b2
        LDW       X, #0x491
        LDW       S:?w4, X
        CLR       S:?b0
        LD        A, S:?b11
        CP        A, #0xe1
        JREQ      L:??CLK_ClockSwitchConfig_0
        LD        A, S:?b11
        CP        A, #0xd2
        JREQ      L:??CLK_ClockSwitchConfig_0
        LD        A, S:?b11
        CP        A, #0xb4
        JREQ      L:??CLK_ClockSwitchConfig_0
        LDW       X, #0x147
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??CLK_ClockSwitchConfig_0:
        TNZ       S:?b10
        JREQ      L:??CLK_ClockSwitchConfig_1
        LD        A, S:?b10
        CP        A, #0x1
        JREQ      L:??CLK_ClockSwitchConfig_1
        LDW       X, #0x148
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??CLK_ClockSwitchConfig_1:
        TNZ       S:?b12
        JREQ      L:??CLK_ClockSwitchConfig_2
        LD        A, S:?b12
        CP        A, #0x1
        JREQ      L:??CLK_ClockSwitchConfig_2
        LDW       X, #0x149
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??CLK_ClockSwitchConfig_2:
        TNZ       S:?b13
        JREQ      L:??CLK_ClockSwitchConfig_3
        LD        A, S:?b13
        CP        A, #0x1
        JREQ      L:??CLK_ClockSwitchConfig_3
        LDW       X, #0x14a
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??CLK_ClockSwitchConfig_3:
        LD        A, L:0x50c3
        LD        S:?b1, A
        LD        A, S:?b10
        CP        A, #0x1
        JRNE      L:??CLK_ClockSwitchConfig_4
        BSET      L:0x50c5, #0x1
        TNZ       S:?b12
        JREQ      L:??CLK_ClockSwitchConfig_5
        BSET      L:0x50c5, #0x2
        JRA       L:??CLK_ClockSwitchConfig_6
??CLK_ClockSwitchConfig_5:
        BRES      L:0x50c5, #0x2
??CLK_ClockSwitchConfig_6:
        LD        A, S:?b11
        LD        L:0x50c4, A
        JRA       L:??CLK_ClockSwitchConfig_7
??CLK_ClockSwitchConfig_8:
        LDW       X, S:?w4
        DECW      X
        LDW       S:?w4, X
??CLK_ClockSwitchConfig_7:
        BTJF      L:0x50c5, #0x0, L:??CLK_ClockSwitchConfig_9
        LDW       X, S:?w4
        TNZW      X
        JRNE      L:??CLK_ClockSwitchConfig_8
??CLK_ClockSwitchConfig_9:
        LDW       X, S:?w4
        TNZW      X
        JREQ      L:??CLK_ClockSwitchConfig_10
        MOV       S:?b0, #0x1
        JRA       L:??CLK_ClockSwitchConfig_11
??CLK_ClockSwitchConfig_10:
        CLR       S:?b0
        JRA       L:??CLK_ClockSwitchConfig_11
??CLK_ClockSwitchConfig_4:
        TNZ       S:?b12
        JREQ      L:??CLK_ClockSwitchConfig_12
        BSET      L:0x50c5, #0x2
        JRA       L:??CLK_ClockSwitchConfig_13
??CLK_ClockSwitchConfig_12:
        BRES      L:0x50c5, #0x2
??CLK_ClockSwitchConfig_13:
        LD        A, S:?b11
        LD        L:0x50c4, A
        MOV       S:?b0, #0x1
??CLK_ClockSwitchConfig_11:
        TNZ       S:?b13
        JRNE      L:??CLK_ClockSwitchConfig_14
        LD        A, S:?b1
        CP        A, #0xe1
        JRNE      L:??CLK_ClockSwitchConfig_14
        BRES      L:0x50c0, #0x0
        JRA       L:??CLK_ClockSwitchConfig_15
??CLK_ClockSwitchConfig_14:
        TNZ       S:?b13
        JRNE      L:??CLK_ClockSwitchConfig_16
        LD        A, S:?b1
        CP        A, #0xd2
        JRNE      L:??CLK_ClockSwitchConfig_16
        BRES      L:0x50c0, #0x3
        JRA       L:??CLK_ClockSwitchConfig_15
??CLK_ClockSwitchConfig_16:
        TNZ       S:?b13
        JRNE      L:??CLK_ClockSwitchConfig_15
        LD        A, S:?b1
        CP        A, #0xb4
        JRNE      L:??CLK_ClockSwitchConfig_15
        BRES      L:0x50c1, #0x0
??CLK_ClockSwitchConfig_15:
        LD        A, S:?b0
        JPF       L:?epilogue_l2_w6

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
CLK_HSIPrescalerConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??CLK_HSIPrescalerConfig_0
        LD        A, S:?b8
        CP        A, #0x8
        JREQ      L:??CLK_HSIPrescalerConfig_0
        LD        A, S:?b8
        CP        A, #0x10
        JREQ      L:??CLK_HSIPrescalerConfig_0
        LD        A, S:?b8
        CP        A, #0x18
        JREQ      L:??CLK_HSIPrescalerConfig_0
        LDW       X, #0x1a4
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??CLK_HSIPrescalerConfig_0:
        LD        A, L:0x50c6
        AND       A, #0xe7
        LD        L:0x50c6, A
        LD        A, S:?b8
        OR        A, L:0x50c6
        LD        L:0x50c6, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
CLK_CCOConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??CLK_CCOConfig_0
        LD        A, S:?b8
        CP        A, #0x4
        JREQ      L:??CLK_CCOConfig_0
        LD        A, S:?b8
        CP        A, #0x2
        JREQ      L:??CLK_CCOConfig_0
        LD        A, S:?b8
        CP        A, #0x8
        JREQ      L:??CLK_CCOConfig_0
        LD        A, S:?b8
        CP        A, #0xa
        JREQ      L:??CLK_CCOConfig_0
        LD        A, S:?b8
        CP        A, #0xc
        JREQ      L:??CLK_CCOConfig_0
        LD        A, S:?b8
        CP        A, #0xe
        JREQ      L:??CLK_CCOConfig_0
        LD        A, S:?b8
        CP        A, #0x10
        JREQ      L:??CLK_CCOConfig_0
        LD        A, S:?b8
        CP        A, #0x12
        JREQ      L:??CLK_CCOConfig_0
        LD        A, S:?b8
        CP        A, #0x14
        JREQ      L:??CLK_CCOConfig_0
        LD        A, S:?b8
        CP        A, #0x16
        JREQ      L:??CLK_CCOConfig_0
        LD        A, S:?b8
        CP        A, #0x18
        JREQ      L:??CLK_CCOConfig_0
        LD        A, S:?b8
        CP        A, #0x1a
        JREQ      L:??CLK_CCOConfig_0
        LDW       X, #0x1bb
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??CLK_CCOConfig_0:
        LD        A, L:0x50c9
        AND       A, #0xe1
        LD        L:0x50c9, A
        LD        A, S:?b8
        OR        A, L:0x50c9
        LD        L:0x50c9, A
        BSET      L:0x50c9, #0x0
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
CLK_ITConfig:
        CALLF     L:?push_w4
        LD        S:?b8, A
        MOV       S:?b9, S:?b0
        TNZ       S:?b9
        JREQ      L:??CLK_ITConfig_0
        LD        A, S:?b9
        CP        A, #0x1
        JREQ      L:??CLK_ITConfig_0
        LDW       X, #0x1d4
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??CLK_ITConfig_0:
        LD        A, S:?b8
        CP        A, #0xc
        JREQ      L:??CLK_ITConfig_1
        LD        A, S:?b8
        CP        A, #0x1c
        JREQ      L:??CLK_ITConfig_1
        LDW       X, #0x1d5
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??CLK_ITConfig_1:
        TNZ       S:?b9
        JREQ      L:??CLK_ITConfig_2
        LD        A, S:?b8
        SUB       A, #0xc
        JREQ      L:??CLK_ITConfig_3
        SUB       A, #0x10
        JRNE      L:??CLK_ITConfig_4
        BSET      L:0x50c5, #0x2
        JPF       L:?epilogue_w4
??CLK_ITConfig_3:
        BSET      L:0x50c8, #0x2
        JPF       L:?epilogue_w4
??CLK_ITConfig_2:
        LD        A, S:?b8
        SUB       A, #0xc
        JREQ      L:??CLK_ITConfig_5
        SUB       A, #0x10
        JRNE      L:??CLK_ITConfig_4
        BRES      L:0x50c5, #0x2
        JPF       L:?epilogue_w4
??CLK_ITConfig_5:
        BRES      L:0x50c8, #0x2
??CLK_ITConfig_4:
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
CLK_SYSCLKConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??CLK_SYSCLKConfig_0
        LD        A, S:?b8
        CP        A, #0x8
        JREQ      L:??CLK_SYSCLKConfig_0
        LD        A, S:?b8
        CP        A, #0x10
        JREQ      L:??CLK_SYSCLKConfig_0
        LD        A, S:?b8
        CP        A, #0x18
        JREQ      L:??CLK_SYSCLKConfig_0
        LD        A, S:?b8
        CP        A, #0x80
        JREQ      L:??CLK_SYSCLKConfig_0
        LD        A, S:?b8
        CP        A, #0x81
        JREQ      L:??CLK_SYSCLKConfig_0
        LD        A, S:?b8
        CP        A, #0x82
        JREQ      L:??CLK_SYSCLKConfig_0
        LD        A, S:?b8
        CP        A, #0x83
        JREQ      L:??CLK_SYSCLKConfig_0
        LD        A, S:?b8
        CP        A, #0x84
        JREQ      L:??CLK_SYSCLKConfig_0
        LD        A, S:?b8
        CP        A, #0x85
        JREQ      L:??CLK_SYSCLKConfig_0
        LD        A, S:?b8
        CP        A, #0x86
        JREQ      L:??CLK_SYSCLKConfig_0
        LD        A, S:?b8
        CP        A, #0x87
        JREQ      L:??CLK_SYSCLKConfig_0
        LDW       X, #0x1ff
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??CLK_SYSCLKConfig_0:
        LD        A, S:?b8
        AND       A, #0x80
        CP        A, #0x0
        JRNE      L:??CLK_SYSCLKConfig_1
        LD        A, L:0x50c6
        AND       A, #0xe7
        LD        L:0x50c6, A
        LD        A, S:?b8
        AND       A, #0x18
        OR        A, L:0x50c6
        LD        L:0x50c6, A
        JRA       L:??CLK_SYSCLKConfig_2
??CLK_SYSCLKConfig_1:
        LD        A, L:0x50c6
        AND       A, #0xf8
        LD        L:0x50c6, A
        LD        A, S:?b8
        AND       A, #0x7
        OR        A, L:0x50c6
        LD        L:0x50c6, A
??CLK_SYSCLKConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
CLK_SWIMConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??CLK_SWIMConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??CLK_SWIMConfig_0
        LDW       X, #0x217
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??CLK_SWIMConfig_0:
        TNZ       S:?b8
        JREQ      L:??CLK_SWIMConfig_1
        BSET      L:0x50cd, #0x0
        JRA       L:??CLK_SWIMConfig_2
??CLK_SWIMConfig_1:
        BRES      L:0x50cd, #0x0
??CLK_SWIMConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
CLK_ClockSecuritySystemEnable:
        BSET      L:0x50c8, #0x0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
CLK_GetSYSCLKSource:
        LD        A, L:0x50c3
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
CLK_GetClockFreq:
        CLRW      X
        LDW       S:?w1, X
        LDW       S:?w0, X
        MOV       S:?b6, #0xe1
        CLR       S:?b5
        CLR       S:?b4
        LD        A, L:0x50c3
        LD        S:?b6, A
        LD        A, S:?b6
        CP        A, #0xe1
        JRNE      L:??CLK_GetClockFreq_0
        LD        A, L:0x50c6
        AND       A, #0x18
        LD        S:?b5, A
        LD        A, S:?b5
        SRL       A
        SRL       A
        SRL       A
        LD        S:?b5, A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b5
        EXG       A, XL
        LD        A, (L:HSIDivFactor,X)
        LD        S:?b4, A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b4
        EXG       A, XL
        LDW       S:?w3, X
        CLRW      X
        LDW       S:?w2, X
        CALLF     L:?udiv32_l0_dl_l1
        DATA
        DC32      0xf42400
        CODE
        RETF
??CLK_GetClockFreq_0:
        LD        A, S:?b6
        CP        A, #0xd2
        JRNE      L:??CLK_GetClockFreq_1
        LDW       X, #0xf400
        LDW       S:?w1, X
        CLRW      X
        INCW      X
        LDW       S:?w0, X
        RETF
??CLK_GetClockFreq_1:
        LDW       X, #0x2400
        LDW       S:?w1, X
        LDW       X, #0xf4
        LDW       S:?w0, X
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
CLK_AdjustHSICalibrationValue:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??CLK_AdjustHSICalibrationValue_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??CLK_AdjustHSICalibrationValue_0
        LD        A, S:?b8
        CP        A, #0x2
        JREQ      L:??CLK_AdjustHSICalibrationValue_0
        LD        A, S:?b8
        CP        A, #0x3
        JREQ      L:??CLK_AdjustHSICalibrationValue_0
        LD        A, S:?b8
        CP        A, #0x4
        JREQ      L:??CLK_AdjustHSICalibrationValue_0
        LD        A, S:?b8
        CP        A, #0x5
        JREQ      L:??CLK_AdjustHSICalibrationValue_0
        LD        A, S:?b8
        CP        A, #0x6
        JREQ      L:??CLK_AdjustHSICalibrationValue_0
        LD        A, S:?b8
        CP        A, #0x7
        JREQ      L:??CLK_AdjustHSICalibrationValue_0
        LDW       X, #0x26c
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??CLK_AdjustHSICalibrationValue_0:
        LD        A, L:0x50cc
        AND       A, #0xf8
        OR        A, S:?b8
        LD        L:0x50cc, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
CLK_SYSCLKEmergencyClear:
        BRES      L:0x50c5, #0x0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
CLK_GetFlagStatus:
        CALLF     L:?push_w4
        LDW       S:?w4, X
        CLRW      X
        CLR       S:?b0
        CLR       A
        LDW       Y, S:?w4
        CPW       Y, #0x110
        JREQ      L:??CLK_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x102
        JREQ      L:??CLK_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x202
        JREQ      L:??CLK_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x308
        JREQ      L:??CLK_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x301
        JREQ      L:??CLK_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x408
        JREQ      L:??CLK_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x402
        JREQ      L:??CLK_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x504
        JREQ      L:??CLK_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x502
        JREQ      L:??CLK_GetFlagStatus_0
        LDW       X, #0x290
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??CLK_GetFlagStatus_0:
        LDW       X, S:?w4
        RLWA      X, A
        AND       A, #0xff
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        CPW       X, #0x100
        JRNE      L:??CLK_GetFlagStatus_1
        LD        A, L:0x50c0
        LD        S:?b0, A
        JRA       L:??CLK_GetFlagStatus_2
??CLK_GetFlagStatus_1:
        CPW       X, #0x200
        JRNE      L:??CLK_GetFlagStatus_3
        LD        A, L:0x50c1
        LD        S:?b0, A
        JRA       L:??CLK_GetFlagStatus_2
??CLK_GetFlagStatus_3:
        CPW       X, #0x300
        JRNE      L:??CLK_GetFlagStatus_4
        LD        A, L:0x50c5
        LD        S:?b0, A
        JRA       L:??CLK_GetFlagStatus_2
??CLK_GetFlagStatus_4:
        CPW       X, #0x400
        JRNE      L:??CLK_GetFlagStatus_5
        LD        A, L:0x50c8
        LD        S:?b0, A
        JRA       L:??CLK_GetFlagStatus_2
??CLK_GetFlagStatus_5:
        LD        A, L:0x50c9
        LD        S:?b0, A
??CLK_GetFlagStatus_2:
        LD        A, S:?b9
        AND       A, S:?b0
        CP        A, #0x0
        JREQ      L:??CLK_GetFlagStatus_6
        LD        A, #0x1
        JPF       L:?epilogue_w4
??CLK_GetFlagStatus_6:
        CLR       A
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
CLK_GetITStatus:
        PUSH      S:?b8
        LD        S:?b8, A
        CLR       S:?b0
        LD        A, S:?b8
        CP        A, #0xc
        JREQ      L:??CLK_GetITStatus_0
        LD        A, S:?b8
        CP        A, #0x1c
        JREQ      L:??CLK_GetITStatus_0
        LDW       X, #0x2c5
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??CLK_GetITStatus_0:
        LD        A, S:?b8
        CP        A, #0x1c
        JRNE      L:??CLK_GetITStatus_1
        LD        A, S:?b8
        AND       A, L:0x50c5
        CP        A, #0xc
        JRNE      L:??CLK_GetITStatus_2
        MOV       S:?b0, #0x1
        JRA       L:??CLK_GetITStatus_3
??CLK_GetITStatus_2:
        CLR       S:?b0
        JRA       L:??CLK_GetITStatus_3
??CLK_GetITStatus_1:
        LD        A, S:?b8
        AND       A, L:0x50c8
        CP        A, #0xc
        JRNE      L:??CLK_GetITStatus_4
        MOV       S:?b0, #0x1
        JRA       L:??CLK_GetITStatus_3
??CLK_GetITStatus_4:
        CLR       S:?b0
??CLK_GetITStatus_3:
        LD        A, S:?b0
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
CLK_ClearITPendingBit:
        PUSH      S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
        CP        A, #0xc
        JREQ      L:??CLK_ClearITPendingBit_0
        LD        A, S:?b8
        CP        A, #0x1c
        JREQ      L:??CLK_ClearITPendingBit_0
        LDW       X, #0x2ef
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??CLK_ClearITPendingBit_0:
        LD        A, S:?b8
        CP        A, #0xc
        JRNE      L:??CLK_ClearITPendingBit_1
        BRES      L:0x50c8, #0x3
        JRA       L:??CLK_ClearITPendingBit_2
??CLK_ClearITPendingBit_1:
        BRES      L:0x50c5, #0x3
??CLK_ClearITPendingBit_2:
        POP       S:?b8
        RETF

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`:
        DC8 44H, 3AH, 5CH, 50H, 72H, 6FH, 6AH, 65H
        DC8 63H, 74H, 5CH, 53H, 54H, 4DH, 38H, 53H
        DC8 5FH, 53H, 74H, 64H, 50H, 65H, 72H, 69H
        DC8 70H, 68H, 5FH, 4CH, 69H, 62H, 5FH, 56H
        DC8 32H, 2EH, 31H, 2EH, 30H, 5CH, 4CH, 69H
        DC8 62H, 72H, 61H, 72H, 69H, 65H, 73H, 5CH
        DC8 53H, 54H, 4DH, 38H, 53H, 5FH, 53H, 74H
        DC8 64H, 50H, 65H, 72H, 69H, 70H, 68H, 5FH
        DC8 44H, 72H, 69H, 76H, 65H, 72H, 5CH, 73H
        DC8 72H, 63H, 5CH, 73H, 74H, 6DH, 38H, 73H
        DC8 5FH, 63H, 6CH, 6BH, 2EH, 63H, 0

        END
// 
// 1 878 bytes in section .far_func.text
//    99 bytes in section .near.rodata
// 
// 1 878 bytes of CODE  memory
//    99 bytes of CONST memory
//
//Errors: none
//Warnings: none
