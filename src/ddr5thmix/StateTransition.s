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

.section .text.FUN_8002616c,"ax",@progbits
.globl FUN_8002616c
.type FUN_8002616c, @function
.ent FUN_8002616c
FUN_8002616c:
    addiu   $sp,$sp,-32
    lui     $v0,0x800e
    sw      $s2,24($sp)
    addiu   $s2,$v0,14680
    sw      $ra,28($sp)
    sw      $s1,20($sp)
    sw      $s0,16($sp)
    lbu     $v0,32($s2)
    nop
    beq     $v0,$zero,.L800262d4
    nop
    lbu     $v0,33($s2)
    nop
    bne     $v0,$zero,.L800262d4
    lui     $v0,0x800b
    lw      $v0,-7048($v0)
    nop
    beq     $v0,$zero,.L800262d4
    nop
    lbu     $v0,34($s2)
    nop
    beq     $v0,$zero,.L800262d4
    addu    $a0,$zero,$zero
    lui     $v0,0x8002
    addiu   $t0,$v0,-22244
    lui     $a3,0x800b
    lui     $v0,0x800e
    addiu   $a1,$v0,14768
    addu    $s1,$s2,$zero
    lui     $v0,0x800b
    addiu   $a2,$v0,-7040
.L800261e8:
    lbu     $v1,0($s1)
    nop
    sltiu   $v0,$v1,5
    beq     $v0,$zero,.L800262bc
    sll     $v0,$v1,2
    addu    $v0,$v0,$t0
    lw      $v0,0($v0)
    nop
    jr      $v0
    nop
.L80026210:
    lw      $v0,44($s2)
    lw      $v1,36($s2)
    sll     $v0,$v0,4
    addu    $s0,$v1,$v0
    lw      $v0,-14196($a3)
    lw      $a2,0($a2)
    bne     $v0,$zero,.L80026248
    addiu   $a0,$zero,16
    lw      $v0,16($a1)
    nop
    bne     $v0,$zero,.L80026290
    addiu   $v0,$zero,-1
    bne     $s0,$zero,.L80026250
    nop
.L80026248:
    j       .L80026290
    addiu   $v0,$zero,-1
.L80026250:
    sw      $a0,16($a1)
    lw      $v1,16($a1)
    lui     $v0,0x800b
    sw      $a0,28($a1)
    addu    $a0,$s0,$zero
    sw      $zero,12($a1)
    sw      $s0,24($a1)
    sw      $a2,32($a1)
    addiu   $a1,$zero,16
    sw      $v1,-14192($v0)
    lw      $v1,-14192($v0)
    lui     $v0,0x800b
    sw      $zero,-7048($v0)
    sw      $v1,-14196($a3)
    jal     FUN_80028b00
    nop
.L80026290:
    bne     $v0,$zero,.L800262d4
    addiu   $v0,$zero,1
    sb      $v0,0($s1)
    sw      $s0,4($s1)
    lw      $v0,44($s2)
    nop
    addiu   $v0,$v0,1
    j       .L800262d4
    sw      $v0,44($s2)
.L800262b4:
    addiu   $v0,$zero,2
    sb      $v0,0($s1)
.L800262bc:
    addiu   $s1,$s1,8
    lbu     $v0,34($s2)
    addiu   $a0,$a0,1
    sltu    $v0,$a0,$v0
    bne     $v0,$zero,.L800261e8
    addiu   $a2,$a2,4
.L800262d4:
    lw      $ra,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
.end FUN_8002616c
.size FUN_8002616c, . - FUN_8002616c

.section .text.FUN_800262ec,"ax",@progbits
.globl FUN_800262ec
.type FUN_800262ec, @function
.ent FUN_800262ec
FUN_800262ec:
    addu    $t0,$zero,$zero
    lui     $v0,0x800e
    lui     $v1,0x800e
    addiu   $a3,$v1,14192
    lbu     $v1,132($a3)
    nop
    beq     $v1,$zero,.L80026314
    addiu   $a2,$v0,14328
    j       .L80026330
    addu    $v1,$t0,$zero
