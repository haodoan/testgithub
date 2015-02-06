///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR C/C++ Compiler V1.30.1.50036 for STM8            24/Jan/2015  12:32:30 /
// Copyright 2010-2011 IAR Systems AB.                                        /
//                                                                            /
//    Source file  =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_spi.c                         /
//    Command line =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_spi.c -e -Ol --no_cse         /
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
//                    Periph_Template\EWSTM8\STM8S208\List\stm8s_spi.s        /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm8s_spi

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
        EXTERN ?sll16_x_x_a
        EXTERN ?w0
        EXTERN ?w1
        EXTERN assert_failed

        PUBLIC SPI_BiDirectionalLineConfig
        PUBLIC SPI_CalculateCRCCmd
        PUBLIC SPI_ClearFlag
        PUBLIC SPI_ClearITPendingBit
        PUBLIC SPI_Cmd
        PUBLIC SPI_DeInit
        PUBLIC SPI_GetCRC
        PUBLIC SPI_GetCRCPolynomial
        PUBLIC SPI_GetFlagStatus
        PUBLIC SPI_GetITStatus
        PUBLIC SPI_ITConfig
        PUBLIC SPI_Init
        PUBLIC SPI_NSSInternalSoftwareCmd
        PUBLIC SPI_ReceiveData
        PUBLIC SPI_ResetCRC
        PUBLIC SPI_SendData
        PUBLIC SPI_TransmitCRC


        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SPI_DeInit:
        MOV       L:0x5200, #0x0
        MOV       L:0x5201, #0x0
        MOV       L:0x5202, #0x0
        MOV       L:0x5203, #0x2
        MOV       L:0x5205, #0x7
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SPI_Init:
        CALLF     L:?push_l2
        CALLF     L:?push_l3
        LD        S:?b15, A
        MOV       S:?b8, S:?b0
        MOV       S:?b9, S:?b1
        MOV       S:?b14, S:?b2
        MOV       S:?b13, S:?b3
        MOV       S:?b10, S:?b4
        MOV       S:?b12, S:?b5
        MOV       S:?b11, S:?b6
        TNZ       S:?b15
        JREQ      L:??SPI_Init_0
        LD        A, S:?b15
        CP        A, #0x80
        JREQ      L:??SPI_Init_0
        LDW       X, #0x4b
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??SPI_Init_0:
        TNZ       S:?b8
        JREQ      L:??SPI_Init_1
        LD        A, S:?b8
        CP        A, #0x8
        JREQ      L:??SPI_Init_1
        LD        A, S:?b8
        CP        A, #0x10
        JREQ      L:??SPI_Init_1
        LD        A, S:?b8
        CP        A, #0x18
        JREQ      L:??SPI_Init_1
        LD        A, S:?b8
        CP        A, #0x20
        JREQ      L:??SPI_Init_1
        LD        A, S:?b8
        CP        A, #0x28
        JREQ      L:??SPI_Init_1
        LD        A, S:?b8
        CP        A, #0x30
        JREQ      L:??SPI_Init_1
        LD        A, S:?b8
        CP        A, #0x38
        JREQ      L:??SPI_Init_1
        LDW       X, #0x4c
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??SPI_Init_1:
        LD        A, S:?b9
        CP        A, #0x4
        JREQ      L:??SPI_Init_2
        TNZ       S:?b9
        JREQ      L:??SPI_Init_2
        LDW       X, #0x4d
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??SPI_Init_2:
        TNZ       S:?b14
        JREQ      L:??SPI_Init_3
        LD        A, S:?b14
        CP        A, #0x2
        JREQ      L:??SPI_Init_3
        LDW       X, #0x4e
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??SPI_Init_3:
        TNZ       S:?b13
        JREQ      L:??SPI_Init_4
        LD        A, S:?b13
        CP        A, #0x1
        JREQ      L:??SPI_Init_4
        LDW       X, #0x4f
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??SPI_Init_4:
        TNZ       S:?b10
        JREQ      L:??SPI_Init_5
        LD        A, S:?b10
        CP        A, #0x4
        JREQ      L:??SPI_Init_5
        LD        A, S:?b10
        CP        A, #0x80
        JREQ      L:??SPI_Init_5
        LD        A, S:?b10
        CP        A, #0xc0
        JREQ      L:??SPI_Init_5
        LDW       X, #0x50
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??SPI_Init_5:
        LD        A, S:?b12
        CP        A, #0x2
        JREQ      L:??SPI_Init_6
        TNZ       S:?b12
        JREQ      L:??SPI_Init_6
        LDW       X, #0x51
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??SPI_Init_6:
        LD        A, S:?b11
        CP        A, #0x1
        JRNC      L:??SPI_Init_7
        LDW       X, #0x52
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??SPI_Init_7:
        LD        A, S:?b13
        OR        A, S:?b14
        PUSH      A
        LD        A, S:?b8
        OR        A, S:?b15
        LD        S:?b1, A
        POP       A
        OR        A, S:?b1
        LD        L:0x5200, A
        LD        A, S:?b12
        OR        A, S:?b10
        LD        L:0x5201, A
        LD        A, S:?b9
        CP        A, #0x4
        JRNE      L:??SPI_Init_8
        BSET      L:0x5201, #0x0
        JRA       L:??SPI_Init_9
