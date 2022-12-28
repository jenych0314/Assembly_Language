.text
.globl main
main:
    addi $t3, $0, 7
    addi $t4, $0, 6
    add $t5, $t3, $t4 # 7 + 6
    sub $t6, $t3, $t4 # 7 - 6
    addi $t7, $0, -6
    add $t8, $t3, $t7 # 7 + (-6)