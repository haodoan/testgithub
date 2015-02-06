///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR C/C++ Compiler V1.30.1.50036 for STM8            24/Jan/2015  12:32:54 /
// Copyright 2010-2011 IAR Systems AB.                                        /
//                                                                            /
//    Source file  =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_i2c.c                         /
//    Command line =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_i2c.c -e -Ol --no_cse         /
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
//                    Periph_Template\EWSTM8\STM8S208\List\stm8s_i2c.s        /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm8s_i2c

        EXTERN ?b0
        EXTERN ?b1
        EXTERN ?b10
        EXTERN ?b12
        EXTERN ?b13
        EXTERN ?b14
        EXTERN ?b15
        EXTERN ?b3
        EXTERN ?b4
        EXTERN ?b5
        EXTERN ?b6
        EXTERN ?b8
        EXTERN ?b9
        EXTERN ?epilogue_l2_l3
        EXTERN ?epilogue_w4
        EXTERN ?mov_l0_l2
        EXTERN ?mov_l1_l0
        EXTERN ?mov_l1_l2
        EXTERN ?mov_l2_l0
        EXTERN ?mul16_x_x_w0
        EXTERN ?mul32_l0_l0_l1
        EXTERN ?push_l2
        EXTERN ?push_l3
        EXTERN ?push_w4
        EXTERN ?sdiv16_x_x_y
        EXTERN ?sll32_l0_l0_a
        EXTERN ?udiv32_l0_l0_l1
        EXTERN ?w0
        EXTERN ?w1
        EXTERN ?w2
        EXTERN ?w3
        EXTERN ?w4
        EXTERN ?w5
        EXTERN assert_failed

        PUBLIC I2C_AcknowledgeConfig
        PUBLIC I2C_CheckEvent
        PUBLIC I2C_ClearFlag
        PUBLIC I2C_ClearITPendingBit
        PUBLIC I2C_Cmd
        PUBLIC I2C_DeInit
        PUBLIC I2C_FastModeDutyCycleConfig
        PUBLIC I2C_GeneralCallCmd
        PUBLIC I2C_GenerateSTART
        PUBLIC I2C_GenerateSTOP
        PUBLIC I2C_GetFlagStatus
        PUBLIC I2C_GetITStatus
        PUBLIC I2C_GetLastEvent
        PUBLIC I2C_ITConfig
        PUBLIC I2C_Init
        PUBLIC I2C_ReceiveData
        PUBLIC I2C_Send7bitAddress
        PUBLIC I2C_SendData
        PUBLIC I2C_SoftwareResetCmd
        PUBLIC I2C_StretchClockCmd


        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C_DeInit:
        MOV       L:0x5210, #0x0
        MOV       L:0x5211, #0x0
        MOV       L:0x5212, #0x0
        MOV       L:0x5213, #0x0
        MOV       L:0x5214, #0x0
        MOV       L:0x521a, #0x0
        MOV       L:0x521b, #0x0
        MOV       L:0x521c, #0x0
        MOV       L:0x521d, #0x2
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C_Init:
        CALLF     L:?push_l2
        CALLF     L:?push_l3
        PUSHW     X
        PUSH      S:?b5
        CALLF     L:?mov_l2_l0
        LD        S:?b14, A
        MOV       S:?b15, S:?b4
        MOV       S:?b12, S:?b6
        LDW       X, #0x4
        LDW       S:?w1, X
        CLRW      X
        CLR       S:?b13
        TNZ       S:?b15
        JREQ      L:??I2C_Init_0
        LD        A, S:?b15
        CP        A, #0x1
        JREQ      L:??I2C_Init_0
        LD        A, S:?b15
        CP        A, #0x2
        JREQ      L:??I2C_Init_0
        LDW       X, #0x63
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??I2C_Init_0:
        TNZ       (0x1,SP)
        JREQ      L:??I2C_Init_1
        LD        A, (0x1,SP)
        CP        A, #0x80
        JREQ      L:??I2C_Init_1
        LDW       X, #0x64
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??I2C_Init_1:
        LDW       X, (0x2,SP)
        CPW       X, #0x400
        JRC       L:??I2C_Init_2
        LDW       X, #0x65
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??I2C_Init_2:
        TNZ       S:?b14
        JREQ      L:??I2C_Init_3
        LD        A, S:?b14
        CP        A, #0x40
        JREQ      L:??I2C_Init_3
        LDW       X, #0x66
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??I2C_Init_3:
        LD        A, S:?b12
        SUB       A, #0x1
        CP        A, #0x10
        JRC       L:??I2C_Init_4
        LDW       X, #0x67
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??I2C_Init_4:
        LDW       X, S:?w4
        CPW       X, #0x0
        JRNE      L:??I2C_Init_5
        LDW       X, S:?w5
        CPW       X, #0x0
