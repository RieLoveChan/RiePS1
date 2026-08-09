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

.section .text.FUN_80026e70,"ax",@progbits
.globl FUN_80026e70
.type FUN_80026e70, @function
.ent FUN_80026e70
FUN_80026e70:
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    addu    $s0,$zero,$zero
    addu    $a0,$s0,$zero
    sw      $ra,24($sp)
    jal     FUN_800356ec
    sw      $s1,20($sp)
    sll     $v0,$v0,16
    bne     $v0,$zero,.L80026ea0
    lui     $v0,0x800e
    j       .L80027060
    addiu   $v0,$zero,-1
.L80026ea0:
    lbu     $v0,14164($v0)
    nop
    bne     $v0,$zero,.L80026ec4
    lui     $v0,0x800e
    jal     FUN_80026d00
    nop
    bne     $v0,$zero,.L80027060
    addiu   $v0,$zero,-3
.L80026ec0:
    lui     $v0,0x800e
.L80026ec4:
    addiu   $s1,$v0,14128
    lbu     $v1,36($s1)
    addiu   $v0,$zero,1
    bne     $v1,$v0,.L80026ee4
    lui     $a0,0x7
    lw      $s0,16($s1)
    addiu   $v0,$zero,3
    sb      $v0,36($s1)
.L80026ee4:
    lw      $a1,24($s1)
    ori     $a0,$a0,0xffff
    sltu    $v0,$a0,$a1
    bne     $v0,$zero,.L80026f3c
    nop
    lw      $a0,4($s1)
    lh      $a1,28($s1)
    jal     FUN_8003540c
    addu    $a0,$a0,$s0
    sll     $v0,$v0,16
    sra     $v0,$v0,16
    addiu   $v1,$zero,-1
    beq     $v0,$v1,.L80027060
    addiu   $v0,$zero,-2
    lw      $v0,32($s1)
    lw      $a0,20($s1)
    lw      $v1,40($s1)
    addu    $v0,$v0,$a0
    addu    $v1,$v1,$a0
    sw      $v0,32($s1)
    j       .L8002705c
    sw      $v1,40($s1)
.L80026f3c:
    lw      $v1,40($s1)
    lw      $v0,16($s1)
    nop
    bne     $v1,$v0,.L80026fb0
    subu    $a1,$a1,$v1
    lui     $s0,0x8
    subu    $a1,$s0,$v1
    lw      $a0,4($s1)
    lh      $a2,28($s1)
    jal     FUN_800354cc
    addu    $a0,$a0,$v1
    sll     $v0,$v0,16
    lw      $v1,32($s1)
    lw      $a1,16($s1)
    lw      $a0,40($s1)
    addu    $v1,$v1,$s0
    subu    $v1,$v1,$a1
    addu    $a0,$a0,$s0
    subu    $a0,$a0,$a1
    sw      $v1,32($s1)
    sra     $v1,$v0,16
    addiu   $v0,$zero,-2
    beq     $v1,$v0,.L8002705c
    sw      $a0,40($s1)
    addiu   $v0,$zero,-1
    bne     $v1,$v0,.L80027060
    addu    $v0,$zero,$zero
    j       .L80027060
    addiu   $v0,$zero,-4
.L80026fb0:
    sltu    $v0,$a0,$a1
    bne     $v0,$zero,.L80027010
    nop
    lw      $a0,4($s1)
    lh      $a2,28($s1)
    jal     FUN_800354cc
    addu    $a0,$a0,$s0
    sll     $v0,$v0,16
    lw      $a0,24($s1)
    lw      $a1,40($s1)
    lw      $v1,32($s1)
    subu    $a0,$a0,$a1
    addu    $v1,$v1,$a0
    addu    $a1,$a1,$a0
    sw      $v1,32($s1)
    sra     $v1,$v0,16
    addiu   $v0,$zero,-2
    beq     $v1,$v0,.L8002705c
    sw      $a1,40($s1)
    addiu   $v0,$zero,-1
    bne     $v1,$v0,.L80027060
    addu    $v0,$zero,$zero
    j       .L80027060
    addiu   $v0,$zero,-5
.L80027010:
    lui     $a1,0x8
    lw      $a0,4($s1)
    lh      $a2,28($s1)
    jal     FUN_800354cc
    addu    $a0,$a0,$s0
    lui     $a1,0x8
    sll     $v0,$v0,16
    lw      $v1,32($s1)
    lw      $a0,40($s1)
    addu    $v1,$v1,$a1
    addu    $a0,$a0,$a1
    sw      $a0,40($s1)
    sra     $a0,$v0,16
    addiu   $v0,$zero,-2
    beq     $a0,$v0,.L8002705c
    sw      $v1,32($s1)
    addiu   $v1,$zero,-1
    beq     $a0,$v1,.L80027060
    addiu   $v0,$zero,-6
.L8002705c:
    addu    $v0,$zero,$zero
.L80027060:
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
.end FUN_80026e70
.size FUN_80026e70, . - FUN_80026e70

.section .text.FUN_80027074,"ax",@progbits
.globl FUN_80027074
.type FUN_80027074, @function
.ent FUN_80027074
FUN_80027074:
    addiu   $sp,$sp,-56
    sw      $s4,40($sp)
    addu    $s4,$a0,$zero
    sw      $s0,24($sp)
    andi    $s0,$s4,0xffff
    sltiu   $v0,$s0,819
    sw      $ra,48($sp)
    sw      $s5,44($sp)
    sw      $s3,36($sp)
    sw      $s2,32($sp)
    bne     $v0,$zero,.L800270ac
    sw      $s1,28($sp)
    jal     FUN_80029a4c
    nop
.L800270ac:
    addu    $a0,$s0,$zero
    addiu   $a1,$sp,16
    jal     FUN_80029f40
    addiu   $a2,$sp,18
    bne     $v0,$zero,.L800272a8
    addiu   $v0,$zero,-1
    lhu     $a0,16($sp)
    nop
    slti    $v0,$a0,3
    beq     $v0,$zero,.L80027104
    addu    $v1,$zero,$zero
    bgez    $a0,.L800270f4
    lui     $v1,0x800e
    j       .L80027104
    addu    $v1,$zero,$zero
.L800270e8:
    sb      $s0,11140($s1)
    j       .L80027194
    addu    $a0,$s0,$zero
.L800270f4:
    addiu   $v1,$v1,14872
    sll     $v0,$a0,2
    addu    $v0,$v0,$v1
    lhu     $v1,0($v0)
.L80027104:
    addu    $s0,$zero,$zero
    lui     $v0,0x800e
    addiu   $s5,$v0,14360
    addiu   $s2,$zero,1
    lui     $s1,0x800e
    lui     $v0,0x800b
    addiu   $v0,$v0,-7432
.L80027118:
    sll     $v1,$v1,4
    addu    $v1,$v1,$v0
    lhu     $a0,18($sp)
    lw      $v1,8($v1)
    sll     $v0,$a0,2
    addu    $v0,$v0,$a0
    sllv    $v0,$v0,$s2
    addu    $v1,$v1,$v0
    lbu     $s3,8($v1)
    andi    $v0,$s0,0xff
.L80027148:
    sll     $v0,$v0,3
    addu    $v0,$v0,$s5
    lhu     $v0,4($v0)
    nop
    bne     $v0,$zero,.L80027180
    nop
    jal     FUN_8002f11c
    sllv    $a0,$s2,$s0
    bne     $v0,$zero,.L80027180
    nop
    lbu     $v0,11140($s1)
    nop
    bne     $v0,$s0,.L800270e8
    nop
.L80027180:
    addiu   $s0,$s0,1
    sltiu   $v0,$s0,17
    bne     $v0,$zero,.L80027148
    andi    $v0,$s0,0xff
    addiu   $a0,$zero,-1
.L80027194:
    sll     $v0,$a0,24
    sra     $v0,$v0,24
    addiu   $v1,$zero,-1
    bne     $v0,$v1,.L800271bc
    andi    $v1,$a0,0xff
.L800271a8:
    j       .L800272a8
    addiu   $v0,$zero,-1
.L800271b0:
    sb      $s0,11140($s1)
    j       .L8002725c
    addu    $a0,$s0,$zero
.L800271bc:
    sltiu   $v0,$v1,21
    beq     $v0,$zero,.L800271ec
    lui     $v0,0x800e
    addiu   $v0,$v0,14360
    sll     $v1,$v1,3
    addu    $v1,$v1,$v0
    addiu   $v0,$zero,1
    sh      $v0,4($v1)
    addiu   $v0,$zero,100
    sh      $s4,0($v1)
    sh      $zero,2($v1)
    sb      $v0,6($v1)
.L800271ec:
    andi    $v0,$s3,0xff
    bne     $v0,$zero,.L800272a8
    addu    $v0,$zero,$zero
    addu    $s0,$zero,$zero
    lui     $v0,0x800e
    addiu   $s3,$v0,14360
    addiu   $s2,$zero,1
    lui     $s1,0x800e
.L8002720c:
    andi    $v0,$s0,0xff
.L80027210:
    sll     $v0,$v0,3
    addu    $v0,$v0,$s3
    lhu     $v0,4($v0)
    nop
    bne     $v0,$zero,.L80027248
    nop
    jal     FUN_8002f11c
    sllv    $a0,$s2,$s0
    bne     $v0,$zero,.L80027248
    nop
    lbu     $v0,11140($s1)
    nop
    bne     $v0,$s0,.L800271b0
    nop
.L80027248:
    addiu   $s0,$s0,1
    sltiu   $v0,$s0,17
    bne     $v0,$zero,.L80027210
    andi    $v0,$s0,0xff
    addiu   $a0,$zero,-1
.L8002725c:
    sll     $v0,$a0,24
    sra     $v0,$v0,24
    addiu   $v1,$zero,-1
    beq     $v0,$v1,.L800271a8
    andi    $v1,$a0,0xff
    sltiu   $v0,$v1,21
    beq     $v0,$zero,.L800272a4
    lui     $v0,0x800e
    addiu   $v0,$v0,14360
    sll     $v1,$v1,3
    addu    $v1,$v1,$v0
    addiu   $v0,$zero,2
    sh      $v0,2($v1)
    addiu   $v0,$zero,1
    sh      $v0,4($v1)
    addiu   $v0,$zero,100
    sh      $s4,0($v1)
    sb      $v0,6($v1)
.L800272a4:
    addu    $v0,$zero,$zero
.L800272a8:
    lw      $ra,48($sp)
    lw      $s5,44($sp)
    lw      $s4,40($sp)
    lw      $s3,36($sp)
    lw      $s2,32($sp)
    lw      $s1,28($sp)
    lw      $s0,24($sp)
    jr      $ra
    addiu   $sp,$sp,56
.end FUN_80027074
.size FUN_80027074, . - FUN_80027074

.section .text.FUN_800272cc,"ax",@progbits
.globl FUN_800272cc
.type FUN_800272cc, @function
.ent FUN_800272cc
FUN_800272cc:
    addiu   $sp,$sp,-48
    andi    $v1,$a0,0xff
    slti    $v0,$v1,3
    sw      $ra,40($sp)
    sw      $s5,36($sp)
    sw      $s4,32($sp)
    sw      $s3,28($sp)
    sw      $s2,24($sp)
    sw      $s1,20($sp)
    beq     $v0,$zero,.L800273a8
    sw      $s0,16($sp)
    bltz    $v1,.L800273a8
    nop
    addu    $a0,$v1,$zero
    beq     $v0,$zero,.L8002732c
    addu    $v0,$zero,$zero
    bgez    $a0,.L8002731c
    lui     $v1,0x800e
    j       .L80027330
    lui     $v1,0x800b
.L8002731c:
    addiu   $v1,$v1,14872
    sll     $v0,$a0,2
    addu    $v0,$v0,$v1
    lhu     $v0,0($v0)
