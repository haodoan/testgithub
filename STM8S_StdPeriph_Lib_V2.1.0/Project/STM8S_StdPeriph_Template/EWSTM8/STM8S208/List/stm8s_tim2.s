///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR C/C++ Compiler V1.30.1.50036 for STM8            24/Jan/2015  12:33:29 /
// Copyright 2010-2011 IAR Systems AB.                                        /
//                                                                            /
//    Source file  =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_tim2.c                        /
//    Command line =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_tim2.c -e -Ol --no_cse        /
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
//                    Periph_Template\EWSTM8\STM8S208\List\stm8s_tim2.s       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm8s_tim2

        EXTERN ?b0
        EXTERN ?b1
        EXTERN ?b10
        EXTERN ?b11
        EXTERN ?b12
        EXTERN ?b13
        EXTERN ?b14
        EXTERN ?b2
        EXTERN ?b3
        EXTERN ?b8
        EXTERN ?b9
        EXTERN ?epilogue_l2
        EXTERN ?epilogue_l2_w6
        EXTERN ?epilogue_w4
        EXTERN ?pop_w6
        EXTERN ?push_l2
        EXTERN ?push_w4
        EXTERN ?push_w6
        EXTERN ?w0
        EXTERN ?w1
        EXTERN ?w4
        EXTERN ?w6
        EXTERN assert_failed

        PUBLIC TIM2_ARRPreloadConfig
        PUBLIC TIM2_CCxCmd
        PUBLIC TIM2_ClearFlag
        PUBLIC TIM2_ClearITPendingBit
        PUBLIC TIM2_Cmd
        PUBLIC TIM2_DeInit
        PUBLIC TIM2_ForcedOC1Config
        PUBLIC TIM2_ForcedOC2Config
        PUBLIC TIM2_ForcedOC3Config
        PUBLIC TIM2_GenerateEvent
        PUBLIC TIM2_GetCapture1
        PUBLIC TIM2_GetCapture2
        PUBLIC TIM2_GetCapture3
        PUBLIC TIM2_GetCounter
        PUBLIC TIM2_GetFlagStatus
        PUBLIC TIM2_GetITStatus
        PUBLIC TIM2_GetPrescaler
        PUBLIC TIM2_ICInit
        PUBLIC TIM2_ITConfig
        PUBLIC TIM2_OC1Init
        PUBLIC TIM2_OC1PolarityConfig
        PUBLIC TIM2_OC1PreloadConfig
        PUBLIC TIM2_OC2Init
        PUBLIC TIM2_OC2PolarityConfig
        PUBLIC TIM2_OC2PreloadConfig
        PUBLIC TIM2_OC3Init
        PUBLIC TIM2_OC3PolarityConfig
        PUBLIC TIM2_OC3PreloadConfig
        PUBLIC TIM2_PWMIConfig
        PUBLIC TIM2_PrescalerConfig
        PUBLIC TIM2_SelectOCxM
        PUBLIC TIM2_SelectOnePulseMode
        PUBLIC TIM2_SetAutoreload
        PUBLIC TIM2_SetCompare1
        PUBLIC TIM2_SetCompare2
        PUBLIC TIM2_SetCompare3
        PUBLIC TIM2_SetCounter
        PUBLIC TIM2_SetIC1Prescaler
        PUBLIC TIM2_SetIC2Prescaler
        PUBLIC TIM2_SetIC3Prescaler
        PUBLIC TIM2_TimeBaseInit
        PUBLIC TIM2_UpdateDisableConfig
        PUBLIC TIM2_UpdateRequestConfig


        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_DeInit:
        MOV       L:0x5300, #0x0
        MOV       L:0x5303, #0x0
        MOV       L:0x5305, #0x0
        MOV       L:0x530a, #0x0
        MOV       L:0x530b, #0x0
        MOV       L:0x530a, #0x0
        MOV       L:0x530b, #0x0
        MOV       L:0x5307, #0x0
        MOV       L:0x5308, #0x0
        MOV       L:0x5309, #0x0
        MOV       L:0x530c, #0x0
        MOV       L:0x530d, #0x0
        MOV       L:0x530e, #0x0
        MOV       L:0x530f, #0xff
        MOV       L:0x5310, #0xff
        MOV       L:0x5311, #0x0
        MOV       L:0x5312, #0x0
        MOV       L:0x5313, #0x0
        MOV       L:0x5314, #0x0
        MOV       L:0x5315, #0x0
        MOV       L:0x5316, #0x0
        MOV       L:0x5304, #0x0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_TimeBaseInit:
        LDW       Y, X
        LD        L:0x530e, A
        LDW       X, Y
        CLR       A
        RRWA      X, A
        LD        A, XL
        LD        L:0x530f, A
        LD        A, YL
        LD        L:0x5310, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_OC1Init:
        CALLF     L:?push_w4
        CALLF     L:?push_w6
        PUSH      S:?b10
        LD        S:?b8, A
        MOV       S:?b9, S:?b0
        LDW       S:?w6, X
        MOV       S:?b10, S:?b1
        TNZ       S:?b8
        JREQ      L:??TIM2_OC1Init_0
        LD        A, S:?b8
        CP        A, #0x10
        JREQ      L:??TIM2_OC1Init_0
        LD        A, S:?b8
        CP        A, #0x20
        JREQ      L:??TIM2_OC1Init_0
        LD        A, S:?b8
        CP        A, #0x30
        JREQ      L:??TIM2_OC1Init_0
        LD        A, S:?b8
        CP        A, #0x60
        JREQ      L:??TIM2_OC1Init_0
        LD        A, S:?b8
        CP        A, #0x70
        JREQ      L:??TIM2_OC1Init_0
        LDW       X, #0x6e
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_OC1Init_0:
        TNZ       S:?b9
        JREQ      L:??TIM2_OC1Init_1
        LD        A, S:?b9
        CP        A, #0x11
        JREQ      L:??TIM2_OC1Init_1
        LDW       X, #0x6f
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_OC1Init_1:
        TNZ       S:?b10
        JREQ      L:??TIM2_OC1Init_2
        LD        A, S:?b10
        CP        A, #0x22
        JREQ      L:??TIM2_OC1Init_2
        LDW       X, #0x70
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_OC1Init_2:
        LD        A, L:0x530a
        AND       A, #0xfc
        LD        L:0x530a, A
        LD        A, S:?b10
        AND       A, #0x2
        PUSH      A
        LD        A, S:?b9
        AND       A, #0x1
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        OR        A, L:0x530a
        LD        L:0x530a, A
        LD        A, L:0x5307
        AND       A, #0x8f
        OR        A, S:?b8
        LD        L:0x5307, A
        LDW       X, S:?w6
        CLR       A
        RRWA      X, A
        LD        A, XL
        LD        L:0x5311, A
        LD        A, S:?b13
        LD        L:0x5312, A
        POP       S:?b10
        CALLF     L:?pop_w6
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_OC2Init:
        CALLF     L:?push_w4
        CALLF     L:?push_w6
        PUSH      S:?b10
        LD        S:?b8, A
        MOV       S:?b9, S:?b0
        LDW       S:?w6, X
        MOV       S:?b10, S:?b1
        TNZ       S:?b8
        JREQ      L:??TIM2_OC2Init_0
        LD        A, S:?b8
        CP        A, #0x10
        JREQ      L:??TIM2_OC2Init_0
        LD        A, S:?b8
        CP        A, #0x20
        JREQ      L:??TIM2_OC2Init_0
        LD        A, S:?b8
        CP        A, #0x30
        JREQ      L:??TIM2_OC2Init_0
        LD        A, S:?b8
        CP        A, #0x60
        JREQ      L:??TIM2_OC2Init_0
        LD        A, S:?b8
        CP        A, #0x70
        JREQ      L:??TIM2_OC2Init_0
        LDW       X, #0x90
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_OC2Init_0:
        TNZ       S:?b9
        JREQ      L:??TIM2_OC2Init_1
        LD        A, S:?b9
        CP        A, #0x11
        JREQ      L:??TIM2_OC2Init_1
        LDW       X, #0x91
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_OC2Init_1:
        TNZ       S:?b10
        JREQ      L:??TIM2_OC2Init_2
        LD        A, S:?b10
        CP        A, #0x22
        JREQ      L:??TIM2_OC2Init_2
        LDW       X, #0x92
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_OC2Init_2:
        LD        A, L:0x530a
        AND       A, #0xcf
        LD        L:0x530a, A
        LD        A, S:?b10
        AND       A, #0x20
        PUSH      A
        LD        A, S:?b9
        AND       A, #0x10
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        OR        A, L:0x530a
        LD        L:0x530a, A
        LD        A, L:0x5308
        AND       A, #0x8f
        OR        A, S:?b8
        LD        L:0x5308, A
        LDW       X, S:?w6
        CLR       A
        RRWA      X, A
        LD        A, XL
        LD        L:0x5313, A
        LD        A, S:?b13
        LD        L:0x5314, A
        POP       S:?b10
        CALLF     L:?pop_w6
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_OC3Init:
        CALLF     L:?push_w4
        CALLF     L:?push_w6
        PUSH      S:?b10
        LD        S:?b8, A
        MOV       S:?b9, S:?b0
        LDW       S:?w6, X
        MOV       S:?b10, S:?b1
        TNZ       S:?b8
        JREQ      L:??TIM2_OC3Init_0
        LD        A, S:?b8
        CP        A, #0x10
        JREQ      L:??TIM2_OC3Init_0
        LD        A, S:?b8
        CP        A, #0x20
        JREQ      L:??TIM2_OC3Init_0
        LD        A, S:?b8
        CP        A, #0x30
        JREQ      L:??TIM2_OC3Init_0
        LD        A, S:?b8
        CP        A, #0x60
        JREQ      L:??TIM2_OC3Init_0
        LD        A, S:?b8
        CP        A, #0x70
        JREQ      L:??TIM2_OC3Init_0
        LDW       X, #0xb5
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_OC3Init_0:
        TNZ       S:?b9
        JREQ      L:??TIM2_OC3Init_1
        LD        A, S:?b9
        CP        A, #0x11
        JREQ      L:??TIM2_OC3Init_1
        LDW       X, #0xb6
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_OC3Init_1:
        TNZ       S:?b10
        JREQ      L:??TIM2_OC3Init_2
        LD        A, S:?b10
        CP        A, #0x22
        JREQ      L:??TIM2_OC3Init_2
        LDW       X, #0xb7
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_OC3Init_2:
        LD        A, L:0x530b
        AND       A, #0xfc
        LD        L:0x530b, A
        LD        A, S:?b10
        AND       A, #0x2
        PUSH      A
        LD        A, S:?b9
        AND       A, #0x1
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        OR        A, L:0x530b
        LD        L:0x530b, A
        LD        A, L:0x5309
        AND       A, #0x8f
        OR        A, S:?b8
        LD        L:0x5309, A
        LDW       X, S:?w6
        CLR       A
        RRWA      X, A
        LD        A, XL
        LD        L:0x5315, A
        LD        A, S:?b13
        LD        L:0x5316, A
        POP       S:?b10
        CALLF     L:?pop_w6
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_ICInit:
        CALLF     L:?push_l2
        PUSH      S:?b12
        LD        S:?b12, A
        MOV       S:?b8, S:?b0
        MOV       S:?b9, S:?b1
        MOV       S:?b10, S:?b2
        MOV       S:?b11, S:?b3
        TNZ       S:?b12
        JREQ      L:??TIM2_ICInit_0
        LD        A, S:?b12
        CP        A, #0x1
        JREQ      L:??TIM2_ICInit_0
        LD        A, S:?b12
        CP        A, #0x2
        JREQ      L:??TIM2_ICInit_0
        LDW       X, #0xd9
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_ICInit_0:
        TNZ       S:?b8
        JREQ      L:??TIM2_ICInit_1
        LD        A, S:?b8
        CP        A, #0x44
        JREQ      L:??TIM2_ICInit_1
        LDW       X, #0xda
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_ICInit_1:
        LD        A, S:?b9
        CP        A, #0x1
        JREQ      L:??TIM2_ICInit_2
        LD        A, S:?b9
        CP        A, #0x2
        JREQ      L:??TIM2_ICInit_2
        LD        A, S:?b9
        CP        A, #0x3
        JREQ      L:??TIM2_ICInit_2
        LDW       X, #0xdb
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_ICInit_2:
        TNZ       S:?b10
        JREQ      L:??TIM2_ICInit_3
        LD        A, S:?b10
        CP        A, #0x4
        JREQ      L:??TIM2_ICInit_3
        LD        A, S:?b10
        CP        A, #0x8
        JREQ      L:??TIM2_ICInit_3
        LD        A, S:?b10
        CP        A, #0xc
        JREQ      L:??TIM2_ICInit_3
        LDW       X, #0xdc
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_ICInit_3:
        LD        A, S:?b11
        CP        A, #0x10
        JRC       L:??TIM2_ICInit_4
        LDW       X, #0xdd
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_ICInit_4:
        TNZ       S:?b12
        JRNE      L:??TIM2_ICInit_5
        MOV       S:?b1, S:?b11
        MOV       S:?b0, S:?b9
        LD        A, S:?b8
        CALLF     TI1_Config
        LD        A, S:?b10
        CALLF     TIM2_SetIC1Prescaler
        JRA       L:??TIM2_ICInit_6