??I2C_Init_5:
        JREQ      L:??I2C_Init_6
        LDW       X, S:?w4
        CPW       X, #0x6
        JRNE      L:??I2C_Init_7
        LDW       X, S:?w5
        CPW       X, #0x1a81
??I2C_Init_7:
        JRC       L:??I2C_Init_8
??I2C_Init_6:
        LDW       X, #0x68
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??I2C_Init_8:
        LD        A, L:0x5212
        AND       A, #0xc0
        LD        L:0x5212, A
        LD        A, S:?b12
        OR        A, L:0x5212
        LD        L:0x5212, A
        BRES      L:0x5210, #0x0
        LD        A, L:0x521c
        AND       A, #0x30
        LD        L:0x521c, A
        LD        A, L:0x521b
        MOV       L:0x521b, #0x0
        LDW       X, S:?w4
        CPW       X, #0x1
        JRNE      L:??I2C_Init_9
        LDW       X, S:?w5
        CPW       X, #0x86a1
??I2C_Init_9:
        JRNC      ??lb_0
        JP        L:??I2C_Init_10
??lb_0:
        MOV       S:?b13, #0x80
        TNZ       S:?b14
        JRNE      L:??I2C_Init_11
        LDW       X, #0x3
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        CALLF     L:?mov_l1_l0
        CALLF     L:?mov_l0_l2
        CALLF     L:?mul32_l0_l0_l1
        CALLF     L:?mov_l2_l0
        CLRW      X
        EXG       A, XL
        LD        A, S:?b12
        EXG       A, XL
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #0x4240
        LDW       S:?w3, X
        LDW       X, #0xf
        LDW       S:?w2, X
        CALLF     L:?mul32_l0_l0_l1
        CALLF     L:?mov_l1_l2
        CALLF     L:?udiv32_l0_l0_l1
        JRA       L:??I2C_Init_12
??I2C_Init_11:
        LDW       X, #0x19
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        CALLF     L:?mov_l1_l0
        CALLF     L:?mov_l0_l2
        CALLF     L:?mul32_l0_l0_l1
        CALLF     L:?mov_l2_l0
        CLRW      X
        EXG       A, XL
        LD        A, S:?b12
        EXG       A, XL
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #0x4240
        LDW       S:?w3, X
        LDW       X, #0xf
        LDW       S:?w2, X
        CALLF     L:?mul32_l0_l0_l1
        CALLF     L:?mov_l1_l2
        CALLF     L:?udiv32_l0_l0_l1
        LD        A, S:?b13
        OR        A, #0x40
        LD        S:?b13, A
??I2C_Init_12:
        LDW       X, S:?w1
        TNZW      X
        JRNE      L:??I2C_Init_13
        CLRW      X
        INCW      X
        LDW       S:?w1, X
??I2C_Init_13:
        CLRW      X
        EXG       A, XL
        LD        A, S:?b12
        EXG       A, XL
        LDW       Y, X
        LDW       X, #0x3
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        LDW       Y, #0xa
        CALLF     L:?sdiv16_x_x_y
        INCW      X
        LD        A, XL
        LD        L:0x521d, A
        JRA       L:??I2C_Init_14
??I2C_Init_10:
        CALLF     L:?mov_l0_l2
        LD        A, #0x1
        CALLF     L:?sll32_l0_l0_a
        CALLF     L:?mov_l2_l0
        CLRW      X
        EXG       A, XL
        LD        A, S:?b12
        EXG       A, XL
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #0x4240
        LDW       S:?w3, X
        LDW       X, #0xf
        LDW       S:?w2, X
        CALLF     L:?mul32_l0_l0_l1
        CALLF     L:?mov_l1_l2
        CALLF     L:?udiv32_l0_l0_l1
        LDW       X, S:?w1
        CPW       X, #0x4
        JRNC      L:??I2C_Init_15
        LDW       X, #0x4
        LDW       S:?w1, X
??I2C_Init_15:
        LD        A, S:?b12
        ADD       A, #0x1
        LD        L:0x521d, A
