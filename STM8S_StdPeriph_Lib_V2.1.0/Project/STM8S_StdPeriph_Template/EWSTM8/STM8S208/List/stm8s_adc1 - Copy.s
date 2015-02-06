///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR C/C++ Compiler V1.30.1.50036 for STM8            24/Jan/2015  12:32:24 /
// Copyright 2010-2011 IAR Systems AB.                                        /
//                                                                            /
//    Source file  =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_adc1 - Copy.c                 /
//    Command line =  "D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_ /
//                    StdPeriph_Driver\src\stm8s_adc1 - Copy.c" -e -Ol        /
//                    --no_cse --no_unroll --no_inline --no_code_motion       /
//                    --no_tbaa --no_cross_call --debug --code_model medium   /
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
//                    Periph_Template\EWSTM8\STM8S208\List\stm8s_adc1 -       /
//                    Copy.s                                                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME `stm8s_adc1 - Copy`

        EXTERN ?b0
        EXTERN ?b1
        EXTERN ?b10
        EXTERN ?b11
        EXTERN ?b12
        EXTERN ?b13
        EXTERN ?b14
        EXTERN ?b15
        EXTERN ?b2
        EXTERN ?b3
        EXTERN ?b4
        EXTERN ?b5
        EXTERN ?b6
        EXTERN ?b8
        EXTERN ?b9
        EXTERN ?epilogue_l2_l3
        EXTERN ?epilogue_w4
        EXTERN ?push_l2
        EXTERN ?push_l3
        EXTERN ?push_w4
        EXTERN ?sll16_x_x_6
        EXTERN ?sll16_x_x_a
        EXTERN ?w0
        EXTERN ?w1
        EXTERN ?w4
        EXTERN assert_failed

        PUBLIC ADC1_AWDChannelConfig
        PUBLIC ADC1_ClearFlag
        PUBLIC ADC1_ClearITPendingBit
        PUBLIC ADC1_Cmd
        PUBLIC ADC1_ConversionConfig
        PUBLIC ADC1_DataBufferCmd
        PUBLIC ADC1_DeInit
        PUBLIC ADC1_ExternalTriggerConfig
        PUBLIC ADC1_GetAWDChannelStatus
        PUBLIC ADC1_GetBufferValue
        PUBLIC ADC1_GetConversionValue
        PUBLIC ADC1_GetFlagStatus
        PUBLIC ADC1_GetITStatus
        PUBLIC ADC1_ITConfig
        PUBLIC ADC1_Init
        PUBLIC ADC1_PrescalerConfig
        PUBLIC ADC1_ScanModeCmd
        PUBLIC ADC1_SchmittTriggerConfig
        PUBLIC ADC1_SetHighThreshold
        PUBLIC ADC1_SetLowThreshold
        PUBLIC ADC1_StartConversion


        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ADC1_DeInit:
        MOV       L:0x5400, #0x0
        MOV       L:0x5401, #0x0
        MOV       L:0x5402, #0x0
        MOV       L:0x5403, #0x0
        MOV       L:0x5406, #0x0
        MOV       L:0x5407, #0x0
        MOV       L:0x5408, #0xff
        MOV       L:0x5409, #0x3
        MOV       L:0x540a, #0x0
        MOV       L:0x540b, #0x0
        MOV       L:0x540e, #0x0
        MOV       L:0x540f, #0x0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ADC1_Init:
        CALLF     L:?push_l2
        CALLF     L:?push_l3
        LD        S:?b15, A
        MOV       S:?b8, S:?b0
        MOV       S:?b9, S:?b1
        MOV       S:?b14, S:?b2
        MOV       S:?b13, S:?b3
        MOV       S:?b12, S:?b4
        MOV       S:?b10, S:?b5
        MOV       S:?b11, S:?b6
        TNZ       S:?b15
        JREQ      L:??ADC1_Init_0
        LD        A, S:?b15
        CP        A, #0x1
        JREQ      L:??ADC1_Init_0
        LDW       X, #0x59
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_Init_0:
        TNZ       S:?b8
        JREQ      L:??ADC1_Init_1
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??ADC1_Init_1
        LD        A, S:?b8
        CP        A, #0x2
        JREQ      L:??ADC1_Init_1
        LD        A, S:?b8
        CP        A, #0x3
        JREQ      L:??ADC1_Init_1
        LD        A, S:?b8
        CP        A, #0x4
        JREQ      L:??ADC1_Init_1
        LD        A, S:?b8
        CP        A, #0x5
        JREQ      L:??ADC1_Init_1
        LD        A, S:?b8
        CP        A, #0x6
        JREQ      L:??ADC1_Init_1
        LD        A, S:?b8
        CP        A, #0x7
        JREQ      L:??ADC1_Init_1
        LD        A, S:?b8
        CP        A, #0x8
        JREQ      L:??ADC1_Init_1
        LD        A, S:?b8
        CP        A, #0xc
        JREQ      L:??ADC1_Init_1
        LD        A, S:?b8
        CP        A, #0x9
        JREQ      L:??ADC1_Init_1
        LDW       X, #0x5a
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_Init_1:
        TNZ       S:?b9
        JREQ      L:??ADC1_Init_2
        LD        A, S:?b9
        CP        A, #0x10
        JREQ      L:??ADC1_Init_2
        LD        A, S:?b9
        CP        A, #0x20
        JREQ      L:??ADC1_Init_2
        LD        A, S:?b9
        CP        A, #0x30
        JREQ      L:??ADC1_Init_2
        LD        A, S:?b9
        CP        A, #0x40
        JREQ      L:??ADC1_Init_2
        LD        A, S:?b9
        CP        A, #0x50
        JREQ      L:??ADC1_Init_2
        LD        A, S:?b9
        CP        A, #0x60
        JREQ      L:??ADC1_Init_2
        LD        A, S:?b9
        CP        A, #0x70
        JREQ      L:??ADC1_Init_2
        LDW       X, #0x5b
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_Init_2:
        TNZ       S:?b14
        JREQ      L:??ADC1_Init_3
        LD        A, S:?b14
        CP        A, #0x10
        JREQ      L:??ADC1_Init_3
        LDW       X, #0x5c
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_Init_3:
        TNZ       S:?b13
        JREQ      L:??ADC1_Init_4
        LD        A, S:?b13
        CP        A, #0x1
        JREQ      L:??ADC1_Init_4
        LDW       X, #0x5d
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_Init_4:
        TNZ       S:?b12
        JREQ      L:??ADC1_Init_5
        LD        A, S:?b12
        CP        A, #0x8
        JREQ      L:??ADC1_Init_5
        LDW       X, #0x5e
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_Init_5:
        TNZ       S:?b10
        JREQ      L:??ADC1_Init_6
        LD        A, S:?b10
        CP        A, #0x1
        JREQ      L:??ADC1_Init_6
        LD        A, S:?b10
        CP        A, #0x2
        JREQ      L:??ADC1_Init_6
        LD        A, S:?b10
        CP        A, #0x3
        JREQ      L:??ADC1_Init_6
        LD        A, S:?b10
        CP        A, #0x4
        JREQ      L:??ADC1_Init_6
        LD        A, S:?b10
        CP        A, #0x5
        JREQ      L:??ADC1_Init_6
        LD        A, S:?b10
        CP        A, #0x6
        JREQ      L:??ADC1_Init_6
        LD        A, S:?b10
        CP        A, #0x7
        JREQ      L:??ADC1_Init_6
        LD        A, S:?b10
        CP        A, #0x8
        JREQ      L:??ADC1_Init_6
        LD        A, S:?b10
        CP        A, #0xc
        JREQ      L:??ADC1_Init_6
        LD        A, S:?b10
        CP        A, #0xff
        JREQ      L:??ADC1_Init_6
        LD        A, S:?b10
        CP        A, #0x9
        JREQ      L:??ADC1_Init_6
        LDW       X, #0x5f
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_Init_6:
        TNZ       S:?b11
        JREQ      L:??ADC1_Init_7
        LD        A, S:?b11
        CP        A, #0x1
        JREQ      L:??ADC1_Init_7
        LDW       X, #0x60
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_Init_7:
        MOV       S:?b1, S:?b12
        MOV       S:?b0, S:?b8
        LD        A, S:?b15
        CALLF     ADC1_ConversionConfig
        LD        A, S:?b9
        CALLF     ADC1_PrescalerConfig
        MOV       S:?b0, S:?b13
        LD        A, S:?b14
        CALLF     ADC1_ExternalTriggerConfig
        MOV       S:?b0, S:?b11
        LD        A, S:?b10
        CALLF     ADC1_SchmittTriggerConfig
        BSET      L:0x5401, #0x0
        JPF       L:?epilogue_l2_l3

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ADC1_Cmd:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??ADC1_Cmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??ADC1_Cmd_0
        LDW       X, #0x82
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_Cmd_0:
        TNZ       S:?b8
        JREQ      L:??ADC1_Cmd_1
        BSET      L:0x5401, #0x0
        JRA       L:??ADC1_Cmd_2