.L80026314:
    lui     $v0,0x800e
    lw      $v1,14520($v0)
    lui     $v0,0xd1b7
    ori     $v0,$v0,0x1759
    multu   $v1,$v0
    mfhi    $t1
    srl     $v1,$t1,13
.L80026330:
    lui     $v0,0x1
    ori     $v0,$v0,0xb000
    sltu    $v0,$v0,$v1
    beq     $v0,$zero,.L80026348
    andi    $a1,$a0,0xffff
    addiu   $t0,$zero,1
.L80026348:
    srl     $v1,$a1,8
    addiu   $v0,$zero,6
    beq     $v1,$v0,.L8002639c
    slti    $v0,$v1,7
    beq     $v0,$zero,.L80026370
    addiu   $v0,$zero,5
    beq     $v1,$v0,.L8002638c
    sltiu   $v0,$a1,1329
    j       .L800263ac
    nop
.L80026370:
    addiu   $v0,$zero,16
    beq     $v1,$v0,.L800263a4
    addiu   $v0,$zero,34
    beq     $v1,$v0,.L80026394
    nop
    j       .L800263ac
    nop
.L8002638c:
    bne     $v0,$zero,.L800263ac
    nop
.L80026394:
    jr      $ra
    addiu   $v0,$zero,-1
.L8002639c:
    j       .L8002638c
    sltiu   $v0,$a1,1550
.L800263a4:
    bne     $a1,$zero,.L80026394
    nop
.L800263ac:
    lhu     $a1,0($a3)
    lhu     $v0,22($a2)
    andi    $v1,$a0,0xffff
    bne     $v0,$v1,.L800263d8
    sh      $a0,2($a2)
    addu    $v0,$zero,$zero
    addiu   $v1,$zero,1
    sb      $v1,0($a2)
    addiu   $v1,$zero,6
    jr      $ra
    sb      $v1,1($a2)
.L800263d8:
    sltiu   $v0,$a1,52
    bne     $v0,$zero,.L800263e8
    sh      $zero,22($a2)
    addiu   $a1,$zero,51
.L800263e8:
    lbu     $v0,0($a2)
    nop
    beq     $v0,$zero,.L800263fc
    lui     $v0,0x800e
    sb      $zero,14713($v0)
.L800263fc:
    addiu   $v0,$zero,1
    sb      $v0,0($a2)
    srl     $v0,$v1,8
    addiu   $v1,$v0,-5
    sltiu   $v0,$v1,12
    beq     $v0,$zero,.L80026394
    andi    $a3,$a0,0xff
    lui     $v0,0x8002
    addiu   $v0,$v0,-22220
    sll     $v1,$v1,2
    addu    $v1,$v1,$v0
    lw      $v0,0($v1)
    nop
    jr      $v0
    nop
.L80026438:
    addiu   $v0,$zero,2
    sb      $v0,0($a2)
    addiu   $v0,$zero,8
    lui     $a0,0x800b
    addiu   $a0,$a0,-9440
    sh      $v0,20($a2)
    sll     $v0,$t0,2
    sll     $v1,$a1,3
    addu    $v0,$v0,$v1
    addu    $v0,$v0,$a0
    lw      $v0,0($v0)
    sll     $v1,$a3,3
    addu    $v0,$v0,$v1
    j       .L80026508
    sw      $v0,16($a2)
.L80026474:
    addiu   $v0,$zero,2
    sb      $v0,0($a2)
    addiu   $v0,$zero,16
    lui     $a0,0x800b
    addiu   $a0,$a0,-9440
    sll     $v1,$t0,2
    sh      $v0,20($a2)
    sll     $v0,$a1,3
    addu    $v1,$v1,$v0
    addu    $v1,$v1,$a0
    sll     $v0,$a3,4
    lw      $v1,0($v1)
    addiu   $v0,$v0,400
    addu    $v1,$v1,$v0
    j       .L80026508
    sw      $v1,16($a2)