??I2C_Init_14:
        LD        A, S:?b3
        LD        L:0x521b, A
        LDW       X, S:?w1
        CLR       A
        RRWA      X, A
        LD        A, XL
        AND       A, #0xf
        OR        A, S:?b13
        LD        L:0x521c, A
        BSET      L:0x5210, #0x0
        LD        A, S:?b15
        CALLF     I2C_AcknowledgeConfig
        LD        A, (0x3,SP)
        LD        L:0x5213, A
        LDW       X, (0x2,SP)
        SLLW      X
        CLR       A
        RLC       A
        RRWA      X, A
        LD        A, XL
        AND       A, #0x6
        PUSH      A
        LD        A, (0x2,SP)
        OR        A, #0x40
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        L:0x5214, A
        ADD       SP, #0x3
        JPF       L:?epilogue_l2_l3

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C_Cmd:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??I2C_Cmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??I2C_Cmd_0
        LDW       X, #0xc8
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??I2C_Cmd_0:
        TNZ       S:?b8
        JREQ      L:??I2C_Cmd_1
        BSET      L:0x5210, #0x0
        JRA       L:??I2C_Cmd_2
??I2C_Cmd_1:
        BRES      L:0x5210, #0x0
??I2C_Cmd_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C_GeneralCallCmd:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??I2C_GeneralCallCmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??I2C_GeneralCallCmd_0
        LDW       X, #0xe0
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??I2C_GeneralCallCmd_0:
        TNZ       S:?b8
        JREQ      L:??I2C_GeneralCallCmd_1
        BSET      L:0x5210, #0x6
        JRA       L:??I2C_GeneralCallCmd_2
??I2C_GeneralCallCmd_1:
        BRES      L:0x5210, #0x6
??I2C_GeneralCallCmd_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C_GenerateSTART:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??I2C_GenerateSTART_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??I2C_GenerateSTART_0
        LDW       X, #0xfa
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??I2C_GenerateSTART_0:
        TNZ       S:?b8
        JREQ      L:??I2C_GenerateSTART_1
        BSET      L:0x5211, #0x0
        JRA       L:??I2C_GenerateSTART_2
??I2C_GenerateSTART_1:
        BRES      L:0x5211, #0x0
??I2C_GenerateSTART_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C_GenerateSTOP:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??I2C_GenerateSTOP_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??I2C_GenerateSTOP_0
        LDW       X, #0x112
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??I2C_GenerateSTOP_0:
        TNZ       S:?b8
        JREQ      L:??I2C_GenerateSTOP_1
        BSET      L:0x5211, #0x1
        JRA       L:??I2C_GenerateSTOP_2
??I2C_GenerateSTOP_1:
        BRES      L:0x5211, #0x1
??I2C_GenerateSTOP_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C_SoftwareResetCmd:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??I2C_SoftwareResetCmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??I2C_SoftwareResetCmd_0
        LDW       X, #0x129
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??I2C_SoftwareResetCmd_0:
        TNZ       S:?b8
        JREQ      L:??I2C_SoftwareResetCmd_1
        BSET      L:0x5211, #0x7
        JRA       L:??I2C_SoftwareResetCmd_2
??I2C_SoftwareResetCmd_1:
        BRES      L:0x5211, #0x7
??I2C_SoftwareResetCmd_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C_StretchClockCmd:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??I2C_StretchClockCmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??I2C_StretchClockCmd_0
        LDW       X, #0x141
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??I2C_StretchClockCmd_0:
        TNZ       S:?b8
        JREQ      L:??I2C_StretchClockCmd_1
        BRES      L:0x5210, #0x7
        JRA       L:??I2C_StretchClockCmd_2
??I2C_StretchClockCmd_1:
        BSET      L:0x5210, #0x7
??I2C_StretchClockCmd_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C_AcknowledgeConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??I2C_AcknowledgeConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??I2C_AcknowledgeConfig_0
        LD        A, S:?b8
        CP        A, #0x2
        JREQ      L:??I2C_AcknowledgeConfig_0
        LDW       X, #0x15b
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??I2C_AcknowledgeConfig_0:
        TNZ       S:?b8
        JRNE      L:??I2C_AcknowledgeConfig_1
        BRES      L:0x5211, #0x2
        JRA       L:??I2C_AcknowledgeConfig_2
??I2C_AcknowledgeConfig_1:
        BSET      L:0x5211, #0x2
        LD        A, S:?b8
        CP        A, #0x1
        JRNE      L:??I2C_AcknowledgeConfig_3
        BRES      L:0x5211, #0x3
        JRA       L:??I2C_AcknowledgeConfig_2
