.text
.globl main
main:
    addi $a1, $0, 1
    lui $t0, 0x1001 # RA(Retrun Address): 0x0040002C
    sw $a0, 0($t0)
foo:
    add $a0, $a1, $a1
    jr $ra # end of subroutine (return)