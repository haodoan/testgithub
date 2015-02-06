///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR C/C++ Compiler V1.30.1.50036 for STM8            24/Jan/2015  12:32:29 /
// Copyright 2010-2011 IAR Systems AB.                                        /
//                                                                            /
//    Source file  =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_uart1.c                       /
//    Command line =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_uart1.c -e -Ol --no_cse       /
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
//                    Periph_Template\EWSTM8\STM8S208\List\stm8s_uart1.s      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm8s_uart1

        EXTERN ?b0
        EXTERN ?b1
        EXTERN ?b10
        EXTERN ?b2
        EXTERN ?b3
        EXTERN ?b4
        EXTERN ?b5
        EXTERN ?b6
        EXTERN ?b7
        EXTERN ?b8
        EXTERN ?b9
        EXTERN ?epilogue_l2_l3
        EXTERN ?epilogue_w4
        EXTERN ?load32_l0_dbsp
        EXTERN ?load32_xsp_l0
        EXTERN ?mov_l0_l2
        EXTERN ?mov_l0_l3
        EXTERN ?mov_l1_l0
        EXTERN ?mov_l1_l2
        EXTERN ?mov_l2_l0
        EXTERN ?mov_l3_l0
        EXTERN ?mul32_l0_l0_l1
        EXTERN ?push_l2
        EXTERN ?push_l3
        EXTERN ?push_w4
        EXTERN ?sll16_x_x_a
        EXTERN ?sll32_l0_l0_a
        EXTERN ?sub32_l0_l0_l1
        EXTERN ?udiv32_l0_l0_dl
        EXTERN ?udiv32_l0_l0_l1
        EXTERN ?w0
        EXTERN ?w1
        EXTERN ?w2
        EXTERN ?w3
        EXTERN ?w4
        EXTERN ?w5
        EXTERN ?w6
        EXTERN ?w7
        EXTERN CLK_GetClockFreq
        EXTERN assert_failed

        PUBLIC UART1_ClearFlag
        PUBLIC UART1_ClearITPendingBit
        PUBLIC UART1_Cmd
        PUBLIC UART1_DeInit
        PUBLIC UART1_GetFlagStatus
        PUBLIC UART1_GetITStatus
        PUBLIC UART1_HalfDuplexCmd
        PUBLIC UART1_ITConfig
        PUBLIC UART1_Init
        PUBLIC UART1_IrDACmd
        PUBLIC UART1_IrDAConfig
        PUBLIC UART1_LINBreakDetectionConfig
        PUBLIC UART1_LINCmd
        PUBLIC UART1_ReceiveData8
        PUBLIC UART1_ReceiveData9
        PUBLIC UART1_ReceiverWakeUpCmd
        PUBLIC UART1_SendBreak
        PUBLIC UART1_SendData8
        PUBLIC UART1_SendData9
        PUBLIC UART1_SetAddress
        PUBLIC UART1_SetGuardTime
        PUBLIC UART1_SetPrescaler
        PUBLIC UART1_SmartCardCmd
        PUBLIC UART1_SmartCardNACKCmd
        PUBLIC UART1_WakeUpConfig


        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_DeInit:
        LD        A, L:0x5230
        LD        S:?b0, A
        LD        A, L:0x5231
        MOV       L:0x5233, #0x0
        MOV       L:0x5232, #0x0
        MOV       L:0x5234, #0x0
        MOV       L:0x5235, #0x0
        MOV       L:0x5236, #0x0
        MOV       L:0x5237, #0x0
        MOV       L:0x5238, #0x0
        MOV       L:0x5239, #0x0
        MOV       L:0x523a, #0x0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_Init:
        CALLF     L:?push_l2
        CALLF     L:?push_l3
        PUSH      A
        PUSH      S:?b4
        PUSH      S:?b5
        PUSH      S:?b6
        PUSH      S:?b7
        SUB       SP, #0x4
        CALLF     L:?mov_l3_l0
        LDW       X, #0x0
        LDW       (0x1,SP), X
        LDW       X, #0x0
        LDW       (0x3,SP), X
        CLRW      X
        LDW       S:?w5, X
        LDW       S:?w4, X
        LDW       X, S:?w6
        CPW       X, #0x9
        JRNE      L:??UART1_Init_0
        LDW       X, S:?w7
        CPW       X, #0x8969