??ADC1_Cmd_1:
        BRES      L:0x5401, #0x0
??ADC1_Cmd_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ADC1_ScanModeCmd:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??ADC1_ScanModeCmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??ADC1_ScanModeCmd_0
        LDW       X, #0x98
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_ScanModeCmd_0:
        TNZ       S:?b8
        JREQ      L:??ADC1_ScanModeCmd_1
        BSET      L:0x5402, #0x1
        JRA       L:??ADC1_ScanModeCmd_2
??ADC1_ScanModeCmd_1:
        BRES      L:0x5402, #0x1
??ADC1_ScanModeCmd_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ADC1_DataBufferCmd:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??ADC1_DataBufferCmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??ADC1_DataBufferCmd_0
        LDW       X, #0xae
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_DataBufferCmd_0:
        TNZ       S:?b8
        JREQ      L:??ADC1_DataBufferCmd_1
        BSET      L:0x5403, #0x7
        JRA       L:??ADC1_DataBufferCmd_2
??ADC1_DataBufferCmd_1:
        BRES      L:0x5403, #0x7
??ADC1_DataBufferCmd_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ADC1_ITConfig:
        CALLF     L:?push_w4
        PUSH      S:?b10
        LDW       S:?w4, X
        LD        S:?b10, A
        LDW       X, S:?w4
        CPW       X, #0x20
        JREQ      L:??ADC1_ITConfig_0
        LDW       X, S:?w4
        CPW       X, #0x10
        JREQ      L:??ADC1_ITConfig_0
        LDW       X, #0xc8
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_ITConfig_0:
        TNZ       S:?b10
        JREQ      L:??ADC1_ITConfig_1
        LD        A, S:?b10
        CP        A, #0x1
        JREQ      L:??ADC1_ITConfig_1
        LDW       X, #0xc9
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_ITConfig_1:
        TNZ       S:?b10
        JREQ      L:??ADC1_ITConfig_2
        LD        A, S:?b9
        OR        A, L:0x5400
        LD        L:0x5400, A
        JRA       L:??ADC1_ITConfig_3