??TIM2_ICInit_5:
        LD        A, S:?b12
        CP        A, #0x1
        JRNE      L:??TIM2_ICInit_7
        MOV       S:?b1, S:?b11
        MOV       S:?b0, S:?b9
        LD        A, S:?b8
        CALLF     TI2_Config
        LD        A, S:?b10
        CALLF     TIM2_SetIC2Prescaler
        JRA       L:??TIM2_ICInit_6
??TIM2_ICInit_7:
        MOV       S:?b1, S:?b11
        MOV       S:?b0, S:?b9
        LD        A, S:?b8
        CALLF     TI3_Config
        LD        A, S:?b10
        CALLF     TIM2_SetIC3Prescaler
??TIM2_ICInit_6:
        POP       S:?b12
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_PWMIConfig:
        CALLF     L:?push_l2
        CALLF     L:?push_w6
        PUSH      S:?b14
        LD        S:?b12, A
        MOV       S:?b8, S:?b0
        MOV       S:?b9, S:?b1
        MOV       S:?b10, S:?b2
        MOV       S:?b11, S:?b3
        CLR       S:?b14
        MOV       S:?b13, #0x1
        TNZ       S:?b12
        JREQ      L:??TIM2_PWMIConfig_0
        LD        A, S:?b12
        CP        A, #0x1
        JREQ      L:??TIM2_PWMIConfig_0
        LDW       X, #0x113
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_PWMIConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM2_PWMIConfig_1
        LD        A, S:?b8
        CP        A, #0x44
        JREQ      L:??TIM2_PWMIConfig_1
        LDW       X, #0x114
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_PWMIConfig_1:
        LD        A, S:?b9
        CP        A, #0x1
        JREQ      L:??TIM2_PWMIConfig_2
        LD        A, S:?b9
        CP        A, #0x2
        JREQ      L:??TIM2_PWMIConfig_2
        LD        A, S:?b9
        CP        A, #0x3
        JREQ      L:??TIM2_PWMIConfig_2
        LDW       X, #0x115
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_PWMIConfig_2:
        TNZ       S:?b10
        JREQ      L:??TIM2_PWMIConfig_3
        LD        A, S:?b10
        CP        A, #0x4
        JREQ      L:??TIM2_PWMIConfig_3
        LD        A, S:?b10
        CP        A, #0x8
        JREQ      L:??TIM2_PWMIConfig_3
        LD        A, S:?b10
        CP        A, #0xc
        JREQ      L:??TIM2_PWMIConfig_3
        LDW       X, #0x116
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_PWMIConfig_3:
        LD        A, S:?b8
        CP        A, #0x44
        JREQ      L:??TIM2_PWMIConfig_4
        MOV       S:?b14, #0x44
        JRA       L:??TIM2_PWMIConfig_5