??UART1_Init_0:
        JRC       L:??UART1_Init_1
        LDW       X, #0x5a
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??UART1_Init_1:
        TNZ       (0x9,SP)
        JREQ      L:??UART1_Init_2
        LD        A, (0x9,SP)
        CP        A, #0x10
        JREQ      L:??UART1_Init_2
        LDW       X, #0x5b
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??UART1_Init_2:
        TNZ       (0x8,SP)
        JREQ      L:??UART1_Init_3
        LD        A, (0x8,SP)
        CP        A, #0x10
        JREQ      L:??UART1_Init_3
        LD        A, (0x8,SP)
        CP        A, #0x20
        JREQ      L:??UART1_Init_3
        LD        A, (0x8,SP)
        CP        A, #0x30
        JREQ      L:??UART1_Init_3
        LDW       X, #0x5c
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??UART1_Init_3:
        TNZ       (0x7,SP)
        JREQ      L:??UART1_Init_4
        LD        A, (0x7,SP)
        CP        A, #0x4
        JREQ      L:??UART1_Init_4
        LD        A, (0x7,SP)
        CP        A, #0x6
        JREQ      L:??UART1_Init_4
        LDW       X, #0x5d
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??UART1_Init_4:
        LD        A, (0x5,SP)
        CP        A, #0x8
        JREQ      L:??UART1_Init_5
        LD        A, (0x5,SP)
        CP        A, #0x40
        JREQ      L:??UART1_Init_5
        LD        A, (0x5,SP)
        CP        A, #0x4
        JREQ      L:??UART1_Init_5
        LD        A, (0x5,SP)
        CP        A, #0x80
        JREQ      L:??UART1_Init_5
        LD        A, (0x5,SP)
        CP        A, #0xc
        JREQ      L:??UART1_Init_5
        LD        A, (0x5,SP)
        CP        A, #0xc
        JREQ      L:??UART1_Init_5
        LD        A, (0x5,SP)
        CP        A, #0x44
        JREQ      L:??UART1_Init_5
        LD        A, (0x5,SP)
        CP        A, #0xc0
        JREQ      L:??UART1_Init_5
        LD        A, (0x5,SP)
        CP        A, #0x88
        JREQ      L:??UART1_Init_5
        LDW       X, #0x5e
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??UART1_Init_5:
        LD        A, (0x6,SP)
        AND       A, #0x88
        CP        A, #0x88
        JREQ      L:??UART1_Init_6
        LD        A, (0x6,SP)
        AND       A, #0x44
        CP        A, #0x44
        JREQ      L:??UART1_Init_6
        LD        A, (0x6,SP)
        AND       A, #0x22
        CP        A, #0x22
        JREQ      L:??UART1_Init_6
        LD        A, (0x6,SP)
        AND       A, #0x11
        CP        A, #0x11
        JRNE      L:??UART1_Init_7