.L8002732c:
    lui     $v1,0x800b
.L80027330:
    addiu   $v1,$v1,-7432
    sll     $v0,$v0,4
    addu    $v0,$v0,$v1
    lhu     $s4,12($v0)
    lw      $v1,8($v0)
    beq     $s4,$zero,.L800273a8
    addu    $s2,$zero,$zero
    lui     $v0,0x800e
    addiu   $s5,$v0,14360
.L80027358_base:
    addu    $s3,$v1,$zero
.L80027358:
    addu    $s0,$zero,$zero
.L8002735c:
    lhu     $s1,0($s3)
    andi    $v0,$s0,0xff
.L80027364:
    sll     $v0,$v0,3
    addu    $v0,$v0,$s5
    lhu     $v0,0($v0)
    nop
    bne     $v0,$s1,.L80027384
    nop
    jal     FUN_80029b94
    andi    $a0,$s0,0xff
.L80027384:
    addiu   $s0,$s0,1
    sltiu   $v0,$s0,20
    bne     $v0,$zero,.L80027364
    andi    $v0,$s0,0xff
    addiu   $s2,$s2,1
    andi    $v0,$s4,0xffff
    sltu    $v0,$s2,$v0
    bne     $v0,$zero,.L80027358
    addiu   $s3,$s3,10
.L800273a8:
    lw      $ra,40($sp)
    lw      $s5,36($sp)
    lw      $s4,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,48
.end FUN_800272cc
.size FUN_800272cc, . - FUN_800272cc

.section .text.FUN_800273cc,"ax",@progbits
.globl FUN_800273cc
.type FUN_800273cc, @function
.ent FUN_800273cc
FUN_800273cc:
    addiu   $sp,$sp,-104
    andi    $a0,$a0,0xffff
    addiu   $v1,$a0,-257
    sltiu   $v0,$v1,18
    sw      $ra,100($sp)
    sw      $s2,96($sp)
    sw      $s1,92($sp)
    beq     $v0,$zero,.L8002759c
    sw      $s0,88($sp)
    lui     $v0,0x8002
    addiu   $v0,$v0,-21988
    sll     $v1,$v1,2
    addu    $v1,$v1,$v0
    lw      $v0,0($v1)
    nop
    jr      $v0
    nop
.L80027410:
    jal     FUN_80034b3c
    nop
    addiu   $a0,$sp,16
    addiu   $v0,$zero,125
    sb      $v0,18($sp)
    sb      $v0,16($sp)
    sb      $zero,19($sp)
    jal     FUN_8003fca0
    sb      $zero,17($sp)
    lui     $v0,0x800e
    jal     FUN_80024e00
    sw      $zero,14536($v0)
    j       .L8002759c
    nop
.L80027448:
    jal     FUN_80034b2c
    nop
    addiu   $a0,$sp,16
    addiu   $v0,$zero,80
    sb      $v0,18($sp)
    sb      $v0,16($sp)
    sb      $v0,19($sp)
    jal     FUN_8003fca0
    sb      $v0,17($sp)
    lui     $v1,0x800e
    addiu   $v0,$zero,1
    jal     FUN_80024e00
    sw      $v0,14536($v1)
    j       .L8002759c
    nop
.L80027484:
    jal     FUN_8002a200
    addiu   $a0,$zero,272
    j       .L8002759c
    nop
.L80027494:
    jal     FUN_8002a200
    addiu   $a0,$zero,273
    j       .L8002759c
    nop
.L800274a4:
    jal     FUN_8002a200
    addiu   $a0,$zero,274
    j       .L8002759c
    nop
.L800274b4:
    jal     FUN_800272cc
    addu    $a0,$zero,$zero
    jal     FUN_8002a2b0
    nop
.L800274c4:
    jal     FUN_800297c4
    addiu   $s2,$zero,16384
    addiu   $s0,$sp,24
    addu    $a0,$s0,$zero
    lui     $v1,0x800e
    addiu   $v0,$v1,14328
    sh      $zero,2($v0)
    sh      $zero,22($v0)
    sb      $zero,1($v0)
    lui     $v0,0x800e
    sb      $zero,14713($v0)
    lui     $v0,0x10
    addiu   $s1,$zero,3
    sb      $zero,14328($v1)
    sw      $s2,4($s0)
    sw      $v0,24($sp)
    jal     FUN_8002f42c
    sh      $s1,78($sp)
    addu    $a0,$s0,$zero
    lui     $v0,0x20
    sw      $s2,4($a0)
    sw      $v0,24($sp)
    jal     FUN_8002f42c
    sh      $s1,78($sp)
    addu    $a0,$zero,$zero
    jal     FUN_8002ef5c
    lui     $a1,0x30
    jal     FUN_800272cc
    addiu   $a0,$zero,1
    jal     FUN_800272cc
    addiu   $a0,$zero,2
    jal     FUN_8002a2b0
    nop
    j       .L8002759c
    nop
.L80027550:
    addiu   $v1,$zero,190
    lui     $v0,0x800e
    jal     FUN_80024e00
    sw      $v1,14528($v0)
    jal     FUN_80034b3c
    nop
    addiu   $a0,$sp,16
    addiu   $v0,$zero,125
    sb      $v0,18($sp)
    sb      $v0,16($sp)
    sb      $zero,19($sp)
    jal     FUN_8003fca0
    sb      $zero,17($sp)
    lui     $v0,0x800e
    jal     FUN_80024e00
    sw      $zero,14536($v0)
    lui     $v1,0x800e
    addiu   $v0,$zero,4096
    sw      $v0,14240($v1)
.L8002759c:
    lw      $ra,100($sp)
    lw      $s2,96($sp)
    lw      $s1,92($sp)
    lw      $s0,88($sp)
    jr      $ra
    addiu   $sp,$sp,104
.end FUN_800273cc
.size FUN_800273cc, . - FUN_800273cc

.section .text.FUN_800275b4,"ax",@progbits
.globl FUN_800275b4
.type FUN_800275b4, @function
.ent FUN_800275b4
FUN_800275b4:
    addiu   $sp,$sp,-40
    sw      $s0,16($sp)
    lui     $s0,0x800e
    addiu   $s0,$s0,11152
    addu    $a0,$s0,$zero
    sw      $ra,36($sp)
    sw      $s4,32($sp)
    sw      $s3,28($sp)
    sw      $s2,24($sp)
    jal     FUN_8002f3a0
    sw      $s1,20($sp)
    addu    $s2,$zero,$zero
    addu    $s4,$s0,$zero
    lui     $v0,0x800e
    addiu   $s1,$v0,14360
    addu    $s3,$s1,$zero
.L800275f4:
    addu    $v0,$s2,$s4
    lbu     $v1,0($v0)
    addiu   $v0,$zero,3
    bne     $v1,$v0,.L80027644
    nop
    lbu     $v0,7($s1)
    nop
    addiu   $v0,$v0,1
    sb      $v0,7($s1)
    andi    $v0,$v0,0xff
    sltiu   $v0,$v0,17
    bne     $v0,$zero,.L80027644
    addu    $s0,$s2,$zero
    jal     FUN_80032048
    andi    $a0,$s0,0xff
    andi    $s0,$s0,0xff
    sll     $s0,$s0,3
    addu    $a0,$s0,$s3
    jal     FUN_8003bac8
    addiu   $a1,$zero,8
.L80027644:
    addiu   $s2,$s2,1
    slti    $v0,$s2,20
    bne     $v0,$zero,.L800275f4
    addiu   $s1,$s1,8
    jal     FUN_80026a88
    nop
    addiu   $a0,$zero,1
    jal     FUN_8002e8bc
    lui     $a1,0x30
    lw      $ra,36($sp)
    lw      $s4,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
.end FUN_800275b4
.size FUN_800275b4, . - FUN_800275b4
.section .text.FUN_80027688,"ax",@progbits
.globl FUN_80027688
.type FUN_80027688, @function
.ent FUN_80027688
FUN_80027688:
    addiu   $sp,$sp,-40
    sw      $ra,32($sp)
    addiu   $a0,$zero,815
    addiu   $a1,$sp,16
    jal     FUN_80029f40
    addiu   $a2,$sp,18
    andi    $v0,$v0,0xff
    bne     $v0,$zero,.L800276fc
    addiu   $a0,$zero,816
    lhu     $a0,16($sp)
    nop
    slti    $v0,$a0,3
    beq     $v0,$zero,.L800276e0
    addu    $v0,$zero,$zero
    bgez    $a0,.L800276d0
    lui     $v1,0x800e
    j       .L800276e8
    addu    $a0,$v0,$zero
.L800276d0:
    addiu   $v1,$v1,14872
    sll     $v0,$a0,2
    addu    $v0,$v0,$v1
    lhu     $v0,0($v0)
.L800276e0:
    nop
    addu    $a0,$v0,$zero
.L800276e8:
    lhu     $a1,18($sp)
    addiu   $a2,$zero,18
    jal     FUN_80029ab4
    addiu   $a3,$zero,100
    addiu   $a0,$zero,816
.L800276fc:
    addiu   $a1,$sp,20
    jal     FUN_80029f40
    addiu   $a2,$sp,22
    andi    $v0,$v0,0xff
    bne     $v0,$zero,.L80027764
    addiu   $a0,$zero,817
    lhu     $a0,20($sp)
    nop
    slti    $v0,$a0,3
    beq     $v0,$zero,.L80027748
    addu    $v0,$zero,$zero
    bgez    $a0,.L80027738
    lui     $v1,0x800e
    j       .L80027750
    addu    $a0,$v0,$zero
.L80027738:
    addiu   $v1,$v1,14872
    sll     $v0,$a0,2
    addu    $v0,$v0,$v1
    lhu     $v0,0($v0)
.L80027748:
    nop
    addu    $a0,$v0,$zero
.L80027750:
    lhu     $a1,22($sp)
    addiu   $a2,$zero,18
    jal     FUN_80029ab4
    addiu   $a3,$zero,100
    addiu   $a0,$zero,817
.L80027764:
    addiu   $a1,$sp,24
    jal     FUN_80029f40
    addiu   $a2,$sp,26
    andi    $v0,$v0,0xff
    bne     $v0,$zero,.L800277c8
    nop
    lhu     $a0,24($sp)
    nop
    slti    $v0,$a0,3
    beq     $v0,$zero,.L800277b0
    addu    $v0,$zero,$zero
    bgez    $a0,.L800277a0
    lui     $v1,0x800e
    j       .L800277b8
    addu    $a0,$v0,$zero
.L800277a0:
    addiu   $v1,$v1,14872
    sll     $v0,$a0,2
    addu    $v0,$v0,$v1
    lhu     $v0,0($v0)
.L800277b0:
    nop
    addu    $a0,$v0,$zero
.L800277b8:
    lhu     $a1,26($sp)
    addiu   $a2,$zero,17
    jal     FUN_80029ab4
    addiu   $a3,$zero,100
.L800277c8:
    lw      $ra,32($sp)
    nop
    jr      $ra
    addiu   $sp,$sp,40
.end FUN_80027688
.size FUN_80027688, . - FUN_80027688
.section .text.FUN_800277d8,"ax",@progbits
.globl FUN_800277d8
.type FUN_800277d8, @function
.ent FUN_800277d8
FUN_800277d8:
    lui     $v0,0x800e
    lw      $v1,14188($v0)
    addiu   $sp,$sp,-40
    sw      $ra,36($sp)
    sw      $s2,32($sp)
    sw      $s1,28($sp)
    sltiu   $v0,$v1,9
    beq     $v0,$zero,.L80027aac
    sw      $s0,24($sp)
    lui     $v0,0x8002
    addiu   $v0,$v0,-21916
    sll     $v1,$v1,2
    addu    $v1,$v1,$v0
    lw      $v0,0($v1)
    nop
    jr      $v0
    nop
