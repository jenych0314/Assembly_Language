.text
.globl main
main:
    addi $sp, $sp, -24
    sw $ra, 0($sp)
    sw $a0, 4($sp)
    sw $a1, 8($sp)
    sw $a2, 12($sp)
    sw $a3, 16($sp)
    sw $v0, 20($sp)

    