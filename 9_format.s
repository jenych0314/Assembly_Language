.text
.globl main
main:
    ori $11, $9, 0x8000 # 0x352b8000
    andi $12, $0, 0xffff # 0x300cffff
    andi $13, $0, -1 # 0x200dffff

    addi $10, $0, 0x7000
    ori $10, $0, 0x7000
    addi $10, $0, 0x8000
    ori $10, $0, 0x8000

    lui $s0, 0x007d
    # load upper immediate: upper bit에 immediate 값을 load 해주는 연산
    # 상위 16bit에 0x007d이란 숫자를 load해준다.
    ori $s0, $s0, 0x0900

    lui $t0, 0x00ff # 0x3c0800ff
    ori $to, $to, 15

    ori $10, $0, 1
    li $10, 1 # load immediate

    addi $t1, $0, 0x7fffffff
    lui $t2, 0x7fff
    ori $t2, $t2, 0xffff