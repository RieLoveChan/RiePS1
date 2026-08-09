    .set noreorder
    .set noat
    .set nomacro

    .section .text.FUN_80021dfc,"ax",@progbits
    .globl FUN_80021dfc
    .type FUN_80021dfc, @function
    .ent FUN_80021dfc
FUN_80021dfc:
    addiu $sp,$sp,-32
    sw $ra,24($sp)
    sw $s1,20($sp)
    jal FUN_80035b08
    sw $s0,16($sp)
    jal FUN_8003f5e8
    lui $s0,0x800b
    lw $a0,-0x3714($s0)
    jal bzero
    li $a1,0xd0
    lui $a0,0x800e
    addiu $a0,$a0,0x3b78
    jal bzero
    li $a1,0x9c
    lw $v0,-0x3714($s0)
    li $s1,1
    jal FUN_8002c590
    sb $s1,0x74($v0)
    jal FUN_8009af28
    nop
    jal FUN_8002d848
    nop
    lui $a0,0x800e
    addiu $a0,$a0,0x2a68
    jal FUN_8003ea08
    addiu $a1,$a0,0x34
    jal FUN_8003c568
    nop
    lui $v0,0x800b
    lui $v1,0x800e
    lw $a0,-0x3710($v0)
    addiu $v0,$v0,-0x3710
    sw $a0,0x2ae0($v1)
    lw $v0,4($v0)
    addiu $v1,$v1,0x2ae0
    jal FUN_800225e4
    sw $v0,4($v1)
    beq $v0,$zero,.L80021ea4
    nop
    lw $v0,-0x3714($s0)
    j .L80021eb0
    sb $s1,0x98($v0)
.L80021ea4:
    lw $v0,-0x3714($s0)
    nop
    sb $zero,0x98($v0)
.L80021eb0:
    jal FUN_80022604
    nop
    lui $v1,0x800b
    lw $v1,-0x3714($v1)
    addu $a0,$zero,$zero
    jal ResetCallback
    sb $v0,0x1e($v1)
    jal FUN_80022570
    nop
    jal FUN_80021f00
    nop
    jal FUN_80042df8
    nop
    jal FUN_8002a8b0
    nop
    lw $ra,24($sp)
    lw $s1,20($sp)
    lw $s0,16($sp)
    jr $ra
    addiu $sp,$sp,32
    .end FUN_80021dfc

    .section .text.FUN_80021f00,"ax",@progbits
    .globl FUN_80021f00
    .type FUN_80021f00, @function
    .ent FUN_80021f00
FUN_80021f00:
    addiu $sp,$sp,-32
    sw $ra,24($sp)
    jal GsInitGraph
    addu $a0,$zero,$zero
    lui $a2,0x800b
    lw $v1,-0x3718($a2)
    li $v0,0x140
    sh $v0,0xc($v1)
    li $v0,0xf0
    sh $v0,0xe($v1)
    li $v0,4
    sh $v0,0x10($v1)
    lui $v0,0x800b
    lw $a0,-0x3714($v0)
    li $a1,1
    sh $a1,0x12($v1)
    lbu $v0,1($a0)
    nop
    bne $v0,$zero,.L80021f74
    nop
    sb $a1,1($a0)
    lw $v0,-0x3718($a2)
    nop
    lhu $a0,0xc($v0)
    lhu $a1,0xe($v0)
    lhu $a2,0x10($v0)
    lhu $a3,0x12($v0)
    jal GsInitGraph2
    sw $zero,16($sp)
.L80021f74:
    jal FUN_8002200c
    nop
    jal FUN_80022208
    nop
    addu $a2,$zero,$zero
    li $a3,8
    lui $v0,0x800b
    addiu $a0,$v0,-0x3708
    lui $v0,0x800b
    addiu $a1,$v0,-0x3700
.L80021f9c:
    lw $v0,0($a0)
    nop
    sw $a3,0($v0)
    lw $v1,0($a0)
    lw $v0,0($a1)
    nop
    sw $v0,4($v1)
    lw $v0,0($a0)
    nop
    sw $zero,8($v0)
    lw $v0,0($a0)
    addiu $a2,$a2,1
    sw $zero,12($v0)
    lw $v1,0($a0)
    addiu $a1,$a1,4
    lw $v0,4($v1)
    nop
    addiu $v0,$v0,0x3fc
    sw $v0,16($v1)
    slti $v0,$a2,2
    bne $v0,$zero,.L80021f9c
    addiu $a0,$a0,4
    jal FUN_8002abf0
    nop
    lw $ra,24($sp)
    nop
    jr $ra
    addiu $sp,$sp,32
    .end FUN_80021f00

    .section .text.FUN_8002200c,"ax",@progbits
    .globl FUN_8002200c
    .type FUN_8002200c, @function
    .ent FUN_8002200c