??UART1_Init_6:
        LDW       X, #0x5f
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??UART1_Init_7:
        BRES      L:0x5234, #0x4
        LD        A, (0x9,SP)
        OR        A, L:0x5234
        LD        L:0x5234, A
        LD        A, L:0x5236
        AND       A, #0xcf
        LD        L:0x5236, A
        LD        A, (0x8,SP)
        OR        A, L:0x5236
        LD        L:0x5236, A
        LD        A, L:0x5234
        AND       A, #0xf9
        LD        L:0x5234, A
        LD        A, (0x7,SP)
        OR        A, L:0x5234
        LD        L:0x5234, A
        LD        A, L:0x5232
        LD        (0x1,SP), A
        MOV       L:0x5232, #0x0
        LD        A, L:0x5233
        AND       A, #0xf
        LD        L:0x5233, A
        LD        A, L:0x5233
        AND       A, #0xf0
        LD        L:0x5233, A
        CALLF     L:?mov_l0_l3
        LD        A, #0x4
        CALLF     L:?sll32_l0_l0_a
        CALLF     L:?mov_l2_l0
        CALLF     CLK_GetClockFreq
        CALLF     L:?mov_l1_l2
        CALLF     L:?udiv32_l0_l0_l1
        LDW       X, #0x1
        CALLF     L:?load32_xsp_l0
        CALLF     L:?mov_l0_l3
        LD        A, #0x4
        CALLF     L:?sll32_l0_l0_a
        CALLF     L:?mov_l2_l0
        CALLF     CLK_GetClockFreq
        LDW       X, #0x64
        LDW       S:?w3, X
        CLRW      X
        LDW       S:?w2, X
        CALLF     L:?mul32_l0_l0_l1
        CALLF     L:?mov_l1_l2
        CALLF     L:?udiv32_l0_l0_l1
        CALLF     L:?mov_l2_l0
        LDW       X, #0x64
        LDW       S:?w3, X
        CLRW      X
        LDW       S:?w2, X
        CALLF     L:?load32_l0_dbsp
        DATA
        DC8       0x1
        CODE
        CALLF     L:?mul32_l0_l0_l1
        CALLF     L:?mov_l1_l0
        CALLF     L:?mov_l0_l2
        CALLF     L:?sub32_l0_l0_l1
        LD        A, #0x4
        CALLF     L:?sll32_l0_l0_a
        CALLF     L:?udiv32_l0_l0_dl
        DATA
        DC32      0x64
        CODE
        LD        A, S:?b3
        AND       A, #0xf
        OR        A, L:0x5233
        LD        L:0x5233, A
        LDW       X, (0x3,SP)
        SRLW      X
        SRLW      X
        SRLW      X
        SRLW      X
        LD        A, XL
        AND       A, #0xf0
        OR        A, L:0x5233
        LD        L:0x5233, A
        LDW       X, (0x3,SP)
        LD        A, XL
        OR        A, L:0x5232
        LD        L:0x5232, A
        LD        A, L:0x5235
        AND       A, #0xf3
        LD        L:0x5235, A
        LD        A, L:0x5236
        AND       A, #0xf8
        LD        L:0x5236, A
        LD        A, (0x6,SP)
        AND       A, #0x7
        OR        A, L:0x5236
        LD        L:0x5236, A
        LD        A, (0x5,SP)
        AND       A, #0x4
        CP        A, #0x0
        JREQ      L:??UART1_Init_8
        BSET      L:0x5235, #0x3
        JRA       L:??UART1_Init_9
??UART1_Init_8:
        BRES      L:0x5235, #0x3
??UART1_Init_9:
        LD        A, (0x5,SP)
        AND       A, #0x8
        CP        A, #0x0
        JREQ      L:??UART1_Init_10
        BSET      L:0x5235, #0x2
        JRA       L:??UART1_Init_11
??UART1_Init_10:
        BRES      L:0x5235, #0x2
??UART1_Init_11:
        LD        A, (0x6,SP)
        AND       A, #0x80
        CP        A, #0x0
        JREQ      L:??UART1_Init_12
        BRES      L:0x5236, #0x3
        JRA       L:??UART1_Init_13
??UART1_Init_12:
        LD        A, (0x6,SP)
        AND       A, #0x8
        OR        A, L:0x5236
        LD        L:0x5236, A
??UART1_Init_13:
        ADD       SP, #0x9
        JPF       L:?epilogue_l2_l3

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_Cmd:
        TNZ       A
        JREQ      L:??UART1_Cmd_0
        BRES      L:0x5234, #0x5
        RETF