.L800264b4:
    andi    $a3,$a3,0xffff
    sltiu   $v0,$a3,10
    bne     $v0,$zero,.L800264cc
    lui     $a1,0x801a
    j       .L80026394
    sh      $zero,2($a2)
.L800264cc:
    ori     $a1,$a1,0xc000
    lui     $a0,0x1
    ori     $a0,$a0,0x1040
    addiu   $v0,$zero,4
    lui     $v1,0x800b
    addiu   $v1,$v1,-8200
    sb      $v0,1($a2)
    sll     $v0,$a3,2
    addu    $v0,$v0,$v1
    lw      $v1,0($v0)
    addu    $v0,$zero,$zero
    sw      $a0,8($a2)
    addu    $v1,$v1,$a1
    jr      $ra
    sw      $v1,4($a2)
.L80026508:
    lui     $a1,0x801d
    ori     $a1,$a1,0x4000
    lui     $a0,0x1
    ori     $a0,$a0,0x1040
    addu    $v0,$zero,$zero
    addiu   $v1,$zero,1
    sb      $v1,1($a2)
    addiu   $v1,$zero,18000
    sw      $a1,4($a2)
    sw      $a0,8($a2)
    jr      $ra
    sw      $v1,12($a2)
.end FUN_800262ec
.size FUN_800262ec, . - FUN_800262ec

.section .text.FUN_80026538,"ax",@progbits
.globl FUN_80026538
.type FUN_80026538, @function
.ent FUN_80026538
FUN_80026538:
    lui     $v0,0x800e
    lbu     $v1,14328($v0)
    addiu   $sp,$sp,-40
    sw      $s3,28($sp)
    addiu   $s3,$v0,14328
    sw      $ra,32($sp)
    sw      $s2,24($sp)
    sw      $s1,20($sp)
    beq     $v1,$zero,sym_80026924
    sw      $s0,16($sp)
    lbu     $v1,1($s3)
    nop
    sltiu   $v0,$v1,10
    beq     $v0,$zero,sym_80026924
    lui     $v0,0x8002
    addiu   $v0,$v0,-22172
    sll     $v1,$v1,2
    addu    $v1,$v1,$v0
    lw      $v0,0($v1)
    nop
    jr      $v0
    nop
.L80026590:
    lbu     $v0,1($s3)
    j       sym_80026920
    addiu   $v0,$v0,1
.L8002659c:
    lui     $v0,0x800e
    lw      $v1,14296($v0)
    nop
    bne     $v1,$zero,sym_800265bc
.end FUN_80026538
.size FUN_80026538, . - FUN_80026538

.section .text.FUN_80026940,"ax",@progbits
.globl FUN_80026940
.type FUN_80026940, @function
.ent FUN_80026940
FUN_80026940:
    addiu   $sp,$sp,-40
    sw      $s0,24($sp)
    andi    $s0,$a0,0xffff
    sw      $ra,32($sp)
    beq     $s0,$zero,.L80026a64
    sw      $s1,28($sp)
    srl     $v1,$s0,8
    addiu   $v0,$zero,3
    beq     $v1,$v0,.L80026978
    addiu   $v0,$zero,4
    beq     $v1,$v0,.L800269f8
    nop
    j       .L80026a6c
    nop
