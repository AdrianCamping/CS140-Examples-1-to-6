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
    j endif
false:
    sub $t0, $t1, $t2
endif: