///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR C/C++ Compiler V1.30.1.50036 for STM8            24/Jan/2015  12:33:13 /
// Copyright 2010-2011 IAR Systems AB.                                        /
//                                                                            /
//    Source file  =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_flash.c                       /
//    Command line =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_flash.c -e -Ol --no_cse       /
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
//                    Periph_Template\EWSTM8\STM8S208\List\stm8s_flash.s      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm8s_flash

        EXTERN ?add32_l0_l0_l1
        EXTERN ?b0
        EXTERN ?b1
        EXTERN ?b10
        EXTERN ?b12
        EXTERN ?b13
        EXTERN ?b8
        EXTERN ?dec32_l0_l0
        EXTERN ?epilogue_l2
        EXTERN ?epilogue_l2_l3
        EXTERN ?epilogue_w4
        EXTERN ?load32_0x_l0
        EXTERN ?mov_l0_l2
        EXTERN ?mov_l1_l0
        EXTERN ?mov_l2_l0
        EXTERN ?mov_w1_w7
        EXTERN ?mul16_x_x_w0
        EXTERN ?mul32_l0_l0_l1
        EXTERN ?push_l1
        EXTERN ?push_l2
        EXTERN ?push_l3
        EXTERN ?push_w4
        EXTERN ?sub32_l0_l0_l1
        EXTERN ?w0
        EXTERN ?w1
        EXTERN ?w2
        EXTERN ?w3
        EXTERN ?w4
        EXTERN ?w5
        EXTERN ?w7
        EXTERN assert_failed

        PUBLIC FLASH_DeInit
        PUBLIC FLASH_EraseBlock
        PUBLIC FLASH_EraseByte
        PUBLIC FLASH_EraseOptionByte
        PUBLIC FLASH_GetBootSize
        PUBLIC FLASH_GetFlagStatus
        PUBLIC FLASH_GetLowPowerMode
        PUBLIC FLASH_GetProgrammingTime
        PUBLIC FLASH_ITConfig
        PUBLIC FLASH_Lock
        PUBLIC FLASH_ProgramBlock
        PUBLIC FLASH_ProgramByte
        PUBLIC FLASH_ProgramOptionByte
        PUBLIC FLASH_ProgramWord
        PUBLIC FLASH_ReadByte
        PUBLIC FLASH_ReadOptionByte
        PUBLIC FLASH_SetLowPowerMode
        PUBLIC FLASH_SetProgrammingTime
        PUBLIC FLASH_Unlock
        PUBLIC FLASH_WaitForLastOperation


        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
FLASH_Unlock:
        PUSH      S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
        CP        A, #0xfd
        JREQ      L:??FLASH_Unlock_0
        LD        A, S:?b8
        CP        A, #0xf7
        JREQ      L:??FLASH_Unlock_0
        LDW       X, #0x54
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??FLASH_Unlock_0:
        LD        A, S:?b8
        CP        A, #0xfd
        JRNE      L:??FLASH_Unlock_1
        MOV       L:0x5062, #0x56
        MOV       L:0x5062, #0xae
        JRA       L:??FLASH_Unlock_2
??FLASH_Unlock_1:
        MOV       L:0x5064, #0xae
        MOV       L:0x5064, #0x56
??FLASH_Unlock_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
FLASH_Lock:
        PUSH      S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
        CP        A, #0xfd
        JREQ      L:??FLASH_Lock_0
        LD        A, S:?b8
        CP        A, #0xf7
        JREQ      L:??FLASH_Lock_0
        LDW       X, #0x6d
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??FLASH_Lock_0:
        LD        A, S:?b8
        AND       A, L:0x505f
        LD        L:0x505f, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
FLASH_DeInit:
        MOV       L:0x505a, #0x0
        MOV       L:0x505b, #0x0
        MOV       L:0x505c, #0xff
        BRES      L:0x505f, #0x3
        BRES      L:0x505f, #0x1
        LD        A, L:0x505f
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
FLASH_ITConfig:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??FLASH_ITConfig_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??FLASH_ITConfig_0
        LDW       X, #0x8b
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??FLASH_ITConfig_0:
        TNZ       S:?b8
        JREQ      L:??FLASH_ITConfig_1
        BSET      L:0x505a, #0x1
        JRA       L:??FLASH_ITConfig_2
