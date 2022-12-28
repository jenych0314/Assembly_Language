.data 0x10020000
w1:
    .word 1
    .word -1
    .word 0xabcdef12
    .word 0xffff

.text
.globl main
main:
    lui $5, 0x1002
    lui $4, 0x789a
    sw $4, 8($5)

# similar concept like a C pointer