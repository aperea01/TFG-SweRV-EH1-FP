
// -----------
// This file was generated by riscv_ctg (https://gitlab.com/incoresemi/riscv-compliance/riscv_ctg)
// version   : 0.5.2
// timestamp : Tue Sep  7 16:44:09 2021 GMT
// usage     : riscv_ctg \
//                  -- cgf $cgf \
//                  -- xlen $xlen \
// -----------
//
// -----------
// Copyright (c) 2021. IIT Madras. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the fdiv.s instruction of the RISC-V F extension for the fdiv_b1 covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32IF")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*F.*);def TEST_CASE_1=True;",fdiv_b1)

RVTEST_FP_ENABLE()
RVTEST_VALBASEUPD(x16,test_fp)
RVTEST_SIGBASE(x15,signature_x15_1)


inst_0:
lw	s7,0(a6)
lw	s9,4(a6)
fdiv.s	s7,s7,s9
sw	s7,0(a5)


inst_1:
lw	a7,8(a6)
lw	t6,12(a6)
fdiv.s	t1,a7,t6
sw	t1,8(a5)


inst_2:
lw	s6,16(a6)
lw	s6,20(a6)
fdiv.s	s6,s6,s6
sw	s6,16(a5)


inst_3:
lw	s10,24(a6)
lw	s10,28(a6)
fdiv.s	s9,s10,s10
sw	s9,24(a5)


inst_4:
lw	a1,32(a6)
lw	a4,36(a6)
fdiv.s	a4,a1,a4
sw	a4,32(a5)


inst_5:
lw	a0,40(a6)
lw	s11,44(a6)
fdiv.s	s2,a0,s11
sw	s2,40(a5)


inst_6:
lw	s8,48(a6)
lw	t4,52(a6)
fdiv.s	s10,s8,t4
sw	s10,48(a5)

inst_7:
lw	s8,56(a6)
lw	s5,60(a6)
fdiv.s	t6,s8,s5
sw	t6,56(a5)


inst_8:
lw	t4,64(a6)
lw	a3,68(a6)
fdiv.s	t1,t4,a3
sw	t1,64(a5)


inst_9:
lw	t1,72(a6)
lw	s2,76(a6)
fdiv.s	s7,t1,s2
sw	s7,72(a5)

inst_10:
lw	a2,80(a6)
lw	t1,84(a6)
fdiv.s	s5,a2,t1
sw	s5,80(a5)


inst_11:
lw	s9,88(a6)
lw	s7,92(a6)
fdiv.s	t3,s9,s7
sw	t3,88(a5)


inst_12:
lw	s2,96(a6)
lw	s8,100(a6)
fdiv.s	t5,s2,s8
sw	t5,96(a5)


inst_13:
lw	t5,104(a6)
lw	t1,108(a6)
fdiv.s	s0,t5,t1
sw	s0,104(a5)


inst_14:
lw	s7,112(a6)
lw	t5,116(a6)
fdiv.s	s9,s7,t5
sw	s9,112(a5)

inst_15:
lw	s9,120(a6)
lw	s4,124(a6)
fdiv.s	t2,s9,s4
sw	t2,120(a5)


inst_16:
lw	s5,128(a6)
lw	a0,132(a6)
fdiv.s	s11,s5,a0
sw	s11,128(a5)


inst_17:
lw	t1,136(a6)
lw	a7,140(a6)
fdiv.s	t6,t1,a7
sw	t6,136(a5)


inst_18:
lw	a4,144(a6)
lw	a2,148(a6)
fdiv.s	s4,a4,a2
sw	s4,144(a5)


inst_19:
lw	a3,152(a6)
lw	t0,156(a6)
fdiv.s	s3,a3,t0
sw	s3,152(a5)


inst_20:
lw	t6,160(a6)
lw	t1,164(a6)
fdiv.s	a3,t6,t1
sw	a3,160(a5)


inst_21:
lw	s5,168(a6)
lw	s0,172(a6)
fdiv.s	t4,s5,s0
sw	t4,168(a5)


inst_22:
lw	t3,176(a6)
lw	t2,180(a6)
fdiv.s	a1,t3,t2
sw	a1,176(a5)


inst_23:
lw	t0,184(a6)
lw	a1,188(a6)
fdiv.s	s1,t0,a1
sw	s1,184(a5)