??UART1_Cmd_0:
        BSET      L:0x5234, #0x5
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_ITConfig:
        CALLF     L:?push_w4
        PUSH      S:?b10
        LDW       S:?w4, X
        LD        S:?b10, A
        CLR       S:?b1
        CLR       S:?b0
        LDW       X, S:?w4
        CPW       X, #0x100
        JREQ      L:??UART1_ITConfig_0
        LDW       X, S:?w4
        CPW       X, #0x277
        JREQ      L:??UART1_ITConfig_0
        LDW       X, S:?w4
        CPW       X, #0x266
        JREQ      L:??UART1_ITConfig_0
        LDW       X, S:?w4
        CPW       X, #0x205
        JREQ      L:??UART1_ITConfig_0
        LDW       X, S:?w4
        CPW       X, #0x244
        JREQ      L:??UART1_ITConfig_0
        LDW       X, S:?w4
        CPW       X, #0x346
        JREQ      L:??UART1_ITConfig_0
        LDW       X, #0xd2
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??UART1_ITConfig_0:
        TNZ       S:?b10
        JREQ      L:??UART1_ITConfig_1
        LD        A, S:?b10
        CP        A, #0x1
        JREQ      L:??UART1_ITConfig_1
        LDW       X, #0xd3
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??UART1_ITConfig_1:
        LDW       X, S:?w4
        CLR       A
        RRWA      X, A
        EXG       A, XL
        LD        S:?b1, A
        EXG       A, XL
        LD        A, S:?b9
        AND       A, #0xf
        CLRW      X
        INCW      X
        CALLF     L:?sll16_x_x_a
        EXG       A, XL
        LD        S:?b0, A
        EXG       A, XL
        TNZ       S:?b10
        JREQ      L:??UART1_ITConfig_2
        LD        A, S:?b1
        CP        A, #0x1
        JRNE      L:??UART1_ITConfig_3
        LD        A, S:?b0
        OR        A, L:0x5234
        LD        L:0x5234, A
        JRA       L:??UART1_ITConfig_4
??UART1_ITConfig_3:
        LD        A, S:?b1
        CP        A, #0x2
        JRNE      L:??UART1_ITConfig_5
        LD        A, S:?b0
        OR        A, L:0x5235
        LD        L:0x5235, A
        JRA       L:??UART1_ITConfig_4
??UART1_ITConfig_5:
        LD        A, S:?b0
        OR        A, L:0x5237
        LD        L:0x5237, A
        JRA       L:??UART1_ITConfig_4
??UART1_ITConfig_2:
        LD        A, S:?b1
        CP        A, #0x1
        JRNE      L:??UART1_ITConfig_6
        CPL       S:?b0
        LD        A, S:?b0
        AND       A, L:0x5234
        LD        L:0x5234, A
        JRA       L:??UART1_ITConfig_4
??UART1_ITConfig_6:
        LD        A, S:?b1
        CP        A, #0x2
        JRNE      L:??UART1_ITConfig_7
        CPL       S:?b0
        LD        A, S:?b0
        AND       A, L:0x5235
        LD        L:0x5235, A
        JRA       L:??UART1_ITConfig_4
??UART1_ITConfig_7:
        CPL       S:?b0
        LD        A, S:?b0
        AND       A, L:0x5237
        LD        L:0x5237, A
??UART1_ITConfig_4:
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_HalfDuplexCmd:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??UART1_HalfDuplexCmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??UART1_HalfDuplexCmd_0
        LDW       X, #0x104
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??UART1_HalfDuplexCmd_0:
        TNZ       S:?b8
        JREQ      L:??UART1_HalfDuplexCmd_1
        BSET      L:0x5238, #0x3
        JRA       L:??UART1_HalfDuplexCmd_2
??UART1_HalfDuplexCmd_1:
        BRES      L:0x5238, #0x3
??UART1_HalfDuplexCmd_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_IrDAConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??UART1_IrDAConfig_0
        TNZ       S:?b8
        JREQ      L:??UART1_IrDAConfig_0
        LDW       X, #0x118
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??UART1_IrDAConfig_0:
        TNZ       S:?b8
        JREQ      L:??UART1_IrDAConfig_1
        BSET      L:0x5238, #0x2
        JRA       L:??UART1_IrDAConfig_2