??FLASH_ITConfig_1:
        BRES      L:0x505a, #0x1
??FLASH_ITConfig_2:
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
FLASH_EraseByte:
        CALLF     L:?push_l2
        CALLF     L:?mov_l2_l0
        LDW       X, #0x8000
        LDW       S:?w3, X
        SLLW      X
        LDW       S:?w2, X
        CALLF     L:?mov_l0_l2
        CALLF     L:?sub32_l0_l0_l1
        LDW       X, S:?w0
        CPW       X, #0x0
        JRNE      L:??FLASH_EraseByte_0
        LDW       X, S:?w1
        CPW       X, #0x2000
??FLASH_EraseByte_0:
        JRC       L:??FLASH_EraseByte_1
        LDW       X, #0x4000
        LDW       S:?w3, X
        CLRW      X
        LDW       S:?w2, X
        CALLF     L:?mov_l0_l2
        CALLF     L:?sub32_l0_l0_l1
        LDW       X, S:?w0
        CPW       X, #0x0
        JRNE      L:??FLASH_EraseByte_2
        LDW       X, S:?w1
        CPW       X, #0x280
??FLASH_EraseByte_2:
        JRC       L:??FLASH_EraseByte_1
        LDW       X, #0xa1
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??FLASH_EraseByte_1:
        CLR       A
        LD        [S:?w5.w], A
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
FLASH_ProgramByte:
        CALLF     L:?push_l2
        PUSH      S:?b12
        CALLF     L:?mov_l2_l0
        LD        S:?b12, A
        LDW       X, #0x8000
        LDW       S:?w3, X
        SLLW      X
        LDW       S:?w2, X
        CALLF     L:?mov_l0_l2
        CALLF     L:?sub32_l0_l0_l1
        LDW       X, S:?w0
        CPW       X, #0x0
        JRNE      L:??FLASH_ProgramByte_0
        LDW       X, S:?w1
        CPW       X, #0x2000
??FLASH_ProgramByte_0:
        JRC       L:??FLASH_ProgramByte_1
        LDW       X, #0x4000
        LDW       S:?w3, X
        CLRW      X
        LDW       S:?w2, X
        CALLF     L:?mov_l0_l2
        CALLF     L:?sub32_l0_l0_l1
        LDW       X, S:?w0
        CPW       X, #0x0
        JRNE      L:??FLASH_ProgramByte_2
        LDW       X, S:?w1
        CPW       X, #0x280
??FLASH_ProgramByte_2:
        JRC       L:??FLASH_ProgramByte_1
        LDW       X, #0xb3
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??FLASH_ProgramByte_1:
        LD        A, S:?b12
        LD        [S:?w5.w], A
        POP       S:?b12
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
FLASH_ReadByte:
        CALLF     L:?push_l2
        CALLF     L:?mov_l2_l0
        LDW       X, #0x8000
        LDW       S:?w3, X
        SLLW      X
        LDW       S:?w2, X
        CALLF     L:?mov_l0_l2
        CALLF     L:?sub32_l0_l0_l1
        LDW       X, S:?w0
        CPW       X, #0x0
        JRNE      L:??FLASH_ReadByte_0
        LDW       X, S:?w1
        CPW       X, #0x2000
??FLASH_ReadByte_0:
        JRC       L:??FLASH_ReadByte_1
        LDW       X, #0x4000
        LDW       S:?w3, X
        CLRW      X
        LDW       S:?w2, X
        CALLF     L:?mov_l0_l2
        CALLF     L:?sub32_l0_l0_l1
        LDW       X, S:?w0
        CPW       X, #0x0
        JRNE      L:??FLASH_ReadByte_2
        LDW       X, S:?w1
        CPW       X, #0x280
