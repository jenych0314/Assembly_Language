.data 0x10010000
a: # 0x10010000
    .byte 1 # 0x10010000
    .byte -2 # 0x10010001
    .space 3 # 0x10010002, 0x10010003, 0x10010004
    # fill 3 byte with 0
    .byte 's' # 0x10010005
    # 0x10010006, 0x10010007 are 0 'cause of word alignment
w1: # 0x10010008
    .word 1
    .word -1
    .word 0xabcdef12
    .word 0xffff

.text
.globl main
main:
    la $5, a
    la $6, w1
    lw $4, 0($6)