FUN_8002200c:
    addiu $sp,$sp,-56
    addu $a0,$zero,$zero
    addu $a1,$a0,$zero
    addu $a2,$a0,$zero
    sw $s5,44($sp)
    lui $s5,0x800b
    lw $v0,-0x3718($s5)
    sw $ra,48($sp)
    sw $s4,40($sp)
    sw $s3,36($sp)
    sw $s2,32($sp)
    sw $s1,28($sp)
    sw $s0,24($sp)
    lhu $s3,0xc($v0)
    jal FUN_80037868
    li $a3,0xf0
    lui $s0,0x800e
    addiu $s0,$s0,0x2980
    addu $a0,$s0,$zero
    addu $a1,$zero,$zero
    addu $a2,$a1,$zero
    li $s2,0xf0
    sw $s2,16($sp)
    jal FUN_8003b118
    addu $a3,$s3,$zero
    addiu $s4,$s0,0x5c
    addu $a0,$s4,$zero
    addu $a1,$zero,$zero
    addu $a2,$s2,$zero
    addu $a3,$s3,$zero
    jal FUN_8003b118
    sw $s2,16($sp)
    lui $s1,0x800e
    addiu $s1,$s1,0x2a38
    addu $a0,$s1,$zero
    addu $a1,$zero,$zero
    addu $a2,$s2,$zero
    addu $a3,$s3,$zero
    jal FUN_8003b1d8
    sw $s2,16($sp)
    addiu $a0,$s1,20
    addu $a1,$zero,$zero
    addu $a2,$a1,$zero
    addu $a3,$s3,$zero
    jal FUN_8003b1d8
    sw $s2,16($sp)
    lw $v1,-0x3718($s5)
    li $v0,120
    sh $v0,10($s0)
    li $v0,360
    sh $v0,102($s0)
    li $v0,1
    sb $v0,116($s0)
    sb $v0,24($s0)
    sb $zero,27($s0)
    sb $zero,26($s0)
    sb $zero,25($s0)
    sb $zero,27($s4)
    sb $zero,26($s4)
    sb $zero,25($s4)
    lhu $v0,0xc($v1)
    sb $zero,115($s0)
    sb $zero,23($s0)
    srl $v0,$v0,1
    sh $v0,100($s0)
    sh $v0,8($s0)
    lw $ra,48($sp)
    lw $s5,44($sp)
    lw $s4,40($sp)
    lw $s3,36($sp)
    lw $s2,32($sp)
    lw $s1,28($sp)
    lw $s0,24($sp)
    jr $ra
    addiu $sp,$sp,56
    .end FUN_8002200c

    .section .text.FUN_80022208,"ax",@progbits
    .globl FUN_80022208
    .type FUN_80022208, @function
    .ent FUN_80022208
FUN_80022208:
    addiu $sp,$sp,-24
    sw $ra,16($sp)
    jal FUN_80037908
    nop
    jal FUN_800365c0
    nop
    addu $a0,$zero,$zero
    jal FUN_80036648
    addu $a1,$a0,$zero
    jal FUN_80036668
    li $a0,0x1000
    lw $ra,16($sp)
    nop
    jr $ra
    addiu $sp,$sp,24
    .end FUN_80022208

    .section .text.FUN_80022570,"ax",@progbits
    .globl FUN_80022570
    .type FUN_80022570, @function
    .ent FUN_80022570
FUN_80022570:
    addiu $sp,$sp,-32
    sw $s0,24($sp)
    addu $s0,$zero,$zero
    li $v0,0x200
    sh $v0,20($sp)
    li $v0,0x100
    sw $ra,28($sp)
    sh $v0,22($sp)
    addiu $a0,$sp,16
.L80022594:
    andi $v0,$s0,1
    sll $v0,$v0,9
    sh $v0,16($sp)
    sra $v0,$s0,1
    sll $v0,$v0,8
    addu $a1,$zero,$zero
    addu $a2,$a1,$zero
    addu $a3,$a1,$zero
    jal SetDefDispEnv
    sh $v0,18($sp)
    addiu $s0,$s0,1
    slti $v0,$s0,4
    bne $v0,$zero,.L80022594
    addiu $a0,$sp,16
    jal PutDispEnv
    addu $a0,$zero,$zero
    lw $ra,28($sp)
    lw $s0,24($sp)
    jr $ra
    addiu $sp,$sp,32
    .end FUN_80022570

    .section .text.FUN_800225e4,"ax",@progbits
    .globl FUN_800225e4
    .type FUN_800225e4, @function
    .ent FUN_800225e4
FUN_800225e4:
    lui $v0,0x800b
    lw $v0,-0x375c($v0)
    nop
    lw $v0,0($v0)
    nop
    nor $v0,$zero,$v0
    jr $ra
    sltu $v0,$zero,$v0
    .end FUN_800225e4

    .section .text.FUN_80022604,"ax",@progbits
    .globl FUN_80022604
    .type FUN_80022604, @function
    .ent FUN_80022604
FUN_80022604:
    lui $v0,0x800b
    lui $v1,0x800b
    lw $a0,-0x3758($v0)
    lw $v1,-0x3714($v1)
    lw $v0,0($a0)
    nop
    sw $v0,0xc0($v1)
    lw $v0,0($a0)
    lui $v1,0xffff
    and $v0,$v0,$v1
    lui $v1,0x2000
    xor $v0,$v0,$v1
    jr $ra
    sltiu $v0,$v0,1
    .end FUN_80022604

    .section .text.FUN_8002263c,"ax",@progbits
    .globl FUN_8002263c
    .type FUN_8002263c, @function
    .ent FUN_8002263c