.L8002781c:
    addiu   $a0,$zero,1
    lui     $a1,0x800e
    jal     FUN_8003f87c
    addiu   $a1,$a1,11184
    addiu   $v1,$zero,2
    bne     $v0,$v1,.L80027aac
    lui     $v1,0x800e
    addiu   $v0,$zero,1
    j       .L80027aac
    sw      $v0,14188($v1)
.L80027844:
    lui     $v0,0x800e
    addiu   $s0,$v0,11184
    addiu   $v0,$zero,200
    sb      $v0,8($s0)
    addiu   $a0,$zero,1
    jal     FUN_8003f87c
    addu    $a1,$s0,$zero
    addiu   $v1,$zero,2
    bne     $v0,$v1,.L80027888
    addiu   $s1,$s0,8
    addiu   $v0,$zero,14
    sw      $v0,28($s0)
    addu    $a0,$v0,$zero
    jal     FUN_8003fa20
    addu    $a1,$s1,$zero
    j       .L8002788c
    addu    $v0,$zero,$zero
.L80027888:
    addiu   $v0,$zero,-1
.L8002788c:
    bne     $v0,$zero,.L80027aac
    lui     $v1,0x800e
    addiu   $v0,$zero,2
    j       .L80027aac
    sw      $v0,14188($v1)
.L800278a0:
    addiu   $a0,$zero,1
    lui     $a1,0x800e
    jal     FUN_8003f87c
    addiu   $a1,$a1,11184
    addiu   $v1,$zero,2
    bne     $v0,$v1,.L80027aac
    lui     $v1,0x800e
    addiu   $v0,$zero,3
    j       .L80027aac
    sw      $v0,14188($v1)
.L800278c8:
    addiu   $a0,$zero,1
    lui     $v0,0x800e
    addiu   $s0,$v0,11184
    lbu     $v0,41($s0)
    lbu     $v1,40($s0)
    addu    $a1,$s0,$zero
    sb      $v0,8($s0)
    jal     FUN_8003f87c
    sb      $v1,9($s0)
    addiu   $v1,$zero,2
    bne     $v0,$v1,.L80027914
    addiu   $s1,$s0,8
    addiu   $v0,$zero,13
    sw      $v0,28($s0)
    addu    $a0,$v0,$zero
    jal     FUN_8003fa20
    addu    $a1,$s1,$zero
    j       .L80027918
    addu    $v0,$zero,$zero
.L80027914:
    addiu   $v0,$zero,-1
.L80027918:
    bne     $v0,$zero,.L80027aac
    lui     $v1,0x800e
    addiu   $v0,$zero,4
    j       .L80027aac
    sw      $v0,14188($v1)
.L8002792c:
    addiu   $a0,$zero,1
    lui     $a1,0x800e
    jal     FUN_8003f87c
    addiu   $a1,$a1,11184
    addiu   $v1,$zero,2
    bne     $v0,$v1,.L80027aac
    lui     $v1,0x800e
    addiu   $v0,$zero,5
    j       .L80027aac
    sw      $v0,14188($v1)
.L80027954:
    lui     $v0,0x800e
    addiu   $s0,$v0,11184
    lw      $a0,12($s0)
    jal     FUN_8003fd44
    addiu   $a1,$sp,16
    addiu   $a0,$zero,1
    lbu     $v0,16($sp)
    lbu     $v1,17($sp)
    lbu     $a2,18($sp)
    addu    $a1,$s0,$zero
    sb      $zero,11($s0)
    sb      $v0,8($s0)
    sb      $v1,9($s0)
    jal     FUN_8003f87c
    sb      $a2,10($s0)
    addiu   $v1,$zero,2
    bne     $v0,$v1,.L800279b4
    addiu   $s1,$s0,8
    sw      $v0,28($s0)
    addu    $a0,$v1,$zero
    jal     FUN_8003fa20
    addu    $a1,$s1,$zero
    j       .L800279b8
    addu    $v0,$zero,$zero
.L800279b4:
    addiu   $v0,$zero,-1
.L800279b8:
    bne     $v0,$zero,.L80027aac
    lui     $v1,0x800e
    addiu   $v0,$zero,6
    j       .L80027aac
    sw      $v0,14188($v1)
.L800279cc:
    addiu   $a0,$zero,1
    lui     $a1,0x800e
    jal     FUN_8003f87c
    addiu   $a1,$a1,11184
    addiu   $v1,$zero,2
    bne     $v0,$v1,.L80027aac
    lui     $v1,0x800e
    addiu   $v0,$zero,7
    j       .L80027aac
    sw      $v0,14188($v1)
.L800279f4:
    addiu   $a0,$zero,1
    lui     $v0,0x800e
    addiu   $s0,$v0,11184
    jal     FUN_8003f87c
    addu    $a1,$s0,$zero
    addiu   $v1,$zero,2
    bne     $v0,$v1,.L80027a2c
    addiu   $v0,$zero,21
    sw      $v0,28($s0)
    addu    $a0,$v0,$zero
    jal     FUN_8003fa20
    addu    $a1,$zero,$zero
    j       .L80027a30
    addu    $v0,$zero,$zero
.L80027a2c:
    addiu   $v0,$zero,-1
.L80027a30:
    bne     $v0,$zero,.L80027aac
    lui     $v1,0x800e
    addiu   $v0,$zero,8
    j       .L80027aac
    sw      $v0,14188($v1)
.L80027a44:
    addiu   $a0,$zero,1
    lui     $s2,0x800e
    addiu   $s0,$s2,11184
    jal     FUN_8003f87c
    addu    $a1,$s0,$zero
    addiu   $s1,$zero,2
    bne     $v0,$s1,.L80027a8c
    addiu   $a0,$zero,1
    lbu     $v0,11184($s2)
    nop
    andi    $v0,$v0,0x40
    bne     $v0,$zero,.L80027a8c
    lui     $v0,0x800e
    addiu   $v1,$v0,14184
    sw      $zero,4($v1)
    addiu   $v1,$zero,6
    j       .L80027aac
    sw      $v1,14184($v0)
.L80027a8c:
    jal     FUN_8003f87c
    addu    $a1,$s0,$zero
    bne     $v0,$s1,.L80027aac
    addiu   $v0,$zero,1
    sw      $v0,28($s0)
    addu    $a0,$v0,$zero
    jal     FUN_8003fa20
    addu    $a1,$zero,$zero
.L80027aac:
    lw      $ra,36($sp)
    lw      $s2,32($sp)
    lw      $s1,28($sp)
    lw      $s0,24($sp)
    jr      $ra
    addiu   $sp,$sp,40
.end FUN_800277d8
.size FUN_800277d8, . - FUN_800277d8
.section .text.FUN_80027ac4,"ax",@progbits
.globl FUN_80027ac4
.type FUN_80027ac4, @function
.ent FUN_80027ac4
FUN_80027ac4:
    addiu   $sp,$sp,-40
    lui     $v0,0x800e
    sw      $s4,32($sp)
    addiu   $s4,$v0,14184
    sw      $ra,36($sp)
    sw      $s3,28($sp)
    sw      $s2,24($sp)
    sw      $s1,20($sp)
    sw      $s0,16($sp)
    lw      $s1,4($s4)
    addiu   $v0,$zero,1
    beq     $s1,$v0,.L80027b5c
    addiu   $a0,$zero,1
    beq     $s1,$zero,.L80027b10
    addiu   $v0,$zero,2
    beq     $s1,$v0,.L80027bdc
    lui     $v0,0x800e
    j       .L80027c00
    nop
.L80027b10:
    lui     $v0,0x800e
    addiu   $s0,$v0,11184
    jal     FUN_8003f87c
    addu    $a1,$s0,$zero
    addiu   $v1,$zero,2
    bne     $v0,$v1,.L80027b44
    addiu   $v0,$zero,27
    sw      $v0,28($s0)
    addu    $a0,$v0,$zero
    jal     FUN_8003fa20
    addu    $a1,$zero,$zero
    j       .L80027b48
    addu    $v0,$zero,$zero
.L80027b44:
    addiu   $v0,$zero,-1
.L80027b48:
    bne     $v0,$zero,.L80027c00
    lui     $v1,0x800e
    addiu   $v0,$zero,1
    j       .L80027c00
    sw      $v0,14188($v1)
.L80027b5c:
    lui     $s3,0x800e
    addiu   $s2,$s3,11184
    jal     FUN_8003f87c
    addu    $a1,$s2,$zero
    addu    $s0,$v0,$zero
    addiu   $v0,$zero,2
    bne     $s0,$v0,.L80027c00
    nop
    lbu     $v0,11184($s3)
    nop
    andi    $v0,$v0,0x20
    beq     $v0,$zero,.L80027bc4
    addiu   $a0,$zero,1
    lbu     $v0,76($s2)
    nop
    bne     $v0,$zero,.L80027ba8
    sw      $s0,4($s4)
    jal     FUN_8002a680
    nop
.L80027ba8:
    sb      $s1,76($s2)
    addu    $a0,$zero,$zero
    addu    $a1,$a0,$zero
    jal     FUN_8002fe7c
    addiu   $a2,$zero,1
    j       .L80027c00
    nop
.L80027bc4:
    jal     FUN_8003f87c
    addu    $a1,$s2,$zero
    bne     $v0,$s0,.L80027c00
    addiu   $a0,$zero,1
    j       .L80027bf8
    sw      $s1,28($s2)
.L80027bdc:
    addiu   $s0,$v0,11184
    jal     FUN_8003f87c
    addu    $a1,$s0,$zero
    bne     $v0,$s1,.L80027c00
    addiu   $v0,$zero,16
    sw      $v0,28($s0)
    addu    $a0,$v0,$zero
.L80027bf8:
    jal     FUN_8003fa20
    addu    $a1,$zero,$zero
.L80027c00:
    lw      $ra,36($sp)
    lw      $s4,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
.end FUN_80027ac4
.size FUN_80027ac4, . - FUN_80027ac4
.section .text.FUN_80027c20,"ax",@progbits
.globl FUN_80027c20
.type FUN_80027c20, @function
.ent FUN_80027c20
FUN_80027c20:
    addiu   $sp,$sp,-32
    lui     $a0,0x800e
    sw      $s1,20($sp)
    addiu   $s1,$a0,14184
    sw      $ra,24($sp)
    sw      $s0,16($sp)
    lw      $v1,4($s1)
    addiu   $v0,$zero,1
    beq     $v1,$v0,.L80027cc0
    lui     $v0,0x800e
    beq     $v1,$zero,.L80027c60
    addiu   $v0,$zero,2
    beq     $v1,$v0,.L80027cf0
    lui     $v0,0x800e
    j       .L80027d04
    nop
.L80027c60:
    addu    $a0,$zero,$zero
    addu    $a1,$a0,$zero
    jal     FUN_8002fe7c
    addu    $a2,$a0,$zero
    addiu   $a0,$zero,1
    lui     $v0,0x800e
    addiu   $s0,$v0,11184
    jal     FUN_8003f87c
    addu    $a1,$s0,$zero
    addiu   $v1,$zero,2
    bne     $v0,$v1,.L80027ca8
    addiu   $v0,$zero,9
    sw      $v0,28($s0)
    addu    $a0,$v0,$zero
    jal     FUN_8003fa20
    addu    $a1,$zero,$zero
    j       .L80027cac
    addu    $v0,$zero,$zero
.L80027ca8:
    addiu   $v0,$zero,-1
.L80027cac:
    bne     $v0,$zero,.L80027d04
    lui     $v1,0x800e
    addiu   $v0,$zero,1
    j       .L80027d04
    sw      $v0,14188($v1)