??UART1_IrDAConfig_1:
        BRES      L:0x5238, #0x2
??UART1_IrDAConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_IrDACmd:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??UART1_IrDACmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??UART1_IrDACmd_0
        LDW       X, #0x12e
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??UART1_IrDACmd_0:
        TNZ       S:?b8
        JREQ      L:??UART1_IrDACmd_1
        BSET      L:0x5238, #0x1
        JRA       L:??UART1_IrDACmd_2
??UART1_IrDACmd_1:
        BRES      L:0x5238, #0x1
??UART1_IrDACmd_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_LINBreakDetectionConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??UART1_LINBreakDetectionConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??UART1_LINBreakDetectionConfig_0
        LDW       X, #0x145
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??UART1_LINBreakDetectionConfig_0:
        TNZ       S:?b8
        JREQ      L:??UART1_LINBreakDetectionConfig_1
        BSET      L:0x5237, #0x5
        JRA       L:??UART1_LINBreakDetectionConfig_2
??UART1_LINBreakDetectionConfig_1:
        BRES      L:0x5237, #0x5
??UART1_LINBreakDetectionConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_LINCmd:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??UART1_LINCmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??UART1_LINCmd_0
        LDW       X, #0x159
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??UART1_LINCmd_0:
        TNZ       S:?b8
        JREQ      L:??UART1_LINCmd_1
        BSET      L:0x5236, #0x6
        JRA       L:??UART1_LINCmd_2
??UART1_LINCmd_1:
        BRES      L:0x5236, #0x6
??UART1_LINCmd_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_SmartCardCmd:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??UART1_SmartCardCmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??UART1_SmartCardCmd_0
        LDW       X, #0x16e
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??UART1_SmartCardCmd_0:
        TNZ       S:?b8
        JREQ      L:??UART1_SmartCardCmd_1
        BSET      L:0x5238, #0x5
        JRA       L:??UART1_SmartCardCmd_2
??UART1_SmartCardCmd_1:
        BRES      L:0x5238, #0x5
??UART1_SmartCardCmd_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_SmartCardNACKCmd:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??UART1_SmartCardNACKCmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??UART1_SmartCardNACKCmd_0
        LDW       X, #0x185
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??UART1_SmartCardNACKCmd_0:
        TNZ       S:?b8
        JREQ      L:??UART1_SmartCardNACKCmd_1
        BSET      L:0x5238, #0x4
        JRA       L:??UART1_SmartCardNACKCmd_2
??UART1_SmartCardNACKCmd_1:
        BRES      L:0x5238, #0x4
??UART1_SmartCardNACKCmd_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_WakeUpConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??UART1_WakeUpConfig_0
        LD        A, S:?b8
        CP        A, #0x8
        JREQ      L:??UART1_WakeUpConfig_0
        LDW       X, #0x19b
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??UART1_WakeUpConfig_0:
        BRES      L:0x5234, #0x3
        LD        A, S:?b8
        OR        A, L:0x5234
        LD        L:0x5234, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_ReceiverWakeUpCmd:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??UART1_ReceiverWakeUpCmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??UART1_ReceiverWakeUpCmd_0
        LDW       X, #0x1a8
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??UART1_ReceiverWakeUpCmd_0:
        TNZ       S:?b8
        JREQ      L:??UART1_ReceiverWakeUpCmd_1
        BSET      L:0x5235, #0x1
        JRA       L:??UART1_ReceiverWakeUpCmd_2
??UART1_ReceiverWakeUpCmd_1:
        BRES      L:0x5235, #0x1