??TIM2_PWMIConfig_4:
        CLR       S:?b14
??TIM2_PWMIConfig_5:
        LD        A, S:?b9
        CP        A, #0x1
        JRNE      L:??TIM2_PWMIConfig_6
        MOV       S:?b13, #0x2
        JRA       L:??TIM2_PWMIConfig_7
??TIM2_PWMIConfig_6:
        MOV       S:?b13, #0x1
??TIM2_PWMIConfig_7:
        TNZ       S:?b12
        JRNE      L:??TIM2_PWMIConfig_8
        MOV       S:?b1, S:?b11
        MOV       S:?b0, S:?b9
        LD        A, S:?b8
        CALLF     TI1_Config
        LD        A, S:?b10
        CALLF     TIM2_SetIC1Prescaler
        MOV       S:?b1, S:?b11
        MOV       S:?b0, S:?b13
        LD        A, S:?b14
        CALLF     TI2_Config
        LD        A, S:?b10
        CALLF     TIM2_SetIC2Prescaler
        JRA       L:??TIM2_PWMIConfig_9
??TIM2_PWMIConfig_8:
        MOV       S:?b1, S:?b11
        MOV       S:?b0, S:?b9
        LD        A, S:?b8
        CALLF     TI2_Config
        LD        A, S:?b10
        CALLF     TIM2_SetIC2Prescaler
        MOV       S:?b1, S:?b11
        MOV       S:?b0, S:?b13
        LD        A, S:?b14
        CALLF     TI1_Config
        LD        A, S:?b10
        CALLF     TIM2_SetIC1Prescaler