.L80027cc0:
    addiu   $a0,$zero,1
    addiu   $s0,$v0,11184
    jal     FUN_8003f87c
    addu    $a1,$s0,$zero
    addu    $v1,$v0,$zero
    addiu   $v0,$zero,2
    bne     $v1,$v0,.L80027d04
    nop
    lbu     $v0,25($s0)
    sw      $v1,4($s1)
    j       .L80027d04
    sb      $v0,24($s0)
.L80027cf0:
    addiu   $v0,$v0,11184
    sw      $zero,12($v0)
    sw      $zero,20($v0)
    sw      $zero,14184($a0)
    sw      $zero,4($s1)
.L80027d04:
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
.end FUN_80027c20
.size FUN_80027c20, . - FUN_80027c20
.section .text.FUN_80027d18,"ax",@progbits
.globl FUN_80027d18
.type FUN_80027d18, @function
.ent FUN_80027d18
FUN_80027d18:
    addiu   $sp,$sp,-104
    sw      $s2,88($sp)
    addu    $s2,$a0,$zero
    addiu   $a0,$zero,-1
    lui     $v0,0x800e
    sw      $s4,96($sp)
    addiu   $s4,$v0,14816
    sw      $ra,100($sp)
    sw      $s3,92($sp)
    sw      $s1,84($sp)
    jal     FUN_800358f8
    sw      $s0,80($sp)
    addiu   $a0,$sp,16
    addiu   $s1,$zero,16384
    lui     $v1,0x10
    addiu   $s0,$zero,3
    addu    $s3,$v0,$zero
    sw      $s1,20($sp)
    sw      $v1,16($sp)
    jal     FUN_8002f42c
    sh      $s0,70($sp)
    addiu   $a0,$sp,16
    lui     $v0,0x20
    sw      $s1,20($sp)
    sw      $v0,16($sp)
    jal     FUN_8002f42c
    sh      $s0,70($sp)
    addu    $a0,$zero,$zero
    jal     FUN_8002ef5c
    lui     $a1,0x30
    jal     FUN_800297c4
    nop
    lui     $a1,0x1
    ori     $a1,$a1,0x1040
    lui     $v1,0x800e
    addiu   $v0,$v1,14328
    sh      $zero,2($v0)
    sh      $zero,22($v0)
    sb      $zero,1($v0)
    lui     $v0,0x800e
    sb      $zero,14713($v0)
    lui     $v0,0x800e
    addiu   $s0,$v0,14824
    sb      $zero,14328($v1)
    lw      $v0,20($s0)
    addiu   $v1,$s2,48
    bne     $v0,$zero,.L80027e40
    addiu   $a0,$zero,-1
    lui     $a0,0x1
    ori     $a0,$a0,0x1040
    ori     $v0,$zero,0x8000
    sw      $v0,12($s0)
    addiu   $v0,$zero,1
    sw      $v1,4($s0)
    sw      $a1,8($s0)
    sw      $zero,16($s0)
    jal     FUN_8002f20c
    sw      $v0,20($s0)
    lw      $v1,8($s0)
    nop
    bne     $v0,$v1,.L80027e40
    addiu   $a0,$zero,-2
    lui     $a0,0x8003
    jal     FUN_8002f29c
    addiu   $a0,$a0,-30976
    lw      $a0,4($s0)
    lw      $a1,12($s0)
    jal     FUN_8002f1ac
    nop
    lw      $v1,12($s0)
    nop
    beq     $v0,$v1,.L80027e40
    addu    $a0,$zero,$zero
    addiu   $a0,$zero,-3
.L80027e40:
    bne     $a0,$zero,.L80027eb4
    addiu   $v0,$zero,1
    lui     $v0,0x800e
.L80027e4c:
    lw      $v0,14840($v0)
    nop
    beq     $v0,$zero,.L80027e98
    nop
    lw      $v1,16($s2)
    nop
    srl     $v0,$v1,8
    andi    $v0,$v0,0xff00
    srl     $v1,$v1,24
    addu    $v1,$v0,$v1
    sll     $v1,$v1,12
    lui     $v0,0xbe37
    ori     $v0,$v0,0xc63b
    multu   $v1,$v0
    addu    $v0,$zero,$zero
    mfhi    $a2
    srl     $v1,$a2,15
    j       .L80027eb4
    sw      $v1,0($s4)
.L80027e98:
    jal     FUN_800358f8
    addiu   $a0,$zero,-1
    addiu   $v1,$s3,10
    slt     $v1,$v1,$v0
    beq     $v1,$zero,.L80027e4c
    lui     $v0,0x800e
    addiu   $v0,$zero,2
.L80027eb4:
    lw      $ra,100($sp)
    lw      $s4,96($sp)
    lw      $s3,92($sp)
    lw      $s2,88($sp)
    lw      $s1,84($sp)
    lw      $s0,80($sp)
    jr      $ra
    addiu   $sp,$sp,104
.end FUN_80027d18
.size FUN_80027d18, . - FUN_80027d18
.section .text.FUN_80027ed4,"ax",@progbits
.globl FUN_80027ed4
.type FUN_80027ed4, @function
.ent FUN_80027ed4
FUN_80027ed4:
    addiu   $sp,$sp,-24
    lui     $a1,0x1
    ori     $a1,$a1,0x1040
    lui     $v0,0x1
    ori     $v0,$v0,0xff9f
    lui     $v1,0x800e
    addiu   $a0,$v1,11008
    sw      $ra,16($sp)
    sw      $v0,4($a0)
    lui     $v0,0x10
    sw      $v0,11008($v1)
    addiu   $v0,$zero,8191
    sh      $v0,8($a0)
    sh      $v0,10($a0)
    addiu   $v0,$zero,7936
    sh      $v0,8($a0)
    sh      $v0,10($a0)
    addiu   $v0,$zero,1
    sw      $v0,36($a0)
    sw      $v0,40($a0)
    lui     $v0,0x800e
    sh      $zero,12($a0)
    sh      $zero,14($a0)
    sw      $a1,28($a0)
    sw      $a1,32($a0)
    lw      $v1,14816($v0)
    addiu   $v0,$zero,3
    sw      $v0,44($a0)
    sh      $zero,48($a0)
    sh      $zero,50($a0)
    sh      $zero,52($a0)
    sh      $zero,54($a0)
    sh      $zero,56($a0)
    jal     FUN_8002f42c
    sh      $v1,20($a0)
    addiu   $a0,$zero,1
    jal     FUN_8002ef5c
    lui     $a1,0x10
    lw      $ra,16($sp)
    addu    $v0,$zero,$zero
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_80027ed4
.size FUN_80027ed4, . - FUN_80027ed4
.section .text.FUN_80027f7c,"ax",@progbits
.globl FUN_80027f7c
.type FUN_80027f7c, @function
.ent FUN_80027f7c
FUN_80027f7c:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     FUN_80028398
    nop
    lui     $a0,0x800e
    addiu   $a0,$a0,14184
    jal     FUN_8003bac8
    addiu   $a1,$zero,144
    lui     $a0,0x800e
    addiu   $a0,$a0,14824
    jal     FUN_8003bac8
    addiu   $a1,$zero,24
    jal     FUN_8002f29c
    addu    $a0,$zero,$zero
    jal     FUN_80028ad0
    nop
    jal     FUN_80029228
    nop
    jal     FUN_8002906c
    nop
    jal     FUN_80028e58
    nop
    jal     FUN_80028c04
    nop
    jal     FUN_80028c4c
    nop
    jal     FUN_80028f94
    nop
    jal     FUN_80028de0
    nop
    jal     FUN_800286bc
    nop
    jal     FUN_8002a108
    nop
    jal     FUN_80029440
    nop
    jal     FUN_80029750
    nop
    jal     FUN_8002a1f0
    nop
    jal     FUN_80029238
    addiu   $a0,$zero,190
    lw      $ra,16($sp)
    nop
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_80027f7c
.size FUN_80027f7c, . - FUN_80027f7c
.section .text.FUN_80028034,"ax",@progbits
.globl FUN_80028034
.type FUN_80028034, @function
.ent FUN_80028034
FUN_80028034:
    addiu   $sp,$sp,-24
    sw      $ra,20($sp)
    jal     FUN_800275b4
    sw      $s0,16($sp)
    jal     FUN_80028c74
    lui     $s0,0x800e
    jal     FUN_800259e8
    addiu   $s0,$s0,14184
    jal     FUN_8002916c
    nop
    jal     FUN_80028740
    nop
    jal     FUN_80025850
    nop
    jal     FUN_80024f60
    nop
    jal     FUN_800358f8
    addiu   $a0,$zero,-1
    lw      $v1,60($s0)
    addiu   $a0,$zero,-1
    subu    $v0,$v0,$v1
    jal     FUN_800358f8
    sw      $v0,64($s0)
    jal     FUN_80029268
    sw      $v0,60($s0)
    jal     FUN_80029324
    nop
    jal     FUN_8002616c
    nop
    jal     FUN_80026538
    nop
    jal     FUN_8002a4c8
    nop
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_80028034
.size FUN_80028034, . - FUN_80028034
.section .text.FUN_800280c8,"ax",@progbits
.globl FUN_800280c8
.type FUN_800280c8, @function
.ent FUN_800280c8
FUN_800280c8:
    addiu   $sp,$sp,-32
    sw      $s1,20($sp)
    addu    $s1,$a0,$zero
    sw      $s0,16($sp)
    addu    $s0,$a1,$zero
    addu    $a0,$s0,$zero
    lui     $v0,0x800b
    sw      $ra,24($sp)
    jal     FUN_80029410
    sw      $a0,-7056($v0)
    sll     $s0,$v0,4
    lui     $v0,0x800e
    addiu   $v0,$v0,14184
    lw      $a0,112($v0)
    addiu   $v1,$zero,1
    beq     $a0,$zero,.L80028128
    sb      $v1,140($v0)
    jal     FUN_80028e80
    nop
    addiu   $a0,$zero,2
    addiu   $a1,$zero,6
    addu    $a2,$zero,$zero
    jal     FUN_80028ef0
    addu    $a3,$a2,$zero
.L80028128:
    addiu   $a0,$zero,1
    addu    $a1,$zero,$zero
    addu    $a2,$s1,$zero
    jal     FUN_80028ef0
    addu    $a3,$s0,$zero
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
.end FUN_800280c8
.size FUN_800280c8, . - FUN_800280c8
.section .text.FUN_80028150,"ax",@progbits
.globl FUN_80028150
.type FUN_80028150, @function
.ent FUN_80028150
FUN_80028150:
    addiu   $sp,$sp,-32
    sw      $s2,24($sp)
    addu    $s2,$a0,$zero
    sw      $s0,16($sp)
    addu    $s0,$a1,$zero
    addu    $a0,$s0,$zero
    lui     $v0,0x800b
    sw      $s1,20($sp)
    addu    $s1,$a2,$zero
    sw      $ra,28($sp)
    jal     FUN_80029410
    sw      $a0,-7056($v0)
    sll     $s0,$v0,4
    lui     $v0,0x800e
    addiu   $v0,$v0,14184
    lw      $a0,112($v0)
    addiu   $v1,$zero,1
    beq     $a0,$zero,.L800281b8
    sb      $v1,140($v0)
    jal     FUN_80028e80
    nop
    addiu   $a0,$zero,2
    addiu   $a1,$zero,6
    addu    $a2,$zero,$zero
    jal     FUN_80028ef0
    addu    $a3,$a2,$zero
.L800281b8:
    addiu   $a0,$zero,1
    addu    $a1,$s1,$zero
    addu    $a2,$s2,$zero
    jal     FUN_80028ef0
    addu    $a3,$s0,$zero
    lw      $ra,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
