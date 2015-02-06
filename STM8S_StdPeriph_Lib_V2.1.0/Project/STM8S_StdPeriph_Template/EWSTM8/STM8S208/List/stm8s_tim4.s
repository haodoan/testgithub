///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR C/C++ Compiler V1.30.1.50036 for STM8            24/Jan/2015  12:33:29 /
// Copyright 2010-2011 IAR Systems AB.                                        /
//                                                                            /
//    Source file  =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_tim4.c                        /
//    Command line =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_tim4.c -e -Ol --no_cse        /
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
//                    Periph_Template\EWSTM8\STM8S208\List\stm8s_tim4.s       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm8s_tim4

        EXTERN ?b0
        EXTERN ?b1
        EXTERN ?b2
        EXTERN ?b8
        EXTERN ?b9
        EXTERN ?epilogue_w4
        EXTERN ?push_w4
        EXTERN ?w0
        EXTERN ?w1
        EXTERN assert_failed

        PUBLIC TIM4_ARRPreloadConfig
        PUBLIC TIM4_ClearFlag
        PUBLIC TIM4_ClearITPendingBit
        PUBLIC TIM4_Cmd
        PUBLIC TIM4_DeInit
        PUBLIC TIM4_GenerateEvent
        PUBLIC TIM4_GetCounter
        PUBLIC TIM4_GetFlagStatus
        PUBLIC TIM4_GetITStatus
        PUBLIC TIM4_GetPrescaler
        PUBLIC TIM4_ITConfig
        PUBLIC TIM4_PrescalerConfig
        PUBLIC TIM4_SelectOnePulseMode
        PUBLIC TIM4_SetAutoreload
        PUBLIC TIM4_SetCounter
        PUBLIC TIM4_TimeBaseInit
        PUBLIC TIM4_UpdateDisableConfig
        PUBLIC TIM4_UpdateRequestConfig


        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM4_DeInit:
        MOV       L:0x5340, #0x0
        MOV       L:0x5343, #0x0
        MOV       L:0x5346, #0x0
        MOV       L:0x5347, #0x0
        MOV       L:0x5348, #0xff
        MOV       L:0x5344, #0x0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM4_TimeBaseInit:
        CALLF     L:?push_w4
        LD        S:?b9, A
        MOV       S:?b8, S:?b0
        TNZ       S:?b9
        JREQ      L:??TIM4_TimeBaseInit_0
        LD        A, S:?b9
        CP        A, #0x1
        JREQ      L:??TIM4_TimeBaseInit_0
        LD        A, S:?b9
        CP        A, #0x2
        JREQ      L:??TIM4_TimeBaseInit_0
        LD        A, S:?b9
        CP        A, #0x3
        JREQ      L:??TIM4_TimeBaseInit_0
        LD        A, S:?b9
        CP        A, #0x4
        JREQ      L:??TIM4_TimeBaseInit_0
        LD        A, S:?b9
        CP        A, #0x5
        JREQ      L:??TIM4_TimeBaseInit_0
        LD        A, S:?b9
        CP        A, #0x6
        JREQ      L:??TIM4_TimeBaseInit_0
        LD        A, S:?b9
        CP        A, #0x7
        JREQ      L:??TIM4_TimeBaseInit_0
        LDW       X, #0x3e
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM4_TimeBaseInit_0:
        LD        A, S:?b9
        LD        L:0x5347, A
        LD        A, S:?b8
        LD        L:0x5348, A
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM4_Cmd:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM4_Cmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM4_Cmd_0
        LDW       X, #0x50
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM4_Cmd_0:
        TNZ       S:?b8
        JREQ      L:??TIM4_Cmd_1
        BSET      L:0x5340, #0x0
        JRA       L:??TIM4_Cmd_2
??TIM4_Cmd_1:
        BRES      L:0x5340, #0x0
??TIM4_Cmd_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM4_ITConfig:
        CALLF     L:?push_w4
        LD        S:?b8, A
        MOV       S:?b9, S:?b0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM4_ITConfig_0
        LDW       X, #0x6a
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM4_ITConfig_0:
        TNZ       S:?b9
        JREQ      L:??TIM4_ITConfig_1
        LD        A, S:?b9
        CP        A, #0x1
        JREQ      L:??TIM4_ITConfig_1
        LDW       X, #0x6b
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM4_ITConfig_1:
        TNZ       S:?b9
        JREQ      L:??TIM4_ITConfig_2
        LD        A, S:?b8
        OR        A, L:0x5343
        LD        L:0x5343, A
        JPF       L:?epilogue_w4
??TIM4_ITConfig_2:
        CPL       S:?b8
        LD        A, S:?b8
        AND       A, L:0x5343
        LD        L:0x5343, A
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM4_UpdateDisableConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM4_UpdateDisableConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM4_UpdateDisableConfig_0
        LDW       X, #0x82
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM4_UpdateDisableConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM4_UpdateDisableConfig_1
        BSET      L:0x5340, #0x1
        JRA       L:??TIM4_UpdateDisableConfig_2
??TIM4_UpdateDisableConfig_1:
        BRES      L:0x5340, #0x1
??TIM4_UpdateDisableConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM4_UpdateRequestConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM4_UpdateRequestConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM4_UpdateRequestConfig_0
        LDW       X, #0x9a
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM4_UpdateRequestConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM4_UpdateRequestConfig_1
        BSET      L:0x5340, #0x2
        JRA       L:??TIM4_UpdateRequestConfig_2