??FLASH_ReadByte_2:
        JRC       L:??FLASH_ReadByte_1
        LDW       X, #0xc1
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??FLASH_ReadByte_1:
        LDW       X, S:?w5
        LD        A, (X)
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
FLASH_ProgramWord:
        CALLF     L:?push_l2
        CALLF     L:?push_l1
        CALLF     L:?mov_l2_l0
        LDW       X, #0x8000
        LDW       S:?w3, X
        SLLW      X
        LDW       S:?w2, X
        CALLF     L:?mov_l0_l2
        CALLF     L:?sub32_l0_l0_l1
        LDW       X, S:?w0
        CPW       X, #0x0
        JRNE      L:??FLASH_ProgramWord_0
        LDW       X, S:?w1
        CPW       X, #0x2000
??FLASH_ProgramWord_0:
        JRC       L:??FLASH_ProgramWord_1
        LDW       X, #0x4000
        LDW       S:?w3, X
        CLRW      X
        LDW       S:?w2, X
        CALLF     L:?mov_l0_l2
        CALLF     L:?sub32_l0_l0_l1
        LDW       X, S:?w0
        CPW       X, #0x0
        JRNE      L:??FLASH_ProgramWord_2
        LDW       X, S:?w1
        CPW       X, #0x280
??FLASH_ProgramWord_2:
        JRC       L:??FLASH_ProgramWord_1
        LDW       X, #0xd2
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??FLASH_ProgramWord_1:
        BSET      L:0x505b, #0x6
        BRES      L:0x505c, #0x6
        LD        A, (0x1,SP)
        LD        [S:?w5.w], A
        LDW       X, S:?w5
        INCW      X
        LD        A, (0x2,SP)
        LD        (X), A
        LDW       X, S:?w5
        ADDW      X, #0x2
        LD        A, (0x3,SP)
        LD        (X), A
        LDW       X, S:?w5
        ADDW      X, #0x3
        LD        A, (0x4,SP)
        LD        (X), A
        ADD       SP, #0x4
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
FLASH_ProgramOptionByte:
        CALLF     L:?push_w4
        PUSH      S:?b10
        LDW       S:?w4, X
        LD        S:?b10, A
        LDW       X, S:?w4
        SUBW      X, #0x4800
        CPW       X, #0x80
        JRC       L:??FLASH_ProgramOptionByte_0
        LDW       X, #0xeb
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??FLASH_ProgramOptionByte_0:
        BSET      L:0x505b, #0x7
        BRES      L:0x505c, #0x7
        LDW       X, S:?w4
        CPW       X, #0x4800
        JRNE      L:??FLASH_ProgramOptionByte_1
        LD        A, S:?b10
        LD        [S:?w4.w], A
        JRA       L:??FLASH_ProgramOptionByte_2
??FLASH_ProgramOptionByte_1:
        LD        A, S:?b10
        LD        [S:?w4.w], A
        LDW       X, S:?w4
        INCW      X
        CPL       S:?b10
        LD        A, S:?b10
        LD        (X), A
??FLASH_ProgramOptionByte_2:
        LD        A, #0xfd
        CALLF     FLASH_WaitForLastOperation
        BRES      L:0x505b, #0x7
        BSET      L:0x505c, #0x7
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
FLASH_EraseOptionByte:
        CALLF     L:?push_w4
        LDW       S:?w4, X
        LDW       X, S:?w4
        SUBW      X, #0x4800
        CPW       X, #0x80
        JRC       L:??FLASH_EraseOptionByte_0
        LDW       X, #0x10c
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??FLASH_EraseOptionByte_0:
        BSET      L:0x505b, #0x7
        BRES      L:0x505c, #0x7
        LDW       X, S:?w4
        CPW       X, #0x4800
        JRNE      L:??FLASH_EraseOptionByte_1
        CLR       A
        LD        [S:?w4.w], A
        JRA       L:??FLASH_EraseOptionByte_2
??FLASH_EraseOptionByte_1:
        CLR       A
        LD        [S:?w4.w], A
        LDW       X, S:?w4
        INCW      X
        LD        A, #0xff
        LD        (X), A
