############################ Data segment ############################
.data
    valf: .word 0
    valg: .word 20
    valh: .word 15
    vali: .word 2
############################ Code segment ############################
.text
.globl main

main:

    lw $t0, valf
    lw $t1, valg
    lw $t2 valh

    lw $t3, vali

    slt $t4, $t3, 10
    beq $t4, $zero, false
    add $t0, $t1, $t2
    j exit
false:
    sub $t0, $t1, $t2
exit:

li $v0, 1
move $a0, $t0
syscall

li $v0, 10
syscall