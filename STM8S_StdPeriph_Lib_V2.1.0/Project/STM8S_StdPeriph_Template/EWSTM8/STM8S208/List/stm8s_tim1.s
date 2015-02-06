///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR C/C++ Compiler V1.30.1.50036 for STM8            24/Jan/2015  12:33:03 /
// Copyright 2010-2011 IAR Systems AB.                                        /
//                                                                            /
//    Source file  =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_tim1.c                        /
//    Command line =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_tim1.c -e -Ol --no_cse        /
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
//                    Periph_Template\EWSTM8\STM8S208\List\stm8s_tim1.s       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm8s_tim1

        EXTERN ?b0
        EXTERN ?b1
        EXTERN ?b10
        EXTERN ?b11
        EXTERN ?b12
        EXTERN ?b13
        EXTERN ?b14
        EXTERN ?b2
        EXTERN ?b3
        EXTERN ?b4
        EXTERN ?b5
        EXTERN ?b8
        EXTERN ?b9
        EXTERN ?epilogue_l2
        EXTERN ?epilogue_l2_w6
        EXTERN ?epilogue_w4
        EXTERN ?pop_w5
        EXTERN ?push_l2
        EXTERN ?push_w4
        EXTERN ?push_w5
        EXTERN ?push_w6
        EXTERN ?w0
        EXTERN ?w1
        EXTERN ?w4
        EXTERN ?w5
        EXTERN ?w6
        EXTERN assert_failed

        PUBLIC TIM1_ARRPreloadConfig
        PUBLIC TIM1_BDTRConfig
        PUBLIC TIM1_CCPreloadControl
        PUBLIC TIM1_CCxCmd
        PUBLIC TIM1_CCxNCmd
        PUBLIC TIM1_ClearFlag
        PUBLIC TIM1_ClearITPendingBit
        PUBLIC TIM1_Cmd
        PUBLIC TIM1_CounterModeConfig
        PUBLIC TIM1_CtrlPWMOutputs
        PUBLIC TIM1_DeInit
        PUBLIC TIM1_ETRClockMode1Config
        PUBLIC TIM1_ETRClockMode2Config
        PUBLIC TIM1_ETRConfig
        PUBLIC TIM1_EncoderInterfaceConfig
        PUBLIC TIM1_ForcedOC1Config
        PUBLIC TIM1_ForcedOC2Config
        PUBLIC TIM1_ForcedOC3Config
        PUBLIC TIM1_ForcedOC4Config
        PUBLIC TIM1_GenerateEvent
        PUBLIC TIM1_GetCapture1
        PUBLIC TIM1_GetCapture2
        PUBLIC TIM1_GetCapture3
        PUBLIC TIM1_GetCapture4
        PUBLIC TIM1_GetCounter
        PUBLIC TIM1_GetFlagStatus
        PUBLIC TIM1_GetITStatus
        PUBLIC TIM1_GetPrescaler
        PUBLIC TIM1_ICInit
        PUBLIC TIM1_ITConfig
        PUBLIC TIM1_InternalClockConfig
        PUBLIC TIM1_OC1FastConfig
        PUBLIC TIM1_OC1Init
        PUBLIC TIM1_OC1NPolarityConfig
        PUBLIC TIM1_OC1PolarityConfig
        PUBLIC TIM1_OC1PreloadConfig
        PUBLIC TIM1_OC2FastConfig
        PUBLIC TIM1_OC2Init
        PUBLIC TIM1_OC2NPolarityConfig
        PUBLIC TIM1_OC2PolarityConfig
        PUBLIC TIM1_OC2PreloadConfig
        PUBLIC TIM1_OC3FastConfig
        PUBLIC TIM1_OC3Init
        PUBLIC TIM1_OC3NPolarityConfig
        PUBLIC TIM1_OC3PolarityConfig
        PUBLIC TIM1_OC3PreloadConfig
        PUBLIC TIM1_OC4FastConfig
        PUBLIC TIM1_OC4Init
        PUBLIC TIM1_OC4PolarityConfig
        PUBLIC TIM1_OC4PreloadConfig
        PUBLIC TIM1_PWMIConfig
        PUBLIC TIM1_PrescalerConfig
        PUBLIC TIM1_SelectCOM
        PUBLIC TIM1_SelectHallSensor
        PUBLIC TIM1_SelectInputTrigger
        PUBLIC TIM1_SelectMasterSlaveMode
        PUBLIC TIM1_SelectOCxM
        PUBLIC TIM1_SelectOnePulseMode
        PUBLIC TIM1_SelectOutputTrigger
        PUBLIC TIM1_SelectSlaveMode
        PUBLIC TIM1_SetAutoreload
        PUBLIC TIM1_SetCompare1
        PUBLIC TIM1_SetCompare2
        PUBLIC TIM1_SetCompare3
        PUBLIC TIM1_SetCompare4
        PUBLIC TIM1_SetCounter
        PUBLIC TIM1_SetIC1Prescaler
        PUBLIC TIM1_SetIC2Prescaler
        PUBLIC TIM1_SetIC3Prescaler
        PUBLIC TIM1_SetIC4Prescaler
        PUBLIC TIM1_TIxExternalClockConfig
        PUBLIC TIM1_TimeBaseInit
        PUBLIC TIM1_UpdateDisableConfig
        PUBLIC TIM1_UpdateRequestConfig


        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_DeInit:
        MOV       L:0x5250, #0x0
        MOV       L:0x5251, #0x0
        MOV       L:0x5252, #0x0
        MOV       L:0x5253, #0x0
        MOV       L:0x5254, #0x0
        MOV       L:0x5256, #0x0
        MOV       L:0x525c, #0x0
        MOV       L:0x525d, #0x0
        MOV       L:0x5258, #0x1
        MOV       L:0x5259, #0x1
        MOV       L:0x525a, #0x1
        MOV       L:0x525b, #0x1
        MOV       L:0x525c, #0x0
        MOV       L:0x525d, #0x0
        MOV       L:0x5258, #0x0
        MOV       L:0x5259, #0x0
        MOV       L:0x525a, #0x0
        MOV       L:0x525b, #0x0
        MOV       L:0x525e, #0x0
        MOV       L:0x525f, #0x0
        MOV       L:0x5260, #0x0
        MOV       L:0x5261, #0x0
        MOV       L:0x5262, #0xff
        MOV       L:0x5263, #0xff
        MOV       L:0x5265, #0x0
        MOV       L:0x5266, #0x0
        MOV       L:0x5267, #0x0
        MOV       L:0x5268, #0x0
        MOV       L:0x5269, #0x0
        MOV       L:0x526a, #0x0
        MOV       L:0x526b, #0x0
        MOV       L:0x526c, #0x0
        MOV       L:0x526f, #0x0
        MOV       L:0x5257, #0x1
        MOV       L:0x526e, #0x0
        MOV       L:0x526d, #0x0
        MOV       L:0x5264, #0x0
        MOV       L:0x5255, #0x0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_TimeBaseInit:
        CALLF     L:?push_l2
        CALLF     L:?push_w6
        LDW       S:?w5, X
        LD        S:?b9, A
        LDW       S:?w6, Y
        MOV       S:?b8, S:?b0
        TNZ       S:?b9
        JREQ      L:??TIM1_TimeBaseInit_0
        LD        A, S:?b9
        CP        A, #0x10
        JREQ      L:??TIM1_TimeBaseInit_0
        LD        A, S:?b9
        CP        A, #0x20
        JREQ      L:??TIM1_TimeBaseInit_0
        LD        A, S:?b9
        CP        A, #0x40
        JREQ      L:??TIM1_TimeBaseInit_0
        LD        A, S:?b9
        CP        A, #0x60
        JREQ      L:??TIM1_TimeBaseInit_0
        LDW       X, #0x70
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_TimeBaseInit_0:
        LDW       X, S:?w6
        CLR       A
        RRWA      X, A
        LD        A, XL
        LD        L:0x5262, A
        LD        A, S:?b13
        LD        L:0x5263, A
        LDW       X, S:?w5
        CLR       A
        RRWA      X, A
        LD        A, XL
        LD        L:0x5260, A
        LD        A, S:?b11
        LD        L:0x5261, A
        LD        A, L:0x5250
        AND       A, #0x8f
        OR        A, S:?b9
        LD        L:0x5250, A
        LD        A, S:?b8
        LD        L:0x5264, A
        JPF       L:?epilogue_l2_w6

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_OC1Init:
        CALLF     L:?push_l2
        CALLF     L:?push_w6
        PUSH      S:?b14
        PUSHW     X
        LD        S:?b8, A
        MOV       S:?b14, S:?b0
        MOV       S:?b13, S:?b1
        MOV       S:?b12, S:?b2
        MOV       S:?b9, S:?b3
        MOV       S:?b10, S:?b4
        MOV       S:?b11, S:?b5
        TNZ       S:?b8
        JREQ      L:??TIM1_OC1Init_0
        LD        A, S:?b8
        CP        A, #0x10
        JREQ      L:??TIM1_OC1Init_0
        LD        A, S:?b8
        CP        A, #0x20
        JREQ      L:??TIM1_OC1Init_0
        LD        A, S:?b8
        CP        A, #0x30
        JREQ      L:??TIM1_OC1Init_0
        LD        A, S:?b8
        CP        A, #0x60
        JREQ      L:??TIM1_OC1Init_0
        LD        A, S:?b8
        CP        A, #0x70
        JREQ      L:??TIM1_OC1Init_0
        LDW       X, #0xa0
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC1Init_0:
        TNZ       S:?b14
        JREQ      L:??TIM1_OC1Init_1
        LD        A, S:?b14
        CP        A, #0x11
        JREQ      L:??TIM1_OC1Init_1
        LDW       X, #0xa1
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC1Init_1:
        TNZ       S:?b13
        JREQ      L:??TIM1_OC1Init_2
        LD        A, S:?b13
        CP        A, #0x44
        JREQ      L:??TIM1_OC1Init_2
        LDW       X, #0xa2
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC1Init_2:
        TNZ       S:?b12
        JREQ      L:??TIM1_OC1Init_3
        LD        A, S:?b12
        CP        A, #0x22
        JREQ      L:??TIM1_OC1Init_3
        LDW       X, #0xa3
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC1Init_3:
        TNZ       S:?b9
        JREQ      L:??TIM1_OC1Init_4
        LD        A, S:?b9
        CP        A, #0x88
        JREQ      L:??TIM1_OC1Init_4
        LDW       X, #0xa4
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC1Init_4:
        LD        A, S:?b10
        CP        A, #0x55
        JREQ      L:??TIM1_OC1Init_5
        TNZ       S:?b10
        JREQ      L:??TIM1_OC1Init_5
        LDW       X, #0xa5
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC1Init_5:
        LD        A, S:?b11
        CP        A, #0x2a
        JREQ      L:??TIM1_OC1Init_6
        TNZ       S:?b11
        JREQ      L:??TIM1_OC1Init_6
        LDW       X, #0xa6
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC1Init_6:
        LD        A, L:0x525c
        AND       A, #0xf0
        LD        L:0x525c, A
        LD        A, S:?b9
        AND       A, #0x8
        PUSH      A
        LD        A, S:?b12
        AND       A, #0x2
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        PUSH      A
        LD        A, S:?b13
        AND       A, #0x4
        PUSH      A
        LD        A, S:?b14
        AND       A, #0x1
        LD        S:?b2, A
        POP       A
        OR        A, S:?b2
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        OR        A, L:0x525c
        LD        L:0x525c, A
        LD        A, L:0x5258
        AND       A, #0x8f
        OR        A, S:?b8
        LD        L:0x5258, A
        LD        A, L:0x526f
        AND       A, #0xfc
        LD        L:0x526f, A
        LD        A, S:?b11
        AND       A, #0x2
        PUSH      A
        LD        A, S:?b10
        AND       A, #0x1
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        OR        A, L:0x526f
        LD        L:0x526f, A
        LDW       X, (0x1,SP)
        CLR       A
        RRWA      X, A
        LD        A, XL
        LD        L:0x5265, A
        LD        A, (0x2,SP)
        LD        L:0x5266, A
        ADD       SP, #0x2
        POP       S:?b14
        JPF       L:?epilogue_l2_w6

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_OC2Init:
        CALLF     L:?push_l2
        CALLF     L:?push_w6
        PUSH      S:?b14
        PUSHW     X
        LD        S:?b8, A
        MOV       S:?b14, S:?b0
        MOV       S:?b13, S:?b1
        MOV       S:?b12, S:?b2
        MOV       S:?b9, S:?b3
        MOV       S:?b10, S:?b4
        MOV       S:?b11, S:?b5
        TNZ       S:?b8
        JREQ      L:??TIM1_OC2Init_0
        LD        A, S:?b8
        CP        A, #0x10
        JREQ      L:??TIM1_OC2Init_0
        LD        A, S:?b8
        CP        A, #0x20
        JREQ      L:??TIM1_OC2Init_0
        LD        A, S:?b8
        CP        A, #0x30
        JREQ      L:??TIM1_OC2Init_0
        LD        A, S:?b8
        CP        A, #0x60
        JREQ      L:??TIM1_OC2Init_0
        LD        A, S:?b8
        CP        A, #0x70
        JREQ      L:??TIM1_OC2Init_0
        LDW       X, #0xdf
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC2Init_0:
        TNZ       S:?b14
        JREQ      L:??TIM1_OC2Init_1
        LD        A, S:?b14
        CP        A, #0x11
        JREQ      L:??TIM1_OC2Init_1
        LDW       X, #0xe0
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC2Init_1:
        TNZ       S:?b13
        JREQ      L:??TIM1_OC2Init_2
        LD        A, S:?b13
        CP        A, #0x44
        JREQ      L:??TIM1_OC2Init_2
        LDW       X, #0xe1
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC2Init_2:
        TNZ       S:?b12
        JREQ      L:??TIM1_OC2Init_3
        LD        A, S:?b12
        CP        A, #0x22
        JREQ      L:??TIM1_OC2Init_3
        LDW       X, #0xe2
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC2Init_3:
        TNZ       S:?b9
        JREQ      L:??TIM1_OC2Init_4
        LD        A, S:?b9
        CP        A, #0x88
        JREQ      L:??TIM1_OC2Init_4
        LDW       X, #0xe3
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC2Init_4:
        LD        A, S:?b10
        CP        A, #0x55
        JREQ      L:??TIM1_OC2Init_5
        TNZ       S:?b10
        JREQ      L:??TIM1_OC2Init_5
        LDW       X, #0xe4
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC2Init_5:
        LD        A, S:?b11
        CP        A, #0x2a
        JREQ      L:??TIM1_OC2Init_6
        TNZ       S:?b11
        JREQ      L:??TIM1_OC2Init_6
        LDW       X, #0xe5
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC2Init_6:
        LD        A, L:0x525c
        AND       A, #0xf
        LD        L:0x525c, A
        LD        A, S:?b13
        AND       A, #0x40
        PUSH      A
        LD        A, S:?b14
        AND       A, #0x10
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        PUSH      A
        LD        A, S:?b12
        AND       A, #0x20
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        S:?b0, A
        LD        A, S:?b9
        AND       A, #0x80
        OR        A, S:?b0
        OR        A, L:0x525c
        LD        L:0x525c, A
        LD        A, L:0x5259
        AND       A, #0x8f
        OR        A, S:?b8
        LD        L:0x5259, A
        LD        A, L:0x526f
        AND       A, #0xf3
        LD        L:0x526f, A
        LD        A, S:?b11
        AND       A, #0x8
        PUSH      A
        LD        A, S:?b10
        AND       A, #0x4
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        OR        A, L:0x526f
        LD        L:0x526f, A
        LDW       X, (0x1,SP)
        CLR       A
        RRWA      X, A
        LD        A, XL
        LD        L:0x5267, A
        LD        A, (0x2,SP)
        LD        L:0x5268, A
        ADD       SP, #0x2
        POP       S:?b14
        JPF       L:?epilogue_l2_w6

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_OC3Init:
        CALLF     L:?push_l2
        CALLF     L:?push_w6
        PUSH      S:?b14
        PUSHW     X
        LD        S:?b8, A
        MOV       S:?b14, S:?b0
        MOV       S:?b13, S:?b1
        MOV       S:?b12, S:?b2
        MOV       S:?b9, S:?b3
        MOV       S:?b10, S:?b4
        MOV       S:?b11, S:?b5
        TNZ       S:?b8
        JREQ      L:??TIM1_OC3Init_0
        LD        A, S:?b8
        CP        A, #0x10
        JREQ      L:??TIM1_OC3Init_0
        LD        A, S:?b8
        CP        A, #0x20
        JREQ      L:??TIM1_OC3Init_0
        LD        A, S:?b8
        CP        A, #0x30
        JREQ      L:??TIM1_OC3Init_0
        LD        A, S:?b8
        CP        A, #0x60
        JREQ      L:??TIM1_OC3Init_0
        LD        A, S:?b8
        CP        A, #0x70
        JREQ      L:??TIM1_OC3Init_0
        LDW       X, #0x120
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC3Init_0:
        TNZ       S:?b14
        JREQ      L:??TIM1_OC3Init_1
        LD        A, S:?b14
        CP        A, #0x11
        JREQ      L:??TIM1_OC3Init_1
        LDW       X, #0x121
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC3Init_1:
        TNZ       S:?b13
        JREQ      L:??TIM1_OC3Init_2
        LD        A, S:?b13
        CP        A, #0x44
        JREQ      L:??TIM1_OC3Init_2
        LDW       X, #0x122
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC3Init_2:
        TNZ       S:?b12
        JREQ      L:??TIM1_OC3Init_3
        LD        A, S:?b12
        CP        A, #0x22
        JREQ      L:??TIM1_OC3Init_3
        LDW       X, #0x123
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC3Init_3:
        TNZ       S:?b9
        JREQ      L:??TIM1_OC3Init_4
        LD        A, S:?b9
        CP        A, #0x88
        JREQ      L:??TIM1_OC3Init_4
        LDW       X, #0x124
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC3Init_4:
        LD        A, S:?b10
        CP        A, #0x55
        JREQ      L:??TIM1_OC3Init_5
        TNZ       S:?b10
        JREQ      L:??TIM1_OC3Init_5
        LDW       X, #0x125
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC3Init_5:
        LD        A, S:?b11
        CP        A, #0x2a
        JREQ      L:??TIM1_OC3Init_6
        TNZ       S:?b11
        JREQ      L:??TIM1_OC3Init_6
        LDW       X, #0x126
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC3Init_6:
        LD        A, L:0x525d
        AND       A, #0xf0
        LD        L:0x525d, A
        LD        A, S:?b9
        AND       A, #0x8
        PUSH      A
        LD        A, S:?b12
        AND       A, #0x2
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        PUSH      A
        LD        A, S:?b13
        AND       A, #0x4
        PUSH      A
        LD        A, S:?b14
        AND       A, #0x1
        LD        S:?b2, A
        POP       A
        OR        A, S:?b2
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        OR        A, L:0x525d
        LD        L:0x525d, A
        LD        A, L:0x525a
        AND       A, #0x8f
        OR        A, S:?b8
        LD        L:0x525a, A
        LD        A, L:0x526f
        AND       A, #0xcf
        LD        L:0x526f, A
        LD        A, S:?b11
        AND       A, #0x20
        PUSH      A
        LD        A, S:?b10
        AND       A, #0x10
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        OR        A, L:0x526f
        LD        L:0x526f, A
        LDW       X, (0x1,SP)
        CLR       A
        RRWA      X, A
        LD        A, XL
        LD        L:0x5269, A
        LD        A, (0x2,SP)
        LD        L:0x526a, A
        ADD       SP, #0x2
        POP       S:?b14
        JPF       L:?epilogue_l2_w6

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_OC4Init:
        CALLF     L:?push_l2
        CALLF     L:?push_w6
        LD        S:?b8, A
        MOV       S:?b9, S:?b0
        LDW       S:?w6, X
        MOV       S:?b10, S:?b1
        MOV       S:?b11, S:?b2
        TNZ       S:?b8
        JREQ      L:??TIM1_OC4Init_0
        LD        A, S:?b8
        CP        A, #0x10
        JREQ      L:??TIM1_OC4Init_0
        LD        A, S:?b8
        CP        A, #0x20
        JREQ      L:??TIM1_OC4Init_0
        LD        A, S:?b8
        CP        A, #0x30
        JREQ      L:??TIM1_OC4Init_0
        LD        A, S:?b8
        CP        A, #0x60
        JREQ      L:??TIM1_OC4Init_0
        LD        A, S:?b8
        CP        A, #0x70
        JREQ      L:??TIM1_OC4Init_0
        LDW       X, #0x157
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC4Init_0:
        TNZ       S:?b9
        JREQ      L:??TIM1_OC4Init_1
        LD        A, S:?b9
        CP        A, #0x11
        JREQ      L:??TIM1_OC4Init_1
        LDW       X, #0x158
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC4Init_1:
        TNZ       S:?b10
        JREQ      L:??TIM1_OC4Init_2
        LD        A, S:?b10
        CP        A, #0x22
        JREQ      L:??TIM1_OC4Init_2
        LDW       X, #0x159
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC4Init_2:
        LD        A, S:?b11
        CP        A, #0x55
        JREQ      L:??TIM1_OC4Init_3
        TNZ       S:?b11
        JREQ      L:??TIM1_OC4Init_3
        LDW       X, #0x15a
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC4Init_3:
        LD        A, L:0x525d
        AND       A, #0xcf
        LD        L:0x525d, A
        LD        A, S:?b10
        AND       A, #0x20
        PUSH      A
        LD        A, S:?b9
        AND       A, #0x10
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        OR        A, L:0x525d
        LD        L:0x525d, A
        LD        A, L:0x525b
        AND       A, #0x8f
        OR        A, S:?b8
        LD        L:0x525b, A
        TNZ       S:?b11
        JREQ      L:??TIM1_OC4Init_4
        LD        A, L:0x526f
        OR        A, #0xdf
        LD        L:0x526f, A
        JRA       L:??TIM1_OC4Init_5
