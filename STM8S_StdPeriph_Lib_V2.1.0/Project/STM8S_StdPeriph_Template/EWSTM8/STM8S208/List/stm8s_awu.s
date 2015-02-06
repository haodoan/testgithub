///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR C/C++ Compiler V1.30.1.50036 for STM8            24/Jan/2015  12:32:30 /
// Copyright 2010-2011 IAR Systems AB.                                        /
//                                                                            /
//    Source file  =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_awu.c                         /
//    Command line =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_awu.c -e -Ol --no_cse         /
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
//                    Periph_Template\EWSTM8\STM8S208\List\stm8s_awu.s        /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm8s_awu

        EXTERN ?b8
        EXTERN ?b9
        EXTERN ?mov_l0_l3
        EXTERN ?mov_l3_l0
        EXTERN ?mov_w4_w1
        EXTERN ?mul16_x_x_w0
        EXTERN ?pop_l3
        EXTERN ?pop_w4
        EXTERN ?push_l3
        EXTERN ?push_w4
        EXTERN ?sub32_l0_l0_l1
        EXTERN ?udiv32_l0_l0_dl
        EXTERN ?w0
        EXTERN ?w1
        EXTERN ?w2
        EXTERN ?w3
        EXTERN ?w4
        EXTERN assert_failed

        PUBLIC APR_Array
        PUBLIC AWU_Cmd
        PUBLIC AWU_DeInit
        PUBLIC AWU_GetFlagStatus
        PUBLIC AWU_IdleModeEnable
        PUBLIC AWU_Init
        PUBLIC AWU_LSICalibrationConfig
        PUBLIC TBR_Array


        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
APR_Array:
        DC8 0, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 61, 23, 23, 62

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
TBR_Array:
        DC8 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 12, 14, 15, 15

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
AWU_DeInit:
        MOV       L:0x50f0, #0x0
        MOV       L:0x50f1, #0x3f
        MOV       L:0x50f2, #0x0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
AWU_Init:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??AWU_Init_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??AWU_Init_0
        LD        A, S:?b8
        CP        A, #0x2
        JREQ      L:??AWU_Init_0
        LD        A, S:?b8
        CP        A, #0x3
        JREQ      L:??AWU_Init_0
        LD        A, S:?b8
        CP        A, #0x4
        JREQ      L:??AWU_Init_0
        LD        A, S:?b8
        CP        A, #0x5
        JREQ      L:??AWU_Init_0
        LD        A, S:?b8
        CP        A, #0x6
        JREQ      L:??AWU_Init_0
        LD        A, S:?b8
        CP        A, #0x7
        JREQ      L:??AWU_Init_0
        LD        A, S:?b8
        CP        A, #0x8
        JREQ      L:??AWU_Init_0
        LD        A, S:?b8
        CP        A, #0x9
        JREQ      L:??AWU_Init_0
        LD        A, S:?b8
        CP        A, #0xa
        JREQ      L:??AWU_Init_0
        LD        A, S:?b8
        CP        A, #0xb
        JREQ      L:??AWU_Init_0
        LD        A, S:?b8
        CP        A, #0xc
        JREQ      L:??AWU_Init_0
        LD        A, S:?b8
        CP        A, #0xd
        JREQ      L:??AWU_Init_0
        LD        A, S:?b8
        CP        A, #0xe
        JREQ      L:??AWU_Init_0
        LD        A, S:?b8
        CP        A, #0xf
        JREQ      L:??AWU_Init_0
        LD        A, S:?b8
        CP        A, #0x10
        JREQ      L:??AWU_Init_0
        LDW       X, #0x56
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??AWU_Init_0:
        BSET      L:0x50f0, #0x4
        LD        A, L:0x50f2
        AND       A, #0xf0
        LD        L:0x50f2, A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b8
        EXG       A, XL
        LD        A, (L:TBR_Array,X)
        OR        A, L:0x50f2
        LD        L:0x50f2, A
        LD        A, L:0x50f1
        AND       A, #0xc0
        LD        L:0x50f1, A
        CLRW      X
        EXG       A, XL
        LD        A, S:?b8
        EXG       A, XL
        LD        A, (L:APR_Array,X)
        OR        A, L:0x50f1
        LD        L:0x50f1, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
AWU_Cmd:
        TNZ       A
        JREQ      L:??AWU_Cmd_0
        BSET      L:0x50f0, #0x4
        RETF
??AWU_Cmd_0:
        BRES      L:0x50f0, #0x4
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
AWU_LSICalibrationConfig:
        CALLF     L:?push_l3
        CALLF     L:?push_w4
        CALLF     L:?mov_l3_l0
        CLR       S:?b9
        CLR       S:?b8
        CLRW      Y
        LDW       X, #0xadb0
        LDW       S:?w3, X
        CLRW      X
        INCW      X
        LDW       S:?w2, X
        CALLF     L:?mov_l0_l3
        CALLF     L:?sub32_l0_l0_l1
        LDW       X, S:?w0
        CPW       X, #0x0
        JRNE      L:??AWU_LSICalibrationConfig_0
        LDW       X, S:?w1
        CPW       X, #0x9c41
??AWU_LSICalibrationConfig_0:
        JRC       L:??AWU_LSICalibrationConfig_1
        LDW       X, #0x8e
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??AWU_LSICalibrationConfig_1:
        CALLF     L:?mov_l0_l3
        CALLF     L:?udiv32_l0_l0_dl
        DATA
        DC32      0x3e8
        CODE
        CALLF     L:?mov_w4_w1
        LDW       X, S:?w4
        SRLW      X
        SRLW      X
        LDW       Y, X
        LDW       X, #0x4
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        LDW       S:?w0, X
        LDW       X, S:?w4
        SUBW      X, S:?w0
        LDW       S:?w1, X
        LDW       X, Y
        SLLW      X
        INCW      X
        LDW       S:?w0, X
        LDW       X, S:?w1
        CALLF     L:?mul16_x_x_w0
        LDW       S:?w1, X
        LDW       X, #0x4
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        CPW       X, S:?w1
        JRC       L:??AWU_LSICalibrationConfig_2
        LD        A, YL
        ADD       A, #0xfe
        LD        L:0x50f1, A
        JRA       L:??AWU_LSICalibrationConfig_3
??AWU_LSICalibrationConfig_2:
        LD        A, YL
        ADD       A, #0xff
        LD        L:0x50f1, A
??AWU_LSICalibrationConfig_3:
        CALLF     L:?pop_w4
        CALLF     L:?pop_l3
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
AWU_IdleModeEnable:
        BRES      L:0x50f0, #0x4
        MOV       L:0x50f2, #0xf0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
AWU_GetFlagStatus:
        BTJF      L:0x50f0, #0x5, L:??AWU_GetFlagStatus_0
        LD        A, #0x1
        RETF
??AWU_GetFlagStatus_0:
        CLR       A
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
        DC8 5FH, 61H, 77H, 75H, 2EH, 63H, 0

        END
// 
// 375 bytes in section .far_func.text
// 121 bytes in section .near.rodata
// 
// 375 bytes of CODE  memory
// 121 bytes of CONST memory
//
//Errors: none
//Warnings: none