??UART1_ReceiverWakeUpCmd_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_ReceiveData8:
        LD        A, L:0x5231
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_ReceiveData9:
        CLR       S:?b1
        CLR       S:?b0
        LD        A, L:0x5234
        CLRW      X
        LD        XL, A
        RLWA      X, A
        AND       A, #0x0
        RLWA      X, A
        AND       A, #0x80
        RLWA      X, A
        SLLW      X
        LDW       S:?w0, X
        LD        A, L:0x5231
        CLRW      X
        LD        XL, A
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        RLWA      X, A
        AND       A, #0x1
        RLWA      X, A
        AND       A, #0xff
        RLWA      X, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_SendData8:
        LD        L:0x5231, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_SendData9:
        LDW       Y, X
        BRES      L:0x5234, #0x6
        LDW       X, Y
        SRLW      X
        SRLW      X
        LD        A, XL
        AND       A, #0x40
        OR        A, L:0x5234
        LD        L:0x5234, A
        LD        A, YL
        LD        L:0x5231, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_SendBreak:
        BSET      L:0x5235, #0x0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_SetAddress:
        PUSH      S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
        CP        A, #0x10
        JRC       L:??UART1_SetAddress_0
        LDW       X, #0x1fa
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??UART1_SetAddress_0:
        LD        A, L:0x5237
        AND       A, #0xf0
        LD        L:0x5237, A
        LD        A, S:?b8
        OR        A, L:0x5237
        LD        L:0x5237, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_SetGuardTime:
        LD        L:0x5239, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_SetPrescaler:
        LD        L:0x523a, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_GetFlagStatus:
        CALLF     L:?push_w4
        LDW       S:?w4, X
        CLR       A
        LDW       X, S:?w4
        CPW       X, #0x80
        JREQ      L:??UART1_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x40
        JREQ      L:??UART1_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x20
        JREQ      L:??UART1_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x10
        JREQ      L:??UART1_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x8
        JREQ      L:??UART1_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x4
        JREQ      L:??UART1_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x2
        JREQ      L:??UART1_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x1
        JREQ      L:??UART1_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x101
        JREQ      L:??UART1_GetFlagStatus_0
        LDW       X, S:?w4
        CPW       X, #0x210
        JREQ      L:??UART1_GetFlagStatus_0
        LDW       X, #0x235
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??UART1_GetFlagStatus_0:
        LDW       X, S:?w4
        CPW       X, #0x210
        JRNE      L:??UART1_GetFlagStatus_1
        LD        A, S:?b9
        AND       A, L:0x5237
        CP        A, #0x0
        JREQ      L:??UART1_GetFlagStatus_2
        LD        A, #0x1
        JPF       L:?epilogue_w4
??UART1_GetFlagStatus_2:
        CLR       A
        JPF       L:?epilogue_w4
??UART1_GetFlagStatus_1:
        LDW       X, S:?w4
        CPW       X, #0x101
        JRNE      L:??UART1_GetFlagStatus_3
        LD        A, S:?b9
        AND       A, L:0x5235
        CP        A, #0x0
        JREQ      L:??UART1_GetFlagStatus_4
        LD        A, #0x1
        JPF       L:?epilogue_w4
??UART1_GetFlagStatus_4:
        CLR       A
        JPF       L:?epilogue_w4
??UART1_GetFlagStatus_3:
        LD        A, S:?b9
        AND       A, L:0x5230
        CP        A, #0x0
        JREQ      L:??UART1_GetFlagStatus_5
        LD        A, #0x1
        JPF       L:?epilogue_w4
??UART1_GetFlagStatus_5:
        CLR       A
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_ClearFlag:
        CALLF     L:?push_w4
        LDW       S:?w4, X
        LDW       X, S:?w4
        CPW       X, #0x20
        JREQ      L:??UART1_ClearFlag_0
        LDW       X, S:?w4
        CPW       X, #0x210
        JREQ      L:??UART1_ClearFlag_0
        LDW       X, #0x281
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??UART1_ClearFlag_0:
        LDW       X, S:?w4
        CPW       X, #0x20
        JRNE      L:??UART1_ClearFlag_1
        MOV       L:0x5230, #0xdf
        JPF       L:?epilogue_w4
