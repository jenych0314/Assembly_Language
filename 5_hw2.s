.text
.globl main
main:
    # -2^31 ~ -1, 0 ~ 2^31 - 1 -> -2^31(=-2147483648=0x80000000) will be overflow
    # 'addi': using 32 bit will print error message
    addi $t1, $0, 1
    sll $t1, $t1, 31
    subu $t2, $0, $t1