??ADC1_ITConfig_2:
        LD        A, S:?b9
        CPL       A
        AND       A, L:0x5400
        LD        L:0x5400, A
??ADC1_ITConfig_3:
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ADC1_PrescalerConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??ADC1_PrescalerConfig_0
        LD        A, S:?b8
        CP        A, #0x10
        JREQ      L:??ADC1_PrescalerConfig_0
        LD        A, S:?b8
        CP        A, #0x20
        JREQ      L:??ADC1_PrescalerConfig_0
        LD        A, S:?b8
        CP        A, #0x30
        JREQ      L:??ADC1_PrescalerConfig_0
        LD        A, S:?b8
        CP        A, #0x40
        JREQ      L:??ADC1_PrescalerConfig_0
        LD        A, S:?b8
        CP        A, #0x50
        JREQ      L:??ADC1_PrescalerConfig_0
        LD        A, S:?b8
        CP        A, #0x60
        JREQ      L:??ADC1_PrescalerConfig_0
        LD        A, S:?b8
        CP        A, #0x70
        JREQ      L:??ADC1_PrescalerConfig_0
        LDW       X, #0xe2
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_PrescalerConfig_0:
        LD        A, L:0x5401
        AND       A, #0x8f
        LD        L:0x5401, A
        LD        A, S:?b8
        OR        A, L:0x5401
        LD        L:0x5401, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ADC1_SchmittTriggerConfig:
        CALLF     L:?push_w4
        LD        S:?b8, A
        MOV       S:?b9, S:?b0
        TNZ       S:?b8
        JREQ      L:??ADC1_SchmittTriggerConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??ADC1_SchmittTriggerConfig_0
        LD        A, S:?b8
        CP        A, #0x2
        JREQ      L:??ADC1_SchmittTriggerConfig_0
        LD        A, S:?b8
        CP        A, #0x3
        JREQ      L:??ADC1_SchmittTriggerConfig_0
        LD        A, S:?b8
        CP        A, #0x4
        JREQ      L:??ADC1_SchmittTriggerConfig_0
        LD        A, S:?b8
        CP        A, #0x5
        JREQ      L:??ADC1_SchmittTriggerConfig_0
        LD        A, S:?b8
        CP        A, #0x6
        JREQ      L:??ADC1_SchmittTriggerConfig_0
        LD        A, S:?b8
        CP        A, #0x7
        JREQ      L:??ADC1_SchmittTriggerConfig_0
        LD        A, S:?b8
        CP        A, #0x8
        JREQ      L:??ADC1_SchmittTriggerConfig_0
        LD        A, S:?b8
        CP        A, #0xc
        JREQ      L:??ADC1_SchmittTriggerConfig_0
        LD        A, S:?b8
        CP        A, #0xff
        JREQ      L:??ADC1_SchmittTriggerConfig_0
        LD        A, S:?b8
        CP        A, #0x9
        JREQ      L:??ADC1_SchmittTriggerConfig_0
        LDW       X, #0xf8
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_SchmittTriggerConfig_0:
        TNZ       S:?b9
        JREQ      L:??ADC1_SchmittTriggerConfig_1
        LD        A, S:?b9
        CP        A, #0x1
        JREQ      L:??ADC1_SchmittTriggerConfig_1
        LDW       X, #0xf9
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_SchmittTriggerConfig_1:
        LD        A, S:?b8
        CP        A, #0xff
        JRNE      L:??ADC1_SchmittTriggerConfig_2
        TNZ       S:?b9
        JREQ      L:??ADC1_SchmittTriggerConfig_3
        LD        A, L:0x5407
        LD        S:?b0, A
        MOV       L:0x5407, #0x0
        LD        A, L:0x5406
        MOV       L:0x5406, #0x0
        JPF       L:?epilogue_w4
??ADC1_SchmittTriggerConfig_3:
        LD        A, L:0x5407
        LD        S:?b0, A
        MOV       L:0x5407, #0xff
        LD        A, L:0x5406
        MOV       L:0x5406, #0xff
        JPF       L:?epilogue_w4
??ADC1_SchmittTriggerConfig_2:
        LD        A, S:?b8
        CP        A, #0x8
        JRNC      L:??ADC1_SchmittTriggerConfig_4
        TNZ       S:?b9
        JREQ      L:??ADC1_SchmittTriggerConfig_5
        CLRW      X
        INCW      X
        LD        A, S:?b8
        CALLF     L:?sll16_x_x_a
        LD        A, XL
        CPL       A
        AND       A, L:0x5407
        LD        L:0x5407, A
        JPF       L:?epilogue_w4
