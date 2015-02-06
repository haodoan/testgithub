///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR C/C++ Compiler V1.30.1.50036 for STM8            24/Jan/2015  12:33:28 /
// Copyright 2010-2011 IAR Systems AB.                                        /
//                                                                            /
//    Source file  =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_itc.c                         /
//    Command line =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_itc.c -e -Ol --no_cse         /
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
//                    Periph_Template\EWSTM8\STM8S208\List\stm8s_itc.s        /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm8s_itc

        EXTERN ?b0
        EXTERN ?b1
        EXTERN ?b8
        EXTERN ?b9
        EXTERN ?epilogue_w4
        EXTERN ?push_w4
        EXTERN ?sll16_x_x_a
        EXTERN ?srl8_a_a_b0
        EXTERN ?w0
        EXTERN ?w1
        EXTERN assert_failed

        PUBLIC ITC_DeInit
        PUBLIC ITC_GetCPUCC
        PUBLIC ITC_GetSoftIntStatus
        PUBLIC ITC_GetSoftwarePriority
        PUBLIC ITC_SetSoftwarePriority


        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ITC_GetCPUCC:
        push cc
        pop a
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ITC_DeInit:
        MOV       L:0x7f70, #0xff
        MOV       L:0x7f71, #0xff
        MOV       L:0x7f72, #0xff
        MOV       L:0x7f73, #0xff
        MOV       L:0x7f74, #0xff
        MOV       L:0x7f75, #0xff
        MOV       L:0x7f76, #0xff
        MOV       L:0x7f77, #0xff
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ITC_GetSoftIntStatus:
        CALLF     ITC_GetCPUCC
        AND       A, #0x28
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ITC_GetSoftwarePriority:
        CALLF     L:?push_w4
        LD        S:?b8, A
        CLR       S:?b9
        CLR       S:?b0
        LD        A, S:?b8
        CP        A, #0x19
        JRC       L:??ITC_GetSoftwarePriority_0
        LDW       X, #0x6c
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ITC_GetSoftwarePriority_0:
        LD        A, #0x4
        CLRW      X
        RRWA      X, A
        LD        A, S:?b8
        RLWA      X, A
        DIV       X, A
        MOV       S:?b0, #0x2
        LD        XL, A
        LD        A, S:?b0
        MUL       X, A
        LD        A, XL
        LDW       X, #0x3
        CALLF     L:?sll16_x_x_a
        EXG       A, XL
        LD        S:?b0, A
        EXG       A, XL
        LD        A, S:?b8
        TNZ       A
        JREQ      L:??ITC_GetSoftwarePriority_1
        DEC       A
        JREQ      L:??ITC_GetSoftwarePriority_1
        DEC       A
        JREQ      L:??ITC_GetSoftwarePriority_1
        DEC       A
        JREQ      L:??ITC_GetSoftwarePriority_1
        DEC       A
        JREQ      L:??ITC_GetSoftwarePriority_2
        DEC       A
        JREQ      L:??ITC_GetSoftwarePriority_2
        DEC       A
        JREQ      L:??ITC_GetSoftwarePriority_2
        DEC       A
        JREQ      L:??ITC_GetSoftwarePriority_2
        SUB       A, #0x3
        JREQ      L:??ITC_GetSoftwarePriority_3
        DEC       A
        JREQ      L:??ITC_GetSoftwarePriority_3
        DEC       A
        JREQ      L:??ITC_GetSoftwarePriority_4
        DEC       A
        JREQ      L:??ITC_GetSoftwarePriority_4
        DEC       A
        JREQ      L:??ITC_GetSoftwarePriority_4
        DEC       A
        JREQ      L:??ITC_GetSoftwarePriority_4
        DEC       A
        JREQ      L:??ITC_GetSoftwarePriority_5
        DEC       A
        JREQ      L:??ITC_GetSoftwarePriority_5
        DEC       A
        JREQ      L:??ITC_GetSoftwarePriority_5
        DEC       A
        JREQ      L:??ITC_GetSoftwarePriority_5
        SUB       A, #0x3
        JREQ      L:??ITC_GetSoftwarePriority_6
        DEC       A
        JREQ      L:??ITC_GetSoftwarePriority_6
        DEC       A
        JREQ      L:??ITC_GetSoftwarePriority_7
        JRA       L:??ITC_GetSoftwarePriority_8
