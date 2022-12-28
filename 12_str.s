.data 0x10030000
str1:
    .byte 's'
    .byte 't'
    .byte 'a'
    .byte 'r'
    .byte 0
str2:
    .ascii "star"
str3:
    .asciiz "star"

.text
.globl main
.main:
    lui $5, 0x1003
    ori $5, 0
    lw $4, 0($5)