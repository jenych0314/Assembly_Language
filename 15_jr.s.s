.text
.globl main
main: # BTA: Branch (Jump) Target Address
    nop # no operation instruction 0x00000000
    la $t1, main # la: pseudo instruction
    jr $t1 # R format
    