??ADC1_SchmittTriggerConfig_5:
        CLRW      X
        INCW      X
        LD        A, S:?b8
        CALLF     L:?sll16_x_x_a
        LD        A, XL
        OR        A, L:0x5407
        LD        L:0x5407, A
        JPF       L:?epilogue_w4
??ADC1_SchmittTriggerConfig_4:
        TNZ       S:?b9
        JREQ      L:??ADC1_SchmittTriggerConfig_6
        LD        A, S:?b8
        ADD       A, #0xf8
        CLRW      X
        INCW      X
        CALLF     L:?sll16_x_x_a
        LD        A, XL
        CPL       A
        AND       A, L:0x5406
        LD        L:0x5406, A
        JPF       L:?epilogue_w4
??ADC1_SchmittTriggerConfig_6:
        LD        A, S:?b8
        ADD       A, #0xf8
        CLRW      X
        INCW      X
        CALLF     L:?sll16_x_x_a
        LD        A, XL
        OR        A, L:0x5406
        LD        L:0x5406, A
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ADC1_ConversionConfig:
        CALLF     L:?push_w4
        PUSH      S:?b10
        LD        S:?b8, A
        MOV       S:?b9, S:?b0
        MOV       S:?b10, S:?b1
        TNZ       S:?b8
        JREQ      L:??ADC1_ConversionConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??ADC1_ConversionConfig_0
        LDW       X, #0x130
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_ConversionConfig_0:
        TNZ       S:?b9
        JREQ      L:??ADC1_ConversionConfig_1
        LD        A, S:?b9
        CP        A, #0x1
        JREQ      L:??ADC1_ConversionConfig_1
        LD        A, S:?b9
        CP        A, #0x2
        JREQ      L:??ADC1_ConversionConfig_1
        LD        A, S:?b9
        CP        A, #0x3
        JREQ      L:??ADC1_ConversionConfig_1
        LD        A, S:?b9
        CP        A, #0x4
        JREQ      L:??ADC1_ConversionConfig_1
        LD        A, S:?b9
        CP        A, #0x5
        JREQ      L:??ADC1_ConversionConfig_1
        LD        A, S:?b9
        CP        A, #0x6
        JREQ      L:??ADC1_ConversionConfig_1
        LD        A, S:?b9
        CP        A, #0x7
        JREQ      L:??ADC1_ConversionConfig_1
        LD        A, S:?b9
        CP        A, #0x8
        JREQ      L:??ADC1_ConversionConfig_1
        LD        A, S:?b9
        CP        A, #0xc
        JREQ      L:??ADC1_ConversionConfig_1
        LD        A, S:?b9
        CP        A, #0x9
        JREQ      L:??ADC1_ConversionConfig_1
        LDW       X, #0x131
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_ConversionConfig_1:
        TNZ       S:?b10
        JREQ      L:??ADC1_ConversionConfig_2
        LD        A, S:?b10
        CP        A, #0x8
        JREQ      L:??ADC1_ConversionConfig_2
        LDW       X, #0x132
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_ConversionConfig_2:
        BRES      L:0x5402, #0x3
        LD        A, S:?b10
        OR        A, L:0x5402
        LD        L:0x5402, A
        LD        A, S:?b8
        CP        A, #0x1
        JRNE      L:??ADC1_ConversionConfig_3
        BSET      L:0x5401, #0x1
        JRA       L:??ADC1_ConversionConfig_4
??ADC1_ConversionConfig_3:
        BRES      L:0x5401, #0x1
??ADC1_ConversionConfig_4:
        LD        A, L:0x5400
        AND       A, #0xf0
        LD        L:0x5400, A
        LD        A, S:?b9
        OR        A, L:0x5400
        LD        L:0x5400, A
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ADC1_ExternalTriggerConfig:
        CALLF     L:?push_w4
        LD        S:?b8, A
        MOV       S:?b9, S:?b0
        TNZ       S:?b8
        JREQ      L:??ADC1_ExternalTriggerConfig_0
        LD        A, S:?b8
        CP        A, #0x10
        JREQ      L:??ADC1_ExternalTriggerConfig_0
        LDW       X, #0x15a
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_ExternalTriggerConfig_0:
        TNZ       S:?b9
        JREQ      L:??ADC1_ExternalTriggerConfig_1
        LD        A, S:?b9
        CP        A, #0x1
        JREQ      L:??ADC1_ExternalTriggerConfig_1
        LDW       X, #0x15b
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_ExternalTriggerConfig_1:
        LD        A, L:0x5402
        AND       A, #0xcf
        LD        L:0x5402, A
        TNZ       S:?b9
        JREQ      L:??ADC1_ExternalTriggerConfig_2
        BSET      L:0x5402, #0x6
        JRA       L:??ADC1_ExternalTriggerConfig_3
??ADC1_ExternalTriggerConfig_2:
        BRES      L:0x5402, #0x6