??ITC_GetSoftwarePriority_1:
        LD        A, S:?b0
        AND       A, L:0x7f70
        LD        S:?b9, A
        JRA       L:??ITC_GetSoftwarePriority_8
??ITC_GetSoftwarePriority_2:
        LD        A, S:?b0
        AND       A, L:0x7f71
        LD        S:?b9, A
        JRA       L:??ITC_GetSoftwarePriority_8
??ITC_GetSoftwarePriority_3:
        LD        A, S:?b0
        AND       A, L:0x7f72
        LD        S:?b9, A
        JRA       L:??ITC_GetSoftwarePriority_8
??ITC_GetSoftwarePriority_4:
        LD        A, S:?b0
        AND       A, L:0x7f73
        LD        S:?b9, A
        JRA       L:??ITC_GetSoftwarePriority_8
??ITC_GetSoftwarePriority_5:
        LD        A, S:?b0
        AND       A, L:0x7f74
        LD        S:?b9, A
        JRA       L:??ITC_GetSoftwarePriority_8
??ITC_GetSoftwarePriority_6:
        LD        A, S:?b0
        AND       A, L:0x7f75
        LD        S:?b9, A
        JRA       L:??ITC_GetSoftwarePriority_8
??ITC_GetSoftwarePriority_7:
        LD        A, S:?b0
        AND       A, L:0x7f76
        LD        S:?b9, A
??ITC_GetSoftwarePriority_8:
        LD        A, #0x4
        CLRW      X
        RRWA      X, A
        LD        A, S:?b8
        RLWA      X, A
        DIV       X, A
        MOV       S:?b0, #0x2
        LD        XL, A
        LD        A, S:?b0
        MUL       X, A
        EXG       A, XL
        LD        S:?b0, A
        EXG       A, XL
        LD        A, S:?b9
        CALLF     L:?srl8_a_a_b0
        LD        S:?b9, A
        LD        A, S:?b9
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
ITC_SetSoftwarePriority:
        CALLF     L:?push_w4
        LD        S:?b8, A
        MOV       S:?b9, S:?b0
        CLR       S:?b0
        CLR       S:?b1
        LD        A, S:?b8
        CP        A, #0x19
        JRC       L:??ITC_SetSoftwarePriority_0
        LDW       X, #0xd7
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ITC_SetSoftwarePriority_0:
        LD        A, S:?b9
        CP        A, #0x2
        JREQ      L:??ITC_SetSoftwarePriority_1
        LD        A, S:?b9
        CP        A, #0x1
        JREQ      L:??ITC_SetSoftwarePriority_1
        TNZ       S:?b9
        JREQ      L:??ITC_SetSoftwarePriority_1
        LD        A, S:?b9
        CP        A, #0x3
        JREQ      L:??ITC_SetSoftwarePriority_1
        LDW       X, #0xd8
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ITC_SetSoftwarePriority_1:
        CALLF     ITC_GetSoftIntStatus
        CP        A, #0x28
        JREQ      L:??ITC_SetSoftwarePriority_2
        LDW       X, #0xdb
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??ITC_SetSoftwarePriority_2:
        LD        A, #0x4
        CLRW      X
        RRWA      X, A
        LD        A, S:?b8
        RLWA      X, A
        DIV       X, A
        MOV       S:?b0, #0x2
        LD        XL, A
        LD        A, S:?b0
        MUL       X, A
        LD        A, XL
        LDW       X, #0x3
        CALLF     L:?sll16_x_x_a
        EXG       A, XL
        LD        S:?b0, A
        EXG       A, XL
        CPL       S:?b0
        LD        A, #0x4
        CLRW      X
        RRWA      X, A
        LD        A, S:?b8
        RLWA      X, A
        DIV       X, A
        MOV       S:?b1, #0x2
        LD        XL, A
        LD        A, S:?b1
        MUL       X, A
        LD        A, XL
        CLRW      X
        EXG       A, XL
        LD        A, S:?b9
        EXG       A, XL
        CALLF     L:?sll16_x_x_a
        EXG       A, XL
        LD        S:?b1, A
        EXG       A, XL
        LD        A, S:?b8
        TNZ       A
        JREQ      L:??ITC_SetSoftwarePriority_3
        DEC       A
        JREQ      L:??ITC_SetSoftwarePriority_3
        DEC       A
        JREQ      L:??ITC_SetSoftwarePriority_3
        DEC       A
        JREQ      L:??ITC_SetSoftwarePriority_3
        DEC       A
        JREQ      L:??ITC_SetSoftwarePriority_4
        DEC       A
        JREQ      L:??ITC_SetSoftwarePriority_4
        DEC       A
        JREQ      L:??ITC_SetSoftwarePriority_4
        DEC       A
        JREQ      L:??ITC_SetSoftwarePriority_4
        SUB       A, #0x3
        JREQ      L:??ITC_SetSoftwarePriority_5
        DEC       A
        JREQ      L:??ITC_SetSoftwarePriority_5
        DEC       A
        JREQ      L:??ITC_SetSoftwarePriority_6
        DEC       A
        JREQ      L:??ITC_SetSoftwarePriority_6
        DEC       A
        JREQ      L:??ITC_SetSoftwarePriority_6
        DEC       A
        JREQ      L:??ITC_SetSoftwarePriority_6
        DEC       A
        JREQ      L:??ITC_SetSoftwarePriority_7
        DEC       A
        JREQ      L:??ITC_SetSoftwarePriority_7
        DEC       A
        JREQ      L:??ITC_SetSoftwarePriority_7
        DEC       A
        JREQ      L:??ITC_SetSoftwarePriority_7
        SUB       A, #0x3
        JREQ      L:??ITC_SetSoftwarePriority_8
        DEC       A
        JREQ      L:??ITC_SetSoftwarePriority_8
        DEC       A
        JREQ      L:??ITC_SetSoftwarePriority_9
        JPF       L:?epilogue_w4