??TIM1_OC4Init_4:
        BRES      L:0x526f, #0x6
??TIM1_OC4Init_5:
        LDW       X, S:?w6
        CLR       A
        RRWA      X, A
        LD        A, XL
        LD        L:0x526b, A
        LD        A, S:?b13
        LD        L:0x526c, A
        JPF       L:?epilogue_l2_w6

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_BDTRConfig:
        CALLF     L:?push_l2
        CALLF     L:?push_w6
        LD        S:?b13, A
        MOV       S:?b8, S:?b0
        MOV       S:?b9, S:?b1
        MOV       S:?b12, S:?b2
        MOV       S:?b10, S:?b3
        MOV       S:?b11, S:?b4
        LD        A, S:?b13
        CP        A, #0x4
        JREQ      L:??TIM1_BDTRConfig_0
        TNZ       S:?b13
        JREQ      L:??TIM1_BDTRConfig_0
        LDW       X, #0x18b
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_BDTRConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_BDTRConfig_1
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_BDTRConfig_1
        LD        A, S:?b8
        CP        A, #0x2
        JREQ      L:??TIM1_BDTRConfig_1
        LD        A, S:?b8
        CP        A, #0x3
        JREQ      L:??TIM1_BDTRConfig_1
        LDW       X, #0x18c
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_BDTRConfig_1:
        LD        A, S:?b12
        CP        A, #0x10
        JREQ      L:??TIM1_BDTRConfig_2
        TNZ       S:?b12
        JREQ      L:??TIM1_BDTRConfig_2
        LDW       X, #0x18d
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_BDTRConfig_2:
        TNZ       S:?b10
        JREQ      L:??TIM1_BDTRConfig_3
        LD        A, S:?b10
        CP        A, #0x20
        JREQ      L:??TIM1_BDTRConfig_3
        LDW       X, #0x18e
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_BDTRConfig_3:
        LD        A, S:?b11
        CP        A, #0x40
        JREQ      L:??TIM1_BDTRConfig_4
        TNZ       S:?b11
        JREQ      L:??TIM1_BDTRConfig_4
        LDW       X, #0x18f
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_BDTRConfig_4:
        LD        A, S:?b9
        LD        L:0x526e, A
        LD        A, S:?b10
        OR        A, S:?b12
        OR        A, S:?b11
        PUSH      A
        LD        A, S:?b8
        OR        A, S:?b13
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        L:0x526d, A
        JPF       L:?epilogue_l2_w6

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_ICInit:
        CALLF     L:?push_l2
        PUSH      S:?b12
        LD        S:?b12, A
        MOV       S:?b8, S:?b0
        MOV       S:?b9, S:?b1
        MOV       S:?b10, S:?b2
        MOV       S:?b11, S:?b3
        TNZ       S:?b12
        JREQ      L:??TIM1_ICInit_0
        LD        A, S:?b12
        CP        A, #0x1
        JREQ      L:??TIM1_ICInit_0
        LD        A, S:?b12
        CP        A, #0x2
        JREQ      L:??TIM1_ICInit_0
        LD        A, S:?b12
        CP        A, #0x3
        JREQ      L:??TIM1_ICInit_0
        LDW       X, #0x1af
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_ICInit_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_ICInit_1
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_ICInit_1
        LDW       X, #0x1b0
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_ICInit_1:
        LD        A, S:?b9
        CP        A, #0x1
        JREQ      L:??TIM1_ICInit_2
        LD        A, S:?b9
        CP        A, #0x2
        JREQ      L:??TIM1_ICInit_2
        LD        A, S:?b9
        CP        A, #0x3
        JREQ      L:??TIM1_ICInit_2
        LDW       X, #0x1b1
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_ICInit_2:
        TNZ       S:?b10
        JREQ      L:??TIM1_ICInit_3
        LD        A, S:?b10
        CP        A, #0x4
        JREQ      L:??TIM1_ICInit_3
        LD        A, S:?b10
        CP        A, #0x8
        JREQ      L:??TIM1_ICInit_3
        LD        A, S:?b10
        CP        A, #0xc
        JREQ      L:??TIM1_ICInit_3
        LDW       X, #0x1b2
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_ICInit_3:
        LD        A, S:?b11
        CP        A, #0x10
        JRC       L:??TIM1_ICInit_4
        LDW       X, #0x1b3
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_ICInit_4:
        TNZ       S:?b12
        JRNE      L:??TIM1_ICInit_5
        MOV       S:?b1, S:?b11
        MOV       S:?b0, S:?b9
        LD        A, S:?b8
        CALLF     TI1_Config
        LD        A, S:?b10
        CALLF     TIM1_SetIC1Prescaler
        JRA       L:??TIM1_ICInit_6