FUN_8002263c:
    lui $v0,0x800e
    lw $v0,0xb18($v0)
    addiu $sp,$sp,-24
    sw $ra,16($sp)
    lbu $v1,0x71($v0)
    li $v0,1
    beq $v1,$v0,.L80022688
    slti $v0,$v1,2
    beq $v0,$zero,.L80022674
    nop
    beq $v1,$zero,.L8002268c
    li $a0,0x111
    j 0x80022694
    nop
.L80022674:
    li $v0,2
    beq $v1,$v0,.L8002268c
    li $a0,0x110
    j 0x80022694
    nop
.L80022688:
    li $a0,0x112
.L8002268c:
    jal FUN_80026940
    nop
.L80022694:
    lw $ra,16($sp)
    nop
    jr $ra
    addiu $sp,$sp,24
    .end FUN_8002263c

    .section .text.FUN_8002112c,"ax",@progbits
    .globl FUN_8002112c
    .type FUN_8002112c, @function
    .ent FUN_8002112c
FUN_8002112c:
.L8002112c:
    addiu $sp,$sp,-0x20
.L80021130:
    addu $t0,$zero,$zero
.L80021134:
    li $t2,0x4
.L80021138:
    lui $a0,0x800b
.L8002113c:
    lui $v0,0x800b
.L80021140:
    addiu $t1,$v0,-0x36f4
.L80021144:
    lw $v1,-0x3718($a0)
.L80021148:
    lui $v0,0x800e
.L8002114c:
    sw $ra,0x18($sp)
.L80021150:
    sb $zero,0x45($v1)
.L80021154:
    lw $v1,-0x3718($a0)
.L80021158:
    addiu $a3,$v0,0x2a68
.L8002115c:
    addiu $a2,$v1,0x4c
.L80021160:
    addiu $a1,$v1,0x58
.L80021164:
    lw $v0,-0x8($a1)
.L80021168:
    nop
.L8002116c:
    sw $v0,0x0($a2)
.L80021170:
    lbu $v0,0x0($a3)
.L80021174:
    nop
.L80021178:
    bne $v0,$zero,.L800211d4
.L8002117c:
    nop
.L80021180:
    lbu $v0,0x1($a3)
.L80021184:
    nop
.L80021188:
    srl $v1,$v0,0x4
.L8002118c:
    beq $v1,$t2,.L8002119c
.L80021190:
    li $v0,0x7
.L80021194:
    bne $v1,$v0,.L800211d4
.L80021198:
    nop
.L8002119c:
    lbu $v0,0x2($a3)
.L800211a0:
    lbu $v1,0x3($a3)
.L800211a4:
    sll $v0,$v0,0x8
.L800211a8:
    nor $v1,$v1,$v0
.L800211ac:
    lui $v0,0x800b
.L800211b0:
    sw $v1,-0x8($a1)
.L800211b4:
    addu $v1,$t0,$t1
.L800211b8:
    lw $a0,-0x3718($v0)
.L800211bc:
    lbu $v1,0x0($v1)
.L800211c0:
    lbu $v0,0x45($a0)
.L800211c4:
    nop
.L800211c8:
    or $v0,$v0,$v1
.L800211cc:
    j 0x800211d8
.L800211d0:
    sb $v0,0x45($a0)
.L800211d4:
    sw $zero,-0x8($a1)
.L800211d8:
    addiu $a3,$a3,0x34
.L800211dc:
    addiu $t0,$t0,0x1
.L800211e0:
    lw $v0,0x0($a2)
.L800211e4:
    lw $v1,-0x8($a1)
.L800211e8:
    nor $v0,$zero,$v0
.L800211ec:
    and $v0,$v0,$v1
.L800211f0:
    sw $v0,-0x4($a1)
.L800211f4:
    addu $v0,$v1,$zero
.L800211f8:
    lw $v1,0x0($a2)
.L800211fc:
    addiu $a2,$a2,0x10
.L80021200:
    nor $v0,$zero,$v0
.L80021204:
    and $v0,$v0,$v1
.L80021208:
    sw $v0,0x0($a1)
.L8002120c:
    slti $v0,$t0,0x2
.L80021210:
    bne $v0,$zero,.L80021164
.L80021214:
    addiu $a1,$a1,0x10
.L80021218:
    addiu $a0,$sp,0x10
.L8002121c:
    addiu $a1,$sp,0x14
.L80021220:
    sw $zero,0x14($sp)
.L80021224:
    jal FUN_8009c5f4
.L80021228:
    sw $zero,0x10($sp)
.L8002122c:
    lui $a1,0x800b
.L80021230:
    lw $v1,-0x3718($a1)
.L80021234:
    lw $a0,0x10($sp)
.L80021238:
    addiu $a2,$v1,0x6c
.L8002123c:
    lw $v0,0x4($a2)
.L80021240:
    nop
.L80021244:
    sw $v0,0x6c($v1)