.L80026978:
    jal     FUN_8002a20c
    addu    $a0,$s0,$zero
    bne     $v0,$zero,.L80026a74
    addu    $v0,$zero,$zero
    jal     FUN_80029868
    nop
    sll     $v0,$v0,24
    sra     $s1,$v0,24
    addiu   $v0,$zero,-1
    beq     $s1,$v0,.L80026a74
    nop
    jal     FUN_800299dc
    addu    $a0,$s0,$zero
    andi    $s1,$s1,0xff
    addu    $a0,$s1,$zero
    addu    $a1,$s0,$zero
    addu    $a2,$zero,$zero
    addiu   $a3,$zero,1
    addiu   $v0,$zero,100
    jal     FUN_8002a0b8
    sw      $v0,16($sp)
    jal     FUN_80029850
    addu    $a0,$s1,$zero
    addu    $s0,$v0,$zero
    lhu     $a0,0($s0)
    lbu     $a2,6($s0)
    jal     FUN_80029920
    addu    $a1,$s1,$zero
    beq     $v0,$zero,.L80026a50
    addu    $a0,$s1,$zero
    j       .L80026a5c
    nop
.L800269f8:
    jal     FUN_8002a20c
    addu    $a0,$s0,$zero
    bne     $v0,$zero,.L80026a74
    addu    $v0,$zero,$zero
    jal     FUN_80029b94
    addiu   $a0,$zero,19
    addiu   $a0,$zero,19
    addu    $a1,$s0,$zero
    addu    $a2,$zero,$zero
    addiu   $a3,$zero,1
    addiu   $v0,$zero,100
    jal     FUN_8002a0b8
    sw      $v0,16($sp)
    jal     FUN_80029850
    addiu   $a0,$zero,19
    addu    $s0,$v0,$zero
    lhu     $a0,0($s0)
    lbu     $a2,6($s0)
    jal     FUN_80029920
    addiu   $a1,$zero,19
    bne     $v0,$zero,.L80026a5c
    addiu   $a0,$zero,19
.L80026a50:
    addiu   $v0,$zero,2
    j       .L80026a64
    sh      $v0,4($s0)
.L80026a5c:
    jal     FUN_80029b94
    nop
.L80026a64:
    j       .L80026a74
    addu    $v0,$zero,$zero
.L80026a6c:
    jal     FUN_80029d24
    andi    $a0,$a0,0xffff
.L80026a74:
    lw      $ra,32($sp)
    lw      $s1,28($sp)
    lw      $s0,24($sp)
    jr      $ra
    addiu   $sp,$sp,40
.end FUN_80026940
.size FUN_80026940, . - FUN_80026940

.section .text.FUN_80026a88,"ax",@progbits
.globl FUN_80026a88
.type FUN_80026a88, @function
.ent FUN_80026a88
FUN_80026a88:
    addiu   $sp,$sp,-40
    sw      $ra,32($sp)
    sw      $s3,28($sp)
    sw      $s2,24($sp)
    sw      $s1,20($sp)
    jal     FUN_80029e34
    sw      $s0,16($sp)
    addu    $s2,$v0,$zero
    blez    $s2,.L80026bac
    lui     $v0,0x8002
    addiu   $s3,$v0,-22132
.L80026ab4:
    jal     FUN_80029da0
    nop
    addu    $s1,$v0,$zero
    srl     $v0,$s1,8
    andi    $v1,$v0,0xff
    sltiu   $v0,$v1,35
    beq     $v0,$zero,.L80026ba0
    sll     $v0,$v1,2
    addu    $v0,$v0,$s3
    lw      $v0,0($v0)
    nop
    jr      $v0
    nop
.L80026ae8:
    andi    $v1,$s1,0xffff
    addiu   $v0,$zero,513
    bne     $v1,$v0,.L80026b08
    nop
    jal     FUN_80027688
    addiu   $s2,$s2,-1
    j       .L80026ba4
    nop
.L80026b08:
    jal     FUN_8002a2b0
    addiu   $s2,$s2,-1
    j       .L80026ba4
    nop
.L80026b18:
    jal     FUN_800273cc
    andi    $a0,$s1,0xffff
    j       .L80026ba4
    addiu   $s2,$s2,-1
