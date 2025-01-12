.global memset

memset:
    mv t1, a0
    mv t3, a2
    andi t2, a0, 3
    beqz t2, aligned

misaligned:
    sb a1, 0(t1)
    addi t1, t1, 1
    addi t3, t3, -1
    andi t2, t1, 3
    bnez t2, misaligned
    beqz t3, done

aligned:
    srai t2, t3, 2
    beqz t2, byte_fill

word_fill:
    li t4, 0x01010101
    mul t4, t4, a1
    sw t4, 0(t1)
    addi t1, t1, 4
    addi t3, t3, -4
    bnez t3, word_fill

byte_fill:
    beqz t3, done
    sb a1, 0(t1)
    addi t1, t1, 1
    addi t3, t3, -1
    bnez t3, byte_fill

done:
    ret