.L80021248:
    sw $a0,0x4($a2)
.L8002124c:
    lw $v0,0x6c($v1)
.L80021250:
    nop
.L80021254:
    nor $v0,$zero,$v0
.L80021258:
    and $v0,$v0,$a0
.L8002125c:
    sw $v0,0x8($a2)
.L80021260:
    addu $v0,$a0,$zero
.L80021264:
    lw $a0,0x6c($v1)
.L80021268:
    nor $v0,$zero,$v0
.L8002126c:
    and $v0,$v0,$a0
.L80021270:
    sw $v0,0xc($a2)
.L80021274:
    addiu $a2,$v1,0x7c
.L80021278:
    lw $v0,0x4($a2)
.L8002127c:
    lw $a0,0x14($sp)
.L80021280:
    sw $v0,0x7c($v1)
.L80021284:
    sw $a0,0x4($a2)
.L80021288:
    lw $v0,0x7c($v1)
.L8002128c:
    nop
.L80021290:
    nor $v0,$zero,$v0
.L80021294:
    and $v0,$v0,$a0
.L80021298:
    sw $v0,0x8($a2)
.L8002129c:
    addu $v0,$a0,$zero
.L800212a0:
    lw $a0,0x7c($v1)
.L800212a4:
    nor $v0,$zero,$v0
.L800212a8:
    and $v0,$v0,$a0
.L800212ac:
    sw $v0,0xc($a2)
.L800212b0:
    lui $v0,0x800e
.L800212b4:
    addiu $t6,$v0,0x3c18
.L800212b8:
    lw $t3,0x6c($v1)
.L800212bc:
    lw $t4,0x70($v1)
.L800212c0:
    lw $t5,0x74($v1)
.L800212c4:
    sw $t3,0x0($t6)
.L800212c8:
    sw $t4,0x4($t6)
.L800212cc:
    sw $t5,0x8($t6)
.L800212d0:
    lw $t3,0x78($v1)
.L800212d4:
    nop
.L800212d8:
    sw $t3,0xc($t6)
.L800212dc:
    lw $v1,-0x3718($a1)
.L800212e0:
    addiu $v0,$v0,0x3c18
.L800212e4:
    lw $t3,0x7c($v1)
.L800212e8:
    lw $t4,0x80($v1)
.L800212ec:
    lw $t5,0x84($v1)
.L800212f0:
    lw $t6,0x88($v1)
.L800212f4:
    sw $t3,0x10($v0)
.L800212f8:
    sw $t4,0x14($v0)
.L800212fc:
    sw $t5,0x18($v0)
.L80021300:
    sw $t6,0x1c($v0)
.L80021304:
    lw $v1,-0x3718($a1)
.L80021308:
    lui $v0,0x800e
.L8002130c:
    addiu $t6,$v0,0x3b58
.L80021310:
    lw $t3,0x4c($v1)
.L80021314:
    lw $t4,0x50($v1)
.L80021318:
    lw $t5,0x54($v1)
.L8002131c:
    sw $t3,0x0($t6)
.L80021320:
    sw $t4,0x4($t6)
.L80021324:
    sw $t5,0x8($t6)
.L80021328:
    lw $t3,0x58($v1)
.L8002132c:
    nop
.L80021330:
    sw $t3,0xc($t6)
.L80021334:
    lw $v1,-0x3718($a1)
.L80021338:
    addiu $v0,$v0,0x3b58
.L8002133c:
    lw $t3,0x5c($v1)
.L80021340:
    lw $t4,0x60($v1)
.L80021344:
    lw $t5,0x64($v1)
.L80021348:
    lw $t6,0x68($v1)
.L8002134c:
    sw $t3,0x10($v0)
.L80021350:
    sw $t4,0x14($v0)
.L80021354:
    sw $t5,0x18($v0)
.L80021358:
    sw $t6,0x1c($v0)
.L8002135c:
    jal FUN_80021374
.L80021360:
    nop
.L80021364:
    lw $ra,0x18($sp)
.L80021368:
    nop
.L8002136c:
    jr $ra
.L80021370:
    addiu $sp,$sp,0x20
    .end FUN_8002112c
    .size FUN_8002112c, . - FUN_8002112c

    .section .text.FUN_8002216c,"ax",@progbits
    .globl FUN_8002216c
    .type FUN_8002216c, @function
    .ent FUN_8002216c
FUN_8002216c:
.L8002216c:
    addiu $sp,$sp,-0x18
.L80022170:
    sw $s0,0x10($sp)
.L80022174:
    lui $s0,0x800b
.L80022178:
    lw $a0,-0x3718($s0)
.L8002217c:
    sw $ra,0x14($sp)
.L80022180:
    jal bzero
.L80022184:
    li $a1,0x140
.L80022188:
    jal FUN_8009f508
.L8002218c:
    nop
.L80022190:
    lui $v0,0x800b
.L80022194:
    lw $v0,-0x3714($v0)
.L80022198:
    jal FUN_8009978c
.L8002219c:
    sb $zero,0x50($v0)
.L800221a0:
    lw $v1,-0x3718($s0)
