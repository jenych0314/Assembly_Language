.text
.globl main
main:
    lui $5, 0x1000
    lui $4, 0x789a
    ori $4, $4, 0xbcde
    sw $4, 8($5)
    # store word(operation, source operand in register, memory address = R[$5](base register) + 8(offset))
    lw $6, 8($5)
    # load word(operation, destination operand in register, memory address = R[$5](base register) + 8(offset))
    
    # lw = memory -> register
    # sw = register -> memory