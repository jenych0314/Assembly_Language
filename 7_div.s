.text
.globl main
main:
    addi $t0, $0, 7 # $8 gets 7
    addi $t1, $0, 2 # $9 gets 2
    div $t0, $t1
    mflo $t2 # $10 gets 7/2
    mfhi $t3 # $11 gets 7%2