??TIM4_UpdateRequestConfig_1:
        BRES      L:0x5340, #0x2
??TIM4_UpdateRequestConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM4_SelectOnePulseMode:
        PUSH      S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM4_SelectOnePulseMode_0
        TNZ       S:?b8
        JREQ      L:??TIM4_SelectOnePulseMode_0
        LDW       X, #0xb2
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM4_SelectOnePulseMode_0:
        TNZ       S:?b8
        JREQ      L:??TIM4_SelectOnePulseMode_1
        BSET      L:0x5340, #0x3
        JRA       L:??TIM4_SelectOnePulseMode_2
??TIM4_SelectOnePulseMode_1:
        BRES      L:0x5340, #0x3
??TIM4_SelectOnePulseMode_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM4_PrescalerConfig:
        CALLF     L:?push_w4
        LD        S:?b9, A
        MOV       S:?b8, S:?b0
        TNZ       S:?b8
        JREQ      L:??TIM4_PrescalerConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM4_PrescalerConfig_0
        LDW       X, #0xd7
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM4_PrescalerConfig_0:
        TNZ       S:?b9
        JREQ      L:??TIM4_PrescalerConfig_1
        LD        A, S:?b9
        CP        A, #0x1
        JREQ      L:??TIM4_PrescalerConfig_1
        LD        A, S:?b9
        CP        A, #0x2
        JREQ      L:??TIM4_PrescalerConfig_1
        LD        A, S:?b9
        CP        A, #0x3
        JREQ      L:??TIM4_PrescalerConfig_1
        LD        A, S:?b9
        CP        A, #0x4
        JREQ      L:??TIM4_PrescalerConfig_1
        LD        A, S:?b9
        CP        A, #0x5
        JREQ      L:??TIM4_PrescalerConfig_1
        LD        A, S:?b9
        CP        A, #0x6
        JREQ      L:??TIM4_PrescalerConfig_1
        LD        A, S:?b9
        CP        A, #0x7
        JREQ      L:??TIM4_PrescalerConfig_1
        LDW       X, #0xd8
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM4_PrescalerConfig_1:
        LD        A, S:?b9
        LD        L:0x5347, A
        LD        A, S:?b8
        LD        L:0x5345, A
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM4_ARRPreloadConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??TIM4_ARRPreloadConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM4_ARRPreloadConfig_0
        LDW       X, #0xea
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM4_ARRPreloadConfig_0:
        TNZ       S:?b8
        JREQ      L:??TIM4_ARRPreloadConfig_1
        BSET      L:0x5340, #0x7
        JRA       L:??TIM4_ARRPreloadConfig_2
??TIM4_ARRPreloadConfig_1:
        BRES      L:0x5340, #0x7
??TIM4_ARRPreloadConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM4_GenerateEvent:
        PUSH      S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM4_GenerateEvent_0
        LDW       X, #0x101
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM4_GenerateEvent_0:
        LD        A, S:?b8
        LD        L:0x5345, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM4_SetCounter:
        LD        L:0x5346, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM4_SetAutoreload:
        LD        L:0x5348, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM4_GetCounter:
        LD        A, L:0x5346
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM4_GetPrescaler:
        LD        A, L:0x5347
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM4_GetFlagStatus:
        PUSH      S:?b8
        LD        S:?b8, A
        CLR       S:?b0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM4_GetFlagStatus_0
        LDW       X, #0x143
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM4_GetFlagStatus_0:
        LD        A, S:?b8
        AND       A, L:0x5344
        CP        A, #0x0
        JREQ      L:??TIM4_GetFlagStatus_1
        MOV       S:?b0, #0x1
        JRA       L:??TIM4_GetFlagStatus_2
??TIM4_GetFlagStatus_1:
        CLR       S:?b0
??TIM4_GetFlagStatus_2:
        LD        A, S:?b0
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM4_ClearFlag:
        PUSH      S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM4_ClearFlag_0
        LDW       X, #0x15a
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM4_ClearFlag_0:
        CPL       S:?b8
        LD        A, S:?b8
        LD        L:0x5344, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM4_GetITStatus:
        PUSH      S:?b8
        LD        S:?b8, A
        CLR       S:?b0
        CLR       S:?b2
        CLR       S:?b1
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM4_GetITStatus_0
        LDW       X, #0x16f
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM4_GetITStatus_0:
        LD        A, S:?b8
        AND       A, L:0x5344
        LD        S:?b2, A
        LD        A, S:?b8
        AND       A, L:0x5343
        LD        S:?b1, A
        TNZ       S:?b2
        JREQ      L:??TIM4_GetITStatus_1
        TNZ       S:?b1
        JREQ      L:??TIM4_GetITStatus_1
        MOV       S:?b0, #0x1
        JRA       L:??TIM4_GetITStatus_2
??TIM4_GetITStatus_1:
        CLR       S:?b0
??TIM4_GetITStatus_2:
        LD        A, S:?b0
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
TIM4_ClearITPendingBit:
        PUSH      S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??TIM4_ClearITPendingBit_0
        LDW       X, #0x18a
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??TIM4_ClearITPendingBit_0:
        CPL       S:?b8
        LD        A, S:?b8
        LD        L:0x5344, A
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
        DC8 5FH, 74H, 69H, 6DH, 34H, 2EH, 63H, 0

        END
// 
// 787 bytes in section .far_func.text
//  88 bytes in section .near.rodata
// 
// 787 bytes of CODE  memory
//  88 bytes of CONST memory
//
//Errors: none
//Warnings: none
