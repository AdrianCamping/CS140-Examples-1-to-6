############################ Data segment ############################
.data
    valg: .word 100
    valh: .word 200
    valf: .word 0
    vali: .word 10
    valj: .word 5
############################ Code segment ############################
.text
.globl main

main:
    lw $t0, valf
    lw $t1, valg
    lw $t2, valh
    lw $t3, vali
    lw $t4, valj

    bne $t3, $t4, false
    add $t0, $t1, $t2
    j exit
false:
    #lui $t5, 0xFFFF
    #ori $t5, $t5, 0xFFFF
    #xor $t2, $t2, 0xFFFF
    #addi $t2, $t2, 1
    #add $t0, $t1, $t2
    sub $t0, $t1, $t2
exit:

sw $t0, valf

li $v0, 1
move $a0, $t0
syscall

li $v0, 10
syscall