.end FUN_80028150
.size FUN_80028150, . - FUN_80028150
.section .text.FUN_800281f4,"ax",@progbits
.globl FUN_800281f4
.type FUN_800281f4, @function
.ent FUN_800281f4
FUN_800281f4:
    addiu   $sp,$sp,-24
    addu    $v0,$a0,$zero
    addu    $a0,$a1,$zero
    sw      $ra,16($sp)
    jal     FUN_80028fc8
    addu    $a1,$v0,$zero
    lw      $ra,16($sp)
    addiu   $v0,$zero,2
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_800281f4
.size FUN_800281f4, . - FUN_800281f4
.section .text.FUN_8002821c,"ax",@progbits
.globl FUN_8002821c
.type FUN_8002821c, @function
.ent FUN_8002821c
FUN_8002821c:
    lui     $v0,0x800e
    lbu     $v0,14324($v0)
    nop
    bne     $v0,$zero,.L8002824c
    lui     $v0,0x800e
    lw      $v1,14520($v0)
    lui     $v0,0xd1b7
    ori     $v0,$v0,0x1759
    multu   $v1,$v0
    mfhi    $a0
    jr      $ra
    srl     $v0,$a0,13
.L8002824c:
    jr      $ra
    addu    $v0,$zero,$zero
.end FUN_8002821c
.size FUN_8002821c, . - FUN_8002821c
.section .text.FUN_80028254,"ax",@progbits
.globl FUN_80028254
.type FUN_80028254, @function
.ent FUN_80028254
FUN_80028254:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     FUN_800282e4
    nop
    beq     $v0,$zero,.L80028288
    lui     $v0,0x800e
    lw      $v1,14520($v0)
    lui     $v0,0xd1b7
    ori     $v0,$v0,0x1759
    multu   $v1,$v0
    mfhi    $a0
    j       .L8002828c
    srl     $v0,$a0,13
.L80028288:
    addu    $v0,$zero,$zero
.L8002828c:
    lw      $ra,16($sp)
    nop
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_80028254
.size FUN_80028254, . - FUN_80028254
.section .text.FUN_8002829c,"ax",@progbits
.globl FUN_8002829c
.type FUN_8002829c, @function
.ent FUN_8002829c
FUN_8002829c:
    lui     $v0,0x800e
    addiu   $v0,$v0,14888
    lbu     $v1,272($v0)
    lbu     $v0,273($v0)
    nop
    bne     $v1,$v0,.L800282d8
    lui     $v0,0x800e
    lw      $v1,14296($v0)
    nop
    bne     $v1,$zero,.L800282d8
    addiu   $v0,$v0,14296
    lw      $v1,-112($v0)
    nop
    beq     $v1,$zero,.L800282dc
    addu    $v0,$zero,$zero
.L800282d8:
    addiu   $v0,$zero,1
.L800282dc:
    jr      $ra
    nop
.end FUN_8002829c
.size FUN_8002829c, . - FUN_8002829c
.section .text.FUN_800282e4,"ax",@progbits
.globl FUN_800282e4
.type FUN_800282e4, @function
.ent FUN_800282e4
FUN_800282e4:
    lui     $v0,0x800e
    lbu     $v0,14300($v0)
    nop
    xori    $v0,$v0,1
    jr      $ra
    sltiu   $v0,$v0,1
.end FUN_800282e4
.size FUN_800282e4, . - FUN_800282e4
.section .text.FUN_80028358,"ax",@progbits
.globl FUN_80028358
.type FUN_80028358, @function
.ent FUN_80028358
FUN_80028358:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     FUN_80026940
    andi    $a0,$a0,0xffff
    lw      $ra,16($sp)
    nop
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_80028358
.size FUN_80028358, . - FUN_80028358
.section .text.FUN_80028398,"ax",@progbits
.globl FUN_80028398
.type FUN_80028398, @function
.ent FUN_80028398
FUN_80028398:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lui     $a0,0x800e
    addiu   $a0,$a0,14536
    jal     FUN_8003bac8
    addiu   $a1,$zero,8
    addu    $v1,$zero,$zero
    lui     $v0,0x800e
    addiu   $a0,$v0,14728
    addu    $v0,$v1,$a0
.L800283c0:
    sb      $zero,0($v0)
    addiu   $v1,$v1,1
    sltiu   $v0,$v1,36
    bne     $v0,$zero,.L800283c0
    addu    $v0,$v1,$a0
    jal     FUN_80029ed0
    nop
    jal     FUN_8002a004
    nop
    jal     FUN_80029ef8
    nop
    jal     FUN_8002fcdc
    nop
    addiu   $a0,$zero,16
    lui     $a1,0x800e
    jal     FUN_8002d95c
    addiu   $a1,$a1,14544
    lui     $a0,0x800e
    addiu   $a0,$a0,11312
    addiu   $a1,$zero,16
    jal     FUN_8003175c
    addiu   $a2,$zero,1
    jal     FUN_8003197c
    addiu   $a0,$zero,1
    jal     FUN_80034b1c
    addu    $a0,$zero,$zero
    jal     FUN_8003053c
    nop
    addu    $a0,$zero,$zero
    addu    $a1,$a0,$zero
    jal     FUN_8002fe7c
    addiu   $a2,$zero,1
    jal     FUN_80034b4c
    addiu   $a0,$zero,20
    jal     FUN_80032afc
    addiu   $a0,$zero,3
    jal     FUN_8002ebac
    addiu   $a0,$zero,3
    jal     FUN_80032bac
    nop
    addiu   $a0,$zero,40
    jal     FUN_800320bc
    addu    $a1,$a0,$zero
    jal     FUN_8002f26c
    addu    $a0,$zero,$zero
    jal     FUN_80029cdc
    addiu   $a0,$zero,30
    jal     FUN_80029c40
    addu    $a0,$zero,$zero
    jal     FUN_8002e86c
    addiu   $a0,$zero,1
    jal     FUN_8002e4fc
    addiu   $a0,$zero,1
    lw      $ra,16($sp)
    nop
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_80028398
.size FUN_80028398, . - FUN_80028398
.section .text.FUN_80028588,"ax",@progbits
.globl FUN_80028588
.type FUN_80028588, @function
.ent FUN_80028588
FUN_80028588:
    addiu   $sp,$sp,-24
    lui     $v0,0x800e
    sw      $s0,16($sp)
    addiu   $s0,$v0,14128
    addiu   $v0,$zero,4
    addu    $a0,$zero,$zero
    sw      $ra,20($sp)
    jal     FUN_800356ec
    sb      $v0,36($s0)
    sll     $v0,$v0,16
    beq     $v0,$zero,.L800285f0
    addiu   $v0,$zero,1
    lw      $v0,40($s0)
    lw      $v1,24($s0)
    nop
    sltu    $v0,$v0,$v1
    beq     $v0,$zero,.L800285dc
    addiu   $v0,$zero,5
    sb      $v0,36($s0)
    j       .L800285f0
    addiu   $v0,$zero,2
.L800285dc:
    jal     FUN_8002f29c
    addu    $a0,$zero,$zero
    addiu   $v0,$zero,6
    sb      $v0,36($s0)
    addu    $v0,$zero,$zero
.L800285f0:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_80028588
.size FUN_80028588, . - FUN_80028588
.section .text.FUN_80028600,"ax",@progbits
.globl FUN_80028600
.type FUN_80028600, @function
.ent FUN_80028600
FUN_80028600:
    addu    $a1,$zero,$zero
    lui     $v0,0x800e
    addiu   $a2,$v0,14872
    andi    $v1,$a1,0xffff
.L80028610:
    slti    $v0,$v1,3
    beq     $v0,$zero,.L80028634
    addu    $v0,$zero,$zero
    bgez    $v1,.L8002862c
    sll     $v0,$v1,2
    j       .L80028634
    addu    $v0,$zero,$zero
.L8002862c:
    addu    $v0,$v0,$a2
    lhu     $v0,0($v0)
.L80028634:
    nop
    andi    $v0,$v0,0xffff
    bne     $v0,$a0,.L8002864c
    addiu   $a1,$a1,1
    jr      $ra
    addu    $v0,$zero,$zero
.L8002864c:
    sltiu   $v0,$a1,3
    bne     $v0,$zero,.L80028610
    andi    $v1,$a1,0xffff
    jr      $ra
    addiu   $v0,$zero,-1
.end FUN_80028600
.size FUN_80028600, . - FUN_80028600
.section .text.FUN_800286bc,"ax",@progbits
.globl FUN_800286bc
.type FUN_800286bc, @function
.ent FUN_800286bc
FUN_800286bc:
    addiu   $sp,$sp,-24
    lui     $a0,0x800e
    addiu   $a0,$a0,14304
    sw      $ra,16($sp)
    jal     FUN_8003bac8
    addiu   $a1,$zero,8
    lw      $ra,16($sp)
    nop
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_800286bc
.size FUN_800286bc, . - FUN_800286bc
.section .text.FUN_800286e4,"ax",@progbits
.globl FUN_800286e4
.type FUN_800286e4, @function
.ent FUN_800286e4
FUN_800286e4:
    andi    $a0,$a0,0xffff
    sltiu   $a0,$a0,53
    bnez    $a0,.L800286f8
    addiu   $v0,$zero,2
    addiu   $v0,$zero,1
.L800286f8:
    jr      $ra
    nop
.end FUN_800286e4
.size FUN_800286e4, . - FUN_800286e4
.section .text.FUN_80028740,"ax",@progbits
.globl FUN_80028740
.globl sym_8002422c
.globl sym_800287d0
.type FUN_80028740, @function
.ent FUN_80028740
FUN_80028740:
    lui     $v0,0x800e
    lw      $v1,14184($v0)
    addiu   $sp,$sp,-24
    sltiu   $v0,$v1,9
    beq     $v0,$zero,sym_800287d0
    sw      $ra,16($sp)
    lui     $v0,0x8002
    addiu   $v0,$v0,-21876
    sll     $v1,$v1,2
    addu    $v1,$v1,$v0
    lw      $v0,0($v1)
    nop
    jr      $v0
    nop
    jal     sym_8002422c
    nop
    j       sym_800287d0
    nop
.end FUN_80028740
.size FUN_80028740, . - FUN_80028740
.section .text.FUN_800287e0,"ax",@progbits
.globl FUN_800287e0
.globl sym_800294d4
.globl sym_80028b6c
.globl sym_800289d0
.globl sym_8002ed4c
.globl sym_8002eeec
.type FUN_800287e0, @function
.ent FUN_800287e0
FUN_800287e0:
    addiu   $sp,$sp,-24
    lui     $a0,0x800e
    sw      $s0,16($sp)
    addiu   $s0,$a0,14184
    sw      $ra,20($sp)
    lw      $v1,4($s0)
    addiu   $v0,$zero,1
    beq     $v1,$v0,.L80028830
    nop
    beq     $v1,$zero,.L80028824
    addiu   $v0,$zero,2
    beq     $v1,$v0,.L80028874
    addiu   $v0,$zero,3
    beq     $v1,$v0,.L8002887c
    nop
    j       .L80028884
    nop
.L80028824:
    addiu   $v0,$v1,1
    j       .L80028884
    sw      $v0,4($s0)
.L80028830:
    jal     sym_800294d4
    nop
    jal     sym_80028b6c
    nop
    beq     $v0,$zero,.L80028884
    nop
    jal     sym_800289d0
    nop
    lw      $v0,4($s0)
    addu    $a0,$zero,$zero
    addiu   $v0,$v0,1
    jal     sym_8002ed4c
    sw      $v0,4($s0)
    jal     sym_8002eeec
    addu    $a0,$zero,$zero
    j       .L80028884
    nop
.L80028874:
    j       .L80028884
    sw      $v0,4($s0)
.L8002887c:
    sw      $zero,14184($a0)
    sw      $zero,4($s0)