??TIM2_PWMIConfig_9:
        POP       S:?b14
        JPF       L:?epilogue_l2_w6

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_Cmd:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM2_Cmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM2_Cmd_0
        LDW       X, #0x156
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_Cmd_0:
        TNZ       S:?b8
        JREQ      L:??TIM2_Cmd_1
        BSET      L:0x5300, #0x0
        JRA       L:??TIM2_Cmd_2
??TIM2_Cmd_1:
        BRES      L:0x5300, #0x0
??TIM2_Cmd_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_ITConfig:
        CALLF     L:?push_w4
        LD        S:?b8, A
        MOV       S:?b9, S:?b0
        TNZ       S:?b8
        JREQ      L:??TIM2_ITConfig_0
        LD        A, S:?b8
        CP        A, #0x10
        JRC       L:??TIM2_ITConfig_1
??TIM2_ITConfig_0:
        LDW       X, #0x174
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_ITConfig_1:
        TNZ       S:?b9
        JREQ      L:??TIM2_ITConfig_2
        LD        A, S:?b9
        CP        A, #0x1
        JREQ      L:??TIM2_ITConfig_2
        LDW       X, #0x175
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_ITConfig_2:
        TNZ       S:?b9
        JREQ      L:??TIM2_ITConfig_3
        LD        A, S:?b8
        OR        A, L:0x5303
        LD        L:0x5303, A
        JPF       L:?epilogue_w4
??TIM2_ITConfig_3:
        CPL       S:?b8
        LD        A, S:?b8
        AND       A, L:0x5303
        LD        L:0x5303, A
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_UpdateDisableConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM2_UpdateDisableConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM2_UpdateDisableConfig_0
        LDW       X, #0x18d
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_UpdateDisableConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM2_UpdateDisableConfig_1
        BSET      L:0x5300, #0x1
        JRA       L:??TIM2_UpdateDisableConfig_2
??TIM2_UpdateDisableConfig_1:
        BRES      L:0x5300, #0x1
??TIM2_UpdateDisableConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_UpdateRequestConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM2_UpdateRequestConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM2_UpdateRequestConfig_0
        LDW       X, #0x1a5
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_UpdateRequestConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM2_UpdateRequestConfig_1
        BSET      L:0x5300, #0x2
        JRA       L:??TIM2_UpdateRequestConfig_2
??TIM2_UpdateRequestConfig_1:
        BRES      L:0x5300, #0x2
??TIM2_UpdateRequestConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_SelectOnePulseMode:
        PUSH      S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM2_SelectOnePulseMode_0
        TNZ       S:?b8
        JREQ      L:??TIM2_SelectOnePulseMode_0
        LDW       X, #0x1be
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_SelectOnePulseMode_0:
        TNZ       S:?b8
        JREQ      L:??TIM2_SelectOnePulseMode_1
        BSET      L:0x5300, #0x3
        JRA       L:??TIM2_SelectOnePulseMode_2
??TIM2_SelectOnePulseMode_1:
        BRES      L:0x5300, #0x3