??TIM1_ICInit_5:
        LD        A, S:?b12
        CP        A, #0x1
        JRNE      L:??TIM1_ICInit_7
        MOV       S:?b1, S:?b11
        MOV       S:?b0, S:?b9
        LD        A, S:?b8
        CALLF     TI2_Config
        LD        A, S:?b10
        CALLF     TIM1_SetIC2Prescaler
        JRA       L:??TIM1_ICInit_6
??TIM1_ICInit_7:
        LD        A, S:?b12
        CP        A, #0x2
        JRNE      L:??TIM1_ICInit_8
        MOV       S:?b1, S:?b11
        MOV       S:?b0, S:?b9
        LD        A, S:?b8
        CALLF     TI3_Config
        LD        A, S:?b10
        CALLF     TIM1_SetIC3Prescaler
        JRA       L:??TIM1_ICInit_6
??TIM1_ICInit_8:
        MOV       S:?b1, S:?b11
        MOV       S:?b0, S:?b9
        LD        A, S:?b8
        CALLF     TI4_Config
        LD        A, S:?b10
        CALLF     TIM1_SetIC4Prescaler
??TIM1_ICInit_6:
        POP       S:?b12
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_PWMIConfig:
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
        JREQ      L:??TIM1_PWMIConfig_0
        LD        A, S:?b12
        CP        A, #0x1
        JREQ      L:??TIM1_PWMIConfig_0
        LDW       X, #0x1f4
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_PWMIConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_PWMIConfig_1
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_PWMIConfig_1
        LDW       X, #0x1f5
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_PWMIConfig_1:
        LD        A, S:?b9
        CP        A, #0x1
        JREQ      L:??TIM1_PWMIConfig_2
        LD        A, S:?b9
        CP        A, #0x2
        JREQ      L:??TIM1_PWMIConfig_2
        LD        A, S:?b9
        CP        A, #0x3
        JREQ      L:??TIM1_PWMIConfig_2
        LDW       X, #0x1f6
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_PWMIConfig_2:
        TNZ       S:?b10
        JREQ      L:??TIM1_PWMIConfig_3
        LD        A, S:?b10
        CP        A, #0x4
        JREQ      L:??TIM1_PWMIConfig_3
        LD        A, S:?b10
        CP        A, #0x8
        JREQ      L:??TIM1_PWMIConfig_3
        LD        A, S:?b10
        CP        A, #0xc
        JREQ      L:??TIM1_PWMIConfig_3
        LDW       X, #0x1f7
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_PWMIConfig_3:
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_PWMIConfig_4
        MOV       S:?b14, #0x1
        JRA       L:??TIM1_PWMIConfig_5
