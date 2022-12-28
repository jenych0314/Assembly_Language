.text
.globl main
main:
    addi $16, $0, 1
    addi $17, $0, 1
    beq $16, $17, FAR

.text 0x0043002C
FAR:
    sub $17, $16, $17