??I2C_AcknowledgeConfig_3:
        BSET      L:0x5211, #0x3
??I2C_AcknowledgeConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C_ITConfig:
        CALLF     L:?push_w4
        LD        S:?b8, A
        MOV       S:?b9, S:?b0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??I2C_ITConfig_0
        LD        A, S:?b8
        CP        A, #0x2
        JREQ      L:??I2C_ITConfig_0
        LD        A, S:?b8
        CP        A, #0x4
        JREQ      L:??I2C_ITConfig_0
        LD        A, S:?b8
        CP        A, #0x3
        JREQ      L:??I2C_ITConfig_0
        LD        A, S:?b8
        CP        A, #0x5
        JREQ      L:??I2C_ITConfig_0
        LD        A, S:?b8
        CP        A, #0x6
        JREQ      L:??I2C_ITConfig_0
        LD        A, S:?b8
        CP        A, #0x7
        JREQ      L:??I2C_ITConfig_0
        LDW       X, #0x180
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??I2C_ITConfig_0:
        TNZ       S:?b9
        JREQ      L:??I2C_ITConfig_1
        LD        A, S:?b9
        CP        A, #0x1
        JREQ      L:??I2C_ITConfig_1
        LDW       X, #0x181
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??I2C_ITConfig_1:
        TNZ       S:?b9
        JREQ      L:??I2C_ITConfig_2
        LD        A, S:?b8
        OR        A, L:0x521a
        LD        L:0x521a, A
        JPF       L:?epilogue_w4
??I2C_ITConfig_2:
        CPL       S:?b8
        LD        A, S:?b8
        AND       A, L:0x521a
        LD        L:0x521a, A
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C_FastModeDutyCycleConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??I2C_FastModeDutyCycleConfig_0
        LD        A, S:?b8
        CP        A, #0x40
        JREQ      L:??I2C_FastModeDutyCycleConfig_0
        LDW       X, #0x199
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??I2C_FastModeDutyCycleConfig_0:
        LD        A, S:?b8
        CP        A, #0x40
        JRNE      L:??I2C_FastModeDutyCycleConfig_1
        BSET      L:0x521c, #0x6
        JRA       L:??I2C_FastModeDutyCycleConfig_2
??I2C_FastModeDutyCycleConfig_1:
        BRES      L:0x521c, #0x6
??I2C_FastModeDutyCycleConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C_ReceiveData:
        LD        A, L:0x5216
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C_Send7bitAddress:
        CALLF     L:?push_w4
        LD        S:?b9, A
        MOV       S:?b8, S:?b0
        LD        A, S:?b9
        AND       A, #0x1
        CP        A, #0x0
        JREQ      L:??I2C_Send7bitAddress_0
        LDW       X, #0x1bc
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??I2C_Send7bitAddress_0:
        TNZ       S:?b8
        JREQ      L:??I2C_Send7bitAddress_1
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??I2C_Send7bitAddress_1
        LDW       X, #0x1bd
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??I2C_Send7bitAddress_1:
        LD        A, S:?b9
        AND       A, #0xfe
        LD        S:?b9, A
        LD        A, S:?b8
        OR        A, S:?b9
        LD        L:0x5216, A
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C_SendData:
        LD        L:0x5216, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C_CheckEvent:
        CALLF     L:?push_w4
        SUB       SP, #0x2
        LDW       S:?w4, X
        CLRW      X
        LDW       (0x1,SP), X
        CLR       S:?b1
        CLR       A
        CLR       S:?b0
        LDW       X, S:?w4
        CPW       X, #0x682
        JREQ      L:??I2C_CheckEvent_0
        LDW       X, S:?w4
        CPW       X, #0x202
        JREQ      L:??I2C_CheckEvent_0
        LDW       X, S:?w4
        CPW       X, #0x1200
        JREQ      L:??I2C_CheckEvent_0
        LDW       X, S:?w4
        CPW       X, #0x240
        JREQ      L:??I2C_CheckEvent_0
        LDW       X, S:?w4
        CPW       X, #0x350
        JREQ      L:??I2C_CheckEvent_0
        LDW       X, S:?w4
        CPW       X, #0x684
        JREQ      L:??I2C_CheckEvent_0
        LDW       X, S:?w4
        CPW       X, #0x794
        JREQ      L:??I2C_CheckEvent_0
        LDW       X, S:?w4
        CPW       X, #0x4
        JREQ      L:??I2C_CheckEvent_0
        LDW       X, S:?w4
        CPW       X, #0x10
        JREQ      L:??I2C_CheckEvent_0
        LDW       X, S:?w4
        CPW       X, #0x301
        JREQ      L:??I2C_CheckEvent_0
        LDW       X, S:?w4
        CPW       X, #0x782
        JREQ      L:??I2C_CheckEvent_0
        LDW       X, S:?w4
        CPW       X, #0x302
        JREQ      L:??I2C_CheckEvent_0
        LDW       X, S:?w4
        CPW       X, #0x340
        JREQ      L:??I2C_CheckEvent_0
        LDW       X, S:?w4
        CPW       X, #0x784
        JREQ      L:??I2C_CheckEvent_0
        LDW       X, S:?w4
        CPW       X, #0x780
        JREQ      L:??I2C_CheckEvent_0
        LDW       X, S:?w4
        CPW       X, #0x308
        JREQ      L:??I2C_CheckEvent_0
        LDW       X, #0x24b
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??I2C_CheckEvent_0:
        LDW       X, S:?w4
        CPW       X, #0x4
        JRNE      L:??I2C_CheckEvent_1
        LD        A, L:0x5218
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0x4
        RLWA      X, A
        LDW       (0x1,SP), X
        JRA       L:??I2C_CheckEvent_2
