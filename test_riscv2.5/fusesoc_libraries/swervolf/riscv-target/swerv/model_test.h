// RISC-V Compliance Test Header File
// Copyright (c) 2017, Codasip Ltd. All Rights Reserved.
// See LICENSE for license details.
//
// Description: Common header file for RV32I tests

#ifndef _COMPLIANCE_TEST_H
#define _COMPLIANCE_TEST_H

//-----------------------------------------------------------------------
// RV Compliance Macros
//-----------------------------------------------------------------------

#define RVMODEL_DATA_SECTION \
        .pushsection .tohost,"aw",@progbits;                            \
        .align 8; .global tohost; tohost: .dword 0;                     \
        .align 8; .global fromhost; fromhost: .dword 0;                 \
        .popsection;                                                    \
        .align 8; .global begin_regstate; begin_regstate:               \
        .word 128;                                                      \
        .align 8; .global end_regstate; end_regstate:                   \
        .word 4;

#define RVMODEL_HALT              \
        la a0, data_begin;			\
        la a1, data_end; \
        li a2, 0x80001008;			\
compliance_halt_loop: \
        beq a0, a1, compliance_halt_break; \
        addi a3, a0, 4; \
compliance_halt_loop2: \
        addi a3, a3, -1; \
	\
        lb a4, 0 (a3); \
        srai a5, a4, 4; \
        andi a5, a5, 0xF; \
        li a6, 10; \
        blt a5, a6, notLetter; \
        addi a5, a5, 39; \
notLetter: \
        addi a5, a5, 0x30; \
        sb a5, 0 (a2); \
	\
        srai a5, a4, 0; \
        andi a5, a5, 0xF; \
        li a6, 10; \
        blt a5, a6, notLetter2; \
        addi a5, a5, 39; \
notLetter2: \
        addi a5, a5, 0x30; \
        sb a5, 0 (a2); \
        bne a0, a3,compliance_halt_loop2;  \
        addi a0, a0, 4; \
	\
        li a4, '\n'; \
        sb a4, 0 (a2); \
        j compliance_halt_loop; \
  j compliance_halt_break;		\
compliance_halt_break:; \
	li	a0,0x80001009;	\
	sb	a3,0(a0);


#define RVMODEL_CODE_BEGIN                                              \
        .section .text.init;                                            \
        .align  4;                                                      \
        .globl _start;                                                  \
_start:                                                                 \

#define RVMODEL_CODE_END

#define RVMODEL_DATA_BEGIN .align 4; .global data_begin; data_begin:

#define RVMODEL_DATA_END .align 4; .global data_end; data_end:

#endif

// RISC-V Compliance IO Test Header File

/*
 * Copyright (c) 2005-2018 Imperas Software Ltd., www.imperas.com
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
 * either express or implied.
 *
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

#ifndef _COMPLIANCE_IO_H
#define _COMPLIANCE_IO_H

//-----------------------------------------------------------------------
// RV IO Macros (Non functional)
//-----------------------------------------------------------------------


#define RVMODEL_SET_MSW_INT
#define RVMODEL_CLEAR_MSW_INT
#define RVMODEL_CLEAR_MTIMER_INT
#define RVMODEL_CLEAR_MEXT_INT
#define RVMODEL_BOOT
#define RVMODEL_IO_WRITE_STR(_SP, _STR)
#define RVMODEL_IO_ASSERT_GPR_EQ(_SP, _R, _I)
#define RVMODEL_IO_ASSERT_SFPR_EQ(_F, _R, _I)
#define RVMODEL_IO_ASSERT_DFPR_EQ(_D, _R, _I)

#endif // _COMPLIANCE_IO_H