??TIM1_PWMIConfig_4:
        CLR       S:?b14
??TIM1_PWMIConfig_5:
        LD        A, S:?b9
        CP        A, #0x1
        JRNE      L:??TIM1_PWMIConfig_6
        MOV       S:?b13, #0x2
        JRA       L:??TIM1_PWMIConfig_7
??TIM1_PWMIConfig_6:
        MOV       S:?b13, #0x1
??TIM1_PWMIConfig_7:
        TNZ       S:?b12
        JRNE      L:??TIM1_PWMIConfig_8
        MOV       S:?b1, S:?b11
        MOV       S:?b0, S:?b9
        LD        A, S:?b8
        CALLF     TI1_Config
        LD        A, S:?b10
        CALLF     TIM1_SetIC1Prescaler
        MOV       S:?b1, S:?b11
        MOV       S:?b0, S:?b13
        LD        A, S:?b14
        CALLF     TI2_Config
        LD        A, S:?b10
        CALLF     TIM1_SetIC2Prescaler
        JRA       L:??TIM1_PWMIConfig_9
??TIM1_PWMIConfig_8:
        MOV       S:?b1, S:?b11
        MOV       S:?b0, S:?b9
        LD        A, S:?b8
        CALLF     TI2_Config
        LD        A, S:?b10
        CALLF     TIM1_SetIC2Prescaler
        MOV       S:?b1, S:?b11
        MOV       S:?b0, S:?b13
        LD        A, S:?b14
        CALLF     TI1_Config
        LD        A, S:?b10
        CALLF     TIM1_SetIC1Prescaler
??TIM1_PWMIConfig_9:
        POP       S:?b14
        JPF       L:?epilogue_l2_w6

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_Cmd:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_Cmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_Cmd_0
        LDW       X, #0x236
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_Cmd_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_Cmd_1
        BSET      L:0x5250, #0x0
        JRA       L:??TIM1_Cmd_2
??TIM1_Cmd_1:
        BRES      L:0x5250, #0x0
??TIM1_Cmd_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_CtrlPWMOutputs:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_CtrlPWMOutputs_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_CtrlPWMOutputs_0
        LDW       X, #0x24c
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_CtrlPWMOutputs_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_CtrlPWMOutputs_1
        BSET      L:0x526d, #0x7
        JRA       L:??TIM1_CtrlPWMOutputs_2
??TIM1_CtrlPWMOutputs_1:
        BRES      L:0x526d, #0x7
??TIM1_CtrlPWMOutputs_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_ITConfig:
        CALLF     L:?push_w4
        LD        S:?b8, A
        MOV       S:?b9, S:?b0
        TNZ       S:?b8
        JRNE      L:??TIM1_ITConfig_0
        LDW       X, #0x26e
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_ITConfig_0:
        TNZ       S:?b9
        JREQ      L:??TIM1_ITConfig_1
        LD        A, S:?b9
        CP        A, #0x1
        JREQ      L:??TIM1_ITConfig_1
        LDW       X, #0x26f
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_ITConfig_1:
        TNZ       S:?b9
        JREQ      L:??TIM1_ITConfig_2
        LD        A, S:?b8
        OR        A, L:0x5254
        LD        L:0x5254, A
        JPF       L:?epilogue_w4
??TIM1_ITConfig_2:
        CPL       S:?b8
        LD        A, S:?b8
        AND       A, L:0x5254
        LD        L:0x5254, A
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_InternalClockConfig:
        LD        A, L:0x5252
        AND       A, #0xf8
        LD        L:0x5252, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_ETRClockMode1Config:
        CALLF     L:?push_w4
        PUSH      S:?b10
        LD        S:?b8, A
        MOV       S:?b9, S:?b0
        MOV       S:?b10, S:?b1
        TNZ       S:?b8
        JREQ      L:??TIM1_ETRClockMode1Config_0
        LD        A, S:?b8
        CP        A, #0x10
        JREQ      L:??TIM1_ETRClockMode1Config_0
        LD        A, S:?b8
        CP        A, #0x20
        JREQ      L:??TIM1_ETRClockMode1Config_0
        LD        A, S:?b8
        CP        A, #0x30
        JREQ      L:??TIM1_ETRClockMode1Config_0
        LDW       X, #0x29d
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_ETRClockMode1Config_0:
        LD        A, S:?b9
        CP        A, #0x80
        JREQ      L:??TIM1_ETRClockMode1Config_1
        TNZ       S:?b9
        JREQ      L:??TIM1_ETRClockMode1Config_1
        LDW       X, #0x29e
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_ETRClockMode1Config_1:
        MOV       S:?b1, S:?b10
        MOV       S:?b0, S:?b9
        LD        A, S:?b8
        CALLF     TIM1_ETRConfig
        LD        A, L:0x5252
        OR        A, #0x77
        LD        L:0x5252, A
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_ETRClockMode2Config:
        CALLF     L:?push_w4
        PUSH      S:?b10
        LD        S:?b8, A
        MOV       S:?b9, S:?b0
        MOV       S:?b10, S:?b1
        TNZ       S:?b8
        JREQ      L:??TIM1_ETRClockMode2Config_0
        LD        A, S:?b8
        CP        A, #0x10
        JREQ      L:??TIM1_ETRClockMode2Config_0
        LD        A, S:?b8
        CP        A, #0x20
        JREQ      L:??TIM1_ETRClockMode2Config_0
        LD        A, S:?b8
        CP        A, #0x30
        JREQ      L:??TIM1_ETRClockMode2Config_0
        LDW       X, #0x2bd
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_ETRClockMode2Config_0:
        LD        A, S:?b9
        CP        A, #0x80
        JREQ      L:??TIM1_ETRClockMode2Config_1
        TNZ       S:?b9
        JREQ      L:??TIM1_ETRClockMode2Config_1
        LDW       X, #0x2be
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_ETRClockMode2Config_1:
        MOV       S:?b1, S:?b10
        MOV       S:?b0, S:?b9
        LD        A, S:?b8
        CALLF     TIM1_ETRConfig
        BSET      L:0x5253, #0x6
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_ETRConfig:
        CALLF     L:?push_w4
        PUSH      S:?b10
        LD        S:?b9, A
        MOV       S:?b8, S:?b0
        MOV       S:?b10, S:?b1
        LD        A, S:?b10
        CP        A, #0x10
        JRC       L:??TIM1_ETRConfig_0
        LDW       X, #0x2dc
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_ETRConfig_0:
        LD        A, S:?b8
        OR        A, S:?b9
        OR        A, S:?b10
        OR        A, L:0x5253
        LD        L:0x5253, A
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_TIxExternalClockConfig:
        CALLF     L:?push_w4
        PUSH      S:?b10
        LD        S:?b8, A
        MOV       S:?b9, S:?b0
        MOV       S:?b10, S:?b1
        LD        A, S:?b8
        CP        A, #0x40
        JREQ      L:??TIM1_TIxExternalClockConfig_0
        LD        A, S:?b8
        CP        A, #0x60
        JREQ      L:??TIM1_TIxExternalClockConfig_0
        LD        A, S:?b8
        CP        A, #0x50
        JREQ      L:??TIM1_TIxExternalClockConfig_0
        LDW       X, #0x2f6
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_TIxExternalClockConfig_0:
        TNZ       S:?b9
        JREQ      L:??TIM1_TIxExternalClockConfig_1
        LD        A, S:?b9
        CP        A, #0x1
        JREQ      L:??TIM1_TIxExternalClockConfig_1
        LDW       X, #0x2f7
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_TIxExternalClockConfig_1:
        LD        A, S:?b10
        CP        A, #0x10
        JRC       L:??TIM1_TIxExternalClockConfig_2
        LDW       X, #0x2f8
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_TIxExternalClockConfig_2:
        LD        A, S:?b8
        CP        A, #0x60
        JRNE      L:??TIM1_TIxExternalClockConfig_3
        MOV       S:?b1, S:?b10
        MOV       S:?b0, #0x1
        LD        A, S:?b9
        CALLF     TI2_Config
        JRA       L:??TIM1_TIxExternalClockConfig_4
