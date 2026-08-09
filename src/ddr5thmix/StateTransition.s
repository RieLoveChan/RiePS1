.set noreorder
.set noat
.set nomacro

.section .text.FUN_80025850,"ax",@progbits
.globl FUN_80025850
.type FUN_80025850, @function
.ent FUN_80025850
FUN_80025850:
    lui     $v0,0x800e
    lw      $v1,14296($v0)
    addiu   $sp,$sp,-24
    sw      $ra,20($sp)
    slti    $v0,$v1,3
    bne     $v0,$zero,.L80025888
    sw      $s0,16($sp)
    slti    $v0,$v1,5
    bne     $v0,$zero,.L8002591c
    slti    $v0,$v1,8
    beq     $v0,$zero,.L80025888
    slti    $v0,$v1,6
    beq     $v0,$zero,.L8002591c
    nop
.L80025888:
    lui     $v0,0x800e
    addiu   $s0,$v0,14184
    lw      $v1,14184($v0)
    addiu   $v0,$zero,4
    beq     $v1,$v0,.L8002591c
    nop
    jal     FUN_80028f74
    nop
    beq     $v0,$zero,.L8002591c
    nop
    jal     FUN_8002592c
    nop
    bne     $v0,$zero,.L8002591c
    lui     $v0,0x800e
    addiu   $a0,$v0,14888
    lw      $v1,256($a0)
    addiu   $v0,$zero,1
    beq     $v1,$v0,.L800258ec
    nop
    beq     $v1,$zero,.L8002591c
    addiu   $v0,$zero,2
    beq     $v1,$v0,.L8002590c
    addiu   $v0,$zero,3
    j       .L8002591c
    nop
.L800258ec:
    lw      $v0,264($a0)
    nop
    addiu   $v0,$v0,-1
    sltiu   $v0,$v0,106
    beq     $v0,$zero,.L8002591c
    addu    $a0,$zero,$zero
    j       .L80025914
    sw      $v1,112($s0)
.L8002590c:
    sw      $v0,112($s0)
    addiu   $a0,$zero,1
.L80025914:
    jal     FUN_8002a174
    nop
.L8002591c:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_80025850
.size FUN_80025850, . - FUN_80025850

.section .text.FUN_8002592c,"ax",@progbits
.globl FUN_8002592c
.type FUN_8002592c, @function
.ent FUN_8002592c
FUN_8002592c:
    lui     $v0,0x800e
    addiu   $a0,$v0,14888
    lbu     $v1,272($a0)
    lbu     $v0,273($a0)
    nop
    bne     $v1,$v0,.L80025990
    sll     $v0,$v0,4
    addu    $v0,$v0,$a0
    sw      $zero,0($v0)
    lbu     $v0,273($a0)
    nop
    sll     $v0,$v0,4
    addu    $v0,$v0,$a0
    sw      $zero,4($v0)
    lbu     $v0,273($a0)
    nop
    sll     $v0,$v0,4
    addu    $v0,$v0,$a0
    sw      $zero,8($v0)
    lbu     $v1,273($a0)
    addiu   $v0,$zero,-1
    sll     $v1,$v1,4
    addu    $v1,$v1,$a0
    jr      $ra
    sw      $zero,12($v1)
.L80025990:
    lbu     $v0,272($a0)
    nop
    sll     $v0,$v0,4
    addu    $v0,$v0,$a0
    lw      $a1,0($v0)
    lw      $a2,4($v0)
    lw      $a3,8($v0)
    lw      $t0,12($v0)
    sw      $a1,256($a0)
    sw      $a2,260($a0)
    sw      $a3,264($a0)
    sw      $t0,268($a0)
    lbu     $v1,272($a0)
    nop
    addiu   $v1,$v1,1
    sltiu   $v0,$v1,16
    bne     $v0,$zero,.L800259dc
    nop
    addu    $v1,$zero,$zero
.L800259dc:
    sb      $v1,272($a0)
    jr      $ra
    addu    $v0,$zero,$zero
.end FUN_8002592c
.size FUN_8002592c, . - FUN_8002592c

.section .text.FUN_800259e8,"ax",@progbits
.globl FUN_800259e8
.type FUN_800259e8, @function
.ent FUN_800259e8
FUN_800259e8:
    addiu   $sp,$sp,-96
    lui     $a2,0x800e
    addiu   $a1,$a2,14252
    sw      $ra,88($sp)
    sw      $s1,84($sp)
    sw      $s0,80($sp)
    lw      $v1,16($a1)
    addiu   $v0,$zero,1
    beq     $v1,$v0,.L80025a28
    slti    $v0,$v1,2
    bne     $v0,$zero,.L80025b04
    addiu   $v0,$zero,2
    beq     $v1,$v0,.L80025a64
    addiu   $a0,$a1,-68
    j       .L80025b04
    nop
.L80025a28:
    addiu   $a0,$a1,-68
    lw      $v1,14252($a2)
    lw      $v0,64($a0)
    nop
    mult    $v1,$v0
    lw      $v0,56($a0)
    mflo    $a3
    subu    $v0,$v0,$a3
    bgtz    $v0,.L80025a54
    nop
    addu    $v0,$zero,$zero
.L80025a54:
    lw      $v1,12($a1)
    sw      $v0,56($a0)
    j       .L80025a8c
    sltu    $v0,$v1,$v0
.L80025a64:
    lw      $v1,14252($a2)
    lw      $v0,64($a0)
    nop
    mult    $v1,$v0
    lw      $v0,56($a0)
    lw      $v1,12($a1)
    mflo    $a3
    addu    $v0,$v0,$a3
    sw      $v0,56($a0)
    sltu    $v0,$v0,$v1
.L80025a8c:
    bne     $v0,$zero,.L80025a9c
    nop
    sw      $v1,56($a0)
    sw      $zero,16($a1)
.L80025a9c:
    lui     $a0,0x800e
    addiu   $a0,$a0,14184
    lw      $v0,20($a0)
    lui     $v1,0xbe37
    ori     $v1,$v1,0xc63b
    sll     $v0,$v0,12
    multu   $v0,$v1
    mfhi    $v0
    lw      $v1,56($a0)
    srl     $v0,$v0,15
    mult    $v0,$v1
    addiu   $s1,$zero,16
    addiu   $a0,$sp,16
    sw      $s1,20($sp)
    lui     $v0,0x40
    sw      $v0,16($sp)
    mflo    $v1
    srl     $s0,$v1,12
    jal     FUN_8002f42c
    sh      $s0,36($sp)
    addu    $a0,$sp,$s1
    lui     $v0,0x80
    sw      $s1,20($sp)
    sw      $v0,16($sp)
    jal     FUN_8002f42c
    sh      $s0,36($sp)
.L80025b04:
    lw      $ra,88($sp)
    lw      $s1,84($sp)
    lw      $s0,80($sp)
    jr      $ra
    addiu   $sp,$sp,96
.end FUN_800259e8
.size FUN_800259e8, . - FUN_800259e8
