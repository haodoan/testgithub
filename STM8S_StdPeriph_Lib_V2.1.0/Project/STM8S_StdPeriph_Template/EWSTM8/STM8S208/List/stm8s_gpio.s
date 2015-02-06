///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR C/C++ Compiler V1.30.1.50036 for STM8            24/Jan/2015  12:33:13 /
// Copyright 2010-2011 IAR Systems AB.                                        /
//                                                                            /
//    Source file  =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_gpio.c                        /
//    Command line =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_gpio.c -e -Ol --no_cse        /
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
//                    Periph_Template\EWSTM8\STM8S208\List\stm8s_gpio.s       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm8s_gpio

        EXTERN ?b0
        EXTERN ?b10
        EXTERN ?b11
        EXTERN ?epilogue_l2
        EXTERN ?push_l2
        EXTERN ?w0
        EXTERN ?w1
        EXTERN ?w4
        EXTERN assert_failed

        PUBLIC GPIO_DeInit
        PUBLIC GPIO_ExternalPullUpConfig
        PUBLIC GPIO_Init
        PUBLIC GPIO_ReadInputData
        PUBLIC GPIO_ReadInputPin
        PUBLIC GPIO_ReadOutputData
        PUBLIC GPIO_Write
        PUBLIC GPIO_WriteHigh
        PUBLIC GPIO_WriteLow
        PUBLIC GPIO_WriteReverse


        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
GPIO_DeInit:
        CLR       A
        LD        (X), A
        LDW       Y, X
        ADDW      Y, #0x2
        CLR       A
        LD        (Y), A
        LDW       Y, X
        ADDW      Y, #0x3
        CLR       A
        LD        (Y), A
        ADDW      X, #0x4
        CLR       A
        LD        (X), A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
GPIO_Init:
        CALLF     L:?push_l2
        LDW       S:?w4, X
        LD        S:?b10, A
        MOV       S:?b11, S:?b0
        TNZ       S:?b11
        JREQ      L:??GPIO_Init_0
        LD        A, S:?b11
        CP        A, #0x40
        JREQ      L:??GPIO_Init_0
        LD        A, S:?b11
        CP        A, #0x20
        JREQ      L:??GPIO_Init_0
        LD        A, S:?b11
        CP        A, #0x60
        JREQ      L:??GPIO_Init_0
        LD        A, S:?b11
        CP        A, #0xa0
        JREQ      L:??GPIO_Init_0
        LD        A, S:?b11
        CP        A, #0xe0
        JREQ      L:??GPIO_Init_0
        LD        A, S:?b11
        CP        A, #0x80
        JREQ      L:??GPIO_Init_0
        LD        A, S:?b11
        CP        A, #0xc0
        JREQ      L:??GPIO_Init_0
        LD        A, S:?b11
        CP        A, #0xb0
        JREQ      L:??GPIO_Init_0
        LD        A, S:?b11
        CP        A, #0xf0
        JREQ      L:??GPIO_Init_0
        LD        A, S:?b11
        CP        A, #0x90
        JREQ      L:??GPIO_Init_0
        LD        A, S:?b11
        CP        A, #0xd0
        JREQ      L:??GPIO_Init_0
        LDW       X, #0x47
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??GPIO_Init_0:
        TNZ       S:?b10
        JRNE      L:??GPIO_Init_1
        LDW       X, #0x48
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??GPIO_Init_1:
        LDW       X, S:?w4
        ADDW      X, #0x4
        LD        A, S:?b10
        CPL       A
        AND       A, (X)
        LDW       X, S:?w4
        ADDW      X, #0x4
        LD        (X), A
        LD        A, S:?b11
        AND       A, #0x80
        CP        A, #0x0
        JREQ      L:??GPIO_Init_2
        LD        A, S:?b11
        AND       A, #0x10
        CP        A, #0x0
        JREQ      L:??GPIO_Init_3
        LD        A, S:?b10
        OR        A, [S:?w4.w]
        LD        [S:?w4.w], A
        JRA       L:??GPIO_Init_4
??GPIO_Init_3:
        LD        A, S:?b10
        CPL       A
        AND       A, [S:?w4.w]
        LD        [S:?w4.w], A
??GPIO_Init_4:
        LDW       X, S:?w4
        ADDW      X, #0x2
        LD        A, S:?b10
        OR        A, (X)
        LDW       X, S:?w4
        ADDW      X, #0x2
        LD        (X), A
        JRA       L:??GPIO_Init_5
??GPIO_Init_2:
        LDW       X, S:?w4
        ADDW      X, #0x2
        LD        A, S:?b10
        CPL       A
        AND       A, (X)
        LDW       X, S:?w4
        ADDW      X, #0x2
        LD        (X), A
??GPIO_Init_5:
        LD        A, S:?b11
        AND       A, #0x40
        CP        A, #0x0
        JREQ      L:??GPIO_Init_6
        LDW       X, S:?w4
        ADDW      X, #0x3
        LD        A, S:?b10
        OR        A, (X)
        LDW       X, S:?w4
        ADDW      X, #0x3
        LD        (X), A
        JRA       L:??GPIO_Init_7
??GPIO_Init_6:
        LDW       X, S:?w4
        ADDW      X, #0x3
        LD        A, S:?b10
        CPL       A
        AND       A, (X)
        LDW       X, S:?w4
        ADDW      X, #0x3
        LD        (X), A
??GPIO_Init_7:
        LD        A, S:?b11
        AND       A, #0x20
        CP        A, #0x0
        JREQ      L:??GPIO_Init_8
        LDW       X, S:?w4
        ADDW      X, #0x4
        LD        A, S:?b10
        OR        A, (X)
        LDW       X, S:?w4
        ADDW      X, #0x4
        LD        (X), A
        JPF       L:?epilogue_l2
??GPIO_Init_8:
        LDW       X, S:?w4
        ADDW      X, #0x4
        CPL       S:?b10
        LD        A, S:?b10
        AND       A, (X)
        LDW       X, S:?w4
        ADDW      X, #0x4
        LD        (X), A
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
GPIO_Write:
        LD        (X), A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
GPIO_WriteHigh:
        OR        A, (X)
        LD        (X), A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
GPIO_WriteLow:
        CPL       A
        AND       A, (X)
        LD        (X), A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
GPIO_WriteReverse:
        XOR       A, (X)
        LD        (X), A
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
GPIO_ReadOutputData:
        LD        A, (X)
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
GPIO_ReadInputData:
        INCW      X
        LD        A, (X)
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
GPIO_ReadInputPin:
        INCW      X
        AND       A, (X)
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
GPIO_ExternalPullUpConfig:
        CALLF     L:?push_l2
        LDW       S:?w4, X
        LD        S:?b10, A
        MOV       S:?b11, S:?b0
        TNZ       S:?b10
        JRNE      L:??GPIO_ExternalPullUpConfig_0
        LDW       X, #0xde
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??GPIO_ExternalPullUpConfig_0:
        TNZ       S:?b11
        JREQ      L:??GPIO_ExternalPullUpConfig_1
        LD        A, S:?b11
        CP        A, #0x1
        JREQ      L:??GPIO_ExternalPullUpConfig_1
        LDW       X, #0xdf
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??GPIO_ExternalPullUpConfig_1:
        TNZ       S:?b11
        JREQ      L:??GPIO_ExternalPullUpConfig_2
        LDW       X, S:?w4
        ADDW      X, #0x3
        LD        A, S:?b10
        OR        A, (X)
        LDW       X, S:?w4
        ADDW      X, #0x3
        LD        (X), A
        JPF       L:?epilogue_l2
??GPIO_ExternalPullUpConfig_2:
        LDW       X, S:?w4
        ADDW      X, #0x3
        CPL       S:?b10
        LD        A, S:?b10
        AND       A, (X)
        LDW       X, S:?w4
        ADDW      X, #0x3
        LD        (X), A
        JPF       L:?epilogue_l2

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
        DC8 5FH, 67H, 70H, 69H, 6FH, 2EH, 63H, 0

        END
// 
// 424 bytes in section .far_func.text
//  88 bytes in section .near.rodata
// 
// 424 bytes of CODE  memory
//  88 bytes of CONST memory
//
//Errors: none
//Warnings: none