??TIM1_TIxExternalClockConfig_3:
        MOV       S:?b1, S:?b10
        MOV       S:?b0, #0x1
        LD        A, S:?b9
        CALLF     TI1_Config
??TIM1_TIxExternalClockConfig_4:
        LD        A, S:?b8
        CALLF     TIM1_SelectInputTrigger
        LD        A, L:0x5252
        OR        A, #0x7
        LD        L:0x5252, A
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_SelectInputTrigger:
        PUSH      S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
        CP        A, #0x40
        JREQ      L:??TIM1_SelectInputTrigger_0
        LD        A, S:?b8
        CP        A, #0x50
        JREQ      L:??TIM1_SelectInputTrigger_0
        LD        A, S:?b8
        CP        A, #0x60
        JREQ      L:??TIM1_SelectInputTrigger_0
        LD        A, S:?b8
        CP        A, #0x70
        JREQ      L:??TIM1_SelectInputTrigger_0
        LD        A, S:?b8
        CP        A, #0x30
        JREQ      L:??TIM1_SelectInputTrigger_0
        TNZ       S:?b8
        JREQ      L:??TIM1_SelectInputTrigger_0
        LDW       X, #0x318
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_SelectInputTrigger_0:
        LD        A, L:0x5252
        AND       A, #0x8f
        OR        A, S:?b8
        LD        L:0x5252, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_UpdateDisableConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_UpdateDisableConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_UpdateDisableConfig_0
        LDW       X, #0x329
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_UpdateDisableConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_UpdateDisableConfig_1
        BSET      L:0x5250, #0x1
        JRA       L:??TIM1_UpdateDisableConfig_2
??TIM1_UpdateDisableConfig_1:
        BRES      L:0x5250, #0x1
??TIM1_UpdateDisableConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_UpdateRequestConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_UpdateRequestConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_UpdateRequestConfig_0
        LDW       X, #0x341
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_UpdateRequestConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_UpdateRequestConfig_1
        BSET      L:0x5250, #0x2
        JRA       L:??TIM1_UpdateRequestConfig_2
??TIM1_UpdateRequestConfig_1:
        BRES      L:0x5250, #0x2
??TIM1_UpdateRequestConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_SelectHallSensor:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_SelectHallSensor_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_SelectHallSensor_0
        LDW       X, #0x358
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_SelectHallSensor_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_SelectHallSensor_1
        BSET      L:0x5251, #0x7
        JRA       L:??TIM1_SelectHallSensor_2
??TIM1_SelectHallSensor_1:
        BRES      L:0x5251, #0x7
??TIM1_SelectHallSensor_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_SelectOnePulseMode:
        PUSH      S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_SelectOnePulseMode_0
        TNZ       S:?b8
        JREQ      L:??TIM1_SelectOnePulseMode_0
        LDW       X, #0x371
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_SelectOnePulseMode_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_SelectOnePulseMode_1
        BSET      L:0x5250, #0x3
        JRA       L:??TIM1_SelectOnePulseMode_2
??TIM1_SelectOnePulseMode_1:
        BRES      L:0x5250, #0x3
??TIM1_SelectOnePulseMode_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_SelectOutputTrigger:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_SelectOutputTrigger_0
        LD        A, S:?b8
        CP        A, #0x10
        JREQ      L:??TIM1_SelectOutputTrigger_0
        LD        A, S:?b8
        CP        A, #0x20
        JREQ      L:??TIM1_SelectOutputTrigger_0
        LD        A, S:?b8
        CP        A, #0x30
        JREQ      L:??TIM1_SelectOutputTrigger_0
        LD        A, S:?b8
        CP        A, #0x40
        JREQ      L:??TIM1_SelectOutputTrigger_0
        LD        A, S:?b8
        CP        A, #0x50
        JREQ      L:??TIM1_SelectOutputTrigger_0
        LD        A, S:?b8
        CP        A, #0x60
        JREQ      L:??TIM1_SelectOutputTrigger_0
        LDW       X, #0x390
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_SelectOutputTrigger_0:
        LD        A, L:0x5251
        AND       A, #0x8f
        OR        A, S:?b8
        LD        L:0x5251, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_SelectSlaveMode:
        PUSH      S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
        CP        A, #0x4
        JREQ      L:??TIM1_SelectSlaveMode_0
        LD        A, S:?b8
        CP        A, #0x5
        JREQ      L:??TIM1_SelectSlaveMode_0
        LD        A, S:?b8
        CP        A, #0x6
        JREQ      L:??TIM1_SelectSlaveMode_0
        LD        A, S:?b8
        CP        A, #0x7
        JREQ      L:??TIM1_SelectSlaveMode_0
        LDW       X, #0x3a5
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_SelectSlaveMode_0:
        LD        A, L:0x5252
        AND       A, #0xf8
        OR        A, S:?b8
        LD        L:0x5252, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_SelectMasterSlaveMode:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_SelectMasterSlaveMode_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_SelectMasterSlaveMode_0
        LDW       X, #0x3b6
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_SelectMasterSlaveMode_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_SelectMasterSlaveMode_1
        BSET      L:0x5252, #0x7
        JRA       L:??TIM1_SelectMasterSlaveMode_2
??TIM1_SelectMasterSlaveMode_1:
        BRES      L:0x5252, #0x7
??TIM1_SelectMasterSlaveMode_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_EncoderInterfaceConfig:
        CALLF     L:?push_w4
        PUSH      S:?b10
        LD        S:?b10, A
        MOV       S:?b8, S:?b0
        MOV       S:?b9, S:?b1
        LD        A, S:?b10
        CP        A, #0x1
        JREQ      L:??TIM1_EncoderInterfaceConfig_0
        LD        A, S:?b10
        CP        A, #0x2
        JREQ      L:??TIM1_EncoderInterfaceConfig_0
        LD        A, S:?b10
        CP        A, #0x3
        JREQ      L:??TIM1_EncoderInterfaceConfig_0
        LDW       X, #0x3de
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_EncoderInterfaceConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_EncoderInterfaceConfig_1
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_EncoderInterfaceConfig_1
        LDW       X, #0x3df
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_EncoderInterfaceConfig_1:
        TNZ       S:?b9
        JREQ      L:??TIM1_EncoderInterfaceConfig_2
        LD        A, S:?b9
        CP        A, #0x1
        JREQ      L:??TIM1_EncoderInterfaceConfig_2
        LDW       X, #0x3e0
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_EncoderInterfaceConfig_2:
        TNZ       S:?b8
        JREQ      L:??TIM1_EncoderInterfaceConfig_3
        BSET      L:0x525c, #0x1
        JRA       L:??TIM1_EncoderInterfaceConfig_4
??TIM1_EncoderInterfaceConfig_3:
        BRES      L:0x525c, #0x1
??TIM1_EncoderInterfaceConfig_4:
        TNZ       S:?b9
        JREQ      L:??TIM1_EncoderInterfaceConfig_5
        BSET      L:0x525c, #0x5
        JRA       L:??TIM1_EncoderInterfaceConfig_6
??TIM1_EncoderInterfaceConfig_5:
        BRES      L:0x525c, #0x5
??TIM1_EncoderInterfaceConfig_6:
        LD        A, L:0x5252
        AND       A, #0xf0
        OR        A, S:?b10
        LD        L:0x5252, A
        LD        A, L:0x5258
        AND       A, #0xfc
        OR        A, #0x1
        LD        L:0x5258, A
        LD        A, L:0x5259
        AND       A, #0xfc
        OR        A, #0x1
        LD        L:0x5259, A
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_PrescalerConfig:
        CALLF     L:?push_w5
        PUSH      S:?b8
        LDW       S:?w5, X
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_PrescalerConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_PrescalerConfig_0
        LDW       X, #0x40f
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_PrescalerConfig_0:
        LDW       X, S:?w5
        CLR       A
        RRWA      X, A
        LD        A, XL
        LD        L:0x5260, A
        LD        A, S:?b11
        LD        L:0x5261, A
        LD        A, S:?b8
        LD        L:0x5257, A
        POP       S:?b8
        CALLF     L:?pop_w5
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_CounterModeConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_CounterModeConfig_0
        LD        A, S:?b8
        CP        A, #0x10
        JREQ      L:??TIM1_CounterModeConfig_0
        LD        A, S:?b8
        CP        A, #0x20
        JREQ      L:??TIM1_CounterModeConfig_0
        LD        A, S:?b8
        CP        A, #0x40
        JREQ      L:??TIM1_CounterModeConfig_0
        LD        A, S:?b8
        CP        A, #0x60
        JREQ      L:??TIM1_CounterModeConfig_0
        LDW       X, #0x428
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_CounterModeConfig_0:
        LD        A, L:0x5250
        AND       A, #0x8f
        OR        A, S:?b8
        LD        L:0x5250, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_ForcedOC1Config:
        PUSH      S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
        CP        A, #0x50
        JREQ      L:??TIM1_ForcedOC1Config_0
        LD        A, S:?b8
        CP        A, #0x40
        JREQ      L:??TIM1_ForcedOC1Config_0
        LDW       X, #0x43c
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_ForcedOC1Config_0:
        LD        A, L:0x5258
        AND       A, #0x8f
        OR        A, S:?b8
        LD        L:0x5258, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_ForcedOC2Config:
        PUSH      S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
        CP        A, #0x50
        JREQ      L:??TIM1_ForcedOC2Config_0
        LD        A, S:?b8
        CP        A, #0x40
        JREQ      L:??TIM1_ForcedOC2Config_0
        LDW       X, #0x44f
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_ForcedOC2Config_0:
        LD        A, L:0x5259
        AND       A, #0x8f
        OR        A, S:?b8
        LD        L:0x5259, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_ForcedOC3Config:
        PUSH      S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
        CP        A, #0x50
        JREQ      L:??TIM1_ForcedOC3Config_0
        LD        A, S:?b8
        CP        A, #0x40
        JREQ      L:??TIM1_ForcedOC3Config_0
        LDW       X, #0x463
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_ForcedOC3Config_0:
        LD        A, L:0x525a
        AND       A, #0x8f
        OR        A, S:?b8
        LD        L:0x525a, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_ForcedOC4Config:
        PUSH      S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
        CP        A, #0x50
        JREQ      L:??TIM1_ForcedOC4Config_0
        LD        A, S:?b8
        CP        A, #0x40
        JREQ      L:??TIM1_ForcedOC4Config_0
        LDW       X, #0x477
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_ForcedOC4Config_0:
        LD        A, L:0x525b
        AND       A, #0x8f
        OR        A, S:?b8
        LD        L:0x525b, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_ARRPreloadConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_ARRPreloadConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_ARRPreloadConfig_0
        LDW       X, #0x488
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_ARRPreloadConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_ARRPreloadConfig_1
        BSET      L:0x5250, #0x7
        JRA       L:??TIM1_ARRPreloadConfig_2
