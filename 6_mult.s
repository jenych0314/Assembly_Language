.text
.globl main
main:
    addi $t0, $0, 2 # $8 gets 2
    addi $t1, $0, 3 # $9 gets 3
    mult $t0, $t1
    mflo $t2 # $10 gets 2x3
    mfhi $t3