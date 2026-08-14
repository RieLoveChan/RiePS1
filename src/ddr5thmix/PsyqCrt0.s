    .set noreorder
    .set noat
    .set nomacro

    .section .text.__main,"ax",@progbits
    .globl __main
    .type __main, @function
    .ent __main
__main:
    jr      $ra
    nop
    .end __main
    .size __main, . - __main

    .section .text.start,"ax",@progbits
    .globl start
    .type start, @function
    .ent start
start:
    lui     $v0,0x800e
    addiu   $v0,$v0,0x2938
    lui     $v1,0x8012
    addiu   $v1,$v1,-0x71d8
.Lstart_clear:
    sw      $zero,0($v0)
    addiu   $v0,$v0,4
    sltu    $at,$v0,$v1
    bne     $at,$zero,.Lstart_clear
    nop
    .end start
    .size start, . - start

    .section .text.stup1,"ax",@progbits
    .globl stup1
    .type stup1, @function
    .ent stup1
stup1:
    addiu   $v0,$zero,4
    nop
    nop
    nop
    nop
    lui     $a0,0x8002
    addiu   $a0,$a0,0x07ac
    addu    $a0,$a0,$v0
    lw      $v0,0($a0)
    lui     $t0,0x8000
    or      $sp,$v0,$t0
    lui     $a0,0x8012
    addiu   $a0,$a0,-0x71d8
    sll     $a0,$a0,3
    srl     $a0,$a0,3
    lui     $v1,0x800d
    lw      $v1,0x75d4($v1)
    nop
    subu    $a1,$v0,$v1
    subu    $a1,$a1,$a0
    or      $a0,$a0,$t0
    lui     $at,0x800e
    sw      $ra,0x2938($at)
    lui     $gp,0x800e
    addiu   $gp,$gp,0x2934
    addu    $fp,$sp,$zero
    jal     InitHeap
    addi    $a0,$a0,4
    lui     $ra,0x800e
    lw      $ra,0x2938($ra)
    nop
    .end stup1
    .size stup1, . - stup1

    .section .text.stup0,"ax",@progbits
    .globl stup0
    .type stup0, @function
    .ent stup0
stup0:
    jal     main
    nop
    .word   0x0000004d
    .end stup0
    .size stup0, . - stup0