??FLASH_EraseOptionByte_2:
        LD        A, #0xfd
        CALLF     FLASH_WaitForLastOperation
        BRES      L:0x505b, #0x7
        BSET      L:0x505c, #0x7
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
FLASH_ReadOptionByte:
        CALLF     L:?push_w4
        LDW       S:?w4, X
        CLR       S:?b0
        CLRW      Y
        LDW       X, S:?w4
        SUBW      X, #0x4800
        CPW       X, #0x80
        JRC       L:??FLASH_ReadOptionByte_0
        LDW       X, #0x12f
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??FLASH_ReadOptionByte_0:
        LD        A, [S:?w4.w]
        LD        S:?b1, A
        LDW       X, S:?w4
        INCW      X
        LD        A, (X)
        LD        S:?b0, A
        LDW       X, S:?w4
        CPW       X, #0x4800
        JRNE      L:??FLASH_ReadOptionByte_1
        CLRW      X
        EXG       A, XL
        LD        A, S:?b1
        EXG       A, XL
        LDW       Y, X
        JRA       L:??FLASH_ReadOptionByte_2
??FLASH_ReadOptionByte_1:
        LD        A, S:?b0
        CPL       A
        CP        A, S:?b1
        JRNE      L:??FLASH_ReadOptionByte_3
        CLRW      X
        EXG       A, XL
        LD        A, S:?b1
        EXG       A, XL
        CLR       A
        RLWA      X, A
        LDW       Y, X
        CLRW      X
        EXG       A, XL
        LD        A, S:?b0
        EXG       A, XL
        LDW       S:?w0, X
        LDW       X, Y
        RRWA      X, A
        OR        A, S:?b1
        RRWA      X, A
        OR        A, S:?b0
        RRWA      X, A
        LDW       Y, X
        JRA       L:??FLASH_ReadOptionByte_2
??FLASH_ReadOptionByte_3:
        LDW       X, #0x5555
        LDW       Y, X
??FLASH_ReadOptionByte_2:
        LDW       X, Y
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
FLASH_SetLowPowerMode:
        PUSH      S:?b8
        LD        S:?b8, A
        LD        A, S:?b8
        CP        A, #0x4
        JREQ      L:??FLASH_SetLowPowerMode_0
        LD        A, S:?b8
        CP        A, #0x8
        JREQ      L:??FLASH_SetLowPowerMode_0
        TNZ       S:?b8
        JREQ      L:??FLASH_SetLowPowerMode_0
        LD        A, S:?b8
        CP        A, #0xc
        JREQ      L:??FLASH_SetLowPowerMode_0
        LDW       X, #0x152
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??FLASH_SetLowPowerMode_0:
        LD        A, L:0x505a
        AND       A, #0xf3
        LD        L:0x505a, A
        LD        A, S:?b8
        OR        A, L:0x505a
        LD        L:0x505a, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
FLASH_SetProgrammingTime:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??FLASH_SetProgrammingTime_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??FLASH_SetProgrammingTime_0
        LDW       X, #0x164
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??FLASH_SetProgrammingTime_0:
        BRES      L:0x505a, #0x0
        LD        A, S:?b8
        OR        A, L:0x505a
        LD        L:0x505a, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
FLASH_GetLowPowerMode:
        LD        A, L:0x505a
        AND       A, #0xc
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
FLASH_GetProgrammingTime:
        LD        A, L:0x505a
        AND       A, #0x1
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
FLASH_GetBootSize:
        CALLF     L:?push_l2
        CLRW      X
        LDW       S:?w5, X
        LDW       S:?w4, X
        LD        A, L:0x505d
        CLRW      X
        LD        XL, A
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #0x200
        LDW       S:?w3, X
        CLRW      X
        LDW       S:?w2, X
        CALLF     L:?mul32_l0_l0_l1
        CALLF     L:?mov_l2_l0
        LD        A, L:0x505d
        CP        A, #0xff
        JRNE      L:??FLASH_GetBootSize_0
        LDW       X, #0x200
        LDW       S:?w3, X
        CLRW      X
        LDW       S:?w2, X
        CALLF     L:?mov_l0_l2
        CALLF     L:?add32_l0_l0_l1
        CALLF     L:?mov_l2_l0