??I2C_CheckEvent_1:
        LD        A, L:0x5217
        LD        S:?b1, A
        LD        A, L:0x5219
        CLRW      X
        LD        XL, A
        CLR       A
        RLWA      X, A
        LDW       Y, X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b1
        EXG       A, XL
        LDW       S:?w0, X
        LDW       X, Y
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       (0x1,SP), X
??I2C_CheckEvent_2:
        LDW       X, (0x1,SP)
        RRWA      X, A
        AND       A, S:?b9
        RRWA      X, A
        AND       A, S:?b8
        RRWA      X, A
        CPW       X, S:?w4
        JRNE      L:??I2C_CheckEvent_3
        MOV       S:?b0, #0x1
        JRA       L:??I2C_CheckEvent_4
??I2C_CheckEvent_3:
        CLR       S:?b0
??I2C_CheckEvent_4:
        LD        A, S:?b0
        ADD       SP, #0x2
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C_GetLastEvent:
        SUB       SP, #0x2
        CLRW      X
        LDW       (0x1,SP), X
        CLRW      Y
        CLRW      X
        BTJF      L:0x5218, #0x2, L:??I2C_GetLastEvent_0
        LDW       X, #0x4
        LDW       (0x1,SP), X
        JRA       L:??I2C_GetLastEvent_1
??I2C_GetLastEvent_0:
        LD        A, L:0x5217
        CLRW      Y
        LD        YL, A
        LD        A, L:0x5219
        CLRW      X
        LD        XL, A
        CLR       A
        RLWA      X, A
        LDW       S:?w0, Y
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       (0x1,SP), X
??I2C_GetLastEvent_1:
        LDW       X, (0x1,SP)
        ADD       SP, #0x2
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C_GetFlagStatus:
        CALLF     L:?push_w4
        PUSH      S:?b10
        LDW       S:?w4, X
        CLR       S:?b10
        CLR       A
        CLR       S:?b0
        LDW       X, S:?w4
        CPW       X, #0x180
        JREQ      L:??I2C_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x140
        JREQ      L:??I2C_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x110
        JREQ      L:??I2C_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x108
        JREQ      L:??I2C_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x104
        JREQ      L:??I2C_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x102
        JREQ      L:??I2C_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x101
        JREQ      L:??I2C_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x220
        JREQ      L:??I2C_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x208
        JREQ      L:??I2C_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x204
        JREQ      L:??I2C_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x202
        JREQ      L:??I2C_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x201
        JREQ      L:??I2C_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x310
        JREQ      L:??I2C_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x304
        JREQ      L:??I2C_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x302
        JREQ      L:??I2C_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x301
        JREQ      L:??I2C_GetFlagStatus_0
        LDW       X, #0x2af
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??I2C_GetFlagStatus_0:
        LDW       X, S:?w4
        CLR       A
        RRWA      X, A
        LD        A, XL
        DEC       A
        JREQ      L:??I2C_GetFlagStatus_1
        DEC       A
        JREQ      L:??I2C_GetFlagStatus_2
        DEC       A
        JREQ      L:??I2C_GetFlagStatus_3
        JRA       L:??I2C_GetFlagStatus_4