??ADC1_ExternalTriggerConfig_3:
        LD        A, S:?b8
        OR        A, L:0x5402
        LD        L:0x5402, A
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ADC1_StartConversion:
        BSET      L:0x5401, #0x0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ADC1_GetConversionValue:
        CLRW      Y
        CLR       S:?b0
        BTJF      L:0x5402, #0x3, L:??ADC1_GetConversionValue_0
        LD        A, L:0x5405
        LD        S:?b0, A
        LD        A, L:0x5404
        CLRW      Y
        LD        YL, A
        LDW       X, Y
        CLR       A
        RLWA      X, A
        CLRW      Y
        EXG       A, YL
        LD        A, S:?b0
        EXG       A, YL
        LDW       S:?w0, X
        EXGW      X, Y
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        EXGW      X, Y
        JRA       L:??ADC1_GetConversionValue_1
??ADC1_GetConversionValue_0:
        LD        A, L:0x5404
        CLRW      Y
        LD        YL, A
        LD        A, L:0x5405
        LD        S:?b0, A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        CALLF     L:?sll16_x_x_6
        LDW       S:?w1, X
        LDW       X, Y
        CLR       A
        RLWA      X, A
        LDW       S:?w0, X
        LDW       Y, S:?w1
        EXGW      X, Y
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        EXGW      X, Y
??ADC1_GetConversionValue_1:
        LDW       X, Y
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ADC1_AWDChannelConfig:
        CALLF     L:?push_w4
        LD        S:?b8, A
        MOV       S:?b9, S:?b0
        TNZ       S:?b9
        JREQ      L:??ADC1_AWDChannelConfig_0
        LD        A, S:?b9
        CP        A, #0x1
        JREQ      L:??ADC1_AWDChannelConfig_0
        LDW       X, #0x1ae
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_AWDChannelConfig_0:
        TNZ       S:?b8
        JREQ      L:??ADC1_AWDChannelConfig_1
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??ADC1_AWDChannelConfig_1
        LD        A, S:?b8
        CP        A, #0x2
        JREQ      L:??ADC1_AWDChannelConfig_1
        LD        A, S:?b8
        CP        A, #0x3
        JREQ      L:??ADC1_AWDChannelConfig_1
        LD        A, S:?b8
        CP        A, #0x4
        JREQ      L:??ADC1_AWDChannelConfig_1
        LD        A, S:?b8
        CP        A, #0x5
        JREQ      L:??ADC1_AWDChannelConfig_1
        LD        A, S:?b8
        CP        A, #0x6
        JREQ      L:??ADC1_AWDChannelConfig_1
        LD        A, S:?b8
        CP        A, #0x7
        JREQ      L:??ADC1_AWDChannelConfig_1
        LD        A, S:?b8
        CP        A, #0x8
        JREQ      L:??ADC1_AWDChannelConfig_1
        LD        A, S:?b8
        CP        A, #0xc
        JREQ      L:??ADC1_AWDChannelConfig_1
        LD        A, S:?b8
        CP        A, #0x9
        JREQ      L:??ADC1_AWDChannelConfig_1
        LDW       X, #0x1af
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_AWDChannelConfig_1:
        LD        A, S:?b8
        CP        A, #0x8
        JRNC      L:??ADC1_AWDChannelConfig_2
        TNZ       S:?b9
        JREQ      L:??ADC1_AWDChannelConfig_3
        CLRW      X
        INCW      X
        LD        A, S:?b8
        CALLF     L:?sll16_x_x_a
        LD        A, XL
        OR        A, L:0x540f
        LD        L:0x540f, A
        JPF       L:?epilogue_w4
??ADC1_AWDChannelConfig_3:
        CLRW      X
        INCW      X
        LD        A, S:?b8
        CALLF     L:?sll16_x_x_a
        LD        A, XL
        CPL       A
        AND       A, L:0x540f
        LD        L:0x540f, A
        JPF       L:?epilogue_w4
??ADC1_AWDChannelConfig_2:
        TNZ       S:?b9
        JREQ      L:??ADC1_AWDChannelConfig_4
        LD        A, S:?b8
        ADD       A, #0xf8
        CLRW      X
        INCW      X
        CALLF     L:?sll16_x_x_a
        LD        A, XL
        OR        A, L:0x540e
        LD        L:0x540e, A
        JPF       L:?epilogue_w4