??TIM2_SelectOnePulseMode_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_PrescalerConfig:
        CALLF     L:?push_w4
        LD        S:?b9, A
        MOV       S:?b8, S:?b0
        TNZ       S:?b8
        JREQ      L:??TIM2_PrescalerConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM2_PrescalerConfig_0
        LDW       X, #0x1ed
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_PrescalerConfig_0:
        TNZ       S:?b9
        JREQ      L:??TIM2_PrescalerConfig_1
        LD        A, S:?b9
        CP        A, #0x1
        JREQ      L:??TIM2_PrescalerConfig_1
        LD        A, S:?b9
        CP        A, #0x2
        JREQ      L:??TIM2_PrescalerConfig_1
        LD        A, S:?b9
        CP        A, #0x3
        JREQ      L:??TIM2_PrescalerConfig_1
        LD        A, S:?b9
        CP        A, #0x4
        JREQ      L:??TIM2_PrescalerConfig_1
        LD        A, S:?b9
        CP        A, #0x5
        JREQ      L:??TIM2_PrescalerConfig_1
        LD        A, S:?b9
        CP        A, #0x6
        JREQ      L:??TIM2_PrescalerConfig_1
        LD        A, S:?b9
        CP        A, #0x7
        JREQ      L:??TIM2_PrescalerConfig_1
        LD        A, S:?b9
        CP        A, #0x8
        JREQ      L:??TIM2_PrescalerConfig_1
        LD        A, S:?b9
        CP        A, #0x9
        JREQ      L:??TIM2_PrescalerConfig_1
        LD        A, S:?b9
        CP        A, #0xa
        JREQ      L:??TIM2_PrescalerConfig_1
        LD        A, S:?b9
        CP        A, #0xb
        JREQ      L:??TIM2_PrescalerConfig_1
        LD        A, S:?b9
        CP        A, #0xc
        JREQ      L:??TIM2_PrescalerConfig_1
        LD        A, S:?b9
        CP        A, #0xd
        JREQ      L:??TIM2_PrescalerConfig_1
        LD        A, S:?b9
        CP        A, #0xe
        JREQ      L:??TIM2_PrescalerConfig_1
        LD        A, S:?b9
        CP        A, #0xf
        JREQ      L:??TIM2_PrescalerConfig_1
        LDW       X, #0x1ee
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_PrescalerConfig_1:
        LD        A, S:?b9
        LD        L:0x530e, A
        LD        A, S:?b8
        LD        L:0x5306, A
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_ForcedOC1Config:
        PUSH      S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
        CP        A, #0x50
        JREQ      L:??TIM2_ForcedOC1Config_0
        LD        A, S:?b8
        CP        A, #0x40
        JREQ      L:??TIM2_ForcedOC1Config_0
        LDW       X, #0x203
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_ForcedOC1Config_0:
        LD        A, L:0x5307
        AND       A, #0x8f
        OR        A, S:?b8
        LD        L:0x5307, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_ForcedOC2Config:
        PUSH      S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
        CP        A, #0x50
        JREQ      L:??TIM2_ForcedOC2Config_0
        LD        A, S:?b8
        CP        A, #0x40
        JREQ      L:??TIM2_ForcedOC2Config_0
        LDW       X, #0x216
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_ForcedOC2Config_0:
        LD        A, L:0x5308
        AND       A, #0x8f
        OR        A, S:?b8
        LD        L:0x5308, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_ForcedOC3Config:
        PUSH      S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
        CP        A, #0x50
        JREQ      L:??TIM2_ForcedOC3Config_0
        LD        A, S:?b8
        CP        A, #0x40
        JREQ      L:??TIM2_ForcedOC3Config_0
        LDW       X, #0x229
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_ForcedOC3Config_0:
        LD        A, L:0x5309
        AND       A, #0x8f
        OR        A, S:?b8
        LD        L:0x5309, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_ARRPreloadConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM2_ARRPreloadConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM2_ARRPreloadConfig_0
        LDW       X, #0x23a
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_ARRPreloadConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM2_ARRPreloadConfig_1
        BSET      L:0x5300, #0x7
        JRA       L:??TIM2_ARRPreloadConfig_2
??TIM2_ARRPreloadConfig_1:
        BRES      L:0x5300, #0x7
??TIM2_ARRPreloadConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_OC1PreloadConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM2_OC1PreloadConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM2_OC1PreloadConfig_0
        LDW       X, #0x251
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_OC1PreloadConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM2_OC1PreloadConfig_1
        BSET      L:0x5307, #0x3
        JRA       L:??TIM2_OC1PreloadConfig_2
??TIM2_OC1PreloadConfig_1:
        BRES      L:0x5307, #0x3
??TIM2_OC1PreloadConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_OC2PreloadConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM2_OC2PreloadConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM2_OC2PreloadConfig_0
        LDW       X, #0x268
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_OC2PreloadConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM2_OC2PreloadConfig_1
        BSET      L:0x5308, #0x3
        JRA       L:??TIM2_OC2PreloadConfig_2
??TIM2_OC2PreloadConfig_1:
        BRES      L:0x5308, #0x3
??TIM2_OC2PreloadConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_OC3PreloadConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM2_OC3PreloadConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM2_OC3PreloadConfig_0
        LDW       X, #0x27f
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_OC3PreloadConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM2_OC3PreloadConfig_1
        BSET      L:0x5309, #0x3
        JRA       L:??TIM2_OC3PreloadConfig_2
??TIM2_OC3PreloadConfig_1:
        BRES      L:0x5309, #0x3