??FLASH_GetBootSize_0:
        CALLF     L:?mov_l0_l2
        JPF       L:?epilogue_l2

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
FLASH_GetFlagStatus:
        PUSH      S:?b8
        LD        S:?b8, A
        CLR       S:?b0
        LD        A, S:?b8
        CP        A, #0x8
        JREQ      L:??FLASH_GetFlagStatus_0
        LD        A, S:?b8
        CP        A, #0x4
        JREQ      L:??FLASH_GetFlagStatus_0
        LD        A, S:?b8
        CP        A, #0x2
        JREQ      L:??FLASH_GetFlagStatus_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??FLASH_GetFlagStatus_0
        LDW       X, #0x1a0
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??FLASH_GetFlagStatus_0:
        LD        A, S:?b8
        AND       A, L:0x505f
        CP        A, #0x0
        JREQ      L:??FLASH_GetFlagStatus_1
        MOV       S:?b0, #0x1
        JRA       L:??FLASH_GetFlagStatus_2
??FLASH_GetFlagStatus_1:
        CLR       S:?b0
??FLASH_GetFlagStatus_2:
        LD        A, S:?b0
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
FLASH_WaitForLastOperation:
        CLR       A
        CLRW      X
        DECW      X
        LDW       S:?w1, X
        LDW       X, #0xf
        LDW       S:?w0, X
        JRA       L:??FLASH_WaitForLastOperation_0
??FLASH_WaitForLastOperation_1:
        LD        A, L:0x505f
        AND       A, #0x5
        CALLF     L:?dec32_l0_l0
??FLASH_WaitForLastOperation_0:
        TNZ       A
        JRNE      L:??FLASH_WaitForLastOperation_2
        LDW       X, S:?w0
        CPW       X, #0x0
        JRNE      L:??FLASH_WaitForLastOperation_3
        LDW       X, S:?w1
        CPW       X, #0x0
??FLASH_WaitForLastOperation_3:
        JRNE      L:??FLASH_WaitForLastOperation_1
??FLASH_WaitForLastOperation_2:
        LDW       X, S:?w0
        CPW       X, #0x0
        JRNE      L:??FLASH_WaitForLastOperation_4
        LDW       X, S:?w1
        CPW       X, #0x0
??FLASH_WaitForLastOperation_4:
        JRNE      L:??FLASH_WaitForLastOperation_5
        LD        A, #0x2
??FLASH_WaitForLastOperation_5:
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
FLASH_EraseBlock:
        CALLF     L:?push_w4
        PUSH      S:?b10
        LDW       S:?w4, X
        LD        S:?b10, A
        CLRW      X
        LDW       S:?w3, X
        LDW       S:?w2, X
        LD        A, S:?b10
        CP        A, #0xfd
        JREQ      L:??FLASH_EraseBlock_0
        LD        A, S:?b10
        CP        A, #0xf7
        JREQ      L:??FLASH_EraseBlock_0
        LDW       X, #0x251
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??FLASH_EraseBlock_0:
        LD        A, S:?b10
        CP        A, #0xfd
        JRNE      L:??FLASH_EraseBlock_1
        LDW       X, S:?w4
        CPW       X, #0x80
        JRC       L:??FLASH_EraseBlock_2
        LDW       X, #0x254
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??FLASH_EraseBlock_2:
        LDW       X, #0x8000
        LDW       S:?w3, X
        SLLW      X
        LDW       S:?w2, X
        JRA       L:??FLASH_EraseBlock_3
??FLASH_EraseBlock_1:
        LDW       X, S:?w4
        CPW       X, #0xa
        JRC       L:??FLASH_EraseBlock_4
        LDW       X, #0x259
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??FLASH_EraseBlock_4:
        LDW       X, #0x4000
        LDW       S:?w3, X
        CLRW      X
        LDW       S:?w2, X