.L800221a4:
    lui $v0,0x800e
.L800221a8:
    sw $zero,0x2ad0($v0)
.L800221ac:
    sb $zero,0x9($v1)
.L800221b0:
    lw $v0,-0x3718($s0)
.L800221b4:
    nop
.L800221b8:
    sb $zero,0xa($v0)
.L800221bc:
    lw $v0,-0x3718($s0)
.L800221c0:
    nop
.L800221c4:
    sb $zero,0xb($v0)
.L800221c8:
    lw $v0,-0x3718($s0)
.L800221cc:
    li $v1,0x1
.L800221d0:
    sb $v1,0x41($v0)
.L800221d4:
    lw $v0,-0x3718($s0)
.L800221d8:
    nop
.L800221dc:
    sb $v1,0x40($v0)
.L800221e0:
    lw $v0,-0x3718($s0)
.L800221e4:
    nop
.L800221e8:
    sb $v1,0x3f($v0)
.L800221ec:
    lw $v0,-0x3718($s0)
.L800221f0:
    nop
.L800221f4:
    sb $v1,0x42($v0)
.L800221f8:
    lw $ra,0x14($sp)
.L800221fc:
    lw $s0,0x10($sp)
.L80022200:
    jr $ra
.L80022204:
    addiu $sp,$sp,0x18
    .end FUN_8002216c
    .size FUN_8002216c, . - FUN_8002216c

    .section .text.FUN_80022cf8,"ax",@progbits
    .globl FUN_80022cf8
    .type FUN_80022cf8, @function
    .ent FUN_80022cf8
FUN_80022cf8:
.L80022cf8:
    lui $a1,0x800b
.L80022cfc:
    lw $v0,-0x3714($a1)
.L80022d00:
    addiu $sp,$sp,-0x18
.L80022d04:
    sw $ra,0x10($sp)
.L80022d08:
    sb $zero,0x10($v0)
.L80022d0c:
    lui $v0,0x800b
.L80022d10:
    lw $v1,-0x3718($v0)
.L80022d14:
    nop
.L80022d18:
    lh $a0,0x28($v1)
.L80022d1c:
    li $v0,0x10
.L80022d20:
    beq $a0,$v0,.L80022e68
.L80022d24:
    slti $v0,$a0,0x11
.L80022d28:
    beq $v0,$zero,.L80022d60
.L80022d2c:
    li $v0,0x2
.L80022d30:
    beq $a0,$v0,.L80022dc8
.L80022d34:
    slti $v0,$a0,0x3
.L80022d38:
    beq $v0,$zero,.L80022d50
.L80022d3c:
    li $v0,0x4
.L80022d40:
    beq $a0,$zero,.L80022da8
.L80022d44:
    lui $v0,0x800b
.L80022d48:
    j 0x80022e6c
.L80022d4c:
    nop
.L80022d50:
    beq $a0,$v0,.L80022db8
.L80022d54:
    lui $v0,0x800b
.L80022d58:
    j 0x80022e6c
.L80022d5c:
    nop
.L80022d60:
    li $v0,0x32
.L80022d64:
    beq $a0,$v0,.L80022e48
.L80022d68:
    slti $v0,$a0,0x33
.L80022d6c:
    beq $v0,$zero,.L80022d84
.L80022d70:
    li $v0,0x20
.L80022d74:
    beq $a0,$v0,.L80022e58
.L80022d78:
    lui $v0,0x800b
.L80022d7c:
    j 0x80022e6c
.L80022d80:
    nop
.L80022d84:
    li $v0,0x80
.L80022d88:
    beq $a0,$v0,.L80022eb4
.L80022d8c:
    li $v0,0xff
.L80022d90:
    bne $a0,$v0,.L80022e6c
.L80022d94:
    lui $v0,0x800b
.L80022d98:
    jal FUN_80022fb0
.L80022d9c:
    nop
.L80022da0:
    j 0x80022ec0
.L80022da4:
    nop
.L80022da8:
    jal FUN_80023048
.L80022dac:
    nop
.L80022db0:
    j 0x80022ec0
.L80022db4:
    nop
.L80022db8:
    jal FUN_800230cc
.L80022dbc:
    nop
.L80022dc0:
    j 0x80022ec0
.L80022dc4:
    nop
.L80022dc8:
    lh $v1,0x2a($v1)
.L80022dcc:
    li $v0,0x1
.L80022dd0:
    beq $v1,$v0,.L80022e18
.L80022dd4:
    slti $v0,$v1,0x2
.L80022dd8:
    beq $v0,$zero,.L80022df0
.L80022ddc:
    nop
.L80022de0:
    beq $v1,$zero,.L80022e00
.L80022de4:
    li $a0,0x280
.L80022de8:
    j 0x80022ec0
.L80022dec:
    nop
.L80022df0:
    beq $v1,$a0,.L80022e38
.L80022df4:
    nop
.L80022df8:
    j 0x80022ec0
.L80022dfc:
    nop
.L80022e00:
    jal FUN_8009f820
.L80022e04:
    li $a1,0x1e0
.L80022e08:
    jal FUN_800231b0
.L80022e0c:
    nop