??TIM2_OC3PreloadConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_GenerateEvent:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JRNE      L:??TIM2_GenerateEvent_0
        LDW       X, #0x29a
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_GenerateEvent_0:
        LD        A, S:?b8
        LD        L:0x5306, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_OC1PolarityConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM2_OC1PolarityConfig_0
        LD        A, S:?b8
        CP        A, #0x22
        JREQ      L:??TIM2_OC1PolarityConfig_0
        LDW       X, #0x2ac
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_OC1PolarityConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM2_OC1PolarityConfig_1
        BSET      L:0x530a, #0x1
        JRA       L:??TIM2_OC1PolarityConfig_2
??TIM2_OC1PolarityConfig_1:
        BRES      L:0x530a, #0x1
??TIM2_OC1PolarityConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_OC2PolarityConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM2_OC2PolarityConfig_0
        LD        A, S:?b8
        CP        A, #0x22
        JREQ      L:??TIM2_OC2PolarityConfig_0
        LDW       X, #0x2c5
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_OC2PolarityConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM2_OC2PolarityConfig_1
        BSET      L:0x530a, #0x5
        JRA       L:??TIM2_OC2PolarityConfig_2
??TIM2_OC2PolarityConfig_1:
        BRES      L:0x530a, #0x5
??TIM2_OC2PolarityConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_OC3PolarityConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM2_OC3PolarityConfig_0
        LD        A, S:?b8
        CP        A, #0x22
        JREQ      L:??TIM2_OC3PolarityConfig_0
        LDW       X, #0x2de
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_OC3PolarityConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM2_OC3PolarityConfig_1
        BSET      L:0x530b, #0x1
        JRA       L:??TIM2_OC3PolarityConfig_2
??TIM2_OC3PolarityConfig_1:
        BRES      L:0x530b, #0x1
??TIM2_OC3PolarityConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_CCxCmd:
        CALLF     L:?push_w4
        LD        S:?b8, A
        MOV       S:?b9, S:?b0
        TNZ       S:?b8
        JREQ      L:??TIM2_CCxCmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM2_CCxCmd_0
        LD        A, S:?b8
        CP        A, #0x2
        JREQ      L:??TIM2_CCxCmd_0
        LDW       X, #0x2fa
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_CCxCmd_0:
        TNZ       S:?b9
        JREQ      L:??TIM2_CCxCmd_1
        LD        A, S:?b9
        CP        A, #0x1
        JREQ      L:??TIM2_CCxCmd_1
        LDW       X, #0x2fb
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_CCxCmd_1:
        TNZ       S:?b8
        JRNE      L:??TIM2_CCxCmd_2
        TNZ       S:?b9
        JREQ      L:??TIM2_CCxCmd_3
        BSET      L:0x530a, #0x0
        JPF       L:?epilogue_w4
??TIM2_CCxCmd_3:
        BRES      L:0x530a, #0x0
        JPF       L:?epilogue_w4
??TIM2_CCxCmd_2:
        LD        A, S:?b8
        CP        A, #0x1
        JRNE      L:??TIM2_CCxCmd_4
        TNZ       S:?b9
        JREQ      L:??TIM2_CCxCmd_5
        BSET      L:0x530a, #0x4
        JPF       L:?epilogue_w4
??TIM2_CCxCmd_5:
        BRES      L:0x530a, #0x4
        JPF       L:?epilogue_w4
??TIM2_CCxCmd_4:
        TNZ       S:?b9
        JREQ      L:??TIM2_CCxCmd_6
        BSET      L:0x530b, #0x0
        JPF       L:?epilogue_w4
??TIM2_CCxCmd_6:
        BRES      L:0x530b, #0x0
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_SelectOCxM:
        CALLF     L:?push_w4
        LD        S:?b8, A
        MOV       S:?b9, S:?b0
        TNZ       S:?b8
        JREQ      L:??TIM2_SelectOCxM_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM2_SelectOCxM_0
        LD        A, S:?b8
        CP        A, #0x2
        JREQ      L:??TIM2_SelectOCxM_0
        LDW       X, #0x33b
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_SelectOCxM_0:
        TNZ       S:?b9
        JREQ      L:??TIM2_SelectOCxM_1
        LD        A, S:?b9
        CP        A, #0x10
        JREQ      L:??TIM2_SelectOCxM_1
        LD        A, S:?b9
        CP        A, #0x20
        JREQ      L:??TIM2_SelectOCxM_1
        LD        A, S:?b9
        CP        A, #0x30
        JREQ      L:??TIM2_SelectOCxM_1
        LD        A, S:?b9
        CP        A, #0x60
        JREQ      L:??TIM2_SelectOCxM_1
        LD        A, S:?b9
        CP        A, #0x70
        JREQ      L:??TIM2_SelectOCxM_1
        LD        A, S:?b9
        CP        A, #0x50
        JREQ      L:??TIM2_SelectOCxM_1
        LD        A, S:?b9
        CP        A, #0x40
        JREQ      L:??TIM2_SelectOCxM_1
        LDW       X, #0x33c
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_SelectOCxM_1:
        TNZ       S:?b8
        JRNE      L:??TIM2_SelectOCxM_2
        BRES      L:0x530a, #0x0
        LD        A, L:0x5307
        AND       A, #0x8f
        OR        A, S:?b9
        LD        L:0x5307, A
        JPF       L:?epilogue_w4
??TIM2_SelectOCxM_2:
        LD        A, S:?b8
        CP        A, #0x1
        JRNE      L:??TIM2_SelectOCxM_3
        BRES      L:0x530a, #0x4
        LD        A, L:0x5308
        AND       A, #0x8f
        OR        A, S:?b9
        LD        L:0x5308, A
        JPF       L:?epilogue_w4