??ADC1_AWDChannelConfig_4:
        LD        A, S:?b8
        ADD       A, #0xf8
        CLRW      X
        INCW      X
        CALLF     L:?sll16_x_x_a
        LD        A, XL
        CPL       A
        AND       A, L:0x540e
        LD        L:0x540e, A
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ADC1_SetHighThreshold:
        LDW       Y, X
        LDW       X, Y
        SRLW      X
        SRLW      X
        LD        A, XL
        LD        L:0x5408, A
        LD        A, YL
        LD        L:0x5409, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ADC1_SetLowThreshold:
        LD        A, XL
        LD        L:0x540b, A
        SRLW      X
        SRLW      X
        LD        A, XL
        LD        L:0x540a, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ADC1_GetBufferValue:
        PUSH      S:?b8
        LD        S:?b8, A
        CLRW      Y
        CLR       S:?b0
        LD        A, S:?b8
        CP        A, #0xa
        JRC       L:??ADC1_GetBufferValue_0
        LDW       X, #0x1ef
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_GetBufferValue_0:
        BTJF      L:0x5402, #0x3, L:??ADC1_GetBufferValue_1
        LD        A, S:?b8
        SLL       A
        CLRW      X
        LD        XL, A
        ADDW      X, #0x53e1
        LD        A, (X)
        LD        S:?b0, A
        LD        A, S:?b8
        SLL       A
        CLRW      X
        LD        XL, A
        ADDW      X, #0x53e0
        LD        A, (X)
        CLRW      Y
        LD        YL, A
        LDW       X, Y
        CLR       A
        RLWA      X, A
        CLRW      Y
        EXG       A, YL
        LD        A, S:?b0
        EXG       A, YL
        LDW       S:?w0, X
        EXGW      X, Y
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        EXGW      X, Y
        JRA       L:??ADC1_GetBufferValue_2
??ADC1_GetBufferValue_1:
        LD        A, S:?b8
        SLL       A
        CLRW      X
        LD        XL, A
        ADDW      X, #0x53e0
        LD        A, (X)
        CLRW      Y
        LD        YL, A
        LD        A, S:?b8
        SLL       A
        CLRW      X
        LD        XL, A
        ADDW      X, #0x53e1
        LD        A, (X)
        LD        S:?b0, A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        CALLF     L:?sll16_x_x_6
        LDW       S:?w1, X
        LDW       X, Y
        CLR       A
        RLWA      X, A
        LDW       S:?w0, X
        LDW       Y, S:?w1
        EXGW      X, Y
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        EXGW      X, Y
??ADC1_GetBufferValue_2:
        LDW       X, Y
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ADC1_GetAWDChannelStatus:
        PUSH      S:?b8
        LD        S:?b8, A
        CLR       A
        TNZ       S:?b8
        JREQ      L:??ADC1_GetAWDChannelStatus_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??ADC1_GetAWDChannelStatus_0
        LD        A, S:?b8
        CP        A, #0x2
        JREQ      L:??ADC1_GetAWDChannelStatus_0
        LD        A, S:?b8
        CP        A, #0x3
        JREQ      L:??ADC1_GetAWDChannelStatus_0
        LD        A, S:?b8
        CP        A, #0x4
        JREQ      L:??ADC1_GetAWDChannelStatus_0
        LD        A, S:?b8
        CP        A, #0x5
        JREQ      L:??ADC1_GetAWDChannelStatus_0
        LD        A, S:?b8
        CP        A, #0x6
        JREQ      L:??ADC1_GetAWDChannelStatus_0
        LD        A, S:?b8
        CP        A, #0x7
        JREQ      L:??ADC1_GetAWDChannelStatus_0
        LD        A, S:?b8
        CP        A, #0x8
        JREQ      L:??ADC1_GetAWDChannelStatus_0
        LD        A, S:?b8
        CP        A, #0xc
        JREQ      L:??ADC1_GetAWDChannelStatus_0
        LD        A, S:?b8
        CP        A, #0x9
        JREQ      L:??ADC1_GetAWDChannelStatus_0
        LDW       X, #0x213
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_GetAWDChannelStatus_0:
        LD        A, S:?b8
        CP        A, #0x8
        JRNC      L:??ADC1_GetAWDChannelStatus_1
        CLRW      X
        INCW      X
        LD        A, S:?b8
        CALLF     L:?sll16_x_x_a
        LD        A, XL
        AND       A, L:0x540d
        JRA       L:??ADC1_GetAWDChannelStatus_2
??ADC1_GetAWDChannelStatus_1:
        LD        A, S:?b8
        ADD       A, #0xf8
        CLRW      X
        INCW      X
        CALLF     L:?sll16_x_x_a
        LD        A, XL
        AND       A, L:0x540c
??ADC1_GetAWDChannelStatus_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ADC1_GetFlagStatus:
        PUSH      S:?b8
        LD        S:?b8, A
        CLR       S:?b1
        CLR       S:?b0
        LD        A, S:?b8
        CP        A, #0x80
        JREQ      L:??ADC1_GetFlagStatus_0
        LD        A, S:?b8
        CP        A, #0x41
        JREQ      L:??ADC1_GetFlagStatus_0
        LD        A, S:?b8
        CP        A, #0x40
        JREQ      L:??ADC1_GetFlagStatus_0
        LD        A, S:?b8
        CP        A, #0x10
        JREQ      L:??ADC1_GetFlagStatus_0
        LD        A, S:?b8
        CP        A, #0x11
        JREQ      L:??ADC1_GetFlagStatus_0
        LD        A, S:?b8
        CP        A, #0x12
        JREQ      L:??ADC1_GetFlagStatus_0
        LD        A, S:?b8
        CP        A, #0x13
        JREQ      L:??ADC1_GetFlagStatus_0
        LD        A, S:?b8
        CP        A, #0x14
        JREQ      L:??ADC1_GetFlagStatus_0
        LD        A, S:?b8
        CP        A, #0x15
        JREQ      L:??ADC1_GetFlagStatus_0
        LD        A, S:?b8
        CP        A, #0x16
        JREQ      L:??ADC1_GetFlagStatus_0
        LD        A, S:?b8
        CP        A, #0x17
        JREQ      L:??ADC1_GetFlagStatus_0
        LD        A, S:?b8
        CP        A, #0x18
        JREQ      L:??ADC1_GetFlagStatus_0
        LD        A, S:?b8
        CP        A, #0x19
        JREQ      L:??ADC1_GetFlagStatus_0
        LDW       X, #0x22d
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_GetFlagStatus_0:
        LD        A, S:?b8
        AND       A, #0xf
        CP        A, #0x1
        JRNE      L:??ADC1_GetFlagStatus_1
        LD        A, L:0x5403
        AND       A, #0x40
        LD        S:?b1, A
        JRA       L:??ADC1_GetFlagStatus_2
