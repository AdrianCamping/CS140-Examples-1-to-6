############################ Data segment ############################
.data
    valf: .word 0
    valg: .word 20
    valh: .word 30
    vali: .word 10
    valj: .word 20
############################ Code segment ############################
.text
.globl main

main:
    lw $t0, valf
    lw $t1, valg
    lw $t2, valh

    lw $t3, vali
    lw $t4, valj

    slt $t5, $t3, $t4
    beq $t5, $zero, false
    add $t0, $t1, $t2
    j exit
false:
    sub $t0, $t1, $t2
exit:

sw $t0, valf
li $v0, 1
move $a0, $t0
syscall

li $v0, 10
syscall