.L80028884:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_800287e0
.size FUN_800287e0, . - FUN_800287e0
.section .text.FUN_80028894,"ax",@progbits
.globl FUN_80028894
.globl sym_800292e8
.globl sym_80028d3c
.type FUN_80028894, @function
.ent FUN_80028894
FUN_80028894:
    addiu   $sp,$sp,-24
    lui     $v0,0x800e
    addiu   $v0,$v0,14184
    sw      $ra,20($sp)
    sw      $s0,16($sp)
    lw      $a0,16($v0)
    lw      $v0,12($v0)
    nop
    subu    $a0,$a0,$v0
    jal     sym_800292e8
    srl     $a0,$a0,4
    jal     sym_80028d3c
    addu    $s0,$v0,$zero
    sltu    $v0,$s0,$v0
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_80028894
.size FUN_80028894, . - FUN_80028894
.section .text.FUN_800289d0,"ax",@progbits
.globl FUN_800289d0
.globl sym_8002ef5c
.type FUN_800289d0, @function
.ent FUN_800289d0
FUN_800289d0:
    addiu   $sp,$sp,-24
    addu    $a0,$zero,$zero
    sw      $ra,16($sp)
    jal     sym_8002ef5c
    lui     $a1,0xc0
    lw      $ra,16($sp)
    nop
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_800289d0
.size FUN_800289d0, . - FUN_800289d0
.section .text.FUN_800289f4,"ax",@progbits
.globl FUN_800289f4
.globl sym_8002f42c
.type FUN_800289f4, @function
.ent FUN_800289f4
FUN_800289f4:
    addiu   $sp,$sp,-40
    sw      $s2,24($sp)
    lui     $s2,0x800e
    sw      $s0,16($sp)
    addiu   $s0,$s2,11072
    addu    $a0,$s0,$zero
    sw      $s4,32($sp)
    addiu   $s4,$zero,3
    lui     $v0,0x40
    sw      $s1,20($sp)
    addiu   $s1,$zero,8191
    sw      $s3,28($sp)
    addiu   $s3,$zero,10
    sw      $ra,36($sp)
    sw      $s4,4($s0)
    sw      $v0,11072($s2)
    sh      $s1,8($s0)
    sh      $s1,10($s0)
    sh      $s3,8($s0)
    jal     sym_8002f42c
    sh      $zero,10($s0)
    addu    $a0,$s0,$zero
    lui     $v0,0x80
    sw      $s4,4($a0)
    sw      $v0,11072($s2)
    sh      $s1,8($a0)
    sh      $s1,10($a0)
    sh      $zero,8($a0)
    jal     sym_8002f42c
    sh      $s3,10($a0)
    lw      $ra,36($sp)
    lw      $s4,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
.end FUN_800289f4
.size FUN_800289f4, . - FUN_800289f4
.section .text.FUN_80028a8c,"ax",@progbits
.globl FUN_80028a8c
.globl sym_80024e00
.type FUN_80028a8c, @function
.ent FUN_80028a8c
FUN_80028a8c:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_80024e00
    nop
    lw      $ra,16($sp)
    nop
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_80028a8c
.size FUN_80028a8c, . - FUN_80028a8c
.section .text.FUN_80028aac,"ax",@progbits
.globl FUN_80028aac
.globl sym_800358f8
.type FUN_80028aac, @function
.ent FUN_80028aac
FUN_80028aac:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_800358f8
    addiu   $a0,$zero,-1
    lw      $ra,16($sp)
    lui     $v1,0x800e
    sw      $v0,14232($v1)
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_80028aac
.size FUN_80028aac, . - FUN_80028aac
.section .text.FUN_80028ad0,"ax",@progbits
.globl FUN_80028ad0
.globl sym_8003bac8
.type FUN_80028ad0, @function
.ent FUN_80028ad0
FUN_80028ad0:
    addiu   $sp,$sp,-24
    lui     $a0,0x800e
    addiu   $a0,$a0,14768
    sw      $ra,16($sp)
    jal     sym_8003bac8
    addiu   $a1,$zero,48
    lui     $v1,0x800b
    lw      $ra,16($sp)
    addiu   $v0,$zero,1
    sw      $v0,-7048($v1)
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_80028ad0
.size FUN_80028ad0, . - FUN_80028ad0
.section .text.FUN_80028b00,"ax",@progbits
.globl FUN_80028b00
.globl sym_8003f8bc
.globl sym_8003fd44
.globl sym_8003fa20
.type FUN_80028b00, @function
.ent FUN_80028b00
FUN_80028b00:
    addiu   $sp,$sp,-32
    sw      $s1,20($sp)
    addu    $s1,$a0,$zero
    sw      $s0,16($sp)
    lui     $s0,0x800e
    addiu   $s0,$s0,14768
    lui     $a0,0x8002
    sw      $ra,24($sp)
    lw      $v0,12($s0)
    addiu   $a0,$a0,23876
    sw      $a2,4($s0)
    addiu   $v0,$v0,1
    jal     sym_8003f8bc
    sw      $v0,12($s0)
    addu    $a0,$s1,$zero
    addu    $a1,$s0,$zero
    jal     sym_8003fd44
    sw      $a0,8($s0)
    addiu   $a0,$zero,2
    jal     sym_8003fa20
    addu    $a1,$s0,$zero
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    addu    $v0,$zero,$zero
    jr      $ra
    addiu   $sp,$sp,32
.end FUN_80028b00
.size FUN_80028b00, . - FUN_80028b00
.section .text.FUN_80028b6c,"ax",@progbits
.globl FUN_80028b6c
.type FUN_80028b6c, @function
.ent FUN_80028b6c
FUN_80028b6c:
    lui     $v0,0x800b
    lw      $v0,-7048($v0)
    jr      $ra
    nop
.end FUN_80028b6c
.size FUN_80028b6c, . - FUN_80028b6c
.section .text.FUN_80028c04,"ax",@progbits
.globl FUN_80028c04
.type FUN_80028c04, @function
.ent FUN_80028c04
FUN_80028c04:
    lui     $v1,0x800e
    addiu   $v0,$zero,4096
    jr      $ra
    sw      $v0,14240($v1)
.end FUN_80028c04
.size FUN_80028c04, . - FUN_80028c04
.section .text.FUN_80028c4c,"ax",@progbits
.globl FUN_80028c4c
.globl sym_8003bac8
.type FUN_80028c4c, @function
.ent FUN_80028c4c
FUN_80028c4c:
    addiu   $sp,$sp,-24
    lui     $a0,0x800e
    addiu   $a0,$a0,14520
    sw      $ra,16($sp)
    jal     sym_8003bac8
    addiu   $a1,$zero,8
    lw      $ra,16($sp)
    sll     $zero,$zero,0
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_80028c4c
.size FUN_80028c4c, . - FUN_80028c4c
.section .text.FUN_80028c74,"ax",@progbits
.globl FUN_80028c74
.globl sym_800358f8
.globl sym_80028ce4
.globl sym_80028d5c
.type FUN_80028c74, @function
.ent FUN_80028c74
FUN_80028c74:
    addiu   $sp,$sp,-32
    addiu   $a0,$zero,-1
    sw      $ra,24($sp)
    sw      $s1,20($sp)
    jal     sym_800358f8
    sw      $s0,16($sp)
    lui     $v1,0x800e
    lw      $v1,14244($v1)
    jal     sym_80028ce4
    subu    $s1,$v0,$v1
    mult    $s1,$v0
    lui     $s0,0x800e
    lw      $v0,14520($s0)
    mflo    $a1
    addu    $v0,$v0,$a1
    sw      $v0,14520($s0)
    jal     sym_80028d5c
    addiu   $s0,$s0,14520
    mult    $s1,$v0
    lw      $v0,4($s0)
    mflo    $a1
    addu    $v0,$v0,$a1
    sw      $v0,4($s0)
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
.end FUN_80028c74
.size FUN_80028c74, . - FUN_80028c74
.section .text.FUN_80028dec,"ax",@progbits
.globl FUN_80028dec
.globl sym_8002a174
.type FUN_80028dec, @function
.ent FUN_80028dec
FUN_80028dec:
    addiu   $sp,$sp,-24
    lui     $v0,0x800e
    sw      $a0,14296($v0)
    sltiu   $v0,$a0,12
    beq     $v0,$zero,.L80028e48
    sw      $ra,16($sp)
    lui     $v0,0x8002
    addiu   $v0,$v0,-21836
    sll     $v1,$a0,0x2
    addu    $v1,$v1,$v0
    lw      $v0,0($v1)
    sll     $zero,$zero,0
    jr      $v0
    sll     $zero,$zero,0
.L80028e24:
    j       .L80028e40
    addu    $a0,$zero,$zero
.L80028e2c:
    j       .L80028e40
    addiu   $a0,$zero,1
.L80028e34:
    j       .L80028e40
    addiu   $a0,$zero,2
.L80028e3c:
    addiu   $a0,$zero,3
.L80028e40:
    jal     sym_8002a174
    sll     $zero,$zero,0
.L80028e48:
    lw      $ra,16($sp)
    sll     $zero,$zero,0
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_80028dec
.size FUN_80028dec, . - FUN_80028dec
.section .text.FUN_80028e58,"ax",@progbits
.globl FUN_80028e58
.globl sym_8003bac8
.type FUN_80028e58, @function
.ent FUN_80028e58
FUN_80028e58:
    addiu   $sp,$sp,-24
    lui     $a0,0x800e
    addiu   $a0,$a0,14888
    sw      $ra,16($sp)
    jal     sym_8003bac8
    addiu   $a1,$zero,276
    lw      $ra,16($sp)
    sll     $zero,$zero,0
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_80028e58
.size FUN_80028e58, . - FUN_80028e58
.section .text.FUN_80028e80,"ax",@progbits
.globl FUN_80028e80
.globl sym_8003bac8
.type FUN_80028e80, @function
.ent FUN_80028e80
FUN_80028e80:
    addiu   $sp,$sp,-40
    sw      $s0,32($sp)
    lui     $s0,0x800e
    addiu   $s0,$s0,14888
    addu    $a0,$s0,$zero
    sw      $ra,36($sp)
    lw      $v1,256($s0)
    lw      $a2,260($s0)
    lw      $a3,264($s0)
    lw      $t0,268($s0)
    sw      $v1,16($sp)
    sw      $a2,20($sp)
    sw      $a3,24($sp)
    sw      $t0,28($sp)
    jal     sym_8003bac8
    addiu   $a1,$zero,276
    lw      $v1,16($sp)
    lw      $a2,20($sp)
    lw      $a3,24($sp)
    lw      $t0,28($sp)
    sw      $v1,256($s0)
    sw      $a2,260($s0)
    sw      $a3,264($s0)
    sw      $t0,268($s0)
    lw      $ra,36($sp)
    lw      $s0,32($sp)
    jr      $ra
    addiu   $sp,$sp,40
.end FUN_80028e80
.size FUN_80028e80, . - FUN_80028e80
.section .text.FUN_80028ef0,"ax",@progbits
.globl FUN_80028ef0
.type FUN_80028ef0, @function
.ent FUN_80028ef0
FUN_80028ef0:
    lui     $v0,0x800e
    addiu   $t1,$v0,14888
    lbu     $t0,273($t1)
    sll     $zero,$zero,0
    addu    $v1,$t0,$zero
    addiu   $t0,$t0,1
    sltiu   $v0,$t0,16
    bne     $v0,$zero,.L80028f18
    sll     $zero,$zero,0
    addu    $t0,$zero,$zero