.L80022e10:
    j 0x80022ec0
.L80022e14:
    nop
.L80022e18:
    jal FUN_8009f390
.L80022e1c:
    nop
.L80022e20:
    blez $v0,.L80022ec0
.L80022e24:
    nop
.L80022e28:
    jal FUN_800231b0
.L80022e2c:
    nop
.L80022e30:
    j 0x80022ec0
.L80022e34:
    nop
.L80022e38:
    jal FUN_80049dec
.L80022e3c:
    nop
.L80022e40:
    j 0x80022ec0
.L80022e44:
    nop
.L80022e48:
    jal FUN_80021a30
.L80022e4c:
    nop
.L80022e50:
    j 0x80022ec0
.L80022e54:
    nop
.L80022e58:
    jal FUN_800219b8
.L80022e5c:
    nop
.L80022e60:
    j 0x80022ec0
.L80022e64:
    nop
.L80022e68:
    lui $v0,0x800b
.L80022e6c:
    lw $v0,-0x3718($v0)
.L80022e70:
    nop
.L80022e74:
    lh $v1,0x2a($v0)
.L80022e78:
    nop
.L80022e7c:
    beq $v1,$zero,.L80022e94
.L80022e80:
    li $v0,0x1
.L80022e84:
    beq $v1,$v0,.L80022ea4
.L80022e88:
    nop
.L80022e8c:
    j 0x80022ec0
.L80022e90:
    nop
.L80022e94:
    jal FUN_800232cc
.L80022e98:
    nop
.L80022e9c:
    j 0x80022ec0
.L80022ea0:
    nop
.L80022ea4:
    jal FUN_80022b30
.L80022ea8:
    nop
.L80022eac:
    j 0x80022ec0
.L80022eb0:
    nop
.L80022eb4:
    lw $v0,-0x3714($a1)
.L80022eb8:
    nop
.L80022ebc:
    sb $zero,0x0($v0)
.L80022ec0:
    jal FUN_80023744
.L80022ec4:
    nop
.L80022ec8:
    jal FUN_8009971c
.L80022ecc:
    nop
.L80022ed0:
    lui $v0,0x800b
.L80022ed4:
    lw $v0,-0x3714($v0)
.L80022ed8:
    nop
.L80022edc:
    lbu $v0,0x7($v0)
.L80022ee0:
    nop
.L80022ee4:
    beq $v0,$zero,.L80022ef4
.L80022ee8:
    nop
.L80022eec:
    jal FUN_80023210
.L80022ef0:
    li $a0,0x80
.L80022ef4:
    lw $ra,0x10($sp)
.L80022ef8:
    nop
.L80022efc:
    jr $ra
.L80022f00:
    addiu $sp,$sp,0x18
    .end FUN_80022cf8
    .size FUN_80022cf8, . - FUN_80022cf8

    .section .text.FUN_80023744,"ax",@progbits
    .globl FUN_80023744
    .type FUN_80023744, @function
    .ent FUN_80023744
FUN_80023744:
.L80023744:
    lui $a0,0x800b
.L80023748:
    lw $v1,-0x3718($a0)
.L8002374c:
    nop
.L80023750:
    lbu $v0,0x1e($v1)
.L80023754:
    nop
.L80023758:
    beq $v0,$zero,.L80023794
.L8002375c:
    nop
.L80023760:
    lbu $v0,0x1c($v1)
.L80023764:
    nop
.L80023768:
    addiu $v0,$v0,-0x2
.L8002376c:
    sb $v0,0x1c($v1)
.L80023770:
    lw $v1,-0x3718($a0)
.L80023774:
    nop
.L80023778:
    lbu $v0,0x1c($v1)
.L8002377c:
    nop
.L80023780:
    sltiu $v0,$v0,0x5
.L80023784:
    beq $v0,$zero,.L800237c8
.L80023788:
    nop
.L8002378c:
    j 0x800237c4
.L80023790:
    sb $zero,0x1e($v1)
.L80023794:
    lbu $v0,0x1c($v1)
.L80023798:
    nop
.L8002379c:
    addiu $v0,$v0,0x2
.L800237a0:
    sb $v0,0x1c($v1)
.L800237a4:
    lw $v1,-0x3718($a0)
.L800237a8:
    nop
.L800237ac:
    lb $v0,0x1c($v1)
.L800237b0:
    nop
.L800237b4:
    bgez $v0,.L800237c4
.L800237b8:
    lui $a0,0x800b
.L800237bc:
    li $v0,0x1
.L800237c0:
    sb $v0,0x1e($v1)
.L800237c4:
    lw $v1,-0x3718($a0)
.L800237c8:
    nop
.L800237cc:
    lbu $v0,0x1f($v1)
.L800237d0:
    nop
.L800237d4:
    beq $v0,$zero,.L80023810
.L800237d8:
    nop
.L800237dc:
    lbu $v0,0x1d($v1)
.L800237e0:
    nop
.L800237e4:
    addiu $v0,$v0,-0x4
.L800237e8:
    sb $v0,0x1d($v1)
.L800237ec:
    lw $v1,-0x3718($a0)