??TIM1_ARRPreloadConfig_1:
        BRES      L:0x5250, #0x7
??TIM1_ARRPreloadConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_SelectCOM:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_SelectCOM_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_SelectCOM_0
        LDW       X, #0x49f
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_SelectCOM_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_SelectCOM_1
        BSET      L:0x5251, #0x2
        JRA       L:??TIM1_SelectCOM_2
??TIM1_SelectCOM_1:
        BRES      L:0x5251, #0x2
??TIM1_SelectCOM_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_CCPreloadControl:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_CCPreloadControl_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_CCPreloadControl_0
        LDW       X, #0x4b5
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_CCPreloadControl_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_CCPreloadControl_1
        BSET      L:0x5251, #0x0
        JRA       L:??TIM1_CCPreloadControl_2
??TIM1_CCPreloadControl_1:
        BRES      L:0x5251, #0x0
??TIM1_CCPreloadControl_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_OC1PreloadConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_OC1PreloadConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_OC1PreloadConfig_0
        LDW       X, #0x4cc
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC1PreloadConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_OC1PreloadConfig_1
        BSET      L:0x5258, #0x3
        JRA       L:??TIM1_OC1PreloadConfig_2
??TIM1_OC1PreloadConfig_1:
        BRES      L:0x5258, #0x3
??TIM1_OC1PreloadConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_OC2PreloadConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_OC2PreloadConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_OC2PreloadConfig_0
        LDW       X, #0x4e3
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC2PreloadConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_OC2PreloadConfig_1
        BSET      L:0x5259, #0x3
        JRA       L:??TIM1_OC2PreloadConfig_2
??TIM1_OC2PreloadConfig_1:
        BRES      L:0x5259, #0x3
??TIM1_OC2PreloadConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_OC3PreloadConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_OC3PreloadConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_OC3PreloadConfig_0
        LDW       X, #0x4fa
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC3PreloadConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_OC3PreloadConfig_1
        BSET      L:0x525a, #0x3
        JRA       L:??TIM1_OC3PreloadConfig_2
??TIM1_OC3PreloadConfig_1:
        BRES      L:0x525a, #0x3
??TIM1_OC3PreloadConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_OC4PreloadConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_OC4PreloadConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_OC4PreloadConfig_0
        LDW       X, #0x512
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC4PreloadConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_OC4PreloadConfig_1
        BSET      L:0x525b, #0x3
        JRA       L:??TIM1_OC4PreloadConfig_2
??TIM1_OC4PreloadConfig_1:
        BRES      L:0x525b, #0x3
??TIM1_OC4PreloadConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_OC1FastConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_OC1FastConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_OC1FastConfig_0
        LDW       X, #0x528
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC1FastConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_OC1FastConfig_1
        BSET      L:0x5258, #0x2
        JRA       L:??TIM1_OC1FastConfig_2
??TIM1_OC1FastConfig_1:
        BRES      L:0x5258, #0x2
??TIM1_OC1FastConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_OC2FastConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_OC2FastConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_OC2FastConfig_0
        LDW       X, #0x540
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC2FastConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_OC2FastConfig_1
        BSET      L:0x5259, #0x2
        JRA       L:??TIM1_OC2FastConfig_2
??TIM1_OC2FastConfig_1:
        BRES      L:0x5259, #0x2
??TIM1_OC2FastConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_OC3FastConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_OC3FastConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_OC3FastConfig_0
        LDW       X, #0x557
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC3FastConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_OC3FastConfig_1
        BSET      L:0x525a, #0x2
        JRA       L:??TIM1_OC3FastConfig_2
??TIM1_OC3FastConfig_1:
        BRES      L:0x525a, #0x2
??TIM1_OC3FastConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_OC4FastConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_OC4FastConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_OC4FastConfig_0
        LDW       X, #0x56e
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC4FastConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_OC4FastConfig_1
        BSET      L:0x525b, #0x2
        JRA       L:??TIM1_OC4FastConfig_2
??TIM1_OC4FastConfig_1:
        BRES      L:0x525b, #0x2
??TIM1_OC4FastConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_GenerateEvent:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JRNE      L:??TIM1_GenerateEvent_0
        LDW       X, #0x58d
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_GenerateEvent_0:
        LD        A, S:?b8
        LD        L:0x5257, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_OC1PolarityConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_OC1PolarityConfig_0
        LD        A, S:?b8
        CP        A, #0x22
        JREQ      L:??TIM1_OC1PolarityConfig_0
        LDW       X, #0x59f
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC1PolarityConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_OC1PolarityConfig_1
        BSET      L:0x525c, #0x1
        JRA       L:??TIM1_OC1PolarityConfig_2
??TIM1_OC1PolarityConfig_1:
        BRES      L:0x525c, #0x1
??TIM1_OC1PolarityConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_OC1NPolarityConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_OC1NPolarityConfig_0
        LD        A, S:?b8
        CP        A, #0x88
        JREQ      L:??TIM1_OC1NPolarityConfig_0
        LDW       X, #0x5b8
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC1NPolarityConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_OC1NPolarityConfig_1
        BSET      L:0x525c, #0x3
        JRA       L:??TIM1_OC1NPolarityConfig_2
??TIM1_OC1NPolarityConfig_1:
        BRES      L:0x525c, #0x3
??TIM1_OC1NPolarityConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_OC2PolarityConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_OC2PolarityConfig_0
        LD        A, S:?b8
        CP        A, #0x22
        JREQ      L:??TIM1_OC2PolarityConfig_0
        LDW       X, #0x5d1
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC2PolarityConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_OC2PolarityConfig_1
        BSET      L:0x525c, #0x5
        JRA       L:??TIM1_OC2PolarityConfig_2
??TIM1_OC2PolarityConfig_1:
        BRES      L:0x525c, #0x5
??TIM1_OC2PolarityConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_OC2NPolarityConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_OC2NPolarityConfig_0
        LD        A, S:?b8
        CP        A, #0x88
        JREQ      L:??TIM1_OC2NPolarityConfig_0
        LDW       X, #0x5e9
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC2NPolarityConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_OC2NPolarityConfig_1
        BSET      L:0x525c, #0x7
        JRA       L:??TIM1_OC2NPolarityConfig_2
??TIM1_OC2NPolarityConfig_1:
        BRES      L:0x525c, #0x7
??TIM1_OC2NPolarityConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_OC3PolarityConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_OC3PolarityConfig_0
        LD        A, S:?b8
        CP        A, #0x22
        JREQ      L:??TIM1_OC3PolarityConfig_0
        LDW       X, #0x602
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC3PolarityConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_OC3PolarityConfig_1
        BSET      L:0x525d, #0x1
        JRA       L:??TIM1_OC3PolarityConfig_2
??TIM1_OC3PolarityConfig_1:
        BRES      L:0x525d, #0x1
??TIM1_OC3PolarityConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_OC3NPolarityConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_OC3NPolarityConfig_0
        LD        A, S:?b8
        CP        A, #0x88
        JREQ      L:??TIM1_OC3NPolarityConfig_0
        LDW       X, #0x61b
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC3NPolarityConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_OC3NPolarityConfig_1
        BSET      L:0x525d, #0x3
        JRA       L:??TIM1_OC3NPolarityConfig_2
??TIM1_OC3NPolarityConfig_1:
        BRES      L:0x525d, #0x3
??TIM1_OC3NPolarityConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_OC4PolarityConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_OC4PolarityConfig_0
        LD        A, S:?b8
        CP        A, #0x22
        JREQ      L:??TIM1_OC4PolarityConfig_0
        LDW       X, #0x633
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_OC4PolarityConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM1_OC4PolarityConfig_1
        BSET      L:0x525d, #0x5
        JRA       L:??TIM1_OC4PolarityConfig_2
??TIM1_OC4PolarityConfig_1:
        BRES      L:0x525d, #0x5
