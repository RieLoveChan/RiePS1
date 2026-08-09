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

.section .text.FUN_80025b18,"ax",@progbits
.globl FUN_80025b18
.type FUN_80025b18, @function
.ent FUN_80025b18
FUN_80025b18:
    addiu   $sp,$sp,-32
    sw      $s1,20($sp)
    addu    $s1,$a0,$zero
    lui     $v0,0x800e
    lw      $v1,14296($v0)
    addiu   $a0,$v0,14296
    sw      $ra,24($sp)
    slti    $v0,$v1,5
    beq     $v0,$zero,.L80025be0
    sw      $s0,16($sp)
    slti    $v0,$v1,3
    bne     $v0,$zero,.L80025be0
    addiu   $s0,$a0,-112
    lw      $v0,88($s0)
    nop
    beq     $v0,$zero,.L80025bb8
    lui     $v1,0x800e
    bne     $s1,$zero,.L80025b78
    nop
    sw      $zero,88($s0)
    jal     FUN_80024e00
    sb      $zero,108($s0)
    j       .L80025bb8
    lui     $v1,0x800e
.L80025b78:
    jal     FUN_800358f8
    addiu   $a0,$zero,-1
    lw      $v1,88($s0)
    nop
    divu    $zero,$v1,$s1
    mflo    $a0
    sw      $v0,96($s0)
    addiu   $v0,$zero,2
    sw      $zero,104($s0)
    sb      $v0,108($s0)
    sw      $v1,100($s0)
    bne     $a0,$zero,.L80025bb4
    sw      $a0,92($s0)
    addiu   $v0,$zero,1
    sw      $v0,92($s0)
.L80025bb4:
    lui     $v1,0x800e
.L80025bb8:
    addiu   $v0,$zero,1
    jal     FUN_80028e80
    sb      $v0,14324($v1)
    addiu   $a0,$zero,2
    addiu   $a1,$zero,6
    addu    $a2,$zero,$zero
    jal     FUN_80028ef0
    addu    $a3,$a2,$zero
    j       .L80025c08
    addu    $v0,$zero,$zero
.L80025be0:
    lui     $v1,0x800e
    addiu   $v0,$zero,1
    jal     FUN_80028e80
    sb      $v0,14324($v1)
    addiu   $a0,$zero,2
    addu    $a1,$s1,$zero
    addu    $a2,$zero,$zero
    jal     FUN_80028ef0
    addu    $a3,$a2,$zero
    addiu   $v0,$zero,1
.L80025c08:
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
.end FUN_80025b18
.size FUN_80025b18, . - FUN_80025b18

.section .text.FUN_80025c1c,"ax",@progbits
.globl FUN_80025c1c
.type FUN_80025c1c, @function
.ent FUN_80025c1c
FUN_80025c1c:
    lui     $a1,0x800e
    lw      $v1,14296($a1)
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    sw      $ra,24($sp)
    slti    $v0,$v1,3
    bne     $v0,$zero,.L80025c54
    sw      $s1,20($sp)
    slti    $v0,$v1,5
    bne     $v0,$zero,.L80025d30
    addiu   $v0,$zero,6
    beq     $v1,$v0,.L80025d30
    nop
.L80025c54:
    addiu   $a0,$zero,3
    addiu   $s1,$zero,11
    jal     FUN_8002a174
    sw      $s1,14296($a1)
    lui     $v0,0x800e
    lw      $v1,14520($v0)
    lui     $v0,0xd1b7
    ori     $v0,$v0,0x1759
    multu   $v1,$v0
    andi    $v0,$s0,0xffff
    sll     $v1,$v0,2
    addu    $v1,$v1,$v0
    sll     $v0,$v1,4
    subu    $v0,$v0,$v1
    lui     $v1,0xd722
    ori     $v1,$v1,0xfb11
    mfhi    $a3
    srl     $a0,$a3,13
    addu    $a0,$a0,$v0
    sll     $v0,$a0,1
    addu    $v0,$v0,$a0
    sll     $v0,$v0,3
    addu    $v0,$v0,$a0
    sll     $v0,$v0,2
    srl     $v0,$v0,1
    multu   $v0,$v1
    lui     $v1,0x51eb
    ori     $v1,$v1,0x851f
    mfhi    $a3
    srlv    $a0,$a3,$s1
    sll     $v0,$a0,2
    addu    $v0,$v0,$a0
    sll     $v0,$v0,2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,5
    addu    $v0,$v0,$a0
    sll     $v0,$v0,2
    addu    $v0,$v0,$a0
    sll     $v0,$v0,1
    multu   $v0,$v1
    lui     $v0,0x800e
    addiu   $a2,$v0,14184
    lw      $v0,16($a2)
    lw      $a1,12($a2)
    sll     $a0,$a0,4
    sw      $a0,124($a2)
    subu    $v0,$v0,$a1
    sltu    $v0,$v0,$a0
    mfhi    $a3
    srl     $v1,$a3,5
    beq     $v0,$zero,.L80025d30
    sw      $v1,120($a2)
    sw      $s1,112($a2)
    jal     FUN_8002a174
    addiu   $a0,$zero,3
.L80025d30:
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
.end FUN_80025c1c
.size FUN_80025c1c, . - FUN_80025c1c