.L800237f0:
    nop
.L800237f4:
    lbu $v0,0x1d($v1)
.L800237f8:
    nop
.L800237fc:
    sltiu $v0,$v0,0x5
.L80023800:
    beq $v0,$zero,.L80023840
.L80023804:
    lui $a0,0x800b
.L80023808:
    j 0x80023840
.L8002380c:
    sb $zero,0x1f($v1)
.L80023810:
    lbu $v0,0x1d($v1)
.L80023814:
    nop
.L80023818:
    addiu $v0,$v0,0x4
.L8002381c:
    sb $v0,0x1d($v1)
.L80023820:
    lw $v1,-0x3718($a0)
.L80023824:
    nop
.L80023828:
    lb $v0,0x1d($v1)
.L8002382c:
    nop
.L80023830:
    bgez $v0,.L80023840
.L80023834:
    lui $a0,0x800b
.L80023838:
    li $v0,0x1
.L8002383c:
    sb $v0,0x1f($v1)
.L80023840:
    lw $v1,-0x3718($a0)
.L80023844:
    nop
.L80023848:
    lbu $v0,0x91($v1)
.L8002384c:
    nop
.L80023850:
    beq $v0,$zero,.L8002388c
.L80023854:
    nop
.L80023858:
    lbu $v0,0x90($v1)
.L8002385c:
    nop
.L80023860:
    addiu $v0,$v0,-0x4
.L80023864:
    sb $v0,0x90($v1)
.L80023868:
    lw $v1,-0x3718($a0)
.L8002386c:
    nop
.L80023870:
    lbu $v0,0x90($v1)
.L80023874:
    nop
.L80023878:
    sltiu $v0,$v0,0x41
.L8002387c:
    beq $v0,$zero,.L800238bc
.L80023880:
    lui $a1,0x800b
.L80023884:
    j 0x800238bc
.L80023888:
    sb $zero,0x91($v1)
.L8002388c:
    lbu $v0,0x90($v1)
.L80023890:
    nop
.L80023894:
    addiu $v0,$v0,0x4
.L80023898:
    sb $v0,0x90($v1)
.L8002389c:
    lw $v1,-0x3718($a0)
.L800238a0:
    nop
.L800238a4:
    lb $v0,0x90($v1)
.L800238a8:
    nop
.L800238ac:
    bgez $v0,.L800238bc
.L800238b0:
    lui $a1,0x800b
.L800238b4:
    li $v0,0x1
.L800238b8:
    sb $v0,0x91($v1)
.L800238bc:
    lw $v0,-0x3718($a1)
.L800238c0:
    nop
.L800238c4:
    lbu $v1,0x20($v0)
.L800238c8:
    nop
.L800238cc:
    andi $v1,$v1,0xf
.L800238d0:
    sb $v1,0xc1($v0)
.L800238d4:
    lw $a0,-0x3718($a1)
.L800238d8:
    nop
.L800238dc:
    lhu $v0,0x20($a0)
.L800238e0:
    nop
.L800238e4:
    andi $v0,$v0,0x10
.L800238e8:
    beq $v0,$zero,.L80023900
.L800238ec:
    li $v0,0x10
.L800238f0:
    lbu $v1,0xc1($a0)
.L800238f4:
    nop
.L800238f8:
    subu $v0,$v0,$v1
.L800238fc:
    sb $v0,0xc1($a0)
.L80023900:
    lw $v1,-0x3718($a1)
.L80023904:
    nop
.L80023908:
    lbu $v0,0xc1($v1)
.L8002390c:
    nop
.L80023910:
    sll $v0,$v0,0x18
.L80023914:
    sra $v0,$v0,0x1a
.L80023918:
    jr $ra
.L8002391c:
    sb $v0,0xc1($v1)
    .end FUN_80023744
    .size FUN_80023744, . - FUN_80023744

    .section .text.FUN_8009971c,"ax",@progbits
    .globl FUN_8009971c
    .type FUN_8009971c, @function
    .ent FUN_8009971c
FUN_8009971c:
.L8009971c:
    lui $v0,0x800f
.L80099720:
    lh $v1,0x2908($v0)
.L80099724:
    li $v0,0x4
.L80099728:
    beq $v1,$v0,.L8009974c
.L8009972c:
    slt $v0,$v1,$v0
.L80099730:
    bne $v0,$zero,.L80099764
.L80099734:
    lui $v0,0x800b
.L80099738:
    slti $v0,$v1,0x2d
.L8009973c:
    beq $v0,$zero,.L80099760
.L80099740:
    slti $v0,$v1,0x2a
.L80099744:
    bne $v0,$zero,.L80099764
.L80099748:
    lui $v0,0x800b
.L8009974c:
    lui $v0,0x800b
.L80099750:
    lw $v1,-0x3718($v0)
.L80099754:
    li $v0,0x1
.L80099758:
    jr $ra
.L8009975c:
    sb $v0,0xf4($v1)
.L80099760:
    lui $v0,0x800b
.L80099764:
    lw $v0,-0x3718($v0)
.L80099768:
    jr $ra