??TIM1_OC4PolarityConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_CCxCmd:
        CALLF     L:?push_w4
        LD        S:?b8, A
        MOV       S:?b9, S:?b0
        TNZ       S:?b8
        JREQ      L:??TIM1_CCxCmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_CCxCmd_0
        LD        A, S:?b8
        CP        A, #0x2
        JREQ      L:??TIM1_CCxCmd_0
        LD        A, S:?b8
        CP        A, #0x3
        JREQ      L:??TIM1_CCxCmd_0
        LDW       X, #0x650
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_CCxCmd_0:
        TNZ       S:?b9
        JREQ      L:??TIM1_CCxCmd_1
        LD        A, S:?b9
        CP        A, #0x1
        JREQ      L:??TIM1_CCxCmd_1
        LDW       X, #0x651
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_CCxCmd_1:
        TNZ       S:?b8
        JRNE      L:??TIM1_CCxCmd_2
        TNZ       S:?b9
        JREQ      L:??TIM1_CCxCmd_3
        BSET      L:0x525c, #0x0
        JPF       L:?epilogue_w4
??TIM1_CCxCmd_3:
        BRES      L:0x525c, #0x0
        JPF       L:?epilogue_w4
??TIM1_CCxCmd_2:
        LD        A, S:?b8
        CP        A, #0x1
        JRNE      L:??TIM1_CCxCmd_4
        TNZ       S:?b9
        JREQ      L:??TIM1_CCxCmd_5
        BSET      L:0x525c, #0x4
        JPF       L:?epilogue_w4
??TIM1_CCxCmd_5:
        BRES      L:0x525c, #0x4
        JPF       L:?epilogue_w4
??TIM1_CCxCmd_4:
        LD        A, S:?b8
        CP        A, #0x2
        JRNE      L:??TIM1_CCxCmd_6
        TNZ       S:?b9
        JREQ      L:??TIM1_CCxCmd_7
        BSET      L:0x525d, #0x0
        JPF       L:?epilogue_w4
??TIM1_CCxCmd_7:
        BRES      L:0x525d, #0x0
        JPF       L:?epilogue_w4
??TIM1_CCxCmd_6:
        TNZ       S:?b9
        JREQ      L:??TIM1_CCxCmd_8
        BSET      L:0x525d, #0x4
        JPF       L:?epilogue_w4
??TIM1_CCxCmd_8:
        BRES      L:0x525d, #0x4
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_CCxNCmd:
        CALLF     L:?push_w4
        LD        S:?b8, A
        MOV       S:?b9, S:?b0
        TNZ       S:?b8
        JREQ      L:??TIM1_CCxNCmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_CCxNCmd_0
        LD        A, S:?b8
        CP        A, #0x2
        JREQ      L:??TIM1_CCxNCmd_0
        LDW       X, #0x694
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_CCxNCmd_0:
        TNZ       S:?b9
        JREQ      L:??TIM1_CCxNCmd_1
        LD        A, S:?b9
        CP        A, #0x1
        JREQ      L:??TIM1_CCxNCmd_1
        LDW       X, #0x695
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_CCxNCmd_1:
        TNZ       S:?b8
        JRNE      L:??TIM1_CCxNCmd_2
        TNZ       S:?b9
        JREQ      L:??TIM1_CCxNCmd_3
        BSET      L:0x525c, #0x2
        JPF       L:?epilogue_w4
??TIM1_CCxNCmd_3:
        BRES      L:0x525c, #0x2
        JPF       L:?epilogue_w4
??TIM1_CCxNCmd_2:
        LD        A, S:?b8
        CP        A, #0x1
        JRNE      L:??TIM1_CCxNCmd_4
        TNZ       S:?b9
        JREQ      L:??TIM1_CCxNCmd_5
        BSET      L:0x525c, #0x6
        JPF       L:?epilogue_w4
??TIM1_CCxNCmd_5:
        BRES      L:0x525c, #0x6
        JPF       L:?epilogue_w4
??TIM1_CCxNCmd_4:
        TNZ       S:?b9
        JREQ      L:??TIM1_CCxNCmd_6
        BSET      L:0x525d, #0x2
        JPF       L:?epilogue_w4
??TIM1_CCxNCmd_6:
        BRES      L:0x525d, #0x2
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_SelectOCxM:
        CALLF     L:?push_w4
        LD        S:?b8, A
        MOV       S:?b9, S:?b0
        TNZ       S:?b8
        JREQ      L:??TIM1_SelectOCxM_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_SelectOCxM_0
        LD        A, S:?b8
        CP        A, #0x2
        JREQ      L:??TIM1_SelectOCxM_0
        LD        A, S:?b8
        CP        A, #0x3
        JREQ      L:??TIM1_SelectOCxM_0
        LDW       X, #0x6d6
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_SelectOCxM_0:
        TNZ       S:?b9
        JREQ      L:??TIM1_SelectOCxM_1
        LD        A, S:?b9
        CP        A, #0x10
        JREQ      L:??TIM1_SelectOCxM_1
        LD        A, S:?b9
        CP        A, #0x20
        JREQ      L:??TIM1_SelectOCxM_1
        LD        A, S:?b9
        CP        A, #0x30
        JREQ      L:??TIM1_SelectOCxM_1
        LD        A, S:?b9
        CP        A, #0x60
        JREQ      L:??TIM1_SelectOCxM_1
        LD        A, S:?b9
        CP        A, #0x70
        JREQ      L:??TIM1_SelectOCxM_1
        LD        A, S:?b9
        CP        A, #0x50
        JREQ      L:??TIM1_SelectOCxM_1
        LD        A, S:?b9
        CP        A, #0x40
        JREQ      L:??TIM1_SelectOCxM_1
        LDW       X, #0x6d7
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_SelectOCxM_1:
        TNZ       S:?b8
        JRNE      L:??TIM1_SelectOCxM_2
        BRES      L:0x525c, #0x0
        LD        A, L:0x5258
        AND       A, #0x8f
        OR        A, S:?b9
        LD        L:0x5258, A
        JPF       L:?epilogue_w4
??TIM1_SelectOCxM_2:
        LD        A, S:?b8
        CP        A, #0x1
        JRNE      L:??TIM1_SelectOCxM_3
        BRES      L:0x525c, #0x4
        LD        A, L:0x5259
        AND       A, #0x8f
        OR        A, S:?b9
        LD        L:0x5259, A
        JPF       L:?epilogue_w4
??TIM1_SelectOCxM_3:
        LD        A, S:?b8
        CP        A, #0x2
        JRNE      L:??TIM1_SelectOCxM_4
        BRES      L:0x525d, #0x0
        LD        A, L:0x525a
        AND       A, #0x8f
        OR        A, S:?b9
        LD        L:0x525a, A
        JPF       L:?epilogue_w4
