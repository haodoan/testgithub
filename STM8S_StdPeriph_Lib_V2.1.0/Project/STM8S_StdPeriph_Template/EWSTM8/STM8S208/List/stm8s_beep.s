///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR C/C++ Compiler V1.30.1.50036 for STM8            24/Jan/2015  12:33:13 /
// Copyright 2010-2011 IAR Systems AB.                                        /
//                                                                            /
//    Source file  =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_beep.c                        /
//    Command line =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_beep.c -e -Ol --no_cse        /
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
//                    Periph_Template\EWSTM8\STM8S208\List\stm8s_beep.s       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm8s_beep

        EXTERN ?b8
        EXTERN ?epilogue_l2
        EXTERN ?mov_l0_l2
        EXTERN ?mov_l2_l0
        EXTERN ?mul16_x_x_w0
        EXTERN ?push_l2
        EXTERN ?sub32_l0_l0_l1
        EXTERN ?udiv32_l0_l0_dl
        EXTERN ?w0
        EXTERN ?w1
        EXTERN ?w2
        EXTERN ?w3
        EXTERN assert_failed

        PUBLIC BEEP_Cmd
        PUBLIC BEEP_DeInit
        PUBLIC BEEP_Init
        PUBLIC BEEP_LSICalibrationConfig


        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
BEEP_DeInit:
        MOV       L:0x50f3, #0x1f
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
BEEP_Init:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??BEEP_Init_0
        LD        A, S:?b8
        CP        A, #0x40
        JREQ      L:??BEEP_Init_0
        LD        A, S:?b8
        CP        A, #0x80
        JREQ      L:??BEEP_Init_0
        LDW       X, #0x41
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??BEEP_Init_0:
        LD        A, L:0x50f3
        AND       A, #0x1f
        CP        A, #0x1f
        JRNE      L:??BEEP_Init_1
        LD        A, L:0x50f3
        AND       A, #0xe0
        LD        L:0x50f3, A
        LD        A, L:0x50f3
        OR        A, #0xb
        LD        L:0x50f3, A
??BEEP_Init_1:
        LD        A, L:0x50f3
        AND       A, #0x3f
        LD        L:0x50f3, A
        LD        A, S:?b8
        OR        A, L:0x50f3
        LD        L:0x50f3, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
BEEP_Cmd:
        TNZ       A
        JREQ      L:??BEEP_Cmd_0
        BSET      L:0x50f3, #0x5
        RETF
??BEEP_Cmd_0:
        BRES      L:0x50f3, #0x5
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
BEEP_LSICalibrationConfig:
        CALLF     L:?push_l2
        CALLF     L:?mov_l2_l0
        LDW       X, #0xadb0
        LDW       S:?w3, X
        CLRW      X
        INCW      X
        LDW       S:?w2, X
        CALLF     L:?mov_l0_l2
        CALLF     L:?sub32_l0_l0_l1
        LDW       X, S:?w0
        CPW       X, #0x0
        JRNE      L:??BEEP_LSICalibrationConfig_0
        LDW       X, S:?w1
        CPW       X, #0x9c41
??BEEP_LSICalibrationConfig_0:
        JRC       L:??BEEP_LSICalibrationConfig_1
        LDW       X, #0x79
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??BEEP_LSICalibrationConfig_1:
        CALLF     L:?mov_l0_l2
        CALLF     L:?udiv32_l0_l0_dl
        DATA
        DC32      0x3e8
        CODE
        LD        A, L:0x50f3
        AND       A, #0xe0
        LD        L:0x50f3, A
        LDW       X, S:?w1
        SRLW      X
        SRLW      X
        SRLW      X
        LDW       Y, X
        LDW       X, #0x8
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        LDW       S:?w0, X
        LDW       X, S:?w1
        SUBW      X, S:?w0
        LDW       S:?w1, X
        LDW       X, Y
        SLLW      X
        INCW      X
        LDW       S:?w0, X
        LDW       X, S:?w1
        CALLF     L:?mul16_x_x_w0
        LDW       S:?w1, X
        LDW       X, #0x8
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?mul16_x_x_w0
        CPW       X, S:?w1
        JRC       L:??BEEP_LSICalibrationConfig_2
        LD        A, YL
        ADD       A, #0xfe
        OR        A, L:0x50f3
        LD        L:0x50f3, A
        JPF       L:?epilogue_l2
??BEEP_LSICalibrationConfig_2:
        LD        A, YL
        ADD       A, #0xff
        OR        A, L:0x50f3
        LD        L:0x50f3, A
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
        DC8 5FH, 62H, 65H, 65H, 70H, 2EH, 63H, 0

        END
// 
// 255 bytes in section .far_func.text
//  88 bytes in section .near.rodata
// 
// 255 bytes of CODE  memory
//  88 bytes of CONST memory
//
//Errors: none
//Warnings: none