??ADC1_GetFlagStatus_1:
        LD        A, S:?b8
        AND       A, #0xf0
        CP        A, #0x10
        JRNE      L:??ADC1_GetFlagStatus_3
        LD        A, S:?b8
        AND       A, #0xf
        LD        S:?b0, A
        LD        A, S:?b0
        CP        A, #0x8
        JRNC      L:??ADC1_GetFlagStatus_4
        CLRW      X
        INCW      X
        LD        A, S:?b0
        CALLF     L:?sll16_x_x_a
        LD        A, XL
        AND       A, L:0x540d
        LD        S:?b1, A
        JRA       L:??ADC1_GetFlagStatus_2
??ADC1_GetFlagStatus_4:
        LD        A, S:?b0
        ADD       A, #0xf8
        CLRW      X
        INCW      X
        CALLF     L:?sll16_x_x_a
        LD        A, XL
        AND       A, L:0x540c
        LD        S:?b1, A
        JRA       L:??ADC1_GetFlagStatus_2
??ADC1_GetFlagStatus_3:
        LD        A, S:?b8
        AND       A, L:0x5400
        LD        S:?b1, A
??ADC1_GetFlagStatus_2:
        LD        A, S:?b1
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ADC1_ClearFlag:
        PUSH      S:?b8
        LD        S:?b8, A
        CLR       S:?b0
        LD        A, S:?b8
        CP        A, #0x80
        JREQ      L:??ADC1_ClearFlag_0
        LD        A, S:?b8
        CP        A, #0x41
        JREQ      L:??ADC1_ClearFlag_0
        LD        A, S:?b8
        CP        A, #0x40
        JREQ      L:??ADC1_ClearFlag_0
        LD        A, S:?b8
        CP        A, #0x10
        JREQ      L:??ADC1_ClearFlag_0
        LD        A, S:?b8
        CP        A, #0x11
        JREQ      L:??ADC1_ClearFlag_0
        LD        A, S:?b8
        CP        A, #0x12
        JREQ      L:??ADC1_ClearFlag_0
        LD        A, S:?b8
        CP        A, #0x13
        JREQ      L:??ADC1_ClearFlag_0
        LD        A, S:?b8
        CP        A, #0x14
        JREQ      L:??ADC1_ClearFlag_0
        LD        A, S:?b8
        CP        A, #0x15
        JREQ      L:??ADC1_ClearFlag_0
        LD        A, S:?b8
        CP        A, #0x16
        JREQ      L:??ADC1_ClearFlag_0
        LD        A, S:?b8
        CP        A, #0x17
        JREQ      L:??ADC1_ClearFlag_0
        LD        A, S:?b8
        CP        A, #0x18
        JREQ      L:??ADC1_ClearFlag_0
        LD        A, S:?b8
        CP        A, #0x19
        JREQ      L:??ADC1_ClearFlag_0
        LDW       X, #0x254
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_ClearFlag_0:
        LD        A, S:?b8
        AND       A, #0xf
        CP        A, #0x1
        JRNE      L:??ADC1_ClearFlag_1
        BRES      L:0x5403, #0x6
        JRA       L:??ADC1_ClearFlag_2
??ADC1_ClearFlag_1:
        LD        A, S:?b8
        AND       A, #0xf0
        CP        A, #0x10
        JRNE      L:??ADC1_ClearFlag_3
        LD        A, S:?b8
        AND       A, #0xf
        LD        S:?b0, A
        LD        A, S:?b0
        CP        A, #0x8
        JRNC      L:??ADC1_ClearFlag_4
        CLRW      X
        INCW      X
        LD        A, S:?b0
        CALLF     L:?sll16_x_x_a
        LD        A, XL
        CPL       A
        AND       A, L:0x540d
        LD        L:0x540d, A
        JRA       L:??ADC1_ClearFlag_2
??ADC1_ClearFlag_4:
        LD        A, S:?b0
        ADD       A, #0xf8
        CLRW      X
        INCW      X
        CALLF     L:?sll16_x_x_a
        LD        A, XL
        CPL       A
        AND       A, L:0x540c
        LD        L:0x540c, A
        JRA       L:??ADC1_ClearFlag_2
??ADC1_ClearFlag_3:
        CPL       S:?b8
        LD        A, S:?b8
        AND       A, L:0x5400
        LD        L:0x5400, A