.L80028f18:
    beq     $t0,$v1,.L80028f6c
    sll     $v0,$v1,0x4
    addu    $v0,$v0,$t1
    sw      $a0,0($v0)
    lbu     $v0,273($t1)
    sll     $zero,$zero,0
    sll     $v0,$v0,0x4
    addu    $v0,$v0,$t1
    sw      $a1,4($v0)
    lbu     $v0,273($t1)
    sll     $zero,$zero,0
    sll     $v0,$v0,0x4
    addu    $v0,$v0,$t1
    sw      $a2,8($v0)
    lbu     $v1,273($t1)
    addu    $v0,$zero,$zero
    sll     $v1,$v1,0x4
    addu    $v1,$v1,$t1
    sw      $a3,12($v1)
    jr      $ra
    sb      $t0,273($t1)
.L80028f6c:
    jr      $ra
    addiu   $v0,$zero,-1
.end FUN_80028ef0
.size FUN_80028ef0, . - FUN_80028ef0
.section .text.FUN_80028f74,"ax",@progbits
.globl FUN_80028f74
.type FUN_80028f74, @function
.ent FUN_80028f74
FUN_80028f74:
    lui     $v1,0x800e
    addiu   $v1,$v1,14888
    lbu     $v0,272($v1)
    lbu     $v1,273($v1)
    sll     $zero,$zero,0
    xor     $v0,$v0,$v1
    jr      $ra
    sltu    $v0,$zero,$v0
.end FUN_80028f74
.size FUN_80028f74, . - FUN_80028f74
.section .text.FUN_80028f94,"ax",@progbits
.globl FUN_80028f94
.globl sym_8003bac8
.type FUN_80028f94, @function
.ent FUN_80028f94
FUN_80028f94:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    lui     $s0,0x800e
    addiu   $s0,$s0,14252
    addu    $a0,$s0,$zero
    sw      $ra,20($sp)
    jal     sym_8003bac8
    addiu   $a1,$zero,20
    sw      $zero,16($s0)
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_80028f94
.size FUN_80028f94, . - FUN_80028f94
.section .text.FUN_80028fc8,"ax",@progbits
.globl FUN_80028fc8
.globl sym_800358f8
.type FUN_80028fc8, @function
.ent FUN_80028fc8
FUN_80028fc8:
    addiu   $sp,$sp,-24
    lui     $a2,0x800e
    sw      $s0,16($sp)
    addiu   $s0,$a2,14252
    sw      $ra,20($sp)
    lw      $v1,-12($s0)
    sll     $zero,$zero,0
    beq     $v1,$a0,.L8002905c
    sll     $zero,$zero,0
    bne     $a1,$zero,.L80028ff8
    sltu    $v0,$v1,$a0
    addiu   $a1,$zero,1
.L80028ff8:
    beq     $v0,$zero,.L80029010
    subu    $v0,$a0,$v1
    divu    $zero,$v0,$a1
    mflo    $v0
    j       .L80029020
    addiu   $v1,$zero,2
.L80029010:
    subu    $v0,$v1,$a0
    divu    $zero,$v0,$a1
    mflo    $v0
    addiu   $v1,$zero,1
.L80029020:
    sw      $v1,16($s0)
    sw      $v0,14252($a2)
    lw      $v0,0($s0)
    sll     $zero,$zero,0
    bne     $v0,$zero,.L80029044
    lui     $v0,0x800e
    addiu   $v0,$zero,16
    sw      $v0,0($s0)
    lui     $v0,0x800e
.L80029044:
    lw      $v0,14240($v0)
    sw      $a0,12($s0)
    addiu   $a0,$zero,-1
    jal     sym_800358f8
    sw      $v0,8($s0)
    sw      $v0,4($s0)
.L8002905c:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_80028fc8
.size FUN_80028fc8, . - FUN_80028fc8
.section .text.FUN_8002906c,"ax",@progbits
.globl FUN_8002906c
.type FUN_8002906c, @function
.ent FUN_8002906c
FUN_8002906c:
    lui     $v0,0x800e
    addiu   $v0,$v0,14184
    addiu   $v1,$zero,16129
    sw      $v1,88($v0)
    jr      $ra
    sb      $zero,108($v0)
.end FUN_8002906c
.size FUN_8002906c, . - FUN_8002906c
.section .text.FUN_80029084,"ax",@progbits
.globl FUN_80029084
.globl sym_80024e00
.globl sym_800358f8
.type FUN_80029084, @function
.ent FUN_80029084
FUN_80029084:
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    sw      $s2,24($sp)
    addu    $s2,$a1,$zero
    lui     $v0,0x800e
    sw      $s1,20($sp)
    addiu   $s1,$v0,14184
    sltiu   $v0,$s0,127
    bne     $v0,$zero,.L800290b4
    sw      $ra,28($sp)
    addiu   $s0,$zero,127
.L800290b4:
    sll     $v0,$s0,0x7
    lw      $v1,88($s1)
    subu    $s0,$v0,$s0
    beq     $s0,$v1,.L80029144
    sll     $zero,$zero,0
    bne     $s2,$zero,.L800290e4
    sll     $zero,$zero,0
    sw      $s0,88($s1)
    jal     sym_80024e00
    sb      $zero,108($s1)
    j       .L80029144
    sll     $zero,$zero,0
.L800290e4:
    jal     sym_800358f8
    addiu   $a0,$zero,-1
    lw      $v1,88($s1)
    sw      $v0,96($s1)
    sw      $s0,104($s1)
    sltu    $v0,$v1,$s0
    beq     $v0,$zero,.L80029118
    sw      $v1,100($s1)
    subu    $v0,$s0,$v1
    divu    $zero,$v0,$s2
    mflo    $v0
    j       .L80029128
    addiu   $v1,$zero,1
.L80029118:
    subu    $v0,$v1,$s0
    divu    $zero,$v0,$s2
    mflo    $v0
    addiu   $v1,$zero,2
.L80029128:
    sb      $v1,108($s1)
    sw      $v0,92($s1)
    lw      $v0,92($s1)
    sll     $zero,$zero,0
    bne     $v0,$zero,.L80029144
    addiu   $v0,$zero,1
    sw      $v0,92($s1)
.L80029144:
    lw      $ra,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
.end FUN_80029084
.size FUN_80029084, . - FUN_80029084
.section .text.FUN_8002915c,"ax",@progbits
.globl FUN_8002915c
.type FUN_8002915c, @function
.ent FUN_8002915c
FUN_8002915c:
    lui     $v0,0x800e
    lw      $v0,14272($v0)
    jr      $ra
    sll     $zero,$zero,0
.end FUN_8002915c
.size FUN_8002915c, . - FUN_8002915c
.section .text.FUN_8002916c,"ax",@progbits
.globl FUN_8002916c
.globl sym_80024e00
.type FUN_8002916c, @function
.ent FUN_8002916c
FUN_8002916c:
    addiu   $sp,$sp,-24
    lui     $v0,0x800e
    addiu   $a0,$v0,14184
    sw      $ra,16($sp)
    lbu     $v1,108($a0)
    addiu   $v0,$zero,1
    beq     $v1,$v0,.L800291a4
    slti    $v0,$v1,2
    bne     $v0,$zero,.L80029218
    addiu   $v0,$zero,2
    beq     $v1,$v0,.L800291cc
    sll     $zero,$zero,0
    j       .L80029218
    sll     $zero,$zero,0
.L800291a4:
    lw      $v0,88($a0)
    lw      $v1,92($a0)
    lw      $a1,104($a0)
    addu    $v0,$v0,$v1
    sw      $v0,88($a0)
    sltu    $v0,$a1,$v0
    beq     $v0,$zero,.L80029210
    sll     $zero,$zero,0
    j       .L8002920c
    sw      $a1,88($a0)
.L800291cc:
    lw      $v1,88($a0)
    lw      $v0,92($a0)
    sll     $zero,$zero,0
    subu    $v1,$v1,$v0
    bgez    $v1,.L800291ec
    sll     $zero,$zero,0
    j       .L800291f0
    sw      $zero,88($a0)
.L800291ec:
    sw      $v1,88($a0)
.L800291f0:
    lw      $v0,88($a0)
    lw      $v1,104($a0)
    sll     $zero,$zero,0
    sltu    $v0,$v0,$v1
    beq     $v0,$zero,.L80029210
    sll     $zero,$zero,0
    sw      $v1,88($a0)
.L8002920c:
    sb      $zero,108($a0)
.L80029210:
    jal     sym_80024e00
    sll     $zero,$zero,0
.L80029218:
    lw      $ra,16($sp)
    sll     $zero,$zero,0
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_8002916c
.size FUN_8002916c, . - FUN_8002916c
.section .text.FUN_80029228,"ax",@progbits
.globl FUN_80029228
.type FUN_80029228, @function
.ent FUN_80029228
FUN_80029228:
    lui     $v1,0x800e
    addiu   $v0,$zero,255
    jr      $ra
    sw      $v0,14528($v1)
.end FUN_80029228
.size FUN_80029228, . - FUN_80029228
.section .text.FUN_80029238,"ax",@progbits
.globl FUN_80029238
.globl sym_80024e00
.type FUN_80029238, @function
.ent FUN_80029238
FUN_80029238:
    addiu   $sp,$sp,-24
    sltiu   $v0,$a0,255
    bne     $v0,$zero,.L8002924c
    sw      $ra,16($sp)
    addiu   $a0,$zero,255
.L8002924c:
    lui     $v0,0x800e
    jal     sym_80024e00
    sw      $a0,14528($v0)
    lw      $ra,16($sp)
    sll     $zero,$zero,0
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_80029238
.size FUN_80029238, . - FUN_80029238
.section .text.FUN_80029268,"ax",@progbits
.globl FUN_80029268
.globl sym_8003f738
.globl sym_80025c1c
.type FUN_80029268, @function
.ent FUN_80029268
FUN_80029268:
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    lui     $s0,0x800b
    lw      $v0,-7060($s0)
    sw      $ra,24($sp)
    beq     $v0,$zero,.L800292d4
    sw      $s1,20($sp)
    jal     sym_8003f738
    sll     $zero,$zero,0
    andi    $v0,$v0,0x10
    beq     $v0,$zero,.L800292a4
    lui     $v1,0x800b
    addiu   $v0,$zero,1
    j       .L800292d4
    sw      $v0,-7052($v1)
.L800292a4:
    lui     $s1,0x800b
    lw      $v1,-7052($s1)
    addiu   $v0,$zero,1
    bne     $v1,$v0,.L800292c8
    addiu   $a0,$zero,3
    jal     sym_80025c1c
    sw      $zero,-7060($s0)
    j       .L800292d4
    sw      $zero,-7052($s1)
.L800292c8:
    sw      $zero,-7060($s0)
    jal     sym_80025c1c
    addiu   $a0,$zero,3
.L800292d4:
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
.end FUN_80029268
.size FUN_80029268, . - FUN_80029268
.section .text.FUN_800292e8,"ax",@progbits
.globl FUN_800292e8
.type FUN_800292e8, @function
.ent FUN_800292e8
FUN_800292e8:
    lui     $v1,0x51eb
    ori     $v1,$v1,0x851f
    sll     $v0,$a0,0x2
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x5
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x1
    multu   $v0,$v1
    mfhi    $a1
    jr      $ra
    srl     $v0,$a1,0x5
.end FUN_800292e8
.size FUN_800292e8, . - FUN_800292e8
.section .text.FUN_80029324,"ax",@progbits
.globl FUN_80029324
.globl sym_8003fa20
.type FUN_80029324, @function
.ent FUN_80029324
FUN_80029324:
    addiu   $sp,$sp,-24
    lui     $v0,0x800e
    addiu   $a0,$v0,14768
    sw      $ra,16($sp)
    lw      $v1,12($a0)
    addiu   $v0,$zero,4
    bne     $v1,$v0,.L80029380
    sll     $zero,$zero,0
    lw      $v0,40($a0)
    sll     $zero,$zero,0
    bne     $v0,$zero,.L80029380
    sll     $zero,$zero,0
    lw      $v0,36($a0)
    sll     $zero,$zero,0
    addiu   $v0,$v0,1
    sw      $v0,36($a0)
    lw      $v0,36($a0)
    sll     $zero,$zero,0
    slti    $v0,$v0,181
    bne     $v0,$zero,.L80029380
    addiu   $a0,$zero,9
    jal     sym_8003fa20
    addu    $a1,$zero,$zero