inst_24:
lw	t1,192(a6)
lw	s3,196(a6)
fdiv.s	s7,t1,s3
sw	s7,192(a5)


inst_25:
lw	t2,200(a6)
lw	s6,204(a6)
fdiv.s	s8,t2,s6
sw	s8,200(a5)


inst_26:
lw	s3,208(a6)
lw	s9,212(a6)
fdiv.s	t0,s3,s9
sw	t0,208(a5)


inst_27:
lw	s0,216(a6)
lw	s8,220(a6)
fdiv.s	a2,s0,s8
sw	a2,216(a5)


inst_28:
lw	s1,224(a6)
lw	t5,228(a6)
fdiv.s	s8,s1,t5
sw	s8,224(a5)


inst_29:
lw	s4,232(a6)
lw	t3,236(a6)
fdiv.s	s11,s4,t3
sw	s11,232(a5)


inst_30:
lw	t6,240(a6)
lw	s7,244(a6)
fdiv.s	s5,t6,s7
sw	s5,240(a5)


inst_31:
lw	s11,248(a6)
lw	s1,252(a6)
fdiv.s	a0,s11,s1
sw	a0,248(a5)


inst_32:
lw	a0,256(a6)
lw	a1,260(a6)
fdiv.s	a2,a0,a1
sw	a2,256(a5)


inst_33:
lw	a0,264(a6)
lw	a1,268(a6)
fdiv.s	a2,a0,a1
sw	a2,264(a5)

inst_34:
lw	a0,272(a6)
lw	a1,276(a6)
fdiv.s	a2,a0,a1
sw	a2,272(a5)


inst_35:
lw	a0,280(a6)
lw	a1,284(a6)
fdiv.s	a2,a0,a1
sw	a2,280(a5)


inst_36:
lw	a0,288(a6)
lw	a1,292(a6)
fdiv.s	a2,a0,a1
sw	a2,288(a5)


inst_37:
lw	a0,296(a6)
lw	a1,300(a6)
fdiv.s	a2,a0,a1
sw	a2,296(a5)


inst_38:
lw	a0,304(a6)
lw	a1,308(a6)
fdiv.s	a2,a0,a1
sw	a2,304(a5)


inst_39:
lw	a0,312(a6)
lw	a1,316(a6)
fdiv.s	a2,a0,a1
sw	a2,312(a5)


#endif

RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
test_fp:
.word 0x0
.word 0x0
.word 0xbf800000
.word 0xbf800000
.word 0xbf800000
.word 0xbf800000
.word 0xbf800000
.word 0xbf800000
.word 0xbf800000
.word 0x7f800001
.word 0xbf800000
.word 0xffc55555
.word 0xbf800000
.word 0x7fc00001
.word 0xbf800000
.word 0xffc00000
.word 0xbf800000
.word 0x7fc00000
.word 0xbf800000
.word 0xff800000
.word 0xbf800000
.word 0x7f800000
.word 0xbf800000
.word 0xff7fffff
.word 0xbf800000
.word 0x7f7fffff
.word 0xbf800000
.word 0x80855555
.word 0xbf800000
.word 0x800001
.word 0xbf800000
.word 0x80800000
.word 0xbf800000
.word 0x800000
.word 0xbf800000
.word 0x807fffff
.word 0xbf800000
.word 0x7fffff
.word 0xbf800000
.word 0x807ffffe
.word 0xbf800000
.word 0x2
.word 0xbf800000
.word 0x80000001
.word 0xbf800000
.word 0x1
.word 0xbf800000
.word 0x80000000
.word 0xbf800000
.word 0x0
.word 0x3f800000
.word 0xbf800000
.word 0x3f800000
.word 0x3f800000
.word 0x3f800000
.word 0xffaaaaaa
.word 0x3f800000
.word 0x7f800001
.word 0x3f800000
.word 0xffc55555
.word 0x3f800000
.word 0x7fc00001
.word 0x3f800000
.word 0xffc00000
.word 0x3f800000
.word 0x7fc00000
.word 0x3f800000
.word 0xff800000
.word 0x3f800000
.word 0x7f800000
.word 0x3f800000
.word 0xff7fffff
.word 0x3f800000
.word 0x7f7fffff
.word 0x3f800000
.word 0x80855555
.word 0x3f800000
.word 0x800001
.word 0x3f800000
.word 0x80800000
.word 0x3f800000
.word 0x800000
.word 0x3f800000
.word 0x807fffff
.word 0x3f800000
.word 0x7fffff
.word 0x3f800000
.word 0x807ffffe
.word 0x3f800000
.word 0x2
.word 0x3f800000
.word 0x80000001
.word 0x3f800000
.word 0x1
.word 0x3f800000
.word 0x80000000
.word 0x3f800000
.word 0x0
.word 0xffaaaaaa
.word 0xbf800000
.word 0xffaaaaaa
.word 0x3f800000
.word 0xffaaaaaa
.word 0xffaaaaaa
.word 0xffaaaaaa
.word 0x7f800001
.word 0xffaaaaaa
.word 0xffc55555
.word 0xffaaaaaa
.word 0x7fc00001
.word 0xffaaaaaa
.word 0xffc00000
.word 0xffaaaaaa
.word 0x7fc00000
.word 0xffaaaaaa
.word 0xff800000
.word 0xffaaaaaa
.word 0x7f800000
.word 0xffaaaaaa
.word 0xff7fffff
.word 0xffaaaaaa
.word 0x7f7fffff
.word 0xffaaaaaa
.word 0x80855555
.word 0xffaaaaaa
.word 0x800001
.word 0xffaaaaaa
.word 0x80800000
.word 0xffaaaaaa
.word 0x800000
.word 0xffaaaaaa
.word 0x807fffff
.word 0xffaaaaaa
.word 0x7fffff
.word 0xffaaaaaa
.word 0x807ffffe
.word 0xffaaaaaa
.word 0x2
.word 0xffaaaaaa
.word 0x80000001
.word 0xffaaaaaa
.word 0x1
.word 0xffaaaaaa
.word 0x80000000
.word 0xffaaaaaa
.word 0x0
.word 0x7f800001
.word 0xbf800000
.word 0x7f800001
.word 0x3f800000
.word 0x7f800001
.word 0xffaaaaaa
.word 0x7f800001
.word 0x7f800001
.word 0x7f800001
.word 0xffc55555
.word 0x7f800001
.word 0x7fc00001
.word 0x7f800001
.word 0xffc00000
.word 0x7f800001
.word 0x7fc00000
.word 0x7f800001
.word 0xff800000
.word 0x7f800001
.word 0x7f800000
.word 0x7f800001
.word 0xff7fffff
.word 0x7f800001
.word 0x7f7fffff
.word 0x7f800001
.word 0x80855555
.word 0x7f800001
.word 0x800001
.word 0x7f800001
.word 0x80800000
.word 0x7f800001
.word 0x800000
.word 0x7f800001
.word 0x807fffff
.word 0x7f800001
.word 0x7fffff
.word 0x7f800001
.word 0x807ffffe
.word 0x7f800001
.word 0x2
.word 0x7f800001
.word 0x80000001
.word 0x7f800001
.word 0x1
.word 0x7f800001
.word 0x80000000
.word 0x7f800001
.word 0x0
.word 0xffc55555
.word 0xbf800000
.word 0xffc55555
.word 0x3f800000
.word 0xffc55555
.word 0xffaaaaaa
.word 0xffc55555
.word 0x7f800001
.word 0xffc55555
.word 0xffc55555
.word 0xffc55555
.word 0x7fc00001
.word 0xffc55555
.word 0xffc00000
.word 0xffc55555
.word 0x7fc00000
.word 0xffc55555
.word 0xff800000
.word 0xffc55555
.word 0x7f800000
.word 0xffc55555
.word 0xff7fffff
.word 0xffc55555
.word 0x7f7fffff
.word 0xffc55555
.word 0x80855555
.word 0xffc55555
.word 0x800001
.word 0xffc55555
.word 0x80800000
.word 0xffc55555
.word 0x800000
.word 0xffc55555
.word 0x807fffff
.word 0xffc55555
.word 0x7fffff
.word 0xffc55555
.word 0x807ffffe
.word 0xffc55555
.word 0x2
.word 0xffc55555
.word 0x80000001
.word 0xffc55555
.word 0x1
.word 0xffc55555
.word 0x80000000
.word 0xffc55555
.word 0x0
.word 0x7fc00001
.word 0xbf800000
.word 0x7fc00001
.word 0x3f800000
.word 0x7fc00001
.word 0xffaaaaaa
.word 0x7fc00001
.word 0x7f800001
.word 0x7fc00001
.word 0xffc55555
.word 0x7fc00001
.word 0x7fc00001
.word 0x7fc00001
.word 0xffc00000
.word 0x7fc00001
.word 0x7fc00000
.word 0x7fc00001
.word 0xff800000
.word 0x7fc00001
.word 0x7f800000
.word 0x7fc00001
.word 0xff7fffff
.word 0x7fc00001
.word 0x7f7fffff
.word 0x7fc00001
.word 0x80855555
.word 0x7fc00001
.word 0x800001
.word 0x7fc00001
.word 0x80800000
.word 0x7fc00001
.word 0x800000
.word 0x7fc00001
.word 0x807fffff
.word 0x7fc00001
.word 0x7fffff
.word 0x7fc00001
.word 0x807ffffe
.word 0x7fc00001
.word 0x2
.word 0x7fc00001
.word 0x80000001
.word 0x7fc00001
.word 0x1
.word 0x7fc00001
.word 0x80000000
.word 0x7fc00001
.word 0x0
.word 0xffc00000
.word 0xbf800000
.word 0xffc00000
.word 0x3f800000
.word 0xffc00000
.word 0xffaaaaaa
.word 0xffc00000
.word 0x7f800001
.word 0xffc00000
.word 0xffc55555
.word 0xffc00000
.word 0x7fc00001
.word 0xffc00000
.word 0xffc00000
.word 0xffc00000
.word 0x7fc00000
.word 0xffc00000
.word 0xff800000
.word 0xffc00000
.word 0x7f800000
.word 0xffc00000
.word 0xff7fffff
.word 0xffc00000
.word 0x7f7fffff
.word 0xffc00000
.word 0x80855555
.word 0xffc00000
.word 0x800001
.word 0xffc00000
.word 0x80800000
.word 0xffc00000
.word 0x800000
.word 0xffc00000
.word 0x807fffff
.word 0xffc00000
.word 0x7fffff
.word 0xffc00000
.word 0x807ffffe
.word 0xffc00000
.word 0x2
.word 0xffc00000
.word 0x80000001
.word 0xffc00000
.word 0x1
.word 0xffc00000
.word 0x80000000
.word 0xffc00000
.word 0x0
.word 0x7fc00000
.word 0xbf800000
.word 0x7fc00000
.word 0x3f800000
.word 0x7fc00000
.word 0xffaaaaaa
.word 0x7fc00000
.word 0x7f800001
.word 0x7fc00000
.word 0xffc55555
.word 0x7fc00000
.word 0x7fc00001
.word 0x7fc00000
.word 0xffc00000
.word 0x7fc00000
.word 0x7fc00000
.word 0x7fc00000
.word 0xff800000
.word 0x7fc00000
.word 0x7f800000
.word 0x7fc00000
.word 0xff7fffff
.word 0x7fc00000
.word 0x7f7fffff
.word 0x7fc00000
.word 0x80855555
.word 0x7fc00000
.word 0x800001
.word 0x7fc00000
.word 0x80800000
.word 0x7fc00000
.word 0x800000
.word 0x7fc00000
.word 0x807fffff
.word 0x7fc00000
.word 0x7fffff
.word 0x7fc00000
.word 0x807ffffe
.word 0x7fc00000
.word 0x2
.word 0x7fc00000
.word 0x80000001
.word 0x7fc00000
.word 0x1
.word 0x7fc00000
.word 0x80000000
.word 0x7fc00000
.word 0x0
.word 0xff800000
.word 0xbf800000
.word 0xff800000
.word 0x3f800000
.word 0xff800000
.word 0xffaaaaaa
.word 0xff800000
.word 0x7f800001
.word 0xff800000
.word 0xffc55555
.word 0xff800000
.word 0x7fc00001
.word 0xff800000
.word 0xffc00000
.word 0xff800000
.word 0x7fc00000
.word 0xff800000
.word 0xff800000
.word 0xff800000
.word 0x7f800000
.word 0xff800000
.word 0xff7fffff
.word 0xff800000
.word 0x7f7fffff
.word 0xff800000
.word 0x80855555
.word 0xff800000
.word 0x800001
.word 0xff800000
.word 0x80800000
.word 0xff800000
.word 0x800000
.word 0xff800000
.word 0x807fffff
.word 0xff800000
.word 0x7fffff
.word 0xff800000
.word 0x807ffffe
.word 0xff800000
.word 0x2
.word 0xff800000
.word 0x80000001
.word 0xff800000
.word 0x1
.word 0xff800000
.word 0x80000000
.word 0xff800000
.word 0x0
.word 0x7f800000
.word 0xbf800000
.word 0x7f800000
.word 0x3f800000
.word 0x7f800000
.word 0xffaaaaaa
.word 0x7f800000
.word 0x7f800001
.word 0x7f800000
.word 0xffc55555
.word 0x7f800000
.word 0x7fc00001
.word 0x7f800000
.word 0xffc00000
.word 0x7f800000
.word 0x7fc00000
.word 0x7f800000
.word 0xff800000
.word 0x7f800000
.word 0x7f800000
.word 0x7f800000
.word 0xff7fffff
.word 0x7f800000
.word 0x7f7fffff
.word 0x7f800000
.word 0x80855555
.word 0x7f800000
.word 0x800001
.word 0x7f800000
.word 0x80800000
.word 0x7f800000
.word 0x800000
.word 0x7f800000
.word 0x807fffff
.word 0x7f800000
.word 0x7fffff
.word 0x7f800000
.word 0x807ffffe
.word 0x7f800000
.word 0x2
.word 0x7f800000
.word 0x80000001
.word 0x7f800000
.word 0x1
.word 0x7f800000
.word 0x80000000
.word 0x7f800000
.word 0x0
.word 0xff7fffff
.word 0xbf800000
.word 0xff7fffff
.word 0x3f800000
.word 0xff7fffff
.word 0xffaaaaaa
.word 0xff7fffff
.word 0x7f800001
.word 0xff7fffff
.word 0xffc55555
.word 0xff7fffff
.word 0x7fc00001
.word 0xff7fffff
.word 0xffc00000
.word 0xff7fffff
.word 0x7fc00000
.word 0xff7fffff
.word 0xff800000
.word 0xff7fffff
.word 0x7f800000
.word 0xff7fffff
.word 0xff7fffff
.word 0xff7fffff
.word 0x7f7fffff
.word 0xff7fffff
.word 0x80855555
.word 0xff7fffff
.word 0x800001
.word 0xff7fffff
.word 0x80800000
.word 0xff7fffff
.word 0x800000
.word 0xff7fffff
.word 0x807fffff
.word 0xff7fffff
.word 0x7fffff
.word 0xff7fffff
.word 0x807ffffe
.word 0xff7fffff
.word 0x2
.word 0xff7fffff
.word 0x80000001
.word 0xff7fffff
.word 0x1
.word 0xff7fffff
.word 0x80000000
.word 0xff7fffff
.word 0x0
.word 0x7f7fffff
.word 0xbf800000
.word 0x7f7fffff
.word 0x3f800000
.word 0x7f7fffff
.word 0xffaaaaaa
.word 0x7f7fffff
.word 0x7f800001
.word 0x7f7fffff
.word 0xffc55555
.word 0x7f7fffff
.word 0x7fc00001
.word 0x7f7fffff
.word 0xffc00000
.word 0x7f7fffff
.word 0x7fc00000
.word 0x7f7fffff
.word 0xff800000
.word 0x7f7fffff
.word 0x7f800000
.word 0x7f7fffff
.word 0xff7fffff
.word 0x7f7fffff
.word 0x7f7fffff
.word 0x7f7fffff
.word 0x80855555
.word 0x7f7fffff
.word 0x800001
.word 0x7f7fffff
.word 0x80800000
.word 0x7f7fffff
.word 0x800000
.word 0x7f7fffff
.word 0x807fffff
.word 0x7f7fffff
.word 0x7fffff
.word 0x7f7fffff
.word 0x807ffffe
.word 0x7f7fffff
.word 0x2
.word 0x7f7fffff
.word 0x80000001
.word 0x7f7fffff
.word 0x1
.word 0x7f7fffff
.word 0x80000000
.word 0x7f7fffff
.word 0x0
.word 0x80855555
.word 0xbf800000
.word 0x80855555
.word 0x3f800000
.word 0x80855555
.word 0xffaaaaaa
.word 0x80855555
.word 0x7f800001
.word 0x80855555
.word 0xffc55555
.word 0x80855555
.word 0x7fc00001
.word 0x80855555
.word 0xffc00000
.word 0x80855555
.word 0x7fc00000
.word 0x80855555
.word 0xff800000
.word 0x80855555
.word 0x7f800000
.word 0x80855555
.word 0xff7fffff
.word 0x80855555
.word 0x7f7fffff
.word 0x80855555
.word 0x80855555
.word 0x80855555
.word 0x800001
.word 0x80855555
.word 0x80800000
.word 0x80855555
.word 0x800000
.word 0x80855555
.word 0x807fffff
.word 0x80855555
.word 0x7fffff
.word 0x80855555
.word 0x807ffffe
.word 0x80855555
.word 0x2
.word 0x80855555
.word 0x80000001
.word 0x80855555
.word 0x1
.word 0x80855555
.word 0x80000000
.word 0x80855555
.word 0x0
.word 0x800001
.word 0xbf800000
.word 0x800001
.word 0x3f800000
.word 0x800001
.word 0xffaaaaaa
.word 0x800001
.word 0x7f800001
.word 0x800001
.word 0xffc55555
.word 0x800001
.word 0x7fc00001
.word 0x800001
.word 0xffc00000
.word 0x800001
.word 0x7fc00000
.word 0x800001
.word 0xff800000
.word 0x800001
.word 0x7f800000
.word 0x800001
.word 0xff7fffff
.word 0x800001
.word 0x7f7fffff
.word 0x800001
.word 0x80855555
.word 0x800001
.word 0x800001
.word 0x800001
.word 0x80800000
.word 0x800001
.word 0x800000
.word 0x800001
.word 0x807fffff
.word 0x800001
.word 0x7fffff
.word 0x800001
.word 0x807ffffe
.word 0x800001
.word 0x2
.word 0x800001
.word 0x80000001
.word 0x800001
.word 0x1
.word 0x800001
.word 0x80000000
.word 0x800001
.word 0x0
.word 0x80800000
.word 0xbf800000
.word 0x80800000
.word 0x3f800000
.word 0x80800000
.word 0xffaaaaaa
.word 0x80800000
.word 0x7f800001
.word 0x80800000
.word 0xffc55555
.word 0x80800000
.word 0x7fc00001
.word 0x80800000
.word 0xffc00000
.word 0x80800000
.word 0x7fc00000
.word 0x80800000
.word 0xff800000
.word 0x80800000
.word 0x7f800000
.word 0x80800000
.word 0xff7fffff
.word 0x80800000
.word 0x7f7fffff
.word 0x80800000
.word 0x80855555
.word 0x80800000
.word 0x800001
.word 0x80800000
.word 0x80800000
.word 0x80800000
.word 0x800000
.word 0x80800000
.word 0x807fffff
.word 0x80800000
.word 0x7fffff
.word 0x80800000
.word 0x807ffffe
.word 0x80800000
.word 0x2
.word 0x80800000
.word 0x80000001
.word 0x80800000
.word 0x1
.word 0x80800000
.word 0x80000000
.word 0x80800000
.word 0x0
.word 0x800000
.word 0xbf800000
.word 0x800000
.word 0x3f800000
.word 0x800000
.word 0xffaaaaaa
.word 0x800000
.word 0x7f800001
.word 0x800000
.word 0xffc55555
.word 0x800000
.word 0x7fc00001
.word 0x800000
.word 0xffc00000
.word 0x800000
.word 0x7fc00000
.word 0x800000
.word 0xff800000
.word 0x800000
.word 0x7f800000
.word 0x800000
.word 0xff7fffff
.word 0x800000
.word 0x7f7fffff
.word 0x800000
.word 0x80855555
.word 0x800000
.word 0x800001
.word 0x800000
.word 0x80800000
.word 0x800000
.word 0x800000
.word 0x800000
.word 0x807fffff
.word 0x800000
.word 0x7fffff
.word 0x800000
.word 0x807ffffe
.word 0x800000
.word 0x2
.word 0x800000
.word 0x80000001
.word 0x800000
.word 0x1
.word 0x800000
.word 0x80000000
.word 0x800000
.word 0x0
.word 0x807fffff
.word 0xbf800000
.word 0x807fffff
.word 0x3f800000
.word 0x807fffff
.word 0xffaaaaaa
.word 0x807fffff
.word 0x7f800001
.word 0x807fffff
.word 0xffc55555
.word 0x807fffff
.word 0x7fc00001
.word 0x807fffff
.word 0xffc00000
.word 0x807fffff
.word 0x7fc00000
.word 0x807fffff
.word 0xff800000
.word 0x807fffff
.word 0x7f800000
.word 0x807fffff
.word 0xff7fffff
.word 0x807fffff
.word 0x7f7fffff
.word 0x807fffff
.word 0x80855555
.word 0x807fffff
.word 0x800001
.word 0x807fffff
.word 0x80800000
.word 0x807fffff
.word 0x800000
.word 0x807fffff
.word 0x807fffff
.word 0x807fffff
.word 0x7fffff
.word 0x807fffff
.word 0x807ffffe
.word 0x807fffff
.word 0x2
.word 0x807fffff
.word 0x80000001
.word 0x807fffff
.word 0x1
.word 0x807fffff
.word 0x80000000
.word 0x807fffff
.word 0x0
.word 0x7fffff
.word 0xbf800000
.word 0x7fffff
.word 0x3f800000
.word 0x7fffff
.word 0xffaaaaaa
.word 0x7fffff
.word 0x7f800001
.word 0x7fffff
.word 0xffc55555
.word 0x7fffff
.word 0x7fc00001
.word 0x7fffff
.word 0xffc00000
.word 0x7fffff
.word 0x7fc00000
.word 0x7fffff
.word 0xff800000
.word 0x7fffff
.word 0x7f800000
.word 0x7fffff
.word 0xff7fffff
.word 0x7fffff
.word 0x7f7fffff
.word 0x7fffff
.word 0x80855555
.word 0x7fffff
.word 0x800001
.word 0x7fffff
.word 0x80800000
.word 0x7fffff
.word 0x800000
.word 0x7fffff
.word 0x807fffff
.word 0x7fffff
.word 0x7fffff
.word 0x7fffff
.word 0x807ffffe
.word 0x7fffff
.word 0x2
.word 0x7fffff
.word 0x80000001
.word 0x7fffff
.word 0x1
.word 0x7fffff
.word 0x80000000
.word 0x7fffff
.word 0x0
.word 0x807ffffe
.word 0xbf800000
.word 0x807ffffe
.word 0x3f800000
.word 0x807ffffe
.word 0xffaaaaaa
.word 0x807ffffe
.word 0x7f800001
.word 0x807ffffe
.word 0xffc55555
.word 0x807ffffe
.word 0x7fc00001
.word 0x807ffffe
.word 0xffc00000
.word 0x807ffffe
.word 0x7fc00000
.word 0x807ffffe
.word 0xff800000
.word 0x807ffffe
.word 0x7f800000
.word 0x807ffffe
.word 0xff7fffff
.word 0x807ffffe
.word 0x7f7fffff
.word 0x807ffffe
.word 0x80855555
.word 0x807ffffe
.word 0x800001
.word 0x807ffffe
.word 0x80800000
.word 0x807ffffe
.word 0x800000
.word 0x807ffffe
.word 0x807fffff
.word 0x807ffffe
.word 0x7fffff
.word 0x807ffffe
.word 0x807ffffe
.word 0x807ffffe
.word 0x2
.word 0x807ffffe
.word 0x80000001
.word 0x807ffffe
.word 0x1
.word 0x807ffffe
.word 0x80000000
.word 0x807ffffe
.word 0x0
.word 0x2
.word 0xbf800000
.word 0x2
.word 0x3f800000
.word 0x2
.word 0xffaaaaaa
.word 0x2
.word 0x7f800001
.word 0x2
.word 0xffc55555
.word 0x2
.word 0x7fc00001
.word 0x2
.word 0xffc00000
.word 0x2
.word 0x7fc00000
.word 0x2
.word 0xff800000
.word 0x2
.word 0x7f800000
.word 0x2
.word 0xff7fffff
.word 0x2
.word 0x7f7fffff
.word 0x2
.word 0x80855555
.word 0x2
.word 0x800001
.word 0x2
.word 0x80800000
.word 0x2
.word 0x800000
.word 0x2
.word 0x807fffff
.word 0x2
.word 0x7fffff
.word 0x2
.word 0x807ffffe
.word 0x2
.word 0x2
.word 0x2
.word 0x80000001
.word 0x2
.word 0x1
.word 0x2
.word 0x80000000
.word 0x2
.word 0x0
.word 0x80000001
.word 0xbf800000
.word 0x80000001
.word 0x3f800000
.word 0x80000001
.word 0xffaaaaaa
.word 0x80000001
.word 0x7f800001
.word 0x80000001
.word 0xffc55555
.word 0x80000001
.word 0x7fc00001
.word 0x80000001
.word 0xffc00000
.word 0x80000001
.word 0x7fc00000
.word 0x80000001
.word 0xff800000
.word 0x80000001
.word 0x7f800000
.word 0x80000001
.word 0xff7fffff
.word 0x80000001
.word 0x7f7fffff
.word 0x80000001
.word 0x80855555
.word 0x80000001
.word 0x800001
.word 0x80000001
.word 0x80800000
.word 0x80000001
.word 0x800000
.word 0x80000001
.word 0x807fffff
.word 0x80000001
.word 0x7fffff
.word 0x80000001
.word 0x807ffffe
.word 0x80000001
.word 0x2
.word 0x80000001
.word 0x80000001
.word 0x80000001
.word 0x1
.word 0x80000001
.word 0x80000000
.word 0x80000001
.word 0x0
.word 0x1
.word 0xbf800000
.word 0x1
.word 0x3f800000
.word 0x1
.word 0xffaaaaaa
.word 0x1
.word 0x7f800001
.word 0x1
.word 0xffc55555
.word 0x1
.word 0x7fc00001
.word 0x1
.word 0xffc00000
.word 0x1
.word 0x7fc00000
.word 0x1
.word 0xff800000
.word 0x1
.word 0x7f800000
.word 0x1
.word 0xff7fffff
.word 0x1
.word 0x7f7fffff
.word 0x1
.word 0x80855555
.word 0x1
.word 0x800001
.word 0x1
.word 0x80800000
.word 0x1
.word 0x800000
.word 0x1
.word 0x807fffff
.word 0x1
.word 0x7fffff
.word 0x1
.word 0x807ffffe
.word 0x1
.word 0x2
.word 0x1
.word 0x80000001
.word 0x1
.word 0x1
.word 0x1
.word 0x80000000
.word 0x1
.word 0x0
.word 0x80000000
.word 0xbf800000
.word 0x80000000
.word 0x3f800000
.word 0x80000000
.word 0xffaaaaaa
.word 0x80000000
.word 0x7f800001
.word 0x80000000
.word 0xffc55555
.word 0x80000000
.word 0x7fc00001
.word 0x80000000
.word 0xffc00000
.word 0x80000000
.word 0x7fc00000
.word 0x80000000
.word 0xff800000
.word 0x80000000
.word 0x7f800000
.word 0x80000000
.word 0xff7fffff
.word 0x80000000
.word 0x7f7fffff
.word 0x80000000
.word 0x80855555
.word 0x80000000
.word 0x800001
.word 0x80000000
.word 0x80800000
.word 0x80000000
.word 0x800000
.word 0x80000000
.word 0x807fffff
.word 0x80000000
.word 0x7fffff
.word 0x80000000
.word 0x807ffffe
.word 0x80000000
.word 0x2
.word 0x80000000
.word 0x80000001
.word 0x80000000
.word 0x1
.word 0x80000000
.word 0x80000000
.word 0x80000000
.word 0x0
.word 0x0
.word 0xbf800000
.word 0x0
.word 0x3f800000
.word 0x0
.word 0xffaaaaaa
.word 0x0
.word 0x7f800001
.word 0x0
.word 0xffc55555
.word 0x0
.word 0x7fc00001
.word 0x0
.word 0xffc00000
.word 0x0
.word 0x7fc00000
.word 0x0
.word 0xff800000
.word 0x0
.word 0x7f800000
.word 0x0
.word 0xff7fffff
.word 0x0
.word 0x7f7fffff
.word 0x0
.word 0x80855555
.word 0x0
.word 0x800001
.word 0x0
.word 0x80800000
.word 0x0
.word 0x800000
.word 0x0
.word 0x807fffff
.word 0x0
.word 0x7fffff
.word 0x0
.word 0x807ffffe
.word 0x0
.word 0x2
.word 0x0
.word 0x80000001
.word 0x0
.word 0x1
.word 0x0
.word 0x80000000
.word 0xbf800000
.word 0x3f800000
.word 0xbf800000
.word 0xffaaaaaa
RVTEST_DATA_END

RVMODEL_DATA_BEGIN


signature_x15_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x15_1:
    .fill 508*(XLEN/32),4,0xdeadbeef


signature_x15_2:
    .fill 508*(XLEN/32),4,0xdeadbeef


signature_x15_3:
    .fill 140*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