??TIM1_SelectOCxM_4:
        BRES      L:0x525d, #0x4
        LD        A, L:0x525b
        AND       A, #0x8f
        OR        A, S:?b9
        LD        L:0x525b, A
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_SetCounter:
        LDW       Y, X
        LDW       X, Y
        CLR       A
        RRWA      X, A
        LD        A, XL
        LD        L:0x525e, A
        LD        A, YL
        LD        L:0x525f, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_SetAutoreload:
        LDW       Y, X
        LDW       X, Y
        CLR       A
        RRWA      X, A
        LD        A, XL
        LD        L:0x5262, A
        LD        A, YL
        LD        L:0x5263, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_SetCompare1:
        LDW       Y, X
        LDW       X, Y
        CLR       A
        RRWA      X, A
        LD        A, XL
        LD        L:0x5265, A
        LD        A, YL
        LD        L:0x5266, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_SetCompare2:
        LDW       Y, X
        LDW       X, Y
        CLR       A
        RRWA      X, A
        LD        A, XL
        LD        L:0x5267, A
        LD        A, YL
        LD        L:0x5268, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_SetCompare3:
        LDW       Y, X
        LDW       X, Y
        CLR       A
        RRWA      X, A
        LD        A, XL
        LD        L:0x5269, A
        LD        A, YL
        LD        L:0x526a, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_SetCompare4:
        LDW       Y, X
        LDW       X, Y
        CLR       A
        RRWA      X, A
        LD        A, XL
        LD        L:0x526b, A
        LD        A, YL
        LD        L:0x526c, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_SetIC1Prescaler:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_SetIC1Prescaler_0
        LD        A, S:?b8
        CP        A, #0x4
        JREQ      L:??TIM1_SetIC1Prescaler_0
        LD        A, S:?b8
        CP        A, #0x8
        JREQ      L:??TIM1_SetIC1Prescaler_0
        LD        A, S:?b8
        CP        A, #0xc
        JREQ      L:??TIM1_SetIC1Prescaler_0
        LDW       X, #0x767
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_SetIC1Prescaler_0:
        LD        A, L:0x5258
        AND       A, #0xf3
        OR        A, S:?b8
        LD        L:0x5258, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_SetIC2Prescaler:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_SetIC2Prescaler_0
        LD        A, S:?b8
        CP        A, #0x4
        JREQ      L:??TIM1_SetIC2Prescaler_0
        LD        A, S:?b8
        CP        A, #0x8
        JREQ      L:??TIM1_SetIC2Prescaler_0
        LD        A, S:?b8
        CP        A, #0xc
        JREQ      L:??TIM1_SetIC2Prescaler_0
        LDW       X, #0x77d
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_SetIC2Prescaler_0:
        LD        A, L:0x5259
        AND       A, #0xf3
        OR        A, S:?b8
        LD        L:0x5259, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_SetIC3Prescaler:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_SetIC3Prescaler_0
        LD        A, S:?b8
        CP        A, #0x4
        JREQ      L:??TIM1_SetIC3Prescaler_0
        LD        A, S:?b8
        CP        A, #0x8
        JREQ      L:??TIM1_SetIC3Prescaler_0
        LD        A, S:?b8
        CP        A, #0xc
        JREQ      L:??TIM1_SetIC3Prescaler_0
        LDW       X, #0x793
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_SetIC3Prescaler_0:
        LD        A, L:0x525a
        AND       A, #0xf3
        OR        A, S:?b8
        LD        L:0x525a, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_SetIC4Prescaler:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM1_SetIC4Prescaler_0
        LD        A, S:?b8
        CP        A, #0x4
        JREQ      L:??TIM1_SetIC4Prescaler_0
        LD        A, S:?b8
        CP        A, #0x8
        JREQ      L:??TIM1_SetIC4Prescaler_0
        LD        A, S:?b8
        CP        A, #0xc
        JREQ      L:??TIM1_SetIC4Prescaler_0
        LDW       X, #0x7a8
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_SetIC4Prescaler_0:
        LD        A, L:0x525b
        AND       A, #0xf3
        OR        A, S:?b8
        LD        L:0x525b, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_GetCapture1:
        CLRW      Y
        CLR       S:?b1
        CLR       S:?b0
        LD        A, L:0x5265
        LD        S:?b0, A
        LD        A, L:0x5266
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
TIM1_GetCapture2:
        CLRW      Y
        CLR       S:?b1
        CLR       S:?b0
        LD        A, L:0x5267
        LD        S:?b0, A
        LD        A, L:0x5268
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
TIM1_GetCapture3:
        CLRW      Y
        CLR       S:?b1
        CLR       S:?b0
        LD        A, L:0x5269
        LD        S:?b0, A
        LD        A, L:0x526a
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
TIM1_GetCapture4:
        CLRW      Y
        CLR       S:?b1
        CLR       S:?b0
        LD        A, L:0x526b
        LD        S:?b0, A
        LD        A, L:0x526c
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
TIM1_GetCounter:
        CLRW      Y
        LD        A, L:0x525e
        CLRW      X
        LD        XL, A
        CLR       A
        RLWA      X, A
        LDW       Y, X
        LD        A, L:0x525f
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
TIM1_GetPrescaler:
        CLRW      Y
        LD        A, L:0x5260
        CLRW      X
        LD        XL, A
        CLR       A
        RLWA      X, A
        LDW       Y, X
        LD        A, L:0x5261
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
TIM1_GetFlagStatus:
        CALLF     L:?push_w4
        LDW       S:?w4, X
        CLR       S:?b0
        CLR       S:?b1
        CLR       A
        LDW       X, S:?w4
        CPW       X, #0x1
        JREQ      L:??TIM1_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x2
        JREQ      L:??TIM1_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x4
        JREQ      L:??TIM1_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x8
        JREQ      L:??TIM1_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x10
        JREQ      L:??TIM1_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x20
        JREQ      L:??TIM1_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x40
        JREQ      L:??TIM1_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x80
        JREQ      L:??TIM1_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x200
        JREQ      L:??TIM1_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x400
        JREQ      L:??TIM1_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x800
        JREQ      L:??TIM1_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x1000
        JREQ      L:??TIM1_GetFlagStatus_0
        LDW       X, #0x837
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_GetFlagStatus_0:
        LD        A, S:?b9
        AND       A, L:0x5255
        LD        S:?b1, A
        LDW       X, S:?w4
        CLR       A
        RRWA      X, A
        LD        A, XL
        AND       A, L:0x5256
        OR        A, S:?b1
        CP        A, #0x0
        JREQ      L:??TIM1_GetFlagStatus_1
        MOV       S:?b0, #0x1
        JRA       L:??TIM1_GetFlagStatus_2
??TIM1_GetFlagStatus_1:
        CLR       S:?b0
??TIM1_GetFlagStatus_2:
        LD        A, S:?b0
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_ClearFlag:
        CALLF     L:?push_w4
        LDW       S:?w4, X
        LDW       X, S:?w4
        RLWA      X, A
        AND       A, #0xe1
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        TNZW      X
        JRNE      L:??TIM1_ClearFlag_0
        LDW       X, S:?w4
        TNZW      X
        JRNE      L:??TIM1_ClearFlag_1
??TIM1_ClearFlag_0:
        LDW       X, #0x85c
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_ClearFlag_1:
        LD        A, S:?b9
        CPL       A
        LD        L:0x5255, A
        LDW       X, S:?w4
        CLR       A
        RRWA      X, A
        LD        A, XL
        CPL       A
        AND       A, #0x1e
        LD        L:0x5256, A
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_GetITStatus:
        PUSH      S:?b8
        LD        S:?b8, A
        CLR       S:?b0
        CLR       S:?b2
        CLR       S:?b1
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM1_GetITStatus_0
        LD        A, S:?b8
        CP        A, #0x2
        JREQ      L:??TIM1_GetITStatus_0
        LD        A, S:?b8
        CP        A, #0x4
        JREQ      L:??TIM1_GetITStatus_0
        LD        A, S:?b8
        CP        A, #0x8
        JREQ      L:??TIM1_GetITStatus_0
        LD        A, S:?b8
        CP        A, #0x10
        JREQ      L:??TIM1_GetITStatus_0
        LD        A, S:?b8
        CP        A, #0x20
        JREQ      L:??TIM1_GetITStatus_0
        LD        A, S:?b8
        CP        A, #0x40
        JREQ      L:??TIM1_GetITStatus_0
        LD        A, S:?b8
        CP        A, #0x80
        JREQ      L:??TIM1_GetITStatus_0
        LDW       X, #0x878
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_GetITStatus_0:
        LD        A, S:?b8
        AND       A, L:0x5255
        LD        S:?b2, A
        LD        A, S:?b8
        AND       A, L:0x5254
        LD        S:?b1, A
        TNZ       S:?b2
        JREQ      L:??TIM1_GetITStatus_1
        TNZ       S:?b1
        JREQ      L:??TIM1_GetITStatus_1
        MOV       S:?b0, #0x1
        JRA       L:??TIM1_GetITStatus_2
??TIM1_GetITStatus_1:
        CLR       S:?b0
??TIM1_GetITStatus_2:
        LD        A, S:?b0
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM1_ClearITPendingBit:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JRNE      L:??TIM1_ClearITPendingBit_0
        LDW       X, #0x89a
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM1_ClearITPendingBit_0:
        CPL       S:?b8
        LD        A, S:?b8
        LD        L:0x5255, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TI1_Config:
        LD        S:?b2, A
        LD        A, S:?b1
        BRES      L:0x525c, #0x0
        SWAP      A
        AND       A, #0xf0
        OR        A, S:?b0
        PUSH      A
        LD        A, L:0x5258
        AND       A, #0xc
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        L:0x5258, A
        TNZ       S:?b2
        JREQ      L:??TI1_Config_0
        BSET      L:0x525c, #0x1
        JRA       L:??TI1_Config_1
??TI1_Config_0:
        BRES      L:0x525c, #0x1
??TI1_Config_1:
        BSET      L:0x525c, #0x0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TI2_Config:
        LD        S:?b2, A
        LD        A, S:?b1
        BRES      L:0x525c, #0x4
        SWAP      A
        AND       A, #0xf0
        OR        A, S:?b0
        PUSH      A
        LD        A, L:0x5259
        AND       A, #0xc
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        L:0x5259, A
        TNZ       S:?b2
        JREQ      L:??TI2_Config_0
        BSET      L:0x525c, #0x5
        JRA       L:??TI2_Config_1
??TI2_Config_0:
        BRES      L:0x525c, #0x5
??TI2_Config_1:
        BSET      L:0x525c, #0x4
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TI3_Config:
        LD        S:?b2, A
        LD        A, S:?b1
        BRES      L:0x525d, #0x0
        SWAP      A
        AND       A, #0xf0
        OR        A, S:?b0
        PUSH      A
        LD        A, L:0x525a
        AND       A, #0xc
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        L:0x525a, A
        TNZ       S:?b2
        JREQ      L:??TI3_Config_0
        BSET      L:0x525d, #0x1
        JRA       L:??TI3_Config_1
??TI3_Config_0:
        BRES      L:0x525d, #0x1
??TI3_Config_1:
        BSET      L:0x525d, #0x0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TI4_Config:
        LD        S:?b2, A
        LD        A, S:?b1
        BRES      L:0x525d, #0x4
        SWAP      A
        AND       A, #0xf0
        OR        A, S:?b0
        PUSH      A
        LD        A, L:0x525b
        AND       A, #0xc
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        L:0x525b, A
        TNZ       S:?b2
        JREQ      L:??TI4_Config_0
        BSET      L:0x525d, #0x5
        JRA       L:??TI4_Config_1
??TI4_Config_0:
        BRES      L:0x525d, #0x5
??TI4_Config_1:
        BSET      L:0x525d, #0x4
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
        DC8 5FH, 74H, 69H, 6DH, 31H, 2EH, 63H, 0

        END
// 
// 6 197 bytes in section .far_func.text
//    88 bytes in section .near.rodata
// 
// 6 197 bytes of CODE  memory
//    88 bytes of CONST memory
//
//Errors: none
//Warnings: none