??FLASH_EraseBlock_3:
        LDW       X, #0x40
        LDW       S:?w0, X
        LDW       X, S:?w4
        CALLF     L:?mul16_x_x_w0
        LDW       Y, S:?w3
        LDW       S:?w0, X
        ADDW      Y, S:?w0
        BSET      L:0x505b, #0x5
        BRES      L:0x505c, #0x5
        CLRW      X
        LDW       S:?w1, X
        LDW       S:?w0, X
        LDW       X, Y
        CALLF     L:?load32_0x_l0
        POP       S:?b10
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
FLASH_ProgramBlock:
        CALLF     L:?push_l2
        CALLF     L:?push_l3
        PUSHW     Y
        LDW       S:?w7, X
        LD        S:?b12, A
        MOV       S:?b13, S:?b0
        CLR       S:?b1
        CLR       S:?b0
        CLRW      X
        LDW       S:?w5, X
        LDW       S:?w4, X
        LD        A, S:?b12
        CP        A, #0xfd
        JREQ      L:??FLASH_ProgramBlock_0
        LD        A, S:?b12
        CP        A, #0xf7
        JREQ      L:??FLASH_ProgramBlock_0
        LDW       X, #0x285
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??FLASH_ProgramBlock_0:
        TNZ       S:?b13
        JREQ      L:??FLASH_ProgramBlock_1
        LD        A, S:?b13
        CP        A, #0x10
        JREQ      L:??FLASH_ProgramBlock_1
        LDW       X, #0x286
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??FLASH_ProgramBlock_1:
        LD        A, S:?b12
        CP        A, #0xfd
        JRNE      L:??FLASH_ProgramBlock_2
        LDW       X, S:?w7
        CPW       X, #0x80
        JRC       L:??FLASH_ProgramBlock_3
        LDW       X, #0x289
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??FLASH_ProgramBlock_3:
        LDW       X, #0x8000
        LDW       S:?w5, X
        SLLW      X
        LDW       S:?w4, X
        JRA       L:??FLASH_ProgramBlock_4
??FLASH_ProgramBlock_2:
        LDW       X, S:?w7
        CPW       X, #0xa
        JRC       L:??FLASH_ProgramBlock_5
        LDW       X, #0x28e
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??FLASH_ProgramBlock_5:
        LDW       X, #0x4000
        LDW       S:?w5, X
        CLRW      X
        LDW       S:?w4, X
??FLASH_ProgramBlock_4:
        CALLF     L:?mov_w1_w7
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #0x40
        LDW       S:?w3, X
        CLRW      X
        LDW       S:?w2, X
        CALLF     L:?mul32_l0_l0_l1
        CALLF     L:?mov_l1_l0
        CALLF     L:?mov_l0_l2
        CALLF     L:?add32_l0_l0_l1
        CALLF     L:?mov_l2_l0
        TNZ       S:?b13
        JRNE      L:??FLASH_ProgramBlock_6
        BSET      L:0x505b, #0x0
        BRES      L:0x505c, #0x0
        JRA       L:??FLASH_ProgramBlock_7
??FLASH_ProgramBlock_6:
        BSET      L:0x505b, #0x4
        BRES      L:0x505c, #0x4
??FLASH_ProgramBlock_7:
        CLR       S:?b1
        CLR       S:?b0
        JRA       L:??FLASH_ProgramBlock_8
??FLASH_ProgramBlock_9:
        LDW       X, S:?w5
        ADDW      X, S:?w0
        LDW       Y, S:?w0
        ADDW      Y, (0x1,SP)
        LD        A, (Y)
        LD        (X), A
        LDW       X, S:?w0
        INCW      X
        LDW       S:?w0, X
??FLASH_ProgramBlock_8:
        LDW       X, S:?w0
        CPW       X, #0x40
        JRC       L:??FLASH_ProgramBlock_9
        ADD       SP, #0x2
        JPF       L:?epilogue_l2_l3

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
        DC8 5FH, 66H, 6CH, 61H, 73H, 68H, 2EH, 63H
        DC8 0

        END
// 
// 1 576 bytes in section .far_func.text
//    89 bytes in section .near.rodata
// 
// 1 576 bytes of CODE  memory
//    89 bytes of CONST memory
//
//Errors: none
//Warnings: none