??ITC_SetSoftwarePriority_3:
        LD        A, S:?b0
        AND       A, L:0x7f70
        LD        L:0x7f70, A
        LD        A, S:?b1
        OR        A, L:0x7f70
        LD        L:0x7f70, A
        JPF       L:?epilogue_w4
??ITC_SetSoftwarePriority_4:
        LD        A, S:?b0
        AND       A, L:0x7f71
        LD        L:0x7f71, A
        LD        A, S:?b1
        OR        A, L:0x7f71
        LD        L:0x7f71, A
        JPF       L:?epilogue_w4
??ITC_SetSoftwarePriority_5:
        LD        A, S:?b0
        AND       A, L:0x7f72
        LD        L:0x7f72, A
        LD        A, S:?b1
        OR        A, L:0x7f72
        LD        L:0x7f72, A
        JPF       L:?epilogue_w4
??ITC_SetSoftwarePriority_6:
        LD        A, S:?b0
        AND       A, L:0x7f73
        LD        L:0x7f73, A
        LD        A, S:?b1
        OR        A, L:0x7f73
        LD        L:0x7f73, A
        JPF       L:?epilogue_w4
??ITC_SetSoftwarePriority_7:
        LD        A, S:?b0
        AND       A, L:0x7f74
        LD        L:0x7f74, A
        LD        A, S:?b1
        OR        A, L:0x7f74
        LD        L:0x7f74, A
        JPF       L:?epilogue_w4
??ITC_SetSoftwarePriority_8:
        LD        A, S:?b0
        AND       A, L:0x7f75
        LD        L:0x7f75, A
        LD        A, S:?b1
        OR        A, L:0x7f75
        LD        L:0x7f75, A
        JPF       L:?epilogue_w4
??ITC_SetSoftwarePriority_9:
        LD        A, S:?b0
        AND       A, L:0x7f76
        LD        L:0x7f76, A
        LD        A, S:?b1
        OR        A, L:0x7f76
        LD        L:0x7f76, A
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
        DC8 5FH, 69H, 74H, 63H, 2EH, 63H, 0

        END
// 
// 631 bytes in section .far_func.text
//  87 bytes in section .near.rodata
// 
// 631 bytes of CODE  memory
//  87 bytes of CONST memory
//
//Errors: none
//Warnings: 1