.L8009976c:
    sb $zero,0xf4($v0)
    .end FUN_8009971c
    .size FUN_8009971c, . - FUN_8009971c

    .section .text.main,"ax",@progbits
    .globl main
    .type main, @function
    .ent main
main:
.L800226a4:
    addiu $sp,$sp,-0x20
.L800226a8:
    sw $ra,0x1c($sp)
.L800226ac:
    sw $s2,0x18($sp)
.L800226b0:
    sw $s1,0x14($sp)
.L800226b4:
    jal __main
.L800226b8:
    sw $s0,0x10($sp)
.L800226bc:
    jal FUN_80021dfc
.L800226c0:
    lui $s0,0x800b
.L800226c4:
    jal FUN_80027f7c
.L800226c8:
    lui $s2,0x800e
.L800226cc:
    li $a0,0x80
.L800226d0:
    jal FUN_8007b778
.L800226d4:
    addu $a1,$zero,$zero
.L800226d8:
    jal FUN_800972a4
.L800226dc:
    nop
.L800226e0:
    jal FUN_8003bbe8
.L800226e4:
    nop
.L800226e8:
    lui $a0,0xf200
.L800226ec:
    ori $a0,$a0,0x3
.L800226f0:
    li $a1,0x2
.L800226f4:
    li $a2,0x1000
.L800226f8:
    lui $a3,0x8002
.L800226fc:
    jal OpenEvent
.L80022700:
    addiu $a3,$a3,0x2a40
.L80022704:
    lui $v1,0x800e
.L80022708:
    addu $a0,$v0,$zero
.L8002270c:
    jal EnableEvent
.L80022710:
    sw $v0,0x2968($v1)
.L80022714:
    lui $a0,0xf200
.L80022718:
    ori $a0,$a0,0x3
.L8002271c:
    li $a1,0x1
.L80022720:
    jal SetRCnt
.L80022724:
    li $a2,0x1000
.L80022728:
    lui $a0,0xf200
.L8002272c:
    jal StartRCnt
.L80022730:
    ori $a0,$a0,0x3
.L80022734:
    jal FUN_8003bbf8
.L80022738:
    nop
.L8002273c:
    lui $v0,0x800e
.L80022740:
    addiu $s1,$v0,0x2980
.L80022744:
    jal FUN_8002216c
.L80022748:
    nop
.L8002274c:
    lui $a0,0xf200
.L80022750:
    jal ResetRCnt
.L80022754:
    ori $a0,$a0,0x1
.L80022758:
    lw $v0,-0x3718($s0)
.L8002275c:
    nop
.L80022760:
    lbu $v0,0x9($v0)
.L80022764:
    nop
.L80022768:
    bne $v0,$zero,.L80022744
.L8002276c:
    nop
.L80022770:
    jal FUN_80022cf8
.L80022774:
    nop
.L80022778:
    lw $v0,-0x3718($s0)
.L8002277c:
    nop
.L80022780:
    sb $zero,0x5($v0)
.L80022784:
    lui $v0,0x800b
.L80022788:
    lw $v1,-0x3714($v0)
.L8002278c:
    li $v0,0x1
.L80022790:
    sb $v0,0x74($s1)
.L80022794:
    sb $v0,0x18($s1)
.L80022798:
    lbu $v0,0x4($v1)
.L8002279c:
    nop
.L800227a0:
    bne $v0,$zero,.L800227c0
.L800227a4:
    nop
.L800227a8:
    lw $v0,-0x3718($s0)
.L800227ac:
    nop
.L800227b0:
    lhu $v1,0xe($v0)
.L800227b4:
    li $v0,0x1e0
.L800227b8:
    bne $v1,$v0,.L800227c8
.L800227bc:
    nop
.L800227c0:
    sb $zero,0x74($s1)
.L800227c4:
    sb $zero,0x18($s1)
.L800227c8:
    lui $a0,0xf200
.L800227cc:
    jal GetRCnt
.L800227d0:
    ori $a0,$a0,0x1
.L800227d4:
    jal FUN_800973e8
.L800227d8:
    sw $v0,0x2978($s2)
.L800227dc:
    lui $a0,0xf200
.L800227e0:
    jal ResetRCnt
.L800227e4:
    ori $a0,$a0,0x1
.L800227e8:
    nop
.L800227ec:
    nop
.L800227f0:
    lw $v1,-0x3718($s0)
.L800227f4:
    nop
.L800227f8:
    lhu $v0,0x20($v1)
.L800227fc:
    nop
.L80022800:
    addiu $v0,$v0,0x1
.L80022804:
    jal FUN_8002112c
.L80022808:
    sh $v0,0x20($v1)
.L8002280c:
    jal FUN_8002d630
.L80022810:
    nop
.L80022814:
    jal FUN_80028034
.L80022818:
    nop
.L8002281c:
    lw $v0,-0x3718($s0)
.L80022820:
    nop
.L80022824:
    lbu $v0,0x9($v0)
.L80022828:
    nop
.L8002282c:
    beq $v0,$zero,.L80022770
.L80022830:
    nop
.L80022834:
    j 0x80022744
.L80022838:
    nop
    .end main
    .size main, . - main