??I2C_GetFlagStatus_1:
        LD        A, L:0x5217
        LD        S:?b10, A
        JRA       L:??I2C_GetFlagStatus_4
??I2C_GetFlagStatus_2:
        LD        A, L:0x5218
        LD        S:?b10, A
        JRA       L:??I2C_GetFlagStatus_4
??I2C_GetFlagStatus_3:
        LD        A, L:0x5219
        LD        S:?b10, A
??I2C_GetFlagStatus_4:
        LD        A, S:?b9
        AND       A, S:?b10
        CP        A, #0x0
        JREQ      L:??I2C_GetFlagStatus_5
        MOV       S:?b0, #0x1
        JRA       L:??I2C_GetFlagStatus_6
??I2C_GetFlagStatus_5:
        CLR       S:?b0
??I2C_GetFlagStatus_6:
        LD        A, S:?b0
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C_ClearFlag:
        CALLF     L:?push_w4
        LDW       S:?w4, X
        CLRW      Y
        LDW       X, S:?w4
        RLWA      X, A
        AND       A, #0xfd
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        TNZW      X
        JRNE      L:??I2C_ClearFlag_0
        LDW       X, S:?w4
        TNZW      X
        JRNE      L:??I2C_ClearFlag_1
??I2C_ClearFlag_0:
        LDW       X, #0x2fc
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??I2C_ClearFlag_1:
        LDW       X, S:?w4
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xff
        RLWA      X, A
        LDW       Y, X
        LD        A, YL
        CPL       A
        LD        L:0x5218, A
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C_GetITStatus:
        CALLF     L:?push_w4
        SUB       SP, #0x1
        LDW       S:?w4, X
        CLR       S:?b0
        CLR       A
        LD        (0x1,SP), A
        CLRW      X
        LDW       Y, S:?w4
        CPW       Y, #0x1680
        JREQ      L:??I2C_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x1640
        JREQ      L:??I2C_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x1210
        JREQ      L:??I2C_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x1208
        JREQ      L:??I2C_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x1204
        JREQ      L:??I2C_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x1202
        JREQ      L:??I2C_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x1201
        JREQ      L:??I2C_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x2220
        JREQ      L:??I2C_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x2108
        JREQ      L:??I2C_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x2104
        JREQ      L:??I2C_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x2102
        JREQ      L:??I2C_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x2101
        JREQ      L:??I2C_GetITStatus_0
        LDW       X, #0x31f
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??I2C_GetITStatus_0:
        LDW       X, S:?w4
        CLR       A
        RRWA      X, A
        LD        A, XL
        AND       A, #0x7
        CLRW      X
        LD        XL, A
        LD        A, XL
        AND       A, L:0x521a
        LD        (0x1,SP), A
        LD        A, S:?b9
        AND       A, L:0x5218
        CP        A, #0x0
        JREQ      L:??I2C_GetITStatus_1
        TNZ       (0x1,SP)
        JREQ      L:??I2C_GetITStatus_1
        MOV       S:?b0, #0x1
        JRA       L:??I2C_GetITStatus_2
??I2C_GetITStatus_1:
        CLR       S:?b0
??I2C_GetITStatus_2:
        LD        A, S:?b0
        ADD       SP, #0x1
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
I2C_ClearITPendingBit:
        CALLF     L:?push_w4
        LDW       S:?w4, X
        CLRW      X
        LDW       Y, S:?w4
        CPW       Y, #0x2220
        JREQ      L:??I2C_ClearITPendingBit_0
        LDW       X, S:?w4
        CPW       X, #0x2108
        JREQ      L:??I2C_ClearITPendingBit_0
        LDW       X, S:?w4
        CPW       X, #0x2104
        JREQ      L:??I2C_ClearITPendingBit_0
        LDW       X, S:?w4
        CPW       X, #0x2102
        JREQ      L:??I2C_ClearITPendingBit_0
        LDW       X, S:?w4
        CPW       X, #0x2101
        JREQ      L:??I2C_ClearITPendingBit_0
        LDW       X, #0x36e
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??I2C_ClearITPendingBit_0:
        LDW       X, S:?w4
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0xff
        RLWA      X, A
        LD        A, XL
        CPL       A
        LD        L:0x5218, A
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
        DC8 5FH, 69H, 32H, 63H, 2EH, 63H, 0

        END
// 
// 1 970 bytes in section .far_func.text
//    87 bytes in section .near.rodata
// 
// 1 970 bytes of CODE  memory
//    87 bytes of CONST memory
//
//Errors: none
//Warnings: none