??UART1_ClearFlag_1:
        BRES      L:0x5237, #0x4
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_GetITStatus:
        CALLF     L:?push_w4
        LDW       S:?w4, X
        CLR       S:?b0
        CLR       S:?b1
        CLR       S:?b2
        CLR       A
        CLR       S:?b3
        LDW       X, S:?w4
        CPW       X, #0x277
        JREQ      L:??UART1_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x266
        JREQ      L:??UART1_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x255
        JREQ      L:??UART1_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x244
        JREQ      L:??UART1_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x235
        JREQ      L:??UART1_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x346
        JREQ      L:??UART1_GetITStatus_0
        LDW       X, S:?w4
        CPW       X, #0x100
        JREQ      L:??UART1_GetITStatus_0
        LDW       X, #0x2a5
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??UART1_GetITStatus_0:
        LD        A, S:?b9
        AND       A, #0xf
        CLRW      X
        INCW      X
        CALLF     L:?sll16_x_x_a
        EXG       A, XL
        LD        S:?b1, A
        EXG       A, XL
        LD        A, S:?b9
        SWAP      A
        AND       A, #0xf
        LD        S:?b2, A
        CLRW      X
        INCW      X
        LD        A, S:?b2
        CALLF     L:?sll16_x_x_a
        LD        A, XL
        LDW       X, S:?w4
        CPW       X, #0x100
        JRNE      L:??UART1_GetITStatus_1
        AND       A, L:0x5234
        LD        S:?b3, A
        LD        A, S:?b1
        AND       A, L:0x5230
        CP        A, #0x0
        JREQ      L:??UART1_GetITStatus_2
        TNZ       S:?b3
        JREQ      L:??UART1_GetITStatus_2
        MOV       S:?b0, #0x1
        JRA       L:??UART1_GetITStatus_3
??UART1_GetITStatus_2:
        CLR       S:?b0
        JRA       L:??UART1_GetITStatus_3
??UART1_GetITStatus_1:
        LDW       X, S:?w4
        CPW       X, #0x346
        JRNE      L:??UART1_GetITStatus_4
        AND       A, L:0x5237
        LD        S:?b3, A
        LD        A, S:?b1
        AND       A, L:0x5237
        CP        A, #0x0
        JREQ      L:??UART1_GetITStatus_5
        TNZ       S:?b3
        JREQ      L:??UART1_GetITStatus_5
        MOV       S:?b0, #0x1
        JRA       L:??UART1_GetITStatus_3
??UART1_GetITStatus_5:
        CLR       S:?b0
        JRA       L:??UART1_GetITStatus_3
??UART1_GetITStatus_4:
        AND       A, L:0x5235
        LD        S:?b3, A
        LD        A, S:?b1
        AND       A, L:0x5230
        CP        A, #0x0
        JREQ      L:??UART1_GetITStatus_6
        TNZ       S:?b3
        JREQ      L:??UART1_GetITStatus_6
        MOV       S:?b0, #0x1
        JRA       L:??UART1_GetITStatus_3
??UART1_GetITStatus_6:
        CLR       S:?b0
??UART1_GetITStatus_3:
        LD        A, S:?b0
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
UART1_ClearITPendingBit:
        CALLF     L:?push_w4
        LDW       S:?w4, X
        LDW       X, S:?w4
        CPW       X, #0x255
        JREQ      L:??UART1_ClearITPendingBit_0
        LDW       X, S:?w4
        CPW       X, #0x346
        JREQ      L:??UART1_ClearITPendingBit_0
        LDW       X, #0x302
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??UART1_ClearITPendingBit_0:
        LDW       X, S:?w4
        CPW       X, #0x255
        JRNE      L:??UART1_ClearITPendingBit_1
        MOV       L:0x5230, #0xdf
        JPF       L:?epilogue_w4
??UART1_ClearITPendingBit_1:
        BRES      L:0x5237, #0x4
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
        DC8 5FH, 75H, 61H, 72H, 74H, 31H, 2EH, 63H
        DC8 0

        END
// 
// 1 922 bytes in section .far_func.text
//    89 bytes in section .near.rodata
// 
// 1 922 bytes of CODE  memory
//    89 bytes of CONST memory
//
//Errors: none
//Warnings: none
