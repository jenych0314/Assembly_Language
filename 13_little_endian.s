.data 0x10010000
.byte 1
.byte 2
.byte 3
.byte 4

.text
.globl main
main:
    lui $5, 0x1001
    ori $5, 0x0000
    lw $4, 0($5)

# byte 단위로 쓰고 word 단위로 읽으면 little/big endian 중 하나로 읽히기에 순서가 중요해진다.
# memory index를 읽을 때의 방법이 little/big endian이 사용되는 것이다.
# word 단위로 볼 때와 byte 단위로 볼 때의 차이
# 1 word = 4 bytes