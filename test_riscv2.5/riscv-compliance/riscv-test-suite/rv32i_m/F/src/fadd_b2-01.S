
// -----------
// This file was generated by riscv_ctg (https://gitlab.com/incoresemi/riscv-compliance/riscv_ctg)
// version   : 0.5.2
// timestamp : Tue Sep  7 16:07:52 2021 GMT
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
// This assembly file tests the fadd.s instruction of the RISC-V F extension for the fadd_b1 covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32I_Zfinx")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*Zfinx.*);def TEST_CASE_1=True;",fadd_b1)

RVTEST_FP_ENABLE()
RVTEST_VALBASEUPD(x16,test_fp)
RVTEST_SIGBASE(x15,signature_x15_1)

inst_0:

lw 	a0,0(a6)			
lw	a0,4(a6)
fadd.s	a0,a0,a0
sw	a0,0(a5)

inst_1:
lw	a1,8(a6)
lw	a2,12(a6)
fadd.s	a2,a1,a2
sw	a2,8(a5)

inst_2:
lw	a1,16(a6)
lw	a2,20(a6)
fadd.s	a2,a1,a2
sw	a2,16(a5)

inst_3:
lw	a1,24(a6)
lw	a2,28(a6)
fadd.s	a2,a1,a2
sw	a2,24(a5)

inst_4:
lw	t2,32(a6)
lw	t2,36(a6)
fadd.s	s10,t2,t2
sw	s10,32(a5)

inst_5:
lw	s6,40(a6)
lw	t4,44(a6)
fadd.s	a3,s6,t4
sw	a3,40(a5)

inst_6:
lw	s6,48(a6)
lw	t4,52(a6)
fadd.s	a3,s6,t4
sw	a3,48(a5)

inst_7:
lw	s6,56(a6)
lw	t4,60(a6)
fadd.s	a3,s6,t4
sw	a3,56(a5)

inst_8:
lw	t4,64(a6)
lw	a7,68(a6)
fadd.s	s2,t4,a7
sw	s2,64(a5)

inst_9:
lw	s11,72(a6)
lw	t1,76(a6)
fadd.s	t5,s11,t1
sw	t5,72(a5)


inst_10:
lw	a4,80(a6)
lw	t2,84(a6)
fadd.s	s1,a4,t2
sw	s1,80(a5)


inst_11:
lw	s10,88(a6)
lw	s9,92(a6)
fadd.s	s7,s10,s9
sw	s7,88(a5)


inst_12:
lw	s1,96(a6)
lw	a3,100(a6)
fadd.s	t6,s1,a3
sw	t6,96(a5)

inst_13:
lw	a7,104(a6)
lw	t2,108(a6)
fadd.s	a4,a7,t2
sw	a4,104(a5)

inst_14:
lw	t6,112(a6)
lw	s8,116(a6)
fadd.s	t1,t6,s8
sw	t1,112(a5)

inst_15:
lw	a3,120(a6)
lw	s2,124(a6)
fadd.s	s3,a3,s2
sw	s3,120(a5)

inst_16:
lw	s8,128(a6)
lw	s10,132(a6)
fadd.s	a1,s8,s10
sw	a1,128(a5)
     
inst_17:
lw	t5,136(a6)
lw	s4,140(a6)
fadd.s	t0,t5,s4
sw	t0,136(a5)

inst_18:
lw	t0,144(a6)
lw	t6,148(a6)
fadd.s	t2,t0,t6
sw	t2,144(a5)

inst_19:
lw	s2,152(a6)
lw	s7,156(a6)
fadd.s	t2,s2,s7
sw	t2,152(a5)

inst_20:
lw	t6,160(a6)
lw	s3,164(a6)
fadd.s	t4,t6,s3
sw	t4,160(a5)

inst_21:
lw	s7,168(a6)
lw	s4,172(a6)
fadd.s	s3,s7,s4
sw	s3,168(a5)

inst_22:
lw	t4,176(a6)
lw	t6,180(a6)
fadd.s	s6,t4,t6
sw	s6,176(a5)

inst_23:
lw	t1,184(a6)
lw	t2,188(a6)
fadd.s	s8,t1,t2
sw	s8,184(a5)

inst_24:
lw	t5,192(a6)
lw	s11,196(a6)
fadd.s	t4,t5,s11
sw	t4,192(a5)

inst_25:
lw	t2,200(a6)
lw	t0,204(a6)
fadd.s	s6,t2,t0
sw	s6,200(a5)

inst_26:
lw	s5,208(a6)
lw	a1,212(a6)
fadd.s	s1,s5,a1
sw	s1,208(a5)

inst_27:
lw	a1,216(a6)
lw	t3,220(a6)
fadd.s	s1,a1,t3
sw 	s1,216(a5)

//27 inst muestra las salidas completas

inst_28:
lw	s3,224(a6)
lw	s1,228(a6)
fadd.s	s2,s3,s1
sw	s2,224(a5)

inst_29:
lw	a0,232(a6)
lw	t6,236(a6)
fadd.s	s4,a0,t6
sw	s4,232(a5)


inst_30:
lw	s9,240(a6)
lw	a4,244(a6)
fadd.s	a7,s9,a4
sw	a7,240(a5)

inst_31:
lw	s4,248(a6)
lw	t1,252(a6)
fadd.s	t0,s4,t1
sw	t0,248(a5)

inst_32:
lw	a0,256(a6)
lw	a1,260(a6)
fadd.s	a2,a0,a1
sw	a2,256(a5)

inst_33:
lw	a0,264(a6)
lw	a1,268(a6)
fadd.s	a2,a0,a1
sw	a2,264(a5)

inst_34:
lw	a0,272(a6)
lw	a1,276(a6)
fadd.s	a2,a0,a1
sw	a2,272(a5)

inst_35:
lw	a0,280(a6)
lw	a1,284(a6)
fadd.s	a2,a0,a1
sw	a2,280(a5)

inst_36:
lw	a0,288(a6)
lw	a1,292(a6)
fadd.s	a2,a0,a1
sw	a2,288(a5)

inst_37:
lw	a0,296(a6)
lw	a1,300(a6)
fadd.s	a2,a0,a1
sw	a2,296(a5)

inst_38:
lw	a0,304(a6)
lw	a1,308(a6)
fadd.s	a2,a0,a1
sw	a2,304(a5)

inst_39:
lw	a0,312(a6)
lw	a1,316(a6)
fadd.s	a2,a0,a1
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
.word 0x3f800000
.word 0xbf800000
.word 0xffaaaaaa
.word 0xbf800000
.word 0xbf800000
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
.word 0x0
.word 0x0
.word 0xbf800000
.word 0x7f800001
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