.L80029380:
    lw      $ra,16($sp)
    sll     $zero,$zero,0
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_80029324
.size FUN_80029324, . - FUN_80029324
.section .text.FUN_80029390,"ax",@progbits
.globl FUN_80029390
.type FUN_80029390, @function
.ent FUN_80029390
FUN_80029390:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    lui     $s0,0x800e
    addiu   $s0,$s0,14768
    lui     $v1,0x800b
    addiu   $v0,$zero,1
    sw      $ra,20($sp)
    sw      $zero,16($s0)
    sw      $v0,-7048($v1)
    lw      $v1,16($s0)
    lui     $v0,0x800b
    sw      $v1,-14192($v0)
    lw      $v1,-14192($v0)
    lui     $v0,0x800b
    sw      $v1,-14196($v0)
    jal     0x80029788
    sll     $zero,$zero,0
    jal     0x800294d4
    sll     $zero,$zero,0
    jal     0x8003f8bc
    addu    $a0,$zero,$zero
    jal     0x8003f8d0
    addu    $a0,$zero,$zero
    addiu   $a0,$zero,9
    jal     0x8003fa20
    addu    $a1,$zero,$zero
    addiu   $v0,$zero,5
    sw      $v0,12($s0)
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_80029390
.size FUN_80029390, . - FUN_80029390
.section .text.FUN_80029410,"ax",@progbits
.globl FUN_80029410
.type FUN_80029410, @function
.ent FUN_80029410
FUN_80029410:
    sll     $v0,$a0,0x1
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x3
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    srl     $v0,$v0,0x1
    lui     $v1,0xd722
    ori     $v1,$v1,0xfb11
    multu   $v0,$v1
    mfhi    $a1
    jr      $ra
    srl     $v0,$a1,0xb
.end FUN_80029410
.size FUN_80029410, . - FUN_80029410
.section .text.FUN_80029440,"ax",@progbits
.globl FUN_80029440
.type FUN_80029440, @function
.ent FUN_80029440
FUN_80029440:
    addiu   $sp,$sp,-24
    lui     $a0,0x800e
    addiu   $a0,$a0,14680
    sw      $ra,16($sp)
    jal     0x8003bac8
    addiu   $a1,$zero,48
    addiu   $a0,$zero,4
    jal     0x80029474
    addiu   $a1,$zero,16
    lw      $ra,16($sp)
    sll     $zero,$zero,0
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_80029440
.size FUN_80029440, . - FUN_80029440
.section .text.FUN_80029474,"ax",@progbits
.globl FUN_80029474
.type FUN_80029474, @function
.ent FUN_80029474
FUN_80029474:
    lui     $v0,0x800e
    jr      $ra
    sb      $a0,14714($v0)
.end FUN_80029474
.size FUN_80029474, . - FUN_80029474
.section .text.FUN_80029480,"ax",@progbits
.globl FUN_80029480
.type FUN_80029480, @function
.ent FUN_80029480
FUN_80029480:
    addiu   $sp,$sp,-24
    lui     $v0,0x800e
    addiu   $v1,$v0,14680
    sw      $ra,16($sp)
    lbu     $v0,32($v1)
    sll     $zero,$zero,0
    beq     $v0,$zero,.L800294b0
    addiu   $v0,$zero,1
    jal     0x800294f8
    sll     $zero,$zero,0
    j       .L800294c4
    sll     $zero,$zero,0
.L800294b0:
    sb      $v0,32($v1)
    sb      $zero,33($v1)
    sw      $a0,36($v1)
    sw      $a1,40($v1)
    sw      $zero,44($v1)
.L800294c4:
    lw      $ra,16($sp)
    sll     $zero,$zero,0
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_80029480
.size FUN_80029480, . - FUN_80029480
.section .text.FUN_800294d4,"ax",@progbits
.globl FUN_800294d4
.type FUN_800294d4, @function
.ent FUN_800294d4
FUN_800294d4:
    addiu   $sp,$sp,-24
    lui     $v0,0x800e
    sw      $ra,16($sp)
    jal     0x800294f8
    sb      $zero,14712($v0)
    lw      $ra,16($sp)
    sll     $zero,$zero,0
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_800294d4
.size FUN_800294d4, . - FUN_800294d4
.section .text.FUN_800294f8,"ax",@progbits
.globl FUN_800294f8
.type FUN_800294f8, @function
.ent FUN_800294f8
FUN_800294f8:
    addu    $a0,$zero,$zero
    lui     $v0,0x800e
    addiu   $v1,$v0,14680
.L80029504:
    sb      $zero,0($v1)
    addiu   $a0,$a0,1
    sltiu   $v0,$a0,4
    bne     $v0,$zero,.L80029504
    addiu   $v1,$v1,8
    jr      $ra
    sll     $zero,$zero,0
.end FUN_800294f8
.size FUN_800294f8, . - FUN_800294f8
.section .text.FUN_80029520,"ax",@progbits
.globl FUN_80029520
.type FUN_80029520, @function
.ent FUN_80029520
FUN_80029520:
    lui     $v0,0x800e
    addiu   $a1,$v0,14680
    lbu     $v1,34($a1)
    sll     $zero,$zero,0
    beq     $v1,$zero,.L800295a4
    addu    $a2,$zero,$zero
    lui     $v0,0x8002
    addiu   $t1,$v0,-21788
    addu    $t0,$v1,$zero
    lui     $v0,0x800b
    addiu   $a3,$v0,-7040
.L8002954c:
    lbu     $v1,0($a1)
    sll     $zero,$zero,0
    sltiu   $v0,$v1,5
    beq     $v0,$zero,.L80029590
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$t1
    lw      $v0,0($v0)
    sll     $zero,$zero,0
    jr      $v0
    sll     $zero,$zero,0
.L80029574:
    lw      $v0,4($a1)
    sll     $zero,$zero,0
    bne     $v0,$a0,.L80029590
    sll     $zero,$zero,0
    lw      $v0,0($a3)
    jr      $ra
    sll     $zero,$zero,0
.L80029590:
    addiu   $a3,$a3,4
    addiu   $a2,$a2,1
    sltu    $v0,$a2,$t0
    bne     $v0,$zero,.L8002954c
    addiu   $a1,$a1,8
.L800295a4:
    jr      $ra
    addu    $v0,$zero,$zero
.end FUN_80029520
.size FUN_80029520, . - FUN_80029520
.section .text.FUN_800295ac,"ax",@progbits
.globl FUN_800295ac
.type FUN_800295ac, @function
.ent FUN_800295ac
FUN_800295ac:
    lui     $v0,0x800e
    addiu   $t0,$v0,14680
    lbu     $v0,34($t0)
    sll     $zero,$zero,0
    beq     $v0,$zero,.L8002963c
    addu    $a2,$zero,$zero
    lui     $v0,0x8002
    addiu   $t2,$v0,-21764
    addiu   $t1,$zero,3
    lui     $v0,0x800b
    addiu   $a3,$v0,-7040
    addu    $a1,$t0,$zero
.L800295dc:
    lbu     $v1,0($a1)
    sll     $zero,$zero,0
    sltiu   $v0,$v1,5
    beq     $v0,$zero,.L80029624
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$t2
    lw      $v0,0($v0)
    sll     $zero,$zero,0
    jr      $v0
    sll     $zero,$zero,0
.L80029604:
    lw      $v0,4($a1)
    sll     $zero,$zero,0
    bne     $v0,$a0,.L80029624
    sll     $zero,$zero,0
    sb      $t1,0($a1)
    lw      $v0,0($a3)
    jr      $ra
    sll     $zero,$zero,0
.L80029624:
    addiu   $a3,$a3,4
    lbu     $v0,34($t0)
    addiu   $a2,$a2,1
    sltu    $v0,$a2,$v0
    bne     $v0,$zero,.L800295dc
    addiu   $a1,$a1,8
.L8002963c:
    jr      $ra
    addu    $v0,$zero,$zero
.end FUN_800295ac
.size FUN_800295ac, . - FUN_800295ac
.section .text.FUN_80029644,"ax",@progbits
.globl FUN_80029644
.type FUN_80029644, @function
.ent FUN_80029644
FUN_80029644:
    lui     $v0,0x800e
    addiu   $a2,$v0,14680
    lbu     $v0,34($a2)
    sll     $zero,$zero,0
    beq     $v0,$zero,.L800296a4
    addu    $a1,$zero,$zero
    addiu   $t0,$zero,3
    addiu   $a3,$zero,4
    addu    $v1,$a2,$zero
.L80029668:
    lbu     $v0,0($v1)
    sll     $zero,$zero,0
    bne     $v0,$t0,.L80029690
    sll     $zero,$zero,0
    lw      $v0,4($v1)
    sll     $zero,$zero,0
    bne     $v0,$a0,.L80029690
    addu    $v0,$zero,$zero
    jr      $ra
    sb      $a3,0($v1)
.L80029690:
    lbu     $v0,34($a2)
    addiu   $a1,$a1,1
    sltu    $v0,$a1,$v0
    bne     $v0,$zero,.L80029668
    addiu   $v1,$v1,8
.L800296a4:
    jr      $ra
    addu    $v0,$zero,$zero
.end FUN_80029644
.size FUN_80029644, . - FUN_80029644
.section .text.FUN_80029750,"ax",@progbits
.globl FUN_80029750
.type FUN_80029750, @function
.ent FUN_80029750
FUN_80029750:
    addiu   $sp,$sp,-24
    lui     $a0,0x800e
    addiu   $a0,$a0,14328
    sw      $ra,16($sp)
    jal     0x8003bac8
    addiu   $a1,$zero,28
    lw      $ra,16($sp)
    sll     $zero,$zero,0
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_80029750
.size FUN_80029750, . - FUN_80029750
.section .text.FUN_80029788,"ax",@progbits
.globl FUN_80029788
.type FUN_80029788, @function
.ent FUN_80029788
FUN_80029788:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     0x800297c4
    sll     $zero,$zero,0
    lui     $v0,0x800e
    addiu   $v1,$v0,14328
    sh      $zero,2($v1)
    sh      $zero,22($v1)
    sb      $zero,1($v1)
    lw      $ra,16($sp)
    sb      $zero,14328($v0)
    lui     $v0,0x800e
    sb      $zero,14713($v0)
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_80029788
.size FUN_80029788, . - FUN_80029788
.section .text.FUN_800297c4,"ax",@progbits
.globl FUN_800297c4
.type FUN_800297c4, @function
.ent FUN_800297c4
FUN_800297c4:
    addiu   $sp,$sp,-96
    addiu   $a0,$sp,16
    sw      $s1,84($sp)
    addiu   $s1,$zero,16384
    lui     $v0,0x10
    sw      $s0,80($sp)
    addiu   $s0,$zero,3
    sw      $ra,88($sp)
    sw      $s1,20($sp)
    sw      $v0,16($sp)
    jal     0x8002f42c
    sh      $s0,70($sp)
    addiu   $a0,$sp,16
    lui     $v0,0x20
    sw      $s1,20($sp)
    sw      $v0,16($sp)
    jal     0x8002f42c
    sh      $s0,70($sp)
    addu    $a0,$zero,$zero
    jal     0x8002ef5c
    lui     $a1,0x30
    lw      $ra,88($sp)
    lw      $s1,84($sp)
    lw      $s0,80($sp)
    jr      $ra
    addiu   $sp,$sp,96
.end FUN_800297c4
.size FUN_800297c4, . - FUN_800297c4