??TIM2_SelectOCxM_3:
        BRES      L:0x530b, #0x0
        LD        A, L:0x5309
        AND       A, #0x8f
        OR        A, S:?b9
        LD        L:0x5309, A
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_SetCounter:
        LDW       Y, X
        LDW       X, Y
        CLR       A
        RRWA      X, A
        LD        A, XL
        LD        L:0x530c, A
        LD        A, YL
        LD        L:0x530d, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_SetAutoreload:
        LDW       Y, X
        LDW       X, Y
        CLR       A
        RRWA      X, A
        LD        A, XL
        LD        L:0x530f, A
        LD        A, YL
        LD        L:0x5310, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_SetCompare1:
        LDW       Y, X
        LDW       X, Y
        CLR       A
        RRWA      X, A
        LD        A, XL
        LD        L:0x5311, A
        LD        A, YL
        LD        L:0x5312, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_SetCompare2:
        LDW       Y, X
        LDW       X, Y
        CLR       A
        RRWA      X, A
        LD        A, XL
        LD        L:0x5313, A
        LD        A, YL
        LD        L:0x5314, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_SetCompare3:
        LDW       Y, X
        LDW       X, Y
        CLR       A
        RRWA      X, A
        LD        A, XL
        LD        L:0x5315, A
        LD        A, YL
        LD        L:0x5316, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_SetIC1Prescaler:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM2_SetIC1Prescaler_0
        LD        A, S:?b8
        CP        A, #0x4
        JREQ      L:??TIM2_SetIC1Prescaler_0
        LD        A, S:?b8
        CP        A, #0x8
        JREQ      L:??TIM2_SetIC1Prescaler_0
        LD        A, S:?b8
        CP        A, #0xc
        JREQ      L:??TIM2_SetIC1Prescaler_0
        LDW       X, #0x3b5
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_SetIC1Prescaler_0:
        LD        A, L:0x5307
        AND       A, #0xf3
        OR        A, S:?b8
        LD        L:0x5307, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_SetIC2Prescaler:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM2_SetIC2Prescaler_0
        LD        A, S:?b8
        CP        A, #0x4
        JREQ      L:??TIM2_SetIC2Prescaler_0
        LD        A, S:?b8
        CP        A, #0x8
        JREQ      L:??TIM2_SetIC2Prescaler_0
        LD        A, S:?b8
        CP        A, #0xc
        JREQ      L:??TIM2_SetIC2Prescaler_0
        LDW       X, #0x3c9
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_SetIC2Prescaler_0:
        LD        A, L:0x5308
        AND       A, #0xf3
        OR        A, S:?b8
        LD        L:0x5308, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_SetIC3Prescaler:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM2_SetIC3Prescaler_0
        LD        A, S:?b8
        CP        A, #0x4
        JREQ      L:??TIM2_SetIC3Prescaler_0
        LD        A, S:?b8
        CP        A, #0x8
        JREQ      L:??TIM2_SetIC3Prescaler_0
        LD        A, S:?b8
        CP        A, #0xc
        JREQ      L:??TIM2_SetIC3Prescaler_0
        LDW       X, #0x3de
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_SetIC3Prescaler_0:
        LD        A, L:0x5309
        AND       A, #0xf3
        OR        A, S:?b8
        LD        L:0x5309, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_GetCapture1:
        CLRW      Y
        CLR       S:?b1
        CLR       S:?b0
        LD        A, L:0x5311
        LD        S:?b0, A
        LD        A, L:0x5312
        LD        S:?b1, A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b1
        EXG       A, XL
        LDW       Y, X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        CLR       A
        RLWA      X, A
        LDW       S:?w0, X
        EXGW      X, Y
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        EXGW      X, Y
        LDW       X, Y
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_GetCapture2:
        CLRW      Y
        CLR       S:?b1
        CLR       S:?b0
        LD        A, L:0x5313
        LD        S:?b0, A
        LD        A, L:0x5314
        LD        S:?b1, A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b1
        EXG       A, XL
        LDW       Y, X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        CLR       A
        RLWA      X, A
        LDW       S:?w0, X
        EXGW      X, Y
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        EXGW      X, Y
        LDW       X, Y
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_GetCapture3:
        CLRW      Y
        CLR       S:?b1
        CLR       S:?b0
        LD        A, L:0x5315
        LD        S:?b0, A
        LD        A, L:0x5316
        LD        S:?b1, A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b1
        EXG       A, XL
        LDW       Y, X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        CLR       A
        RLWA      X, A
        LDW       S:?w0, X
        EXGW      X, Y
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        EXGW      X, Y
        LDW       X, Y
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_GetCounter:
        CLRW      Y
        LD        A, L:0x530c
        CLRW      X
        LD        XL, A
        CLR       A
        RLWA      X, A
        LDW       Y, X
        LD        A, L:0x530d
        CLRW      X
        LD        XL, A
        LDW       S:?w0, X
        LDW       X, Y
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_GetPrescaler:
        LD        A, L:0x530e
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_GetFlagStatus:
        CALLF     L:?push_w4
        LDW       S:?w4, X
        CLR       S:?b0
        CLR       S:?b1
        CLR       A
        LDW       X, S:?w4
        CPW       X, #0x1
        JREQ      L:??TIM2_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x2
        JREQ      L:??TIM2_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x4
        JREQ      L:??TIM2_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x8
        JREQ      L:??TIM2_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x200
        JREQ      L:??TIM2_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x400
        JREQ      L:??TIM2_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x800
        JREQ      L:??TIM2_GetFlagStatus_0
        LDW       X, #0x44e
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_GetFlagStatus_0:
        LD        A, S:?b9
        AND       A, L:0x5304
        LD        S:?b1, A
        LDW       X, S:?w4
        CLR       A
        RRWA      X, A
        LD        A, XL
        AND       A, L:0x5305
        OR        A, S:?b1
        CP        A, #0x0
        JREQ      L:??TIM2_GetFlagStatus_1
        MOV       S:?b0, #0x1
        JRA       L:??TIM2_GetFlagStatus_2
