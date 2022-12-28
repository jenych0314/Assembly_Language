.text
.globl main
main:
    addi $t1, $0, 0x3c00
    addi $t2, $0, 0x0dc0

    or $t0, $t1, $t2
    ori $t3, $t1, 0

    and $t4, $t1, $t2
    andi $t5, $t1, -1

    nor $t6, $t1, $t2
    nor $t7, $t1, $t1

    ori $s0, $0, 9
    
    sll $t2, $s0, 4 # shift left
    srl $t4, $t2, 2 # shift right