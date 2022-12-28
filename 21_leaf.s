.text
.globl main
main:
    $t0, $t1, $s0 used in caller
    addi $t0, $0, 100
    addi $t1, $0, 200
    addi $s0, $0, 300

    # set up function arguments
    addi $a0, $0, 4 # g
    addi $a1, $0, 3 # h
    addi $a2, $0, 1 # i
    addi $a3, $0, 2 # j

    # function call
    jal leaf_example # leaf_example(g, h, i, j)

    # print return value using system call
    add $a0, $v0, $0
    addi $v0, $0, 1
    syscall

    # print some value based on values of $t0, $t1
    add $a0, $t1, $t0
    syscall

leaf_example:
    # save $t0, $t1, $s0 on stack
    addi $sp, $sp, -12
    sw $t1, 8($sp)
    sw $t1, 4($sp)
    sw $t1, 0($sp)

    # procedure body
    add $t0, $a0, $a1 # g + h
    add $t1, $a2, $a3 # i + j
    sub $s0, $t0, $t1 # f

    # return value in $v0
    add $v0, $s0, $0

    # restore $t0, $t1, $s0 from stack
    lw $s0, 0($sp)
    lw $t0, 4($sp)
    lw $t1, 8($sp)
    addi $sp, $sp, 12

    # return to caller function
    jr $ra