??TIM2_GetFlagStatus_1:
        CLR       S:?b0
??TIM2_GetFlagStatus_2:
        LD        A, S:?b0
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_ClearFlag:
        CALLF     L:?push_w4
        LDW       S:?w4, X
        LDW       X, S:?w4
        RLWA      X, A
        AND       A, #0xf1
        RLWA      X, A
        AND       A, #0xf0
        RLWA      X, A
        TNZW      X
        JRNE      L:??TIM2_ClearFlag_0
        LDW       X, S:?w4
        TNZW      X
        JRNE      L:??TIM2_ClearFlag_1
??TIM2_ClearFlag_0:
        LDW       X, #0x46f
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_ClearFlag_1:
        LD        A, S:?b9
        CPL       A
        LD        L:0x5304, A
        MOV       L:0x5305, #0xff
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_GetITStatus:
        PUSH      S:?b8
        LD        S:?b8, A
        CLR       S:?b0
        CLR       S:?b2
        CLR       S:?b1
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM2_GetITStatus_0
        LD        A, S:?b8
        CP        A, #0x2
        JREQ      L:??TIM2_GetITStatus_0
        LD        A, S:?b8
        CP        A, #0x4
        JREQ      L:??TIM2_GetITStatus_0
        LD        A, S:?b8
        CP        A, #0x8
        JREQ      L:??TIM2_GetITStatus_0
        LDW       X, #0x488
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_GetITStatus_0:
        LD        A, S:?b8
        AND       A, L:0x5304
        LD        S:?b2, A
        LD        A, S:?b8
        AND       A, L:0x5303
        LD        S:?b1, A
        TNZ       S:?b2
        JREQ      L:??TIM2_GetITStatus_1
        TNZ       S:?b1
        JREQ      L:??TIM2_GetITStatus_1
        MOV       S:?b0, #0x1
        JRA       L:??TIM2_GetITStatus_2
??TIM2_GetITStatus_1:
        CLR       S:?b0
??TIM2_GetITStatus_2:
        LD        A, S:?b0
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM2_ClearITPendingBit:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM2_ClearITPendingBit_0
        LD        A, S:?b8
        CP        A, #0x10
        JRC       L:??TIM2_ClearITPendingBit_1
??TIM2_ClearITPendingBit_0:
        LDW       X, #0x4a7
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM2_ClearITPendingBit_1:
        CPL       S:?b8
        LD        A, S:?b8
        LD        L:0x5304, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TI1_Config:
        LD        S:?b2, A
        LD        A, S:?b1
        BRES      L:0x530a, #0x0
        SWAP      A
        AND       A, #0xf0
        OR        A, S:?b0
        PUSH      A
        LD        A, L:0x5307
        AND       A, #0xc
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        L:0x5307, A
        TNZ       S:?b2
        JREQ      L:??TI1_Config_0
        BSET      L:0x530a, #0x1
        JRA       L:??TI1_Config_1
??TI1_Config_0:
        BRES      L:0x530a, #0x1
??TI1_Config_1:
        BSET      L:0x530a, #0x0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TI2_Config:
        LD        S:?b2, A
        LD        A, S:?b1
        BRES      L:0x530a, #0x4
        SWAP      A
        AND       A, #0xf0
        OR        A, S:?b0
        PUSH      A
        LD        A, L:0x5308
        AND       A, #0xc
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        L:0x5308, A
        TNZ       S:?b2
        JREQ      L:??TI2_Config_0
        BSET      L:0x530a, #0x5
        JRA       L:??TI2_Config_1
??TI2_Config_0:
        BRES      L:0x530a, #0x5
??TI2_Config_1:
        BSET      L:0x530a, #0x4
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TI3_Config:
        LD        S:?b2, A
        LD        A, S:?b1
        BRES      L:0x530b, #0x0
        SWAP      A
        AND       A, #0xf0
        OR        A, S:?b0
        PUSH      A
        LD        A, L:0x5309
        AND       A, #0xc
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        L:0x5309, A
        TNZ       S:?b2
        JREQ      L:??TI3_Config_0
        BSET      L:0x530b, #0x1
        JRA       L:??TI3_Config_1
??TI3_Config_0:
        BRES      L:0x530b, #0x1
??TI3_Config_1:
        BSET      L:0x530b, #0x0
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
        DC8 5FH, 74H, 69H, 6DH, 32H, 2EH, 63H, 0

        END
// 
// 3 237 bytes in section .far_func.text
//    88 bytes in section .near.rodata
// 
// 3 237 bytes of CODE  memory
//    88 bytes of CONST memory
//
//Errors: none
//Warnings: none