??SPI_Init_8:
        BRES      L:0x5201, #0x0
??SPI_Init_9:
        LD        A, S:?b9
        OR        A, L:0x5200
        LD        L:0x5200, A
        LD        A, S:?b11
        LD        L:0x5205, A
        JPF       L:?epilogue_l2_l3

        SECTION `.far_func.text`:CODE:NOROOT(0)
        CODE
SPI_Cmd:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??SPI_Cmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??SPI_Cmd_0
        LDW       X, #0x74
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??SPI_Cmd_0:
        TNZ       S:?b8
        JREQ      L:??SPI_Cmd_1
        BSET      L:0x5200, #0x6
        JRA       L:??SPI_Cmd_2
??SPI_Cmd_1:
        BRES      L:0x5200, #0x6
??SPI_Cmd_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:NOROOT(0)
        CODE
SPI_CalculateCRCCmd:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??SPI_CalculateCRCCmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??SPI_CalculateCRCCmd_0
        LDW       X, #0xd6
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??SPI_CalculateCRCCmd_0:
        TNZ       S:?b8
        JREQ      L:??SPI_CalculateCRCCmd_1
        BSET      L:0x5201, #0x5
        JRA       L:??SPI_CalculateCRCCmd_2
??SPI_CalculateCRCCmd_1:
        BRES      L:0x5201, #0x5
??SPI_CalculateCRCCmd_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SPI_ResetCRC:
        LD        A, #0x1
        CALLF     SPI_CalculateCRCCmd
        LD        A, #0x1
        JPF       SPI_Cmd

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SPI_ITConfig:
        CALLF     L:?push_w4
        LD        S:?b8, A
        MOV       S:?b9, S:?b0
        CLR       S:?b0
        LD        A, S:?b8
        CP        A, #0x17
        JREQ      L:??SPI_ITConfig_0
        LD        A, S:?b8
        CP        A, #0x6
        JREQ      L:??SPI_ITConfig_0
        LD        A, S:?b8
        CP        A, #0x5
        JREQ      L:??SPI_ITConfig_0
        LD        A, S:?b8
        CP        A, #0x34
        JREQ      L:??SPI_ITConfig_0
        LDW       X, #0x8b
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??SPI_ITConfig_0:
        TNZ       S:?b9
        JREQ      L:??SPI_ITConfig_1
        LD        A, S:?b9
        CP        A, #0x1
        JREQ      L:??SPI_ITConfig_1
        LDW       X, #0x8c
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??SPI_ITConfig_1:
        LD        A, S:?b8
        AND       A, #0xf
        CLRW      X
        INCW      X
        CALLF     L:?sll16_x_x_a
        EXG       A, XL
        LD        S:?b0, A
        EXG       A, XL
        TNZ       S:?b9
        JREQ      L:??SPI_ITConfig_2
        LD        A, S:?b0
        OR        A, L:0x5202
        LD        L:0x5202, A
        JPF       L:?epilogue_w4
??SPI_ITConfig_2:
        CPL       S:?b0
        LD        A, S:?b0
        AND       A, L:0x5202
        LD        L:0x5202, A
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SPI_SendData:
        LD        L:0x5204, A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SPI_ReceiveData:
        LD        A, L:0x5204
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SPI_NSSInternalSoftwareCmd:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??SPI_NSSInternalSoftwareCmd_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??SPI_NSSInternalSoftwareCmd_0
        LDW       X, #0xb7
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??SPI_NSSInternalSoftwareCmd_0:
        TNZ       S:?b8
        JREQ      L:??SPI_NSSInternalSoftwareCmd_1
        BSET      L:0x5201, #0x0
        JRA       L:??SPI_NSSInternalSoftwareCmd_2
??SPI_NSSInternalSoftwareCmd_1:
        BRES      L:0x5201, #0x0
??SPI_NSSInternalSoftwareCmd_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SPI_TransmitCRC:
        BSET      L:0x5201, #0x4
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SPI_GetCRC:
        PUSH      S:?b8
        LD        S:?b8, A
        CLR       S:?b0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??SPI_GetCRC_0
        TNZ       S:?b8
        JREQ      L:??SPI_GetCRC_0
        LDW       X, #0xec
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??SPI_GetCRC_0:
        TNZ       S:?b8
        JREQ      L:??SPI_GetCRC_1
        LD        A, L:0x5207
        LD        S:?b0, A
        JRA       L:??SPI_GetCRC_2
??SPI_GetCRC_1:
        LD        A, L:0x5206
        LD        S:?b0, A
??SPI_GetCRC_2:
        LD        A, S:?b0
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SPI_GetCRCPolynomial:
        LD        A, L:0x5205
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SPI_BiDirectionalLineConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??SPI_BiDirectionalLineConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??SPI_BiDirectionalLineConfig_0
        LDW       X, #0x11c
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??SPI_BiDirectionalLineConfig_0:
        TNZ       S:?b8
        JREQ      L:??SPI_BiDirectionalLineConfig_1
        BSET      L:0x5201, #0x6
        JRA       L:??SPI_BiDirectionalLineConfig_2