.L80026b28:
    andi    $s0,$s1,0xffff
    jal     FUN_8002a20c
    addu    $a0,$s0,$zero
    bne     $v0,$zero,.L80026bac
    slti    $v0,$s0,775
    beq     $v0,$zero,.L80026b4c
    slti    $v0,$s0,769
    beq     $v0,$zero,.L80026b54
    nop
.L80026b4c:
    jal     FUN_800299dc
    addu    $a0,$s0,$zero
.L80026b54:
    jal     FUN_80027074
    andi    $a0,$s1,0xffff
    j       .L80026ba4
    addiu   $s2,$s2,-1
.L80026b64:
    j       .L80026b98
    andi    $a0,$s1,0xffff
.L80026b6c:
    j       .L80026b98
    andi    $a0,$s1,0xffff
.L80026b74:
    jal     FUN_800299dc
    andi    $a0,$s1,0xffff
    j       .L80026ba4
    addiu   $s2,$s2,-1
.L80026b84:
    andi    $s0,$s1,0xffff
    jal     FUN_8002a20c
    addu    $a0,$s0,$zero
    bne     $v0,$zero,.L80026bac
    addu    $a0,$s0,$zero
.L80026b98:
    jal     FUN_800262ec
    nop
.L80026ba0:
    addiu   $s2,$s2,-1
.L80026ba4:
    bgtz    $s2,.L80026ab4
    nop
.L80026bac:
    lw      $ra,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
.end FUN_80026a88
.size FUN_80026a88, . - FUN_80026a88

.section .text.FUN_80026bc8,"ax",@progbits
.globl FUN_80026bc8
.type FUN_80026bc8, @function
.ent FUN_80026bc8
FUN_80026bc8:
    addiu   $sp,$sp,-48
    sw      $s4,32($sp)
    addu    $s4,$a0,$zero
    sw      $s5,36($sp)
    addu    $s5,$a1,$zero
    lui     $a0,0x800e
    addiu   $a0,$a0,14128
    addiu   $a1,$zero,44
    sw      $ra,40($sp)
    sw      $s3,28($sp)
    sw      $s2,24($sp)
    sw      $s1,20($sp)
    jal     FUN_8003bac8
    sw      $s0,16($sp)
    sll     $s2,$s4,4
    lui     $v0,0x800b
    addiu   $v1,$v0,-7432
    addu    $v0,$s2,$v1
    lbu     $v0,1($v0)
    nop
    beq     $v0,$zero,.L80026c48
    addu    $s1,$zero,$zero
    addu    $s3,$v1,$zero
    addu    $s0,$s2,$s3
.L80026c28:
    lbu     $a0,0($s0)
    jal     FUN_800272cc
    addiu   $s1,$s1,1
    lbu     $v0,1($s0)
    nop
    sltu    $v0,$s1,$v0
    bne     $v0,$zero,.L80026c28
    addu    $s0,$s2,$s3
.L80026c48:
    lui     $a1,0x800e
    lui     $v0,0x800b
    addiu   $v0,$v0,-7432
    sll     $a0,$s4,4
    addu    $a0,$a0,$v0
    sw      $s4,14128($a1)
    lbu     $v1,0($a0)
    addiu   $a1,$a1,14128
    sh      $v1,28($a1)
    lbu     $v0,1($a0)
    sll     $v1,$v1,3
    sb      $v0,37($a1)
    lui     $v0,0x800b
    addiu   $v0,$v0,-8160
    addu    $v1,$v1,$v0
    lw      $v0,0($v1)
    nop
    sw      $v0,8($a1)
    lw      $v0,4($v1)
    nop
    sw      $v0,12($a1)
    lh      $v0,2($a0)
    nop
    sw      $v0,16($a1)
    lh      $v1,2($a0)
    lw      $v0,4($a0)
    nop
    subu    $v0,$v0,$v1
    sw      $v0,20($a1)
    lw      $v0,4($a0)
    addu    $a0,$zero,$zero
    sb      $zero,36($a1)
    sw      $zero,32($a1)
    sw      $zero,40($a1)
    sw      $s5,4($a1)
    jal     FUN_8002f29c
    sw      $v0,24($a1)
    lw      $ra,40($sp)
    lw      $s5,36($sp)
    lw      $s4,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,48
