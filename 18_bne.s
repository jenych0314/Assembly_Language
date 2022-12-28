.text
.globl main
main:
    addi $s0, $0, 1
    addi $s1, $0, 1
    bne $s0, $s1, NEAR
    j FAR

.text 0x0040002C
NEAR:
    add $s1, $s0, $s1

.text 0x0043002C
FAR:
    sub $s1, $s0, $s1