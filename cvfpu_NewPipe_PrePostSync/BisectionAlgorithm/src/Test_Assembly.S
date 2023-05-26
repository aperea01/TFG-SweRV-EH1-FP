.globl bisection_hard

.text

bisection_hard:

lw a0, (a0)
lw a1, (a1)
lw a2, (a2)
li t2, 0x80000000
li t6, 0x7fffffff

loop:
    mv t3, a0
    mv t4, a1
    .word 0x01de0f53    # a+b # fadd.s 0000000 | t4(rs1) 11101  | t3(rs2) 11100| 000 | t5(rs3) 11110 | 1010011 1DE0F53
    mv t3, t5
    li t4, 0x40000000
    .word 0x19DE0F53    # (a+b)/2 # fdiv.s 0001100 |t3 11100 |t4 11101 | 000 | 11110 | 1010011
    mv t1, t5           # t1=c

    mv t3, t5
    mv t4, t5
    .word 0x11DE0F53    # c*c # fmul.s 0001000 | 11100 | 11101 | 000 | 11110 | 1010011
    mv t3, t5
    li t4, 0xc0000000
    .word 0x01de0f53    # c-2 # fadd.s 0000000 |   t3(rs2) 11100 | t4(rs1) 11101 | 000 | t5(rs3) 11110 | 1010011
    mv t0, t5           # t0=F(c)

    and t3, t0, t6
    mv t4, a2
    .word 0x01de0f53    # F(c)-tol # fadd.s 0000000 |   t3(rs2) 11100 | t4(rs1) 11101 | 000 | t5(rs3) 11110 | 1010011
    and t5, t5, t2
    bne t5, zero, end_loop

    mv t3, a1
    mv t4, a1
    .word 0x11de0f53    # b*b # fmul.s 0001000 | 11100 | 11101 | 000 | 11110 | 1010011
    mv t3, t5
    li t4, 0xc0000000
    .word 0x01de0f53    # t5=F(b)=b-2 # fadd.s 0000000 |   t3(rs2) 11100 | t4(rs1) 11101 | 000 | t5(rs3) 11110 | 1010011

    and t0, t0, t2      # Mask everything but the sign of f(c)
    and t5, t5, t2      # Mask everything but the sign of f(b)
    beq t0, t5, beqc
    mv a0, t1
    j out_if
    beqc: mv a1, t1
    out_if:

    j loop

end_loop: sw t1, (a3)

ret

.end