??ADC1_ClearFlag_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ADC1_GetITStatus:
        CALLF     L:?push_w4
        LDW       S:?w4, X
        CLR       S:?b0
        CLR       A
        LDW       X, S:?w4
        CPW       X, #0x80
        JREQ      L:??ADC1_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x140
        JREQ      L:??ADC1_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x110
        JREQ      L:??ADC1_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x111
        JREQ      L:??ADC1_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x112
        JREQ      L:??ADC1_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x113
        JREQ      L:??ADC1_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x114
        JREQ      L:??ADC1_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x115
        JREQ      L:??ADC1_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x116
        JREQ      L:??ADC1_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x117
        JREQ      L:??ADC1_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x118
        JREQ      L:??ADC1_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x11c
        JREQ      L:??ADC1_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x119
        JREQ      L:??ADC1_GetITStatus_0
        LDW       X, #0x286
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_GetITStatus_0:
        LD        A, S:?b9
        AND       A, #0xf0
        CP        A, #0x10
        JRNE      L:??ADC1_GetITStatus_1
        LD        A, S:?b9
        AND       A, #0xf
        CP        A, #0x8
        JRNC      L:??ADC1_GetITStatus_2
        CLRW      X
        INCW      X
        CALLF     L:?sll16_x_x_a
        LD        A, XL
        AND       A, L:0x540d
        LD        S:?b0, A
        JRA       L:??ADC1_GetITStatus_3
??ADC1_GetITStatus_2:
        ADD       A, #0xf8
        CLRW      X
        INCW      X
        CALLF     L:?sll16_x_x_a
        LD        A, XL
        AND       A, L:0x540c
        LD        S:?b0, A
        JRA       L:??ADC1_GetITStatus_3
??ADC1_GetITStatus_1:
        LD        A, S:?b9
        AND       A, L:0x5400
        LD        S:?b0, A
??ADC1_GetITStatus_3:
        LD        A, S:?b0
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ADC1_ClearITPendingBit:
        CALLF     L:?push_w4
        LDW       S:?w4, X
        CLR       A
        LDW       X, S:?w4
        CPW       X, #0x80
        JREQ      L:??ADC1_ClearITPendingBit_0
        LDW       X, S:?w4
        CPW       X, #0x140
        JREQ      L:??ADC1_ClearITPendingBit_0
        LDW       X, S:?w4
        CPW       X, #0x110
        JREQ      L:??ADC1_ClearITPendingBit_0
        LDW       X, S:?w4
        CPW       X, #0x111
        JREQ      L:??ADC1_ClearITPendingBit_0
        LDW       X, S:?w4
        CPW       X, #0x112
        JREQ      L:??ADC1_ClearITPendingBit_0
        LDW       X, S:?w4
        CPW       X, #0x113
        JREQ      L:??ADC1_ClearITPendingBit_0
        LDW       X, S:?w4
        CPW       X, #0x114
        JREQ      L:??ADC1_ClearITPendingBit_0
        LDW       X, S:?w4
        CPW       X, #0x115
        JREQ      L:??ADC1_ClearITPendingBit_0
        LDW       X, S:?w4
        CPW       X, #0x116
        JREQ      L:??ADC1_ClearITPendingBit_0
        LDW       X, S:?w4
        CPW       X, #0x117
        JREQ      L:??ADC1_ClearITPendingBit_0
        LDW       X, S:?w4
        CPW       X, #0x118
        JREQ      L:??ADC1_ClearITPendingBit_0
        LDW       X, S:?w4
        CPW       X, #0x11c
        JREQ      L:??ADC1_ClearITPendingBit_0
        LDW       X, S:?w4
        CPW       X, #0x119
        JREQ      L:??ADC1_ClearITPendingBit_0
        LDW       X, #0x2b4
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ADC1_ClearITPendingBit_0:
        LD        A, S:?b9
        AND       A, #0xf0
        CP        A, #0x10
        JRNE      L:??ADC1_ClearITPendingBit_1
        LD        A, S:?b9
        AND       A, #0xf
        CP        A, #0x8
        JRNC      L:??ADC1_ClearITPendingBit_2
        CLRW      X
        INCW      X
        CALLF     L:?sll16_x_x_a
        LD        A, XL
        CPL       A
        AND       A, L:0x540d
        LD        L:0x540d, A
        JPF       L:?epilogue_w4
??ADC1_ClearITPendingBit_2:
        ADD       A, #0xf8
        CLRW      X
        INCW      X
        CALLF     L:?sll16_x_x_a
        LD        A, XL
        CPL       A
        AND       A, L:0x540c
        LD        L:0x540c, A
        JPF       L:?epilogue_w4
??ADC1_ClearITPendingBit_1:
        LD        A, S:?b9
        CPL       A
        AND       A, L:0x5400
        LD        L:0x5400, A
        JPF       L:?epilogue_w4

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
        DC8 5FH, 61H, 64H, 63H, 31H, 20H, 2DH, 20H
        DC8 43H, 6FH, 70H, 79H, 2EH, 63H, 0

        END
// 
// 2 664 bytes in section .far_func.text
//    95 bytes in section .near.rodata
// 
// 2 664 bytes of CODE  memory
//    95 bytes of CONST memory
//
//Errors: none
//Warnings: none