??SPI_BiDirectionalLineConfig_1:
        BRES      L:0x5201, #0x6
??SPI_BiDirectionalLineConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SPI_GetFlagStatus:
        PUSH      S:?b8
        LD        S:?b8, A
        CLR       S:?b0
        LD        A, S:?b8
        CP        A, #0x40
        JREQ      L:??SPI_GetFlagStatus_0
        LD        A, S:?b8
        CP        A, #0x20
        JREQ      L:??SPI_GetFlagStatus_0
        LD        A, S:?b8
        CP        A, #0x10
        JREQ      L:??SPI_GetFlagStatus_0
        LD        A, S:?b8
        CP        A, #0x8
        JREQ      L:??SPI_GetFlagStatus_0
        LD        A, S:?b8
        CP        A, #0x2
        JREQ      L:??SPI_GetFlagStatus_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??SPI_GetFlagStatus_0
        LD        A, S:?b8
        CP        A, #0x80
        JREQ      L:??SPI_GetFlagStatus_0
        LDW       X, #0x134
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??SPI_GetFlagStatus_0:
        LD        A, S:?b8
        AND       A, L:0x5203
        CP        A, #0x0
        JREQ      L:??SPI_GetFlagStatus_1
        MOV       S:?b0, #0x1
        JRA       L:??SPI_GetFlagStatus_2
??SPI_GetFlagStatus_1:
        CLR       S:?b0
??SPI_GetFlagStatus_2:
        LD        A, S:?b0
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SPI_ClearFlag:
        PUSH      S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
        CP        A, #0x10
        JREQ      L:??SPI_ClearFlag_0
        LD        A, S:?b8
        CP        A, #0x8
        JREQ      L:??SPI_ClearFlag_0
        LDW       X, #0x155
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??SPI_ClearFlag_0:
        CPL       S:?b8
        LD        A, S:?b8
        LD        L:0x5203, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SPI_GetITStatus:
        PUSH      S:?b8
        LD        S:?b8, A
        CLR       S:?b2
        CLR       S:?b0
        CLR       S:?b3
        CLR       S:?b1
        CLR       S:?b4
        LD        A, S:?b8
        CP        A, #0x65
        JREQ      L:??SPI_GetITStatus_0
        LD        A, S:?b8
        CP        A, #0x55
        JREQ      L:??SPI_GetITStatus_0
        LD        A, S:?b8
        CP        A, #0x45
        JREQ      L:??SPI_GetITStatus_0
        LD        A, S:?b8
        CP        A, #0x34
        JREQ      L:??SPI_GetITStatus_0
        LD        A, S:?b8
        CP        A, #0x17
        JREQ      L:??SPI_GetITStatus_0
        LD        A, S:?b8
        CP        A, #0x6
        JREQ      L:??SPI_GetITStatus_0
        LDW       X, #0x16e
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??SPI_GetITStatus_0:
        LD        A, S:?b8
        AND       A, #0xf
        CLRW      X
        INCW      X
        CALLF     L:?sll16_x_x_a
        EXG       A, XL
        LD        S:?b0, A
        EXG       A, XL
        LD        A, S:?b8
        SWAP      A
        AND       A, #0xf
        LD        S:?b3, A
        CLRW      X
        INCW      X
        LD        A, S:?b3
        CALLF     L:?sll16_x_x_a
        EXG       A, XL
        LD        S:?b1, A
        EXG       A, XL
        LD        A, S:?b1
        AND       A, L:0x5203
        LD        S:?b4, A
        LD        A, S:?b0
        AND       A, L:0x5202
        CP        A, #0x0
        JREQ      L:??SPI_GetITStatus_1
        TNZ       S:?b4
        JREQ      L:??SPI_GetITStatus_1
        MOV       S:?b2, #0x1
        JRA       L:??SPI_GetITStatus_2
??SPI_GetITStatus_1:
        CLR       S:?b2
??SPI_GetITStatus_2:
        LD        A, S:?b2
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
SPI_ClearITPendingBit:
        PUSH      S:?b8
        LD        S:?b8, A
        CLR       S:?b0
        LD        A, S:?b8
        CP        A, #0x45
        JREQ      L:??SPI_ClearITPendingBit_0
        LD        A, S:?b8
        CP        A, #0x34
        JREQ      L:??SPI_ClearITPendingBit_0
        LDW       X, #0x197
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??SPI_ClearITPendingBit_0:
        LD        A, S:?b8
        SWAP      A
        AND       A, #0xf
        CLRW      X
        INCW      X
        CALLF     L:?sll16_x_x_a
        EXG       A, XL
        LD        S:?b0, A
        EXG       A, XL
        CPL       S:?b0
        LD        A, S:?b0
        LD        L:0x5203, A
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
        DC8 5FH, 73H, 70H, 69H, 2EH, 63H, 0

        END
// 
// 1 070 bytes in section .far_func.text
//    87 bytes in section .near.rodata
// 
// 1 070 bytes of CODE  memory
//    87 bytes of CONST memory
//
//Errors: none
//Warnings: none
