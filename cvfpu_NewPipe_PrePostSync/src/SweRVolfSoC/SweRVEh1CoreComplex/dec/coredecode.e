in=decode
out=decode.out
view=rv32i
.i 32
.o 53
.ilb  i[31] i[30] i[29] i[28] i[27] i[26] i[25] i[24] i[23] i[22] i[21] i[20] i[19] i[18] i[17] i[16] i[15] i[14] i[13] i[12] i[11] i[10] i[9] i[8] i[7] i[6] i[5] i[4] i[3] i[2] i[1] i[0]
.ob  fp_add fp_mul fp_div fp_sub alu rs1 rs2 imm12 rd shimm5 imm20 pc load store lsu add sub land lor lxor sll sra srl slt unsign condbr beq bne bge blt jal by half word csr_read csr_clr csr_set csr_write csr_imm presync postsync ebreak ecall mret mul rs1_sign rs2_sign low div rem fence fence_i pm_alu
.type fr
# add
0000000----------000-----0110011 00001110100000010000000000000000000000000000000000001
# addi
-----------------000-----0010011 00001101100000010000000000000000000000000000000000001
# and
0000000----------111-----0110011 00001110100000000100000000000000000000000000000000001
# andi
-----------------111-----0010011 00001101100000000100000000000000000000000000000000001
# auipc
-------------------------0010111 00001000101100010000000000000000000000000000000000001
# beq
-----------------000-----1100011 00001110000000001000000001100000000000000000000000000
# bge
-----------------101-----1100011 00001110000000001000000001001000000000000000000000000
# bgeu
-----------------111-----1100011 00001110000000001000000011001000000000000000000000000
# blt
-----------------100-----1100011 00001110000000001000000001000100000000000000000000000
# bltu
-----------------110-----1100011 00001110000000001000000011000100000000000000000000000
# bne
-----------------001-----1100011 00001110000000001000000001010000000000000000000000000
# csrrc_ro
------------00000011-----1110011 00001000100000000010000000000000001000000000000000000
# csrrc_rw0
------------1----011-----1110011 00001100100000000010000000000000001100011000000000000
# csrrc_rw1
-------------1---011-----1110011 00001100100000000010000000000000001100011000000000000
# csrrc_rw2
--------------1--011-----1110011 00001100100000000010000000000000001100011000000000000
# csrrc_rw3
---------------1-011-----1110011 00001100100000000010000000000000001100011000000000000
# csrrc_rw4
----------------1011-----1110011 00001100100000000010000000000000001100011000000000000
# csrrci_ro
------------00000111-----1110011 00001000100000000010000000000000001000000000000000000
# csrrci_rw0
------------1----111-----1110011 00001100100000000010000000000000001100111000000000000
# csrrci_rw1
-------------1---111-----1110011 00001100100000000010000000000000001100111000000000000
# csrrci_rw2
--------------1--111-----1110011 00001100100000000010000000000000001100111000000000000
# csrrci_rw3
---------------1-111-----1110011 00001100100000000010000000000000001100111000000000000
# csrrci_rw4
----------------1111-----1110011 00001100100000000010000000000000001100111000000000000
# csrrs_ro
------------00000010-----1110011 00001000100000000010000000000000001000000000000000000
# csrrs_rw0
------------1----010-----1110011 00001100100000000010000000000000001010011000000000000
# csrrs_rw1
-------------1---010-----1110011 00001100100000000010000000000000001010011000000000000
# csrrs_rw2
--------------1--010-----1110011 00001100100000000010000000000000001010011000000000000
# csrrs_rw3
---------------1-010-----1110011 00001100100000000010000000000000001010011000000000000
# csrrs_rw4
----------------1010-----1110011 00001100100000000010000000000000001010011000000000000
# csrrsi_ro
------------00000110-----1110011 00001000100000000010000000000000001000000000000000000
# csrrsi_rw0
------------1----110-----1110011 00001100100000000010000000000000001010111000000000000
# csrrsi_rw1
-------------1---110-----1110011 00001100100000000010000000000000001010111000000000000
# csrrsi_rw2
--------------1--110-----1110011 00001100100000000010000000000000001010111000000000000
# csrrsi_rw3
---------------1-110-----1110011 00001100100000000010000000000000001010111000000000000
# csrrsi_rw4
----------------1110-----1110011 00001100100000000010000000000000001010111000000000000
# csrrw0
-----------------001----11110011 00001100100000000010000000000000001001011000000000000
# csrrw1
-----------------001---1-1110011 00001100100000000010000000000000001001011000000000000
# csrrw2
-----------------001--1--1110011 00001100100000000010000000000000001001011000000000000
# csrrw3
-----------------001-1---1110011 00001100100000000010000000000000001001011000000000000
# csrrw4
-----------------0011----1110011 00001100100000000010000000000000001001011000000000000
# csrrwi0
-----------------101----11110011 00001100100000000010000000000000001001111000000000000
# csrrwi1
-----------------101---1-1110011 00001100100000000010000000000000001001111000000000000
# csrrwi2
-----------------101--1--1110011 00001100100000000010000000000000001001111000000000000
# csrrwi3
-----------------101-1---1110011 00001100100000000010000000000000001001111000000000000
# csrrwi4
-----------------1011----1110011 00001100100000000010000000000000001001111000000000000
# csrw
-----------------001000001110011 00001100100000000000000000000000000001000000000000000
# csrwi
-----------------101000001110011 00001000100000000000000000000000000001100000000000000
# div
0000001----------100-----0110011 00000110100000000000000000000000000000011000000010000
# divu
0000001----------101-----0110011 00000110100000000000000010000000000000011000000010000
# ebreak
00000000000100000000000001110011 00001101100000000010000000000000000000001100000000000
# ecall
00000000000000000000000001110011 00001101100000000010000000000000000000001010000000000
# fadd
0000000------------------1010011 10000110100000000000000000000000000000011000000000000
# fdiv
0001100------------------1010011 00100110100000000000000000000000000000011000000000000
# fence
0000--------00000000000000001111 00001000000000000010000000000000000000010000000000100
# fence.i
00000000000000000001000000001111 00001000000000000010000000000000000000011000000000110
# fmul
0001000------------------1010011 01000110100000000000000000000000000000011000000000000
# fsub
0000100------------------1010011 00010110100000000000000000000000000000011000000000000
# jal
-------------------------1101111 00001000101100000000000000000010000000000000000000000
# jalr
-----------------000-----1100111 00001101100000000000000000000010000000000000000000000
# lb
-----------------000-----0000011 00000100100010100000000000000001000000000000000000000
# lbu
-----------------100-----0000011 00000100100010100000000010000001000000000000000000000
# lh
-----------------001-----0000011 00000100100010100000000000000000100000000000000000000
# lhu
-----------------101-----0000011 00000100100010100000000010000000100000000000000000000
# lui
-------------------------0110111 00001000101000000010000000000000000000000000000000001
# lw
-----------------010-----0000011 00000100100010100000000000000000010000000000000000000
# mret
00110000001000000000000001110011 00001101100000000010000000000000000000001001000000000
# mul
0000001----------000-----0110011 00000110100000000000000000000000000000000000100100000
# mulh
0000001----------001-----0110011 00000110100000000000000000000000000000000000111000000
# mulhsu
0000001----------010-----0110011 00000110100000000000000000000000000000000000110000000
# mulhu
0000001----------011-----0110011 00000110100000000000000000000000000000000000100000000
# or
0000000----------110-----0110011 00001110100000000010000000000000000000000000000000001
# ori
-----------------110-----0010011 00001101100000000010000000000000000000000000000000001
# rem
0000001----------110-----0110011 00000110100000000000000000000000000000011000000011000
# remu
0000001----------111-----0110011 00000110100000000000000010000000000000011000000011000
# sb
-----------------000-----0100011 00000110000001100000000000000001000000000000000000000
# sh
-----------------001-----0100011 00000110000001100000000000000000100000000000000000000
# sll
0000000----------001-----0110011 00001110100000000000100000000000000000000000000000001
# slli
0000000----------001-----0010011 00001100110000000000100000000000000000000000000000001
# slt
0000000----------010-----0110011 00001110100000001000000100000000000000000000000000001
# slti
-----------------010-----0010011 00001101100000001000000100000000000000000000000000001
# sltiu
-----------------011-----0010011 00001101100000001000000110000000000000000000000000001
# sltu
0000000----------011-----0110011 00001110100000001000000110000000000000000000000000001
# sra
0100000----------101-----0110011 00001110100000000000010000000000000000000000000000001
# srai
0100000----------101-----0010011 00001100110000000000010000000000000000000000000000001
# srl
0000000----------101-----0110011 00001110100000000000001000000000000000000000000000001
# srli
0000000----------101-----0010011 00001100110000000000001000000000000000000000000000001
# sub
0100000----------000-----0110011 00001110100000001000000000000000000000000000000000001
# sw
-----------------010-----0100011 00000110000001100000000000000000010000000000000000000
# wfi
00010000010100000000000001110011 00001101100000000010000000000000000000000000000000001
# xor
0000000----------100-----0110011 00001110100000000001000000000000000000000000000000001
# xori
-----------------100-----0010011 00001101100000000001000000000000000000000000000000001