.end FUN_80026bc8
.size FUN_80026bc8, . - FUN_80026bc8

.section .text.FUN_80026d00,"ax",@progbits
.globl FUN_80026d00
.type FUN_80026d00, @function
.ent FUN_80026d00
FUN_80026d00:
    addiu   $sp,$sp,-40
    lui     $v0,0x800e
    addiu   $v1,$v0,14128
    sw      $ra,32($sp)
    sw      $s3,28($sp)
    sw      $s2,24($sp)
    sw      $s1,20($sp)
    sw      $s0,16($sp)
    lbu     $v0,37($v1)
    nop
    beq     $v0,$zero,.L80026d88
    addu    $s0,$zero,$zero
    addu    $s2,$v1,$zero
    lui     $v0,0x800e
    addiu   $s3,$v0,14872
.L80026d3c:
    lhu     $v0,28($s2)
    nop
    addu    $a0,$v0,$s0
    andi    $v0,$a0,0xffff
    sll     $v0,$v0,2
    addu    $s1,$v0,$s3
    lw      $v0,0($s1)
    nop
    beq     $v0,$zero,.L80026d74
    nop
    sll     $a0,$a0,16
    jal     FUN_80034b7c
    sra     $a0,$a0,16
    sw      $zero,0($s1)
.L80026d74:
    lbu     $v0,37($s2)
    addiu   $s0,$s0,1
    sltu    $v0,$s0,$v0
    bne     $v0,$zero,.L80026d3c
    nop
.L80026d88:
    lui     $v0,0x800e
    addiu   $v1,$v0,14128
    lw      $v0,16($v1)
    nop
    beq     $v0,$zero,.L80026dd0
    addu    $s0,$zero,$zero
    addu    $a0,$v1,$zero
.L80026da4:
    lw      $v0,4($a0)
    lw      $v1,8($a0)
    addu    $v0,$v0,$s0
    lbu     $v0,0($v0)
    addu    $v1,$v1,$s0
    sb      $v0,0($v1)
    lw      $v0,16($a0)
    addiu   $s0,$s0,1
    sltu    $v0,$s0,$v0
    bne     $v0,$zero,.L80026da4
    nop
.L80026dd0:
    lui     $s1,0x800e
    addiu   $s0,$s1,14128
    lw      $a0,8($s0)
    lh      $a1,28($s0)
    lw      $a2,12($s0)
    jal     FUN_80034fac
    nop
    sll     $v0,$v0,16
    sra     $v0,$v0,16
    addiu   $v1,$zero,-1
    beq     $v0,$v1,.L80026e54
    addu    $v0,$v1,$zero
    lhu     $a0,28($s0)
    lhu     $v1,14128($s1)
    slti    $v0,$a0,3
    beq     $v0,$zero,.L80026e3c
    addu    $v0,$zero,$zero
    bltz    $a0,.L80026e3c
    andi    $a1,$v1,0xffff
    sltiu   $v0,$a1,9
    beq     $v0,$zero,.L80026e38
    lui     $v1,0x800e
    addiu   $v1,$v1,14872
    sll     $v0,$a0,2
    addu    $v0,$v0,$v1
    sw      $a1,0($v0)
.L80026e38:
    addu    $v0,$zero,$zero
.L80026e3c:
    lui     $v1,0x800e
    addiu   $v1,$v1,14128
    lw      $a1,16($v1)
    addiu   $a0,$zero,1
    sb      $a0,36($v1)
    sw      $a1,40($v1)
.L80026e54:
    lw      $ra,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
.end FUN_80026d00
.size FUN_80026d00, . - FUN_80026d00
