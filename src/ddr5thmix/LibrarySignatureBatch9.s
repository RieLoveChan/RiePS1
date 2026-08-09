    .set noreorder
    .set noat
    .set nomacro

/* FUN_80020dd4 (0x80020dd4, 148 bytes) */
    .section .text.FUN_80020dd4,"ax",@progbits
    .globl FUN_80020dd4
    .globl sym_80020efc
    .type FUN_80020dd4, @function
    .ent FUN_80020dd4
FUN_80020dd4:
    lui     $v0,0x800b
    lw      $v0,-14196($v0)
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    sw      $s1,20($sp)
    addu    $s1,$a1,$zero
    bne     $v0,$zero,.LFUN_80020dd4_7c
    sw      $ra,24($sp)
    addu    $a0,$s0,$zero
    jal     sym_80020efc
    addu    $a1,$s1,$zero
    bne     $v0,$zero,.LFUN_80020dd4_80
    addiu   $v0,$zero,1
    lui     $v0,0x800b
    lw      $v0,-14104($v0)
    sll     $zero,$zero,0x0
    sb      $zero,207($v0)
    lui     $v0,0x800b
    lw      $a2,4($s0)
    lw      $a1,-14100($v0)
    lw      $v1,0($s0)
    lui     $a0,0x800e
    sw      $v1,140($a1)
    sw      $s1,136($a1)
    lw      $v1,0($s0)
    addu    $v0,$zero,$zero
    sw      $a2,10568($a0)
    addu    $v1,$s1,$v1
    j       .LFUN_80020dd4_80
    sw      $v1,124($a1)
.LFUN_80020dd4_7c:
    addiu   $v0,$zero,1
.LFUN_80020dd4_80:
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end FUN_80020dd4
    .size FUN_80020dd4, . - FUN_80020dd4

/* FUN_80021020 (0x80021020, 268 bytes) */
    .section .text.FUN_80021020,"ax",@progbits
    .globl FUN_80021020
    .globl sym_800357cc
    .globl sym_800357fc
    .globl sym_8003bae8
    .globl sym_80035820
    .globl sym_800357ec
    .type FUN_80021020, @function
    .ent FUN_80021020
FUN_80021020:
    addiu   $sp,$sp,-40
    sw      $s2,24($sp)
    addu    $s2,$a0,$zero
    sw      $s3,28($sp)
    addu    $s3,$a1,$zero
    sw      $ra,32($sp)
    sw      $s1,20($sp)
    beq     $s2,$zero,.LFUN_80021020_ec
    sw      $s0,16($sp)
    lw      $a0,0($s2)
    addu    $a1,$zero,$zero
    jal     sym_800357cc
    addu    $a2,$a1,$zero
    addu    $s1,$v0,$zero
    addiu   $v0,$zero,-1
    beq     $s1,$v0,.LFUN_80021020_f0
    addu    $a1,$zero,$zero
    addu    $a0,$s1,$zero
    jal     sym_800357fc
    addiu   $a2,$zero,2
    addu    $s0,$v0,$zero
    addiu   $v1,$s0,2047
    lui     $v0,0x800b
    lw      $a0,-14100($v0)
    bgez    $v1,.LFUN_80021020_70
    sra     $v0,$v1,0xb
    addiu   $v1,$s0,4094
    sra     $v0,$v1,0xb
.LFUN_80021020_70:
    sll     $v0,$v0,0xb
    addu    $v0,$s3,$v0
    lui     $v1,0x800b
    lw      $v1,-14104($v1)
    addiu   $v0,$v0,256
    sw      $v0,144($a0)
    lw      $v0,80($v1)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x4
    beq     $v0,$zero,.LFUN_80021020_c4
    sll     $zero,$zero,0x0
    lw      $a1,0($s2)
    lui     $a0,0x8002
    jal     sym_8003bae8
    addiu   $a0,$a0,-22528
    lui     $a0,0x8002
    addiu   $a0,$a0,-22524
    addu    $a1,$s3,$zero
    addu    $a2,$s0,$zero
    jal     sym_8003bae8
    addu    $a3,$s3,$s0
.LFUN_80021020_c4:
    addu    $a0,$s1,$zero
    addu    $a1,$zero,$zero
    jal     sym_800357fc
    addu    $a2,$a1,$zero
    addu    $a0,$s1,$zero
    addu    $a1,$s3,$zero
    jal     sym_80035820
    addu    $a2,$s0,$zero
    jal     sym_800357ec
    addu    $a0,$s1,$zero
.LFUN_80021020_ec:
    addu    $v0,$zero,$zero
.LFUN_80021020_f0:
    lw      $ra,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end FUN_80021020
    .size FUN_80021020, . - FUN_80021020

/* FUN_800216c4 (0x800216c4, 756 bytes) */
    .section .text.FUN_800216c4,"ax",@progbits
    .globl FUN_800216c4
    .globl sym_80023e9c
    .globl sym_80023f68
    .type FUN_800216c4, @function
    .ent FUN_800216c4
FUN_800216c4:
    addiu   $sp,$sp,-104
    sw      $s7,92($sp)
    addu    $s7,$a0,$zero
    sw      $s1,68($sp)
    addu    $s1,$a1,$zero
    sw      $s5,84($sp)
    lw      $s5,120($sp)
    addiu   $v0,$zero,512
    sw      $ra,100($sp)
    sw      $s8,96($sp)
    sw      $s6,88($sp)
    sw      $s4,80($sp)
    sw      $s3,76($sp)
    sw      $s2,72($sp)
    sw      $s0,64($sp)
    andi    $t3,$s5,0x1000
    andi    $v1,$s5,0xf00
    beq     $v1,$v0,.LFUN_800216c4_88
    sw      $t3,48($sp)
    slti    $v0,$v1,513
    beq     $v0,$zero,.LFUN_800216c4_70
    addiu   $v0,$zero,768
    beq     $v1,$zero,.LFUN_800216c4_90
    addiu   $v0,$zero,256
    beq     $v1,$v0,.LFUN_800216c4_a4
    addu    $s4,$zero,$zero
    j       .LFUN_800216c4_ac
    addu    $s0,$s4,$zero
.LFUN_800216c4_70:
    beq     $v1,$v0,.LFUN_800216c4_98
    addiu   $v0,$zero,1792
    beq     $v1,$v0,.LFUN_800216c4_90
    addu    $s4,$zero,$zero
    j       .LFUN_800216c4_ac
    addu    $s0,$s4,$zero
.LFUN_800216c4_88:
    j       .LFUN_800216c4_a8
    addiu   $s4,$zero,16
.LFUN_800216c4_90:
    j       .LFUN_800216c4_a8
    addiu   $s4,$zero,8
.LFUN_800216c4_98:
    addiu   $s0,$zero,8
    j       .LFUN_800216c4_ac
    addiu   $s4,$zero,12
.LFUN_800216c4_a4:
    addiu   $s4,$zero,12
.LFUN_800216c4_a8:
    addu    $s0,$s4,$zero
.LFUN_800216c4_ac:
    lh      $v0,6($s7)
    andi    $v1,$s5,0xf
    addu    $v0,$v0,$v1
    sw      $v0,44($sp)
    lh      $t3,4($s7)
    andi    $v0,$s5,0x2000
    beq     $v0,$zero,.LFUN_800216c4_138
    sw      $t3,40($sp)
    addu    $a0,$a3,$zero
    lbu     $v0,0($a3)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_800216c4_130
    addu    $v1,$zero,$zero
    andi    $t0,$s5,0x80
    addiu   $t2,$zero,126
    addiu   $t1,$zero,32
    sra     $a1,$s0,0x1
.LFUN_800216c4_f0:
    bne     $t0,$zero,.LFUN_800216c4_118
    sll     $zero,$zero,0x0
    lbu     $v0,0($a0)
    sll     $zero,$zero,0x0
    beq     $v0,$t2,.LFUN_800216c4_110
    sll     $zero,$zero,0x0
    bne     $v0,$t1,.LFUN_800216c4_118
    sll     $zero,$zero,0x0
.LFUN_800216c4_110:
    j       .LFUN_800216c4_11c
    addu    $v1,$v1,$a1
.LFUN_800216c4_118:
    addu    $v1,$v1,$s0
.LFUN_800216c4_11c:
    addiu   $a0,$a0,1
    lbu     $v0,0($a0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_800216c4_f0
    sll     $zero,$zero,0x0
.LFUN_800216c4_130:
    sra     $v0,$v1,0x1
    subu    $s1,$s1,$v0
.LFUN_800216c4_138:
    lbu     $v0,0($a3)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_800216c4_2c4
    andi    $s6,$s5,0x80
    sra     $t3,$s0,0x2
    sll     $v0,$a2,0x10
    sra     $v0,$v0,0x10
    addu    $s8,$s4,$zero
    addu    $s2,$a3,$zero
    sw      $t3,52($sp)
    sw      $v0,56($sp)
    sw      $s0,60($sp)
.LFUN_800216c4_168:
    lbu     $v1,0($s2)
    addiu   $v0,$zero,126
    bne     $v1,$v0,.LFUN_800216c4_180
    sll     $zero,$zero,0x0
    beq     $s6,$zero,.LFUN_800216c4_19c
    sra     $v0,$s0,0x1
.LFUN_800216c4_180:
    lbu     $v0,0($s2)
    sll     $zero,$zero,0x0
    addiu   $v1,$v0,-32
    bne     $v1,$zero,.LFUN_800216c4_1a4
    sll     $zero,$zero,0x0
    bne     $s6,$zero,.LFUN_800216c4_1a4
    sra     $v0,$s0,0x1
.LFUN_800216c4_19c:
    j       .LFUN_800216c4_2b0
    addu    $s1,$s1,$v0
.LFUN_800216c4_1a4:
    bgez    $v1,.LFUN_800216c4_1b0
    addu    $v0,$v1,$zero
    addiu   $v0,$v1,15
.LFUN_800216c4_1b0:
    lw      $t3,52($sp)
    sra     $v0,$v0,0x4
    mult    $t3,$v0
    lh      $a0,0($s7)
    sll     $v0,$v0,0x4
    subu    $v0,$v1,$v0
    lh      $v1,2($s7)
    lw      $t3,40($sp)
    mflo    $t0
    sw      $t3,24($sp)
    lw      $t3,44($sp)
    mult    $s4,$v0
    sll     $v0,$t3,0x10
    sra     $v0,$v0,0x10
    addu    $a0,$t0,$a0
    sw      $v0,28($sp)
    andi    $v0,$a0,0x3f
    sll     $v0,$v0,0x2
    sra     $s3,$a0,0x6
    sw      $v0,16($sp)
    sll     $v0,$s1,0x10
    sra     $a0,$v0,0x10
    andi    $v0,$s5,0x8000
    mflo    $a1
    addu    $v1,$a1,$v1
    andi    $v1,$v1,0xff
    beq     $v0,$zero,.LFUN_800216c4_238
    sw      $v1,20($sp)
    lui     $v0,0x800b
    lw      $v0,-14104($v0)
    sll     $zero,$zero,0x0
    lbu     $v0,23($v0)
    j       .LFUN_800216c4_240
    sw      $v0,32($sp)
.LFUN_800216c4_238:
    addiu   $v0,$zero,128
    sw      $v0,32($sp)
.LFUN_800216c4_240:
    andi    $v0,$s5,0x4000
    beq     $v0,$zero,.LFUN_800216c4_260
    lui     $v0,0x800b
    lw      $v0,-14100($v0)
    sll     $zero,$zero,0x0
    lh      $v0,8($v0)
    j       .LFUN_800216c4_264
    sw      $v0,36($sp)
.LFUN_800216c4_260:
    sw      $zero,36($sp)
.LFUN_800216c4_264:
    lw      $a1,56($sp)
    lw      $a2,60($sp)
    jal     sym_80023e9c
    addu    $a3,$s8,$zero
    lw      $t3,48($sp)
    sll     $zero,$zero,0x0
    bne     $t3,$zero,.LFUN_800216c4_2ac
    andi    $v0,$s5,0x4000
    beq     $v0,$zero,.LFUN_800216c4_2a0
    lui     $v0,0x800b
    lw      $v0,-14100($v0)
    sll     $zero,$zero,0x0
    lh      $a1,8($v0)
    j       .LFUN_800216c4_2a4
    sll     $zero,$zero,0x0
.LFUN_800216c4_2a0:
    addu    $a1,$zero,$zero
.LFUN_800216c4_2a4:
    jal     sym_80023f68
    addu    $a0,$s3,$zero
.LFUN_800216c4_2ac:
    addu    $s1,$s1,$s0
.LFUN_800216c4_2b0:
    addiu   $s2,$s2,1
    lbu     $v0,0($s2)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_800216c4_168
    sll     $zero,$zero,0x0
.LFUN_800216c4_2c4:
    lw      $ra,100($sp)
    lw      $s8,96($sp)
    lw      $s7,92($sp)
    lw      $s6,88($sp)
    lw      $s5,84($sp)
    lw      $s4,80($sp)
    lw      $s3,76($sp)
    lw      $s2,72($sp)
    lw      $s1,68($sp)
    lw      $s0,64($sp)
    jr      $ra
    addiu   $sp,$sp,104
    .end FUN_800216c4
    .size FUN_800216c4, . - FUN_800216c4

/* FUN_80021a6c (0x80021a6c, 248 bytes) */
    .section .text.FUN_80021a6c,"ax",@progbits
    .globl FUN_80021a6c
    .globl sym_80021470
    .type FUN_80021a6c, @function
    .ent FUN_80021a6c
FUN_80021a6c:
    addiu   $sp,$sp,-40
    addu    $t3,$a3,$zero
    addiu   $t1,$zero,1
    addiu   $t2,$sp,16
    addu    $t4,$a0,$zero
    addu    $t5,$a1,$zero
    addiu   $a3,$a3,-1
    andi    $a3,$a3,0xff
    lhu     $t6,56($sp)
    sltiu   $a3,$a3,10
    bne     $a3,$zero,.LFUN_80021a6c_34
    sw      $ra,32($sp)
    addiu   $t3,$zero,10
.LFUN_80021a6c_34:
    addiu   $t0,$zero,1
    andi    $v1,$t3,0xff
    slt     $v0,$t0,$v1
    beq     $v0,$zero,.LFUN_80021a6c_60
    sll     $v0,$t1,0x2
.LFUN_80021a6c_48:
    addu    $v0,$v0,$t1
    sll     $t1,$v0,0x1
    addiu   $t0,$t0,1
    slt     $v0,$t0,$v1
    bne     $v0,$zero,.LFUN_80021a6c_48
    sll     $v0,$t1,0x2
.LFUN_80021a6c_60:
    addu    $v0,$v0,$t1
    sll     $v0,$v0,0x1
    andi    $a3,$t3,0xff
    divu    $zero,$a2,$v0
    mfhi    $a2
    beq     $a3,$zero,.LFUN_80021a6c_c8
    addu    $t0,$zero,$zero
    lui     $t3,0x6666
    ori     $t3,$t3,0x6667
.LFUN_80021a6c_84:
    divu    $zero,$a2,$t1
    mflo    $a0
    mfhi    $a1
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    mult    $t1,$t3
    addiu   $t0,$t0,1
    mfhi    $v0
    sra     $v1,$v0,0x2
    sra     $v0,$t1,0x1f
    subu    $t1,$v1,$v0
    slt     $v0,$t0,$a3
    addiu   $a0,$a0,48
    sb      $a0,0($t2)
    addiu   $t2,$t2,1
    bne     $v0,$zero,.LFUN_80021a6c_84
    addu    $a2,$a1,$zero
.LFUN_80021a6c_c8:
    sll     $a0,$t4,0x10
    sll     $a1,$t5,0x10
    sra     $a0,$a0,0x10
    sra     $a1,$a1,0x10
    addiu   $a2,$sp,16
    andi    $a3,$t6,0xffff
    jal     sym_80021470
    sb      $zero,0($t2)
    lw      $ra,32($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,40
    .end FUN_80021a6c
    .size FUN_80021a6c, . - FUN_80021a6c

/* FUN_80021b64 (0x80021b64, 160 bytes) */
    .section .text.FUN_80021b64,"ax",@progbits
    .globl FUN_80021b64
    .globl sym_80021470
    .type FUN_80021b64, @function
    .ent FUN_80021b64
FUN_80021b64:
    addiu   $sp,$sp,-40
    addu    $v0,$a3,$zero
    addiu   $a3,$a3,-1
    andi    $a3,$a3,0xff
    sltiu   $a3,$a3,8
    bne     $a3,$zero,.LFUN_80021b64_20
    sw      $ra,32($sp)
    addiu   $v0,$zero,8
.LFUN_80021b64_20:
    andi    $v0,$v0,0xff
    addiu   $a3,$v0,-1
    bltz    $a3,.LFUN_80021b64_64
    addiu   $t0,$sp,16
.LFUN_80021b64_30:
    addu    $t1,$t0,$zero
    sll     $v0,$a3,0x2
    srlv    $v0,$a2,$v0
    andi    $v1,$v0,0xf
    sltiu   $v0,$v1,10
    beq     $v0,$zero,.LFUN_80021b64_54
    addiu   $t0,$t0,1
    j       .LFUN_80021b64_58
    ori     $v0,$v1,0x30
.LFUN_80021b64_54:
    addiu   $v0,$v1,55
.LFUN_80021b64_58:
    addiu   $a3,$a3,-1
    bgez    $a3,.LFUN_80021b64_30
    sb      $v0,0($t1)
.LFUN_80021b64_64:
    lui     $v0,0x800b
    sll     $a0,$a0,0x10
    sll     $a1,$a1,0x10
    sra     $a0,$a0,0x10
    sra     $a1,$a1,0x10
    addiu   $a2,$sp,16
    sb      $zero,0($t0)
    lw      $v0,-14100($v0)
    addiu   $a3,$zero,16384
    jal     sym_80021470
    sh      $zero,8($v0)
    lw      $ra,32($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,40
    .end FUN_80021b64
    .size FUN_80021b64, . - FUN_80021b64

/* FUN_80021c04 (0x80021c04, 180 bytes) */
    .section .text.FUN_80021c04,"ax",@progbits
    .globl FUN_80021c04
    .type FUN_80021c04, @function
    .ent FUN_80021c04
FUN_80021c04:
    lui     $v1,0x800e
    andi    $a1,$a1,0x9ff
    lw      $t0,22064($v1)
    andi    $a0,$a0,0x4000
    addiu   $v0,$t0,8
    sw      $v0,22064($v1)
    addiu   $v0,$zero,1
    lui     $v1,0x800e
    sb      $v0,3($t0)
    lui     $v0,0xe100
    lw      $a2,10984($v1)
    or      $a1,$a1,$v0
    beq     $a0,$zero,.LFUN_80021c04_54
    sw      $a1,4($t0)
    lui     $v0,0x800b
    lw      $v0,-14100($v0)
    sll     $zero,$zero,0x0
    lh      $v0,8($v0)
    sll     $zero,$zero,0x0
    sll     $v0,$v0,0x2
    addu    $a2,$a2,$v0
.LFUN_80021c04_54:
    lui     $a3,0xff
    ori     $a3,$a3,0xffff
    lui     $t1,0xff00
    lw      $a1,10984($v1)
    lw      $v1,0($t0)
    lw      $v0,0($a2)
    and     $v1,$v1,$t1
    and     $v0,$v0,$a3
    or      $v1,$v1,$v0
    beq     $a0,$zero,.LFUN_80021c04_9c
    sw      $v1,0($t0)
    lui     $v0,0x800b
    lw      $v0,-14100($v0)
    sll     $zero,$zero,0x0
    lh      $v0,8($v0)
    sll     $zero,$zero,0x0
    sll     $v0,$v0,0x2
    addu    $a1,$a1,$v0
.LFUN_80021c04_9c:
    lw      $v0,0($a1)
    and     $v1,$t0,$a3
    and     $v0,$v0,$t1
    or      $v0,$v0,$v1
    jr      $ra
    sw      $v0,0($a1)
    .end FUN_80021c04
    .size FUN_80021c04, . - FUN_80021c04

/* FUN_80021cb8 (0x80021cb8, 256 bytes) */
    .section .text.FUN_80021cb8,"ax",@progbits
    .globl FUN_80021cb8
    .globl FUN_800216c4
    .type FUN_80021cb8, @function
    .ent FUN_80021cb8
FUN_80021cb8:
    addiu   $sp,$sp,-48
    addu    $t6,$a0,$zero
    addiu   $t1,$zero,1
    addiu   $t2,$sp,24
    lw      $v0,64($sp)
    addu    $t5,$a1,$zero
    addu    $a0,$v0,$zero
    addiu   $v0,$v0,-1
    andi    $v0,$v0,0xff
    sltiu   $v0,$v0,10
    bne     $v0,$zero,.LFUN_80021cb8_34
    sw      $ra,40($sp)
    addiu   $a0,$zero,10
.LFUN_80021cb8_34:
    addiu   $t0,$zero,1
    andi    $v1,$a0,0xff
    slt     $v0,$t0,$v1
    beq     $v0,$zero,.LFUN_80021cb8_60
    sll     $v0,$t1,0x2
.LFUN_80021cb8_48:
    addu    $v0,$v0,$t1
    sll     $t1,$v0,0x1
    addiu   $t0,$t0,1
    slt     $v0,$t0,$v1
    bne     $v0,$zero,.LFUN_80021cb8_48
    sll     $v0,$t1,0x2
.LFUN_80021cb8_60:
    addu    $v0,$v0,$t1
    sll     $v0,$v0,0x1
    andi    $t3,$a0,0xff
    divu    $zero,$a3,$v0
    mfhi    $a3
    beq     $t3,$zero,.LFUN_80021cb8_c8
    addu    $t0,$zero,$zero
    lui     $t4,0x6666
    ori     $t4,$t4,0x6667
.LFUN_80021cb8_84:
    divu    $zero,$a3,$t1
    mflo    $a0
    mfhi    $a1
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    mult    $t1,$t4
    addiu   $t0,$t0,1
    mfhi    $v0
    sra     $v1,$v0,0x2
    sra     $v0,$t1,0x1f
    subu    $t1,$v1,$v0
    slt     $v0,$t0,$t3
    addiu   $a0,$a0,48
    sb      $a0,0($t2)
    addiu   $t2,$t2,1
    bne     $v0,$zero,.LFUN_80021cb8_84
    addu    $a3,$a1,$zero
.LFUN_80021cb8_c8:
    sll     $a1,$t5,0x10
    sll     $a2,$a2,0x10
    addu    $a0,$t6,$zero
    sra     $a1,$a1,0x10
    sra     $a2,$a2,0x10
    sb      $zero,0($t2)
    lw      $v0,68($sp)
    addiu   $a3,$sp,24
    jal     FUN_800216c4
    sw      $v0,16($sp)
    lw      $ra,40($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,48
    .end FUN_80021cb8
    .size FUN_80021cb8, . - FUN_80021cb8

/* FUN_80021db8 (0x80021db8, 68 bytes) */
    .section .text.FUN_80021db8,"ax",@progbits
    .globl FUN_80021db8
    .type FUN_80021db8, @function
    .ent FUN_80021db8
FUN_80021db8:
    lbu     $v1,0($a0)
    sll     $zero,$zero,0x0
    beq     $v1,$zero,.LFUN_80021db8_3c
    addu    $v0,$zero,$zero
    addiu   $a3,$zero,126
    sra     $a2,$a1,0x1
.LFUN_80021db8_18:
    bne     $v1,$a3,.LFUN_80021db8_28
    addiu   $a0,$a0,1
    j       .LFUN_80021db8_2c
    addu    $v0,$v0,$a2
.LFUN_80021db8_28:
    addu    $v0,$v0,$a1
.LFUN_80021db8_2c:
    lbu     $v1,0($a0)
    sll     $zero,$zero,0x0
    bne     $v1,$zero,.LFUN_80021db8_18
    sll     $zero,$zero,0x0
.LFUN_80021db8_3c:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_80021db8
    .size FUN_80021db8, . - FUN_80021db8

/* FUN_80022244 (0x80022244, 112 bytes) */
    .section .text.FUN_80022244,"ax",@progbits
    .globl FUN_80022244
    .globl sym_800381e8
    .globl sym_800368e8
    .globl sym_8002200c
    .globl sym_80037908
    .globl sym_800365c0
    .globl sym_80036648
    .globl sym_80036668
    .type FUN_80022244, @function
    .ent FUN_80022244
FUN_80022244:
    addiu   $sp,$sp,-32
    sw      $ra,24($sp)
    jal     sym_800381e8
    addiu   $a0,$zero,1
    lui     $v0,0x800b
    lw      $v0,-14104($v0)
    sll     $zero,$zero,0x0
    lhu     $a0,12($v0)
    lhu     $a1,14($v0)
    lhu     $a2,16($v0)
    lhu     $a3,18($v0)
    jal     sym_800368e8
    sw      $zero,16($sp)
    jal     sym_8002200c
    sll     $zero,$zero,0x0
    jal     sym_80037908
    sll     $zero,$zero,0x0
    jal     sym_800365c0
    sll     $zero,$zero,0x0
    addu    $a0,$zero,$zero
    jal     sym_80036648
    addu    $a1,$a0,$zero
    jal     sym_80036668
    addiu   $a0,$zero,4096
    lw      $ra,24($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,32
    .end FUN_80022244
    .size FUN_80022244, . - FUN_80022244

/* FUN_800222b4 (0x800222b4, 72 bytes) */
    .section .text.FUN_800222b4,"ax",@progbits
    .globl FUN_800222b4
    .globl sym_80038778
    .globl sym_80038564
    .type FUN_800222b4, @function
    .ent FUN_800222b4
FUN_800222b4:
    addiu   $sp,$sp,-32
    sh      $a0,20($sp)
    addiu   $a0,$sp,16
    addiu   $v0,$zero,480
    addu    $a1,$zero,$zero
    addu    $a2,$a1,$zero
    addu    $a3,$a1,$zero
    sw      $ra,24($sp)
    sh      $zero,16($sp)
    sh      $zero,18($sp)
    jal     sym_80038778
    sh      $v0,22($sp)
    jal     sym_80038564
    addu    $a0,$zero,$zero
    lw      $ra,24($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,32
    .end FUN_800222b4
    .size FUN_800222b4, . - FUN_800222b4

/* FUN_8002283c (0x8002283c, 516 bytes) */
    .section .text.FUN_8002283c,"ax",@progbits
    .globl FUN_8002283c
    .globl sym_800358f8
    .globl sym_8002112c
    .globl sym_8003b1d8
    .globl sym_80038d94
    .globl sym_80038a50
    .type FUN_8002283c, @function
    .ent FUN_8002283c
FUN_8002283c:
    lui     $v1,0x800b
    lw      $v0,-14104($v1)
    addiu   $sp,$sp,-56
    sw      $s1,28($sp)
    addu    $s1,$zero,$zero
    sw      $s0,24($sp)
    addu    $s0,$s1,$zero
    sw      $ra,48($sp)
    sw      $s5,44($sp)
    sw      $s4,40($sp)
    sw      $s3,36($sp)
    sw      $s2,32($sp)
    lw      $v0,100($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x100
    beq     $v0,$zero,.LFUN_8002283c_1e0
    addu    $s2,$s1,$zero
    addu    $s4,$v1,$zero
    lui     $s3,0x800e
    addiu   $s5,$s3,21656
.LFUN_8002283c_50:
    lw      $v0,-14104($s4)
    sll     $zero,$zero,0x0
    lw      $v1,80($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v1,0x1000
    beq     $v0,$zero,.LFUN_8002283c_70
    andi    $v0,$v1,0x4000
    addiu   $s0,$s0,-8
.LFUN_8002283c_70:
    beq     $v0,$zero,.LFUN_8002283c_7c
    andi    $v0,$v1,0x8000
    addiu   $s0,$s0,8
.LFUN_8002283c_7c:
    beq     $v0,$zero,.LFUN_8002283c_88
    andi    $v0,$v1,0x2000
    addiu   $s1,$s1,-8
.LFUN_8002283c_88:
    beq     $v0,$zero,.LFUN_8002283c_94
    sll     $zero,$zero,0x0
    addiu   $s1,$s1,8
.LFUN_8002283c_94:
    jal     sym_800358f8
    addu    $a0,$zero,$zero
    jal     sym_8002112c
    sll     $zero,$zero,0x0
    lw      $v0,-14104($s4)
    sll     $zero,$zero,0x0
    lw      $v0,84($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x800
    beq     $v0,$zero,.LFUN_8002283c_c4
    addiu   $v0,$s2,1
    andi    $s2,$v0,0x3
.LFUN_8002283c_c4:
    addiu   $v0,$zero,1
    beq     $s2,$v0,.LFUN_8002283c_114
    slti    $v0,$s2,2
    beq     $v0,$zero,.LFUN_8002283c_e8
    addiu   $v0,$zero,2
    beq     $s2,$zero,.LFUN_8002283c_f8
    addiu   $v0,$zero,240
    j       .LFUN_8002283c_148
    sw      $v0,16($sp)
.LFUN_8002283c_e8:
    beq     $s2,$v0,.LFUN_8002283c_130
    addiu   $v0,$zero,240
    j       .LFUN_8002283c_148
    sw      $v0,16($sp)
.LFUN_8002283c_f8:
    addiu   $v0,$zero,480
    sw      $v0,16($sp)
    addiu   $a0,$s3,21656
    addu    $a1,$s1,$zero
    addu    $a2,$s0,$zero
    j       .LFUN_8002283c_158
    addiu   $a3,$zero,640
.LFUN_8002283c_114:
    addiu   $v0,$zero,480
    sw      $v0,16($sp)
    addiu   $a0,$s3,21656
    addu    $a1,$s1,$zero
    addu    $a2,$s0,$zero
    j       .LFUN_8002283c_158
    addiu   $a3,$zero,320
.LFUN_8002283c_130:
    sw      $v0,16($sp)
    addiu   $a0,$s3,21656
    addu    $a1,$s1,$zero
    addu    $a2,$s0,$zero
    j       .LFUN_8002283c_158
    addiu   $a3,$zero,320
.LFUN_8002283c_148:
    addiu   $a0,$s3,21656
    addu    $a1,$s1,$zero
    addu    $a2,$s0,$zero
    addiu   $a3,$zero,256
.LFUN_8002283c_158:
    jal     sym_8003b1d8
    sll     $zero,$zero,0x0
    jal     sym_80038d94
    addu    $a0,$s5,$zero
    lw      $v1,-14104($s4)
    sll     $zero,$zero,0x0
    lbu     $v0,9($v1)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_8002283c_194
    sll     $zero,$zero,0x0
    lw      $v0,100($v1)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x100
    beq     $v0,$zero,.LFUN_8002283c_50
    sll     $zero,$zero,0x0
.LFUN_8002283c_194:
    addu    $a0,$s5,$zero
    addu    $a1,$zero,$zero
    lhu     $a3,12($v1)
    lhu     $v0,14($v1)
    addu    $a2,$a1,$zero
    jal     sym_8003b1d8
    sw      $v0,16($sp)
    lw      $v0,-14104($s4)
    sll     $zero,$zero,0x0
    lhu     $v0,16($v0)
    addu    $a0,$s5,$zero
    xori    $v0,$v0,0x1
    sltiu   $v0,$v0,1
    jal     sym_80038d94
    sb      $v0,16($a0)
    lui     $v0,0x800e
    lw      $a0,10984($v0)
    jal     sym_80038a50
    addiu   $a1,$zero,256
.LFUN_8002283c_1e0:
    lw      $ra,48($sp)
    lw      $s5,44($sp)
    lw      $s4,40($sp)
    lw      $s3,36($sp)
    lw      $s2,32($sp)
    lw      $s1,28($sp)
    lw      $s0,24($sp)
    jr      $ra
    addiu   $sp,$sp,56
    .end FUN_8002283c
    .size FUN_8002283c, . - FUN_8002283c

/* FUN_80022a40 (0x80022a40, 184 bytes) */
    .section .text.FUN_80022a40,"ax",@progbits
    .globl FUN_80022a40
    .globl sym_8003fa20
    .type FUN_80022a40, @function
    .ent FUN_80022a40
FUN_80022a40:
    lui     $v0,0x800b
    lw      $v1,-14100($v0)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lw      $v0,108($v1)
    lui     $a1,0x800b
    addiu   $v0,$v0,1
    sw      $v0,108($v1)
    lui     $v1,0x800f
    addiu   $v1,$v1,10376
    lw      $v0,108($v1)
    lw      $a0,-14156($a1)
    addiu   $v0,$v0,1
    bne     $a0,$zero,.LFUN_80022a40_a8
    sw      $v0,108($v1)
    addiu   $v0,$zero,1
    sw      $v0,-14156($a1)
    lui     $v0,0x800e
    lw      $v0,10588($v0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_80022a40_a4
    lui     $v0,0x800b
    lui     $v0,0x800b
    lw      $v1,-14200($v0)
    addiu   $v0,$zero,4
    bne     $v1,$v0,.LFUN_80022a40_a4
    lui     $v0,0x800b
    lui     $v0,0x800e
    lw      $v1,10592($v0)
    sll     $zero,$zero,0x0
    addiu   $v1,$v1,1
    sw      $v1,10592($v0)
    lw      $v0,10592($v0)
    sll     $zero,$zero,0x0
    slti    $v0,$v0,181
    bne     $v0,$zero,.LFUN_80022a40_a4
    lui     $v0,0x800b
    addiu   $a0,$zero,9
    jal     sym_8003fa20
    addu    $a1,$zero,$zero
    lui     $v0,0x800b
.LFUN_80022a40_a4:
    sw      $zero,-14156($v0)
.LFUN_80022a40_a8:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_80022a40
    .size FUN_80022a40, . - FUN_80022a40

/* FUN_80022af8 (0x80022af8, 56 bytes) */
    .section .text.FUN_80022af8,"ax",@progbits
    .globl FUN_80022af8
    .globl sym_8003bbe8
    .globl sym_8003bb68
    .globl sym_8003bbf8
    .type FUN_80022af8, @function
    .ent FUN_80022af8
FUN_80022af8:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_8003bbe8
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $a0,10600($v0)
    jal     sym_8003bb68
    sll     $zero,$zero,0x0
    jal     sym_8003bbf8
    sll     $zero,$zero,0x0
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_80022af8
    .size FUN_80022af8, . - FUN_80022af8

/* FUN_8002324c (0x8002324c, 24 bytes) */
    .section .text.FUN_8002324c,"ax",@progbits
    .globl FUN_8002324c
    .type FUN_8002324c, @function
    .ent FUN_8002324c
FUN_8002324c:
    lui     $v0,0x800b
    lw      $v0,-14104($v0)
    sll     $zero,$zero,0x0
    sh      $a0,44($v0)
    jr      $ra
    sh      $zero,46($v0)
    .end FUN_8002324c
    .size FUN_8002324c, . - FUN_8002324c

/* FUN_80023264 (0x80023264, 16 bytes) */
    .section .text.FUN_80023264,"ax",@progbits
    .globl FUN_80023264
    .type FUN_80023264, @function
    .ent FUN_80023264
FUN_80023264:
    lui     $v0,0x800b
    lw      $v0,-14104($v0)
    jr      $ra
    sh      $a0,46($v0)
    .end FUN_80023264
    .size FUN_80023264, . - FUN_80023264

/* FUN_80023274 (0x80023274, 88 bytes) */
    .section .text.FUN_80023274,"ax",@progbits
    .globl FUN_80023274
    .globl sym_800232cc
    .globl sym_80022b30
    .type FUN_80023274, @function
    .ent FUN_80023274
FUN_80023274:
    lui     $v0,0x800b
    lw      $v0,-14104($v0)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lh      $v1,42($v0)
    sll     $zero,$zero,0x0
    beq     $v1,$zero,.LFUN_80023274_30
    addiu   $v0,$zero,1
    beq     $v1,$v0,.LFUN_80023274_40
    sll     $zero,$zero,0x0
    j       .LFUN_80023274_48
    sll     $zero,$zero,0x0
.LFUN_80023274_30:
    jal     sym_800232cc
    sll     $zero,$zero,0x0
    j       .LFUN_80023274_48
    sll     $zero,$zero,0x0
.LFUN_80023274_40:
    jal     sym_80022b30
    sll     $zero,$zero,0x0
.LFUN_80023274_48:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_80023274
    .size FUN_80023274, . - FUN_80023274

/* FUN_80023374 (0x80023374, 152 bytes) */
    .section .text.FUN_80023374,"ax",@progbits
    .globl FUN_80023374
    .globl sym_8009f820
    .globl sym_800231b0
    .globl sym_8009f390
    .globl sym_80049dec
    .type FUN_80023374, @function
    .ent FUN_80023374
FUN_80023374:
    lui     $v0,0x800b
    lw      $v0,-14104($v0)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lh      $v1,42($v0)
    addiu   $v0,$zero,1
    beq     $v1,$v0,.LFUN_80023374_60
    slti    $v0,$v1,2
    beq     $v0,$zero,.LFUN_80023374_38
    addiu   $v0,$zero,2
    beq     $v1,$zero,.LFUN_80023374_48
    addiu   $a0,$zero,640
    j       .LFUN_80023374_88
    sll     $zero,$zero,0x0
.LFUN_80023374_38:
    beq     $v1,$v0,.LFUN_80023374_80
    sll     $zero,$zero,0x0
    j       .LFUN_80023374_88
    sll     $zero,$zero,0x0
.LFUN_80023374_48:
    jal     sym_8009f820
    addiu   $a1,$zero,480
    jal     sym_800231b0
    sll     $zero,$zero,0x0
    j       .LFUN_80023374_88
    sll     $zero,$zero,0x0
.LFUN_80023374_60:
    jal     sym_8009f390
    sll     $zero,$zero,0x0
    blez    $v0,.LFUN_80023374_88
    sll     $zero,$zero,0x0
    jal     sym_800231b0
    sll     $zero,$zero,0x0
    j       .LFUN_80023374_88
    sll     $zero,$zero,0x0
.LFUN_80023374_80:
    jal     sym_80049dec
    sll     $zero,$zero,0x0
.LFUN_80023374_88:
    lw      $ra,16($sp)
    addiu   $v0,$zero,1
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_80023374
    .size FUN_80023374, . - FUN_80023374

/* FUN_800236d4 (0x800236d4, 112 bytes) */
    .section .text.FUN_800236d4,"ax",@progbits
    .globl FUN_800236d4
    .globl sym_800998d0
    .type FUN_800236d4, @function
    .ent FUN_800236d4
FUN_800236d4:
    lui     $v0,0x800b
    lw      $v1,-14100($v0)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lbu     $v0,188($v1)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_800236d4_60
    addiu   $v0,$zero,3
    lbu     $v0,31($v1)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_800236d4_4c
    lui     $v0,0x800b
    jal     sym_800998d0
    addu    $a0,$zero,$zero
    bne     $v0,$zero,.LFUN_800236d4_4c
    lui     $v0,0x800b
    jal     sym_800998d0
    addiu   $a0,$zero,1
    lui     $v0,0x800b
.LFUN_800236d4_4c:
    lw      $v0,-14100($v0)
    sll     $zero,$zero,0x0
    lbu     $v0,152($v0)
    sll     $zero,$zero,0x0
    sltu    $v0,$zero,$v0
.LFUN_800236d4_60:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_800236d4
    .size FUN_800236d4, . - FUN_800236d4

/* FUN_80023920 (0x80023920, 344 bytes) */
    .section .text.FUN_80023920,"ax",@progbits
    .globl FUN_80023920
    .globl sym_8003b258
    .type FUN_80023920, @function
    .ent FUN_80023920
FUN_80023920:
    addiu   $sp,$sp,-48
    sw      $s1,28($sp)
    addu    $s1,$a2,$zero
    addiu   $a3,$zero,2
    andi    $a0,$a0,0xff
    sw      $ra,44($sp)
    sw      $s4,40($sp)
    sw      $s3,36($sp)
    sw      $s2,32($sp)
    beq     $a0,$zero,.LFUN_80023920_30
    sw      $s0,24($sp)
    addiu   $a3,$zero,1
.LFUN_80023920_30:
    lui     $a2,0x800e
    lui     $s2,0xff
    ori     $s2,$s2,0xffff
    and     $s1,$s1,$s2
    lui     $s4,0x800e
    lw      $a0,22064($a2)
    sll     $s1,$s1,0x2
    addiu   $v0,$a0,16
    sw      $v0,22064($a2)
    addiu   $v0,$zero,3
    sb      $v0,3($a0)
    addiu   $v0,$zero,98
    sb      $v0,7($a0)
    lui     $v0,0x800b
    sb      $a1,4($a0)
    sb      $a1,5($a0)
    sb      $a1,6($a0)
    lw      $v1,-14104($v0)
    lui     $s3,0xff00
    lhu     $v0,12($v1)
    lw      $a1,10984($s4)
    srl     $v0,$v0,0x1
    negu    $v0,$v0
    sh      $v0,8($a0)
    lhu     $v0,14($v1)
    lw      $s0,22064($a2)
    srl     $v0,$v0,0x1
    negu    $v0,$v0
    sh      $v0,10($a0)
    lhu     $v0,12($v1)
    sll     $a3,$a3,0x5
    sh      $v0,12($a0)
    lhu     $v0,14($v1)
    lw      $v1,0($a0)
    addu    $a1,$s1,$a1
    sh      $v0,14($a0)
    lw      $v0,0($a1)
    and     $v1,$v1,$s3
    and     $v0,$v0,$s2
    or      $v1,$v1,$v0
    sw      $v1,0($a0)
    addiu   $v1,$s0,12
    lw      $v0,0($a1)
    and     $a0,$a0,$s2
    sw      $v1,22064($a2)
    addiu   $a2,$zero,1
    and     $v0,$v0,$s3
    or      $v0,$v0,$a0
    addu    $a0,$s0,$zero
    sw      $v0,0($a1)
    addu    $a1,$zero,$zero
    jal     sym_8003b258
    sw      $zero,16($sp)
    lw      $v0,10984($s4)
    lw      $v1,0($s0)
    addu    $s1,$s1,$v0
    lw      $v0,0($s1)
    and     $v1,$v1,$s3
    and     $v0,$v0,$s2
    or      $v1,$v1,$v0
    sw      $v1,0($s0)
    lw      $v0,0($s1)
    and     $s0,$s0,$s2
    and     $v0,$v0,$s3
    or      $v0,$v0,$s0
    sw      $v0,0($s1)
    lw      $ra,44($sp)
    lw      $s4,40($sp)
    lw      $s3,36($sp)
    lw      $s2,32($sp)
    lw      $s1,28($sp)
    lw      $s0,24($sp)
    jr      $ra
    addiu   $sp,$sp,48
    .end FUN_80023920
    .size FUN_80023920, . - FUN_80023920

/* FUN_80023a78 (0x80023a78, 392 bytes) */
    .section .text.FUN_80023a78,"ax",@progbits
    .globl FUN_80023a78
    .type FUN_80023a78, @function
    .ent FUN_80023a78
FUN_80023a78:
    addu    $t5,$a3,$zero
    lw      $a3,16($sp)
    addiu   $v0,$zero,1
    andi    $v1,$a3,0x7f
    beq     $v1,$v0,.LFUN_80023a78_24
    addiu   $v0,$zero,2
    bne     $v1,$v0,.LFUN_80023a78_40
    andi    $v0,$a3,0x80
    addiu   $a0,$a0,4
.LFUN_80023a78_24:
    lui     $v0,0x800b
    lw      $v0,-14104($v0)
    sll     $zero,$zero,0x0
    lb      $v0,193($v0)
    sll     $zero,$zero,0x0
    subu    $a1,$a1,$v0
    andi    $v0,$a3,0x80
.LFUN_80023a78_40:
    beq     $v0,$zero,.LFUN_80023a78_50
    addiu   $t1,$zero,1008
    j       .LFUN_80023a78_54
    addiu   $t0,$zero,99
.LFUN_80023a78_50:
    addiu   $t0,$zero,100
.LFUN_80023a78_54:
    lui     $v0,0x800b
    lui     $t4,0x800e
    lw      $v0,-14104($v0)
    lw      $t3,22064($t4)
    lbu     $v1,144($v0)
    addiu   $v0,$t3,20
    sw      $v0,22064($t4)
    addiu   $v0,$zero,4
    sb      $v0,3($t3)
    andi    $v0,$a2,0xff
    mult    $v0,$v1
    sh      $a0,8($t3)
    sh      $a1,10($t3)
    addiu   $v0,$zero,100
    sb      $v0,7($t3)
    addiu   $v0,$zero,200
    sb      $v0,12($t3)
    sb      $v0,13($t3)
    addiu   $v0,$zero,32
    sh      $v0,16($t3)
    addiu   $v0,$zero,16
    sh      $v0,18($t3)
    mflo    $t6
    sra     $v0,$t6,0x7
    sb      $v0,6($t3)
    sb      $v0,5($t3)
    bgez    $t5,.LFUN_80023a78_d4
    sb      $v0,4($t3)
    lbu     $v0,7($t3)
    sll     $zero,$zero,0x0
    ori     $v0,$v0,0x2
    sb      $v0,7($t3)
.LFUN_80023a78_d4:
    lui     $a3,0xff
    ori     $a3,$a3,0xffff
    lui     $t2,0xe100
    sll     $v0,$t0,0x6
    srl     $v1,$t1,0x4
    or      $v0,$v0,$v1
    and     $a1,$t5,$a3
    lui     $t1,0x800e
    sll     $a1,$a1,0x2
    lw      $a2,10984($t1)
    lw      $v1,0($t3)
    lw      $a0,22064($t4)
    lui     $t0,0xff00
    sh      $v0,14($t3)
    addu    $a2,$a1,$a2
    lw      $v0,0($a2)
    and     $v1,$v1,$t0
    and     $v0,$v0,$a3
    or      $v1,$v1,$v0
    sw      $v1,0($t3)
    lw      $v0,0($a2)
    addiu   $v1,$a0,8
    sw      $v1,22064($t4)
    and     $v1,$t3,$a3
    and     $v0,$v0,$t0
    or      $v0,$v0,$v1
    sw      $v0,0($a2)
    addiu   $v0,$zero,1
    sb      $v0,3($a0)
    lw      $v0,10984($t1)
    lw      $v1,0($a0)
    ori     $t2,$t2,0xe
    sw      $t2,4($a0)
    addu    $a1,$a1,$v0
    lw      $v0,0($a1)
    and     $v1,$v1,$t0
    and     $v0,$v0,$a3
    or      $v1,$v1,$v0
    sw      $v1,0($a0)
    lw      $v0,0($a1)
    and     $a0,$a0,$a3
    and     $v0,$v0,$t0
    or      $v0,$v0,$a0
    jr      $ra
    sw      $v0,0($a1)
    .end FUN_80023a78
    .size FUN_80023a78, . - FUN_80023a78

/* FUN_80023fdc (0x80023fdc, 120 bytes) */
    .section .text.FUN_80023fdc,"ax",@progbits
    .globl FUN_80023fdc
    .type FUN_80023fdc, @function
    .ent FUN_80023fdc
FUN_80023fdc:
    lui     $t0,0xe100
    ori     $t0,$t0,0x80
    lui     $a3,0xff
    lui     $v1,0x800e
    ori     $a3,$a3,0xffff
    or      $a0,$a0,$t0
    and     $a1,$a1,$a3
    lw      $a2,22064($v1)
    sll     $a1,$a1,0x2
    addiu   $v0,$a2,8
    sw      $v0,22064($v1)
    addiu   $v0,$zero,1
    sb      $v0,3($a2)
    lui     $v0,0x800e
    sw      $a0,4($a2)
    lui     $a0,0xff00
    lw      $v0,10984($v0)
    lw      $v1,0($a2)
    addu    $a1,$a1,$v0
    lw      $v0,0($a1)
    and     $v1,$v1,$a0
    and     $v0,$v0,$a3
    or      $v1,$v1,$v0
    sw      $v1,0($a2)
    lw      $v0,0($a1)
    and     $a2,$a2,$a3
    and     $v0,$v0,$a0
    or      $v0,$v0,$a2
    jr      $ra
    sw      $v0,0($a1)
    .end FUN_80023fdc
    .size FUN_80023fdc, . - FUN_80023fdc

/* FUN_80024054 (0x80024054, 160 bytes) */
    .section .text.FUN_80024054,"ax",@progbits
    .globl FUN_80024054
    .globl sym_80023e9c
    .globl sym_80023f68
    .type FUN_80024054, @function
    .ent FUN_80024054
FUN_80024054:
    addiu   $sp,$sp,-56
    lui     $v0,0x800b
    addiu   $v0,$v0,-14064
    sll     $a0,$a0,0x10
    sra     $a0,$a0,0x10
    sll     $a1,$a1,0x10
    sw      $s0,40($sp)
    lbu     $s0,72($sp)
    sra     $a1,$a1,0x10
    sw      $ra,48($sp)
    sw      $s1,44($sp)
    sll     $s0,$s0,0x3
    addu    $s0,$s0,$v0
    lbu     $v0,4($s0)
    lbu     $v1,6($s0)
    lbu     $t0,7($s0)
    andi    $a2,$a2,0xff
    sw      $v0,16($sp)
    lbu     $v0,5($s0)
    sll     $s1,$a3,0x10
    sw      $v0,20($sp)
    lbu     $v0,1($s0)
    sra     $s1,$s1,0x10
    sll     $v0,$v0,0x4
    sw      $v0,24($sp)
    lh      $v0,2($s0)
    addu    $a3,$t0,$zero
    sw      $a2,32($sp)
    addu    $a2,$v1,$zero
    sw      $s1,36($sp)
    jal     sym_80023e9c
    sw      $v0,28($sp)
    lbu     $a0,0($s0)
    jal     sym_80023f68
    addu    $a1,$s1,$zero
    lw      $ra,48($sp)
    lw      $s1,44($sp)
    lw      $s0,40($sp)
    jr      $ra
    addiu   $sp,$sp,56
    .end FUN_80024054
    .size FUN_80024054, . - FUN_80024054

/* FUN_800240f4 (0x800240f4, 168 bytes) */
    .section .text.FUN_800240f4,"ax",@progbits
    .globl FUN_800240f4
    .globl sym_80023e9c
    .globl sym_80023f68
    .type FUN_800240f4, @function
    .ent FUN_800240f4
FUN_800240f4:
    addiu   $sp,$sp,-56
    lui     $v0,0x800b
    addiu   $v0,$v0,-13992
    addiu   $a0,$a0,-8
    sll     $a0,$a0,0x10
    sra     $a0,$a0,0x10
    addiu   $a1,$a1,-8
    sll     $a1,$a1,0x10
    sw      $s1,44($sp)
    lbu     $s1,72($sp)
    sra     $a1,$a1,0x10
    sw      $ra,48($sp)
    sw      $s0,40($sp)
    sll     $s1,$s1,0x3
    addu    $s1,$s1,$v0
    lbu     $v0,4($s1)
    lbu     $v1,6($s1)
    lbu     $t0,7($s1)
    andi    $a2,$a2,0xff
    sw      $v0,16($sp)
    lbu     $v0,5($s1)
    sll     $s0,$a3,0x10
    sw      $v0,20($sp)
    lbu     $v0,1($s1)
    sra     $s0,$s0,0x10
    sll     $v0,$v0,0x4
    sw      $v0,24($sp)
    lh      $v0,2($s1)
    addu    $a3,$t0,$zero
    sw      $a2,32($sp)
    addu    $a2,$v1,$zero
    sw      $s0,36($sp)
    jal     sym_80023e9c
    sw      $v0,28($sp)
    lbu     $a0,0($s1)
    jal     sym_80023f68
    addu    $a1,$s0,$zero
    lw      $ra,48($sp)
    lw      $s1,44($sp)
    lw      $s0,40($sp)
    jr      $ra
    addiu   $sp,$sp,56
    .end FUN_800240f4
    .size FUN_800240f4, . - FUN_800240f4

/* FUN_8002419c (0x8002419c, 144 bytes) */
    .section .text.FUN_8002419c,"ax",@progbits
    .globl FUN_8002419c
    .globl sym_80023e9c
    .globl sym_80023f68
    .type FUN_8002419c, @function
    .ent FUN_8002419c
FUN_8002419c:
    addiu   $sp,$sp,-56
    sll     $a0,$a0,0x10
    sra     $a0,$a0,0x10
    sll     $a1,$a1,0x10
    sw      $s1,44($sp)
    lw      $s1,72($sp)
    sra     $a1,$a1,0x10
    sw      $ra,48($sp)
    sw      $s0,40($sp)
    lbu     $v0,4($s1)
    lbu     $v1,6($s1)
    lbu     $t0,7($s1)
    andi    $a2,$a2,0xff
    sw      $v0,16($sp)
    lbu     $v0,5($s1)
    sll     $s0,$a3,0x10
    sw      $v0,20($sp)
    lbu     $v0,1($s1)
    sra     $s0,$s0,0x10
    sll     $v0,$v0,0x4
    sw      $v0,24($sp)
    lh      $v0,2($s1)
    addu    $a3,$t0,$zero
    sw      $a2,32($sp)
    addu    $a2,$v1,$zero
    sw      $s0,36($sp)
    jal     sym_80023e9c
    sw      $v0,28($sp)
    lbu     $a0,0($s1)
    jal     sym_80023f68
    addu    $a1,$s0,$zero
    lw      $ra,48($sp)
    lw      $s1,44($sp)
    lw      $s0,40($sp)
    jr      $ra
    addiu   $sp,$sp,56
    .end FUN_8002419c
    .size FUN_8002419c, . - FUN_8002419c

/* FUN_80024fdc (0x80024fdc, 2164 bytes) */
    .section .text.FUN_80024fdc,"ax",@progbits
    .globl FUN_80024fdc
    .globl sym_80028d90
    .globl sym_800294d4
    .globl sym_80029480
    .globl sym_80028dec
    .globl sym_80029084
    .globl sym_8002a300
    .globl sym_800286e4
    .globl sym_8002a1b0
    .globl sym_80024ca4
    .globl sym_80029390
    .globl sym_8002915c
    .globl sym_8002a3fc
    .globl sym_80025c1c
    .globl sym_8002f11c
    .globl sym_8002821c
    .globl sym_80028894
    .globl sym_8002a438
    .globl sym_8002ef5c
    .globl sym_8002ed4c
    .globl sym_8002eeec
    .globl sym_800292e8
    .globl sym_80028d3c
    .type FUN_80024fdc, @function
    .ent FUN_80024fdc
FUN_80024fdc:
    addiu   $s4,$zero,1
    beq     $v1,$s4,.LFUN_80024fdc_7c
    addiu   $v0,$zero,2
    bne     $v1,$v0,.LFUN_80024fdc_850
    sll     $zero,$zero,0x0
    lw      $a0,264($s1)
    lw      $s0,268($s1)
    jal     sym_80028d90
    sll     $zero,$zero,0x0
    addiu   $v1,$zero,-16
    lw      $v0,12($s2)
    and     $s0,$s0,$v1
    sw      $s0,28($s2)
    addu    $v0,$v0,$s0
    jal     sym_800294d4
    sw      $v0,36($s2)
    lw      $a0,36($s2)
    lw      $a1,16($s2)
    sll     $zero,$zero,0x0
    subu    $a1,$a1,$a0
    jal     sym_80029480
    srl     $a1,$a1,0x4
    addiu   $a0,$zero,2
    sw      $s4,14184($s5)
    jal     sym_80028dec
    sw      $zero,4($s2)
    addu    $a0,$zero,$zero
    jal     sym_80029084
    addu    $a1,$a0,$zero
    j       .LFUN_80024fdc_850
    sll     $zero,$zero,0x0
.LFUN_80024fdc_7c:
    lui     $a1,0xff
    ori     $a1,$a1,0xffff
    lui     $s0,0x800e
    addiu   $s0,$s0,11184
    lui     $a2,0x800b
    lw      $v1,264($s1)
    addiu   $a2,$a2,-8872
    sb      $zero,76($s0)
    addiu   $v1,$v1,-52
    sll     $v0,$v1,0x1
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a2
    sw      $v1,72($s3)
    lw      $v0,0($v0)
    addu    $a0,$zero,$zero
    and     $v0,$v0,$a1
    addiu   $v0,$v0,-24
    sw      $v0,12($s0)
    sw      $v0,20($s0)
    sll     $v0,$v1,0x1
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a2
    lw      $v0,4($v0)
    lw      $v1,72($s3)
    and     $v0,$v0,$a1
    sw      $v0,16($s0)
    sll     $v0,$v1,0x1
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a2
    lbu     $v0,7($v0)
    lw      $v1,72($s3)
    addu    $a1,$a0,$zero
    sb      $v0,41($s0)
    sll     $v0,$v1,0x1
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a2
    lbu     $v1,3($v0)
    addiu   $v0,$zero,5
    sw      $v0,14184($s5)
    sw      $zero,4($s2)
    jal     sym_8002a300
    sb      $v1,40($s0)
    addiu   $a0,$zero,2
    sw      $zero,48($s0)
    j       .LFUN_80024fdc_848
    sw      $zero,52($s0)
    lui     $s2,0x800e
    addiu   $s1,$s2,14184
    lhu     $a0,142($s1)
    jal     sym_800286e4
    addiu   $s3,$zero,1
    addu    $s0,$v0,$zero
    beq     $s0,$s3,.LFUN_80024fdc_364
    addiu   $v0,$zero,2
    bne     $s0,$v0,.LFUN_80024fdc_850
    sll     $zero,$zero,0x0
    jal     sym_8002a1b0
    addu    $a0,$zero,$zero
    sltiu   $v0,$v0,301
    bne     $v0,$zero,.LFUN_80024fdc_25c
    lui     $a2,0x51eb
    lw      $v1,20($s1)
    lui     $v0,0x8888
    ori     $v0,$v0,0x8889
    multu   $v1,$v0
    lui     $v0,0x800e
    lw      $a1,15148($v0)
    mfhi    $a3
    lw      $v1,28($s1)
    srl     $v0,$a3,0x5
    mult    $v0,$v1
    ori     $a2,$a2,0x851f
    srl     $v1,$v1,0x4
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$v1
    sll     $v0,$v0,0x5
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    mflo    $t0
    addu    $v0,$v0,$v1
    sllv    $v0,$v0,$s3
    multu   $v0,$a2
    addiu   $a0,$zero,127
    sb      $zero,140($s1)
    sb      $s3,116($s1)
    srl     $v1,$t0,0x4
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$v1
    sll     $v0,$v0,0x5
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    mfhi    $a3
    addu    $v0,$v0,$v1
    sllv    $v0,$v0,$s3
    multu   $v0,$a2
    lui     $a2,0x800e
    srl     $v1,$a3,0x5
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x3
    subu    $v0,$v0,$v1
    sll     $v0,$v0,0x4
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x4
    sw      $v0,14520($a2)
    addiu   $a2,$a2,14520
    mfhi    $t0
    srl     $v0,$t0,0x5
    jal     sym_80029084
    sw      $v0,4($a2)
    j       .LFUN_80024fdc_784
    sll     $zero,$zero,0x0
.LFUN_80024fdc_25c:
    lw      $v0,14184($s2)
    sll     $zero,$zero,0x0
    bne     $v0,$s0,.LFUN_80024fdc_850
    sll     $zero,$zero,0x0
    jal     sym_80024ca4
    sll     $zero,$zero,0x0
    lw      $v1,20($s1)
    lui     $v0,0x8888
    ori     $v0,$v0,0x8889
    multu   $v1,$v0
    lui     $a3,0x51eb
    ori     $a3,$a3,0x851f
    lui     $v0,0x800e
    mfhi    $v1
    srl     $a2,$v1,0x5
    lw      $v1,28($s1)
    lw      $a1,15148($v0)
    mult    $a2,$v1
    addiu   $v0,$zero,3
    sb      $s3,116($s1)
    sw      $v0,14184($s2)
    srl     $v1,$v1,0x4
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$v1
    sll     $v0,$v0,0x5
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    mflo    $a2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x1
    multu   $v0,$a3
    addiu   $a0,$zero,127
    sw      $zero,4($s1)
    srl     $v1,$a2,0x4
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$v1
    sll     $v0,$v0,0x5
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    mfhi    $t0
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x1
    multu   $v0,$a3
    lui     $a2,0x800e
    srl     $v1,$t0,0x5
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x3
    subu    $v0,$v0,$v1
    sll     $v0,$v0,0x4
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x4
    sw      $v0,14520($a2)
    addiu   $a2,$a2,14520
    mfhi    $a3
    srl     $v0,$a3,0x5
    jal     sym_80029084
    sw      $v0,4($a2)
    jal     sym_80028dec
    addiu   $a0,$zero,5
    j       .LFUN_80024fdc_850
    sb      $zero,140($s1)
.LFUN_80024fdc_364:
    lw      $v1,14184($s2)
    addiu   $v0,$zero,6
    bne     $v1,$v0,.LFUN_80024fdc_850
    sll     $zero,$zero,0x0
    jal     sym_80028dec
    addiu   $a0,$zero,5
    addiu   $a0,$zero,127
    lui     $v0,0x800e
    lw      $a1,15148($v0)
    addiu   $v0,$zero,7
    sw      $v0,14184($s2)
    jal     sym_8002a300
    sw      $zero,4($s1)
    j       .LFUN_80024fdc_850
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lhu     $a0,14326($v0)
    jal     sym_800286e4
    sll     $zero,$zero,0x0
    addu    $v1,$v0,$zero
    addiu   $v0,$zero,1
    beq     $v1,$v0,.LFUN_80024fdc_3dc
    addiu   $v0,$zero,2
    bne     $v1,$v0,.LFUN_80024fdc_850
    lui     $v0,0x800e
    lw      $a1,15148($v0)
    jal     sym_80029084
    addu    $a0,$zero,$zero
    j       .LFUN_80024fdc_848
    addiu   $a0,$zero,4
.LFUN_80024fdc_3dc:
    lui     $v0,0x800e
    lw      $a1,15148($v0)
    jal     sym_8002a300
    addu    $a0,$zero,$zero
    j       .LFUN_80024fdc_848
    addiu   $a0,$zero,4
    lui     $s1,0x800e
    addiu   $s0,$s1,14184
    lhu     $a0,142($s0)
    jal     sym_800286e4
    sll     $zero,$zero,0x0
    addu    $v1,$v0,$zero
    addiu   $v0,$zero,1
    beq     $v1,$v0,.LFUN_80024fdc_464
    addiu   $v0,$zero,2
    bne     $v1,$v0,.LFUN_80024fdc_850
    sll     $zero,$zero,0x0
    jal     sym_8002a1b0
    addiu   $a0,$zero,1
    sltiu   $v0,$v0,301
    bne     $v0,$zero,.LFUN_80024fdc_44c
    sll     $zero,$zero,0x0
    jal     sym_80029390
    sll     $zero,$zero,0x0
    addiu   $a0,$zero,6
    sw      $zero,14184($s1)
    j       .LFUN_80024fdc_848
    sw      $zero,4($s0)
.LFUN_80024fdc_44c:
    jal     sym_8002915c
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_80024fdc_850
    addiu   $a0,$zero,6
    j       .LFUN_80024fdc_848
    sll     $zero,$zero,0x0
.LFUN_80024fdc_464:
    jal     sym_8002a1b0
    addiu   $a0,$zero,1
    sltiu   $v0,$v0,301
    beq     $v0,$zero,.LFUN_80024fdc_848
    addiu   $a0,$zero,6
    jal     sym_8002a3fc
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_80024fdc_850
    addiu   $a0,$zero,6
    j       .LFUN_80024fdc_848
    sll     $zero,$zero,0x0
    lui     $s0,0x800e
    addiu   $v0,$s0,14184
    lhu     $a0,142($v0)
    jal     sym_800286e4
    addiu   $s1,$zero,1
    addu    $v1,$v0,$zero
    beq     $v1,$s1,.LFUN_80024fdc_524
    addiu   $v0,$zero,2
    bne     $v1,$v0,.LFUN_80024fdc_850
    sll     $zero,$zero,0x0
    jal     sym_8002a1b0
    addiu   $a0,$zero,4
    sltiu   $v0,$v0,1801
    bne     $v0,$zero,.LFUN_80024fdc_4d4
    sll     $zero,$zero,0x0
    jal     sym_80025c1c
    addiu   $a0,$zero,3
.LFUN_80024fdc_4d4:
    lw      $v1,14184($s0)
    addiu   $v0,$zero,3
    bne     $v1,$v0,.LFUN_80024fdc_508
    sll     $zero,$zero,0x0
    jal     sym_8002f11c
    lui     $a0,0x80
    beq     $v0,$s1,.LFUN_80024fdc_508
    sll     $zero,$zero,0x0
    jal     sym_8002821c
    sll     $zero,$zero,0x0
    sltiu   $v0,$v0,76
    beq     $v0,$zero,.LFUN_80024fdc_514
    addiu   $v0,$zero,1
.LFUN_80024fdc_508:
    jal     sym_80028894
    sll     $zero,$zero,0x0
    sltu    $v0,$zero,$v0
.LFUN_80024fdc_514:
    beq     $v0,$zero,.LFUN_80024fdc_850
    addiu   $a0,$zero,6
    j       .LFUN_80024fdc_848
    sll     $zero,$zero,0x0
.LFUN_80024fdc_524:
    lui     $v0,0x800e
    lbu     $v0,11260($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_80024fdc_850
    sll     $zero,$zero,0x0
    jal     sym_8002a438
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0xff
    beq     $v0,$zero,.LFUN_80024fdc_850
    addiu   $a0,$zero,6
    j       .LFUN_80024fdc_848
    sll     $zero,$zero,0x0
    lui     $s1,0x800e
    addiu   $s0,$s1,14184
    lhu     $a0,142($s0)
    jal     sym_800286e4
    sll     $zero,$zero,0x0
    addu    $v1,$v0,$zero
    addiu   $v0,$zero,1
    beq     $v1,$v0,.LFUN_80024fdc_5bc
    addiu   $v0,$zero,2
    bne     $v1,$v0,.LFUN_80024fdc_850
    addu    $a0,$zero,$zero
    jal     sym_8002ef5c
    lui     $a1,0xc0
    jal     sym_8002ed4c
    addu    $a0,$zero,$zero
    jal     sym_8002eeec
    addu    $a0,$zero,$zero
    addiu   $a0,$zero,7
    addiu   $v0,$zero,4
    sw      $zero,36($s0)
    sw      $zero,16($s0)
    sw      $zero,12($s0)
    sb      $zero,116($s0)
    sw      $v0,14184($s1)
    j       .LFUN_80024fdc_848
    sw      $zero,4($s0)
.LFUN_80024fdc_5bc:
    jal     sym_80028dec
    addiu   $a0,$zero,7
    addiu   $v0,$zero,8
    sw      $v0,14184($s1)
    j       .LFUN_80024fdc_850
    sw      $zero,4($s0)
    lui     $s0,0x800e
    addiu   $v0,$s0,14184
    lhu     $a0,142($v0)
    jal     sym_800286e4
    sll     $zero,$zero,0x0
    addu    $v1,$v0,$zero
    addiu   $v0,$zero,1
    beq     $v1,$v0,.LFUN_80024fdc_648
    addiu   $v0,$zero,2
    bne     $v1,$v0,.LFUN_80024fdc_850
    sll     $zero,$zero,0x0
    jal     sym_8002a1b0
    addu    $a0,$v0,$zero
    sltiu   $v0,$v0,301
    bne     $v0,$zero,.LFUN_80024fdc_630
    sll     $zero,$zero,0x0
    jal     sym_800294d4
    sll     $zero,$zero,0x0
    jal     sym_80029390
    sll     $zero,$zero,0x0
    addu    $a0,$zero,$zero
    jal     sym_8002ef5c
    lui     $a1,0xc0
.LFUN_80024fdc_630:
    lw      $v0,14184($s0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_80024fdc_850
    addu    $a0,$zero,$zero
    j       .LFUN_80024fdc_848
    sll     $zero,$zero,0x0
.LFUN_80024fdc_648:
    lw      $v0,14184($s0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_80024fdc_850
    addu    $a0,$zero,$zero
    j       .LFUN_80024fdc_848
    sll     $zero,$zero,0x0
    lui     $s2,0x800e
    addiu   $s1,$s2,14184
    lw      $a0,16($s1)
    lw      $v0,12($s1)
    sll     $zero,$zero,0x0
    subu    $a0,$a0,$v0
    jal     sym_800292e8
    srl     $a0,$a0,0x4
    jal     sym_80028d3c
    addu    $s0,$v0,$zero
    sltu    $s0,$s0,$v0
    beq     $s0,$zero,.LFUN_80024fdc_69c
    sll     $zero,$zero,0x0
    jal     sym_80028dec
    addiu   $a0,$zero,6
.LFUN_80024fdc_69c:
    addu    $a0,$zero,$zero
    jal     sym_8002ef5c
    lui     $a1,0xc0
    jal     sym_8002ed4c
    addu    $a0,$zero,$zero
    jal     sym_8002eeec
    addu    $a0,$zero,$zero
    lw      $a0,8($s1)
    lw      $s0,124($s1)
    jal     sym_80028d90
    sll     $zero,$zero,0x0
    addiu   $v1,$zero,-16
    lw      $v0,12($s1)
    and     $s0,$s0,$v1
    sw      $s0,28($s1)
    addu    $v0,$v0,$s0
    jal     sym_800294d4
    sw      $v0,36($s1)
    lw      $a0,36($s1)
    lw      $a1,16($s1)
    sll     $zero,$zero,0x0
    subu    $a1,$a1,$a0
    jal     sym_80029480
    srl     $a1,$a1,0x4
    addiu   $a0,$zero,9
    addiu   $v0,$zero,1
    sw      $v0,14184($s2)
    j       .LFUN_80024fdc_848
    sw      $zero,4($s1)
    lui     $s2,0x800e
    addiu   $s1,$s2,14184
    lw      $a0,16($s1)
    lw      $v0,12($s1)
    sll     $zero,$zero,0x0
    subu    $a0,$a0,$v0
    jal     sym_800292e8
    srl     $a0,$a0,0x4
    jal     sym_80028d3c
    addu    $s0,$v0,$zero
    sltu    $s0,$s0,$v0
    beq     $s0,$zero,.LFUN_80024fdc_74c
    sll     $zero,$zero,0x0
    jal     sym_80028dec
    addiu   $a0,$zero,6
.LFUN_80024fdc_74c:
    lw      $v1,14184($s2)
    addiu   $v0,$zero,2
    beq     $v1,$v0,.LFUN_80024fdc_794
    lui     $v0,0x800e
    lw      $v1,14520($v0)
    lui     $v0,0xd1b7
    ori     $v0,$v0,0x1759
    multu   $v1,$v0
    lw      $v0,120($s1)
    mfhi    $t1
    srl     $v1,$t1,0xd
    sltu    $v0,$v0,$v1
    beq     $v0,$zero,.LFUN_80024fdc_850
    sll     $zero,$zero,0x0
.LFUN_80024fdc_784:
    jal     sym_80025c1c
    addiu   $a0,$zero,3
    j       .LFUN_80024fdc_850
    sll     $zero,$zero,0x0
.LFUN_80024fdc_794:
    lui     $a3,0x800e
    lw      $a2,14520($a3)
    lui     $v0,0xd1b7
    ori     $v0,$v0,0x1759
    multu   $a2,$v0
    lw      $a1,120($s1)
    mfhi    $t1
    srl     $v1,$t1,0xd
    sltu    $v0,$a1,$v1
    beq     $v0,$zero,.LFUN_80024fdc_850
    addiu   $a0,$zero,1
    subu    $v0,$v1,$a1
    sll     $v1,$v0,0x2
    addu    $v1,$v1,$v0
    sll     $v1,$v1,0x3
    subu    $v1,$v1,$v0
    sll     $v1,$v1,0x4
    addu    $v1,$v1,$v0
    sll     $v1,$v1,0x4
    subu    $v1,$a2,$v1
    jal     sym_8002ed4c
    sw      $v1,14520($a3)
    jal     sym_80024ca4
    sll     $zero,$zero,0x0
    addiu   $a0,$zero,5
    addiu   $v0,$zero,3
    sw      $v0,14184($s2)
    j       .LFUN_80024fdc_848
    sw      $zero,4($s1)
    lui     $v0,0x800e
    addiu   $v0,$v0,14184
    lw      $a0,16($v0)
    lw      $v0,12($v0)
    sll     $zero,$zero,0x0
    subu    $a0,$a0,$v0
    jal     sym_800292e8
    srl     $a0,$a0,0x4
    jal     sym_80028d3c
    addu    $s0,$v0,$zero
    sltu    $s0,$s0,$v0
    beq     $s0,$zero,.LFUN_80024fdc_848
    addiu   $a0,$zero,8
    jal     sym_80028dec
    addiu   $a0,$zero,6
    addiu   $a0,$zero,8
.LFUN_80024fdc_848:
    jal     sym_80028dec
    sll     $zero,$zero,0x0
.LFUN_80024fdc_850:
    lw      $ra,40($sp)
    lw      $s5,36($sp)
    lw      $s4,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,48
    .end FUN_80024fdc
    .size FUN_80024fdc, . - FUN_80024fdc

/* FUN_80025d44 (0x80025d44, 448 bytes) */
    .section .text.FUN_80025d44,"ax",@progbits
    .globl FUN_80025d44
    .globl sym_8003fa20
    .globl sym_8003f8d0
    .globl sym_8003f8bc
    .globl sym_8003fd44
    .type FUN_80025d44, @function
    .ent FUN_80025d44
FUN_80025d44:
    addiu   $sp,$sp,-32
    addiu   $a1,$zero,5
    sw      $ra,24($sp)
    sw      $s1,20($sp)
    bne     $a0,$a1,.LFUN_80025d44_84
    sw      $s0,16($sp)
    lui     $v0,0x800e
    addiu   $s1,$v0,14768
    lw      $v1,12($s1)
    addiu   $v0,$zero,4
    bne     $v1,$v0,.LFUN_80025d44_54
    lui     $a0,0x8002
    addiu   $a0,$zero,9
    jal     sym_8003fa20
    addu    $a1,$zero,$zero
    lw      $v0,44($s1)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,1
    sw      $v0,44($s1)
    j       .LFUN_80025d44_1ac
    sll     $zero,$zero,0x0
.LFUN_80025d44_54:
    addiu   $a0,$a0,23876
    addiu   $v0,$zero,1
    sw      $zero,12($s1)
    sw      $v0,12($s1)
    lw      $v0,44($s1)
    lw      $v1,28($s1)
    lw      $a1,32($s1)
    lw      $s0,24($s1)
    addiu   $v0,$v0,1
    sw      $v0,44($s1)
    j       .LFUN_80025d44_184
    sll     $zero,$zero,0x0
.LFUN_80025d44_84:
    addiu   $v0,$zero,2
    bne     $a0,$v0,.LFUN_80025d44_1ac
    lui     $v0,0x800e
    addiu   $s1,$v0,14768
    lw      $v1,12($s1)
    sll     $zero,$zero,0x0
    beq     $v1,$a0,.LFUN_80025d44_e8
    sltiu   $v0,$v1,3
    beq     $v0,$zero,.LFUN_80025d44_bc
    addiu   $v0,$zero,1
    beq     $v1,$v0,.LFUN_80025d44_d8
    addiu   $a0,$zero,14
    j       .LFUN_80025d44_1ac
    sll     $zero,$zero,0x0
.LFUN_80025d44_bc:
    addiu   $v0,$zero,3
    beq     $v1,$v0,.LFUN_80025d44_118
    addiu   $v0,$zero,4
    beq     $v1,$v0,.LFUN_80025d44_12c
    sll     $zero,$zero,0x0
    j       .LFUN_80025d44_1ac
    sll     $zero,$zero,0x0
.LFUN_80025d44_d8:
    addiu   $a1,$s1,20
    addiu   $v0,$zero,160
    j       .LFUN_80025d44_fc
    sb      $v0,20($s1)
.LFUN_80025d44_e8:
    lui     $a0,0x8002
    jal     sym_8003f8d0
    addiu   $a0,$a0,24324
    addiu   $a0,$zero,6
    addu    $a1,$zero,$zero
.LFUN_80025d44_fc:
    jal     sym_8003fa20
    sll     $zero,$zero,0x0
    lw      $v0,12($s1)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,1
    j       .LFUN_80025d44_1ac
    sw      $v0,12($s1)
.LFUN_80025d44_118:
    sw      $v0,12($s1)
    sw      $zero,36($s1)
    sw      $zero,40($s1)
    j       .LFUN_80025d44_1ac
    sll     $zero,$zero,0x0
.LFUN_80025d44_12c:
    lw      $v0,16($s1)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_80025d44_168
    lui     $a0,0x8002
    addu    $a0,$zero,$zero
    jal     sym_8003f8bc
    sw      $a1,12($s1)
    lui     $v0,0x800b
    sw      $zero,-14196($v0)
    lui     $v0,0x800b
    lui     $v1,0x800b
    sw      $zero,-14192($v0)
    addiu   $v0,$zero,1
    j       .LFUN_80025d44_1ac
    sw      $v0,-7048($v1)
.LFUN_80025d44_168:
    addiu   $a0,$a0,23876
    lw      $v1,28($s1)
    lw      $a1,32($s1)
    lw      $s0,24($s1)
    addiu   $v0,$zero,1
    sw      $zero,12($s1)
    sw      $v0,12($s1)
.LFUN_80025d44_184:
    sw      $v1,16($s1)
    jal     sym_8003f8bc
    sw      $a1,4($s1)
    addu    $a0,$s0,$zero
    addu    $a1,$s1,$zero
    jal     sym_8003fd44
    sw      $a0,8($s1)
    addiu   $a0,$zero,2
    jal     sym_8003fa20
    addu    $a1,$s1,$zero
.LFUN_80025d44_1ac:
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end FUN_80025d44
    .size FUN_80025d44, . - FUN_80025d44

/* FUN_80025f04 (0x80025f04, 300 bytes) */
    .section .text.FUN_80025f04,"ax",@progbits
    .globl FUN_80025f04
    .globl sym_8003fcc0
    .globl sym_8003fe48
    .globl sym_8003f8d0
    .globl sym_8003fa20
    .type FUN_80025f04, @function
    .ent FUN_80025f04
FUN_80025f04:
    addiu   $sp,$sp,-48
    lui     $v0,0x800e
    sw      $s0,32($sp)
    addiu   $s0,$v0,14768
    sw      $ra,44($sp)
    sw      $s2,40($sp)
    sw      $s1,36($sp)
    lw      $v0,40($s0)
    addu    $s1,$zero,$zero
    addiu   $v0,$v0,1
    sw      $v0,40($s0)
    addiu   $v0,$zero,1
    bne     $a0,$v0,.LFUN_80025f04_e0
    addiu   $a0,$sp,16
    jal     sym_8003fcc0
    addiu   $a1,$zero,3
    jal     sym_8003fe48
    addiu   $a0,$sp,16
    lui     $v1,0x800b
    lw      $v1,-7044($v1)
    sll     $zero,$zero,0x0
    bne     $v1,$zero,.LFUN_80025f04_70
    addu    $a2,$v0,$zero
    lw      $v0,8($s0)
    sll     $zero,$zero,0x0
    xor     $v0,$v0,$a2
    j       .LFUN_80025f04_80
    sltu    $s1,$s1,$v0
.LFUN_80025f04_70:
    addiu   $v0,$v1,1
    beq     $a2,$v0,.LFUN_80025f04_84
    addiu   $a1,$zero,512
    addiu   $s1,$zero,1
.LFUN_80025f04_80:
    addiu   $a1,$zero,512
.LFUN_80025f04_84:
    lui     $s0,0x800e
    addiu   $s0,$s0,14768
    lw      $a0,4($s0)
    lui     $s2,0x800b
    jal     sym_8003fcc0
    sw      $a2,-7044($s2)
    lw      $v0,16($s0)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,-1
    sw      $v0,16($s0)
    lw      $v0,4($s0)
    lw      $v1,16($s0)
    addiu   $v0,$v0,2048
    bne     $v1,$zero,.LFUN_80025f04_e4
    sw      $v0,4($s0)
    sw      $zero,-7044($s2)
    jal     sym_8003f8d0
    addu    $a0,$zero,$zero
    addiu   $a0,$zero,9
    jal     sym_8003fa20
    addu    $a1,$zero,$zero
    j       .LFUN_80025f04_e4
    sll     $zero,$zero,0x0
.LFUN_80025f04_e0:
    addiu   $s1,$zero,1
.LFUN_80025f04_e4:
    beq     $s1,$zero,.LFUN_80025f04_114
    lui     $v0,0x800b
    sw      $zero,-7044($v0)
    lui     $v0,0x800e
    addiu   $v0,$v0,14768
    addiu   $v1,$zero,-1
    sw      $v1,16($v0)
    jal     sym_8003f8d0
    addu    $a0,$zero,$zero
    addiu   $a0,$zero,9
    jal     sym_8003fa20
    addu    $a1,$zero,$zero
.LFUN_80025f04_114:
    lw      $ra,44($sp)
    lw      $s2,40($sp)
    lw      $s1,36($sp)
    lw      $s0,32($sp)
    jr      $ra
    addiu   $sp,$sp,48
    .end FUN_80025f04
    .size FUN_80025f04, . - FUN_80025f04

/* FUN_80026030 (0x80026030, 316 bytes) */
    .section .text.FUN_80026030,"ax",@progbits
    .globl FUN_80026030
    .globl sym_8003bac8
    .globl sym_8002ef5c
    .globl sym_8002ed4c
    .globl sym_8002eeec
    .globl sym_80029788
    .globl sym_800294d4
    .globl sym_8003f8bc
    .globl sym_8003f8d0
    .globl sym_8003fa20
    .type FUN_80026030, @function
    .ent FUN_80026030
FUN_80026030:
    addiu   $sp,$sp,-48
    sw      $s0,32($sp)
    lui     $s0,0x800e
    addiu   $s0,$s0,14888
    addu    $a0,$s0,$zero
    sw      $ra,44($sp)
    sw      $s2,40($sp)
    sw      $s1,36($sp)
    lw      $a2,256($s0)
    lw      $a3,260($s0)
    lw      $t0,264($s0)
    lw      $t1,268($s0)
    sw      $a2,16($sp)
    sw      $a3,20($sp)
    sw      $t0,24($sp)
    sw      $t1,28($sp)
    jal     sym_8003bac8
    addiu   $a1,$zero,276
    addu    $a0,$zero,$zero
    lw      $a2,16($sp)
    lw      $a3,20($sp)
    lw      $t0,24($sp)
    lw      $t1,28($sp)
    sw      $a2,256($s0)
    sw      $a3,260($s0)
    sw      $t0,264($s0)
    sw      $t1,268($s0)
    jal     sym_8002ef5c
    lui     $a1,0xc0
    addu    $a0,$zero,$zero
    lui     $v0,0x800e
    jal     sym_8002ed4c
    sw      $zero,14296($v0)
    jal     sym_8002eeec
    addu    $a0,$zero,$zero
    lui     $s2,0x800e
    addiu   $s0,$s2,14184
    sw      $zero,36($s0)
    sw      $zero,16($s0)
    sw      $zero,12($s0)
    sb      $zero,116($s0)
    sw      $zero,14184($s2)
    sw      $zero,112($s0)
    jal     sym_80029788
    sw      $zero,4($s0)
    lui     $s1,0x800e
    addiu   $s1,$s1,14768
    lui     $v1,0x800b
    addiu   $v0,$zero,1
    sw      $zero,16($s1)
    sw      $v0,-7048($v1)
    lw      $v1,16($s1)
    lui     $v0,0x800b
    sw      $v1,-14192($v0)
    lw      $v1,-14192($v0)
    lui     $v0,0x800b
    sw      $v1,-14196($v0)
    jal     sym_80029788
    sll     $zero,$zero,0x0
    jal     sym_800294d4
    sll     $zero,$zero,0x0
    jal     sym_8003f8bc
    addu    $a0,$zero,$zero
    jal     sym_8003f8d0
    addu    $a0,$zero,$zero
    addiu   $a0,$zero,9
    jal     sym_8003fa20
    addu    $a1,$zero,$zero
    addiu   $v0,$zero,5
    sw      $v0,12($s1)
    sw      $zero,4($s0)
    sw      $zero,14184($s2)
    sw      $zero,112($s0)
    lw      $ra,44($sp)
    lw      $s2,40($sp)
    lw      $s1,36($sp)
    lw      $s0,32($sp)
    jr      $ra
    addiu   $sp,$sp,48
    .end FUN_80026030
    .size FUN_80026030, . - FUN_80026030

/* FUN_800265ac (0x800265ac, 916 bytes) */
    .section .text.FUN_800265ac,"ax",@progbits
    .globl FUN_800265ac
    .globl sym_800297c4
    .globl sym_80028b00
    .globl sym_8002f20c
    .globl sym_8002f29c
    .globl sym_8002f1ac
    .globl sym_8002f42c
    .globl sym_8002ef5c
    .globl sym_8002f11c
    .type FUN_800265ac, @function
    .ent FUN_800265ac
FUN_800265ac:
    addiu   $v0,$v0,14296
    lbu     $v0,1($s3)
    j       .LFUN_800265ac_374
    addiu   $v0,$v0,1
    lw      $v1,-112($v0)
    addiu   $v0,$zero,1
    beq     $v1,$v0,.LFUN_800265ac_378
    addu    $a1,$zero,$zero
    lui     $v0,0x800e
    addiu   $v0,$v0,14680
    lbu     $v1,34($v0)
    sll     $zero,$zero,0x0
    beq     $v1,$zero,.LFUN_800265ac_68
    addu    $a0,$a1,$zero
    addiu   $a3,$zero,2
    addu    $a2,$v1,$zero
    addu    $v1,$v0,$zero
.LFUN_800265ac_44:
    lbu     $v0,0($v1)
    sll     $zero,$zero,0x0
    bne     $v0,$a3,.LFUN_800265ac_58
    sll     $zero,$zero,0x0
    addiu   $a0,$a0,1
.LFUN_800265ac_58:
    addiu   $a1,$a1,1
    sltu    $v0,$a1,$a2
    bne     $v0,$zero,.LFUN_800265ac_44
    addiu   $v1,$v1,8
.LFUN_800265ac_68:
    sltiu   $v0,$a0,3
    bne     $v0,$zero,.LFUN_800265ac_378
    lui     $v0,0x800e
    lbu     $v1,1($s3)
    addiu   $a0,$zero,1
    sb      $a0,14713($v0)
    addiu   $v1,$v1,1
    j       .LFUN_800265ac_378
    sb      $v1,1($s3)
    jal     sym_800297c4
    sll     $zero,$zero,0x0
    lui     $t0,0x800b
    lhu     $a1,20($s3)
    lw      $a0,16($s3)
    lw      $v0,-14196($t0)
    lw      $a2,4($s3)
    beq     $v0,$zero,.LFUN_800265ac_b8
    lui     $v0,0x800e
    j       .LFUN_800265ac_10c
    addiu   $v0,$zero,-1
.LFUN_800265ac_b8:
    addiu   $a3,$v0,14768
    lw      $v0,16($a3)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_800265ac_10c
    addiu   $v0,$zero,-1
    beq     $a0,$zero,.LFUN_800265ac_10c
    sll     $zero,$zero,0x0
    sw      $a1,16($a3)
    lw      $v1,16($a3)
    lui     $v0,0x800b
    sw      $zero,12($a3)
    sw      $a0,24($a3)
    sw      $a1,28($a3)
    sw      $a2,32($a3)
    sw      $v1,-14192($v0)
    lw      $v1,-14192($v0)
    lui     $v0,0x800b
    sw      $zero,-7048($v0)
    sw      $v1,-14196($t0)
    jal     sym_80028b00
    sll     $zero,$zero,0x0
.LFUN_800265ac_10c:
    bne     $v0,$zero,.LFUN_800265ac_378
    sll     $zero,$zero,0x0
    lbu     $v0,1($s3)
    j       .LFUN_800265ac_374
    addiu   $v0,$v0,1
    lui     $v0,0x800b
    lw      $v0,-7048($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_800265ac_378
    lui     $v1,0x800e
    lbu     $v0,1($s3)
    j       .LFUN_800265ac_370
    sb      $zero,14713($v1)
    jal     sym_800297c4
    sll     $zero,$zero,0x0
    lw      $v0,4($s3)
    sh      $zero,22($s3)
    lw      $v0,16($v0)
    sll     $zero,$zero,0x0
    srl     $v1,$v0,0x8
    andi    $v1,$v1,0xff00
    srl     $v0,$v0,0x18
    addu    $v1,$v1,$v0
    sll     $a0,$v1,0xc
    lui     $v0,0xbe37
    ori     $v0,$v0,0xc63b
    multu   $a0,$v0
    sw      $v1,12($s3)
    lw      $v1,4($s3)
    lw      $a0,8($s3)
    mfhi    $t1
    srl     $v0,$t1,0xf
    sh      $v0,24($s3)
    lui     $v0,0x800e
    addiu   $s0,$v0,14824
    lw      $v0,20($s0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_800265ac_1b0
    addiu   $v1,$v1,48
    j       .LFUN_800265ac_210
    addiu   $a0,$zero,-1
.LFUN_800265ac_1b0:
    ori     $v0,$zero,0x8000
    sw      $v0,12($s0)
    addiu   $v0,$zero,1
    sw      $v1,4($s0)
    sw      $a0,8($s0)
    sw      $zero,16($s0)
    jal     sym_8002f20c
    sw      $v0,20($s0)
    lw      $v1,8($s0)
    sll     $zero,$zero,0x0
    bne     $v0,$v1,.LFUN_800265ac_210
    addiu   $a0,$zero,-2
    lui     $a0,0x8003
    jal     sym_8002f29c
    addiu   $a0,$a0,-30976
    lw      $a0,4($s0)
    lw      $a1,12($s0)
    jal     sym_8002f1ac
    sll     $zero,$zero,0x0
    lw      $v1,12($s0)
    sll     $zero,$zero,0x0
    beq     $v0,$v1,.LFUN_800265ac_210
    addu    $a0,$zero,$zero
    addiu   $a0,$zero,-3
.LFUN_800265ac_210:
    bne     $a0,$zero,.LFUN_800265ac_378
    sll     $zero,$zero,0x0
    lbu     $v0,1($s3)
    j       .LFUN_800265ac_374
    addiu   $v0,$v0,1
    lui     $v0,0x800e
    lw      $v0,14840($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_800265ac_378
    sll     $zero,$zero,0x0
    lhu     $v1,2($s3)
    lbu     $v0,1($s3)
    sh      $v1,22($s3)
    lbu     $v1,0($s3)
    addiu   $v0,$v0,1
    sb      $v0,1($s3)
    addiu   $v0,$zero,2
    bne     $v1,$v0,.LFUN_800265ac_378
    sll     $zero,$zero,0x0
    lhu     $v0,2($s3)
    sb      $zero,0($s3)
    sb      $zero,1($s3)
    addiu   $v0,$v0,-8192
    sh      $v0,2($s3)
    j       .LFUN_800265ac_378
    sh      $v0,22($s3)
    lbu     $v0,1($s3)
    j       .LFUN_800265ac_374
    addiu   $v0,$v0,1
    lui     $v1,0x1
    ori     $v1,$v1,0xff9f
    lui     $v0,0x800e
    addiu   $a0,$v0,11008
    lui     $s2,0x20
    addiu   $s0,$zero,8191
    sw      $v1,4($a0)
    sw      $s2,11008($v0)
    addiu   $v0,$zero,7936
    sh      $s0,8($a0)
    sh      $s0,10($a0)
    sh      $v0,8($a0)
    sh      $v0,10($a0)
    addiu   $v0,$zero,1
    sh      $zero,12($a0)
    sh      $zero,14($a0)
    sw      $v0,36($a0)
    sw      $v0,40($a0)
    lhu     $v1,24($s3)
    lw      $v0,8($s3)
    addiu   $s1,$zero,3
    sw      $s1,44($a0)
    sh      $zero,48($a0)
    sh      $zero,50($a0)
    sh      $zero,52($a0)
    sh      $zero,54($a0)
    sh      $zero,56($a0)
    sh      $v1,20($a0)
    sw      $v0,28($a0)
    jal     sym_8002f42c
    sw      $v0,32($a0)
    addiu   $a0,$zero,1
    jal     sym_8002ef5c
    addu    $a1,$s2,$zero
    lui     $v0,0x800e
    addiu   $a0,$v0,11072
    sw      $s1,4($a0)
    sw      $s2,11072($v0)
    addiu   $v0,$zero,9525
    sh      $s0,8($a0)
    sh      $s0,10($a0)
    sh      $v0,8($a0)
    jal     sym_8002f42c
    sh      $v0,10($a0)
    lbu     $v0,1($s3)
    j       .LFUN_800265ac_374
    addiu   $v0,$v0,1
    lbu     $v0,1($s3)
    j       .LFUN_800265ac_374
    addiu   $v0,$v0,1
    jal     sym_8002f11c
    lui     $a0,0x20
    addiu   $v1,$zero,1
    beq     $v0,$v1,.LFUN_800265ac_378
    sll     $zero,$zero,0x0
    jal     sym_800297c4
    sll     $zero,$zero,0x0
    lbu     $v0,1($s3)
    sb      $zero,0($s3)
.LFUN_800265ac_370:
    addiu   $v0,$v0,1
.LFUN_800265ac_374:
    sb      $v0,1($s3)
.LFUN_800265ac_378:
    lw      $ra,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end FUN_800265ac
    .size FUN_800265ac, . - FUN_800265ac

/* FUN_800282fc (0x800282fc, 16 bytes) */
    .section .text.FUN_800282fc,"ax",@progbits
    .globl FUN_800282fc
    .type FUN_800282fc, @function
    .ent FUN_800282fc
FUN_800282fc:
    lui     $v0,0x800e
    lw      $v0,14296($v0)
    jr      $ra
    sltu    $v0,$zero,$v0
    .end FUN_800282fc
    .size FUN_800282fc, . - FUN_800282fc

/* FUN_8002830c (0x8002830c, 48 bytes) */
    .section .text.FUN_8002830c,"ax",@progbits
    .globl FUN_8002830c
    .globl FUN_8002833c
    .globl FUN_80028350
    .type FUN_8002830c, @function
    .ent FUN_8002830c
FUN_8002830c:
    andi    $a0,$a0,0xffff
    addiu   $v0,$zero,1
    beq     $a0,$v0,.LFUN_8002830c_20
    addiu   $v0,$zero,2
    beq     $a0,$v0,FUN_8002833c
    addu    $v0,$zero,$zero
    j       FUN_80028350
    sll     $zero,$zero,0x0
.LFUN_8002830c_20:
    lui     $v0,0x800e
    lhu     $v0,14350($v0)
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8002830c
    .size FUN_8002830c, . - FUN_8002830c

/* FUN_8002833c (0x8002833c, 20 bytes) */
    .section .text.FUN_8002833c,"ax",@progbits
    .globl FUN_8002833c
    .type FUN_8002833c, @function
    .ent FUN_8002833c
FUN_8002833c:
    lui     $v0,0x800e
    addiu   $v0,$v0,14768
    lw      $v0,16($v0)
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8002833c
    .size FUN_8002833c, . - FUN_8002833c

/* FUN_80028350 (0x80028350, 8 bytes) */
    .section .text.FUN_80028350,"ax",@progbits
    .globl FUN_80028350
    .type FUN_80028350, @function
    .ent FUN_80028350
FUN_80028350:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_80028350
    .size FUN_80028350, . - FUN_80028350

/* FUN_800284a4 (0x800284a4, 100 bytes) */
    .section .text.FUN_800284a4,"ax",@progbits
    .globl FUN_800284a4
    .globl FUN_80029bd8
    .globl FUN_80029e70
    .globl FUN_8002a06c
    .globl sym_8002fc2c
    .globl FUN_8002fddc
    .type FUN_800284a4, @function
    .ent FUN_800284a4
FUN_800284a4:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    addu    $v1,$zero,$zero
    lui     $v0,0x800e
    addiu   $a0,$v0,14728
    addu    $v0,$v1,$a0
.LFUN_800284a4_18:
    sb      $zero,0($v0)
    addiu   $v1,$v1,1
    sltiu   $v0,$v1,36
    bne     $v0,$zero,.LFUN_800284a4_18
    addu    $v0,$v1,$a0
    jal     FUN_80029bd8
    sll     $zero,$zero,0x0
    jal     FUN_80029e70
    sll     $zero,$zero,0x0
    jal     FUN_8002a06c
    sll     $zero,$zero,0x0
    jal     sym_8002fc2c
    sll     $zero,$zero,0x0
    jal     FUN_8002fddc
    sll     $zero,$zero,0x0
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_800284a4
    .size FUN_800284a4, . - FUN_800284a4

/* FUN_80028508 (0x80028508, 128 bytes) */
    .section .text.FUN_80028508,"ax",@progbits
    .globl FUN_80028508
    .globl FUN_80029bd8
    .globl FUN_80029e70
    .globl FUN_8002a06c
    .globl sym_8002a100
    .globl sym_80029c40
    .type FUN_80028508, @function
    .ent FUN_80028508
FUN_80028508:
    addiu   $sp,$sp,-32
    addu    $v1,$zero,$zero
    lui     $v0,0x800e
    addiu   $a0,$v0,14728
    lui     $v0,0x800e
    sw      $s1,20($sp)
    lw      $s1,14536($v0)
    addiu   $v0,$v0,14536
    sw      $ra,24($sp)
    sw      $s0,16($sp)
    lw      $s0,4($v0)
    addu    $v0,$v1,$a0
.LFUN_80028508_30:
    sb      $zero,0($v0)
    addiu   $v1,$v1,1
    sltiu   $v0,$v1,36
    bne     $v0,$zero,.LFUN_80028508_30
    addu    $v0,$v1,$a0
    jal     FUN_80029bd8
    sll     $zero,$zero,0x0
    jal     FUN_80029e70
    sll     $zero,$zero,0x0
    jal     FUN_8002a06c
    sll     $zero,$zero,0x0
    jal     sym_8002a100
    addu    $a0,$s0,$zero
    jal     sym_80029c40
    addu    $a0,$s1,$zero
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end FUN_80028508
    .size FUN_80028508, . - FUN_80028508

/* FUN_80028660 (0x80028660, 92 bytes) */
    .section .text.FUN_80028660,"ax",@progbits
    .globl FUN_80028660
    .globl sym_8002f3a0
    .type FUN_80028660, @function
    .ent FUN_80028660
FUN_80028660:
    addiu   $sp,$sp,-48
    sw      $s0,40($sp)
    addu    $s0,$zero,$zero
    sw      $ra,44($sp)
    jal     sym_8002f3a0
    addiu   $a0,$sp,16
    addu    $v1,$s0,$zero
    addiu   $a0,$sp,16
    addu    $v0,$a0,$v1
.LFUN_80028660_24:
    lbu     $v0,0($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_80028660_38
    sll     $zero,$zero,0x0
    addiu   $s0,$s0,1
.LFUN_80028660_38:
    addiu   $v1,$v1,1
    slti    $v0,$v1,20
    bne     $v0,$zero,.LFUN_80028660_24
    addu    $v0,$a0,$v1
    addu    $v0,$s0,$zero
    lw      $ra,44($sp)
    lw      $s0,40($sp)
    jr      $ra
    addiu   $sp,$sp,48
    .end FUN_80028660
    .size FUN_80028660, . - FUN_80028660

/* FUN_80028788 (0x80028788, 88 bytes) */
    .section .text.FUN_80028788,"ax",@progbits
    .globl FUN_80028788
    .globl sym_800246d0
    .globl sym_800287e0
    .globl sym_800277d8
    .globl sym_80027ac4
    .globl sym_80027c20
    .type FUN_80028788, @function
    .ent FUN_80028788
FUN_80028788:
    jal     sym_800246d0
    sll     $zero,$zero,0x0
    j       .LFUN_80028788_48
    sll     $zero,$zero,0x0
    jal     sym_800287e0
    sll     $zero,$zero,0x0
    j       .LFUN_80028788_48
    sll     $zero,$zero,0x0
    jal     sym_800277d8
    sll     $zero,$zero,0x0
    j       .LFUN_80028788_48
    sll     $zero,$zero,0x0
    jal     sym_80027ac4
    sll     $zero,$zero,0x0
    j       .LFUN_80028788_48
    sll     $zero,$zero,0x0
    jal     sym_80027c20
    sll     $zero,$zero,0x0
.LFUN_80028788_48:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_80028788
    .size FUN_80028788, . - FUN_80028788

/* FUN_800288dc (0x800288dc, 176 bytes) */
    .section .text.FUN_800288dc,"ax",@progbits
    .globl FUN_800288dc
    .globl sym_8002ed4c
    .globl sym_80028aac
    .globl sym_80028a8c
    .type FUN_800288dc, @function
    .ent FUN_800288dc
FUN_800288dc:
    addiu   $sp,$sp,-32
    addu    $a0,$zero,$zero
    sw      $ra,28($sp)
    sw      $s2,24($sp)
    sw      $s1,20($sp)
    jal     sym_8002ed4c
    sw      $s0,16($sp)
    lui     $v0,0x800e
    addiu   $s2,$v0,14184
    lui     $v1,0x800b
    lw      $v0,44($s2)
    addiu   $s0,$zero,1
    sw      $s0,-7064($v1)
    addu    $v0,$v0,$s0
    jal     sym_80028aac
    sw      $v0,44($s2)
    lui     $s1,0x800b
    lw      $v1,-7060($s1)
    sll     $zero,$zero,0x0
    bne     $v1,$s0,.LFUN_800288dc_6c
    addiu   $v0,$zero,2
    sw      $v0,-7060($s1)
    lw      $v0,44($s2)
    lui     $v1,0x800e
    addiu   $v0,$v0,10
    j       .LFUN_800288dc_98
    sw      $v0,11136($v1)
.LFUN_800288dc_6c:
    bne     $v1,$v0,.LFUN_800288dc_98
    lui     $v0,0x800e
    lw      $v1,44($s2)
    lw      $v0,11136($v0)
    sll     $zero,$zero,0x0
    sltu    $v0,$v0,$v1
    beq     $v0,$zero,.LFUN_800288dc_98
    sll     $zero,$zero,0x0
    jal     sym_80028a8c
    sll     $zero,$zero,0x0
    sw      $zero,-7060($s1)
.LFUN_800288dc_98:
    lw      $ra,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end FUN_800288dc
    .size FUN_800288dc, . - FUN_800288dc

/* FUN_8002898c (0x8002898c, 68 bytes) */
    .section .text.FUN_8002898c,"ax",@progbits
    .globl FUN_8002898c
    .globl sym_8002ed4c
    .globl sym_800289f4
    .type FUN_8002898c, @function
    .ent FUN_8002898c
FUN_8002898c:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_8002ed4c
    addu    $a0,$zero,$zero
    lui     $a0,0x800e
    addiu   $a0,$a0,14184
    lui     $a1,0x800b
    lw      $v0,136($a0)
    addiu   $v1,$zero,1
    sw      $v1,-7060($a1)
    addu    $v0,$v0,$v1
    jal     sym_800289f4
    sw      $v0,136($a0)
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8002898c
    .size FUN_8002898c, . - FUN_8002898c

/* FUN_80028b7c (0x80028b7c, 136 bytes) */
    .section .text.FUN_80028b7c,"ax",@progbits
    .globl FUN_80028b7c
    .globl sym_80028b00
    .type FUN_80028b7c, @function
    .ent FUN_80028b7c
FUN_80028b7c:
    lui     $t0,0x800b
    lw      $v0,-14196($t0)
    addiu   $sp,$sp,-24
    bne     $v0,$zero,.LFUN_80028b7c_74
    sw      $ra,16($sp)
    lui     $v0,0x800e
    addiu   $a3,$v0,14768
    lw      $v0,16($a3)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_80028b7c_78
    addiu   $v0,$zero,-1
    beq     $a0,$zero,.LFUN_80028b7c_78
    sll     $zero,$zero,0x0
    sw      $a1,16($a3)
    lw      $v1,16($a3)
    lui     $v0,0x800b
    sw      $zero,12($a3)
    sw      $a0,24($a3)
    sw      $a1,28($a3)
    sw      $a2,32($a3)
    sw      $v1,-14192($v0)
    lw      $v1,-14192($v0)
    lui     $v0,0x800b
    sw      $zero,-7048($v0)
    sw      $v1,-14196($t0)
    jal     sym_80028b00
    sll     $zero,$zero,0x0
    j       .LFUN_80028b7c_78
    sll     $zero,$zero,0x0
.LFUN_80028b7c_74:
    addiu   $v0,$zero,-1
.LFUN_80028b7c_78:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_80028b7c
    .size FUN_80028b7c, . - FUN_80028b7c

/* FUN_800296ac (0x800296ac, 84 bytes) */
    .section .text.FUN_800296ac,"ax",@progbits
    .globl FUN_800296ac
    .type FUN_800296ac, @function
    .ent FUN_800296ac
FUN_800296ac:
    addu    $a1,$zero,$zero
    lui     $v0,0x800e
    addiu   $v0,$v0,14680
    lbu     $v1,34($v0)
    sll     $zero,$zero,0x0
    beq     $v1,$zero,.LFUN_800296ac_4c
    addu    $a0,$a1,$zero
    addiu   $a3,$zero,2
    addu    $a2,$v1,$zero
    addu    $v1,$v0,$zero
.LFUN_800296ac_28:
    lbu     $v0,0($v1)
    sll     $zero,$zero,0x0
    bne     $v0,$a3,.LFUN_800296ac_3c
    sll     $zero,$zero,0x0
    addiu   $a0,$a0,1
.LFUN_800296ac_3c:
    addiu   $a1,$a1,1
    sltu    $v0,$a1,$a2
    bne     $v0,$zero,.LFUN_800296ac_28
    addiu   $v1,$v1,8
.LFUN_800296ac_4c:
    jr      $ra
    addu    $v0,$a0,$zero
    .end FUN_800296ac
    .size FUN_800296ac, . - FUN_800296ac

/* FUN_80029700 (0x80029700, 16 bytes) */
    .section .text.FUN_80029700,"ax",@progbits
    .globl FUN_80029700
    .type FUN_80029700, @function
    .ent FUN_80029700
FUN_80029700:
    lui     $v1,0x800e
    addiu   $v0,$zero,1
    jr      $ra
    sb      $v0,14713($v1)
    .end FUN_80029700
    .size FUN_80029700, . - FUN_80029700

/* FUN_80029710 (0x80029710, 12 bytes) */
    .section .text.FUN_80029710,"ax",@progbits
    .globl FUN_80029710
    .type FUN_80029710, @function
    .ent FUN_80029710
FUN_80029710:
    lui     $v0,0x800e
    jr      $ra
    sb      $zero,14713($v0)
    .end FUN_80029710
    .size FUN_80029710, . - FUN_80029710

/* FUN_8002971c (0x8002971c, 16 bytes) */
    .section .text.FUN_8002971c,"ax",@progbits
    .globl FUN_8002971c
    .type FUN_8002971c, @function
    .ent FUN_8002971c
FUN_8002971c:
    addiu   $v0,$zero,2
    sb      $v0,1($a0)
    jr      $ra
    sb      $v0,17($a0)
    .end FUN_8002971c
    .size FUN_8002971c, . - FUN_8002971c

/* FUN_8002972c (0x8002972c, 12 bytes) */
    .section .text.FUN_8002972c,"ax",@progbits
    .globl FUN_8002972c
    .type FUN_8002972c, @function
    .ent FUN_8002972c
FUN_8002972c:
    addiu   $v0,$zero,6
    jr      $ra
    sb      $v0,1($a0)
    .end FUN_8002972c
    .size FUN_8002972c, . - FUN_8002972c

/* FUN_80029738 (0x80029738, 12 bytes) */
    .section .text.FUN_80029738,"ax",@progbits
    .globl FUN_80029738
    .type FUN_80029738, @function
    .ent FUN_80029738
FUN_80029738:
    addiu   $v0,$zero,2
    jr      $ra
    sb      $v0,16369($a0)
    .end FUN_80029738
    .size FUN_80029738, . - FUN_80029738

/* FUN_80029744 (0x80029744, 12 bytes) */
    .section .text.FUN_80029744,"ax",@progbits
    .globl FUN_80029744
    .type FUN_80029744, @function
    .ent FUN_80029744
FUN_80029744:
    addiu   $v0,$zero,3
    jr      $ra
    sb      $v0,16369($a0)
    .end FUN_80029744
    .size FUN_80029744, . - FUN_80029744

/* FUN_80029bd8 (0x80029bd8, 104 bytes) */
    .section .text.FUN_80029bd8,"ax",@progbits
    .globl FUN_80029bd8
    .globl sym_80032048
    .globl sym_8003bac8
    .type FUN_80029bd8, @function
    .ent FUN_80029bd8
FUN_80029bd8:
    addiu   $sp,$sp,-32
    sw      $s1,20($sp)
    addu    $s1,$zero,$zero
    lui     $v0,0x800e
    sw      $s2,24($sp)
    addiu   $s2,$v0,14360
    sw      $ra,28($sp)
    sw      $s0,16($sp)
    addu    $s0,$s1,$zero
.LFUN_80029bd8_24:
    jal     sym_80032048
    andi    $a0,$s0,0xff
    andi    $s0,$s0,0xff
    sll     $s0,$s0,0x3
    addu    $a0,$s0,$s2
    jal     sym_8003bac8
    addiu   $a1,$zero,8
    addiu   $s1,$s1,1
    sltiu   $v0,$s1,20
    bne     $v0,$zero,.LFUN_80029bd8_24
    addu    $s0,$s1,$zero
    lw      $ra,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end FUN_80029bd8
    .size FUN_80029bd8, . - FUN_80029bd8

/* FUN_80029e70 (0x80029e70, 96 bytes) */
    .section .text.FUN_80029e70,"ax",@progbits
    .globl FUN_80029e70
    .globl sym_80034b7c
    .type FUN_80029e70, @function
    .ent FUN_80029e70
FUN_80029e70:
    addiu   $sp,$sp,-32
    sw      $s1,20($sp)
    addu    $s1,$zero,$zero
    lui     $v0,0x800e
    sw      $s0,16($sp)
    addiu   $s0,$v0,14872
    sw      $ra,24($sp)
.LFUN_80029e70_1c:
    lw      $v0,0($s0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_80029e70_38
    sll     $zero,$zero,0x0
    sll     $a0,$s1,0x10
    jal     sym_80034b7c
    sra     $a0,$a0,0x10
.LFUN_80029e70_38:
    sw      $zero,0($s0)
    addiu   $s1,$s1,1
    sltiu   $v0,$s1,3
    bne     $v0,$zero,.LFUN_80029e70_1c
    addiu   $s0,$s0,4
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end FUN_80029e70
    .size FUN_80029e70, . - FUN_80029e70

/* FUN_8002a06c (0x8002a06c, 76 bytes) */
    .section .text.FUN_8002a06c,"ax",@progbits
    .globl FUN_8002a06c
    .globl sym_8003bac8
    .type FUN_8002a06c, @function
    .ent FUN_8002a06c
FUN_8002a06c:
    addiu   $sp,$sp,-32
    sw      $s1,20($sp)
    addu    $s1,$zero,$zero
    lui     $v0,0x800e
    sw      $s0,16($sp)
    addiu   $s0,$v0,14360
    sw      $ra,24($sp)
.LFUN_8002a06c_1c:
    addu    $a0,$s0,$zero
    jal     sym_8003bac8
    addiu   $a1,$zero,8
    addiu   $s1,$s1,1
    sltiu   $v0,$s1,20
    bne     $v0,$zero,.LFUN_8002a06c_1c
    addiu   $s0,$s0,8
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end FUN_8002a06c
    .size FUN_8002a06c, . - FUN_8002a06c

/* FUN_8002a46c (0x8002a46c, 92 bytes) */
    .section .text.FUN_8002a46c,"ax",@progbits
    .globl FUN_8002a46c
    .globl sym_8003bac8
    .globl sym_8002a670
    .globl sym_8002a5a8
    .type FUN_8002a46c, @function
    .ent FUN_8002a46c
FUN_8002a46c:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    lui     $s0,0x800e
    addiu   $s0,$s0,11184
    addu    $a0,$s0,$zero
    sw      $ra,20($sp)
    jal     sym_8003bac8
    addiu   $a1,$zero,116
    jal     sym_8002a670
    addiu   $s0,$s0,88
    bne     $v0,$zero,.LFUN_8002a46c_38
    sll     $zero,$zero,0x0
    j       .LFUN_8002a46c_44
    sw      $zero,12($s0)
.LFUN_8002a46c_38:
    sw      $zero,12($s0)
    jal     sym_8002a5a8
    addu    $a0,$zero,$zero
.LFUN_8002a46c_44:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    lui     $v0,0x800e
    sw      $zero,11284($v0)
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8002a46c
    .size FUN_8002a46c, . - FUN_8002a46c

/* FUN_8002a6e8 (0x8002a6e8, 16 bytes) */
    .section .text.FUN_8002a6e8,"ax",@progbits
    .globl FUN_8002a6e8
    .type FUN_8002a6e8, @function
    .ent FUN_8002a6e8
FUN_8002a6e8:
    lui     $v0,0x800e
    lw      $v0,14524($v0)
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8002a6e8
    .size FUN_8002a6e8, . - FUN_8002a6e8

/* FUN_8002a6f8 (0x8002a6f8, 16 bytes) */
    .section .text.FUN_8002a6f8,"ax",@progbits
    .globl FUN_8002a6f8
    .type FUN_8002a6f8, @function
    .ent FUN_8002a6f8
FUN_8002a6f8:
    lui     $v0,0x800e
    lhu     $v0,14350($v0)
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8002a6f8
    .size FUN_8002a6f8, . - FUN_8002a6f8

/* FUN_8002a708 (0x8002a708, 124 bytes) */
    .section .text.FUN_8002a708,"ax",@progbits
    .globl FUN_8002a708
    .globl sym_80029b94
    .globl sym_8002a0b8
    .globl sym_80029850
    .globl sym_80029920
    .type FUN_8002a708, @function
    .ent FUN_8002a708
FUN_8002a708:
    addiu   $sp,$sp,-32
    sw      $s0,24($sp)
    addu    $s0,$a0,$zero
    sw      $ra,28($sp)
    jal     sym_80029b94
    addiu   $a0,$zero,19
    addiu   $a0,$zero,19
    andi    $a1,$s0,0xffff
    addu    $a2,$zero,$zero
    addiu   $v0,$zero,100
    addiu   $a3,$zero,1
    jal     sym_8002a0b8
    sw      $v0,16($sp)
    jal     sym_80029850
    addiu   $a0,$zero,19
    addu    $s0,$v0,$zero
    lhu     $a0,0($s0)
    lbu     $a2,6($s0)
    jal     sym_80029920
    addiu   $a1,$zero,19
    bne     $v0,$zero,.LFUN_8002a708_60
    addiu   $v0,$zero,2
    j       .LFUN_8002a708_68
    sh      $v0,4($s0)
.LFUN_8002a708_60:
    jal     sym_80029b94
    addiu   $a0,$zero,19
.LFUN_8002a708_68:
    lw      $ra,28($sp)
    lw      $s0,24($sp)
    addu    $v0,$zero,$zero
    jr      $ra
    addiu   $sp,$sp,32
    .end FUN_8002a708
    .size FUN_8002a708, . - FUN_8002a708

/* FUN_8002a784 (0x8002a784, 32 bytes) */
    .section .text.FUN_8002a784,"ax",@progbits
    .globl FUN_8002a784
    .globl sym_80029b94
    .type FUN_8002a784, @function
    .ent FUN_8002a784
FUN_8002a784:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_80029b94
    addiu   $a0,$zero,19
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8002a784
    .size FUN_8002a784, . - FUN_8002a784

/* FUN_8002a80c (0x8002a80c, 32 bytes) */
    .section .text.FUN_8002a80c,"ax",@progbits
    .globl FUN_8002a80c
    .type FUN_8002a80c, @function
    .ent FUN_8002a80c
FUN_8002a80c:
    lw      $a1,16($a0)
    lw      $a0,4($a0)
    sll     $zero,$zero,0x0
.L8002a80c_loop:
    sw      $zero,0($a0)
    bne     $a0,$a1,.L8002a80c_loop
    addiu   $a0,$a0,4
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8002a80c
    .size FUN_8002a80c, . - FUN_8002a80c

/* FUN_8002a82c (0x8002a82c, 132 bytes) */
    .section .text.FUN_8002a82c,"ax",@progbits
    .globl FUN_8002a82c
    .type FUN_8002a82c, @function
    .ent FUN_8002a82c
FUN_8002a82c:
    lw      $t4,16($a0)
    lw      $a0,4($a0)
    lw      $a1,4($a1)
    lui     $t2,0x8000
    lui     $t5,0x00ff
    ori     $t5,$t5,0xffff
    addiu   $a1,$a1,32
.L8002a82c_next:
    lw      $v0,0($a0)
    sw      $zero,0($a0)
    beq     $v0,$zero,.L8002a82c_advance
    or      $v0,$v0,$t2
.L8002a82c_inner:
    lw      $t6,0($v0)
    lui     $t0,0xf000
    lui     $t1,0x0fff
    ori     $t1,$t1,0xffff
    and     $t0,$t0,$t6
    and     $t6,$t1,$t6
    srl     $t3,$t0,26
    addu    $t3,$a1,$t3
    lw      $t0,0($t3)
    and     $v0,$v0,$t5
    srl     $t7,$t6,24
    sll     $t7,$t7,24
    or      $t0,$t0,$t7
    sw      $t0,0($v0)
    sw      $v0,0($t3)
    and     $t0,$t6,$t5
    bne     $t0,$zero,.L8002a82c_inner
    or      $v0,$t0,$t2
.L8002a82c_advance:
    bne     $a0,$t4,.L8002a82c_next
    addiu   $a0,$a0,4
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8002a82c
    .size FUN_8002a82c, . - FUN_8002a82c

/* FUN_8002a8b0 (0x8002a8b0, 8 bytes) */
    .section .text.FUN_8002a8b0,"ax",@progbits
    .globl FUN_8002a8b0
    .type FUN_8002a8b0, @function
    .ent FUN_8002a8b0
FUN_8002a8b0:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8002a8b0
    .size FUN_8002a8b0, . - FUN_8002a8b0

/* FUN_8002a8b8 (0x8002a8b8, 292 bytes) */
    .section .text.FUN_8002a8b8,"ax",@progbits
    .globl FUN_8002a8b8
    .type FUN_8002a8b8, @function
    .ent FUN_8002a8b8
FUN_8002a8b8:
    addu    $t2,$a1,$zero
.LFUN_8002a8b8_04:
    lbu     $t1,0($a0)
    addiu   $a0,$a0,1
    addu    $t0,$zero,$zero
    andi    $v0,$t1,0x1
.LFUN_8002a8b8_14:
    bne     $v0,$zero,.LFUN_8002a8b8_30
    sll     $zero,$zero,0x0
    lbu     $v0,0($a0)
    addiu   $a0,$a0,1
    sb      $v0,0($a1)
    j       0x8002a9b8
    addiu   $a1,$a1,1
.LFUN_8002a8b8_30:
    lbu     $a3,0($a0)
    sll     $zero,$zero,0x0
    andi    $v0,$a3,0x80
    bne     $v0,$zero,.LFUN_8002a8b8_88
    addiu   $a0,$a0,1
    lbu     $v1,0($a0)
    addiu   $a0,$a0,1
    srl     $v0,$a3,2
    addiu   $a2,$v0,3
    andi    $v0,$a3,0x3
    sll     $v0,$v0,8
    or      $v0,$v0,$v1
    beq     $a2,$zero,.LFUN_8002a8b8_100
    subu    $v1,$a1,$v0
.LFUN_8002a8b8_68:
    lbu     $v0,0($v1)
    addiu   $v1,$v1,1
    addiu   $a2,$a2,-1
    sb      $v0,0($a1)
    bne     $a2,$zero,.LFUN_8002a8b8_68
    addiu   $a1,$a1,1
    j       0x8002a9bc
    srl     $t1,$t1,1
.LFUN_8002a8b8_88:
    andi    $v0,$a3,0x40
    bne     $v0,$zero,.LFUN_8002a8b8_d4
    addiu   $v0,$zero,255
    andi    $v0,$a3,0xf
    addiu   $v0,$v0,1
    subu    $v1,$a1,$v0
    srl     $v0,$a3,4
    andi    $v0,$v0,0x3
    addiu   $a2,$v0,2
    beq     $a2,$zero,.LFUN_8002a8b8_100
    sll     $zero,$zero,0x0
.LFUN_8002a8b8_b4:
    lbu     $v0,0($v1)
    addiu   $v1,$v1,1
    addiu   $a2,$a2,-1
    sb      $v0,0($a1)
    bne     $a2,$zero,.LFUN_8002a8b8_b4
    addiu   $a1,$a1,1
    j       0x8002a9bc
    srl     $t1,$t1,1
.LFUN_8002a8b8_d4:
    beq     $a3,$v0,.LFUN_8002a8b8_11c
    andi    $v0,$a3,0x3f
    addiu   $a2,$v0,8
    beq     $a2,$zero,.LFUN_8002a8b8_100
    sll     $zero,$zero,0x0
.LFUN_8002a8b8_e8:
    lbu     $v0,0($a0)
    addiu   $a0,$a0,1
    addiu   $a2,$a2,-1
    sb      $v0,0($a1)
    bne     $a2,$zero,.LFUN_8002a8b8_e8
    addiu   $a1,$a1,1
.LFUN_8002a8b8_100:
    srl     $t1,$t1,1
.LFUN_8002a8b8_104:
    addiu   $t0,$t0,1
    sltiu   $v0,$t0,8
    bne     $v0,$zero,.LFUN_8002a8b8_14
    andi    $v0,$t1,0x1
    j       0x8002a8bc
    sll     $zero,$zero,0x0
.LFUN_8002a8b8_11c:
    jr      $ra
    subu    $v0,$a1,$t2
    .end FUN_8002a8b8
    .size FUN_8002a8b8, . - FUN_8002a8b8

/* FUN_8002abf0 (0x8002abf0, 72 bytes) */
    .section .text.FUN_8002abf0,"ax",@progbits
    .globl FUN_8002abf0
    .type FUN_8002abf0, @function
    .ent FUN_8002abf0
FUN_8002abf0:
    addiu   $sp,$sp,-24
    lui     $a0,0x800e
    addiu   $v0,$zero,8
    sw      $v0,15168($a0)
    addiu   $a0,$a0,15168
    lui     $v0,0x800e
    addiu   $v0,$v0,15416
    sw      $ra,16($sp)
    sw      $v0,4($a0)
    addiu   $v0,$v0,1020
    sw      $zero,8($a0)
    sw      $zero,12($a0)
    jal     0x8002a80c
    sw      $v0,16($a0)
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8002abf0
    .size FUN_8002abf0, . - FUN_8002abf0

/* FUN_8002ac38 (0x8002ac38, 80 bytes) */
    .section .text.FUN_8002ac38,"ax",@progbits
    .globl FUN_8002ac38
    .type FUN_8002ac38, @function
    .ent FUN_8002ac38
FUN_8002ac38:
    srav    $a2,$a2,$a3
    andi    $t0,$a2,0xf00
    andi    $a2,$a2,0xff
    lui     $t1,0xff
    ori     $t1,$t1,0xffff
    lui     $v0,0xff00
    sll     $t0,$t0,0x14
    sll     $a2,$a2,0x2
    lw      $a3,0($a1)
    lw      $v1,4($a0)
    and     $a3,$a3,$v0
    addu    $v1,$v1,$a2
    lw      $v0,0($v1)
    or      $t0,$t0,$a3
    and     $v0,$v0,$t1
    or      $v0,$v0,$t0
    sw      $v0,0($a1)
    and     $a1,$a1,$t1
    jr      $ra
    sw      $a1,0($v1)
    .end FUN_8002ac38
    .size FUN_8002ac38, . - FUN_8002ac38

/* FUN_8002b1e8 (0x8002b1e8, 40 bytes) */
    .section .text.FUN_8002b1e8,"ax",@progbits
    .globl FUN_8002b1e8
    .type FUN_8002b1e8, @function
    .ent FUN_8002b1e8
FUN_8002b1e8:
    lw      $t0,0($a0)
    lw      $t1,4($a0)
    lw      $t2,8($a0)
    lw      $t3,12($a0)
    lw      $t4,16($a0)
    ctc2    $t0,$0
    ctc2    $t1,$1
    ctc2    $t2,$2
    ctc2    $t3,$3
    ctc2    $t4,$4
    .end FUN_8002b1e8
    .size FUN_8002b1e8, . - FUN_8002b1e8

/* FUN_8002b634 (0x8002b634, 256 bytes) */
    .section .text.FUN_8002b634,"ax",@progbits
    .globl FUN_8002b634
    .type FUN_8002b634, @function
    .ent FUN_8002b634
FUN_8002b634:
    addiu   $sp,$sp,-64
    sw      $s6,48($sp)
    addu    $s6,$a1,$zero
    sw      $s7,52($sp)
    addu    $s7,$a2,$zero
    sw      $s8,56($sp)
    addu    $s8,$a3,$zero
    sw      $s3,36($sp)
    sw      $ra,60($sp)
    sw      $s5,44($sp)
    sw      $s4,40($sp)
    sw      $s2,32($sp)
    sw      $s1,28($sp)
    sw      $s0,24($sp)
    lw      $s5,8($a0)
    lw      $s0,12($a0)
    lw      $v0,4($s5)
    lw      $s1,0($s5)
    beq     $v0,$zero,.LFUN_8002b634_d0
    addu    $s3,$zero,$zero
    addiu   $s2,$s1,44
.LFUN_8002b634_54:
    lui     $v0,0x00ff
    ori     $v0,$v0,0xffff
    lw      $v1,0($s0)
    sll     $zero,$zero,0x0
    and     $v1,$v1,$v0
    lui     $v0,0x8000
    or      $s4,$v1,$v0
    lbu     $v1,0($s1)
    addiu   $v0,$zero,52
    bne     $v1,$v0,.LFUN_8002b634_b0
    addiu   $s0,$s0,8
    addu    $a0,$s6,$zero
    jal     0x8002b734
    addu    $a1,$s1,$zero
    lui     $v0,0x800e
    lh      $a1,21692($v0)
    addu    $a3,$s8,$zero
    sw      $s7,16($sp)
    lw      $a0,-8($s2)
    lw      $a2,0($s2)
    sll     $a1,$a1,5
    jal     0x8002b8d0
    addu    $a1,$s0,$a1
.LFUN_8002b634_b0:
    addu    $s0,$s4,$zero
    addiu   $s3,$s3,1
    addiu   $s2,$s2,48
    lw      $v0,4($s5)
    sll     $zero,$zero,0x0
    sltu    $v0,$s3,$v0
    bne     $v0,$zero,.LFUN_8002b634_54
    addiu   $s1,$s1,48
.LFUN_8002b634_d0:
    lw      $ra,60($sp)
    lw      $s8,56($sp)
    lw      $s7,52($sp)
    lw      $s6,48($sp)
    lw      $s5,44($sp)
    lw      $s4,40($sp)
    lw      $s3,36($sp)
    lw      $s2,32($sp)
    lw      $s1,28($sp)
    lw      $s0,24($sp)
    jr      $ra
    addiu   $sp,$sp,64
    .end FUN_8002b634
    .size FUN_8002b634, . - FUN_8002b634

/* FUN_8002b734 (0x8002b734, 412 bytes) */
    .section .text.FUN_8002b734,"ax",@progbits
    .globl FUN_8002b734
    .type FUN_8002b734, @function
    .ent FUN_8002b734
FUN_8002b734:
    addiu   $sp,$sp,-16
    addu    $v1,$zero,$zero
    lui     $t8,0x1f80
    sw      $s2,8($sp)
    sw      $s1,4($sp)
    sw      $s0,0($sp)
    lw      $t7,4($a1)
    lw      $t0,12($a1)
    lwc2    $0,0($t7)
    lwc2    $1,4($t7)
    lwc2    $2,8($t7)
    lwc2    $3,12($t7)
    lwc2    $4,16($t7)
    lwc2    $5,20($t7)
.LFUN_8002b734_3c:
    sltu    $v0,$v1,$t0
    beq     $v0,$zero,.LFUN_8002b734_14c
    addiu   $a2,$zero,24
    addu    $a3,$t8,$zero
.LFUN_8002b734_48:
    .word   0x4a280030
    addu    $v0,$t7,$a2
    lw      $t1,0($v0)
    lw      $t4,4($v0)
    lw      $t2,8($v0)
    lw      $t5,12($v0)
    lw      $t3,16($v0)
    lw      $t6,20($v0)
    mtc2    $t1,$0
    mtc2    $t4,$1
    mtc2    $t2,$2
    mtc2    $t5,$3
    mtc2    $t3,$4
    mtc2    $t6,$5
    swc2    $12,0($a3)
    swc2    $13,8($a3)
    swc2    $14,16($a3)
    swc2    $17,4($a3)
    swc2    $18,12($a3)
    swc2    $19,20($a3)
    addiu   $a3,$a3,24
    addiu   $v1,$v1,3
    sltu    $v0,$v1,$t0
    bne     $v0,$zero,.LFUN_8002b734_48
    addiu   $a2,$a2,24
.LFUN_8002b734_14c:
    lw      $a2,8($a1)
    lw      $v0,12($a1)
    sll     $zero,$zero,0x0
    beq     $a2,$v0,.LFUN_8002b734_120
    sll     $zero,$zero,0x0
    addu    $v1,$v0,$zero
    lw      $t1,24($a0)
    addu    $t0,$a2,$zero
    sltu    $v0,$v1,$a2
    beq     $v0,$zero,.LFUN_8002b734_120
    sll     $v0,$v1,3
    addu    $a3,$v0,$t8
    addu    $a2,$v0,$t7
.LFUN_8002b734_0e0:
    lh      $v0,6($a2)
    addiu   $a2,$a2,8
    addiu   $v1,$v1,1
    sll     $v0,$v0,3
    addu    $v0,$v0,$t1
    lwl     $s0,3($v0)
    lwr     $s0,0($v0)
    lwl     $s1,7($v0)
    lwr     $s1,4($v0)
    swl     $s0,3($a3)
    swr     $s0,0($a3)
    swl     $s1,7($a3)
    swr     $s1,4($a3)
    sltu    $v0,$v1,$t0
    bne     $v0,$zero,.LFUN_8002b734_0e0
    addiu   $a3,$a3,8
.LFUN_8002b734_120:
    lw      $a1,16($a1)
    sll     $zero,$zero,0x0
    beq     $a1,$zero,.LFUN_8002b734_188
    sll     $zero,$zero,0x0
    lw      $t0,16($a0)
    lw      $v1,24($a0)
    beq     $a1,$zero,.LFUN_8002b734_184
    addu    $a2,$zero,$zero
    sll     $v0,$t0,3
    addu    $a3,$v0,$v1
    addu    $v1,$t8,$zero
.LFUN_8002b734_140:
    lwl     $s0,3($v1)
    lwr     $s0,0($v1)
    lwl     $s1,7($v1)
    lwr     $s1,4($v1)
    swl     $s0,3($a3)
    swr     $s0,0($a3)
    swl     $s1,7($a3)
    swr     $s1,4($a3)
    addiu   $v1,$v1,8
    addiu   $a2,$a2,1
    addiu   $a3,$a3,8
    sltu    $v0,$a2,$a1
    bne     $v0,$zero,.LFUN_8002b734_140
    addiu   $t0,$t0,1
.LFUN_8002b734_184:
    sw      $t0,16($a0)
.LFUN_8002b734_188:
    lw      $s2,8($sp)
    lw      $s1,4($sp)
    lw      $s0,0($sp)
    jr      $ra
    addiu   $sp,$sp,16
    .end FUN_8002b734
    .size FUN_8002b734, . - FUN_8002b734

/* FUN_8002b8d0 (0x8002b8d0, 272 bytes) */
    .section .text.FUN_8002b8d0,"ax",@progbits
    .globl FUN_8002b8d0
    .type FUN_8002b8d0, @function
    .ent FUN_8002b8d0
FUN_8002b8d0:
    addiu   $t0,$a2,-1
    lw      $v0,16($sp)
    sll     $zero,$zero,0x0
    lw      $t3,4($v0)
    beq     $a2,$zero,.LFUN_8002b8d0_108
    lui     $t2,0x1f80
    lui     $t5,0x0700
    lui     $t1,0x00ff
    ori     $t1,$t1,0xffff
    addiu   $t4,$zero,-1
    addiu   $a2,$a0,10
.LFUN_8002b8d0_2c_read:
    lhu     $a0,-8($a2)
    lhu     $v1,-4($a2)
    lhu     $v0,0($a2)
    sll     $a0,$a0,3
    addu    $a0,$a0,$t2
    sll     $v1,$v1,3
    addu    $v1,$v1,$t2
    sll     $v0,$v0,3
    addu    $v0,$v0,$t2
    lw      $t6,0($a0)
    lw      $t7,0($v1)
    lw      $t8,0($v0)
    mtc2    $t6,$12
    mtc2    $t8,$14
    mtc2    $t7,$13
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    .word   0x4b400006
    lhu     $a0,4($a0)
    lhu     $v1,4($v1)
    lhu     $v0,4($v0)
    mtc2    $a0,$17
    mtc2    $v1,$18
    mtc2    $v0,$19
    mfc2    $v1,$24
    sll     $zero,$zero,0x0
    bgtz    $v1,.LFUN_8002b8d0_a8
    sll     $zero,$zero,0x0
    addiu   $a2,$a2,12
    j       0x8002b9cc
    addiu   $a1,$a1,64
.LFUN_8002b8d0_a8:
    .word   0x4b58002d
    swc2    $12,8($a1)
    swc2    $13,16($a1)
    swc2    $14,24($a1)
    mfc2    $v1,$7
    sll     $zero,$zero,0x0
    srav    $v1,$v1,$a3
    andi    $a0,$v1,0xf00
    andi    $v1,$v1,0xff
    sll     $v0,$a0,20
    or      $a0,$v0,$t5
    sll     $v1,$v1,2
    addu    $v1,$t3,$v1
    lw      $v0,0($v1)
    addiu   $a2,$a2,12
    and     $v0,$v0,$t1
    or      $v0,$v0,$a0
    sw      $v0,0($a1)
    and     $v0,$a1,$t1
    addiu   $a1,$a1,64
    sw      $v0,0($v1)
.LFUN_8002b8d0_a0:
    addiu   $t0,$t0,-1
    bne     $t0,$t4,.LFUN_8002b8d0_2c_read
    sll     $zero,$zero,0x0
.LFUN_8002b8d0_108:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8002b8d0
    .size FUN_8002b8d0, . - FUN_8002b8d0

/* FUN_8002b9e0 (0x8002b9e0, 212 bytes) */
    .section .text.FUN_8002b9e0,"ax",@progbits
    .globl FUN_8002b9e0
    .type FUN_8002b9e0, @function
    .ent FUN_8002b9e0
FUN_8002b9e0:
    lw      $v0,4($a0)
    sw      $zero,16($a0)
    bne     $v0,$zero,.LFUN_8002b9e0_cc
    sw      $zero,20($a0)
    addiu   $t0,$a0,32
    addu    $t1,$zero,$zero
    addiu   $v0,$zero,1
    addu    $t3,$t0,$zero
    sw      $v0,4($a0)
    lw      $v0,24($a0)
    lw      $v1,28($a0)
    lw      $t2,8($a0)
    addu    $v0,$a0,$v0
    addu    $v1,$a0,$v1
    sw      $v0,24($a0)
    blez    $t2,.LFUN_8002b9e0_cc
    sw      $v1,28($a0)
    addiu   $a0,$a0,36
.LFUN_8002b9e0_48:
    lw      $v0,0($t0)
    addu    $a3,$zero,$zero
    addu    $v0,$t3,$v0
    addu    $v1,$v0,$zero
    sw      $v0,0($t0)
.LFUN_8002b9e0_60:
    lw      $v0,0($a0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_8002b9e0_b8
    addu    $a2,$v1,$zero
    addiu   $a1,$v1,40
.LFUN_8002b9e0_70:
    addiu   $a3,$a3,1
    lw      $v0,-36($a1)
    lw      $v1,-20($a1)
    addu    $v0,$a2,$v0
    sw      $v0,-36($a1)
    lw      $v0,-4($a1)
    addu    $v1,$a2,$v1
    sw      $v1,-20($a1)
    lw      $v1,0($a1)
    addu    $v0,$a2,$v0
    addu    $v1,$a2,$v1
    sw      $v0,-4($a1)
    sw      $v1,0($a1)
    lw      $v0,0($a0)
    sll     $zero,$zero,0x0
    sltu    $v0,$a3,$v0
    bne     $v0,$zero,.LFUN_8002b9e0_70
    addiu   $a1,$a1,48
.LFUN_8002b9e0_b8:
    addiu   $t1,$t1,1
    addiu   $a0,$a0,12
    slt     $v0,$t1,$t2
    bne     $v0,$zero,.LFUN_8002b9e0_48
    addiu   $t0,$t0,12
.LFUN_8002b9e0_cc:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8002b9e0
    .size FUN_8002b9e0, . - FUN_8002b9e0

/* FUN_8002d518 (0x8002d518, 20 bytes) */
    .section .text.FUN_8002d518,"ax",@progbits
    .globl FUN_8002d518
    .type FUN_8002d518, @function
    .ent FUN_8002d518
FUN_8002d518:
    lui     $v0,0x800e
    sb      $a0,16476($v0)
    lui     $v0,0x800e
    jr      $ra
    sb      $zero,16500($v0)
    .end FUN_8002d518
    .size FUN_8002d518, . - FUN_8002d518

/* FUN_80034b1c (0x80034b1c, 12 bytes) */
    .section .text.FUN_80034b1c,"ax",@progbits
    .globl FUN_80034b1c
    .type FUN_80034b1c, @function
    .ent FUN_80034b1c
FUN_80034b1c:
    lui     $at,0x800e
    jr      $ra
    sb      $a0,21072($at)
    .end FUN_80034b1c
    .size FUN_80034b1c, . - FUN_80034b1c

/* FUN_80034b2c (0x80034b2c, 16 bytes) */
    .section .text.FUN_80034b2c,"ax",@progbits
    .globl FUN_80034b2c
    .type FUN_80034b2c, @function
    .ent FUN_80034b2c
FUN_80034b2c:
    addiu   $v0,$zero,1
    lui     $at,0x800e
    jr      $ra
    sh      $v0,20992($at)
    .end FUN_80034b2c
    .size FUN_80034b2c, . - FUN_80034b2c

/* FUN_80034b3c (0x80034b3c, 12 bytes) */
    .section .text.FUN_80034b3c,"ax",@progbits
    .globl FUN_80034b3c
    .type FUN_80034b3c, @function
    .ent FUN_80034b3c
FUN_80034b3c:
    lui     $at,0x800e
    jr      $ra
    sh      $zero,20992($at)
    .end FUN_80034b3c
    .size FUN_80034b3c, . - FUN_80034b3c

/* FUN_80032d9c (0x80032d9c, 12 bytes) */
    .section .text.FUN_80032d9c,"ax",@progbits
    .globl FUN_80032d9c
    .type FUN_80032d9c, @function
    .ent FUN_80032d9c
FUN_80032d9c:
    lui     $at,0x800e
    jr      $ra
    sh      $zero,20920($at)
    .end FUN_80032d9c
    .size FUN_80032d9c, . - FUN_80032d9c

/* FUN_80032bac (0x80032bac, 32 bytes) */
    .section .text.FUN_80032bac,"ax",@progbits
    .globl FUN_80032bac
    .type FUN_80032bac, @function
    .ent FUN_80032bac
FUN_80032bac:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     FUN_8002e4fc
    addiu   $a0,$zero,1
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    nop
    .end FUN_80032bac
    .size FUN_80032bac, . - FUN_80032bac

/* FUN_8003323c (0x8003323c, 36 bytes) */
    .section .text.FUN_8003323c,"ax",@progbits
    .globl FUN_8003323c
    .type FUN_8003323c, @function
    .ent FUN_8003323c
FUN_8003323c:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    addiu   $a2,$zero,202
    jal     _SpuSetAnyVoice
    addiu   $a3,$zero,203
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    nop
    .end FUN_8003323c
    .size FUN_8003323c, . - FUN_8003323c

/* FUN_800335dc (0x800335dc, 40 bytes) */
    .section .text.FUN_800335dc,"ax",@progbits
    .globl FUN_800335dc
    .type FUN_800335dc, @function
    .ent FUN_800335dc
FUN_800335dc:
    addiu   $v0,$zero,1
    bne     $a0,$v0,.L_FUN_800335dc_set_one
    nop
    lui     $at,0x800d
    j       0x800335fc
    sw      $zero,27544($at)
.L_FUN_800335dc_set_one:
    lui     $at,0x800d
    sw      $v0,27544($at)
.L_FUN_800335dc_return:
    jr      $ra
    nop
    .end FUN_800335dc
    .size FUN_800335dc, . - FUN_800335dc

/* FUN_80033604 (0x80033604, 24 bytes) */
    .section .text.FUN_80033604,"ax",@progbits
    .globl FUN_80033604
    .type FUN_80033604, @function
    .ent FUN_80033604
FUN_80033604:
    lui     $v0,0x800d
    lw      $v0,27544($v0)
    nop
    xori    $v0,$v0,1
    jr      $ra
    sltu    $v0,$zero,$v0
    .end FUN_80033604
    .size FUN_80033604, . - FUN_80033604

/* FUN_8003659c (0x8003659c, 16 bytes) */
    .section .text.FUN_8003659c,"ax",@progbits
    .globl FUN_8003659c
    .type FUN_8003659c, @function
    .ent FUN_8003659c
FUN_8003659c:
    lui     $v0,0x800e
    lw      $v0,-30884($v0)
    jr      $ra
    nop
    .end FUN_8003659c
    .size FUN_8003659c, . - FUN_8003659c

/* FUN_80036648 (0x80036648, 24 bytes) */
    .section .text.FUN_80036648,"ax",@progbits
    .globl FUN_80036648
    .type FUN_80036648, @function
    .ent FUN_80036648
FUN_80036648:
    sll     $a0,$a0,16
    sll     $a1,$a1,16
    .word   0x48c4c000
    .word   0x48c5c800
    jr      $ra
    nop
    .end FUN_80036648
    .size FUN_80036648, . - FUN_80036648

/* FUN_80036668 (0x80036668, 12 bytes) */
    .section .text.FUN_80036668,"ax",@progbits
    .globl FUN_80036668
    .type FUN_80036668, @function
    .ent FUN_80036668
FUN_80036668:
    .word   0x48c4d000
    jr      $ra
    nop
    .end FUN_80036668
    .size FUN_80036668, . - FUN_80036668

/* FUN_8002e72c (0x8002e72c, 36 bytes) */
    .section .text.FUN_8002e72c,"ax",@progbits
    .globl FUN_8002e72c
    .type FUN_8002e72c, @function
    .ent FUN_8002e72c
FUN_8002e72c:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    addu    $a1,$a0,$zero
    jal     DMACallback
    addiu   $a0,$zero,4
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    nop
    .end FUN_8002e72c
    .size FUN_8002e72c, . - FUN_8002e72c

/* FUN_8002e8bc (0x8002e8bc, 36 bytes) */
    .section .text.FUN_8002e8bc,"ax",@progbits
    .globl FUN_8002e8bc
    .type FUN_8002e8bc, @function
    .ent FUN_8002e8bc
FUN_8002e8bc:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    addiu   $a2,$zero,204
    jal     FUN_8002e8ec
    addiu   $a3,$zero,205
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    nop
    .end FUN_8002e8bc
    .size FUN_8002e8bc, . - FUN_8002e8bc

/* FUN_8002ee8c (0x8002ee8c, 32 bytes) */
    .section .text.FUN_8002ee8c,"ax",@progbits
    .globl FUN_8002ee8c
    .type FUN_8002ee8c, @function
    .ent FUN_8002ee8c
FUN_8002ee8c:
    lui     $v0,0x800d
    lw      $v0,27492($v0)
    nop
    lhu     $v0,426($v0)
    nop
    andi    $v0,$v0,0x40
    jr      $ra
    sltu    $v0,$zero,$v0
    .end FUN_8002ee8c
    .size FUN_8002ee8c, . - FUN_8002ee8c

/* FUN_8002ef2c (0x8002ef2c, 36 bytes) */
    .section .text.FUN_8002ef2c,"ax",@progbits
    .globl FUN_8002ef2c
    .type FUN_8002ef2c, @function
    .ent FUN_8002ef2c
FUN_8002ef2c:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    addu    $a1,$a0,$zero
    jal     InterruptCallback
    addiu   $a0,$zero,9
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    nop
    .end FUN_8002ef2c
    .size FUN_8002ef2c, . - FUN_8002ef2c

/* FUN_8002f29c (0x8002f29c, 36 bytes) */
    .section .text.FUN_8002f29c,"ax",@progbits
    .globl FUN_8002f29c
    .type FUN_8002f29c, @function
    .ent FUN_8002f29c
FUN_8002f29c:
    lui     $v0,0x800d
    lw      $v0,27548($v0)
    nop
    .word   0x10820003
    nop
    lui     $at,0x800d
    sw      $a0,27548($at)
    jr      $ra
    nop
    .end FUN_8002f29c
    .size FUN_8002f29c, . - FUN_8002f29c

/* FUN_8002fcdc (0x8002fcdc, 56 bytes) */
    .section .text.FUN_8002fcdc,"ax",@progbits
    .globl FUN_8002fcdc
    .type FUN_8002fcdc, @function
    .ent FUN_8002fcdc
FUN_8002fcdc:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     ResetCallback
    nop
    jal     SsUtReverbOff
    nop
    jal     SpuClearReverbWorkArea
    addiu   $a0,$zero,7
    jal     _SsInit
    nop
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    nop
    .end FUN_8002fcdc
    .size FUN_8002fcdc, . - FUN_8002fcdc

/* FUN_8002d5c0 (0x8002d5c0, 20 bytes) */
    .section .text.FUN_8002d5c0,"ax",@progbits
    .globl FUN_8002d5c0
    .type FUN_8002d5c0, @function
    .ent FUN_8002d5c0
FUN_8002d5c0:
    lui     $v0,0x800e
    sb      $a0,16488($v0)
    lui     $v0,0x800e
    jr      $ra
    sb      $zero,16484($v0)
    .end FUN_8002d5c0
    .size FUN_8002d5c0, . - FUN_8002d5c0

/* FUN_8002d5d4 (0x8002d5d4, 56 bytes) */
    .section .text.FUN_8002d5d4,"ax",@progbits
    .globl FUN_8002d5d4
    .type FUN_8002d5d4, @function
    .ent FUN_8002d5d4
FUN_8002d5d4:
    lui     $v0,0x800e
    lbu     $a0,16488($v0)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     _card_format
    sll     $a0,$a0,4
    addiu   $v1,$zero,1
    .word   0x14430002
    addiu   $a0,$zero,2
    addu    $a0,$v1,$zero
    lw      $ra,16($sp)
    addu    $v0,$a0,$zero
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8002d5d4
    .size FUN_8002d5d4, . - FUN_8002d5d4

/* FUN_8002b230 (0x8002b230, 292 bytes) */
    .section .text.FUN_8002b230,"ax",@progbits
    .globl FUN_8002b230
    .type FUN_8002b230, @function
    .ent FUN_8002b230
FUN_8002b230:
    addu    $a1,$a0,$zero
    lui     $a0,0x800e
    ori     $a0,$a0,0x5558
    lw      $t0,0($a0)
    lw      $t1,4($a0)
    lw      $t2,8($a0)
    lw      $t3,12($a0)
    lw      $t4,16($a0)
    ctc2    $t0,$0
    ctc2    $t1,$1
    ctc2    $t2,$2
    ctc2    $t3,$3
    ctc2    $t4,$4
    lhu     $t0,0($a1)
    lw      $t1,4($a1)
    lw      $t2,12($a1)
    lui     $at,0xffff
    and     $t1,$t1,$at
    or      $t0,$t0,$t1
    mtc2    $t0,$0
    mtc2    $t2,$1
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    c2      0x486012
    lhu     $t0,2($a1)
    lw      $t1,8($a1)
    lh      $t2,14($a1)
    sll     $t1,$t1,0x10
    or      $t0,$t0,$t1
    mfc2    $t3,$9
    mfc2    $t4,$10
    mfc2    $t5,$11
    mtc2    $t0,$0
    mtc2    $t2,$1
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    c2      0x486012
    lhu     $t0,4($a1)
    lw      $t1,8($a1)
    lw      $t2,16($a1)
    lui     $at,0xffff
    and     $t1,$t1,$at
    or      $t0,$t0,$t1
    mfc2    $t6,$9
    mfc2    $t7,$10
    mfc2    $t8,$11
    mtc2    $t0,$0
    mtc2    $t2,$1
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    c2      0x486012
    andi    $t3,$t3,0xffff
    sll     $t6,$t6,0x10
    or      $v0,$t6,$t3
    andi    $t5,$t5,0xffff
    sll     $t8,$t8,0x10
    or      $a3,$t8,$t5
    mfc2    $t0,$9
    mfc2    $t1,$10
    andi    $t0,$t0,0xffff
    sll     $t4,$t4,0x10
    or      $v1,$t0,$t4
    andi    $t7,$t7,0xffff
    sll     $t1,$t1,0x10
    or      $a2,$t1,$t7
    mfc2    $a1,$11
    ctc2    $v0,$8
    ctc2    $v1,$9
    ctc2    $a2,$10
    ctc2    $a3,$11
    ctc2    $a1,$12
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8002b230
    .size FUN_8002b230, . - FUN_8002b230

/* FUN_8002b354 (0x8002b354, 368 bytes) */
    .section .text.FUN_8002b354,"ax",@progbits
    .globl FUN_8002b354
    .type FUN_8002b354, @function
    .ent FUN_8002b354
FUN_8002b354:
    lui     $t8,0x1f80
    ori     $t8,$t8,0x2a0
    addu    $v1,$zero,$zero
    lw      $t7,20($a1)
    lw      $t0,28($a1)
    lw      $t9,40($a1)
    sll     $zero,$zero,0x0
    lwc2    $6,0($t9)
    lwc2    $0,0($t7)
    lwc2    $1,4($t7)
    lwc2    $2,8($t7)
    lwc2    $3,12($t7)
    lwc2    $4,16($t7)
    lwc2    $5,20($t7)
    sltu    $v0,$v1,$t0
    beq     $v0,$zero,.LFUN_8002b354_a4
    addiu   $a2,$zero,24
    lui     $a3,0x1f80
    ori     $a3,$a3,0x2a0
.LFUN_8002b354_4c:
    c2      0x118043f
    addu    $v0,$t7,$a2
    lw      $t1,0($v0)
    lw      $t4,4($v0)
    lw      $t2,8($v0)
    lw      $t5,12($v0)
    lw      $t3,16($v0)
    lw      $t6,20($v0)
    mtc2    $t1,$0
    mtc2    $t4,$1
    mtc2    $t2,$2
    mtc2    $t5,$3
    mtc2    $t3,$4
    mtc2    $t6,$5
    swc2    $20,0($a3)
    swc2    $21,4($a3)
    swc2    $22,8($a3)
    addiu   $a3,$a3,12
    addiu   $v1,$v1,3
    sltu    $v0,$v1,$t0
    bne     $v0,$zero,.LFUN_8002b354_4c
    addiu   $a2,$a2,24
.LFUN_8002b354_a4:
    lw      $a2,24($a1)
    lw      $v0,28($a1)
    sll     $zero,$zero,0x0
    beq     $a2,$v0,.LFUN_8002b354_118
    sll     $zero,$zero,0x0
    addu    $v1,$v0,$zero
    lw      $t2,28($a0)
    addu    $t0,$a2,$zero
    sltu    $v0,$v1,$a2
    beq     $v0,$zero,.LFUN_8002b354_118
    sll     $v0,$v1,0x2
    lui     $t1,0xff
    ori     $t1,$t1,0xffff
    lui     $t3,0x3000
    addu    $a3,$v0,$t8
    sll     $v0,$v1,0x3
    addu    $a2,$v0,$t7
.LFUN_8002b354_e8:
    lh      $v0,6($a2)
    addiu   $a2,$a2,8
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$t2
    lw      $v0,0($v0)
    addiu   $v1,$v1,1
    and     $v0,$v0,$t1
    or      $v0,$v0,$t3
    sw      $v0,0($a3)
    sltu    $v0,$v1,$t0
    bne     $v0,$zero,.LFUN_8002b354_e8
    addiu   $a3,$a3,4
.LFUN_8002b354_118:
    lw      $a1,32($a1)
    sll     $zero,$zero,0x0
    beq     $a1,$zero,.LFUN_8002b354_168
    sll     $zero,$zero,0x0
    lw      $t0,20($a0)
    lw      $v1,28($a0)
    beq     $a1,$zero,.LFUN_8002b354_164
    addu    $a2,$zero,$zero
    sll     $v0,$t0,0x2
    addu    $a3,$v0,$v1
    addu    $v1,$t8,$zero
.LFUN_8002b354_144:
    lw      $v0,0($v1)
    addiu   $v1,$v1,4
    addiu   $a2,$a2,1
    addiu   $t0,$t0,1
    sw      $v0,0($a3)
    sltu    $v0,$a2,$a1
    bne     $v0,$zero,.LFUN_8002b354_144
    addiu   $a3,$a3,4
.LFUN_8002b354_164:
    sw      $t0,20($a0)
.LFUN_8002b354_168:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8002b354
    .size FUN_8002b354, . - FUN_8002b354

/* FUN_8002b4c4 (0x8002b4c4, 368 bytes) */
    .section .text.FUN_8002b4c4,"ax",@progbits
    .globl FUN_8002b4c4
    .type FUN_8002b4c4, @function
    .ent FUN_8002b4c4
FUN_8002b4c4:
    lui     $t8,0x1f80
    ori     $t8,$t8,0x2a0
    addu    $v1,$zero,$zero
    lui     $t9,0x3480
    ori     $t9,$t9,0x8080
    lw      $t7,20($a1)
    lw      $t0,28($a1)
    mtc2    $t9,$6
    lwc2    $0,0($t7)
    lwc2    $1,4($t7)
    lwc2    $2,8($t7)
    lwc2    $3,12($t7)
    lwc2    $4,16($t7)
    lwc2    $5,20($t7)
    sltu    $v0,$v1,$t0
    beq     $v0,$zero,.LFUN_8002b4c4_a4
    addiu   $a2,$zero,24
    lui     $a3,0x1f80
    ori     $a3,$a3,0x2a0
.LFUN_8002b4c4_4c:
    c2      0x118043f
    addu    $v0,$t7,$a2
    lw      $t1,0($v0)
    lw      $t4,4($v0)
    lw      $t2,8($v0)
    lw      $t5,12($v0)
    lw      $t3,16($v0)
    lw      $t6,20($v0)
    mtc2    $t1,$0
    mtc2    $t4,$1
    mtc2    $t2,$2
    mtc2    $t5,$3
    mtc2    $t3,$4
    mtc2    $t6,$5
    swc2    $20,0($a3)
    swc2    $21,4($a3)
    swc2    $22,8($a3)
    addiu   $a3,$a3,12
    addiu   $v1,$v1,3
    sltu    $v0,$v1,$t0
    bne     $v0,$zero,.LFUN_8002b4c4_4c
    addiu   $a2,$a2,24
.LFUN_8002b4c4_a4:
    lw      $a2,24($a1)
    lw      $v0,28($a1)
    sll     $zero,$zero,0x0
    beq     $a2,$v0,.LFUN_8002b4c4_118
    sll     $zero,$zero,0x0
    addu    $v1,$v0,$zero
    lw      $t2,28($a0)
    addu    $t0,$a2,$zero
    sltu    $v0,$v1,$a2
    beq     $v0,$zero,.LFUN_8002b4c4_118
    sll     $v0,$v1,0x2
    lui     $t1,0xff
    ori     $t1,$t1,0xffff
    lui     $t3,0x3400
    addu    $a3,$v0,$t8
    sll     $v0,$v1,0x3
    addu    $a2,$v0,$t7
.LFUN_8002b4c4_e8:
    lh      $v0,6($a2)
    addiu   $a2,$a2,8
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$t2
    lw      $v0,0($v0)
    addiu   $v1,$v1,1
    and     $v0,$v0,$t1
    or      $v0,$v0,$t3
    sw      $v0,0($a3)
    sltu    $v0,$v1,$t0
    bne     $v0,$zero,.LFUN_8002b4c4_e8
    addiu   $a3,$a3,4
.LFUN_8002b4c4_118:
    lw      $a1,32($a1)
    sll     $zero,$zero,0x0
    beq     $a1,$zero,.LFUN_8002b4c4_168
    sll     $zero,$zero,0x0
    lw      $t0,20($a0)
    lw      $v1,28($a0)
    beq     $a1,$zero,.LFUN_8002b4c4_164
    addu    $a2,$zero,$zero
    sll     $v0,$t0,0x2
    addu    $a3,$v0,$v1
    addu    $v1,$t8,$zero
.LFUN_8002b4c4_144:
    lw      $v0,0($v1)
    addiu   $v1,$v1,4
    addiu   $a2,$a2,1
    addiu   $t0,$t0,1
    sw      $v0,0($a3)
    sltu    $v0,$a2,$a1
    bne     $v0,$zero,.LFUN_8002b4c4_144
    addiu   $a3,$a3,4
.LFUN_8002b4c4_164:
    sw      $t0,20($a0)
.LFUN_8002b4c4_168:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8002b4c4
    .size FUN_8002b4c4, . - FUN_8002b4c4

/* FUN_8002bab4 (0x8002bab4, 24 bytes) */
    .section .text.FUN_8002bab4,"ax",@progbits
    .globl FUN_8002bab4
    .type FUN_8002bab4, @function
    .ent FUN_8002bab4
FUN_8002bab4:
    sll     $v0,$a2,1
    addu    $v0,$v0,$a2
    sll     $v0,$v0,2
    addu    $a0,$a0,$v0
    jr      $ra
    sw      $a0,8($a1)
    .end FUN_8002bab4
    .size FUN_8002bab4, . - FUN_8002bab4

/* FUN_8002bacc (0x8002bacc, 224 bytes) */
    .section .text.FUN_8002bacc,"ax",@progbits
    .globl FUN_8002bacc
    .type FUN_8002bacc, @function
    .ent FUN_8002bacc
FUN_8002bacc:
    addiu   $sp,$sp,-48
    sw      $s6,40($sp)
    addu    $s6,$a2,$zero
    sw      $ra,44($sp)
    sw      $s5,36($sp)
    sw      $s4,32($sp)
    sw      $s3,28($sp)
    sw      $s2,24($sp)
    sw      $s1,20($sp)
    sw      $s0,16($sp)
    lw      $s4,8($a0)
    addu    $s3,$zero,$zero
.LFUN_8002bacc_30:
    lw      $s1,0($s4)
    addiu   $s5,$zero,52
    sw      $a1,12($a0)
    addiu   $s0,$s1,40
    addu    $s2,$a1,$zero
    lbu     $a0,0($s1)
    lw      $v0,4($s0)
    addiu   $a1,$a1,4
    sw      $v0,0($a1)
    bne     $a0,$s5,.LFUN_8002bacc_78
    addiu   $a1,$a1,4
    addu    $a0,$a1,$zero
    lw      $a1,4($s0)
    lw      $a2,0($s0)
    jal     0x8002bbac
    addu    $a3,$s6,$zero
    addu    $a1,$v0,$zero
    addiu   $a0,$zero,37
.LFUN_8002bacc_78:
    lw      $v0,4($s4)
    addiu   $s3,$s3,1
    sltu    $v0,$s3,$v0
    beq     $v0,$zero,.LFUN_8002bacc_ac
    lui     $v1,0x00ff
    ori     $v1,$v1,0xffff
    and     $v1,$a1,$v1
    sll     $v0,$a0,24
    or      $v1,$v1,$v0
    sw      $v1,0($s2)
    addiu   $s0,$s0,48
    j       0x8002bb0c
    addiu   $s1,$s1,48
.LFUN_8002bacc_ac:
    sll     $v0,$a0,24
    sw      $v0,0($s2)
    addu    $v0,$a1,$zero
    lw      $ra,44($sp)
    lw      $s6,40($sp)
    lw      $s5,36($sp)
    lw      $s4,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,48
    .end FUN_8002bacc
    .size FUN_8002bacc, . - FUN_8002bacc

/* FUN_8002bbac (0x8002bbac, 140 bytes) */
    .section .text.FUN_8002bbac,"ax",@progbits
    .globl FUN_8002bbac
    .type FUN_8002bbac, @function
    .ent FUN_8002bbac
FUN_8002bbac:
    addu    $t2,$a2,$zero
    lui     $v0,0x00ff
    ori     $v0,$v0,0xffff
    addu    $t1,$zero,$zero
    and     $a3,$a3,$v0
    lui     $v0,0x2500
    beq     $a1,$zero,.LFUN_8002bbac_84
    or      $a3,$a3,$v0
    addiu   $t3,$zero,37
    addiu   $a2,$a2,8
.LFUN_8002bbac_28:
    addu    $t0,$zero,$zero
    addiu   $v1,$a0,28
.LFUN_8002bbac_30:
    sw      $t3,0($a0)
    sw      $a3,-24($v1)
    sw      $zero,-20($v1)
    lw      $v0,0($t2)
    sw      $zero,-12($v1)
    sw      $v0,-16($v1)
    lw      $v0,-4($a2)
    addiu   $t0,$t0,1
    sw      $zero,-4($v1)
    sw      $v0,-8($v1)
    lw      $v0,0($a2)
    addiu   $a0,$a0,32
    sw      $v0,0($v1)
    slti    $v0,$t0,2
    bne     $v0,$zero,.LFUN_8002bbac_30
    addiu   $v1,$v1,32
    addiu   $t1,$t1,1
    addiu   $a2,$a2,12
    sltu    $v0,$t1,$a1
    bne     $v0,$zero,.LFUN_8002bbac_28
    addiu   $t2,$t2,12
.LFUN_8002bbac_84:
    jr      $ra
    addu    $v0,$a0,$zero
    .end FUN_8002bbac
    .size FUN_8002bbac, . - FUN_8002bbac

/* FUN_8002bc38 (0x8002bc38, 384 bytes) */
    .section .text.FUN_8002bc38,"ax",@progbits
    .globl FUN_8002bc38
    .globl FUN_8002bff8
    .globl FUN_8002c3c4
    .globl FUN_8002c1a0
    .globl FUN_8002bdb8
    .type FUN_8002bc38, @function
    .ent FUN_8002bc38
FUN_8002bc38:
    addiu   $sp,$sp,-72
    sw      $s5,52($sp)
    addu    $s5,$a1,$zero
    sw      $s6,56($sp)
    addu    $s6,$a2,$zero
    sw      $s7,60($sp)
    lui     $s7,0x8000
    sw      $ra,64($sp)
    sw      $s4,48($sp)
    sw      $s3,44($sp)
    sw      $s2,40($sp)
    sw      $s1,36($sp)
    sw      $s0,32($sp)
    lw      $v0,8($a0)
    lw      $a3,12($a0)
    lw      $s3,0($v0)
    lw      $s2,8($v0)
    lw      $s1,16($v0)
.LFUN_8002bc38_48:
    lui     $v1,0xff
    ori     $v1,$v1,0xffff
    lw      $v0,0($a3)
    addiu   $a3,$a3,4
    lw      $s0,0($a3)
    and     $v0,$v0,$v1
    or      $s4,$v0,$s7
    lbu     $v1,3($s1)
    addiu   $v0,$zero,52
    andi    $v1,$v1,0xfd
    beq     $v1,$v0,.LFUN_8002bc38_d4
    addiu   $a3,$a3,4
    slti    $v0,$v1,53
    beq     $v0,$zero,.LFUN_8002bc38_94
    addiu   $v0,$zero,48
    beq     $v1,$v0,.LFUN_8002bc38_b4
    addu    $a0,$s1,$zero
    j       .LFUN_8002bc38_148
    sll     $zero,$zero,0x0
.LFUN_8002bc38_94:
    addiu   $v0,$zero,56
    beq     $v1,$v0,.LFUN_8002bc38_fc
    addu    $a0,$s1,$zero
    addiu   $v0,$zero,60
    beq     $v1,$v0,.LFUN_8002bc38_124
    addu    $a1,$s3,$zero
    j       .LFUN_8002bc38_148
    sll     $zero,$zero,0x0
.LFUN_8002bc38_b4:
    addu    $a1,$s3,$zero
    addu    $a2,$s2,$zero
    sw      $s0,16($sp)
    sw      $s6,20($sp)
    jal     FUN_8002bff8
    sw      $s5,24($sp)
    j       .LFUN_8002bc38_13c
    sll     $v0,$s0,0x2
.LFUN_8002bc38_d4:
    addu    $a0,$s1,$zero
    addu    $a1,$s3,$zero
    addu    $a2,$s2,$zero
    sw      $s0,16($sp)
    sw      $s6,20($sp)
    jal     FUN_8002c3c4
    sw      $s5,24($sp)
    sll     $v0,$s0,0x3
    j       .LFUN_8002bc38_140
    subu    $v0,$v0,$s0
.LFUN_8002bc38_fc:
    addu    $a1,$s3,$zero
    addu    $a2,$s2,$zero
    sw      $s0,16($sp)
    sw      $s6,20($sp)
    jal     FUN_8002c1a0
    sw      $s5,24($sp)
    sll     $v0,$s0,0x1
    addu    $v0,$v0,$s0
    j       .LFUN_8002bc38_144
    sll     $v0,$v0,0x3
.LFUN_8002bc38_124:
    addu    $a2,$s2,$zero
    sw      $s0,16($sp)
    sw      $s6,20($sp)
    jal     FUN_8002bdb8
    sw      $s5,24($sp)
    sll     $v0,$s0,0x3
.LFUN_8002bc38_13c:
    addu    $v0,$v0,$s0
.LFUN_8002bc38_140:
    sll     $v0,$v0,0x2
.LFUN_8002bc38_144:
    addu    $s1,$s1,$v0
.LFUN_8002bc38_148:
    bne     $s4,$s7,.LFUN_8002bc38_48
    addu    $a3,$s4,$zero
    addu    $v0,$zero,$zero
    lw      $ra,64($sp)
    lw      $s7,60($sp)
    lw      $s6,56($sp)
    lw      $s5,52($sp)
    lw      $s4,48($sp)
    lw      $s3,44($sp)
    lw      $s2,40($sp)
    lw      $s1,36($sp)
    lw      $s0,32($sp)
    jr      $ra
    addiu   $sp,$sp,72
    .end FUN_8002bc38
    .size FUN_8002bc38, . - FUN_8002bc38

/* FUN_8002bdb8 (0x8002bdb8, 576 bytes) */
    .section .text.FUN_8002bdb8,"ax",@progbits
    .globl FUN_8002bdb8
    .type FUN_8002bdb8, @function
    .ent FUN_8002bdb8
FUN_8002bdb8:
    addiu   $sp,$sp,-8
    lui     $v0,0x800e
    lw      $t7,24($sp)
    lw      $t9,28($sp)
    lh      $v0,21692($v0)
    lw      $t8,32($sp)
    beq     $v0,$zero,.LFUN_8002bdb8_24
    addu    $t2,$a1,$zero
    addiu   $a3,$a3,52
.LFUN_8002bdb8_24:
    addiu   $v0,$zero,12
    sb      $v0,3($a3)
    addiu   $v0,$zero,60
    sb      $v0,7($a3)
    addiu   $v0,$zero,128
    sb      $v0,4($a3)
    sb      $v0,5($a3)
    sb      $v0,6($a3)
    addiu   $v0,$a3,4
    lwc2    $6,0($v0)
    blez    $t7,.LFUN_8002bdb8_238
    addu    $t1,$zero,$zero
    lui     $t6,0x8000
    addiu   $t5,$sp,4
    lui     $t3,0xff
    ori     $t3,$t3,0xffff
    addiu   $t0,$a0,32
.LFUN_8002bdb8_68:
    lhu     $a0,-10($t0)
    lhu     $v1,-6($t0)
    lhu     $v0,-2($t0)
    sll     $a0,$a0,0x3
    addu    $a0,$t2,$a0
    sll     $v1,$v1,0x3
    addu    $v1,$t2,$v1
    sll     $v0,$v0,0x3
    addu    $v0,$t2,$v0
    lwc2    $0,0($a0)
    lwc2    $1,4($a0)
    lwc2    $2,0($v1)
    lwc2    $3,4($v1)
    lwc2    $4,0($v0)
    lwc2    $5,4($v0)
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    c2      0x280030
    cfc2    $t4,$31
    sll     $zero,$zero,0x0
    sw      $t4,0($sp)
    lw      $v0,0($sp)
    sll     $zero,$zero,0x0
    and     $v0,$v0,$t6
    bne     $v0,$zero,.LFUN_8002bdb8_224
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    c2      0x1400006
    swc2    $24,0($t5)
    lw      $v0,4($sp)
    sll     $zero,$zero,0x0
    blez    $v0,.LFUN_8002bdb8_224
    sll     $zero,$zero,0x0
    swc2    $12,8($a3)
    swc2    $13,20($a3)
    swc2    $14,32($a3)
    lhu     $v0,2($t0)
    sll     $zero,$zero,0x0
    sll     $v0,$v0,0x3
    addu    $v0,$t2,$v0
    lwc2    $0,0($v0)
    lwc2    $1,4($v0)
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    c2      0x180001
    cfc2    $t4,$31
    sll     $zero,$zero,0x0
    sw      $t4,0($sp)
    lw      $v0,0($sp)
    sll     $zero,$zero,0x0
    and     $v0,$v0,$t6
    bne     $v0,$zero,.LFUN_8002bdb8_224
    addiu   $v0,$a3,44
    swc2    $14,0($v0)
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    c2      0x168002e
    swc2    $7,0($t5)
    lhu     $a0,-12($t0)
    lhu     $v1,-8($t0)
    lhu     $v0,-4($t0)
    sll     $a0,$a0,0x3
    addu    $a0,$a2,$a0
    sll     $v1,$v1,0x3
    addu    $v1,$a2,$v1
    sll     $v0,$v0,0x3
    addu    $v0,$a2,$v0
    lwc2    $0,0($a0)
    lwc2    $1,4($a0)
    lwc2    $2,0($v1)
    lwc2    $3,4($v1)
    lwc2    $4,0($v0)
    lwc2    $5,4($v0)
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    c2      0x118043f
    addiu   $a0,$a3,4
    addiu   $v1,$a3,16
    addiu   $v0,$a3,28
    swc2    $20,0($a0)
    swc2    $21,0($v1)
    swc2    $22,0($v0)
    lhu     $v0,0($t0)
    sll     $zero,$zero,0x0
    sll     $v0,$v0,0x3
    addu    $v0,$a2,$v0
    lwc2    $0,0($v0)
    lwc2    $1,4($v0)
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    c2      0x108041b
    lw      $v0,4($sp)
    lui     $a0,0xc00
    srav    $v0,$v0,$t9
    andi    $a1,$v0,0xf00
    andi    $v0,$v0,0xff
    sll     $a1,$a1,0x14
    sw      $v0,4($sp)
    lw      $v1,4($t8)
    sll     $v0,$v0,0x2
    addu    $v1,$v1,$v0
    lw      $v0,0($v1)
    or      $a1,$a1,$a0
    and     $v0,$v0,$t3
    or      $v0,$v0,$a1
    sw      $v0,0($a3)
    and     $v0,$a3,$t3
    sw      $v0,0($v1)
    addiu   $v0,$a3,40
    swc2    $22,0($v0)
.LFUN_8002bdb8_224:
    addiu   $a3,$a3,104
    addiu   $t1,$t1,1
    slt     $v0,$t1,$t7
    bne     $v0,$zero,.LFUN_8002bdb8_68
    addiu   $t0,$t0,36
.LFUN_8002bdb8_238:
    jr      $ra
    addiu   $sp,$sp,8
    .end FUN_8002bdb8
    .size FUN_8002bdb8, . - FUN_8002bdb8

/* FUN_8002bff8 (0x8002bff8, 424 bytes) */
    .section .text.FUN_8002bff8,"ax",@progbits
    .globl FUN_8002bff8
    .type FUN_8002bff8, @function
    .ent FUN_8002bff8
FUN_8002bff8:
    addiu   $sp,$sp,-8
    addu    $t2,$a0,$zero
    lui     $v0,0x800e
    lw      $t7,24($sp)
    lw      $t9,28($sp)
    lh      $v0,21692($v0)
    lw      $t8,32($sp)
    beq     $v0,$zero,.LFUN_8002bff8_28
    addu    $t6,$a1,$zero
    addiu   $a3,$a3,28
.LFUN_8002bff8_28:
    blez    $t7,.LFUN_8002bff8_1a0
    addu    $t1,$zero,$zero
    addiu   $t5,$sp,4
    lui     $t3,0xff
    ori     $t3,$t3,0xffff
    addiu   $t0,$t2,16
.LFUN_8002bff8_40:
    lhu     $a0,-6($t0)
    lhu     $v1,-2($t0)
    lhu     $v0,2($t0)
    sll     $a0,$a0,0x3
    addu    $a0,$t6,$a0
    sll     $v1,$v1,0x3
    addu    $v1,$t6,$v1
    sll     $v0,$v0,0x3
    addu    $v0,$t6,$v0
    lwc2    $0,0($a0)
    lwc2    $1,4($a0)
    lwc2    $2,0($v1)
    lwc2    $3,4($v1)
    lwc2    $4,0($v0)
    lwc2    $5,4($v0)
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    c2      0x280030
    cfc2    $t4,$31
    sll     $zero,$zero,0x0
    sw      $t4,0($sp)
    lw      $v0,0($sp)
    sll     $zero,$zero,0x0
    bltz    $v0,.LFUN_8002bff8_c4
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    c2      0x1400006
    swc2    $24,0($t5)
    lw      $v0,4($sp)
    sll     $zero,$zero,0x0
    bgtz    $v0,.LFUN_8002bff8_cc
    sll     $zero,$zero,0x0
.LFUN_8002bff8_c4:
    j       .LFUN_8002bff8_18c
    addiu   $a3,$a3,56
.LFUN_8002bff8_cc:
    swc2    $12,8($a3)
    swc2    $13,16($a3)
    swc2    $14,24($a3)
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    c2      0x158002d
    swc2    $7,0($t5)
    addiu   $v0,$t2,4
    lwc2    $6,0($v0)
    lhu     $a0,-8($t0)
    lhu     $v1,-4($t0)
    lhu     $v0,0($t0)
    sll     $a0,$a0,0x3
    addu    $a0,$a2,$a0
    sll     $v1,$v1,0x3
    addu    $v1,$a2,$v1
    sll     $v0,$v0,0x3
    addu    $v0,$a2,$v0
    lwc2    $0,0($a0)
    lwc2    $1,4($a0)
    lwc2    $2,0($v1)
    lwc2    $3,4($v1)
    lwc2    $4,0($v0)
    lwc2    $5,4($v0)
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    c2      0x118043f
    swc2    $20,4($a3)
    swc2    $21,12($a3)
    swc2    $22,20($a3)
    lw      $v0,4($sp)
    lui     $a0,0x600
    srav    $v0,$v0,$t9
    andi    $a1,$v0,0xf00
    andi    $v0,$v0,0xff
    sll     $a1,$a1,0x14
    sw      $v0,4($sp)
    lw      $v1,4($t8)
    sll     $v0,$v0,0x2
    addu    $v1,$v1,$v0
    lw      $v0,0($v1)
    or      $a1,$a1,$a0
    and     $v0,$v0,$t3
    or      $v0,$v0,$a1
    sw      $v0,0($a3)
    and     $v0,$a3,$t3
    addiu   $a3,$a3,56
    sw      $v0,0($v1)
.LFUN_8002bff8_18c:
    addiu   $t1,$t1,1
    addiu   $t0,$t0,20
    slt     $v0,$t1,$t7
    bne     $v0,$zero,.LFUN_8002bff8_40
    addiu   $t2,$t2,20
.LFUN_8002bff8_1a0:
    jr      $ra
    addiu   $sp,$sp,8
    .end FUN_8002bff8
    .size FUN_8002bff8, . - FUN_8002bff8

/* FUN_8002c1a0 (0x8002c1a0, 548 bytes) */
    .section .text.FUN_8002c1a0,"ax",@progbits
    .globl FUN_8002c1a0
    .type FUN_8002c1a0, @function
    .ent FUN_8002c1a0
FUN_8002c1a0:
    addiu   $sp,$sp,-16
    addu    $t2,$a0,$zero
    lw      $t8,32($sp)
    lui     $v0,0x800e
    sw      $s0,8($sp)
    lw      $s0,36($sp)
    lh      $v0,21692($v0)
    lw      $t9,40($sp)
    beq     $v0,$zero,.LFUN_8002c1a0_2c
    addu    $t3,$a1,$zero
    addiu   $a3,$a3,36
.LFUN_8002c1a0_2c:
    blez    $t8,.LFUN_8002c1a0_218
    addu    $t1,$zero,$zero
    lui     $t7,0x8000
    addiu   $t6,$sp,4
    lui     $t5,0xff
    ori     $t5,$t5,0xffff
    addiu   $t0,$t2,20
.LFUN_8002c1a0_48:
    lhu     $a0,-10($t0)
    lhu     $v1,-6($t0)
    lhu     $v0,-2($t0)
    sll     $a0,$a0,0x3
    addu    $a0,$t3,$a0
    sll     $v1,$v1,0x3
    addu    $v1,$t3,$v1
    sll     $v0,$v0,0x3
    addu    $v0,$t3,$v0
    lwc2    $0,0($a0)
    lwc2    $1,4($a0)
    lwc2    $2,0($v1)
    lwc2    $3,4($v1)
    lwc2    $4,0($v0)
    lwc2    $5,4($v0)
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    c2      0x280030
    cfc2    $t4,$31
    sll     $zero,$zero,0x0
    sw      $t4,0($sp)
    lw      $v0,0($sp)
    sll     $zero,$zero,0x0
    and     $v0,$v0,$t7
    bne     $v0,$zero,.LFUN_8002c1a0_200
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    c2      0x1400006
    swc2    $24,0($t6)
    lw      $v0,4($sp)
    sll     $zero,$zero,0x0
    blez    $v0,.LFUN_8002c1a0_200
    sll     $zero,$zero,0x0
    swc2    $12,8($a3)
    swc2    $13,16($a3)
    swc2    $14,24($a3)
    lhu     $v0,2($t0)
    sll     $zero,$zero,0x0
    sll     $v0,$v0,0x3
    addu    $v0,$t3,$v0
    lwc2    $0,0($v0)
    lwc2    $1,4($v0)
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    c2      0x180001
    cfc2    $t4,$31
    sll     $zero,$zero,0x0
    sw      $t4,0($sp)
    lw      $v0,0($sp)
    sll     $zero,$zero,0x0
    and     $v0,$v0,$t7
    bne     $v0,$zero,.LFUN_8002c1a0_200
    addiu   $v0,$a3,32
    swc2    $14,0($v0)
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    c2      0x168002e
    swc2    $7,0($t6)
    addiu   $v0,$t2,4
    lwc2    $6,0($v0)
    lhu     $a0,-12($t0)
    lhu     $v1,-8($t0)
    lhu     $v0,-4($t0)
    sll     $a0,$a0,0x3
    addu    $a0,$a2,$a0
    sll     $v1,$v1,0x3
    addu    $v1,$a2,$v1
    sll     $v0,$v0,0x3
    addu    $v0,$a2,$v0
    lwc2    $0,0($a0)
    lwc2    $1,4($a0)
    lwc2    $2,0($v1)
    lwc2    $3,4($v1)
    lwc2    $4,0($v0)
    lwc2    $5,4($v0)
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    c2      0x118043f
    swc2    $20,4($a3)
    swc2    $21,12($a3)
    swc2    $22,20($a3)
    lhu     $v0,0($t0)
    sll     $zero,$zero,0x0
    sll     $v0,$v0,0x3
    addu    $v0,$a2,$v0
    lwc2    $0,0($v0)
    lwc2    $1,4($v0)
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    c2      0x108041b
    lw      $v0,4($sp)
    lui     $a0,0x800
    srav    $v0,$v0,$s0
    andi    $a1,$v0,0xf00
    andi    $v0,$v0,0xff
    sll     $a1,$a1,0x14
    sw      $v0,4($sp)
    lw      $v1,4($t9)
    sll     $v0,$v0,0x2
    addu    $v1,$v1,$v0
    lw      $v0,0($v1)
    or      $a1,$a1,$a0
    and     $v0,$v0,$t5
    or      $v0,$v0,$a1
    sw      $v0,0($a3)
    and     $v0,$a3,$t5
    sw      $v0,0($v1)
    addiu   $v0,$a3,28
    swc2    $22,0($v0)
.LFUN_8002c1a0_200:
    addiu   $a3,$a3,72
    addiu   $t1,$t1,1
    addiu   $t0,$t0,24
    slt     $v0,$t1,$t8
    bne     $v0,$zero,.LFUN_8002c1a0_48
    addiu   $t2,$t2,24
.LFUN_8002c1a0_218:
    lw      $s0,8($sp)
    jr      $ra
    addiu   $sp,$sp,16
    .end FUN_8002c1a0
    .size FUN_8002c1a0, . - FUN_8002c1a0

/* FUN_8002c3c4 (0x8002c3c4, 460 bytes) */
    .section .text.FUN_8002c3c4,"ax",@progbits
    .globl FUN_8002c3c4
    .type FUN_8002c3c4, @function
    .ent FUN_8002c3c4
FUN_8002c3c4:
    addiu   $sp,$sp,-8
    lui     $v0,0x800e
    lw      $t6,24($sp)
    lw      $t8,28($sp)
    lh      $v0,21692($v0)
    lw      $t7,32($sp)
    beq     $v0,$zero,.LFUN_8002c3c4_24
    addu    $t5,$a1,$zero
    addiu   $a3,$a3,40
.LFUN_8002c3c4_24:
    addiu   $v0,$zero,9
    sb      $v0,3($a3)
    addiu   $v0,$zero,52
    sb      $v0,7($a3)
    addiu   $v0,$zero,128
    sb      $v0,4($a3)
    sb      $v0,5($a3)
    sb      $v0,6($a3)
    addiu   $v0,$a3,4
    lwc2    $6,0($v0)
    blez    $t6,.LFUN_8002c3c4_1c4
    addu    $t1,$zero,$zero
    addiu   $t3,$sp,4
    lui     $t2,0xff
    ori     $t2,$t2,0xffff
    addiu   $t0,$a0,24
.LFUN_8002c3c4_64:
    lhu     $a0,-6($t0)
    lhu     $v1,-2($t0)
    lhu     $v0,2($t0)
    sll     $a0,$a0,0x3
    addu    $a0,$t5,$a0
    sll     $v1,$v1,0x3
    addu    $v1,$t5,$v1
    sll     $v0,$v0,0x3
    addu    $v0,$t5,$v0
    lwc2    $0,0($a0)
    lwc2    $1,4($a0)
    lwc2    $2,0($v1)
    lwc2    $3,4($v1)
    lwc2    $4,0($v0)
    lwc2    $5,4($v0)
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    c2      0x280030
    cfc2    $t4,$31
    sll     $zero,$zero,0x0
    sw      $t4,0($sp)
    lw      $v0,0($sp)
    sll     $zero,$zero,0x0
    bltz    $v0,.LFUN_8002c3c4_e8
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    c2      0x1400006
    swc2    $24,0($t3)
    lw      $v0,4($sp)
    sll     $zero,$zero,0x0
    bgtz    $v0,.LFUN_8002c3c4_f0
    sll     $zero,$zero,0x0
.LFUN_8002c3c4_e8:
    j       .LFUN_8002c3c4_1b4
    addiu   $a3,$a3,80
.LFUN_8002c3c4_f0:
    swc2    $12,8($a3)
    swc2    $13,20($a3)
    swc2    $14,32($a3)
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    c2      0x158002d
    swc2    $7,0($t3)
    lhu     $a0,-8($t0)
    lhu     $v1,-4($t0)
    lhu     $v0,0($t0)
    sll     $a0,$a0,0x3
    addu    $a0,$a2,$a0
    sll     $v1,$v1,0x3
    addu    $v1,$a2,$v1
    sll     $v0,$v0,0x3
    addu    $v0,$a2,$v0
    lwc2    $0,0($a0)
    lwc2    $1,4($a0)
    lwc2    $2,0($v1)
    lwc2    $3,4($v1)
    lwc2    $4,0($v0)
    lwc2    $5,4($v0)
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    c2      0x118043f
    addiu   $a0,$a3,4
    addiu   $v1,$a3,16
    addiu   $v0,$a3,28
    swc2    $20,0($a0)
    swc2    $21,0($v1)
    swc2    $22,0($v0)
    lw      $v0,4($sp)
    lui     $a0,0x900
    srav    $v0,$v0,$t8
    andi    $a1,$v0,0xf00
    andi    $v0,$v0,0xff
    sll     $a1,$a1,0x14
    sw      $v0,4($sp)
    lw      $v1,4($t7)
    sll     $v0,$v0,0x2
    addu    $v1,$v1,$v0
    lw      $v0,0($v1)
    or      $a1,$a1,$a0
    and     $v0,$v0,$t2
    or      $v0,$v0,$a1
    sw      $v0,0($a3)
    and     $v0,$a3,$t2
    addiu   $a3,$a3,80
    sw      $v0,0($v1)
.LFUN_8002c3c4_1b4:
    addiu   $t1,$t1,1
    slt     $v0,$t1,$t6
    bne     $v0,$zero,.LFUN_8002c3c4_64
    addiu   $t0,$t0,28
.LFUN_8002c3c4_1c4:
    jr      $ra
    addiu   $sp,$sp,8
    .end FUN_8002c3c4
    .size FUN_8002c3c4, . - FUN_8002c3c4

/* FUN_8002ce18 (0x8002ce18, 168 bytes) */
    .section .text.FUN_8002ce18,"ax",@progbits
    .globl FUN_8002ce18
    .globl sym_8003bb88
    .type FUN_8002ce18, @function
    .ent FUN_8002ce18
FUN_8002ce18:
    lui     $v0,0x800e
    lw      $a0,16444($v0)
    addiu   $sp,$sp,-32
    sw      $ra,24($sp)
    sw      $s1,20($sp)
    jal     sym_8003bb88
    sw      $s0,16($sp)
    lui     $v1,0x800e
    xori    $v0,$v0,0x1
    lw      $a0,16448($v1)
    jal     sym_8003bb88
    sltiu   $s0,$v0,1
    addiu   $s1,$zero,1
    bne     $v0,$s1,.LFUN_8002ce18_40
    lui     $v0,0x800e
    addiu   $s0,$zero,4
.LFUN_8002ce18_40:
    lw      $a0,16452($v0)
    jal     sym_8003bb88
    sll     $zero,$zero,0x0
    bne     $v0,$s1,.LFUN_8002ce18_58
    lui     $v0,0x800e
    addiu   $s0,$zero,2
.LFUN_8002ce18_58:
    lw      $a0,16456($v0)
    jal     sym_8003bb88
    sll     $zero,$zero,0x0
    bne     $v0,$s1,.LFUN_8002ce18_70
    lui     $v0,0x800e
    addiu   $s0,$zero,8
.LFUN_8002ce18_70:
    lw      $v1,16496($v0)
    sll     $zero,$zero,0x0
    addu    $a0,$v1,$zero
    addiu   $v1,$v1,1
    sltiu   $a0,$a0,121
    bne     $a0,$zero,.LFUN_8002ce18_90
    sw      $v1,16496($v0)
    addiu   $s0,$zero,4
.LFUN_8002ce18_90:
    addu    $v0,$s0,$zero
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end FUN_8002ce18
    .size FUN_8002ce18, . - FUN_8002ce18

/* FUN_8002cf4c (0x8002cf4c, 152 bytes) */
    .section .text.FUN_8002cf4c,"ax",@progbits
    .globl FUN_8002cf4c
    .globl sym_8003bb88
    .type FUN_8002cf4c, @function
    .ent FUN_8002cf4c
FUN_8002cf4c:
    addiu   $sp,$sp,-32
    sw      $s1,20($sp)
    lui     $s1,0x800e
    sw      $s0,16($sp)
    addiu   $s0,$zero,1
    sw      $ra,24($sp)
.LFUN_8002cf4c_18:
    lw      $a0,16460($s1)
    jal     sym_8003bb88
    sll     $zero,$zero,0x0
    bne     $v0,$s0,.LFUN_8002cf4c_34
    lui     $v0,0x800e
    j       .LFUN_8002cf4c_84
    addiu   $v0,$zero,1
.LFUN_8002cf4c_34:
    lw      $a0,16464($v0)
    jal     sym_8003bb88
    sll     $zero,$zero,0x0
    bne     $v0,$s0,.LFUN_8002cf4c_50
    lui     $v0,0x800e
    j       .LFUN_8002cf4c_84
    addiu   $v0,$zero,4
.LFUN_8002cf4c_50:
    lw      $a0,16468($v0)
    jal     sym_8003bb88
    sll     $zero,$zero,0x0
    beq     $v0,$s0,.LFUN_8002cf4c_80
    lui     $v0,0x800e
    lw      $a0,16472($v0)
    jal     sym_8003bb88
    sll     $zero,$zero,0x0
    bne     $v0,$s0,.LFUN_8002cf4c_18
    addiu   $v0,$zero,8
    j       .LFUN_8002cf4c_84
    sll     $zero,$zero,0x0
.LFUN_8002cf4c_80:
    addiu   $v0,$zero,2
.LFUN_8002cf4c_84:
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end FUN_8002cf4c
    .size FUN_8002cf4c, . - FUN_8002cf4c

/* FUN_8002cfe4 (0x8002cfe4, 88 bytes) */
    .section .text.FUN_8002cfe4,"ax",@progbits
    .globl FUN_8002cfe4
    .globl sym_8003bb88
    .type FUN_8002cfe4, @function
    .ent FUN_8002cfe4
FUN_8002cfe4:
    lui     $v0,0x800e
    lw      $a0,16444($v0)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_8003bb88
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $a0,16448($v0)
    jal     sym_8003bb88
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $a0,16452($v0)
    jal     sym_8003bb88
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $a0,16456($v0)
    jal     sym_8003bb88
    sll     $zero,$zero,0x0
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8002cfe4
    .size FUN_8002cfe4, . - FUN_8002cfe4

/* FUN_8002d03c (0x8002d03c, 88 bytes) */
    .section .text.FUN_8002d03c,"ax",@progbits
    .globl FUN_8002d03c
    .globl sym_8003bb88
    .type FUN_8002d03c, @function
    .ent FUN_8002d03c
FUN_8002d03c:
    lui     $v0,0x800e
    lw      $a0,16460($v0)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_8003bb88
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $a0,16464($v0)
    jal     sym_8003bb88
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $a0,16468($v0)
    jal     sym_8003bb88
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $a0,16472($v0)
    jal     sym_8003bb88
    sll     $zero,$zero,0x0
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8002d03c
    .size FUN_8002d03c, . - FUN_8002d03c

/* FUN_8002d094 (0x8002d094, 168 bytes) */
    .section .text.FUN_8002d094,"ax",@progbits
    .globl FUN_8002d094
    .globl sym_8003bbe8
    .globl sym_8003bb68
    .globl sym_8003bbf8
    .type FUN_8002d094, @function
    .ent FUN_8002d094
FUN_8002d094:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_8003bbe8
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $a0,16444($v0)
    jal     sym_8003bb68
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $a0,16448($v0)
    jal     sym_8003bb68
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $a0,16452($v0)
    jal     sym_8003bb68
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $a0,16456($v0)
    jal     sym_8003bb68
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $a0,16460($v0)
    jal     sym_8003bb68
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $a0,16464($v0)
    jal     sym_8003bb68
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $a0,16468($v0)
    jal     sym_8003bb68
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $a0,16472($v0)
    jal     sym_8003bb68
    sll     $zero,$zero,0x0
    jal     sym_8003bbf8
    sll     $zero,$zero,0x0
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8002d094
    .size FUN_8002d094, . - FUN_8002d094

/* FUN_8002d2b0 (0x8002d2b0, 36 bytes) */
    .section .text.FUN_8002d2b0,"ax",@progbits
    .globl FUN_8002d2b0
    .globl sym_8003b82c
    .type FUN_8002d2b0, @function
    .ent FUN_8002d2b0
FUN_8002d2b0:
    addiu   $sp,$sp,-24
    andi    $a0,$a0,0xff
    sw      $ra,16($sp)
    jal     sym_8003b82c
    sll     $a0,$a0,0x4
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8002d2b0
    .size FUN_8002d2b0, . - FUN_8002d2b0

/* FUN_8002d2d4 (0x8002d2d4, 84 bytes) */
    .section .text.FUN_8002d2d4,"ax",@progbits
    .globl FUN_8002d2d4
    .globl sym_8003baa8
    .globl sym_8003ba98
    .globl sym_8003bc68
    .type FUN_8002d2d4, @function
    .ent FUN_8002d2d4
FUN_8002d2d4:
    addiu   $sp,$sp,-56
    sw      $s0,48($sp)
    addu    $s0,$a1,$zero
    lui     $v0,0x800d
    addiu   $v0,$v0,24804
    andi    $a0,$a0,0xff
    sll     $a0,$a0,0x2
    addu    $a0,$a0,$v0
    sw      $ra,52($sp)
    lw      $a1,0($a0)
    jal     sym_8003baa8
    addiu   $a0,$sp,16
    addiu   $a0,$sp,16
    jal     sym_8003ba98
    addu    $a1,$s0,$zero
    jal     sym_8003bc68
    addiu   $a0,$sp,16
    lw      $ra,52($sp)
    lw      $s0,48($sp)
    jr      $ra
    addiu   $sp,$sp,56
    .end FUN_8002d2d4
    .size FUN_8002d2d4, . - FUN_8002d2d4

/* FUN_8002d328 (0x8002d328, 136 bytes) */
    .section .text.FUN_8002d328,"ax",@progbits
    .globl FUN_8002d328
    .globl sym_8003baa8
    .globl sym_8003ba98
    .globl sym_8003bc58
    .type FUN_8002d328, @function
    .ent FUN_8002d328
FUN_8002d328:
    addiu   $sp,$sp,-96
    sw      $s1,84($sp)
    addu    $s1,$a1,$zero
    sw      $s2,88($sp)
    addu    $s2,$a2,$zero
    lui     $v0,0x800d
    addiu   $v0,$v0,24804
    sw      $s0,80($sp)
    andi    $s0,$a0,0xff
    sll     $s0,$s0,0x2
    addu    $s0,$s0,$v0
    sw      $ra,92($sp)
    lw      $a1,0($s0)
    jal     sym_8003baa8
    addiu   $a0,$sp,16
    addiu   $a0,$sp,16
    jal     sym_8003ba98
    addu    $a1,$s1,$zero
    lw      $a1,0($s0)
    addiu   $s0,$sp,48
    jal     sym_8003baa8
    addu    $a0,$s0,$zero
    addu    $a0,$s0,$zero
    jal     sym_8003ba98
    addu    $a1,$s2,$zero
    addiu   $a0,$sp,16
    jal     sym_8003bc58
    addu    $a1,$s0,$zero
    lw      $ra,92($sp)
    lw      $s2,88($sp)
    lw      $s1,84($sp)
    lw      $s0,80($sp)
    jr      $ra
    addiu   $sp,$sp,96
    .end FUN_8002d328
    .size FUN_8002d328, . - FUN_8002d328

/* FUN_8002d8cc (0x8002d8cc, 100 bytes) */
    .section .text.FUN_8002d8cc,"ax",@progbits
    .globl FUN_8002d8cc
    .type FUN_8002d8cc, @function
    .ent FUN_8002d8cc
FUN_8002d8cc:
    addu    $a2,$zero,$zero
    lui     $v0,0x800e
    addiu   $a3,$v0,16504
    andi    $v0,$a2,0xff
.LFUN_8002d8cc_10:
    sll     $v0,$v0,0x4
    addu    $a1,$v0,$a3
    addu    $a0,$zero,$zero
    andi    $v0,$a0,0xff
.LFUN_8002d8cc_20:
    addiu   $a0,$a0,1
    addu    $v1,$a1,$v0
    sll     $v0,$v0,0x1
    addu    $v0,$a1,$v0
    sb      $zero,10($v1)
    sh      $zero,4($v0)
    andi    $v0,$a0,0xff
    sltiu   $v0,$v0,2
    bne     $v0,$zero,.LFUN_8002d8cc_20
    andi    $v0,$a0,0xff
    addiu   $a2,$a2,1
    andi    $v0,$a2,0xff
    sltiu   $v0,$v0,2
    bne     $v0,$zero,.LFUN_8002d8cc_10
    andi    $v0,$a2,0xff
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8002d8cc
    .size FUN_8002d8cc, . - FUN_8002d8cc

/* FUN_8002ea2c (0x8002ea2c, 192 bytes) */
    .section .text.FUN_8002ea2c,"ax",@progbits
    .globl FUN_8002ea2c
    .globl sym_8002eaec
    .type FUN_8002ea2c, @function
    .ent FUN_8002ea2c
FUN_8002ea2c:
    lui     $v0,0x800d
    lw      $v0,27712($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x1
    beq     $v0,$zero,.LFUN_8002ea2c_7c
    sll     $v1,$a2,0x1
    lui     $a1,0x800e
    addiu   $a1,$a1,16144
    addu    $v1,$v1,$a1
    lhu     $v0,0($v1)
    nor     $a0,$zero,$t0
    and     $v0,$v0,$a0
    sll     $a0,$a3,0x1
    addu    $a0,$a0,$a1
    sh      $v0,0($v1)
    srl     $v0,$t0,0x10
    andi    $v0,$v0,0xff
    lhu     $v1,0($a0)
    nor     $v0,$zero,$v0
    and     $v1,$v1,$v0
    addiu   $v0,$a2,-198
    sra     $v0,$v0,0x1
    sh      $v1,0($a0)
    lui     $v1,0x800d
    lw      $v1,27660($v1)
    sllv    $v0,$t3,$v0
    or      $v1,$v1,$v0
    lui     $at,0x800d
    sw      $v1,27660($at)
    j       sym_8002eaec
    lui     $v0,0xff
.LFUN_8002ea2c_7c:
    lui     $a1,0x800d
    lw      $a1,27492($a1)
    sll     $zero,$zero,0x0
    addu    $v1,$v1,$a1
    lhu     $v0,0($v1)
    nor     $a0,$zero,$t0
    and     $v0,$v0,$a0
    sll     $a0,$a3,0x1
    addu    $a0,$a0,$a1
    sh      $v0,0($v1)
    srl     $v0,$t0,0x10
    andi    $v0,$v0,0xff
    lhu     $v1,0($a0)
    nor     $v0,$zero,$v0
    and     $v1,$v1,$v0
    sh      $v1,0($a0)
    lui     $v0,0xff
    .end FUN_8002ea2c
    .size FUN_8002ea2c, . - FUN_8002ea2c

/* FUN_8002eb00 (0x8002eb00, 144 bytes) */
    .section .text.FUN_8002eb00,"ax",@progbits
    .globl FUN_8002eb00
    .globl sym_8002eb90
    .type FUN_8002eb00, @function
    .ent FUN_8002eb00
FUN_8002eb00:
    lui     $v0,0x800d
    lw      $v0,27712($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x1
    beq     $v0,$zero,.LFUN_8002eb00_64
    sll     $v1,$a3,0x1
    lui     $a0,0x800e
    addiu   $a0,$a0,16144
    sll     $v0,$a2,0x1
    addu    $v0,$v0,$a0
    addu    $v1,$v1,$a0
    sh      $t0,0($v0)
    srl     $v0,$t0,0x10
    andi    $v0,$v0,0xff
    sh      $v0,0($v1)
    addiu   $v0,$a2,-198
    sra     $v0,$v0,0x1
    lui     $v1,0x800d
    lw      $v1,27660($v1)
    sllv    $v0,$t3,$v0
    or      $v1,$v1,$v0
    lui     $at,0x800d
    sw      $v1,27660($at)
    j       sym_8002eb90
    lui     $v0,0xff
.LFUN_8002eb00_64:
    sll     $v0,$a2,0x1
    lui     $a0,0x800d
    lw      $a0,27492($a0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$a0
    addu    $v1,$v1,$a0
    sh      $t0,0($v0)
    srl     $v0,$t0,0x10
    andi    $v0,$v0,0xff
    sh      $v0,0($v1)
    lui     $v0,0xff
    .end FUN_8002eb00
    .size FUN_8002eb00, . - FUN_8002eb00

/* FUN_8002fddc (0x8002fddc, 32 bytes) */
    .section .text.FUN_8002fddc,"ax",@progbits
    .globl FUN_8002fddc
    .globl FUN_8002fdfc
    .type FUN_8002fddc, @function
    .ent FUN_8002fddc
FUN_8002fddc:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     FUN_8002fdfc
    sll     $zero,$zero,0x0
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8002fddc
    .size FUN_8002fddc, . - FUN_8002fddc

/* FUN_8002fdfc (0x8002fdfc, 116 bytes) */
    .section .text.FUN_8002fdfc,"ax",@progbits
    .globl FUN_8002fdfc
    .globl sym_8003bbe8
    .globl sym_8002e72c
    .globl sym_8003bb68
    .globl sym_8003bba8
    .globl sym_8003bbf8
    .type FUN_8002fdfc, @function
    .ent FUN_8002fdfc
FUN_8002fdfc:
    addiu   $sp,$sp,-24
    lui     $v1,0x800d
    lw      $v1,27716($v1)
    addiu   $v0,$zero,1
    bne     $v1,$v0,.LFUN_8002fdfc_64
    sw      $ra,16($sp)
    lui     $at,0x800d
    jal     sym_8003bbe8
    sw      $zero,27716($at)
    addu    $a0,$zero,$zero
    lui     $at,0x800d
    sw      $zero,27548($at)
    lui     $at,0x800d
    jal     sym_8002e72c
    sw      $zero,27552($at)
    lui     $a0,0x800d
    lw      $a0,27612($a0)
    jal     sym_8003bb68
    sll     $zero,$zero,0x0
    lui     $a0,0x800d
    lw      $a0,27612($a0)
    jal     sym_8003bba8
    sll     $zero,$zero,0x0
    jal     sym_8003bbf8
    sll     $zero,$zero,0x0
.LFUN_8002fdfc_64:
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8002fdfc
    .size FUN_8002fdfc, . - FUN_8002fdfc

/* FUN_80030d78 (0x80030d78, 200 bytes) */
    .section .text.FUN_80030d78,"ax",@progbits
    .globl FUN_80030d78
    .globl sym_80030e40
    .type FUN_80030d78, @function
    .ent FUN_80030d78
FUN_80030d78:
    lw      $v1,0($a3)
    sll     $zero,$zero,0x0
    addu    $v1,$a2,$v1
    lw      $v0,152($v1)
    sll     $zero,$zero,0x0
    and     $v0,$v0,$a0
    sw      $v0,152($v1)
    lw      $v1,0($a3)
    sll     $zero,$zero,0x0
    addu    $v1,$a2,$v1
    lw      $v0,152($v1)
    addiu   $a0,$zero,-9
    and     $v0,$v0,$a0
    sw      $v0,152($v1)
    lw      $v1,0($a3)
    sll     $zero,$zero,0x0
    addu    $v1,$a2,$v1
    lw      $v0,152($v1)
    addiu   $a0,$zero,-3
    and     $v0,$v0,$a0
    sw      $v0,152($v1)
    lw      $v1,0($a3)
    sll     $zero,$zero,0x0
    addu    $v1,$a2,$v1
    lw      $v0,152($v1)
    sll     $zero,$zero,0x0
    ori     $v0,$v0,0x200
    sw      $v0,152($v1)
    lw      $v1,0($a3)
    sll     $zero,$zero,0x0
    addu    $v1,$a2,$v1
    lw      $v0,152($v1)
    sll     $zero,$zero,0x0
    ori     $v0,$v0,0x4
    sw      $v0,152($v1)
    sb      $zero,20($s0)
    lw      $v0,0($a3)
    sll     $zero,$zero,0x0
    addu    $v0,$a2,$v0
    lw      $v0,152($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x400
    beq     $v0,$zero,.LFUN_80030d78_bc
    sll     $zero,$zero,0x0
    lw      $v0,12($s0)
    j       sym_80030e40
    sw      $v0,8($s0)
.LFUN_80030d78_bc:
    lw      $v0,4($s0)
    sll     $zero,$zero,0x0
    sw      $v0,8($s0)
    .end FUN_80030d78
    .size FUN_80030d78, . - FUN_80030d78

/* FUN_80031174 (0x80031174, 76 bytes) */
    .section .text.FUN_80031174,"ax",@progbits
    .globl FUN_80031174
    .globl sym_80031228
    .type FUN_80031174, @function
    .ent FUN_80031174
FUN_80031174:
    sll     $a0,$a0,0x10
    sra     $a0,$a0,0x10
    sll     $a1,$a1,0x10
    sra     $a1,$a1,0x10
    lui     $v0,0x800e
    lw      $v0,16576($v0)
    j       sym_80031228
    addu    $a2,$s2,$zero
    sll     $a0,$a0,0x10
    sra     $a0,$a0,0x10
    sll     $a1,$a1,0x10
    sra     $a1,$a1,0x10
    lui     $v0,0x800e
    lw      $v0,16564($v0)
    j       sym_80031228
    addu    $a2,$s2,$zero
    sll     $a0,$a0,0x10
    sra     $a0,$a0,0x10
    sll     $a1,$a1,0x10
    .end FUN_80031174
    .size FUN_80031174, . - FUN_80031174

/* FUN_8003532c (0x8003532c, 124 bytes) */
    .section .text.FUN_8003532c,"ax",@progbits
    .globl FUN_8003532c
    .globl sym_800353b8
    .globl sym_800353a8
    .type FUN_8003532c, @function
    .ent FUN_8003532c
FUN_8003532c:
    lui     $at,0x800e
    addu    $at,$at,$v0
    sw      $a0,21152($at)
    addu    $s0,$zero,$zero
    andi    $v1,$s4,0xff
    slti    $v0,$v1,0
    bne     $v0,$zero,sym_800353b8
    addu    $a1,$zero,$zero
    addu    $a3,$v1,$zero
    addiu   $a2,$sp,16
    lw      $v0,0($a2)
    sll     $zero,$zero,0x0
    addu    $s0,$s0,$v0
    andi    $v0,$a1,0x1
    bne     $v0,$zero,.LFUN_8003532c_60
    srl     $v1,$a1,0x1f
    addu    $v1,$a1,$v1
    sra     $v1,$v1,0x1
    sll     $v1,$v1,0x4
    addu    $v1,$v1,$s3
    addu    $v0,$a0,$s0
    srl     $v0,$v0,0x3
    j       sym_800353a8
    sh      $v0,12($v1)
.LFUN_8003532c_60:
    addu    $v1,$a1,$v1
    sra     $v1,$v1,0x1
    sll     $v1,$v1,0x4
    addu    $v1,$v1,$s3
    addu    $v0,$a0,$s0
    srl     $v0,$v0,0x3
    sh      $v0,14($v1)
    .end FUN_8003532c
    .size FUN_8003532c, . - FUN_8003532c

/* FUN_800355b8 (0x800355b8, 120 bytes) */
    .section .text.FUN_800355b8,"ax",@progbits
    .globl FUN_800355b8
    .globl sym_800335dc
    .globl sym_8003565c
    .globl sym_80035630
    .type FUN_800355b8, @function
    .ent FUN_800355b8
FUN_800355b8:
    lui     $v1,0x800e
    lw      $v1,21016($v1)
    sll     $zero,$zero,0x0
    sltu    $v0,$v1,$s0
    beq     $v0,$zero,.LFUN_800355b8_1c
    sll     $zero,$zero,0x0
    addu    $s0,$v1,$zero
.LFUN_800355b8_1c:
    jal     sym_800335dc
    addiu   $a0,$zero,1
    addu    $a0,$s4,$zero
    jal     sym_8003565c
    addu    $a1,$s0,$zero
    lui     $v0,0x800e
    lw      $v0,21016($v0)
    sll     $zero,$zero,0x0
    subu    $v0,$v0,$s0
    lui     $at,0x800e
    sw      $v0,21016($at)
    bne     $v0,$zero,sym_80035630
    addiu   $v0,$zero,-2
    addu    $v0,$s1,$zero
    addiu   $v1,$zero,-1
    lui     $at,0x800d
    sh      $v1,30148($at)
    addiu   $v1,$zero,1
    lui     $at,0x800e
    sw      $zero,21016($at)
    lui     $at,0x800e
    addu    $at,$at,$v0
    sb      $v1,21056($at)
    .end FUN_800355b8
    .size FUN_800355b8, . - FUN_800355b8

/* FUN_8003b494 (0x8003b494, 48 bytes) */
    .section .text.FUN_8003b494,"ax",@progbits
    .globl FUN_8003b494
    .type FUN_8003b494, @function
    .ent FUN_8003b494
FUN_8003b494:
    sll     $zero,$zero,0x0
    lhu     $t7,10($v1)
    lui     $t0,0x0
    or      $t8,$t7,$v0
    ori     $t9,$t8,0x12
    sh      $t9,10($v1)
    addiu   $t0,$zero,40
.LFUN_8003b494_1c:
    addiu   $t0,$t0,-1
    bne     $t0,$zero,.LFUN_8003b494_1c
    sll     $zero,$zero,0x0
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8003b494
    .size FUN_8003b494, . - FUN_8003b494

/* FUN_8003b4c4 (0x8003b4c4, 60 bytes) */
    .section .text.FUN_8003b4c4,"ax",@progbits
    .globl FUN_8003b4c4
    .globl FUN_8003b500
    .type FUN_8003b4c4, @function
    .ent FUN_8003b4c4
FUN_8003b4c4:
    lw      $v0,4212($v1)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x80
    beq     $v0,$zero,FUN_8003b500
    sll     $zero,$zero,0x0
.LFUN_8003b4c4_14:
    lw      $v0,4164($v1)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x80
    bne     $v0,$zero,.LFUN_8003b4c4_14
    sll     $zero,$zero,0x0
    lui     $v0,0x1
    lw      $v0,-8196($v0)
    sll     $zero,$zero,0x0
    jr      $v0
    sll     $zero,$zero,0x0
    .end FUN_8003b4c4
    .size FUN_8003b4c4, . - FUN_8003b4c4

/* FUN_8003b500 (0x8003b500, 8 bytes) */
    .section .text.FUN_8003b500,"ax",@progbits
    .globl FUN_8003b500
    .type FUN_8003b500, @function
    .ent FUN_8003b500
FUN_8003b500:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8003b500
    .size FUN_8003b500, . - FUN_8003b500

/* FUN_8003b508 (0x8003b508, 16 bytes) */
    .section .text.FUN_8003b508,"ax",@progbits
    .globl FUN_8003b508
    .type FUN_8003b508, @function
    .ent FUN_8003b508
FUN_8003b508:
    lui     $v0,0xa001
    addiu   $v0,$v0,-8276
    jr      $v0
    sll     $zero,$zero,0x0
    .end FUN_8003b508
    .size FUN_8003b508, . - FUN_8003b508

/* FUN_8003b51c (0x8003b51c, 20 bytes) */
    .section .text.FUN_8003b51c,"ax",@progbits
    .globl FUN_8003b51c
    .type FUN_8003b51c, @function
    .ent FUN_8003b51c
FUN_8003b51c:
    lui     $t0,0xa001
    addiu   $t0,$t0,-8320
    jalr    $t0
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    .end FUN_8003b51c
    .size FUN_8003b51c, . - FUN_8003b51c

/* FUN_8003b668 (0x8003b668, 112 bytes) */
    .section .text.FUN_8003b668,"ax",@progbits
    .globl FUN_8003b668
    .globl sym_8003bbe8
    .globl sym_8003bb08
    .globl sym_8003bbf8
    .type FUN_8003b668, @function
    .ent FUN_8003b668
FUN_8003b668:
    lui     $at,0x800e
    sw      $ra,28584($at)
    jal     sym_8003bbe8
    sll     $zero,$zero,0x0
    addiu   $t1,$zero,86
    addiu   $t2,$zero,176
    jalr    $t2
    sll     $zero,$zero,0x0
    lw      $v0,24($v0)
    lui     $t2,0x8004
    addiu   $t2,$t2,-18728
    lui     $t1,0x8004
    addiu   $t1,$t1,-18716
.LFUN_8003b668_34:
    lw      $v1,0($t2)
    sll     $zero,$zero,0x0
    sw      $v1,112($v0)
    addiu   $t2,$t2,4
    bne     $t2,$t1,.LFUN_8003b668_34
    addiu   $v0,$v0,4
    jal     sym_8003bb08
    sll     $zero,$zero,0x0
    jal     sym_8003bbf8
    sll     $zero,$zero,0x0
    lui     $ra,0x800e
    lw      $ra,28584($ra)
    sll     $zero,$zero,0x0
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8003b668
    .size FUN_8003b668, . - FUN_8003b668

/* FUN_8003d984 (0x8003d984, 76 bytes) */
    .section .text.FUN_8003d984,"ax",@progbits
    .globl FUN_8003d984
    .globl sym_8003dad8
    .globl FUN_8003d9d8
    .type FUN_8003d984, @function
    .ent FUN_8003d984
FUN_8003d984:
    lw      $v1,60($s0)
    sll     $zero,$zero,0x0
    lbu     $v0,2($v1)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,sym_8003dad8
    addu    $v0,$zero,$zero
    lbu     $v0,3($v1)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,sym_8003dad8
    addu    $v0,$zero,$zero
    lbu     $v0,4($v1)
    lbu     $v1,5($v1)
    sll     $v0,$v0,0x8
    addu    $a0,$v1,$v0
    lhu     $v1,238($s0)
    andi    $v0,$a0,0xffff
    beq     $v1,$v0,FUN_8003d9d8
    sh      $a0,230($s0)
    sh      $a0,238($s0)
    .end FUN_8003d984
    .size FUN_8003d984, . - FUN_8003d984

/* FUN_8003d9d8 (0x8003d9d8, 252 bytes) */
    .section .text.FUN_8003d9d8,"ax",@progbits
    .globl FUN_8003d9d8
    .globl sym_8003dad4
    .globl sym_8003dad8
    .globl sym_8003d9d0
    .globl sym_8003dae8
    .globl sym_8003db20
    .type FUN_8003d9d8, @function
    .ent FUN_8003d9d8
FUN_8003d9d8:
    ori     $v0,$zero,0xffff
    sh      $v0,238($s0)
    sb      $zero,235($s0)
    j       sym_8003dad4
    sb      $zero,71($s0)
    lw      $v1,60($s0)
    sll     $zero,$zero,0x0
    lbu     $v0,2($v1)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,sym_8003dad8
    addu    $v0,$zero,$zero
    lbu     $v0,3($v1)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,sym_8003dad8
    addu    $v0,$zero,$zero
    lhu     $a0,236($s0)
    lbu     $v1,4($v1)
    lbu     $v0,71($s0)
    addiu   $a0,$a0,8
    addiu   $v1,$v1,3
    andi    $v1,$v1,0x1fc
    addu    $a0,$a0,$v1
    lbu     $v1,234($s0)
    addiu   $v0,$v0,1
    sb      $v0,71($s0)
    andi    $v0,$v0,0xff
    sltu    $v0,$v0,$v1
    bne     $v0,$zero,sym_8003d9d0
    sh      $a0,236($s0)
    jal     sym_8003dae8
    addu    $a0,$s0,$zero
    slti    $v0,$v0,129
    bne     $v0,$zero,.LFUN_8003d9d8_b0
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $v0,-29160($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a0,$s0,$zero
    addiu   $v0,$zero,254
    sb      $v0,70($s0)
    addiu   $v0,$zero,2
    j       sym_8003d9d0
    sb      $v0,73($s0)
.LFUN_8003d9d8_b0:
    lhu     $v1,236($s0)
    lhu     $v0,238($s0)
    sll     $zero,$zero,0x0
    beq     $v0,$v1,.LFUN_8003d9d8_d4
    addu    $v0,$zero,$zero
    sh      $v1,238($s0)
    sb      $zero,71($s0)
    j       sym_8003dad8
    sh      $zero,236($s0)
.LFUN_8003d9d8_d4:
    addu    $a0,$s0,$zero
    addiu   $v0,$zero,255
    addiu   $a1,$s0,99
    sh      $zero,238($s0)
    sb      $zero,235($s0)
    jal     sym_8003db20
    sb      $v0,70($s0)
    addiu   $v0,$zero,2
    j       sym_8003d9d0
    sb      $v0,70($s0)
    .end FUN_8003d9d8
    .size FUN_8003d9d8, . - FUN_8003d9d8

/* FUN_8003dd58 (0x8003dd58, 220 bytes) */
    .section .text.FUN_8003dd58,"ax",@progbits
    .globl FUN_8003dd58
    .globl sym_8003e08c
    .globl sym_8003e088
    .globl sym_8003de34
    .type FUN_8003dd58, @function
    .ent FUN_8003dd58
FUN_8003dd58:
    lbu     $v0,71($a1)
    lbu     $v1,227($a1)
    sh      $zero,238($a1)
    sb      $zero,235($a1)
    addiu   $v0,$v0,1
    sb      $v0,71($a1)
    andi    $v0,$v0,0xff
    sltu    $v0,$v0,$v1
    bne     $v0,$zero,sym_8003e08c
    addu    $v0,$zero,$zero
    j       sym_8003e088
    sb      $zero,71($a1)
    lw      $a2,60($a1)
    sll     $zero,$zero,0x0
    lbu     $v0,2($a2)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,sym_8003e08c
    addu    $v0,$zero,$zero
    lbu     $v0,3($a2)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,sym_8003e08c
    addu    $v0,$zero,$zero
    lbu     $v1,71($a1)
    lw      $a0,4($a1)
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    addu    $a0,$a0,$v0
    lbu     $v1,0($a0)
    lbu     $v0,4($a2)
    sll     $zero,$zero,0x0
    bne     $v1,$v0,.LFUN_8003dd58_d8
    ori     $v0,$zero,0xffff
    lbu     $v0,5($a2)
    lbu     $v1,1($a0)
    andi    $v0,$v0,0x7f
    bne     $v1,$v0,.LFUN_8003dd58_d8
    ori     $v0,$zero,0xffff
    lbu     $v1,2($a0)
    lbu     $v0,6($a2)
    sll     $zero,$zero,0x0
    bne     $v1,$v0,.LFUN_8003dd58_d8
    ori     $v0,$zero,0xffff
    lbu     $v1,3($a0)
    lbu     $v0,7($a2)
    sll     $zero,$zero,0x0
    bne     $v1,$v0,.LFUN_8003dd58_d8
    ori     $v0,$zero,0xffff
    lbu     $v0,5($a2)
    lbu     $v1,4($a0)
    sra     $v0,$v0,0x7
    bne     $v1,$v0,.LFUN_8003dd58_d8
    ori     $v0,$zero,0xffff
    j       sym_8003de34
    sh      $zero,238($a1)
.LFUN_8003dd58_d8:
    sh      $v0,238($a1)
    .end FUN_8003dd58
    .size FUN_8003dd58, . - FUN_8003dd58

/* FUN_8003dee0 (0x8003dee0, 124 bytes) */
    .section .text.FUN_8003dee0,"ax",@progbits
    .globl FUN_8003dee0
    .globl sym_8003dd50
    .globl sym_8003df74
    .globl sym_8003df5c
    .type FUN_8003dee0, @function
    .ent FUN_8003dee0
FUN_8003dee0:
    lw      $a2,60($a1)
    sll     $zero,$zero,0x0
    lbu     $v0,2($a2)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_8003dee0_20
    sll     $zero,$zero,0x0
    j       sym_8003dd50
    sb      $zero,72($a1)
.LFUN_8003dee0_20:
    lbu     $v0,71($a1)
    lw      $v1,8($a1)
    lbu     $a0,72($a1)
    sll     $v0,$v0,0x3
    bne     $a0,$zero,sym_8003df74
    addu    $t0,$v1,$v0
    lbu     $v0,4($a2)
    addiu   $a3,$zero,3
    sb      $v0,72($a1)
    sb      $v0,0($t0)
    lw      $v0,60($a1)
    lbu     $v1,71($a1)
    sll     $zero,$zero,0x0
    bne     $v1,$zero,.LFUN_8003dee0_6c
    addiu   $a0,$v0,5
    lbu     $v0,234($a1)
    lw      $v1,8($a1)
    j       sym_8003df5c
    sll     $v0,$v0,0x3
.LFUN_8003dee0_6c:
    lbu     $v0,-8($t0)
    lw      $v1,-4($t0)
    addiu   $v0,$v0,3
    andi    $v0,$v0,0x1fc
    .end FUN_8003dee0
    .size FUN_8003dee0, . - FUN_8003dee0

/* FUN_8003e3d4 (0x8003e3d4, 76 bytes) */
    .section .text.FUN_8003e3d4,"ax",@progbits
    .globl FUN_8003e3d4
    .globl sym_8003d28c
    .type FUN_8003e3d4, @function
    .ent FUN_8003e3d4
FUN_8003e3d4:
    sll     $zero,$zero,0x0
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    lui     $v0,0x800e
    lw      $v0,-29140($v0)
    sw      $ra,20($sp)
    jalr    $v0
    addu    $s0,$a0,$zero
    addu    $a0,$s0,$zero
    lw      $v1,60($s0)
    addiu   $a1,$zero,-2
    lui     $at,0x800e
    sw      $v0,-29036($at)
    jal     sym_8003d28c
    sb      $zero,0($v1)
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8003e3d4
    .size FUN_8003e3d4, . - FUN_8003e3d4

/* FUN_8003ef08 (0x8003ef08, 244 bytes) */
    .section .text.FUN_8003ef08,"ax",@progbits
    .globl FUN_8003ef08
    .globl sym_8003effc
    .type FUN_8003ef08, @function
    .ent FUN_8003ef08
FUN_8003ef08:
    lbu     $v1,232($s0)
    sll     $zero,$zero,0x0
    addiu   $v0,$v1,-4
    sltiu   $v0,$v0,2
    bne     $v0,$zero,.LFUN_8003ef08_20
    addiu   $v0,$zero,7
    bne     $v1,$v0,.LFUN_8003ef08_b4
    sll     $zero,$zero,0x0
.LFUN_8003ef08_20:
    lhu     $v0,230($s0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_8003ef08_b4
    sll     $zero,$zero,0x0
    lbu     $v0,52($s0)
    sll     $zero,$zero,0x0
    sltiu   $v0,$v0,2
    bne     $v0,$zero,.LFUN_8003ef08_b4
    addiu   $v1,$zero,64
    lw      $a0,40($s0)
    sll     $zero,$zero,0x0
    lbu     $v0,0($a0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0xc0
    bne     $v0,$v1,sym_8003effc
    sll     $zero,$zero,0x0
    lbu     $v0,1($a0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x1
    beq     $v0,$zero,sym_8003effc
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $v0,-29092($v0)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,10
    slti    $v0,$v0,61
    beq     $v0,$zero,sym_8003effc
    addiu   $v0,$zero,1
    sb      $v0,88($s0)
    sb      $v0,87($s0)
    lui     $v0,0x800e
    lw      $v0,-29092($v0)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,10
    lui     $at,0x800e
    j       sym_8003effc
    sw      $v0,-29092($at)
.LFUN_8003ef08_b4:
    lbu     $v1,232($s0)
    addiu   $v0,$zero,3
    bne     $v1,$v0,.LFUN_8003ef08_cc
    addiu   $v0,$zero,1
    j       sym_8003effc
    sb      $v0,87($s0)
.LFUN_8003ef08_cc:
    lhu     $v0,230($s0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,sym_8003effc
    addiu   $v0,$zero,1
    addiu   $v1,$zero,5
    addiu   $a0,$s0,5
.LFUN_8003ef08_e4:
    sb      $v0,87($a0)
    addiu   $v1,$v1,-1
    bgez    $v1,.LFUN_8003ef08_e4
    addiu   $a0,$a0,-1
    .end FUN_8003ef08
    .size FUN_8003ef08, . - FUN_8003ef08

/* FUN_80041f9c (0x80041f9c, 852 bytes) */
    .section .text.FUN_80041f9c,"ax",@progbits
    .globl FUN_80041f9c
    .globl sym_80098880
    .globl sym_800493f8
    .globl sym_80048144
    .globl sym_80049208
    .globl sym_800490f8
    .type FUN_80041f9c, @function
    .ent FUN_80041f9c
FUN_80041f9c:
    addiu   $sp,$sp,-160
    sw      $s7,148($sp)
    addu    $s7,$a1,$zero
    sw      $s1,124($sp)
    addu    $s1,$a2,$zero
    lui     $v0,0x8002
    sw      $s3,132($sp)
    lw      $s3,180($sp)
    addiu   $v0,$v0,-19804
    sw      $s2,128($sp)
    sw      $s0,120($sp)
    sw      $a0,160($sp)
    andi    $v1,$s3,0xf
    sll     $s0,$v1,0x2
    addu    $v0,$s0,$v0
    lw      $a0,0($v0)
    addu    $s2,$a3,$zero
    sw      $ra,156($sp)
    sw      $s8,152($sp)
    sw      $s6,144($sp)
    sw      $s5,140($sp)
    jal     sym_80098880
    sw      $s4,136($sp)
    lui     $v1,0x8002
    addiu   $v1,$v1,-19612
    addu    $v1,$s0,$v1
    sw      $v0,64($sp)
    lui     $v0,0x8002
    addiu   $v0,$v0,-19740
    addu    $v0,$s0,$v0
    lw      $v1,0($v1)
    lw      $v0,0($v0)
    addiu   $t1,$v1,-1
    sw      $v1,72($sp)
    sw      $t1,76($sp)
    lw      $t1,72($sp)
    addiu   $v1,$zero,13
    bne     $t1,$v1,.LFUN_80041f9c_ac
    sw      $v0,68($sp)
    addiu   $t1,$zero,16
    sw      $t1,72($sp)
    addu    $t1,$v1,$zero
    sw      $t1,76($sp)
.LFUN_80041f9c_ac:
    srl     $v1,$s3,0x8
    lui     $v0,0x8002
    addiu   $v0,$v0,-19676
    addu    $v0,$s0,$v0
    andi    $a2,$v1,0xff
    lw      $v0,0($v0)
    lw      $t1,64($sp)
    addu    $s4,$a2,$v0
    sll     $v1,$s4,0x1
    addu    $v1,$v1,$s4
    sll     $v0,$v1,0x4
    subu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$s4
    sll     $v0,$v0,0x4
    sra     $s4,$v0,0xc
    srl     $v0,$s3,0x4
    andi    $v0,$v0,0x3
    addiu   $v0,$v0,-1
    sw      $v0,88($sp)
    srl     $v0,$s3,0x10
    andi    $s8,$v0,0xff
    srl     $v0,$s3,0x18
    lh      $v1,16($t1)
    andi    $v0,$v0,0xf
    addu    $v1,$v1,$v0
    sw      $v1,84($sp)
    lui     $v1,0x8002
    addiu   $v1,$v1,-19548
    addu    $v1,$s0,$v1
    lui     $v0,0x8002
    addiu   $v0,$v0,-19484
    addu    $v0,$s0,$v0
    lh      $a1,2($t1)
    lw      $v1,0($v1)
    lh      $a0,4($t1)
    lw      $v0,0($v0)
    lw      $t1,184($sp)
    addu    $a1,$a1,$v1
    sw      $t1,104($sp)
    sw      $t1,108($sp)
    sw      $t1,100($sp)
    lw      $t1,176($sp)
    addu    $a0,$a0,$v0
    sw      $a1,92($sp)
    sw      $a0,96($sp)
    lbu     $v0,0($t1)
    lw      $t1,64($sp)
    sll     $zero,$zero,0x0
    lh      $t1,14($t1)
    addu    $s6,$s7,$zero
    beq     $v0,$zero,.LFUN_80041f9c_318
    sw      $t1,80($sp)
    sll     $v1,$a2,0x1
    addu    $v1,$v1,$a2
    sll     $v0,$v1,0x4
    subu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a2
    sll     $v0,$v0,0x4
    sra     $s5,$v0,0xc
    lw      $s3,176($sp)
    addiu   $t1,$s5,-1
    sw      $t1,112($sp)
.LFUN_80041f9c_1ac:
    lbu     $v1,0($s3)
    addiu   $v0,$zero,126
    bne     $v1,$v0,.LFUN_80041f9c_1c8
    sra     $v0,$s4,0x1
    addu    $s1,$s1,$v0
    j       .LFUN_80041f9c_2c8
    subu    $s2,$s2,$v0
.LFUN_80041f9c_1c8:
    lbu     $v0,0($s3)
    sll     $zero,$zero,0x0
    addiu   $s0,$v0,-32
    beq     $s0,$zero,.LFUN_80041f9c_2c0
    addu    $a1,$s7,$zero
    addiu   $a2,$sp,32
    addiu   $a3,$sp,48
    addu    $v0,$s1,$s5
    sw      $v0,36($sp)
    subu    $v0,$s2,$s5
    sll     $v1,$s8,0x1
    addu    $v1,$v1,$s8
    sw      $v0,52($sp)
    sll     $v0,$v1,0x4
    subu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$s8
    sra     $v0,$v0,0x8
    addu    $t0,$s1,$v0
    addiu   $v1,$t0,1
    addu    $v0,$s2,$v0
    sw      $v1,40($sp)
    addiu   $v1,$v0,1
    sw      $v1,56($sp)
    addiu   $v1,$s5,1
    lw      $a0,160($sp)
    lw      $t1,112($sp)
    addu    $t0,$t0,$v1
    sw      $s1,32($sp)
    sw      $s2,48($sp)
    sw      $t0,44($sp)
    subu    $v0,$v0,$t1
    jal     sym_800493f8
    sw      $v0,60($sp)
    lw      $t1,68($sp)
    sra     $v0,$s0,0x4
    mult    $t1,$v0
    mflo    $v1
    lw      $t1,72($sp)
    andi    $v0,$s0,0xf
    mult    $t1,$v0
    lw      $t1,68($sp)
    sll     $zero,$zero,0x0
    sw      $t1,16($sp)
    lw      $t1,76($sp)
    sll     $zero,$zero,0x0
    sw      $t1,20($sp)
    lw      $t1,64($sp)
    lw      $a0,160($sp)
    lh      $v0,10($t1)
    lw      $t1,88($sp)
    sll     $zero,$zero,0x0
    sw      $t1,28($sp)
    lw      $t1,92($sp)
    addu    $a1,$s7,$zero
    sw      $v0,24($sp)
    addu    $a2,$t1,$v1
    lw      $t1,96($sp)
    mflo    $t0
    jal     sym_80048144
    addu    $a3,$t1,$t0
    addiu   $s7,$s7,1
.LFUN_80041f9c_2c0:
    addu    $s1,$s1,$s4
    subu    $s2,$s2,$s4
.LFUN_80041f9c_2c8:
    addiu   $s3,$s3,1
    lbu     $v0,0($s3)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_80041f9c_1ac
    slt     $v0,$s6,$s7
    j       .LFUN_80041f9c_31c
    sll     $zero,$zero,0x0
.LFUN_80041f9c_2e4:
    lw      $a0,160($sp)
    lw      $a2,80($sp)
    lw      $a3,84($sp)
    jal     sym_80049208
    addu    $a1,$s6,$zero
    lw      $t1,108($sp)
    lw      $a0,160($sp)
    lw      $a2,100($sp)
    lw      $a3,104($sp)
    addu    $a1,$s6,$zero
    jal     sym_800490f8
    sw      $t1,16($sp)
    addiu   $s6,$s6,1
.LFUN_80041f9c_318:
    slt     $v0,$s6,$s7
.LFUN_80041f9c_31c:
    bne     $v0,$zero,.LFUN_80041f9c_2e4
    addu    $v0,$s7,$zero
    lw      $ra,156($sp)
    lw      $s8,152($sp)
    lw      $s7,148($sp)
    lw      $s6,144($sp)
    lw      $s5,140($sp)
    lw      $s4,136($sp)
    lw      $s3,132($sp)
    lw      $s2,128($sp)
    lw      $s1,124($sp)
    lw      $s0,120($sp)
    jr      $ra
    addiu   $sp,$sp,160
    .end FUN_80041f9c
    .size FUN_80041f9c, . - FUN_80041f9c

/* FUN_800422f0 (0x800422f0, 960 bytes) */
    .section .text.FUN_800422f0,"ax",@progbits
    .globl FUN_800422f0
    .globl sym_80098880
    .globl sym_80049364
    .globl sym_80048144
    .globl sym_80049208
    .globl sym_800490f8
    .type FUN_800422f0, @function
    .ent FUN_800422f0
FUN_800422f0:
    addiu   $sp,$sp,-104
    sw      $s8,96($sp)
    addu    $s8,$a0,$zero
    lui     $v0,0x8002
    sw      $s1,68($sp)
    lw      $s1,132($sp)
    addiu   $v0,$v0,-19804
    sw      $s0,64($sp)
    andi    $s0,$s1,0xf
    sll     $s0,$s0,0x2
    addu    $v0,$s0,$v0
    lw      $a0,0($v0)
    sw      $ra,100($sp)
    sw      $s7,92($sp)
    sw      $s6,88($sp)
    sw      $s5,84($sp)
    sw      $s4,80($sp)
    sw      $s3,76($sp)
    sw      $s2,72($sp)
    sw      $a1,108($sp)
    sw      $a2,112($sp)
    jal     sym_80098880
    sw      $a3,116($sp)
    addu    $s7,$v0,$zero
    lui     $v1,0x8002
    addiu   $v1,$v1,-19740
    addu    $v1,$s0,$v1
    lui     $v0,0x8002
    addiu   $v0,$v0,-19612
    addu    $s0,$s0,$v0
    srl     $s1,$s1,0x18
    andi    $s1,$s1,0xf
    lh      $v0,16($s7)
    lw      $t0,108($sp)
    lw      $s6,0($v1)
    lw      $s5,0($s0)
    addu    $v0,$v0,$s1
    sw      $v0,36($sp)
    sw      $t0,48($sp)
    lh      $t1,14($s7)
    sll     $zero,$zero,0x0
    sw      $t1,32($sp)
    lh      $t0,2($s7)
    sll     $zero,$zero,0x0
    sw      $t0,40($sp)
    lh      $t1,4($s7)
    lw      $t0,124($sp)
    addu    $s3,$zero,$zero
    blez    $t0,.LFUN_800422f0_250
    sw      $t1,44($sp)
    lw      $t1,116($sp)
    sll     $zero,$zero,0x0
    addu    $v0,$t1,$s5
    lw      $t0,128($sp)
    lw      $t1,120($sp)
    addu    $v0,$v0,$t0
    sw      $v0,56($sp)
    sw      $t1,60($sp)
.LFUN_800422f0_e8:
    lw      $t0,60($sp)
    lw      $t1,128($sp)
    lw      $a0,0($t0)
    addu    $v0,$s5,$t1
    andi    $v1,$a0,0x1f
    mult    $v1,$v0
    addu    $s1,$s5,$zero
    addu    $s4,$s5,$zero
    mflo    $t0
    sra     $v1,$t0,0x5
    slt     $v0,$v1,$s4
    beq     $v0,$zero,.LFUN_800422f0_120
    sra     $a0,$a0,0x5
    addu    $s4,$v1,$zero
.LFUN_800422f0_120:
    lw      $t1,56($sp)
    lw      $t0,128($sp)
    subu    $t1,$t1,$v1
    slt     $v0,$t0,$v1
    beq     $v0,$zero,.LFUN_800422f0_144
    sw      $t1,52($sp)
    subu    $v0,$v1,$t0
    subu    $s1,$s5,$v0
    addu    $v1,$t0,$zero
.LFUN_800422f0_144:
    addiu   $s2,$a0,1
    addu    $s0,$s2,$zero
    lw      $t1,116($sp)
    addiu   $v0,$zero,9
    bne     $a0,$v0,.LFUN_800422f0_160
    subu    $a3,$t1,$v1
    addu    $s2,$zero,$zero
.LFUN_800422f0_160:
    bgez    $a0,.LFUN_800422f0_16c
    sll     $zero,$zero,0x0
    addiu   $s0,$zero,11
.LFUN_800422f0_16c:
    lw      $a1,108($sp)
    lw      $a2,112($sp)
    addu    $a0,$s8,$zero
    sw      $s6,16($sp)
    jal     sym_80049364
    sw      $s1,20($sp)
    mult    $s5,$s0
    lw      $a1,108($sp)
    addu    $a0,$s8,$zero
    sw      $s6,16($sp)
    sw      $s1,20($sp)
    lh      $v0,10($s7)
    lw      $a2,40($sp)
    lw      $t1,44($sp)
    addiu   $t0,$zero,-1
    sw      $t0,28($sp)
    sw      $v0,24($sp)
    mflo    $t0
    addu    $a3,$t1,$t0
    jal     sym_80048144
    subu    $a3,$a3,$s1
    lw      $t1,108($sp)
    lw      $a2,112($sp)
    lw      $a3,52($sp)
    addu    $a0,$s8,$zero
    sw      $s6,16($sp)
    sw      $s4,20($sp)
    addiu   $s0,$t1,1
    jal     sym_80049364
    addu    $a1,$s0,$zero
    addiu   $s3,$s3,1
    addu    $a0,$s8,$zero
    mult    $s5,$s2
    lw      $t0,60($sp)
    lw      $a2,40($sp)
    addu    $a1,$s0,$zero
    sw      $s6,16($sp)
    sw      $s4,20($sp)
    addiu   $t0,$t0,4
    sw      $t0,60($sp)
    lh      $v0,10($s7)
    lw      $t0,44($sp)
    addiu   $t1,$zero,-1
    sw      $t1,28($sp)
    sw      $v0,24($sp)
    mflo    $t1
    jal     sym_80048144
    addu    $a3,$t0,$t1
    lw      $t0,112($sp)
    lw      $t1,108($sp)
    addu    $t0,$t0,$s6
    sw      $t0,112($sp)
    lw      $t0,124($sp)
    addiu   $t1,$t1,2
    slt     $v0,$s3,$t0
    bne     $v0,$zero,.LFUN_800422f0_e8
    sw      $t1,108($sp)
.LFUN_800422f0_250:
    lw      $t1,124($sp)
    sll     $zero,$zero,0x0
    blez    $t1,.LFUN_800422f0_38c
    addu    $s3,$zero,$zero
    addiu   $s4,$zero,64
    lw      $s2,120($sp)
    lw      $s1,48($sp)
.LFUN_800422f0_26c:
    addu    $a0,$s8,$zero
    lw      $a2,32($sp)
    lw      $a3,36($sp)
    jal     sym_80049208
    addu    $a1,$s1,$zero
    addu    $a0,$s8,$zero
    addiu   $s0,$s1,1
    lw      $a2,32($sp)
    lw      $a3,36($sp)
    jal     sym_80049208
    addu    $a1,$s0,$zero
    addu    $a0,$s8,$zero
    addu    $a1,$s1,$zero
    addiu   $a2,$zero,64
    addu    $a3,$a2,$zero
    jal     sym_800490f8
    sw      $s4,16($sp)
    addu    $a0,$s8,$zero
    addu    $a1,$s0,$zero
    addiu   $a2,$zero,64
    addu    $a3,$a2,$zero
    jal     sym_800490f8
    sw      $s4,16($sp)
    lw      $t0,124($sp)
    sll     $zero,$zero,0x0
    addiu   $v0,$t0,-1
    beq     $s3,$v0,.LFUN_800422f0_2fc
    sll     $zero,$zero,0x0
    lw      $v0,0($s2)
    sll     $zero,$zero,0x0
    bgtz    $v0,.LFUN_800422f0_2fc
    addiu   $s2,$s2,4
    addiu   $s3,$s3,1
    slt     $v0,$s3,$t0
    bne     $v0,$zero,.LFUN_800422f0_26c
    addiu   $s1,$s1,2
.LFUN_800422f0_2fc:
    lw      $t1,124($sp)
    sll     $zero,$zero,0x0
    slt     $v0,$s3,$t1
    beq     $v0,$zero,.LFUN_800422f0_38c
    addiu   $s2,$zero,128
    lw      $t0,48($sp)
    sll     $v0,$s3,0x1
    addu    $s1,$v0,$t0
.LFUN_800422f0_31c:
    addu    $a0,$s8,$zero
    lw      $a2,32($sp)
    lw      $a3,36($sp)
    jal     sym_80049208
    addu    $a1,$s1,$zero
    addu    $a0,$s8,$zero
    addiu   $s0,$s1,1
    lw      $a2,32($sp)
    lw      $a3,36($sp)
    jal     sym_80049208
    addu    $a1,$s0,$zero
    addu    $a0,$s8,$zero
    addu    $a1,$s1,$zero
    addiu   $a2,$zero,128
    addu    $a3,$a2,$zero
    jal     sym_800490f8
    sw      $s2,16($sp)
    addu    $a0,$s8,$zero
    addu    $a1,$s0,$zero
    addiu   $a2,$zero,128
    addu    $a3,$a2,$zero
    jal     sym_800490f8
    sw      $s2,16($sp)
    lw      $t1,124($sp)
    addiu   $s3,$s3,1
    slt     $v0,$s3,$t1
    bne     $v0,$zero,.LFUN_800422f0_31c
    addiu   $s1,$s1,2
.LFUN_800422f0_38c:
    lw      $v0,108($sp)
    lw      $ra,100($sp)
    lw      $s8,96($sp)
    lw      $s7,92($sp)
    lw      $s6,88($sp)
    lw      $s5,84($sp)
    lw      $s4,80($sp)
    lw      $s3,76($sp)
    lw      $s2,72($sp)
    lw      $s1,68($sp)
    lw      $s0,64($sp)
    jr      $ra
    addiu   $sp,$sp,104
    .end FUN_800422f0
    .size FUN_800422f0, . - FUN_800422f0

/* FUN_800426b0 (0x800426b0, 652 bytes) */
    .section .text.FUN_800426b0,"ax",@progbits
    .globl FUN_800426b0
    .globl sym_80098880
    .globl sym_80049364
    .globl sym_80048144
    .globl sym_80049208
    .globl sym_800490f8
    .type FUN_800426b0, @function
    .ent FUN_800426b0
FUN_800426b0:
    addiu   $sp,$sp,-112
    sw      $s4,88($sp)
    addu    $s4,$a1,$zero
    sw      $s6,96($sp)
    addu    $s6,$a2,$zero
    lui     $a1,0x8002
    sw      $s1,76($sp)
    lw      $s1,132($sp)
    addiu   $a1,$a1,-19228
    sw      $s2,80($sp)
    lw      $s2,136($sp)
    lui     $a2,0x800e
    sw      $ra,108($sp)
    sw      $s8,104($sp)
    sw      $s7,100($sp)
    sw      $s5,92($sp)
    sw      $s3,84($sp)
    sw      $s0,72($sp)
    sw      $a0,112($sp)
    sw      $a3,124($sp)
    srl     $v0,$s1,0x10
    andi    $s8,$v0,0xff
    andi    $s0,$s1,0xf
    sll     $s0,$s0,0x2
    lui     $v0,0x8002
    addiu   $v0,$v0,-19420
    addu    $v0,$s0,$v0
    addu    $a1,$s0,$a1
    lw      $a0,0($v0)
    lui     $v0,0x8002
    addiu   $v0,$v0,-19356
    addu    $v0,$s0,$v0
    lw      $v1,0($v0)
    lw      $a1,0($a1)
    sll     $v0,$v1,0x1
    addu    $v0,$v0,$v1
    lw      $v1,30124($a2)
    sll     $v0,$v0,0x8
    sw      $a1,36($sp)
    addu    $v1,$v1,$v0
    jal     sym_80098880
    sw      $v1,68($sp)
    lui     $v1,0x8002
    addiu   $v1,$v1,-19292
    addu    $s0,$s0,$v1
    lw      $a0,0($s0)
    sll     $v1,$s8,0x8
    div     $zero,$v1,$a0
    mflo    $s8
    addu    $s5,$v0,$zero
    srl     $v0,$s1,0x4
    andi    $v0,$v0,0x3
    addiu   $v0,$v0,-1
    srl     $s1,$s1,0x18
    andi    $s1,$s1,0xf
    sw      $v0,48($sp)
    lh      $v0,16($s5)
    addu    $s7,$s2,$zero
    sw      $s7,64($sp)
    sw      $s7,60($sp)
    addu    $v0,$v0,$s1
    sw      $v0,44($sp)
    sw      $s8,32($sp)
    lh      $t0,14($s5)
    sll     $zero,$zero,0x0
    sw      $t0,40($sp)
    lh      $t0,2($s5)
    sll     $zero,$zero,0x0
    sw      $t0,52($sp)
    lw      $t0,128($sp)
    sll     $zero,$zero,0x0
    lbu     $v0,0($t0)
    lh      $t0,4($s5)
    addu    $s3,$s4,$zero
    beq     $v0,$zero,.LFUN_800426b0_250
    sw      $t0,56($sp)
    lw      $s1,128($sp)
    sll     $zero,$zero,0x0
    lbu     $v0,0($s1)
.LFUN_800426b0_13c:
    lw      $t0,68($sp)
    addiu   $a0,$v0,-32
    sll     $v0,$a0,0x3
    addu    $s0,$t0,$v0
    lhu     $v0,4($s0)
    lw      $t0,32($sp)
    sll     $zero,$zero,0x0
    mult    $v0,$t0
    mflo    $t0
    sra     $v1,$t0,0x8
    lw      $t0,36($sp)
    addu    $v0,$s6,$v1
    addu    $s2,$v0,$t0
    lw      $t0,140($sp)
    sll     $zero,$zero,0x0
    slt     $v0,$t0,$s2
    bne     $v0,$zero,.LFUN_800426b0_254
    slt     $v0,$s3,$s4
    beq     $a0,$zero,.LFUN_800426b0_200
    addu    $a1,$s4,$zero
    sw      $v1,16($sp)
    lhu     $v0,6($s0)
    sll     $zero,$zero,0x0
    mult    $v0,$s8
    addu    $a2,$s6,$zero
    lw      $a0,112($sp)
    lw      $a3,124($sp)
    mflo    $t0
    sra     $v0,$t0,0x8
    jal     sym_80049364
    sw      $v0,20($sp)
    lw      $a0,112($sp)
    lhu     $a2,0($s0)
    lhu     $v0,4($s0)
    lw      $t0,52($sp)
    lhu     $a3,2($s0)
    addu    $a2,$t0,$a2
    lw      $t0,56($sp)
    sw      $v0,16($sp)
    lhu     $v0,6($s0)
    addu    $a3,$t0,$a3
    sw      $v0,20($sp)
    lh      $v0,10($s5)
    lw      $t0,48($sp)
    addu    $a1,$s4,$zero
    sw      $t0,28($sp)
    jal     sym_80048144
    sw      $v0,24($sp)
    addiu   $s4,$s4,1
.LFUN_800426b0_200:
    addiu   $s1,$s1,1
    lbu     $v0,0($s1)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_800426b0_13c
    addu    $s6,$s2,$zero
    j       .LFUN_800426b0_254
    slt     $v0,$s3,$s4
.LFUN_800426b0_21c:
    lw      $a0,112($sp)
    lw      $a2,40($sp)
    lw      $a3,44($sp)
    jal     sym_80049208
    addu    $a1,$s3,$zero
    addu    $a1,$s3,$zero
    lw      $t0,64($sp)
    lw      $a0,112($sp)
    lw      $a2,60($sp)
    addu    $a3,$s7,$zero
    jal     sym_800490f8
    sw      $t0,16($sp)
    addiu   $s3,$s3,1
.LFUN_800426b0_250:
    slt     $v0,$s3,$s4
.LFUN_800426b0_254:
    bne     $v0,$zero,.LFUN_800426b0_21c
    addu    $v0,$s4,$zero
    lw      $ra,108($sp)
    lw      $s8,104($sp)
    lw      $s7,100($sp)
    lw      $s6,96($sp)
    lw      $s5,92($sp)
    lw      $s4,88($sp)
    lw      $s3,84($sp)
    lw      $s2,80($sp)
    lw      $s1,76($sp)
    lw      $s0,72($sp)
    jr      $ra
    addiu   $sp,$sp,112
    .end FUN_800426b0
    .size FUN_800426b0, . - FUN_800426b0

/* FUN_800429b4 (0x800429b4, 136 bytes) */
    .section .text.FUN_800429b4,"ax",@progbits
    .globl FUN_800429b4
    .globl FUN_80042b20
    .type FUN_800429b4, @function
    .ent FUN_800429b4
FUN_800429b4:
    addiu   $sp,$sp,-48
    addu    $t0,$a0,$zero
    lui     $v0,0x8011
    addiu   $v0,$v0,27296
    sw      $ra,44($sp)
    sw      $s0,40($sp)
    lbu     $v1,392($v0)
    lbu     $a0,64($sp)
    andi    $v0,$v1,0xff
    andi    $v1,$v1,0xf
    srl     $v0,$v0,0x4
    bne     $v1,$v0,.LFUN_800429b4_74
    addu    $t1,$a1,$zero
    andi    $v0,$a0,0xff
    lui     $s0,0x800e
    sw      $v0,24($sp)
    lw      $v0,68($sp)
    lw      $a1,30120($s0)
    addiu   $a0,$zero,8
    sw      $a2,16($sp)
    addu    $a2,$t0,$zero
    sw      $a3,20($sp)
    addu    $a3,$t1,$zero
    sw      $v0,28($sp)
    addiu   $v0,$zero,128
    jal     FUN_80042b20
    sw      $v0,32($sp)
    j       .LFUN_800429b4_78
    sw      $v0,30120($s0)
.LFUN_800429b4_74:
    addiu   $v0,$zero,-1
.LFUN_800429b4_78:
    lw      $ra,44($sp)
    lw      $s0,40($sp)
    jr      $ra
    addiu   $sp,$sp,48
    .end FUN_800429b4
    .size FUN_800429b4, . - FUN_800429b4

/* FUN_80042ad8 (0x80042ad8, 72 bytes) */
    .section .text.FUN_80042ad8,"ax",@progbits
    .globl FUN_80042ad8
    .globl FUN_80042b20
    .type FUN_80042ad8, @function
    .ent FUN_80042ad8
FUN_80042ad8:
    addiu   $sp,$sp,-48
    lw      $t0,64($sp)
    lw      $t1,68($sp)
    lw      $t2,76($sp)
    lbu     $v1,72($sp)
    addiu   $v0,$zero,128
    sw      $ra,40($sp)
    sw      $v0,32($sp)
    andi    $v1,$v1,0xff
    sw      $t0,16($sp)
    sw      $t1,20($sp)
    sw      $v1,24($sp)
    jal     FUN_80042b20
    sw      $t2,28($sp)
    lw      $ra,40($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,48
    .end FUN_80042ad8
    .size FUN_80042ad8, . - FUN_80042ad8

/* FUN_80042b20 (0x80042b20, 220 bytes) */
    .section .text.FUN_80042b20,"ax",@progbits
    .globl FUN_80042b20
    .globl sym_80041628
    .type FUN_80042b20, @function
    .ent FUN_80042b20
FUN_80042b20:
    addiu   $sp,$sp,-64
    lw      $t1,80($sp)
    lbu     $t3,88($sp)
    lw      $t4,84($sp)
    bgez    $t1,.LFUN_80042b20_20
    sw      $ra,56($sp)
    negu    $t1,$t1
    addiu   $t3,$zero,45
.LFUN_80042b20_20:
    addiu   $t0,$t4,-1
    blez    $t0,.LFUN_80042b20_40
    addiu   $t2,$zero,1
.LFUN_80042b20_2c:
    sll     $v0,$t2,0x2
    addu    $v0,$v0,$t2
    addiu   $t0,$t0,-1
    bgtz    $t0,.LFUN_80042b20_2c
    sll     $t2,$v0,0x1
.LFUN_80042b20_40:
    blez    $t4,.LFUN_80042b20_90
    addu    $t0,$t4,$zero
    addiu   $t5,$sp,32
.LFUN_80042b20_4c:
    slt     $v0,$t1,$t2
    bne     $v0,$zero,.LFUN_80042b20_6c
    addu    $v1,$zero,$zero
    addiu   $t3,$zero,48
.LFUN_80042b20_5c:
    subu    $t1,$t1,$t2
    slt     $v0,$t1,$t2
    beq     $v0,$zero,.LFUN_80042b20_5c
    addiu   $v1,$v1,1
.LFUN_80042b20_6c:
    sll     $v0,$t1,0x2
    addu    $v0,$v0,$t1
    sll     $t1,$v0,0x1
    subu    $v0,$t4,$t0
    addu    $v0,$t5,$v0
    addu    $v1,$t3,$v1
    addiu   $t0,$t0,-1
    bgtz    $t0,.LFUN_80042b20_4c
    sb      $v1,0($v0)
.LFUN_80042b20_90:
    andi    $v0,$t3,0xff
    addiu   $v1,$zero,48
    beq     $v0,$v1,.LFUN_80042b20_a4
    addu    $v0,$t4,$sp
    sb      $v1,31($v0)
.LFUN_80042b20_a4:
    addiu   $v1,$sp,32
    addu    $v0,$v1,$t4
    sb      $zero,0($v0)
    lw      $v0,92($sp)
    sll     $zero,$zero,0x0
    sw      $v0,20($sp)
    lw      $v0,96($sp)
    sw      $v1,16($sp)
    jal     sym_80041628
    sw      $v0,24($sp)
    lw      $ra,56($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,64
    .end FUN_80042b20
    .size FUN_80042b20, . - FUN_80042b20

/* FUN_80042ce0 (0x80042ce0, 172 bytes) */
    .section .text.FUN_80042ce0,"ax",@progbits
    .globl FUN_80042ce0
    .globl sym_80042d94
    .globl sym_80042dec
    .globl FUN_80042d8c
    .type FUN_80042ce0, @function
    .ent FUN_80042ce0
FUN_80042ce0:
    addu    $t2,$a0,$zero
    addu    $t0,$zero,$zero
    srl     $v0,$a1,0x7
    andi    $v0,$v0,0x1
    beq     $v0,$zero,sym_80042d94
    andi    $t1,$a1,0xf
    lui     $a0,0x8002
    addiu   $a0,$a0,-19228
    sll     $v1,$t1,0x2
    addu    $a0,$v1,$a0
    lui     $v0,0x8002
    addiu   $v0,$v0,-19356
    addu    $v1,$v1,$v0
    lw      $v1,0($v1)
    lui     $a1,0x800e
    sll     $v0,$v1,0x1
    addu    $v0,$v0,$v1
    lw      $v1,30124($a1)
    sll     $v0,$v0,0x8
    addu    $v1,$v1,$v0
    lbu     $v0,0($t2)
    lw      $a1,0($a0)
    beq     $v0,$zero,sym_80042dec
    addu    $a3,$t0,$zero
    addu    $a0,$t2,$zero
    lbu     $v0,0($a0)
.LFUN_80042ce0_68:
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,-32
    sll     $v0,$v0,0x3
    addu    $v0,$v1,$v0
    lhu     $v0,4($v0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$a1
    addu    $t0,$t0,$v0
    slt     $v0,$a2,$t0
    bne     $v0,$zero,FUN_80042d8c
    addiu   $a0,$a0,1
    lbu     $v0,0($a0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_80042ce0_68
    addiu   $a3,$a3,1
    jr      $ra
    addu    $v0,$a3,$zero
    .end FUN_80042ce0
    .size FUN_80042ce0, . - FUN_80042ce0

/* FUN_80042d8c (0x80042d8c, 108 bytes) */
    .section .text.FUN_80042d8c,"ax",@progbits
    .globl FUN_80042d8c
    .type FUN_80042d8c, @function
    .ent FUN_80042d8c
FUN_80042d8c:
.LFUN_80042d8c_0:
    j       .LFUN_80042d8c_60
    addiu   $a3,$a3,-1
    lbu     $v0,0($t2)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_80042d8c_60
    addu    $a3,$zero,$zero
    srl     $a0,$a1,0x8
    lui     $v1,0x8002
    addiu   $v1,$v1,-19676
    sll     $v0,$t1,0x2
    addu    $v0,$v0,$v1
    lw      $v0,0($v0)
    andi    $a0,$a0,0xff
    addu    $a0,$a0,$v0
    addu    $t0,$t0,$a0
.LFUN_80042d8c_3c:
    slt     $v0,$a2,$t0
    bne     $v0,$zero,.LFUN_80042d8c_0
    sll     $zero,$zero,0x0
    addiu   $a3,$a3,1
    addu    $v0,$t2,$a3
    lbu     $v0,0($v0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_80042d8c_3c
    addu    $t0,$t0,$a0
.LFUN_80042d8c_60:
    addu    $v0,$a3,$zero
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_80042d8c
    .size FUN_80042d8c, . - FUN_80042d8c

/* FUN_80044e0c (0x80044e0c, 4920 bytes) */
    .section .text.FUN_80044e0c,"ax",@progbits
    .globl FUN_80044e0c
    .globl sym_80044dfc
    .globl sym_80044de0
    .globl sym_8004964c
    .globl sym_8004971c
    .type FUN_80044e0c, @function
    .ent FUN_80044e0c
FUN_80044e0c:
    sh      $a1,20($v1)
    sh      $a0,28($v1)
    sh      $a2,30($v1)
    sh      $v0,36($v1)
    sh      $a2,38($v1)
    addiu   $v1,$v1,44
    addu    $a0,$v0,$zero
    slti    $v0,$a0,160
    bne     $v0,$zero,sym_80044dfc
    addiu   $s2,$s2,1
    addiu   $a1,$a1,40
    slti    $v0,$a1,120
    bne     $v0,$zero,sym_80044de0
    addiu   $a0,$zero,-160
    j       .LFUN_80044e0c_1308
    sh      $s2,164($s4)
    addiu   $a3,$zero,-120
    addiu   $a1,$zero,-160
.LFUN_80044e0c_48:
    sll     $v0,$s2,0x1
    addu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    addu    $v1,$v0,$s7
.LFUN_80044e0c_60:
    addiu   $a0,$a3,32
    slti    $v0,$a0,121
    bne     $v0,$zero,.LFUN_80044e0c_74
    addiu   $a2,$a1,64
    addiu   $a0,$zero,120
.LFUN_80044e0c_74:
    sh      $a1,8($v1)
    sh      $a3,10($v1)
    sh      $a2,18($v1)
    sh      $a3,20($v1)
    sh      $a1,28($v1)
    sh      $a0,30($v1)
    sh      $a2,36($v1)
    sh      $a0,38($v1)
    addiu   $v1,$v1,44
    addu    $a1,$a2,$zero
    slti    $v0,$a1,160
    bne     $v0,$zero,.LFUN_80044e0c_60
    addiu   $s2,$s2,1
    addiu   $a3,$a3,32
    slti    $v0,$a3,120
    bne     $v0,$zero,.LFUN_80044e0c_48
    addiu   $a1,$zero,-160
    j       .LFUN_80044e0c_1308
    sh      $s2,164($s4)
    addiu   $a3,$zero,-240
    addiu   $a1,$zero,-320
.LFUN_80044e0c_c8:
    sll     $v0,$s2,0x1
    addu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    addu    $v1,$v0,$s7
.LFUN_80044e0c_e0:
    addiu   $a0,$a3,64
    slti    $v0,$a0,241
    bne     $v0,$zero,.LFUN_80044e0c_f4
    addiu   $a2,$a1,128
    addiu   $a0,$zero,240
.LFUN_80044e0c_f4:
    sh      $a1,8($v1)
    sh      $a3,10($v1)
    sh      $a2,18($v1)
    sh      $a3,20($v1)
    sh      $a1,28($v1)
    sh      $a0,30($v1)
    sh      $a2,36($v1)
    sh      $a0,38($v1)
    addiu   $v1,$v1,44
    addu    $a1,$a2,$zero
    slti    $v0,$a1,320
    bne     $v0,$zero,.LFUN_80044e0c_e0
    addiu   $s2,$s2,1
    addiu   $a3,$a3,64
    slti    $v0,$a3,240
    bne     $v0,$zero,.LFUN_80044e0c_c8
    addiu   $a1,$zero,-320
    j       .LFUN_80044e0c_1308
    sh      $s2,164($s4)
    lw      $v0,208($s4)
    addiu   $a2,$zero,-120
    addiu   $v0,$v0,120
    slt     $v0,$a2,$v0
    beq     $v0,$zero,.LFUN_80044e0c_1304
    sll     $zero,$zero,0x0
.LFUN_80044e0c_158:
    lw      $v0,204($s4)
    addiu   $a1,$zero,-160
    addiu   $v0,$v0,160
    slt     $v0,$a1,$v0
    beq     $v0,$zero,.LFUN_80044e0c_1e0
    sll     $v0,$s2,0x1
    addu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    addu    $a0,$v0,$s7
.LFUN_80044e0c_184:
    lw      $v0,196($s4)
    lw      $v1,200($s4)
    addiu   $s2,$s2,1
    sh      $a1,8($a0)
    sh      $a2,10($a0)
    sh      $a2,20($a0)
    sh      $a1,28($a0)
    addu    $v0,$a1,$v0
    addu    $v1,$a2,$v1
    sh      $v0,18($a0)
    sh      $v1,30($a0)
    sh      $v0,36($a0)
    sh      $v1,38($a0)
    slti    $v0,$s2,256
    beq     $v0,$zero,.LFUN_80044e0c_1e0
    addiu   $a0,$a0,44
    lw      $v1,196($s4)
    lw      $v0,204($s4)
    addu    $a1,$a1,$v1
    addiu   $v0,$v0,160
    slt     $v0,$a1,$v0
    bne     $v0,$zero,.LFUN_80044e0c_184
    sll     $zero,$zero,0x0
.LFUN_80044e0c_1e0:
    lw      $v1,200($s4)
    lw      $v0,208($s4)
    addu    $a2,$a2,$v1
    addiu   $v0,$v0,120
    slt     $v0,$a2,$v0
    bne     $v0,$zero,.LFUN_80044e0c_158
    sll     $zero,$zero,0x0
    j       .LFUN_80044e0c_1308
    sh      $s2,164($s4)
    addu    $t0,$zero,$zero
    sll     $v0,$t0,0x5
.LFUN_80044e0c_20c:
    addiu   $a3,$v0,-120
    slti    $v0,$a3,120
    beq     $v0,$zero,.LFUN_80044e0c_290
    sll     $zero,$zero,0x0
.LFUN_80044e0c_21c:
    addiu   $a1,$zero,-160
    sll     $v0,$s2,0x1
    addu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    addu    $v1,$v0,$s7
.LFUN_80044e0c_238:
    addiu   $a0,$a3,32
    slti    $v0,$a0,121
    bne     $v0,$zero,.LFUN_80044e0c_24c
    addiu   $a2,$a1,64
    addiu   $a0,$zero,120
.LFUN_80044e0c_24c:
    sh      $a1,8($v1)
    sh      $a3,10($v1)
    sh      $a2,18($v1)
    sh      $a3,20($v1)
    sh      $a1,28($v1)
    sh      $a0,30($v1)
    sh      $a2,36($v1)
    sh      $a0,38($v1)
    addiu   $v1,$v1,44
    addu    $a1,$a2,$zero
    slti    $v0,$a1,160
    bne     $v0,$zero,.LFUN_80044e0c_238
    addiu   $s2,$s2,1
    addiu   $a3,$a3,64
    slti    $v0,$a3,120
    bne     $v0,$zero,.LFUN_80044e0c_21c
    sll     $zero,$zero,0x0
.LFUN_80044e0c_290:
    addiu   $t0,$t0,1
    slti    $v0,$t0,2
    bne     $v0,$zero,.LFUN_80044e0c_20c
    sll     $v0,$t0,0x5
    j       .LFUN_80044e0c_1308
    sh      $s2,164($s4)
    addu    $a3,$zero,$zero
    lw      $v1,204($s4)
    addiu   $v0,$zero,1
    beq     $v1,$v0,.LFUN_80044e0c_38c
    addu    $a1,$a3,$zero
    slti    $v0,$v1,2
    beq     $v0,$zero,.LFUN_80044e0c_2d8
    sll     $zero,$zero,0x0
    beq     $v1,$zero,.LFUN_80044e0c_2ec
    addiu   $t3,$zero,160
    j       .LFUN_80044e0c_1308
    sh      $s2,164($s4)
.LFUN_80044e0c_2d8:
    addiu   $v0,$zero,2
    beq     $v1,$v0,.LFUN_80044e0c_47c
    addu    $a0,$s7,$zero
    j       .LFUN_80044e0c_1308
    sh      $s2,164($s4)
.LFUN_80044e0c_2ec:
    addu    $s2,$zero,$zero
    addiu   $t2,$zero,120
    addu    $a2,$s7,$zero
    lw      $v1,196($s4)
    addiu   $a0,$zero,4096
    subu    $v1,$a0,$v1
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x6
    lw      $v1,200($s4)
    sra     $t1,$v0,0xd
    subu    $a0,$a0,$v1
    sll     $v0,$a0,0x4
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x4
    sra     $t0,$v0,0xd
.LFUN_80044e0c_32c:
    andi    $v0,$s2,0x1
    bne     $v0,$zero,.LFUN_80044e0c_33c
    subu    $a3,$t3,$t1
    addiu   $a3,$t1,-320
.LFUN_80044e0c_33c:
    slti    $v0,$s2,2
    bne     $v0,$zero,.LFUN_80044e0c_34c
    addiu   $a1,$t0,-240
    subu    $a1,$t2,$t0
.LFUN_80044e0c_34c:
    addiu   $v0,$a3,160
    addiu   $v1,$a1,120
    sh      $a3,8($a2)
    sh      $a1,10($a2)
    sh      $v0,18($a2)
    sh      $a1,20($a2)
    sh      $a3,28($a2)
    sh      $v1,30($a2)
    sh      $v0,36($a2)
    sh      $v1,38($a2)
    addiu   $s2,$s2,1
    slti    $v0,$s2,4
    bne     $v0,$zero,.LFUN_80044e0c_32c
    addiu   $a2,$a2,44
    j       .LFUN_80044e0c_1308
    sh      $s2,164($s4)
.LFUN_80044e0c_38c:
    addu    $s2,$zero,$zero
    addiu   $t5,$zero,1
    addiu   $t4,$zero,2
    addiu   $t3,$zero,3
    addiu   $t2,$zero,160
    addu    $a2,$s7,$zero
    lw      $v1,196($s4)
    addiu   $a0,$zero,4096
    subu    $v1,$a0,$v1
    sllv    $v0,$v1,$t4
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x6
    lw      $v1,200($s4)
    sra     $t1,$v0,0xd
    subu    $a0,$a0,$v1
    sllv    $v0,$a0,$t4
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x6
    sra     $t0,$v0,0xd
.LFUN_80044e0c_3d8:
    beq     $s2,$t5,.LFUN_80044e0c_41c
    slti    $v0,$s2,2
    beq     $v0,$zero,.LFUN_80044e0c_3f8
    sll     $zero,$zero,0x0
    beq     $s2,$zero,.LFUN_80044e0c_410
    addiu   $v0,$a3,160
    j       .LFUN_80044e0c_444
    addiu   $v1,$a1,120
.LFUN_80044e0c_3f8:
    beq     $s2,$t4,.LFUN_80044e0c_428
    sll     $zero,$zero,0x0
    beq     $s2,$t3,.LFUN_80044e0c_434
    addiu   $v0,$a3,160
    j       .LFUN_80044e0c_444
    addiu   $v1,$a1,120
.LFUN_80044e0c_410:
    addiu   $a3,$t1,-320
    j       .LFUN_80044e0c_43c
    addiu   $a1,$t0,-280
.LFUN_80044e0c_41c:
    subu    $a3,$t2,$t0
    j       .LFUN_80044e0c_43c
    addiu   $a1,$t1,-280
.LFUN_80044e0c_428:
    addiu   $a3,$t0,-320
    j       .LFUN_80044e0c_43c
    subu    $a1,$t2,$t1
.LFUN_80044e0c_434:
    subu    $a3,$t2,$t1
    subu    $a1,$t2,$t0
.LFUN_80044e0c_43c:
    addiu   $v0,$a3,160
    addiu   $v1,$a1,120
.LFUN_80044e0c_444:
    sh      $a3,8($a2)
    sh      $a1,10($a2)
    sh      $v0,18($a2)
    sh      $a1,20($a2)
    sh      $a3,28($a2)
    sh      $v1,30($a2)
    sh      $v0,36($a2)
    sh      $v1,38($a2)
    addiu   $s2,$s2,1
    slti    $v0,$s2,4
    bne     $v0,$zero,.LFUN_80044e0c_3d8
    addiu   $a2,$a2,44
    j       .LFUN_80044e0c_1308
    sh      $s2,164($s4)
.LFUN_80044e0c_47c:
    addu    $s2,$zero,$zero
    lw      $v1,196($s4)
    sll     $zero,$zero,0x0
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x6
    sra     $t1,$v0,0xc
    addiu   $t3,$t1,160
    lw      $v1,200($s4)
    addiu   $t2,$t1,-160
    sll     $v0,$v1,0x4
    subu    $v0,$v0,$v1
    sll     $v0,$v0,0x4
    sra     $t0,$v0,0xc
    addiu   $t1,$t0,120
    addiu   $a2,$t0,-120
.LFUN_80044e0c_4bc:
    slti    $v0,$s2,2
    beq     $v0,$zero,.LFUN_80044e0c_4dc
    andi    $v1,$s2,0x1
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x5
    j       .LFUN_80044e0c_4ec
    subu    $a3,$v0,$t3
.LFUN_80044e0c_4dc:
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x5
    addu    $a3,$v0,$t2
.LFUN_80044e0c_4ec:
    andi    $v0,$s2,0x1
    beq     $v0,$zero,.LFUN_80044e0c_50c
    sra     $v1,$s2,0x1
    sll     $v0,$v1,0x4
    subu    $v0,$v0,$v1
    sll     $v0,$v0,0x3
    j       .LFUN_80044e0c_51c
    subu    $a1,$v0,$t1
.LFUN_80044e0c_50c:
    sll     $v0,$v1,0x4
    subu    $v0,$v0,$v1
    sll     $v0,$v0,0x3
    addu    $a1,$v0,$a2
.LFUN_80044e0c_51c:
    addiu   $v0,$a3,160
    addiu   $v1,$a1,120
    sh      $a3,8($a0)
    sh      $a1,10($a0)
    sh      $v0,18($a0)
    sh      $a1,20($a0)
    sh      $a3,28($a0)
    sh      $v1,30($a0)
    sh      $v0,36($a0)
    sh      $v1,38($a0)
    addiu   $s2,$s2,1
    slti    $v0,$s2,4
    bne     $v0,$zero,.LFUN_80044e0c_4bc
    addiu   $a0,$a0,44
    j       .LFUN_80044e0c_1308
    sh      $s2,164($s4)
    addu    $s5,$zero,$zero
    addiu   $v0,$zero,40
    sw      $zero,32($sp)
    sw      $v0,36($sp)
.LFUN_80044e0c_56c:
    lw      $a0,208($s4)
    jal     sym_8004964c
    addu    $s3,$zero,$zero
    lw      $a0,208($s4)
    jal     sym_8004971c
    addu    $s1,$v0,$zero
    lw      $v1,32($sp)
    addu    $a0,$v0,$zero
    mult    $v1,$a0
    mflo    $a2
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    mult    $v1,$s1
    mflo    $a1
    lw      $v1,36($sp)
    sll     $zero,$zero,0x0
    mult    $v1,$a0
    mflo    $a0
    sll     $v0,$s2,0x1
    sll     $zero,$zero,0x0
    mult    $v1,$s1
    addu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    addu    $s0,$v0,$s7
    sra     $v0,$a2,0xc
    sw      $v0,40($sp)
    sra     $v0,$a1,0xc
    sw      $v0,56($sp)
    sra     $v0,$a0,0xc
    sw      $v0,44($sp)
    mflo    $v1
    sra     $v0,$v1,0xc
    sw      $v0,60($sp)
.LFUN_80044e0c_5f8:
    lw      $a0,208($s4)
    sll     $zero,$zero,0x0
    addu    $a0,$a0,$s3
    jal     sym_8004964c
    addiu   $a0,$a0,256
    lw      $a0,208($s4)
    addu    $s1,$v0,$zero
    addu    $a0,$a0,$s3
    jal     sym_8004971c
    addiu   $a0,$a0,256
    lw      $v1,32($sp)
    addu    $a0,$v0,$zero
    mult    $v1,$a0
    mflo    $a2
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    mult    $v1,$s1
    mflo    $v1
    lw      $v0,36($sp)
    sll     $zero,$zero,0x0
    mult    $v0,$a0
    mflo    $a0
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    mult    $v0,$s1
    sra     $v0,$a2,0xc
    sw      $v0,48($sp)
    sra     $v0,$v1,0xc
    lhu     $v1,40($sp)
    sw      $v0,64($sp)
    sra     $v0,$a0,0xc
    sw      $v0,52($sp)
    mflo    $a1
    sra     $v0,$a1,0xc
    sw      $v0,68($sp)
    sh      $v1,8($s0)
    lhu     $v0,56($sp)
    sll     $zero,$zero,0x0
    sh      $v0,10($s0)
    lhu     $v0,44($sp)
    sll     $zero,$zero,0x0
    sh      $v0,18($s0)
    lhu     $v0,60($sp)
    sll     $zero,$zero,0x0
    sh      $v0,20($s0)
    lhu     $v0,48($sp)
    sll     $zero,$zero,0x0
    sh      $v0,28($s0)
    lhu     $v0,64($sp)
    sll     $zero,$zero,0x0
    sh      $v0,30($s0)
    lhu     $v0,52($sp)
    addiu   $s2,$s2,1
    sh      $v0,36($s0)
    lhu     $v0,68($sp)
    addiu   $s3,$s3,256
    sh      $v0,38($s0)
    lw      $v0,48($sp)
    lw      $v1,64($sp)
    lw      $a0,52($sp)
    lw      $a1,68($sp)
    addiu   $s0,$s0,44
    sw      $v0,40($sp)
    slti    $v0,$s3,4096
    sw      $v1,56($sp)
    sw      $a0,44($sp)
    bne     $v0,$zero,.LFUN_80044e0c_5f8
    sw      $a1,60($sp)
    lw      $v1,36($sp)
    addiu   $s5,$s5,1
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sw      $v1,32($sp)
    srl     $v1,$v0,0x1f
    addu    $v0,$v0,$v1
    sra     $v0,$v0,0x1
    sw      $v0,36($sp)
    slti    $v0,$s5,3
    bne     $v0,$zero,.LFUN_80044e0c_56c
    sll     $zero,$zero,0x0
    j       .LFUN_80044e0c_1308
    sh      $s2,164($s4)
    addu    $s3,$zero,$zero
    addiu   $s8,$zero,69
    addiu   $s5,$sp,32
    addiu   $t6,$sp,72
    addiu   $t7,$sp,48
    addiu   $s1,$sp,104
    lui     $v0,0x8002
    sw      $t6,148($sp)
    sw      $t7,156($sp)
    addiu   $t7,$v0,-19020
    lw      $t8,0($t7)
    lw      $t9,4($t7)
    lw      $t6,8($t7)
    sw      $t8,72($sp)
    sw      $t9,76($sp)
    sw      $t6,80($sp)
    lw      $t8,12($t7)
    lw      $t9,16($t7)
    lw      $t6,20($t7)
    sw      $t8,84($sp)
    sw      $t9,88($sp)
    sw      $t6,92($sp)
    lw      $t8,24($t7)
    sll     $zero,$zero,0x0
    sw      $t8,96($sp)
    lui     $v0,0x8002
    addiu   $t7,$v0,-18992
    lw      $t8,0($t7)
    lw      $t9,4($t7)
    lw      $t6,8($t7)
    sw      $t8,104($sp)
    sw      $t9,108($sp)
    sw      $t6,112($sp)
    lw      $t8,12($t7)
    lw      $t9,16($t7)
    lw      $t6,20($t7)
    sw      $t8,116($sp)
    sw      $t9,120($sp)
    sw      $t6,124($sp)
    lw      $t8,24($t7)
    sll     $zero,$zero,0x0
    sw      $t8,128($sp)
    andi    $v1,$s3,0x1
.LFUN_80044e0c_7ec:
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x3
    sw      $v0,144($sp)
    addiu   $v0,$s3,-2
    mult    $v0,$s8
    addu    $s0,$zero,$zero
    mflo    $t5
    addiu   $v0,$zero,80
.LFUN_80044e0c_810:
    addu    $t1,$zero,$zero
    addiu   $s6,$zero,-120
    mult    $s0,$v0
    addiu   $t3,$zero,4
    addu    $t4,$s1,$zero
    sll     $v0,$s2,0x1
    addu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    lw      $t6,148($sp)
    lw      $t8,144($sp)
    addu    $a0,$v0,$s7
    sw      $t6,152($sp)
    mflo    $t7
    addiu   $v0,$t7,-80
    addu    $t2,$v0,$t8
.LFUN_80044e0c_854:
    andi    $a1,$t1,0x1
    lw      $t9,152($sp)
    sll     $t0,$a1,0x2
    lw      $v0,0($t9)
    addu    $v1,$s5,$t0
    addu    $v0,$t5,$v0
    sw      $v0,0($v1)
    addiu   $v0,$zero,1
    subu    $a2,$v0,$a1
    lw      $t6,148($sp)
    sll     $a3,$a2,0x2
    addu    $v0,$t6,$t3
    lw      $v0,0($v0)
    addu    $v1,$s5,$a3
    addu    $v0,$t5,$v0
    sw      $v0,0($v1)
    addiu   $v0,$zero,120
    sw      $t5,40($sp)
    bne     $t2,$v0,.LFUN_80044e0c_8f0
    sw      $t5,44($sp)
    slti    $v0,$t1,2
    bne     $v0,$zero,.LFUN_80044e0c_8f4
    sll     $v1,$a1,0x2
    slti    $v0,$t1,5
    beq     $v0,$zero,.LFUN_80044e0c_8f4
    sll     $zero,$zero,0x0
    lw      $t7,156($sp)
    lw      $v0,0($t4)
    addu    $v1,$t7,$t0
    addiu   $v0,$v0,-120
    sw      $v0,0($v1)
    addu    $v0,$s1,$t3
    lw      $v0,0($v0)
    addu    $v1,$t7,$a3
    addiu   $v0,$v0,-120
    sw      $v0,0($v1)
    sw      $s6,56($sp)
    j       .LFUN_80044e0c_928
    sw      $s6,60($sp)
.LFUN_80044e0c_8f0:
    sll     $v1,$a1,0x2
.LFUN_80044e0c_8f4:
    lw      $t8,156($sp)
    lw      $v0,0($t4)
    addu    $v1,$t8,$v1
    addu    $v0,$t2,$v0
    sw      $v0,0($v1)
    sll     $v1,$a2,0x2
    addu    $v0,$s1,$t3
    lw      $v0,0($v0)
    addu    $v1,$t8,$v1
    addu    $v0,$t2,$v0
    sw      $v0,0($v1)
    sw      $t2,56($sp)
    sw      $t2,60($sp)
.LFUN_80044e0c_928:
    lhu     $v0,32($sp)
    sll     $zero,$zero,0x0
    sh      $v0,8($a0)
    lhu     $v0,48($sp)
    sll     $zero,$zero,0x0
    sh      $v0,10($a0)
    lhu     $v0,36($sp)
    sll     $zero,$zero,0x0
    sh      $v0,18($a0)
    lhu     $v0,52($sp)
    addiu   $s2,$s2,1
    sh      $v0,20($a0)
    lhu     $v0,40($sp)
    addiu   $t3,$t3,4
    sh      $v0,28($a0)
    lhu     $v0,56($sp)
    addiu   $t4,$t4,4
    sh      $v0,30($a0)
    lw      $t9,152($sp)
    lhu     $v0,44($sp)
    addiu   $t9,$t9,4
    sw      $t9,152($sp)
    sh      $v0,36($a0)
    lhu     $v0,60($sp)
    addiu   $t1,$t1,1
    sh      $v0,38($a0)
    slti    $v0,$t1,6
    bne     $v0,$zero,.LFUN_80044e0c_854
    addiu   $a0,$a0,44
    addiu   $s0,$s0,1
    slti    $v0,$s0,3
    bne     $v0,$zero,.LFUN_80044e0c_810
    addiu   $v0,$zero,80
    addiu   $s3,$s3,1
    slti    $v0,$s3,5
    bne     $v0,$zero,.LFUN_80044e0c_7ec
    andi    $v1,$s3,0x1
    j       .LFUN_80044e0c_1308
    sh      $s2,164($s4)
    lw      $a0,200($s4)
    lw      $v1,196($s4)
    andi    $s6,$a0,0xfff
    andi    $s8,$v1,0xfff
    slt     $v0,$s6,$s8
    bne     $v0,$zero,.LFUN_80044e0c_9f0
    sll     $zero,$zero,0x0
    bne     $s6,$s8,.LFUN_80044e0c_9f8
    andi    $s5,$s8,0xc00
    beq     $v1,$a0,.LFUN_80044e0c_9fc
    slt     $v0,$s5,$s6
.LFUN_80044e0c_9f0:
    addiu   $s6,$s6,4096
    andi    $s5,$s8,0xc00
.LFUN_80044e0c_9f8:
    slt     $v0,$s5,$s6
.LFUN_80044e0c_9fc:
    beq     $v0,$zero,.LFUN_80044e0c_d6c
    addiu   $t6,$sp,48
    addiu   $t7,$sp,32
    sll     $v0,$s2,0x1
    addu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    addu    $s0,$v0,$s7
    sw      $t6,136($sp)
    sw      $t7,140($sp)
.LFUN_80044e0c_a28:
    slt     $v0,$s5,$s8
    beq     $v0,$zero,.LFUN_80044e0c_a48
    addu    $s3,$s5,$zero
    addiu   $v0,$s5,1024
    slt     $v0,$s8,$v0
    beq     $v0,$zero,.LFUN_80044e0c_a4c
    slt     $v0,$s5,$s6
    addu    $s3,$s8,$zero
.LFUN_80044e0c_a48:
    slt     $v0,$s5,$s6
.LFUN_80044e0c_a4c:
    beq     $v0,$zero,.LFUN_80044e0c_a60
    addiu   $v0,$s5,1024
    slt     $v0,$s6,$v0
    bne     $v0,$zero,.LFUN_80044e0c_a64
    addu    $s1,$s6,$zero
.LFUN_80044e0c_a60:
    addiu   $s1,$s5,1024
.LFUN_80044e0c_a64:
    addu    $a0,$s3,$zero
    sw      $zero,48($sp)
    jal     sym_8004971c
    sw      $zero,32($sp)
    addu    $a0,$s3,$zero
    sra     $v0,$v0,0x4
    jal     sym_8004964c
    sw      $v0,36($sp)
    addu    $a0,$s1,$zero
    sra     $v0,$v0,0x4
    jal     sym_8004971c
    sw      $v0,52($sp)
    addu    $a0,$s1,$zero
    sra     $v0,$v0,0x4
    jal     sym_8004964c
    sw      $v0,40($sp)
    lw      $a0,36($sp)
    lw      $v1,40($sp)
    sra     $v0,$v0,0x4
    addu    $a0,$a0,$v1
    beq     $a0,$zero,.LFUN_80044e0c_acc
    sw      $v0,56($sp)
    blez    $a0,.LFUN_80044e0c_ad0
    addiu   $a1,$zero,-160
    j       .LFUN_80044e0c_ad0
    addiu   $a1,$zero,160
.LFUN_80044e0c_acc:
    addu    $a1,$zero,$zero
.LFUN_80044e0c_ad0:
    lw      $v1,52($sp)
    lw      $v0,56($sp)
    sll     $zero,$zero,0x0
    addu    $v1,$v1,$v0
    beq     $v1,$zero,.LFUN_80044e0c_af8
    sw      $a1,44($sp)
    blez    $v1,.LFUN_80044e0c_afc
    addiu   $v0,$zero,-120
    j       .LFUN_80044e0c_afc
    addiu   $v0,$zero,120
.LFUN_80044e0c_af8:
    addu    $v0,$zero,$zero
.LFUN_80044e0c_afc:
    addu    $t0,$zero,$zero
    lw      $t8,136($sp)
    lw      $t9,140($sp)
    addiu   $t1,$zero,1
    sw      $v0,60($sp)
    addiu   $a3,$t8,4
    addiu   $a2,$t9,4
.LFUN_80044e0c_b18:
    lw      $a1,0($a3)
    lw      $a0,0($a2)
    sll     $v1,$a1,0x2
    addu    $v1,$v1,$a1
    sll     $v1,$v1,0x5
    bgez    $v1,.LFUN_80044e0c_b38
    sll     $zero,$zero,0x0
    negu    $v1,$v1
.LFUN_80044e0c_b38:
    sll     $v0,$a0,0x4
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x3
    bgez    $v0,.LFUN_80044e0c_b50
    sll     $zero,$zero,0x0
    negu    $v0,$v0
.LFUN_80044e0c_b50:
    slt     $v1,$v1,$v0
    beq     $v1,$zero,.LFUN_80044e0c_b94
    sll     $zero,$zero,0x0
    lw      $v0,44($sp)
    sll     $zero,$zero,0x0
    mult    $a1,$v0
    mflo    $v1
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    div     $zero,$v1,$a0
    mflo    $v0
    sll     $zero,$zero,0x0
    sw      $v0,0($a3)
    lw      $v0,44($sp)
    ori     $t0,$t0,0x1
    j       .LFUN_80044e0c_bc8
    sw      $v0,0($a2)
.LFUN_80044e0c_b94:
    lw      $v0,60($sp)
    sll     $zero,$zero,0x0
    mult    $a0,$v0
    mflo    $v1
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    div     $zero,$v1,$a1
    mflo    $v0
    sll     $zero,$zero,0x0
    sw      $v0,0($a2)
    lw      $v0,60($sp)
    ori     $t0,$t0,0x2
    sw      $v0,0($a3)
.LFUN_80044e0c_bc8:
    addiu   $a3,$a3,4
    addiu   $t1,$t1,1
    slti    $v0,$t1,3
    bne     $v0,$zero,.LFUN_80044e0c_b18
    addiu   $a2,$a2,4
    addiu   $v0,$zero,3
    beq     $t0,$v0,.LFUN_80044e0c_bfc
    andi    $v1,$s5,0xc00
    lw      $v0,40($sp)
    lw      $v1,56($sp)
    sw      $v0,44($sp)
    sw      $v1,60($sp)
    andi    $v1,$s5,0xc00
.LFUN_80044e0c_bfc:
    addiu   $v0,$zero,1024
    beq     $v1,$v0,.LFUN_80044e0c_c38
    slti    $v0,$v1,1025
    beq     $v0,$zero,.LFUN_80044e0c_c20
    addiu   $v0,$zero,2048
    beq     $v1,$zero,.LFUN_80044e0c_cf8
    sll     $zero,$zero,0x0
    j       .LFUN_80044e0c_d5c
    addiu   $s0,$s0,44
.LFUN_80044e0c_c20:
    beq     $v1,$v0,.LFUN_80044e0c_c98
    addiu   $v0,$zero,3072
    beq     $v1,$v0,.LFUN_80044e0c_cf8
    sll     $zero,$zero,0x0
    j       .LFUN_80044e0c_d5c
    addiu   $s0,$s0,44
.LFUN_80044e0c_c38:
    lhu     $v0,40($sp)
    sll     $zero,$zero,0x0
    sh      $v0,8($s0)
    lhu     $v0,56($sp)
    sll     $zero,$zero,0x0
    sh      $v0,10($s0)
    lhu     $v0,32($sp)
    sll     $zero,$zero,0x0
    sh      $v0,18($s0)
    lhu     $v0,48($sp)
    sll     $zero,$zero,0x0
    sh      $v0,20($s0)
    lhu     $v0,44($sp)
    sll     $zero,$zero,0x0
    sh      $v0,28($s0)
    lhu     $v0,60($sp)
    sll     $zero,$zero,0x0
    sh      $v0,30($s0)
    lhu     $v0,36($sp)
    sll     $zero,$zero,0x0
    sh      $v0,36($s0)
    lhu     $v0,52($sp)
    j       .LFUN_80044e0c_d58
    sh      $v0,38($s0)
.LFUN_80044e0c_c98:
    lhu     $v0,36($sp)
    sll     $zero,$zero,0x0
    sh      $v0,8($s0)
    lhu     $v0,52($sp)
    sll     $zero,$zero,0x0
    sh      $v0,10($s0)
    lhu     $v0,44($sp)
    sll     $zero,$zero,0x0
    sh      $v0,18($s0)
    lhu     $v0,60($sp)
    sll     $zero,$zero,0x0
    sh      $v0,20($s0)
    lhu     $v0,32($sp)
    sll     $zero,$zero,0x0
    sh      $v0,28($s0)
    lhu     $v0,48($sp)
    sll     $zero,$zero,0x0
    sh      $v0,30($s0)
    lhu     $v0,40($sp)
    sll     $zero,$zero,0x0
    sh      $v0,36($s0)
    lhu     $v0,56($sp)
    j       .LFUN_80044e0c_d58
    sh      $v0,38($s0)
.LFUN_80044e0c_cf8:
    lhu     $v0,32($sp)
    sll     $zero,$zero,0x0
    sh      $v0,8($s0)
    lhu     $v0,48($sp)
    sll     $zero,$zero,0x0
    sh      $v0,10($s0)
    lhu     $v0,36($sp)
    sll     $zero,$zero,0x0
    sh      $v0,18($s0)
    lhu     $v0,52($sp)
    sll     $zero,$zero,0x0
    sh      $v0,20($s0)
    lhu     $v0,40($sp)
    sll     $zero,$zero,0x0
    sh      $v0,28($s0)
    lhu     $v0,56($sp)
    sll     $zero,$zero,0x0
    sh      $v0,30($s0)
    lhu     $v0,44($sp)
    sll     $zero,$zero,0x0
    sh      $v0,36($s0)
    lhu     $v0,60($sp)
    sll     $zero,$zero,0x0
    sh      $v0,38($s0)
.LFUN_80044e0c_d58:
    addiu   $s0,$s0,44
.LFUN_80044e0c_d5c:
    addiu   $s5,$s5,1024
    slt     $v0,$s5,$s6
    bne     $v0,$zero,.LFUN_80044e0c_a28
    addiu   $s2,$s2,1
.LFUN_80044e0c_d6c:
    slti    $v0,$s2,5
    beq     $v0,$zero,.LFUN_80044e0c_1304
    sll     $v0,$s2,0x1
    addu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    addu    $v1,$v0,$s7
.LFUN_80044e0c_d8c:
    sh      $zero,8($v1)
    sh      $zero,10($v1)
    sh      $zero,18($v1)
    sh      $zero,20($v1)
    sh      $zero,28($v1)
    sh      $zero,30($v1)
    sh      $zero,36($v1)
    sh      $zero,38($v1)
    addiu   $s2,$s2,1
    slti    $v0,$s2,5
    bne     $v0,$zero,.LFUN_80044e0c_d8c
    addiu   $v1,$v1,44
    j       .LFUN_80044e0c_1308
    sh      $s2,164($s4)
    lw      $v1,220($s4)
    sll     $zero,$zero,0x0
    bne     $v1,$zero,.LFUN_80044e0c_ea8
    slti    $v0,$v1,3
    lw      $v0,208($s4)
    sll     $zero,$zero,0x0
    addiu   $t0,$v0,-120
    slti    $v0,$t0,120
    beq     $v0,$zero,.LFUN_80044e0c_1120
    slti    $v0,$s2,80
    addiu   $t1,$zero,80
.LFUN_80044e0c_df0:
    lw      $v0,204($s4)
    sll     $zero,$zero,0x0
    addiu   $a3,$v0,-160
    slti    $v0,$a3,160
    beq     $v0,$zero,.LFUN_80044e0c_e88
    sll     $v0,$s2,0x1
    addu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    addu    $a2,$v0,$s7
.LFUN_80044e0c_e1c:
    lw      $v0,196($s4)
    lw      $a0,212($s4)
    lw      $v1,200($s4)
    lw      $a1,216($s4)
    addiu   $s2,$s2,1
    sh      $a3,8($a2)
    sh      $t0,10($a2)
    sh      $t0,20($a2)
    sh      $a3,28($a2)
    addu    $v0,$a3,$v0
    subu    $a0,$v0,$a0
    addu    $v1,$t0,$v1
    subu    $v0,$v1,$a1
    sh      $a0,18($a2)
    sh      $v0,30($a2)
    sh      $a0,36($a2)
    sh      $v0,38($a2)
    bne     $s2,$t1,.LFUN_80044e0c_e70
    addiu   $a2,$a2,44
    j       .LFUN_80044e0c_e88
    addiu   $t0,$zero,120
.LFUN_80044e0c_e70:
    lw      $v0,196($s4)
    sll     $zero,$zero,0x0
    addu    $a3,$a3,$v0
    slti    $v0,$a3,160
    bne     $v0,$zero,.LFUN_80044e0c_e1c
    sll     $zero,$zero,0x0
.LFUN_80044e0c_e88:
    lw      $v0,200($s4)
    sll     $zero,$zero,0x0
    addu    $t0,$t0,$v0
    slti    $v0,$t0,120
    bne     $v0,$zero,.LFUN_80044e0c_df0
    slti    $v0,$s2,80
    j       .LFUN_80044e0c_1120
    sll     $zero,$zero,0x0
.LFUN_80044e0c_ea8:
    beq     $v0,$zero,.LFUN_80044e0c_f9c
    sll     $zero,$zero,0x0
    lw      $v0,208($s4)
    sll     $zero,$zero,0x0
    addiu   $t0,$v0,-120
    slti    $v0,$t0,120
    beq     $v0,$zero,.LFUN_80044e0c_111c
    addu    $t1,$v1,$zero
    addiu   $t2,$zero,80
.LFUN_80044e0c_ecc:
    lw      $v1,196($s4)
    andi    $v0,$t1,0x1
    mult    $v1,$v0
    lw      $v1,204($s4)
    mflo    $t6
    addiu   $v0,$t6,-160
    addu    $a3,$v1,$v0
    slti    $v0,$a3,160
    beq     $v0,$zero,.LFUN_80044e0c_f7c
    addiu   $t1,$t1,1
    sll     $v0,$s2,0x1
    addu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    addu    $a2,$v0,$s7
.LFUN_80044e0c_f0c:
    lw      $v0,196($s4)
    lw      $a0,212($s4)
    lw      $v1,200($s4)
    lw      $a1,216($s4)
    addiu   $s2,$s2,1
    sh      $a3,8($a2)
    sh      $t0,10($a2)
    sh      $t0,20($a2)
    sh      $a3,28($a2)
    addu    $v0,$a3,$v0
    subu    $a0,$v0,$a0
    addu    $v1,$t0,$v1
    subu    $v0,$v1,$a1
    sh      $a0,18($a2)
    sh      $v0,30($a2)
    sh      $a0,36($a2)
    sh      $v0,38($a2)
    bne     $s2,$t2,.LFUN_80044e0c_f60
    addiu   $a2,$a2,44
    j       .LFUN_80044e0c_f7c
    addiu   $t0,$zero,120
.LFUN_80044e0c_f60:
    lw      $v0,196($s4)
    sll     $zero,$zero,0x0
    sll     $v0,$v0,0x1
    addu    $a3,$a3,$v0
    slti    $v0,$a3,160
    bne     $v0,$zero,.LFUN_80044e0c_f0c
    sll     $zero,$zero,0x0
.LFUN_80044e0c_f7c:
    lw      $v0,200($s4)
    sll     $zero,$zero,0x0
    addu    $t0,$t0,$v0
    slti    $v0,$t0,120
    bne     $v0,$zero,.LFUN_80044e0c_ecc
    slti    $v0,$s2,80
    j       .LFUN_80044e0c_1120
    sll     $zero,$zero,0x0
.LFUN_80044e0c_f9c:
    lw      $t3,196($s4)
    lw      $t4,200($s4)
    slti    $v0,$t3,16
    beq     $v0,$zero,.LFUN_80044e0c_fb4
    slti    $v0,$t4,16
    addiu   $t3,$zero,16
.LFUN_80044e0c_fb4:
    beq     $v0,$zero,.LFUN_80044e0c_fc0
    addiu   $v0,$t3,319
    addiu   $t4,$zero,16
.LFUN_80044e0c_fc0:
    div     $zero,$v0,$t3
    mflo    $v0
    addiu   $v1,$t4,239
    sll     $zero,$zero,0x0
    div     $zero,$v1,$t4
    mflo    $v1
    addiu   $s3,$v0,1
    sll     $zero,$zero,0x0
    mult    $s3,$t3
    mflo    $a3
    lw      $s1,204($s4)
    sll     $zero,$zero,0x0
    div     $zero,$s1,$a3
    mflo    $a0
    addiu   $s5,$v1,1
    sll     $zero,$zero,0x0
    mult    $s5,$t4
    mflo    $a2
    lw      $a1,208($s4)
    sll     $zero,$zero,0x0
    div     $zero,$a1,$a2
    mflo    $v0
    addiu   $a0,$a0,-1
    sll     $zero,$zero,0x0
    mult    $a0,$a3
    mflo    $v1
    addiu   $v0,$v0,-1
    sll     $zero,$zero,0x0
    mult    $v0,$a2
    addu    $t5,$zero,$zero
    subu    $s1,$s1,$v1
    mflo    $t0
    blez    $s5,.LFUN_80044e0c_111c
    subu    $a1,$a1,$t0
    addu    $s0,$a3,$zero
    addiu   $s6,$zero,80
    sw      $a2,152($sp)
    sw      $a1,156($sp)
.LFUN_80044e0c_1058:
    blez    $s3,.LFUN_80044e0c_1104
    addu    $t1,$zero,$zero
    lw      $t2,156($sp)
    addu    $a2,$s1,$zero
    sll     $v0,$s2,0x1
    addu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    addu    $a1,$v0,$s7
.LFUN_80044e0c_1080:
    div     $zero,$a2,$s0
    mfhi    $v0
    lw      $t6,152($sp)
    sll     $zero,$zero,0x0
    div     $zero,$t2,$t6
    mfhi    $a0
    addiu   $s2,$s2,1
    lw      $v1,196($s4)
    addiu   $v0,$v0,-160
    subu    $a3,$v0,$v1
    lw      $v0,200($s4)
    lw      $v1,212($s4)
    addiu   $a0,$a0,-120
    subu    $t0,$a0,$v0
    addu    $v0,$a3,$t3
    subu    $a0,$v0,$v1
    lw      $v1,216($s4)
    addu    $v0,$t0,$t4
    sh      $a3,8($a1)
    sh      $t0,10($a1)
    sh      $a0,18($a1)
    sh      $t0,20($a1)
    sh      $a3,28($a1)
    sh      $a0,36($a1)
    subu    $v0,$v0,$v1
    sh      $v0,30($a1)
    sh      $v0,38($a1)
    beq     $s2,$s6,.LFUN_80044e0c_1104
    addiu   $a1,$a1,44
    addiu   $t1,$t1,1
    slt     $v0,$t1,$s3
    bne     $v0,$zero,.LFUN_80044e0c_1080
    addu    $a2,$a2,$t3
.LFUN_80044e0c_1104:
    addiu   $t5,$t5,1
    lw      $t7,156($sp)
    slt     $v0,$t5,$s5
    addu    $t7,$t7,$t4
    bne     $v0,$zero,.LFUN_80044e0c_1058
    sw      $t7,156($sp)
.LFUN_80044e0c_111c:
    slti    $v0,$s2,80
.LFUN_80044e0c_1120:
    beq     $v0,$zero,.LFUN_80044e0c_1304
    sll     $v0,$s2,0x1
    addu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    addu    $v1,$v0,$s7
.LFUN_80044e0c_113c:
    sh      $zero,8($v1)
    sh      $zero,10($v1)
    sh      $zero,18($v1)
    sh      $zero,20($v1)
    sh      $zero,28($v1)
    sh      $zero,30($v1)
    sh      $zero,36($v1)
    sh      $zero,38($v1)
    addiu   $s2,$s2,1
    slti    $v0,$s2,80
    bne     $v0,$zero,.LFUN_80044e0c_113c
    addiu   $v1,$v1,44
    j       .LFUN_80044e0c_1308
    sh      $s2,164($s4)
    addiu   $t0,$zero,-120
    addiu   $a3,$zero,-160
.LFUN_80044e0c_117c:
    sll     $v0,$s2,0x1
    addu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    addu    $a2,$v0,$s7
.LFUN_80044e0c_1194:
    lw      $v0,208($s4)
    addiu   $s2,$s2,1
    addu    $a1,$a3,$v0
    addu    $v1,$t0,$v0
    addiu   $v0,$v0,-40
    subu    $a0,$a3,$v0
    subu    $v0,$t0,$v0
    sh      $a1,8($a2)
    sh      $v1,10($a2)
    sh      $a0,18($a2)
    sh      $v1,20($a2)
    sh      $a1,28($a2)
    sh      $v0,30($a2)
    sh      $a0,36($a2)
    sh      $v0,38($a2)
    addiu   $a3,$a3,40
    slti    $v0,$a3,160
    bne     $v0,$zero,.LFUN_80044e0c_1194
    addiu   $a2,$a2,44
    addiu   $t0,$t0,40
    slti    $v0,$t0,120
    bne     $v0,$zero,.LFUN_80044e0c_117c
    addiu   $a3,$zero,-160
    j       .LFUN_80044e0c_1308
    sh      $s2,164($s4)
    addiu   $t0,$zero,-120
    addiu   $a3,$zero,-160
.LFUN_80044e0c_1200:
    sll     $v0,$s2,0x1
    addu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    addu    $a2,$v0,$s7
.LFUN_80044e0c_1218:
    addiu   $s2,$s2,1
    lw      $v0,196($s4)
    lw      $v1,200($s4)
    addu    $a1,$a3,$v0
    addu    $a0,$t0,$v1
    addiu   $v0,$v0,-40
    subu    $v0,$a3,$v0
    addiu   $v1,$v1,-40
    subu    $v1,$t0,$v1
    sh      $a1,8($a2)
    sh      $a0,10($a2)
    sh      $v0,18($a2)
    sh      $a0,20($a2)
    sh      $a1,28($a2)
    sh      $v1,30($a2)
    sh      $v0,36($a2)
    sh      $v1,38($a2)
    addiu   $a3,$a3,40
    slti    $v0,$a3,160
    bne     $v0,$zero,.LFUN_80044e0c_1218
    addiu   $a2,$a2,44
    addiu   $t0,$t0,40
    slti    $v0,$t0,120
    bne     $v0,$zero,.LFUN_80044e0c_1200
    addiu   $a3,$zero,-160
    j       .LFUN_80044e0c_1308
    sh      $s2,164($s4)
    lh      $v1,184($s4)
    lw      $v0,204($s4)
    sll     $zero,$zero,0x0
    mult    $v1,$v0
    lh      $a0,186($s4)
    lw      $a1,200($s4)
    sll     $v0,$s2,0x1
    addu    $v0,$v0,$s2
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$s2
    mflo    $a2
    lw      $v1,208($s4)
    addiu   $s2,$s2,1
    mult    $a0,$v1
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$s7
    lw      $a0,196($s4)
    sra     $v1,$a2,0xc
    sh      $a1,10($v0)
    sh      $a1,20($v0)
    sh      $a0,8($v0)
    sh      $a0,28($v0)
    addu    $a0,$a0,$v1
    sh      $a0,18($v0)
    sh      $a0,36($v0)
    mflo    $a3
    sra     $v1,$a3,0xc
    addu    $a1,$a1,$v1
    sh      $a1,30($v0)
    j       .LFUN_80044e0c_1304
    sh      $a1,38($v0)
    addiu   $s2,$zero,256
.LFUN_80044e0c_1304:
    sh      $s2,164($s4)
.LFUN_80044e0c_1308:
    lw      $ra,196($sp)
    lw      $s8,192($sp)
    lw      $s7,188($sp)
    lw      $s6,184($sp)
    lw      $s5,180($sp)
    lw      $s4,176($sp)
    lw      $s3,172($sp)
    lw      $s2,168($sp)
    lw      $s1,164($sp)
    lw      $s0,160($sp)
    jr      $ra
    addiu   $sp,$sp,200
    .end FUN_80044e0c
    .size FUN_80044e0c, . - FUN_80044e0c

/* FUN_8004840c (0x8004840c, 544 bytes) */
    .section .text.FUN_8004840c,"ax",@progbits
    .globl FUN_8004840c
    .type FUN_8004840c, @function
    .ent FUN_8004840c
FUN_8004840c:
    addiu   $sp,$sp,-56
    addu    $t2,$a1,$zero
    addu    $t1,$a2,$zero
    lui     $a2,0x800f
    addiu   $a2,$a2,6128
    sll     $v1,$a0,0x4
    subu    $v1,$v1,$a0
    sll     $v1,$v1,0x2
    lui     $v0,0x8011
    lw      $a1,27296($v0)
    subu    $v1,$v1,$a0
    sw      $s0,48($sp)
    sll     $v0,$a1,0x5
    addu    $v0,$v0,$a1
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a1
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a1
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a2
    lw      $t3,160($v0)
    lui     $v0,0x8002
    addiu   $t9,$v0,-18724
    lw      $t7,0($t9)
    lw      $s0,4($t9)
    lw      $t8,8($t9)
    sw      $t7,32($sp)
    sw      $s0,36($sp)
    sw      $t8,40($sp)
    lw      $a1,0($t1)
    lw      $a0,8($t1)
    lw      $t4,72($sp)
    lw      $t6,76($sp)
    slt     $v0,$a1,$a0
    beq     $v0,$zero,.LFUN_8004840c_a8
    addiu   $v1,$sp,32
    sll     $v0,$t4,0x2
    addu    $v0,$v1,$v0
    lw      $v0,0($v0)
    j       .LFUN_8004840c_bc
    and     $t0,$a1,$v0
.LFUN_8004840c_a8:
    sll     $v0,$t4,0x2
    addu    $v0,$v1,$v0
    lw      $v0,0($v0)
    sll     $zero,$zero,0x0
    and     $t0,$a0,$v0
.LFUN_8004840c_bc:
    addiu   $v0,$zero,2
    subu    $v0,$v0,$t4
    srav    $t5,$t0,$v0
    addu    $a1,$zero,$zero
    addiu   $a0,$sp,16
    addu    $v1,$sp,$zero
    lw      $v0,0($a3)
    addu    $a2,$t1,$zero
    andi    $t1,$v0,0xff00
.LFUN_8004840c_e0:
    lw      $v0,0($a2)
    addiu   $a2,$a2,4
    addiu   $a1,$a1,1
    subu    $v0,$v0,$t0
    sw      $v0,0($v1)
    lw      $v0,0($a3)
    addiu   $a3,$a3,4
    addiu   $v1,$v1,4
    subu    $v0,$v0,$t1
    sw      $v0,0($a0)
    slti    $v0,$a1,4
    bne     $v0,$zero,.LFUN_8004840c_e0
    addiu   $a0,$a0,4
    bltz    $t6,.LFUN_8004840c_13c
    sll     $v0,$t2,0x1
    addu    $v0,$v0,$t2
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$t2
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$t3
    lbu     $v1,7($v0)
    j       .LFUN_8004840c_15c
    ori     $v1,$v1,0x2
.LFUN_8004840c_13c:
    addu    $v0,$v0,$t2
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$t2
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$t3
    lbu     $v1,7($v0)
    sll     $zero,$zero,0x0
    andi    $v1,$v1,0xfd
.LFUN_8004840c_15c:
    sb      $v1,7($v0)
    sll     $a0,$t2,0x1
    addu    $a0,$a0,$t2
    sll     $a0,$a0,0x2
    subu    $a0,$a0,$t2
    sll     $a0,$a0,0x2
    addu    $a0,$a0,$t3
    andi    $v1,$t4,0x3
    sll     $v1,$v1,0x7
    andi    $v0,$t6,0x3
    sll     $v0,$v0,0x5
    or      $v1,$v1,$v0
    andi    $v0,$t1,0x100
    sra     $v0,$v0,0x4
    or      $v1,$v1,$v0
    andi    $v0,$t5,0x3ff
    sra     $v0,$v0,0x6
    or      $v1,$v1,$v0
    andi    $v0,$t1,0x200
    sll     $v0,$v0,0x2
    or      $v1,$v1,$v0
    sh      $v1,26($a0)
    lhu     $v0,0($sp)
    sll     $zero,$zero,0x0
    sh      $v0,12($a0)
    lhu     $v0,16($sp)
    sll     $zero,$zero,0x0
    sh      $v0,14($a0)
    lhu     $v0,4($sp)
    sll     $zero,$zero,0x0
    sh      $v0,22($a0)
    lhu     $v0,20($sp)
    sll     $zero,$zero,0x0
    sh      $v0,24($a0)
    lhu     $v0,8($sp)
    sll     $zero,$zero,0x0
    sh      $v0,32($a0)
    lhu     $v0,24($sp)
    sll     $zero,$zero,0x0
    sh      $v0,34($a0)
    lhu     $v0,12($sp)
    sll     $zero,$zero,0x0
    sh      $v0,40($a0)
    lhu     $v0,28($sp)
    sll     $zero,$zero,0x0
    sh      $v0,42($a0)
    lw      $s0,48($sp)
    jr      $ra
    addiu   $sp,$sp,56
    .end FUN_8004840c
    .size FUN_8004840c, . - FUN_8004840c

/* FUN_80048ff4 (0x80048ff4, 260 bytes) */
    .section .text.FUN_80048ff4,"ax",@progbits
    .globl FUN_80048ff4
    .globl sym_800393b0
    .type FUN_80048ff4, @function
    .ent FUN_80048ff4
FUN_80048ff4:
    addiu   $sp,$sp,-144
    sll     $v0,$a0,0x4
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    lui     $v1,0x800f
    addiu   $v1,$v1,6128
    addu    $a0,$v0,$v1
    addiu   $v1,$v1,2124
    sw      $s1,124($sp)
    addu    $s1,$v0,$v1
    lw      $v1,160($sp)
    sw      $s2,128($sp)
    lw      $s2,168($sp)
    addu    $t0,$a1,$zero
    sw      $s3,132($sp)
    addu    $s3,$a2,$zero
    sw      $ra,136($sp)
    bltz    $t0,.LFUN_80048ff4_64
    sw      $s0,120($sp)
    addiu   $v0,$zero,1
    sw      $v0,4($a0)
    j       .LFUN_80048ff4_70
    sw      $v0,4($s1)
.LFUN_80048ff4_64:
    sw      $zero,4($a0)
    j       .LFUN_80048ff4_e8
    sw      $zero,4($s1)
.LFUN_80048ff4_70:
    addiu   $a0,$a0,32
    addiu   $s0,$sp,24
    addiu   $v0,$zero,256
    sh      $v0,40($sp)
    sh      $v0,42($sp)
    lw      $v0,164($sp)
    addu    $a1,$s0,$zero
    sh      $t0,16($sp)
    sh      $a3,20($sp)
    sh      $v1,22($sp)
    sh      $t0,24($sp)
    sh      $a3,28($sp)
    sh      $v1,30($sp)
    sh      $zero,36($sp)
    sh      $zero,38($sp)
    sh      $zero,44($sp)
    sb      $zero,46($sp)
    sb      $zero,47($sp)
    sb      $zero,48($sp)
    sh      $v0,32($sp)
    addiu   $v0,$s3,256
    sh      $v0,26($sp)
    addiu   $v0,$s2,256
    jal     sym_800393b0
    sh      $v0,34($sp)
    addiu   $a0,$s1,32
    addu    $a1,$s0,$zero
    sh      $s3,26($sp)
    jal     sym_800393b0
    sh      $s2,34($sp)
.LFUN_80048ff4_e8:
    lw      $ra,136($sp)
    lw      $s3,132($sp)
    lw      $s2,128($sp)
    lw      $s1,124($sp)
    lw      $s0,120($sp)
    jr      $ra
    addiu   $sp,$sp,144
    .end FUN_80048ff4
    .size FUN_80048ff4, . - FUN_80048ff4

/* FUN_8004916c (0x8004916c, 156 bytes) */
    .section .text.FUN_8004916c,"ax",@progbits
    .globl FUN_8004916c
    .type FUN_8004916c, @function
    .ent FUN_8004916c
FUN_8004916c:
    lui     $t1,0x800f
    addiu   $t1,$t1,6128
    sll     $v1,$a0,0x4
    subu    $v1,$v1,$a0
    sll     $v1,$v1,0x2
    lui     $v0,0x8011
    subu    $v1,$v1,$a0
    andi    $a2,$a2,0xff
    lw      $t0,27296($v0)
    andi    $a3,$a3,0xff
    sll     $v0,$t0,0x5
    addu    $v0,$v0,$t0
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$t0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$t0
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$t1
    sll     $v1,$a1,0x1
    addu    $v1,$v1,$a1
    sll     $v1,$v1,0x2
    subu    $v1,$v1,$a1
    lw      $v0,160($v0)
    sll     $v1,$v1,0x2
    addu    $v1,$v1,$v0
    sh      $a2,12($v1)
    sh      $a3,14($v1)
    lw      $v0,16($sp)
    lw      $a0,20($sp)
    sh      $a3,24($v1)
    sh      $a2,32($v1)
    addu    $v0,$a2,$v0
    addu    $a3,$a3,$a0
    sh      $v0,22($v1)
    sh      $a3,34($v1)
    sh      $v0,40($v1)
    jr      $ra
    sh      $a3,42($v1)
    .end FUN_8004916c
    .size FUN_8004916c, . - FUN_8004916c

/* FUN_80049280 (0x80049280, 228 bytes) */
    .section .text.FUN_80049280,"ax",@progbits
    .globl FUN_80049280
    .type FUN_80049280, @function
    .ent FUN_80049280
FUN_80049280:
    lui     $a3,0x800f
    addiu   $a3,$a3,6128
    sll     $a2,$a0,0x4
    subu    $a2,$a2,$a0
    sll     $a2,$a2,0x2
    subu    $a2,$a2,$a0
    sll     $a2,$a2,0x2
    lui     $v0,0x8011
    lw      $a0,27296($v0)
    addiu   $v0,$zero,1
    subu    $v0,$v0,$a0
    sll     $v1,$v0,0x5
    addu    $v1,$v1,$v0
    sll     $v1,$v1,0x2
    addu    $v1,$v1,$v0
    sll     $v1,$v1,0x2
    subu    $v1,$v1,$v0
    sll     $v1,$v1,0x2
    addu    $v1,$a2,$v1
    addu    $v1,$v1,$a3
    sll     $v0,$a0,0x5
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    addu    $a2,$a2,$v0
    addu    $a2,$a2,$a3
    sll     $v0,$a1,0x1
    addu    $v0,$v0,$a1
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a1
    sll     $v0,$v0,0x2
    lw      $a0,160($a2)
    lw      $v1,160($v1)
    addu    $a0,$v0,$a0
    addu    $v0,$v0,$v1
    addiu   $v1,$v0,32
.LFUN_80049280_9c:
    lw      $t0,0($v0)
    lw      $t1,4($v0)
    lw      $t2,8($v0)
    lw      $t3,12($v0)
    sw      $t0,0($a0)
    sw      $t1,4($a0)
    sw      $t2,8($a0)
    sw      $t3,12($a0)
    addiu   $v0,$v0,16
    bne     $v0,$v1,.LFUN_80049280_9c
    addiu   $a0,$a0,16
    lw      $t0,0($v0)
    lw      $t1,4($v0)
    lw      $t2,8($v0)
    sw      $t0,0($a0)
    sw      $t1,4($a0)
    jr      $ra
    sw      $t2,8($a0)
    .end FUN_80049280
    .size FUN_80049280, . - FUN_80049280

/* FUN_800494b4 (0x800494b4, 188 bytes) */
    .section .text.FUN_800494b4,"ax",@progbits
    .globl FUN_800494b4
    .type FUN_800494b4, @function
    .ent FUN_800494b4
FUN_800494b4:
    lui     $t1,0x800f
    addiu   $t1,$t1,6128
    sll     $v1,$a0,0x4
    subu    $v1,$v1,$a0
    sll     $v1,$v1,0x2
    lui     $v0,0x8011
    subu    $v1,$v1,$a0
    lw      $t0,27296($v0)
    lhu     $a0,0($a2)
    sll     $v0,$t0,0x5
    addu    $v0,$v0,$t0
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$t0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$t0
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$t1
    sll     $v1,$a1,0x1
    addu    $v1,$v1,$a1
    sll     $v1,$v1,0x2
    subu    $v1,$v1,$a1
    lw      $v0,160($v0)
    sll     $v1,$v1,0x2
    addu    $v1,$v1,$v0
    sh      $a0,12($v1)
    lhu     $v0,0($a3)
    sll     $zero,$zero,0x0
    sh      $v0,14($v1)
    lhu     $v0,4($a2)
    sll     $zero,$zero,0x0
    sh      $v0,22($v1)
    lhu     $v0,4($a3)
    sll     $zero,$zero,0x0
    sh      $v0,24($v1)
    lhu     $v0,8($a2)
    sll     $zero,$zero,0x0
    sh      $v0,32($v1)
    lhu     $v0,8($a3)
    sll     $zero,$zero,0x0
    sh      $v0,34($v1)
    lhu     $v0,12($a2)
    sll     $zero,$zero,0x0
    sh      $v0,40($v1)
    lhu     $v0,12($a3)
    jr      $ra
    sh      $v0,42($v1)
    .end FUN_800494b4
    .size FUN_800494b4, . - FUN_800494b4

/* FUN_800498dc (0x800498dc, 104 bytes) */
    .section .text.FUN_800498dc,"ax",@progbits
    .globl FUN_800498dc
    .type FUN_800498dc, @function
    .ent FUN_800498dc
FUN_800498dc:
    addiu   $sp,$sp,-48
    addu    $v1,$sp,$zero
    lui     $v0,0x8002
    addiu   $v0,$v0,-18336
    addiu   $a1,$v0,48
.LFUN_800498dc_14:
    lw      $a2,0($v0)
    lw      $a3,4($v0)
    lw      $t0,8($v0)
    lw      $t1,12($v0)
    sw      $a2,0($v1)
    sw      $a3,4($v1)
    sw      $t0,8($v1)
    sw      $t1,12($v1)
    addiu   $v0,$v0,16
    bne     $v0,$a1,.LFUN_800498dc_14
    addiu   $v1,$v1,16
    sltiu   $v0,$a0,11
    bne     $v0,$zero,.LFUN_800498dc_58
    sll     $v0,$a0,0x2
    lw      $v0,44($sp)
    j       .LFUN_800498dc_60
    sll     $zero,$zero,0x0
.LFUN_800498dc_58:
    addu    $v0,$sp,$v0
    lw      $v0,0($v0)
.LFUN_800498dc_60:
    jr      $ra
    addiu   $sp,$sp,48
    .end FUN_800498dc
    .size FUN_800498dc, . - FUN_800498dc

/* FUN_80049944 (0x80049944, 112 bytes) */
    .section .text.FUN_80049944,"ax",@progbits
    .globl FUN_80049944
    .type FUN_80049944, @function
    .ent FUN_80049944
FUN_80049944:
    addiu   $sp,$sp,-32
    lui     $v0,0x8002
    addiu   $a3,$v0,-18232
    lw      $v1,0($a3)
    lw      $a1,4($a3)
    lw      $a2,8($a3)
    sw      $v1,0($sp)
    sw      $a1,4($sp)
    sw      $a2,8($sp)
    lw      $v1,12($a3)
    lw      $a1,16($a3)
    lw      $a2,20($a3)
    sw      $v1,12($sp)
    sw      $a1,16($sp)
    sw      $a2,20($sp)
    lw      $v1,24($a3)
    sll     $zero,$zero,0x0
    sw      $v1,24($sp)
    sltiu   $v0,$a0,6
    beq     $v0,$zero,.LFUN_80049944_64
    sll     $v0,$a0,0x2
    addu    $v0,$sp,$v0
    lw      $v0,0($v0)
    j       .LFUN_80049944_68
    sll     $zero,$zero,0x0
.LFUN_80049944_64:
    lw      $v0,24($sp)
.LFUN_80049944_68:
    jr      $ra
    addiu   $sp,$sp,32
    .end FUN_80049944
    .size FUN_80049944, . - FUN_80049944

/* FUN_800499b4 (0x800499b4, 144 bytes) */
    .section .text.FUN_800499b4,"ax",@progbits
    .globl FUN_800499b4
    .type FUN_800499b4, @function
    .ent FUN_800499b4
FUN_800499b4:
    addiu   $sp,$sp,-56
    addu    $v1,$sp,$zero
    lui     $v0,0x8002
    addiu   $v0,$v0,-17804
    addiu   $a1,$v0,48
.LFUN_800499b4_14:
    lw      $a2,0($v0)
    lw      $a3,4($v0)
    lw      $t0,8($v0)
    lw      $t1,12($v0)
    sw      $a2,0($v1)
    sw      $a3,4($v1)
    sw      $t0,8($v1)
    sw      $t1,12($v1)
    addiu   $v0,$v0,16
    bne     $v0,$a1,.LFUN_800499b4_14
    addiu   $v1,$v1,16
    lw      $a2,0($v0)
    lw      $a3,4($v0)
    sw      $a2,0($v1)
    sw      $a3,4($v1)
    addiu   $v0,$zero,17
    bne     $a0,$v0,.LFUN_800499b4_64
    lui     $v0,0x8002
    j       .LFUN_800499b4_88
    addiu   $v0,$v0,-17748
.LFUN_800499b4_64:
    sltiu   $v0,$a0,17
    beq     $v0,$zero,.LFUN_800499b4_80
    sll     $v0,$a0,0x2
    addu    $v0,$sp,$v0
    lw      $v0,0($v0)
    j       .LFUN_800499b4_88
    sll     $zero,$zero,0x0
.LFUN_800499b4_80:
    lui     $v0,0x8002
    addiu   $v0,$v0,-18004
.LFUN_800499b4_88:
    jr      $ra
    addiu   $sp,$sp,56
    .end FUN_800499b4
    .size FUN_800499b4, . - FUN_800499b4

/* FUN_80049a44 (0x80049a44, 100 bytes) */
    .section .text.FUN_80049a44,"ax",@progbits
    .globl FUN_80049a44
    .type FUN_80049a44, @function
    .ent FUN_80049a44
FUN_80049a44:
    addiu   $sp,$sp,-48
    addu    $v1,$sp,$zero
    lui     $v0,0x8002
    addiu   $v0,$v0,-17996
    addiu   $a1,$v0,48
.LFUN_80049a44_14:
    lw      $a2,0($v0)
    lw      $a3,4($v0)
    lw      $t0,8($v0)
    lw      $t1,12($v0)
    sw      $a2,0($v1)
    sw      $a3,4($v1)
    sw      $t0,8($v1)
    sw      $t1,12($v1)
    addiu   $v0,$v0,16
    bne     $v0,$a1,.LFUN_80049a44_14
    addiu   $v1,$v1,16
    sltiu   $v0,$a0,3
    bne     $v0,$zero,.LFUN_80049a44_54
    sll     $v0,$a0,0x2
    addiu   $a0,$zero,2
    sll     $v0,$a0,0x2
.LFUN_80049a44_54:
    addu    $v0,$sp,$v0
    lw      $v0,0($v0)
    jr      $ra
    addiu   $sp,$sp,48
    .end FUN_80049a44
    .size FUN_80049a44, . - FUN_80049a44

/* FUN_80049aa8 (0x80049aa8, 136 bytes) */
    .section .text.FUN_80049aa8,"ax",@progbits
    .globl FUN_80049aa8
    .type FUN_80049aa8, @function
    .ent FUN_80049aa8
FUN_80049aa8:
    addiu   $sp,$sp,-48
    addu    $v1,$sp,$zero
    lui     $v0,0x8002
    addiu   $v0,$v0,-17692
    addiu   $a1,$v0,32
.LFUN_80049aa8_14:
    lw      $a2,0($v0)
    lw      $a3,4($v0)
    lw      $t0,8($v0)
    lw      $t1,12($v0)
    sw      $a2,0($v1)
    sw      $a3,4($v1)
    sw      $t0,8($v1)
    sw      $t1,12($v1)
    addiu   $v0,$v0,16
    bne     $v0,$a1,.LFUN_80049aa8_14
    addiu   $v1,$v1,16
    lw      $a2,0($v0)
    lw      $a3,4($v0)
    lw      $t0,8($v0)
    sw      $a2,0($v1)
    sw      $a3,4($v1)
    sw      $t0,8($v1)
    slti    $v0,$a0,11
    bne     $v0,$zero,.LFUN_80049aa8_68
    sll     $zero,$zero,0x0
    addiu   $a0,$zero,10
.LFUN_80049aa8_68:
    bgez    $a0,.LFUN_80049aa8_78
    sll     $v0,$a0,0x2
    addu    $a0,$zero,$zero
    sll     $v0,$a0,0x2
.LFUN_80049aa8_78:
    addu    $v0,$sp,$v0
    lw      $v0,0($v0)
    jr      $ra
    addiu   $sp,$sp,48
    .end FUN_80049aa8
    .size FUN_80049aa8, . - FUN_80049aa8

/* FUN_80049f04 (0x80049f04, 72 bytes) */
    .section .text.FUN_80049f04,"ax",@progbits
    .globl FUN_80049f04
    .globl sym_80042ec8
    .type FUN_80049f04, @function
    .ent FUN_80049f04
FUN_80049f04:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_80042ec8
    sll     $zero,$zero,0x0
    lui     $v1,0x800e
    lui     $a0,0x8010
    lw      $a1,20768($a0)
    addiu   $v1,$v1,-25924
    sll     $v0,$a1,0x2
    addu    $v0,$v0,$v1
    lw      $v0,8($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addiu   $a0,$a0,20768
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_80049f04
    .size FUN_80049f04, . - FUN_80049f04

/* FUN_8004a4b4 (0x8004a4b4, 464 bytes) */
    .section .text.FUN_8004a4b4,"ax",@progbits
    .globl FUN_8004a4b4
    .globl sym_8003b218
    .type FUN_8004a4b4, @function
    .ent FUN_8004a4b4
FUN_8004a4b4:
    addiu   $sp,$sp,-40
    lui     $v0,0x8011
    lui     $v1,0x8011
    lw      $a2,27296($v0)
    addiu   $v1,$v1,-32464
    sw      $ra,36($sp)
    sw      $s4,32($sp)
    sw      $s3,28($sp)
    sw      $s2,24($sp)
    sw      $s1,20($sp)
    sw      $s0,16($sp)
    sll     $a1,$a2,0x2
    addu    $a1,$a1,$a2
    sll     $a1,$a1,0x2
    addu    $a1,$a1,$a2
    sll     $a1,$a1,0x4
    subu    $a1,$a1,$a2
    sll     $v0,$a1,0x5
    addu    $a1,$a1,$v0
    addu    $a1,$a1,$a2
    sll     $v0,$a0,0x1
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$v1
    addu    $s2,$a1,$v0
    lh      $v0,2744($s2)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_8004a4b4_1b0
    addiu   $s4,$s2,52
    lw      $v0,0($s2)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_8004a4b4_cc
    sll     $a1,$a2,0x1
    addu    $a1,$a1,$a2
    sll     $a1,$a1,0x2
    addiu   $a1,$a1,28
    addu    $a1,$s2,$a1
    lui     $v0,0x800e
    lh      $a0,2748($s2)
    lw      $v0,10984($v0)
    sll     $a0,$a0,0x2
    jal     sym_8003b218
    addu    $a0,$v0,$a0
.LFUN_8004a4b4_cc:
    lh      $v0,2742($s2)
    sll     $zero,$zero,0x0
    addiu   $s0,$v0,-1
    bltz    $s0,.LFUN_8004a4b4_118
    sll     $v0,$s0,0x3
    lui     $s3,0x800e
    subu    $v0,$v0,$s0
    sll     $v0,$v0,0x2
    addu    $s1,$v0,$s4
    addu    $a1,$s1,$zero
.LFUN_8004a4b4_f4:
    addiu   $s1,$s1,-28
    addiu   $s0,$s0,-1
    lh      $a0,2748($s2)
    lw      $v0,10984($s3)
    sll     $a0,$a0,0x2
    jal     sym_8003b218
    addu    $a0,$v0,$a0
    bgez    $s0,.LFUN_8004a4b4_f4
    addu    $a1,$s1,$zero
.LFUN_8004a4b4_118:
    lh      $v1,2740($s2)
    lh      $v0,2742($s2)
    addiu   $s0,$v1,-1
    slt     $v0,$s0,$v0
    bne     $v0,$zero,.LFUN_8004a4b4_170
    lui     $s3,0x800e
    sll     $v0,$s0,0x3
    subu    $v0,$v0,$s0
    sll     $v0,$v0,0x2
    addu    $s1,$v0,$s4
    addu    $a1,$s1,$zero
.LFUN_8004a4b4_144:
    addiu   $s1,$s1,-28
    lh      $a0,2748($s2)
    lw      $v0,10984($s3)
    sll     $a0,$a0,0x2
    jal     sym_8003b218
    addu    $a0,$v0,$a0
    lh      $v0,2742($s2)
    addiu   $s0,$s0,-1
    slt     $v0,$s0,$v0
    beq     $v0,$zero,.LFUN_8004a4b4_144
    addu    $a1,$s1,$zero
.LFUN_8004a4b4_170:
    lw      $v0,0($s2)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_8004a4b4_1b0
    lui     $v1,0x800e
    lui     $v0,0x8011
    lh      $a0,2748($s2)
    lw      $v1,10984($v1)
    lw      $v0,27296($v0)
    sll     $a0,$a0,0x2
    addu    $a0,$v1,$a0
    sll     $a1,$v0,0x1
    addu    $a1,$a1,$v0
    sll     $a1,$a1,0x2
    addiu   $a1,$a1,4
    jal     sym_8003b218
    addu    $a1,$s2,$a1
.LFUN_8004a4b4_1b0:
    lw      $ra,36($sp)
    lw      $s4,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end FUN_8004a4b4
    .size FUN_8004a4b4, . - FUN_8004a4b4

/* FUN_8004a684 (0x8004a684, 268 bytes) */
    .section .text.FUN_8004a684,"ax",@progbits
    .globl FUN_8004a684
    .type FUN_8004a684, @function
    .ent FUN_8004a684
FUN_8004a684:
    lui     $v0,0x8011
    lw      $v1,27296($v0)
    sll     $zero,$zero,0x0
    sll     $a1,$v1,0x2
    addu    $a1,$a1,$v1
    sll     $a1,$a1,0x2
    addu    $a1,$a1,$v1
    sll     $a1,$a1,0x4
    subu    $a1,$a1,$v1
    sll     $v0,$a1,0x5
    addu    $a1,$a1,$v0
    addu    $a1,$a1,$v1
    sll     $v0,$a0,0x1
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    lui     $v1,0x8011
    addiu   $v1,$v1,-32464
    addu    $v0,$v0,$v1
    addu    $a1,$a1,$v0
    lhu     $v0,2750($a1)
    sll     $zero,$zero,0x0
    sltiu   $v0,$v0,256
    beq     $v0,$zero,.LFUN_8004a684_104
    addiu   $v1,$a1,52
    lh      $a0,2752($a1)
    sll     $zero,$zero,0x0
    slti    $v0,$a0,256
    beq     $v0,$zero,.LFUN_8004a684_104
    sll     $zero,$zero,0x0
    bltz    $a0,.LFUN_8004a684_104
    sll     $zero,$zero,0x0
    lh      $a0,2754($a1)
    sll     $zero,$zero,0x0
    slti    $v0,$a0,256
    beq     $v0,$zero,.LFUN_8004a684_104
    sll     $zero,$zero,0x0
    bltz    $a0,.LFUN_8004a684_104
    sll     $zero,$zero,0x0
    lh      $v0,2740($a1)
    sll     $zero,$zero,0x0
    blez    $v0,.LFUN_8004a684_104
    addu    $a0,$zero,$zero
    addu    $a2,$v1,$zero
.LFUN_8004a684_cc:
    lbu     $v0,2750($a1)
    addiu   $v1,$a2,8
    sb      $v0,4($v1)
    lbu     $v0,2752($a1)
    sll     $zero,$zero,0x0
    sb      $v0,5($v1)
    lbu     $v0,2754($a1)
    sll     $zero,$zero,0x0
    sb      $v0,6($v1)
    lh      $v0,2740($a1)
    addiu   $a0,$a0,1
    slt     $v0,$a0,$v0
    bne     $v0,$zero,.LFUN_8004a684_cc
    addiu   $a2,$a2,28
.LFUN_8004a684_104:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8004a684
    .size FUN_8004a684, . - FUN_8004a684

/* FUN_8004a968 (0x8004a968, 156 bytes) */
    .section .text.FUN_8004a968,"ax",@progbits
    .globl FUN_8004a968
    .globl FUN_8004aa04
    .type FUN_8004a968, @function
    .ent FUN_8004a968
FUN_8004a968:
    lui     $v0,0x8011
    lw      $v1,27296($v0)
    sll     $zero,$zero,0x0
    sll     $a1,$v1,0x2
    addu    $a1,$a1,$v1
    sll     $a1,$a1,0x2
    addu    $a1,$a1,$v1
    sll     $a1,$a1,0x4
    subu    $a1,$a1,$v1
    sll     $v0,$a1,0x5
    addu    $a1,$a1,$v0
    addu    $a1,$a1,$v1
    sll     $v0,$a0,0x1
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    lui     $v1,0x8011
    addiu   $v1,$v1,-32464
    addu    $v0,$v0,$v1
    addu    $a1,$a1,$v0
    lw      $v0,2760($a1)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,FUN_8004aa04
    addiu   $t0,$a1,52
    addiu   $a2,$zero,95
    addiu   $a1,$a1,2712
.LFUN_8004a968_84:
    sh      $zero,22($a1)
    addiu   $a2,$a2,-1
    bgez    $a2,.LFUN_8004a968_84
    addiu   $a1,$a1,-28
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8004a968
    .size FUN_8004a968, . - FUN_8004a968

/* FUN_8004aa04 (0x8004aa04, 72 bytes) */
    .section .text.FUN_8004aa04,"ax",@progbits
    .globl FUN_8004aa04
    .globl sym_8004a9fc
    .type FUN_8004aa04, @function
    .ent FUN_8004aa04
FUN_8004aa04:
    addu    $a2,$zero,$zero
    lh      $v0,2762($a1)
    lhu     $v1,2760($a1)
    lh      $a0,2740($a1)
    sll     $v0,$v0,0x6
    srl     $v1,$v1,0x4
    andi    $v1,$v1,0x3f
    blez    $a0,sym_8004a9fc
    or      $a3,$v0,$v1
    addu    $v1,$t0,$zero
.LFUN_8004aa04_28:
    sh      $a3,22($v1)
    lh      $v0,2740($a1)
    addiu   $a2,$a2,1
    slt     $v0,$a2,$v0
    bne     $v0,$zero,.LFUN_8004aa04_28
    addiu   $v1,$v1,28
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8004aa04
    .size FUN_8004aa04, . - FUN_8004aa04

/* FUN_8004aac8 (0x8004aac8, 232 bytes) */
    .section .text.FUN_8004aac8,"ax",@progbits
    .globl FUN_8004aac8
    .type FUN_8004aac8, @function
    .ent FUN_8004aac8
FUN_8004aac8:
    lui     $v0,0x8011
    lw      $a2,27296($v0)
    addiu   $v1,$zero,1
    lui     $a3,0x8011
    addiu   $a3,$a3,-32464
    subu    $v1,$v1,$a2
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x4
    subu    $v0,$v0,$v1
    sll     $a1,$v0,0x5
    addu    $v0,$v0,$a1
    addu    $v0,$v0,$v1
    sll     $v1,$a0,0x1
    addu    $v1,$v1,$a0
    sll     $v1,$v1,0x2
    subu    $v1,$v1,$a0
    sll     $v1,$v1,0x2
    subu    $v1,$v1,$a0
    sll     $v1,$v1,0x2
    addu    $v1,$v1,$a0
    sll     $v1,$v1,0x2
    subu    $v1,$v1,$a0
    sll     $v1,$v1,0x2
    addu    $v0,$v0,$v1
    addu    $a1,$v0,$a3
    sll     $v0,$a2,0x2
    addu    $v0,$v0,$a2
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a2
    sll     $v0,$v0,0x4
    subu    $v0,$v0,$a2
    sll     $a0,$v0,0x5
    addu    $v0,$v0,$a0
    addu    $v0,$v0,$a2
    addu    $v0,$v0,$v1
    addu    $v0,$v0,$a3
    addiu   $v1,$v0,2752
.LFUN_8004aac8_a0:
    lw      $t0,0($v0)
    lw      $t1,4($v0)
    lw      $t2,8($v0)
    lw      $t3,12($v0)
    sw      $t0,0($a1)
    sw      $t1,4($a1)
    sw      $t2,8($a1)
    sw      $t3,12($a1)
    addiu   $v0,$v0,16
    bne     $v0,$v1,.LFUN_8004aac8_a0
    addiu   $a1,$a1,16
    lw      $t0,0($v0)
    lw      $t1,4($v0)
    lw      $t2,8($v0)
    sw      $t0,0($a1)
    sw      $t1,4($a1)
    jr      $ra
    sw      $t2,8($a1)
    .end FUN_8004aac8
    .size FUN_8004aac8, . - FUN_8004aac8

/* FUN_8004acb0 (0x8004acb0, 200 bytes) */
    .section .text.FUN_8004acb0,"ax",@progbits
    .globl FUN_8004acb0
    .globl FUN_8004a684
    .type FUN_8004acb0, @function
    .ent FUN_8004acb0
FUN_8004acb0:
    addiu   $sp,$sp,-24
    lui     $v0,0x8011
    lw      $v1,27296($v0)
    addu    $t0,$a0,$zero
    sw      $ra,16($sp)
    sll     $a0,$v1,0x2
    addu    $a0,$a0,$v1
    sll     $a0,$a0,0x2
    addu    $a0,$a0,$v1
    sll     $a0,$a0,0x4
    subu    $a0,$a0,$v1
    sll     $v0,$a0,0x5
    addu    $a0,$a0,$v0
    addu    $a0,$a0,$v1
    sll     $v0,$t0,0x1
    addu    $v0,$v0,$t0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$t0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$t0
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$t0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$t0
    sll     $v0,$v0,0x2
    lui     $v1,0x8011
    addiu   $v1,$v1,-32464
    addu    $v0,$v0,$v1
    addu    $a0,$a0,$v0
    lh      $v0,2750($a0)
    sll     $zero,$zero,0x0
    bne     $v0,$a1,.LFUN_8004acb0_a4
    sll     $zero,$zero,0x0
    lh      $v0,2752($a0)
    sll     $zero,$zero,0x0
    bne     $v0,$a2,.LFUN_8004acb0_a4
    sll     $zero,$zero,0x0
    lh      $v0,2754($a0)
    sll     $zero,$zero,0x0
    beq     $v0,$a3,.LFUN_8004acb0_b8
    sll     $zero,$zero,0x0
.LFUN_8004acb0_a4:
    sh      $a1,2750($a0)
    sh      $a2,2752($a0)
    sh      $a3,2754($a0)
    jal     FUN_8004a684
    addu    $a0,$t0,$zero
.LFUN_8004acb0_b8:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8004acb0
    .size FUN_8004acb0, . - FUN_8004acb0

/* FUN_8004ae74 (0x8004ae74, 144 bytes) */
    .section .text.FUN_8004ae74,"ax",@progbits
    .globl FUN_8004ae74
    .globl sym_8004a854
    .type FUN_8004ae74, @function
    .ent FUN_8004ae74
FUN_8004ae74:
    lui     $v0,0x8011
    lw      $v1,27296($v0)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    sll     $t0,$v1,0x2
    addu    $t0,$t0,$v1
    sll     $t0,$t0,0x2
    addu    $t0,$t0,$v1
    sll     $t0,$t0,0x4
    subu    $t0,$t0,$v1
    sll     $v0,$t0,0x5
    addu    $t0,$t0,$v0
    addu    $t0,$t0,$v1
    sll     $v0,$a0,0x1
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    lui     $v1,0x8011
    addiu   $v1,$v1,-32464
    addu    $v0,$v0,$v1
    addu    $t0,$t0,$v0
    sh      $a1,2756($t0)
    sh      $a2,2758($t0)
    jal     sym_8004a854
    sb      $a3,2746($t0)
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8004ae74
    .size FUN_8004ae74, . - FUN_8004ae74

/* FUN_8004af04 (0x8004af04, 180 bytes) */
    .section .text.FUN_8004af04,"ax",@progbits
    .globl FUN_8004af04
    .globl FUN_8004a968
    .type FUN_8004af04, @function
    .ent FUN_8004af04
FUN_8004af04:
    addiu   $sp,$sp,-24
    lui     $v0,0x8011
    lw      $v1,27296($v0)
    addu    $a3,$a0,$zero
    sw      $ra,16($sp)
    sll     $a0,$v1,0x2
    addu    $a0,$a0,$v1
    sll     $a0,$a0,0x2
    addu    $a0,$a0,$v1
    sll     $a0,$a0,0x4
    subu    $a0,$a0,$v1
    sll     $v0,$a0,0x5
    addu    $a0,$a0,$v0
    addu    $a0,$a0,$v1
    sll     $v0,$a3,0x1
    addu    $v0,$v0,$a3
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a3
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a3
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a3
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a3
    sll     $v0,$v0,0x2
    lui     $v1,0x8011
    addiu   $v1,$v1,-32464
    addu    $v0,$v0,$v1
    addu    $a0,$a0,$v0
    lh      $v0,2760($a0)
    sll     $zero,$zero,0x0
    bne     $v0,$a1,.LFUN_8004af04_94
    sll     $zero,$zero,0x0
    lh      $v0,2762($a0)
    sll     $zero,$zero,0x0
    beq     $v0,$a2,.LFUN_8004af04_a4
    sll     $zero,$zero,0x0
.LFUN_8004af04_94:
    sh      $a1,2760($a0)
    sh      $a2,2762($a0)
    jal     FUN_8004a968
    addu    $a0,$a3,$zero
.LFUN_8004af04_a4:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8004af04
    .size FUN_8004af04, . - FUN_8004af04

/* FUN_8004b2a8 (0x8004b2a8, 140 bytes) */
    .section .text.FUN_8004b2a8,"ax",@progbits
    .globl FUN_8004b2a8
    .type FUN_8004b2a8, @function
    .ent FUN_8004b2a8
FUN_8004b2a8:
    lui     $v0,0x8011
    lw      $v1,27296($v0)
    sll     $zero,$zero,0x0
    sll     $t0,$v1,0x2
    addu    $t0,$t0,$v1
    sll     $t0,$t0,0x2
    addu    $t0,$t0,$v1
    sll     $t0,$t0,0x4
    subu    $t0,$t0,$v1
    sll     $v0,$t0,0x5
    addu    $t0,$t0,$v0
    addu    $t0,$t0,$v1
    sll     $v0,$a0,0x1
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    lui     $v1,0x8011
    addiu   $v1,$v1,-32464
    addu    $v0,$v0,$v1
    addu    $t0,$t0,$v0
    sll     $v0,$a1,0x3
    subu    $v0,$v0,$a1
    sll     $v0,$v0,0x2
    addu    $t0,$t0,$v0
    addiu   $t0,$t0,60
    sb      $a2,12($t0)
    jr      $ra
    sb      $a3,13($t0)
    .end FUN_8004b2a8
    .size FUN_8004b2a8, . - FUN_8004b2a8

/* FUN_8004b334 (0x8004b334, 140 bytes) */
    .section .text.FUN_8004b334,"ax",@progbits
    .globl FUN_8004b334
    .type FUN_8004b334, @function
    .ent FUN_8004b334
FUN_8004b334:
    lui     $v0,0x8011
    lw      $v1,27296($v0)
    sll     $zero,$zero,0x0
    sll     $t0,$v1,0x2
    addu    $t0,$t0,$v1
    sll     $t0,$t0,0x2
    addu    $t0,$t0,$v1
    sll     $t0,$t0,0x4
    subu    $t0,$t0,$v1
    sll     $v0,$t0,0x5
    addu    $t0,$t0,$v0
    addu    $t0,$t0,$v1
    sll     $v0,$a0,0x1
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    lui     $v1,0x8011
    addiu   $v1,$v1,-32464
    addu    $v0,$v0,$v1
    addu    $t0,$t0,$v0
    sll     $v0,$a1,0x3
    subu    $v0,$v0,$a1
    sll     $v0,$v0,0x2
    addu    $t0,$t0,$v0
    addiu   $t0,$t0,60
    sh      $a2,16($t0)
    jr      $ra
    sh      $a3,18($t0)
    .end FUN_8004b334
    .size FUN_8004b334, . - FUN_8004b334

/* FUN_8004b450 (0x8004b450, 156 bytes) */
    .section .text.FUN_8004b450,"ax",@progbits
    .globl FUN_8004b450
    .globl FUN_8004b4ec
    .type FUN_8004b450, @function
    .ent FUN_8004b450
FUN_8004b450:
    lui     $v0,0x8011
    lw      $v1,27296($v0)
    addu    $a3,$a1,$zero
    sll     $a1,$v1,0x2
    addu    $a1,$a1,$v1
    sll     $a1,$a1,0x2
    addu    $a1,$a1,$v1
    sll     $a1,$a1,0x4
    subu    $a1,$a1,$v1
    sll     $v0,$a1,0x5
    addu    $a1,$a1,$v0
    addu    $a1,$a1,$v1
    sll     $v0,$a0,0x1
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    lui     $v1,0x8011
    addiu   $v1,$v1,-32464
    addu    $v0,$v0,$v1
    addu    $a1,$a1,$v0
    beq     $a2,$zero,FUN_8004b4ec
    addiu   $a1,$a1,52
    sll     $v0,$a3,0x3
    subu    $v0,$v0,$a3
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a1
    addiu   $v0,$v0,8
    lbu     $v1,7($v0)
    sll     $zero,$zero,0x0
    ori     $v1,$v1,0x2
    jr      $ra
    sb      $v1,7($v0)
    .end FUN_8004b450
    .size FUN_8004b450, . - FUN_8004b450

/* FUN_8004b4ec (0x8004b4ec, 40 bytes) */
    .section .text.FUN_8004b4ec,"ax",@progbits
    .globl FUN_8004b4ec
    .type FUN_8004b4ec, @function
    .ent FUN_8004b4ec
FUN_8004b4ec:
    sll     $v0,$a3,0x3
    subu    $v0,$v0,$a3
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a1
    addiu   $v0,$v0,8
    lbu     $v1,7($v0)
    sll     $zero,$zero,0x0
    andi    $v1,$v1,0xfd
    jr      $ra
    sb      $v1,7($v0)
    .end FUN_8004b4ec
    .size FUN_8004b4ec, . - FUN_8004b4ec

/* FUN_8004be50 (0x8004be50, 40 bytes) */
    .section .text.FUN_8004be50,"ax",@progbits
    .globl FUN_8004be50
    .globl sym_800a0e4c
    .type FUN_8004be50, @function
    .ent FUN_8004be50
FUN_8004be50:
    addiu   $sp,$sp,-24
    lui     $v1,0x800f
    addiu   $v0,$zero,42
    sw      $ra,16($sp)
    jal     sym_800a0e4c
    sh      $v0,10504($v1)
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8004be50
    .size FUN_8004be50, . - FUN_8004be50

/* FUN_8004be78 (0x8004be78, 48 bytes) */
    .section .text.FUN_8004be78,"ax",@progbits
    .globl FUN_8004be78
    .globl sym_800a0e74
    .type FUN_8004be78, @function
    .ent FUN_8004be78
FUN_8004be78:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_800a0e74
    sll     $zero,$zero,0x0
    addu    $v1,$v0,$zero
    bgtz    $v1,.LFUN_8004be78_20
    addiu   $v0,$zero,11
    addiu   $v0,$zero,3
.LFUN_8004be78_20:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8004be78
    .size FUN_8004be78, . - FUN_8004be78

/* FUN_8004bea8 (0x8004bea8, 8 bytes) */
    .section .text.FUN_8004bea8,"ax",@progbits
    .globl FUN_8004bea8
    .type FUN_8004bea8, @function
    .ent FUN_8004bea8
FUN_8004bea8:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8004bea8
    .size FUN_8004bea8, . - FUN_8004bea8

/* FUN_8004beb0 (0x8004beb0, 40 bytes) */
    .section .text.FUN_8004beb0,"ax",@progbits
    .globl FUN_8004beb0
    .globl sym_800a0e94
    .type FUN_8004beb0, @function
    .ent FUN_8004beb0
FUN_8004beb0:
    addiu   $sp,$sp,-24
    lui     $v1,0x800f
    addiu   $v0,$zero,43
    sw      $ra,16($sp)
    jal     sym_800a0e94
    sh      $v0,10504($v1)
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8004beb0
    .size FUN_8004beb0, . - FUN_8004beb0

/* FUN_8004bed8 (0x8004bed8, 48 bytes) */
    .section .text.FUN_8004bed8,"ax",@progbits
    .globl FUN_8004bed8
    .globl sym_800a0ebc
    .type FUN_8004bed8, @function
    .ent FUN_8004bed8
FUN_8004bed8:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_800a0ebc
    sll     $zero,$zero,0x0
    addu    $v1,$v0,$zero
    bgtz    $v1,.LFUN_8004bed8_20
    addiu   $v0,$zero,1
    addiu   $v0,$zero,4
.LFUN_8004bed8_20:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8004bed8
    .size FUN_8004bed8, . - FUN_8004bed8

/* FUN_8004bf08 (0x8004bf08, 8 bytes) */
    .section .text.FUN_8004bf08,"ax",@progbits
    .globl FUN_8004bf08
    .type FUN_8004bf08, @function
    .ent FUN_8004bf08
FUN_8004bf08:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8004bf08
    .size FUN_8004bf08, . - FUN_8004bf08

/* FUN_8004bf10 (0x8004bf10, 40 bytes) */
    .section .text.FUN_8004bf10,"ax",@progbits
    .globl FUN_8004bf10
    .globl sym_800a0da4
    .type FUN_8004bf10, @function
    .ent FUN_8004bf10
FUN_8004bf10:
    addiu   $sp,$sp,-24
    lui     $v1,0x800f
    addiu   $v0,$zero,44
    sw      $ra,16($sp)
    jal     sym_800a0da4
    sh      $v0,10504($v1)
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8004bf10
    .size FUN_8004bf10, . - FUN_8004bf10

/* FUN_8004bf38 (0x8004bf38, 48 bytes) */
    .section .text.FUN_8004bf38,"ax",@progbits
    .globl FUN_8004bf38
    .globl sym_800a0dd8
    .type FUN_8004bf38, @function
    .ent FUN_8004bf38
FUN_8004bf38:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_800a0dd8
    sll     $zero,$zero,0x0
    addu    $v1,$v0,$zero
    bgtz    $v1,.LFUN_8004bf38_20
    addiu   $v0,$zero,1
    addiu   $v0,$zero,5
.LFUN_8004bf38_20:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8004bf38
    .size FUN_8004bf38, . - FUN_8004bf38

/* FUN_8004bf68 (0x8004bf68, 8 bytes) */
    .section .text.FUN_8004bf68,"ax",@progbits
    .globl FUN_8004bf68
    .type FUN_8004bf68, @function
    .ent FUN_8004bf68
FUN_8004bf68:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8004bf68
    .size FUN_8004bf68, . - FUN_8004bf68

/* FUN_8004bf70 (0x8004bf70, 40 bytes) */
    .section .text.FUN_8004bf70,"ax",@progbits
    .globl FUN_8004bf70
    .globl sym_800a0fd0
    .type FUN_8004bf70, @function
    .ent FUN_8004bf70
FUN_8004bf70:
    addiu   $sp,$sp,-24
    lui     $v1,0x800f
    addiu   $v0,$zero,49
    sw      $ra,16($sp)
    jal     sym_800a0fd0
    sh      $v0,10504($v1)
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8004bf70
    .size FUN_8004bf70, . - FUN_8004bf70

/* FUN_8004bf98 (0x8004bf98, 48 bytes) */
    .section .text.FUN_8004bf98,"ax",@progbits
    .globl FUN_8004bf98
    .globl sym_800a1004
    .type FUN_8004bf98, @function
    .ent FUN_8004bf98
FUN_8004bf98:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_800a1004
    sll     $zero,$zero,0x0
    addu    $v1,$v0,$zero
    bgtz    $v1,.LFUN_8004bf98_20
    addiu   $v0,$zero,11
    addiu   $v0,$zero,6
.LFUN_8004bf98_20:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8004bf98
    .size FUN_8004bf98, . - FUN_8004bf98

/* FUN_8004bfc8 (0x8004bfc8, 8 bytes) */
    .section .text.FUN_8004bfc8,"ax",@progbits
    .globl FUN_8004bfc8
    .type FUN_8004bfc8, @function
    .ent FUN_8004bfc8
FUN_8004bfc8:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8004bfc8
    .size FUN_8004bfc8, . - FUN_8004bfc8

/* FUN_8004bfd0 (0x8004bfd0, 40 bytes) */
    .section .text.FUN_8004bfd0,"ax",@progbits
    .globl FUN_8004bfd0
    .globl sym_800a0d50
    .type FUN_8004bfd0, @function
    .ent FUN_8004bfd0
FUN_8004bfd0:
    addiu   $sp,$sp,-24
    lui     $v1,0x800f
    addiu   $v0,$zero,46
    sw      $ra,16($sp)
    jal     sym_800a0d50
    sh      $v0,10504($v1)
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8004bfd0
    .size FUN_8004bfd0, . - FUN_8004bfd0

/* FUN_8004bff8 (0x8004bff8, 48 bytes) */
    .section .text.FUN_8004bff8,"ax",@progbits
    .globl FUN_8004bff8
    .globl sym_800a0d84
    .type FUN_8004bff8, @function
    .ent FUN_8004bff8
FUN_8004bff8:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_800a0d84
    sll     $zero,$zero,0x0
    addu    $v1,$v0,$zero
    bgtz    $v1,.LFUN_8004bff8_20
    addiu   $v0,$zero,11
    addiu   $v0,$zero,7
.LFUN_8004bff8_20:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8004bff8
    .size FUN_8004bff8, . - FUN_8004bff8

/* FUN_8004c028 (0x8004c028, 8 bytes) */
    .section .text.FUN_8004c028,"ax",@progbits
    .globl FUN_8004c028
    .type FUN_8004c028, @function
    .ent FUN_8004c028
FUN_8004c028:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8004c028
    .size FUN_8004c028, . - FUN_8004c028

/* FUN_8004c030 (0x8004c030, 40 bytes) */
    .section .text.FUN_8004c030,"ax",@progbits
    .globl FUN_8004c030
    .globl sym_800a0d00
    .type FUN_8004c030, @function
    .ent FUN_8004c030
FUN_8004c030:
    addiu   $sp,$sp,-24
    lui     $v1,0x800f
    addiu   $v0,$zero,47
    sw      $ra,16($sp)
    jal     sym_800a0d00
    sh      $v0,10504($v1)
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8004c030
    .size FUN_8004c030, . - FUN_8004c030

/* FUN_8004c058 (0x8004c058, 48 bytes) */
    .section .text.FUN_8004c058,"ax",@progbits
    .globl FUN_8004c058
    .globl sym_800a0d30
    .type FUN_8004c058, @function
    .ent FUN_8004c058
FUN_8004c058:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_800a0d30
    sll     $zero,$zero,0x0
    addu    $v1,$v0,$zero
    bgtz    $v1,.LFUN_8004c058_20
    addiu   $v0,$zero,11
    addiu   $v0,$zero,8
.LFUN_8004c058_20:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8004c058
    .size FUN_8004c058, . - FUN_8004c058

/* FUN_8004c088 (0x8004c088, 8 bytes) */
    .section .text.FUN_8004c088,"ax",@progbits
    .globl FUN_8004c088
    .type FUN_8004c088, @function
    .ent FUN_8004c088
FUN_8004c088:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8004c088
    .size FUN_8004c088, . - FUN_8004c088

/* FUN_8004c090 (0x8004c090, 40 bytes) */
    .section .text.FUN_8004c090,"ax",@progbits
    .globl FUN_8004c090
    .globl sym_800a0df8
    .type FUN_8004c090, @function
    .ent FUN_8004c090
FUN_8004c090:
    addiu   $sp,$sp,-24
    lui     $v1,0x800f
    addiu   $v0,$zero,48
    sw      $ra,16($sp)
    jal     sym_800a0df8
    sh      $v0,10504($v1)
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8004c090
    .size FUN_8004c090, . - FUN_8004c090

/* FUN_8004c0b8 (0x8004c0b8, 48 bytes) */
    .section .text.FUN_8004c0b8,"ax",@progbits
    .globl FUN_8004c0b8
    .globl sym_800a0e2c
    .type FUN_8004c0b8, @function
    .ent FUN_8004c0b8
FUN_8004c0b8:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_800a0e2c
    sll     $zero,$zero,0x0
    addu    $v1,$v0,$zero
    bgtz    $v1,.LFUN_8004c0b8_20
    addiu   $v0,$zero,11
    addiu   $v0,$zero,9
.LFUN_8004c0b8_20:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8004c0b8
    .size FUN_8004c0b8, . - FUN_8004c0b8

/* FUN_8004c0e8 (0x8004c0e8, 8 bytes) */
    .section .text.FUN_8004c0e8,"ax",@progbits
    .globl FUN_8004c0e8
    .type FUN_8004c0e8, @function
    .ent FUN_8004c0e8
FUN_8004c0e8:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8004c0e8
    .size FUN_8004c0e8, . - FUN_8004c0e8

/* FUN_8004c1bc (0x8004c1bc, 40 bytes) */
    .section .text.FUN_8004c1bc,"ax",@progbits
    .globl FUN_8004c1bc
    .globl sym_800a142c
    .type FUN_8004c1bc, @function
    .ent FUN_8004c1bc
FUN_8004c1bc:
    addiu   $sp,$sp,-24
    lui     $v1,0x800f
    addiu   $v0,$zero,50
    sw      $ra,16($sp)
    jal     sym_800a142c
    sh      $v0,10504($v1)
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8004c1bc
    .size FUN_8004c1bc, . - FUN_8004c1bc

/* FUN_8004c1e4 (0x8004c1e4, 48 bytes) */
    .section .text.FUN_8004c1e4,"ax",@progbits
    .globl FUN_8004c1e4
    .globl sym_800a1454
    .type FUN_8004c1e4, @function
    .ent FUN_8004c1e4
FUN_8004c1e4:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_800a1454
    sll     $zero,$zero,0x0
    addu    $v1,$v0,$zero
    bgtz    $v1,.LFUN_8004c1e4_20
    addiu   $v0,$zero,11
    addiu   $v0,$zero,12
.LFUN_8004c1e4_20:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8004c1e4
    .size FUN_8004c1e4, . - FUN_8004c1e4

/* FUN_8004c214 (0x8004c214, 8 bytes) */
    .section .text.FUN_8004c214,"ax",@progbits
    .globl FUN_8004c214
    .type FUN_8004c214, @function
    .ent FUN_8004c214
FUN_8004c214:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8004c214
    .size FUN_8004c214, . - FUN_8004c214

/* FUN_8004c21c (0x8004c21c, 40 bytes) */
    .section .text.FUN_8004c21c,"ax",@progbits
    .globl FUN_8004c21c
    .globl sym_800a1074
    .type FUN_8004c21c, @function
    .ent FUN_8004c21c
FUN_8004c21c:
    addiu   $sp,$sp,-24
    lui     $v1,0x800f
    addiu   $v0,$zero,51
    sw      $ra,16($sp)
    jal     sym_800a1074
    sh      $v0,10504($v1)
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8004c21c
    .size FUN_8004c21c, . - FUN_8004c21c

/* FUN_8004c244 (0x8004c244, 48 bytes) */
    .section .text.FUN_8004c244,"ax",@progbits
    .globl FUN_8004c244
    .globl sym_800a109c
    .type FUN_8004c244, @function
    .ent FUN_8004c244
FUN_8004c244:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_800a109c
    sll     $zero,$zero,0x0
    addu    $v1,$v0,$zero
    bgtz    $v1,.LFUN_8004c244_20
    addiu   $v0,$zero,11
    addiu   $v0,$zero,13
.LFUN_8004c244_20:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8004c244
    .size FUN_8004c244, . - FUN_8004c244

/* FUN_8004c274 (0x8004c274, 8 bytes) */
    .section .text.FUN_8004c274,"ax",@progbits
    .globl FUN_8004c274
    .type FUN_8004c274, @function
    .ent FUN_8004c274
FUN_8004c274:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8004c274
    .size FUN_8004c274, . - FUN_8004c274

/* FUN_8004c9bc (0x8004c9bc, 496 bytes) */
    .section .text.FUN_8004c9bc,"ax",@progbits
    .globl FUN_8004c9bc
    .globl sym_80098880
    .globl sym_8004dab8
    .type FUN_8004c9bc, @function
    .ent FUN_8004c9bc
FUN_8004c9bc:
    addiu   $sp,$sp,-96
    lw      $v0,112($sp)
    sw      $s2,64($sp)
    addu    $s2,$a0,$zero
    sw      $ra,92($sp)
    sw      $s8,88($sp)
    sw      $s7,84($sp)
    sw      $s6,80($sp)
    sw      $s5,76($sp)
    sw      $s4,72($sp)
    sw      $s3,68($sp)
    sw      $s1,60($sp)
    sw      $s0,56($sp)
    sw      $a1,100($sp)
    sw      $a2,104($sp)
    beq     $v0,$zero,.LFUN_8004c9bc_74
    sw      $a3,108($sp)
    jal     sym_80098880
    addiu   $a0,$zero,110
    addiu   $s7,$zero,256
    addiu   $s5,$zero,1024
    addiu   $s4,$zero,64
    addiu   $t0,$zero,320
    addiu   $s8,$zero,72
    sw      $t0,44($sp)
    addiu   $t0,$zero,4
    sw      $v0,40($sp)
    j       .LFUN_8004c9bc_108
    sw      $t0,48($sp)
.LFUN_8004c9bc_74:
    jal     sym_80098880
    addiu   $a0,$zero,118
    addiu   $s7,$zero,256
    addiu   $s5,$zero,512
    addiu   $s4,$zero,32
    addiu   $t0,$zero,160
    addiu   $s8,$zero,36
    sw      $t0,44($sp)
    addiu   $t0,$zero,2
    addu    $a0,$s2,$zero
    addiu   $a1,$zero,255
    addu    $a2,$zero,$zero
    addiu   $a3,$zero,-160
    sw      $t0,48($sp)
    addu    $t0,$v0,$zero
    addiu   $s0,$zero,224
    sw      $v0,40($sp)
    sw      $s8,16($sp)
    sw      $t0,20($sp)
    sw      $zero,24($sp)
    sw      $s0,28($sp)
    sw      $s4,32($sp)
    jal     sym_8004dab8
    sw      $s4,36($sp)
    addu    $a0,$v0,$zero
    addiu   $a1,$zero,255
    addu    $a2,$zero,$zero
    lw      $t0,40($sp)
    addiu   $a3,$zero,128
    sw      $s8,16($sp)
    sw      $zero,24($sp)
    sw      $s0,28($sp)
    sw      $s4,32($sp)
    sw      $s4,36($sp)
    jal     sym_8004dab8
    sw      $t0,20($sp)
    addu    $s2,$v0,$zero
.LFUN_8004c9bc_108:
    addu    $s6,$zero,$zero
    addu    $s3,$s6,$zero
.LFUN_8004c9bc_110:
    beq     $s5,$zero,.LFUN_8004c9bc_1ac
    lui     $t0,0x800f
    addu    $s0,$zero,$zero
    addu    $s1,$s0,$zero
.LFUN_8004c9bc_120:
    addiu   $t0,$t0,10376
    lw      $v0,116($t0)
    lw      $t0,48($sp)
    sll     $zero,$zero,0x0
    mult    $v0,$t0
    addu    $v0,$s0,$s3
    mflo    $t0
    subu    $v0,$v0,$t0
    lw      $t0,108($sp)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$t0
    bgtz    $v0,.LFUN_8004c9bc_1ac
    negu    $v1,$v0
    sll     $v0,$s5,0x1
    div     $zero,$v1,$v0
    mfhi    $a3
    addu    $a0,$s2,$zero
    lw      $a1,100($sp)
    lw      $a2,104($sp)
    lw      $t0,40($sp)
    addu    $s0,$s0,$s7
    sw      $s1,28($sp)
    sw      $t0,20($sp)
    lw      $t0,44($sp)
    addu    $s1,$s1,$s4
    sw      $s8,16($sp)
    sw      $zero,24($sp)
    sw      $s7,32($sp)
    sw      $s4,36($sp)
    jal     sym_8004dab8
    subu    $a3,$t0,$a3
    addu    $s2,$v0,$zero
    slt     $v0,$s0,$s5
    bne     $v0,$zero,.LFUN_8004c9bc_120
    lui     $t0,0x800f
.LFUN_8004c9bc_1ac:
    addiu   $s6,$s6,1
    slti    $v0,$s6,2
    bne     $v0,$zero,.LFUN_8004c9bc_110
    addu    $s3,$s3,$s5
    addu    $v0,$s2,$zero
    lw      $ra,92($sp)
    lw      $s8,88($sp)
    lw      $s7,84($sp)
    lw      $s6,80($sp)
    lw      $s5,76($sp)
    lw      $s4,72($sp)
    lw      $s3,68($sp)
    lw      $s2,64($sp)
    lw      $s1,60($sp)
    lw      $s0,56($sp)
    jr      $ra
    addiu   $sp,$sp,96
    .end FUN_8004c9bc
    .size FUN_8004c9bc, . - FUN_8004c9bc

/* FUN_8004cda0 (0x8004cda0, 280 bytes) */
    .section .text.FUN_8004cda0,"ax",@progbits
    .globl FUN_8004cda0
    .globl sym_80098880
    .globl sym_8004ee28
    .globl sym_8004dab8
    .globl sym_8004eb5c
    .type FUN_8004cda0, @function
    .ent FUN_8004cda0
FUN_8004cda0:
    addiu   $sp,$sp,-80
    lui     $v0,0x800f
    sw      $s0,56($sp)
    addiu   $s0,$v0,10376
    sw      $ra,76($sp)
    sw      $s4,72($sp)
    sw      $s3,68($sp)
    sw      $s2,64($sp)
    sw      $s1,60($sp)
    lw      $v0,116($s0)
    sll     $zero,$zero,0x0
    sll     $s4,$v0,0x3
    slti    $v0,$s4,129
    bne     $v0,$zero,.LFUN_8004cda0_40
    sll     $zero,$zero,0x0
    addiu   $s4,$zero,128
.LFUN_8004cda0_40:
    jal     sym_80098880
    addiu   $a0,$zero,60
    lw      $v1,116($s0)
    sll     $zero,$zero,0x0
    slti    $v1,$v1,18
    bne     $v1,$zero,.LFUN_8004cda0_74
    addu    $a0,$zero,$zero
    addiu   $a1,$zero,255
    addiu   $a2,$zero,128
    jal     sym_8004ee28
    addu    $a3,$v0,$zero
    j       .LFUN_8004cda0_f8
    sll     $zero,$zero,0x0
.LFUN_8004cda0_74:
    addiu   $a1,$zero,254
    addu    $a2,$s4,$zero
    addiu   $a3,$zero,-320
    addiu   $s3,$zero,-240
    addiu   $s2,$zero,640
    addiu   $s1,$zero,480
    sw      $s3,16($sp)
    sw      $v0,20($sp)
    sw      $zero,24($sp)
    sw      $zero,28($sp)
    sw      $s2,32($sp)
    jal     sym_8004dab8
    sw      $s1,36($sp)
    addiu   $v1,$zero,128
    subu    $s4,$v1,$s4
    addiu   $a0,$zero,131
    jal     sym_80098880
    addu    $s0,$v0,$zero
    addu    $a0,$s0,$zero
    addiu   $a1,$zero,253
    addiu   $a2,$zero,1
    addu    $a3,$s4,$zero
    addiu   $v1,$zero,-320
    sw      $a3,16($sp)
    sw      $a3,20($sp)
    sw      $v1,24($sp)
    sw      $s3,28($sp)
    sw      $v0,32($sp)
    sw      $zero,36($sp)
    sw      $zero,40($sp)
    sw      $s2,44($sp)
    jal     sym_8004eb5c
    sw      $s1,48($sp)
.LFUN_8004cda0_f8:
    lw      $ra,76($sp)
    lw      $s4,72($sp)
    lw      $s3,68($sp)
    lw      $s2,64($sp)
    lw      $s1,60($sp)
    lw      $s0,56($sp)
    jr      $ra
    addiu   $sp,$sp,80
    .end FUN_8004cda0
    .size FUN_8004cda0, . - FUN_8004cda0

/* FUN_8004ceb8 (0x8004ceb8, 280 bytes) */
    .section .text.FUN_8004ceb8,"ax",@progbits
    .globl FUN_8004ceb8
    .globl sym_80098880
    .globl sym_8004ee28
    .globl sym_8004dab8
    .globl sym_8004eb5c
    .type FUN_8004ceb8, @function
    .ent FUN_8004ceb8
FUN_8004ceb8:
    addiu   $sp,$sp,-80
    lui     $v0,0x800f
    sw      $s0,56($sp)
    addiu   $s0,$v0,10376
    sw      $ra,76($sp)
    sw      $s4,72($sp)
    sw      $s3,68($sp)
    sw      $s2,64($sp)
    sw      $s1,60($sp)
    lw      $v0,116($s0)
    sll     $zero,$zero,0x0
    sll     $s4,$v0,0x3
    slti    $v0,$s4,129
    bne     $v0,$zero,.LFUN_8004ceb8_40
    sll     $zero,$zero,0x0
    addiu   $s4,$zero,128
.LFUN_8004ceb8_40:
    jal     sym_80098880
    addiu   $a0,$zero,105
    lw      $v1,116($s0)
    sll     $zero,$zero,0x0
    slti    $v1,$v1,18
    bne     $v1,$zero,.LFUN_8004ceb8_74
    addu    $a0,$zero,$zero
    addiu   $a1,$zero,255
    addiu   $a2,$zero,128
    jal     sym_8004ee28
    addu    $a3,$v0,$zero
    j       .LFUN_8004ceb8_f8
    sll     $zero,$zero,0x0
.LFUN_8004ceb8_74:
    addiu   $a1,$zero,254
    addu    $a2,$s4,$zero
    addiu   $a3,$zero,-320
    addiu   $s3,$zero,-240
    addiu   $s2,$zero,640
    addiu   $s1,$zero,480
    sw      $s3,16($sp)
    sw      $v0,20($sp)
    sw      $zero,24($sp)
    sw      $zero,28($sp)
    sw      $s2,32($sp)
    jal     sym_8004dab8
    sw      $s1,36($sp)
    addiu   $v1,$zero,128
    subu    $s4,$v1,$s4
    addiu   $a0,$zero,60
    jal     sym_80098880
    addu    $s0,$v0,$zero
    addu    $a0,$s0,$zero
    addiu   $a1,$zero,253
    addiu   $a2,$zero,1
    addu    $a3,$s4,$zero
    addiu   $v1,$zero,-320
    sw      $a3,16($sp)
    sw      $a3,20($sp)
    sw      $v1,24($sp)
    sw      $s3,28($sp)
    sw      $v0,32($sp)
    sw      $zero,36($sp)
    sw      $zero,40($sp)
    sw      $s2,44($sp)
    jal     sym_8004eb5c
    sw      $s1,48($sp)
.LFUN_8004ceb8_f8:
    lw      $ra,76($sp)
    lw      $s4,72($sp)
    lw      $s3,68($sp)
    lw      $s2,64($sp)
    lw      $s1,60($sp)
    lw      $s0,56($sp)
    jr      $ra
    addiu   $sp,$sp,80
    .end FUN_8004ceb8
    .size FUN_8004ceb8, . - FUN_8004ceb8

/* FUN_8004cfd0 (0x8004cfd0, 56 bytes) */
    .section .text.FUN_8004cfd0,"ax",@progbits
    .globl FUN_8004cfd0
    .globl sym_8002a8b0
    .type FUN_8004cfd0, @function
    .ent FUN_8004cfd0
FUN_8004cfd0:
    addiu   $sp,$sp,-24
    addiu   $a0,$zero,110
    addiu   $a1,$zero,-1
    sw      $ra,16($sp)
    jal     sym_8002a8b0
    addu    $a2,$a1,$zero
    addiu   $a0,$zero,118
    addiu   $a1,$zero,-1
    jal     sym_8002a8b0
    addu    $a2,$a1,$zero
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8004cfd0
    .size FUN_8004cfd0, . - FUN_8004cfd0

/* FUN_8004d008 (0x8004d008, 8 bytes) */
    .section .text.FUN_8004d008,"ax",@progbits
    .globl FUN_8004d008
    .type FUN_8004d008, @function
    .ent FUN_8004d008
FUN_8004d008:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8004d008
    .size FUN_8004d008, . - FUN_8004d008

/* FUN_8004d1a0 (0x8004d1a0, 96 bytes) */
    .section .text.FUN_8004d1a0,"ax",@progbits
    .globl FUN_8004d1a0
    .globl sym_8002a8b0
    .globl sym_800985c8
    .type FUN_8004d1a0, @function
    .ent FUN_8004d1a0
FUN_8004d1a0:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_8002a8b0
    sll     $zero,$zero,0x0
    lui     $a0,0x8002
    jal     sym_800985c8
    addiu   $a0,$a0,-16820
    addu    $a0,$v0,$zero
    addiu   $a1,$zero,-1
    jal     sym_8002a8b0
    addu    $a2,$a1,$zero
    lui     $a0,0x8002
    jal     sym_800985c8
    addiu   $a0,$a0,-16828
    addu    $a0,$v0,$zero
    addiu   $a1,$zero,-1
    jal     sym_8002a8b0
    addu    $a2,$a1,$zero
    lui     $v1,0x8011
    lw      $ra,16($sp)
    addiu   $v0,$zero,1
    sb      $v0,27685($v1)
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8004d1a0
    .size FUN_8004d1a0, . - FUN_8004d1a0

/* FUN_8004d200 (0x8004d200, 8 bytes) */
    .section .text.FUN_8004d200,"ax",@progbits
    .globl FUN_8004d200
    .type FUN_8004d200, @function
    .ent FUN_8004d200
FUN_8004d200:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8004d200
    .size FUN_8004d200, . - FUN_8004d200

/* FUN_8004d208 (0x8004d208, 96 bytes) */
    .section .text.FUN_8004d208,"ax",@progbits
    .globl FUN_8004d208
    .globl sym_8002a8b0
    .globl sym_800985c8
    .type FUN_8004d208, @function
    .ent FUN_8004d208
FUN_8004d208:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_8002a8b0
    sll     $zero,$zero,0x0
    lui     $a0,0x8002
    jal     sym_800985c8
    addiu   $a0,$a0,-16808
    addu    $a0,$v0,$zero
    addiu   $a1,$zero,-1
    jal     sym_8002a8b0
    addu    $a2,$a1,$zero
    lui     $a0,0x8002
    jal     sym_800985c8
    addiu   $a0,$a0,-16820
    addu    $a0,$v0,$zero
    addiu   $a1,$zero,-1
    jal     sym_8002a8b0
    addu    $a2,$a1,$zero
    lui     $v1,0x8011
    lw      $ra,16($sp)
    addiu   $v0,$zero,1
    sb      $v0,27685($v1)
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8004d208
    .size FUN_8004d208, . - FUN_8004d208

/* FUN_8004d268 (0x8004d268, 8 bytes) */
    .section .text.FUN_8004d268,"ax",@progbits
    .globl FUN_8004d268
    .type FUN_8004d268, @function
    .ent FUN_8004d268
FUN_8004d268:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8004d268
    .size FUN_8004d268, . - FUN_8004d268

/* FUN_8004d270 (0x8004d270, 60 bytes) */
    .section .text.FUN_8004d270,"ax",@progbits
    .globl FUN_8004d270
    .globl sym_800985c8
    .globl sym_8002a8b0
    .type FUN_8004d270, @function
    .ent FUN_8004d270
FUN_8004d270:
    addiu   $sp,$sp,-24
    lui     $a0,0x8002
    sw      $ra,16($sp)
    jal     sym_800985c8
    addiu   $a0,$a0,-16828
    addu    $a0,$v0,$zero
    addiu   $a1,$zero,-1
    jal     sym_8002a8b0
    addu    $a2,$a1,$zero
    lui     $v1,0x8011
    lw      $ra,16($sp)
    addiu   $v0,$zero,1
    sb      $v0,27685($v1)
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8004d270
    .size FUN_8004d270, . - FUN_8004d270

/* FUN_8004d2ac (0x8004d2ac, 208 bytes) */
    .section .text.FUN_8004d2ac,"ax",@progbits
    .globl FUN_8004d2ac
    .globl sym_800985c8
    .globl sym_80098880
    .globl sym_8004ee28
    .globl sym_8004e890
    .type FUN_8004d2ac, @function
    .ent FUN_8004d2ac
FUN_8004d2ac:
    addiu   $sp,$sp,-64
    lui     $v0,0x800f
    sw      $s1,52($sp)
    addiu   $s1,$v0,10376
    sw      $ra,56($sp)
    sw      $s0,48($sp)
    lw      $v0,116($s1)
    sll     $zero,$zero,0x0
    sll     $s0,$v0,0x3
    slti    $v0,$s0,129
    bne     $v0,$zero,.LFUN_8004d2ac_34
    sll     $zero,$zero,0x0
    addiu   $s0,$zero,128
.LFUN_8004d2ac_34:
    lui     $a0,0x8002
    jal     sym_800985c8
    addiu   $a0,$a0,-16828
    jal     sym_80098880
    addu    $a0,$v0,$zero
    lw      $v1,116($s1)
    sll     $zero,$zero,0x0
    slti    $v1,$v1,18
    bne     $v1,$zero,.LFUN_8004d2ac_78
    addu    $t0,$v0,$zero
    addu    $a0,$zero,$zero
    addiu   $a1,$zero,255
    addiu   $a2,$zero,128
    jal     sym_8004ee28
    addu    $a3,$t0,$zero
    j       .LFUN_8004d2ac_bc
    sll     $zero,$zero,0x0
.LFUN_8004d2ac_78:
    addu    $a0,$zero,$zero
    addiu   $a1,$zero,254
    addu    $a2,$s0,$zero
    addu    $a3,$a2,$zero
    addiu   $v0,$zero,-320
    sw      $v0,20($sp)
    addiu   $v0,$zero,-240
    sw      $v0,24($sp)
    addiu   $v0,$zero,640
    sw      $v0,40($sp)
    addiu   $v0,$zero,480
    sw      $a2,16($sp)
    sw      $t0,28($sp)
    sw      $zero,32($sp)
    sw      $zero,36($sp)
    jal     sym_8004e890
    sw      $v0,44($sp)
.LFUN_8004d2ac_bc:
    lw      $ra,56($sp)
    lw      $s1,52($sp)
    lw      $s0,48($sp)
    jr      $ra
    addiu   $sp,$sp,64
    .end FUN_8004d2ac
    .size FUN_8004d2ac, . - FUN_8004d2ac

/* FUN_8004d37c (0x8004d37c, 8 bytes) */
    .section .text.FUN_8004d37c,"ax",@progbits
    .globl FUN_8004d37c
    .type FUN_8004d37c, @function
    .ent FUN_8004d37c
FUN_8004d37c:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8004d37c
    .size FUN_8004d37c, . - FUN_8004d37c

/* FUN_8004d384 (0x8004d384, 52 bytes) */
    .section .text.FUN_8004d384,"ax",@progbits
    .globl FUN_8004d384
    .globl sym_800985c8
    .globl sym_8002a8b0
    .type FUN_8004d384, @function
    .ent FUN_8004d384
FUN_8004d384:
    addiu   $sp,$sp,-24
    lui     $a0,0x8002
    sw      $ra,16($sp)
    jal     sym_800985c8
    addiu   $a0,$a0,-16796
    addu    $a0,$v0,$zero
    addiu   $a1,$zero,-1
    jal     sym_8002a8b0
    addu    $a2,$a1,$zero
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8004d384
    .size FUN_8004d384, . - FUN_8004d384

/* FUN_8004d3b8 (0x8004d3b8, 168 bytes) */
    .section .text.FUN_8004d3b8,"ax",@progbits
    .globl FUN_8004d3b8
    .globl sym_800985c8
    .globl sym_80098880
    .globl sym_80043134
    .globl sym_80048e80
    .globl sym_80048d18
    .globl sym_80048dec
    .globl sym_80048b94
    .globl sym_80048c3c
    .globl sym_80043344
    .type FUN_8004d3b8, @function
    .ent FUN_8004d3b8
FUN_8004d3b8:
    addiu   $sp,$sp,-32
    lui     $a0,0x8002
    addiu   $a0,$a0,-16796
    sw      $ra,28($sp)
    jal     sym_800985c8
    sw      $s0,24($sp)
    jal     sym_80098880
    addu    $a0,$v0,$zero
    addiu   $a0,$zero,1
    addu    $a1,$a0,$zero
    jal     sym_80043134
    addu    $s0,$v0,$zero
    addiu   $a0,$zero,1
    jal     sym_80048e80
    addiu   $a1,$zero,255
    lh      $v0,8($s0)
    lh      $a1,2($s0)
    lh      $a2,4($s0)
    lh      $a3,6($s0)
    sw      $v0,16($sp)
    lh      $v0,10($s0)
    addiu   $a0,$zero,1
    jal     sym_80048d18
    sw      $v0,20($sp)
    lh      $a1,14($s0)
    lh      $a2,16($s0)
    jal     sym_80048dec
    addiu   $a0,$zero,1
    addiu   $a0,$zero,1
    addiu   $a1,$zero,128
    addu    $a2,$a1,$zero
    jal     sym_80048b94
    addu    $a3,$a1,$zero
    addiu   $a0,$zero,1
    jal     sym_80048c3c
    addiu   $a1,$zero,-1
    jal     sym_80043344
    addiu   $a0,$zero,1
    lw      $ra,28($sp)
    lw      $s0,24($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end FUN_8004d3b8
    .size FUN_8004d3b8, . - FUN_8004d3b8

/* FUN_8004d460 (0x8004d460, 8 bytes) */
    .section .text.FUN_8004d460,"ax",@progbits
    .globl FUN_8004d460
    .type FUN_8004d460, @function
    .ent FUN_8004d460
FUN_8004d460:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8004d460
    .size FUN_8004d460, . - FUN_8004d460

/* FUN_8004dd8c (0x8004dd8c, 728 bytes) */
    .section .text.FUN_8004dd8c,"ax",@progbits
    .globl FUN_8004dd8c
    .globl sym_8004d648
    .type FUN_8004dd8c, @function
    .ent FUN_8004dd8c
FUN_8004dd8c:
    addiu   $sp,$sp,-160
    addu    $t5,$a2,$zero
    lw      $t6,180($sp)
    lw      $t3,184($sp)
    lw      $t4,176($sp)
    lw      $t8,188($sp)
    addu    $t2,$a0,$zero
    sw      $s8,152($sp)
    sw      $a3,172($sp)
    addiu   $s8,$a3,320
    sw      $ra,156($sp)
    sw      $s7,148($sp)
    sw      $s6,144($sp)
    sw      $s5,140($sp)
    sw      $s4,136($sp)
    sw      $s3,132($sp)
    sw      $s2,128($sp)
    sw      $s1,124($sp)
    sw      $s0,120($sp)
    sw      $a1,164($sp)
    addiu   $t1,$t4,240
    bgez    $t6,.LFUN_8004dd8c_60
    sw      $t3,56($sp)
    lh      $t6,6($t8)
.LFUN_8004dd8c_60:
    lw      $t3,56($sp)
    sll     $zero,$zero,0x0
    bgez    $t3,.LFUN_8004dd8c_7c
    addu    $s4,$zero,$zero
    lh      $t4,8($t8)
    sll     $zero,$zero,0x0
    sw      $t4,56($sp)
.LFUN_8004dd8c_7c:
    lbu     $s5,2($t8)
    lbu     $s7,4($t8)
    lw      $t3,56($sp)
    addu    $a0,$s5,$s8
    addu    $v0,$a0,$t6
    addiu   $v0,$v0,255
    sra     $s3,$v0,0x8
    addu    $v1,$s7,$t1
    addu    $v0,$v1,$t3
    addiu   $v0,$v0,255
    sra     $s6,$v0,0x8
    sra     $a0,$a0,0x8
    sll     $t9,$a0,0x8
    subu    $s8,$s8,$t9
    subu    $s3,$s3,$a0
    sra     $s2,$v1,0x8
    sll     $t7,$s2,0x8
    subu    $s6,$s6,$s2
    blez    $s6,.LFUN_8004dd8c_2a4
    subu    $t1,$t1,$t7
    sll     $v0,$s6,0x8
    subu    $v0,$v0,$t1
    sw      $v0,60($sp)
    sll     $v0,$s3,0x8
    subu    $v0,$v0,$s8
    sw      $v0,64($sp)
    addu    $s2,$zero,$zero
.LFUN_8004dd8c_e8:
    addu    $a0,$s2,$zero
    negu    $s1,$s7
    bne     $s4,$zero,.LFUN_8004dd8c_104
    addu    $v1,$s2,$zero
    addu    $s2,$t1,$zero
    addu    $s1,$zero,$zero
    negu    $v1,$s7
.LFUN_8004dd8c_104:
    addiu   $v0,$s6,-1
    bne     $s4,$v0,.LFUN_8004dd8c_12c
    addiu   $t4,$zero,1
    lw      $t4,60($sp)
    lw      $t3,56($sp)
    sll     $zero,$zero,0x0
    subu    $a0,$t4,$t3
    negu    $s1,$s7
    addu    $v1,$s7,$zero
    addiu   $t4,$zero,1
.LFUN_8004dd8c_12c:
    bne     $s6,$t4,.LFUN_8004dd8c_13c
    sll     $zero,$zero,0x0
    addu    $s1,$zero,$zero
    addu    $v1,$s1,$zero
.LFUN_8004dd8c_13c:
    blez    $s3,.LFUN_8004dd8c_294
    addu    $s0,$zero,$zero
    lw      $t3,176($sp)
    sll     $zero,$zero,0x0
    addu    $v0,$t3,$s1
    sll     $t0,$s4,0x8
    addu    $v0,$v0,$t0
    subu    $v0,$v0,$t1
    addu    $v0,$v0,$s2
    sw      $v0,112($sp)
    addiu   $t4,$zero,256
    subu    $v0,$t4,$a0
    subu    $v0,$v0,$s2
    addu    $v0,$v0,$v1
    sw      $v0,108($sp)
    addu    $a0,$zero,$zero
.LFUN_8004dd8c_17c:
    addu    $a3,$a0,$zero
    negu    $a1,$s5
    bne     $s0,$zero,.LFUN_8004dd8c_198
    addu    $a2,$a0,$zero
    addu    $a0,$s8,$zero
    addu    $a1,$zero,$zero
    negu    $a2,$s5
.LFUN_8004dd8c_198:
    addiu   $v0,$s3,-1
    bne     $s0,$v0,.LFUN_8004dd8c_1b8
    addiu   $t4,$zero,1
    lw      $t3,64($sp)
    sll     $zero,$zero,0x0
    subu    $a3,$t3,$t6
    negu    $a1,$s5
    addu    $a2,$s5,$zero
.LFUN_8004dd8c_1b8:
    bne     $s3,$t4,.LFUN_8004dd8c_1c8
    sll     $zero,$zero,0x0
    addu    $a1,$zero,$zero
    addu    $a2,$a1,$zero
.LFUN_8004dd8c_1c8:
    lw      $t3,172($sp)
    lw      $t4,112($sp)
    sll     $v1,$s0,0x8
    sw      $t5,16($sp)
    sw      $t5,20($sp)
    sw      $t8,32($sp)
    sw      $t0,72($sp)
    sw      $t1,76($sp)
    sw      $t5,88($sp)
    sw      $t6,92($sp)
    sw      $t7,96($sp)
    sw      $t8,100($sp)
    sw      $t9,104($sp)
    addu    $v0,$t3,$a1
    addu    $v0,$v0,$v1
    subu    $v0,$v0,$s8
    addu    $v0,$v0,$a0
    sw      $v0,24($sp)
    addu    $v0,$a1,$t9
    addu    $v0,$v0,$v1
    addu    $v0,$v0,$a0
    sw      $v0,36($sp)
    addu    $v0,$s1,$t7
    addu    $v0,$v0,$t0
    addu    $v0,$v0,$s2
    addiu   $t3,$zero,256
    sw      $v0,40($sp)
    subu    $v0,$t3,$a3
    subu    $v0,$v0,$a0
    addu    $v0,$v0,$a2
    addu    $a0,$t2,$zero
    addiu   $a2,$zero,-1
    sw      $t4,28($sp)
    lw      $t4,108($sp)
    lw      $a1,164($sp)
    addu    $a3,$t5,$zero
    sw      $v0,44($sp)
    jal     sym_8004d648
    sw      $t4,48($sp)
    addu    $t2,$v0,$zero
    addiu   $s0,$s0,1
    slt     $v0,$s0,$s3
    lw      $t0,72($sp)
    lw      $t1,76($sp)
    lw      $t5,88($sp)
    lw      $t6,92($sp)
    lw      $t7,96($sp)
    lw      $t8,100($sp)
    lw      $t9,104($sp)
    bne     $v0,$zero,.LFUN_8004dd8c_17c
    addu    $a0,$zero,$zero
.LFUN_8004dd8c_294:
    addiu   $s4,$s4,1
    slt     $v0,$s4,$s6
    bne     $v0,$zero,.LFUN_8004dd8c_e8
    addu    $s2,$zero,$zero
.LFUN_8004dd8c_2a4:
    lw      $ra,156($sp)
    lw      $s8,152($sp)
    lw      $s7,148($sp)
    lw      $s6,144($sp)
    lw      $s5,140($sp)
    lw      $s4,136($sp)
    lw      $s3,132($sp)
    lw      $s2,128($sp)
    lw      $s1,124($sp)
    lw      $s0,120($sp)
    addu    $v0,$t2,$zero
    jr      $ra
    addiu   $sp,$sp,160
    .end FUN_8004dd8c
    .size FUN_8004dd8c, . - FUN_8004dd8c

/* FUN_8004e820 (0x8004e820, 112 bytes) */
    .section .text.FUN_8004e820,"ax",@progbits
    .globl FUN_8004e820
    .globl sym_8004ee70
    .globl sym_8004eeb0
    .globl sym_8003b218
    .type FUN_8004e820, @function
    .ent FUN_8004e820
FUN_8004e820:
    addiu   $sp,$sp,-32
    sw      $s2,24($sp)
    addu    $s2,$a0,$zero
    sw      $s1,20($sp)
    addu    $s1,$a1,$zero
    addu    $a0,$a2,$zero
    addu    $a1,$a3,$zero
    lw      $a2,48($sp)
    lw      $a3,52($sp)
    sw      $s0,16($sp)
    lw      $s0,56($sp)
    sw      $ra,28($sp)
    jal     sym_8004ee70
    sll     $zero,$zero,0x0
    addu    $a0,$s1,$zero
    addu    $a1,$zero,$zero
    addu    $a2,$s0,$zero
    jal     sym_8004eeb0
    andi    $a3,$v0,0xffff
    addu    $a0,$s2,$zero
    jal     sym_8003b218
    addu    $a1,$s1,$zero
    lw      $ra,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end FUN_8004e820
    .size FUN_8004e820, . - FUN_8004e820

/* FUN_8004f920 (0x8004f920, 288 bytes) */
    .section .text.FUN_8004f920,"ax",@progbits
    .globl FUN_8004f920
    .type FUN_8004f920, @function
    .ent FUN_8004f920
FUN_8004f920:
    lui     $v1,0x800e
    lw      $a1,22064($v1)
    sll     $zero,$zero,0x0
    addiu   $v0,$a1,32
    sw      $v0,22064($v1)
    addiu   $v0,$zero,7
    sb      $v0,3($a1)
    lw      $v0,20($a0)
    sll     $zero,$zero,0x0
    sw      $v0,4($a1)
    lhu     $v0,24($a0)
    sll     $zero,$zero,0x0
    sh      $v0,14($a1)
    lhu     $v0,26($a0)
    sll     $zero,$zero,0x0
    sh      $v0,22($a1)
    lhu     $v0,0($a0)
    sll     $zero,$zero,0x0
    sh      $v0,8($a1)
    lhu     $v0,2($a0)
    sll     $zero,$zero,0x0
    sh      $v0,10($a1)
    lhu     $v0,4($a0)
    sll     $zero,$zero,0x0
    sh      $v0,16($a1)
    lhu     $v0,6($a0)
    sll     $zero,$zero,0x0
    sh      $v0,18($a1)
    lhu     $v0,8($a0)
    sll     $zero,$zero,0x0
    sh      $v0,24($a1)
    lhu     $v0,10($a0)
    sll     $zero,$zero,0x0
    sh      $v0,26($a1)
    lbu     $v0,12($a0)
    sll     $zero,$zero,0x0
    sb      $v0,12($a1)
    lbu     $v0,13($a0)
    sll     $zero,$zero,0x0
    sb      $v0,13($a1)
    lbu     $v0,14($a0)
    lui     $a2,0xff
    sb      $v0,20($a1)
    lbu     $v0,15($a0)
    ori     $a2,$a2,0xffff
    sb      $v0,21($a1)
    lbu     $v0,16($a0)
    lui     $a3,0xff00
    sb      $v0,28($a1)
    lbu     $v0,17($a0)
    lui     $v1,0x800e
    sb      $v0,29($a1)
    lh      $v0,28($a0)
    lw      $t0,10984($v1)
    lw      $v1,0($a1)
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$t0
    lw      $v0,0($v0)
    and     $v1,$v1,$a3
    and     $v0,$v0,$a2
    or      $v1,$v1,$v0
    sw      $v1,0($a1)
    lh      $v1,28($a0)
    sll     $zero,$zero,0x0
    sll     $v1,$v1,0x2
    addu    $v1,$v1,$t0
    lw      $v0,0($v1)
    and     $a1,$a1,$a2
    and     $v0,$v0,$a3
    or      $v0,$v0,$a1
    jr      $ra
    sw      $v0,0($v1)
    .end FUN_8004f920
    .size FUN_8004f920, . - FUN_8004f920

/* FUN_8004fbd4 (0x8004fbd4, 920 bytes) */
    .section .text.FUN_8004fbd4,"ax",@progbits
    .globl FUN_8004fbd4
    .type FUN_8004fbd4, @function
    .ent FUN_8004fbd4
FUN_8004fbd4:
    lui     $v1,0x800e
    lw      $a3,22064($v1)
    addu    $t0,$a0,$zero
    addiu   $v0,$a3,40
    sw      $v0,22064($v1)
    addiu   $v0,$zero,9
    sb      $v0,3($a3)
    lw      $v0,16($t0)
    sll     $zero,$zero,0x0
    sw      $v0,4($a3)
    lhu     $v0,20($t0)
    sll     $zero,$zero,0x0
    sh      $v0,14($a3)
    lhu     $v0,22($t0)
    sll     $zero,$zero,0x0
    sh      $v0,22($a3)
    lhu     $v0,0($t0)
    sll     $zero,$zero,0x0
    sh      $v0,8($a3)
    lhu     $v0,2($t0)
    sll     $zero,$zero,0x0
    sh      $v0,10($a3)
    lhu     $v0,0($t0)
    lhu     $v1,4($t0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    sh      $v0,16($a3)
    lhu     $v0,2($t0)
    sll     $zero,$zero,0x0
    sh      $v0,18($a3)
    lhu     $v0,0($t0)
    sll     $zero,$zero,0x0
    sh      $v0,24($a3)
    lhu     $v0,2($t0)
    lhu     $v1,6($t0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    sh      $v0,26($a3)
    lhu     $v0,0($t0)
    lhu     $v1,4($t0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    sh      $v0,32($a3)
    lhu     $v0,2($t0)
    lhu     $v1,6($t0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    sh      $v0,34($a3)
    addiu   $v0,$zero,1
    beq     $a1,$v0,.LFUN_8004fbd4_198
    sll     $zero,$zero,0x0
    slti    $v0,$a1,2
    beq     $v0,$zero,.LFUN_8004fbd4_e8
    sll     $zero,$zero,0x0
    beq     $a1,$zero,.LFUN_8004fbd4_108
    lui     $a0,0xff
    j       .LFUN_8004fbd4_340
    ori     $a0,$a0,0xffff
.LFUN_8004fbd4_e8:
    addiu   $v0,$zero,2
    beq     $a1,$v0,.LFUN_8004fbd4_224
    sll     $zero,$zero,0x0
    addiu   $v0,$zero,3
    beq     $a1,$v0,.LFUN_8004fbd4_2a8
    lui     $a0,0xff
    j       .LFUN_8004fbd4_340
    ori     $a0,$a0,0xffff
.LFUN_8004fbd4_108:
    lbu     $v0,8($t0)
    sll     $zero,$zero,0x0
    sb      $v0,12($a3)
    lbu     $v0,10($t0)
    sll     $zero,$zero,0x0
    sb      $v0,13($a3)
    lbu     $v0,8($t0)
    lbu     $v1,12($t0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    addiu   $v0,$v0,-1
    sb      $v0,20($a3)
    lbu     $v0,10($t0)
    sll     $zero,$zero,0x0
    sb      $v0,21($a3)
    lbu     $v0,8($t0)
    sll     $zero,$zero,0x0
    sb      $v0,28($a3)
    lbu     $v0,10($t0)
    lbu     $v1,14($t0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    addiu   $v0,$v0,-1
    sb      $v0,29($a3)
    lbu     $v0,8($t0)
    lbu     $v1,12($t0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    addiu   $v0,$v0,-1
    sb      $v0,36($a3)
    lbu     $v0,10($t0)
    lbu     $v1,14($t0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    j       .LFUN_8004fbd4_330
    addiu   $v0,$v0,-1
.LFUN_8004fbd4_198:
    lbu     $v0,8($t0)
    lbu     $v1,12($t0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    sb      $v0,12($a3)
    lbu     $v0,10($t0)
    sll     $zero,$zero,0x0
    sb      $v0,13($a3)
    lbu     $v0,8($t0)
    sll     $zero,$zero,0x0
    sb      $v0,20($a3)
    lbu     $v0,10($t0)
    sll     $zero,$zero,0x0
    sb      $v0,21($a3)
    lbu     $v0,8($t0)
    lbu     $v1,12($t0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    addiu   $v0,$v0,-1
    sb      $v0,28($a3)
    lbu     $v0,10($t0)
    lbu     $v1,14($t0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    addiu   $v0,$v0,-1
    sb      $v0,29($a3)
    lbu     $v0,8($t0)
    sll     $zero,$zero,0x0
    sb      $v0,36($a3)
    lbu     $v0,10($t0)
    lbu     $v1,14($t0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    j       .LFUN_8004fbd4_330
    addiu   $v0,$v0,-1
.LFUN_8004fbd4_224:
    lbu     $v0,8($t0)
    sll     $zero,$zero,0x0
    sb      $v0,12($a3)
    lbu     $v0,10($t0)
    lbu     $v1,14($t0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    addiu   $v0,$v0,-1
    sb      $v0,13($a3)
    lbu     $v0,8($t0)
    lbu     $v1,12($t0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    addiu   $v0,$v0,-1
    sb      $v0,20($a3)
    lbu     $v0,10($t0)
    lbu     $v1,14($t0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    addiu   $v0,$v0,-1
    sb      $v0,21($a3)
    lbu     $v0,8($t0)
    sll     $zero,$zero,0x0
    sb      $v0,28($a3)
    lbu     $v0,10($t0)
    sll     $zero,$zero,0x0
    sb      $v0,29($a3)
    lbu     $v0,8($t0)
    lbu     $v1,12($t0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    j       .LFUN_8004fbd4_324
    addiu   $v0,$v0,-1
.LFUN_8004fbd4_2a8:
    lbu     $v0,8($t0)
    lbu     $v1,12($t0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    addiu   $v0,$v0,-1
    sb      $v0,12($a3)
    lbu     $v0,10($t0)
    lbu     $v1,14($t0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    addiu   $v0,$v0,-1
    sb      $v0,13($a3)
    lbu     $v0,8($t0)
    sll     $zero,$zero,0x0
    sb      $v0,20($a3)
    lbu     $v0,10($t0)
    lbu     $v1,14($t0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    addiu   $v0,$v0,-1
    sb      $v0,21($a3)
    lbu     $v0,8($t0)
    lbu     $v1,12($t0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    addiu   $v0,$v0,-1
    sb      $v0,28($a3)
    lbu     $v0,10($t0)
    sll     $zero,$zero,0x0
    sb      $v0,29($a3)
    lbu     $v0,8($t0)
.LFUN_8004fbd4_324:
    sll     $zero,$zero,0x0
    sb      $v0,36($a3)
    lbu     $v0,10($t0)
.LFUN_8004fbd4_330:
    sll     $zero,$zero,0x0
    sb      $v0,37($a3)
    lui     $a0,0xff
    ori     $a0,$a0,0xffff
.LFUN_8004fbd4_340:
    lui     $v1,0x800e
    lui     $a1,0xff00
    lw      $v0,24($t0)
    lw      $a2,10984($v1)
    lw      $v1,0($a3)
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a2
    lw      $v0,0($v0)
    and     $v1,$v1,$a1
    and     $v0,$v0,$a0
    or      $v1,$v1,$v0
    sw      $v1,0($a3)
    lw      $v1,24($t0)
    sll     $zero,$zero,0x0
    sll     $v1,$v1,0x2
    addu    $v1,$v1,$a2
    lw      $v0,0($v1)
    and     $a0,$a3,$a0
    and     $v0,$v0,$a1
    or      $v0,$v0,$a0
    jr      $ra
    sw      $v0,0($v1)
    .end FUN_8004fbd4
    .size FUN_8004fbd4, . - FUN_8004fbd4

/* FUN_8004ff6c (0x8004ff6c, 336 bytes) */
    .section .text.FUN_8004ff6c,"ax",@progbits
    .globl FUN_8004ff6c
    .type FUN_8004ff6c, @function
    .ent FUN_8004ff6c
FUN_8004ff6c:
    lui     $v1,0x800e
    lw      $a1,22064($v1)
    sll     $zero,$zero,0x0
    addiu   $v0,$a1,40
    sw      $v0,22064($v1)
    addiu   $v0,$zero,9
    sb      $v0,3($a1)
    lw      $v0,24($a0)
    sll     $zero,$zero,0x0
    sw      $v0,4($a1)
    lhu     $v0,28($a0)
    sll     $zero,$zero,0x0
    sh      $v0,14($a1)
    lhu     $v0,30($a0)
    sll     $zero,$zero,0x0
    sh      $v0,22($a1)
    lhu     $v0,0($a0)
    sll     $zero,$zero,0x0
    sh      $v0,8($a1)
    lhu     $v0,2($a0)
    sll     $zero,$zero,0x0
    sh      $v0,10($a1)
    lhu     $v0,4($a0)
    sll     $zero,$zero,0x0
    sh      $v0,16($a1)
    lhu     $v0,6($a0)
    sll     $zero,$zero,0x0
    sh      $v0,18($a1)
    lhu     $v0,8($a0)
    sll     $zero,$zero,0x0
    sh      $v0,24($a1)
    lhu     $v0,10($a0)
    sll     $zero,$zero,0x0
    sh      $v0,26($a1)
    lhu     $v0,12($a0)
    sll     $zero,$zero,0x0
    sh      $v0,32($a1)
    lhu     $v0,14($a0)
    sll     $zero,$zero,0x0
    sh      $v0,34($a1)
    lbu     $v0,16($a0)
    sll     $zero,$zero,0x0
    sb      $v0,12($a1)
    lbu     $v0,17($a0)
    sll     $zero,$zero,0x0
    sb      $v0,13($a1)
    lbu     $v0,18($a0)
    sll     $zero,$zero,0x0
    sb      $v0,20($a1)
    lbu     $v0,19($a0)
    sll     $zero,$zero,0x0
    sb      $v0,21($a1)
    lbu     $v0,20($a0)
    lui     $a2,0xff
    sb      $v0,28($a1)
    lbu     $v0,21($a0)
    ori     $a2,$a2,0xffff
    sb      $v0,29($a1)
    lbu     $v0,22($a0)
    lui     $a3,0xff00
    sb      $v0,36($a1)
    lbu     $v0,23($a0)
    lui     $v1,0x800e
    sb      $v0,37($a1)
    lw      $v0,32($a0)
    lw      $t0,10984($v1)
    lw      $v1,0($a1)
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$t0
    lw      $v0,0($v0)
    and     $v1,$v1,$a3
    and     $v0,$v0,$a2
    or      $v1,$v1,$v0
    sw      $v1,0($a1)
    lw      $v1,32($a0)
    sll     $zero,$zero,0x0
    sll     $v1,$v1,0x2
    addu    $v1,$v1,$t0
    lw      $v0,0($v1)
    and     $a1,$a1,$a2
    and     $v0,$v0,$a3
    or      $v0,$v0,$a1
    jr      $ra
    sw      $v0,0($v1)
    .end FUN_8004ff6c
    .size FUN_8004ff6c, . - FUN_8004ff6c

/* FUN_800500bc (0x800500bc, 836 bytes) */
    .section .text.FUN_800500bc,"ax",@progbits
    .globl FUN_800500bc
    .globl sym_80037478
    .globl sym_80036648
    .globl sym_8005383c
    .globl sym_80037848
    .globl sym_8005391c
    .globl sym_800377e8
    .globl sym_8005386c
    .globl sym_8003751c
    .type FUN_800500bc, @function
    .ent FUN_800500bc
FUN_800500bc:
    addiu   $sp,$sp,-160
    sw      $s0,144($sp)
    addu    $s0,$a0,$zero
    sw      $ra,152($sp)
    jal     sym_80037478
    sw      $s1,148($sp)
    lh      $a0,24($s0)
    lh      $a1,26($s0)
    jal     sym_80036648
    sll     $zero,$zero,0x0
    addiu   $s1,$sp,96
    addu    $a0,$s1,$zero
    sw      $zero,80($sp)
    sw      $zero,84($sp)
    lw      $v0,52($s0)
    addiu   $a1,$sp,80
    addiu   $v0,$v0,4096
    jal     sym_8005383c
    sw      $v0,88($sp)
    jal     sym_80037848
    addu    $a0,$s1,$zero
    addu    $a0,$s0,$zero
    jal     sym_8005391c
    addu    $a1,$s1,$zero
    jal     sym_800377e8
    addu    $a0,$s1,$zero
    lhu     $v0,28($s0)
    sll     $zero,$zero,0x0
    sll     $v0,$v0,0x10
    sra     $v1,$v0,0x10
    srl     $v0,$v0,0x1f
    addu    $v1,$v1,$v0
    lhu     $v0,8($s0)
    sra     $v1,$v1,0x1
    subu    $v0,$v0,$v1
    sh      $v0,48($sp)
    lhu     $v0,30($s0)
    sll     $zero,$zero,0x0
    sll     $v0,$v0,0x10
    sra     $v1,$v0,0x10
    srl     $v0,$v0,0x1f
    addu    $v1,$v1,$v0
    lhu     $v0,12($s0)
    sra     $v1,$v1,0x1
    subu    $v0,$v0,$v1
    sh      $v0,50($sp)
    lhu     $v0,16($s0)
    sll     $zero,$zero,0x0
    sh      $v0,52($sp)
    lhu     $v0,28($s0)
    sll     $zero,$zero,0x0
    sll     $v0,$v0,0x10
    sra     $v1,$v0,0x10
    srl     $v0,$v0,0x1f
    addu    $v1,$v1,$v0
    lhu     $v0,8($s0)
    sra     $v1,$v1,0x1
    addu    $v0,$v0,$v1
    sh      $v0,56($sp)
    lhu     $v0,30($s0)
    sll     $zero,$zero,0x0
    sll     $v0,$v0,0x10
    sra     $v1,$v0,0x10
    srl     $v0,$v0,0x1f
    addu    $v1,$v1,$v0
    lhu     $v0,12($s0)
    sra     $v1,$v1,0x1
    subu    $v0,$v0,$v1
    sh      $v0,58($sp)
    lhu     $v0,16($s0)
    sll     $zero,$zero,0x0
    sh      $v0,60($sp)
    lhu     $v0,28($s0)
    sll     $zero,$zero,0x0
    sll     $v0,$v0,0x10
    sra     $v1,$v0,0x10
    srl     $v0,$v0,0x1f
    addu    $v1,$v1,$v0
    lhu     $v0,8($s0)
    sra     $v1,$v1,0x1
    subu    $v0,$v0,$v1
    sh      $v0,64($sp)
    lhu     $v0,30($s0)
    sll     $zero,$zero,0x0
    sll     $v0,$v0,0x10
    sra     $v1,$v0,0x10
    srl     $v0,$v0,0x1f
    addu    $v1,$v1,$v0
    lhu     $v0,12($s0)
    sra     $v1,$v1,0x1
    addu    $v0,$v0,$v1
    sh      $v0,66($sp)
    lhu     $v0,16($s0)
    sll     $zero,$zero,0x0
    sh      $v0,68($sp)
    lhu     $v0,28($s0)
    sll     $zero,$zero,0x0
    sll     $v0,$v0,0x10
    sra     $v1,$v0,0x10
    srl     $v0,$v0,0x1f
    addu    $v1,$v1,$v0
    lhu     $v0,8($s0)
    sra     $v1,$v1,0x1
    addu    $v0,$v0,$v1
    sh      $v0,72($sp)
    lhu     $v0,30($s0)
    sll     $zero,$zero,0x0
    sll     $v0,$v0,0x10
    sra     $v1,$v0,0x10
    srl     $v0,$v0,0x1f
    addu    $v1,$v1,$v0
    lhu     $v0,12($s0)
    sra     $v1,$v1,0x1
    addu    $v0,$v0,$v1
    lui     $v1,0x800e
    sh      $v0,74($sp)
    lhu     $v0,16($s0)
    lw      $s1,22064($v1)
    addiu   $a0,$sp,48
    sh      $v0,76($sp)
    addiu   $v0,$s1,40
    sw      $v0,22064($v1)
    addiu   $v0,$zero,9
    sb      $v0,3($s1)
    lw      $v0,40($s0)
    addiu   $a1,$sp,56
    sw      $v0,4($s1)
    lhu     $v0,44($s0)
    addiu   $a2,$sp,64
    sh      $v0,14($s1)
    lhu     $v0,46($s0)
    addiu   $a3,$sp,72
    sh      $v0,22($s1)
    addiu   $v0,$s1,8
    sw      $v0,16($sp)
    addiu   $v0,$s1,16
    sw      $v0,20($sp)
    addiu   $v0,$s1,24
    sw      $v0,24($sp)
    addiu   $v0,$s1,32
    sw      $v0,28($sp)
    addiu   $v0,$sp,128
    sw      $v0,32($sp)
    addiu   $v0,$sp,132
    sw      $v0,36($sp)
    addiu   $v0,$sp,136
    jal     sym_8005386c
    sw      $v0,40($sp)
    lbu     $v0,32($s0)
    sll     $zero,$zero,0x0
    sb      $v0,12($s1)
    lbu     $v0,34($s0)
    sll     $zero,$zero,0x0
    sb      $v0,13($s1)
    lbu     $v0,32($s0)
    lbu     $v1,36($s0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    sb      $v0,20($s1)
    lbu     $v0,34($s0)
    sll     $zero,$zero,0x0
    sb      $v0,21($s1)
    lbu     $v0,32($s0)
    sll     $zero,$zero,0x0
    sb      $v0,28($s1)
    lbu     $v0,34($s0)
    lbu     $v1,38($s0)
    lui     $a0,0xff
    addu    $v0,$v0,$v1
    sb      $v0,29($s1)
    lbu     $v0,32($s0)
    lbu     $v1,36($s0)
    ori     $a0,$a0,0xffff
    addu    $v0,$v0,$v1
    sb      $v0,36($s1)
    lbu     $v0,34($s0)
    lbu     $v1,38($s0)
    lui     $a1,0xff00
    addu    $v0,$v0,$v1
    lui     $v1,0x800e
    sb      $v0,37($s1)
    lw      $v0,48($s0)
    lw      $a2,10984($v1)
    lw      $v1,0($s1)
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a2
    lw      $v0,0($v0)
    and     $v1,$v1,$a1
    and     $v0,$v0,$a0
    or      $v1,$v1,$v0
    sw      $v1,0($s1)
    lw      $v1,48($s0)
    sll     $zero,$zero,0x0
    sll     $v1,$v1,0x2
    addu    $v1,$v1,$a2
    lw      $v0,0($v1)
    and     $s1,$s1,$a0
    and     $v0,$v0,$a1
    or      $v0,$v0,$s1
    jal     sym_8003751c
    sw      $v0,0($v1)
    addiu   $a0,$zero,160
    jal     sym_80036648
    addiu   $a1,$zero,120
    lw      $ra,152($sp)
    lw      $s1,148($sp)
    lw      $s0,144($sp)
    jr      $ra
    addiu   $sp,$sp,160
    .end FUN_800500bc
    .size FUN_800500bc, . - FUN_800500bc

/* FUN_80050400 (0x80050400, 440 bytes) */
    .section .text.FUN_80050400,"ax",@progbits
    .globl FUN_80050400
    .type FUN_80050400, @function
    .ent FUN_80050400
FUN_80050400:
    lui     $v1,0x800e
    lw      $a1,22064($v1)
    sll     $zero,$zero,0x0
    addiu   $v0,$a1,52
    sw      $v0,22064($v1)
    addiu   $v0,$zero,12
    sb      $v0,3($a1)
    lw      $v0,16($a0)
    sll     $zero,$zero,0x0
    sw      $v0,4($a1)
    lw      $v0,20($a0)
    sll     $zero,$zero,0x0
    sw      $v0,16($a1)
    lw      $v0,24($a0)
    sll     $zero,$zero,0x0
    sw      $v0,28($a1)
    lw      $v0,28($a0)
    sll     $zero,$zero,0x0
    sw      $v0,40($a1)
    lhu     $v0,32($a0)
    sll     $zero,$zero,0x0
    sh      $v0,14($a1)
    lhu     $v0,34($a0)
    sll     $zero,$zero,0x0
    sh      $v0,26($a1)
    lhu     $v0,0($a0)
    sll     $zero,$zero,0x0
    sh      $v0,8($a1)
    lhu     $v0,2($a0)
    sll     $zero,$zero,0x0
    sh      $v0,10($a1)
    lhu     $v0,0($a0)
    lhu     $v1,4($a0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    sh      $v0,20($a1)
    lhu     $v0,2($a0)
    sll     $zero,$zero,0x0
    sh      $v0,22($a1)
    lhu     $v0,0($a0)
    sll     $zero,$zero,0x0
    sh      $v0,32($a1)
    lhu     $v0,2($a0)
    lhu     $v1,6($a0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    sh      $v0,34($a1)
    lhu     $v0,0($a0)
    lhu     $v1,4($a0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    sh      $v0,44($a1)
    lhu     $v0,2($a0)
    lhu     $v1,6($a0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    sh      $v0,46($a1)
    lbu     $v0,8($a0)
    sll     $zero,$zero,0x0
    sb      $v0,12($a1)
    lbu     $v0,10($a0)
    sll     $zero,$zero,0x0
    sb      $v0,13($a1)
    lbu     $v0,8($a0)
    lbu     $v1,12($a0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    sb      $v0,24($a1)
    lbu     $v0,10($a0)
    sll     $zero,$zero,0x0
    sb      $v0,25($a1)
    lbu     $v0,8($a0)
    sll     $zero,$zero,0x0
    sb      $v0,36($a1)
    lbu     $v0,10($a0)
    lbu     $v1,14($a0)
    lui     $a2,0xff
    addu    $v0,$v0,$v1
    sb      $v0,37($a1)
    lbu     $v0,8($a0)
    lbu     $v1,12($a0)
    ori     $a2,$a2,0xffff
    addu    $v0,$v0,$v1
    sb      $v0,48($a1)
    lbu     $v0,10($a0)
    lbu     $v1,14($a0)
    lui     $a3,0xff00
    addu    $v0,$v0,$v1
    lui     $v1,0x800e
    sb      $v0,49($a1)
    lw      $v0,36($a0)
    lw      $t0,10984($v1)
    lw      $v1,0($a1)
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$t0
    lw      $v0,0($v0)
    and     $v1,$v1,$a3
    and     $v0,$v0,$a2
    or      $v1,$v1,$v0
    sw      $v1,0($a1)
    lw      $v1,36($a0)
    sll     $zero,$zero,0x0
    sll     $v1,$v1,0x2
    addu    $v1,$v1,$t0
    lw      $v0,0($v1)
    and     $a1,$a1,$a2
    and     $v0,$v0,$a3
    or      $v0,$v0,$a1
    jr      $ra
    sw      $v0,0($v1)
    .end FUN_80050400
    .size FUN_80050400, . - FUN_80050400

/* FUN_8005072c (0x8005072c, 312 bytes) */
    .section .text.FUN_8005072c,"ax",@progbits
    .globl FUN_8005072c
    .type FUN_8005072c, @function
    .ent FUN_8005072c
FUN_8005072c:
    lui     $v1,0x800e
    lw      $a1,22064($v1)
    sll     $zero,$zero,0x0
    addiu   $v0,$a1,40
    sw      $v0,22064($v1)
    addiu   $v0,$zero,9
    sb      $v0,3($a1)
    lw      $v0,24($a0)
    sll     $zero,$zero,0x0
    sw      $v0,4($a1)
    lw      $v0,28($a0)
    sll     $zero,$zero,0x0
    sw      $v0,16($a1)
    lw      $v0,32($a0)
    sll     $zero,$zero,0x0
    sw      $v0,28($a1)
    lhu     $v0,36($a0)
    sll     $zero,$zero,0x0
    sh      $v0,14($a1)
    lhu     $v0,38($a0)
    sll     $zero,$zero,0x0
    sh      $v0,26($a1)
    lhu     $v0,0($a0)
    sll     $zero,$zero,0x0
    sh      $v0,8($a1)
    lhu     $v0,2($a0)
    sll     $zero,$zero,0x0
    sh      $v0,10($a1)
    lhu     $v0,4($a0)
    sll     $zero,$zero,0x0
    sh      $v0,20($a1)
    lhu     $v0,6($a0)
    sll     $zero,$zero,0x0
    sh      $v0,22($a1)
    lhu     $v0,8($a0)
    sll     $zero,$zero,0x0
    sh      $v0,32($a1)
    lhu     $v0,10($a0)
    sll     $zero,$zero,0x0
    sh      $v0,34($a1)
    lbu     $v0,12($a0)
    sll     $zero,$zero,0x0
    sb      $v0,12($a1)
    lbu     $v0,14($a0)
    sll     $zero,$zero,0x0
    sb      $v0,13($a1)
    lbu     $v0,16($a0)
    lui     $a2,0xff
    sb      $v0,24($a1)
    lbu     $v0,18($a0)
    ori     $a2,$a2,0xffff
    sb      $v0,25($a1)
    lbu     $v0,20($a0)
    lui     $a3,0xff00
    sb      $v0,36($a1)
    lbu     $v0,22($a0)
    lui     $v1,0x800e
    sb      $v0,37($a1)
    lw      $v0,40($a0)
    lw      $t0,10984($v1)
    lw      $v1,0($a1)
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$t0
    lw      $v0,0($v0)
    and     $v1,$v1,$a3
    and     $v0,$v0,$a2
    or      $v1,$v1,$v0
    sw      $v1,0($a1)
    lw      $v1,40($a0)
    sll     $zero,$zero,0x0
    sll     $v1,$v1,0x2
    addu    $v1,$v1,$t0
    lw      $v0,0($v1)
    and     $a1,$a1,$a2
    and     $v0,$v0,$a3
    or      $v0,$v0,$a1
    jr      $ra
    sw      $v0,0($v1)
    .end FUN_8005072c
    .size FUN_8005072c, . - FUN_8005072c

/* FUN_80050864 (0x80050864, 312 bytes) */
    .section .text.FUN_80050864,"ax",@progbits
    .globl FUN_80050864
    .type FUN_80050864, @function
    .ent FUN_80050864
FUN_80050864:
    addu    $a2,$a0,$zero
    lui     $t0,0x800e
    lw      $a0,22064($t0)
    sll     $zero,$zero,0x0
    addiu   $v0,$a0,16
    sw      $v0,22064($t0)
    addiu   $v0,$zero,3
    sb      $v0,3($a0)
    lw      $v0,8($a2)
    lw      $v1,0($a0)
    sw      $v0,4($a0)
    lhu     $v0,4($a2)
    lui     $a3,0xff
    sh      $v0,12($a0)
    lhu     $v0,6($a2)
    ori     $a3,$a3,0xffff
    sh      $v0,14($a0)
    lhu     $v0,0($a2)
    lui     $t2,0x800e
    sh      $v0,8($a0)
    lhu     $v0,2($a2)
    lui     $t1,0xff00
    sh      $v0,10($a0)
    lh      $v0,14($a2)
    lw      $a1,10984($t2)
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a1
    lw      $v0,0($v0)
    and     $v1,$v1,$t1
    and     $v0,$v0,$a3
    or      $v1,$v1,$v0
    sw      $v1,0($a0)
    lh      $v1,14($a2)
    sll     $zero,$zero,0x0
    sll     $v1,$v1,0x2
    addu    $v1,$v1,$a1
    lw      $v0,0($v1)
    and     $a0,$a0,$a3
    and     $v0,$v0,$t1
    or      $v0,$v0,$a0
    sw      $v0,0($v1)
    lbu     $v0,11($a2)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x2
    beq     $v0,$zero,.LFUN_80050864_130
    lui     $v1,0xe100
    lw      $a0,22064($t0)
    ori     $v1,$v1,0x200
    addiu   $v0,$a0,8
    sw      $v0,22064($t0)
    addiu   $v0,$zero,1
    sb      $v0,3($a0)
    lhu     $v0,12($a2)
    lw      $a1,10984($t2)
    andi    $v0,$v0,0x3
    sll     $v0,$v0,0x5
    or      $v0,$v0,$v1
    sw      $v0,4($a0)
    lh      $v0,14($a2)
    lw      $v1,0($a0)
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a1
    lw      $v0,0($v0)
    and     $v1,$v1,$t1
    and     $v0,$v0,$a3
    or      $v1,$v1,$v0
    sw      $v1,0($a0)
    lh      $v1,14($a2)
    sll     $zero,$zero,0x0
    sll     $v1,$v1,0x2
    addu    $v1,$v1,$a1
    lw      $v0,0($v1)
    and     $a0,$a0,$a3
    and     $v0,$v0,$t1
    or      $v0,$v0,$a0
    sw      $v0,0($v1)
.LFUN_80050864_130:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_80050864
    .size FUN_80050864, . - FUN_80050864

/* FUN_80050b14 (0x80050b14, 428 bytes) */
    .section .text.FUN_80050b14,"ax",@progbits
    .globl FUN_80050b14
    .type FUN_80050b14, @function
    .ent FUN_80050b14
FUN_80050b14:
    addu    $a2,$a0,$zero
    lui     $t1,0x800e
    lw      $a0,22064($t1)
    sll     $zero,$zero,0x0
    addiu   $v0,$a0,36
    sw      $v0,22064($t1)
    addiu   $v0,$zero,8
    sb      $v0,3($a0)
    lw      $v0,8($a2)
    sll     $zero,$zero,0x0
    sw      $v0,4($a0)
    lw      $v0,12($a2)
    sll     $zero,$zero,0x0
    sw      $v0,12($a0)
    lw      $v0,16($a2)
    sll     $zero,$zero,0x0
    sw      $v0,20($a0)
    lw      $v0,20($a2)
    sll     $zero,$zero,0x0
    sw      $v0,28($a0)
    lhu     $v0,0($a2)
    sll     $zero,$zero,0x0
    sh      $v0,8($a0)
    lhu     $v0,2($a2)
    sll     $zero,$zero,0x0
    sh      $v0,10($a0)
    lhu     $v0,0($a2)
    lhu     $v1,4($a2)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    sh      $v0,16($a0)
    lhu     $v0,2($a2)
    lui     $a3,0xff
    sh      $v0,18($a0)
    lhu     $v0,0($a2)
    ori     $a3,$a3,0xffff
    sh      $v0,24($a0)
    lhu     $v0,2($a2)
    lhu     $v1,6($a2)
    lui     $t2,0x800e
    addu    $v0,$v0,$v1
    sh      $v0,26($a0)
    lhu     $v0,0($a2)
    lhu     $v1,4($a2)
    lui     $t0,0xff00
    addu    $v0,$v0,$v1
    sh      $v0,32($a0)
    lhu     $v0,2($a2)
    lhu     $v1,6($a2)
    lw      $a1,10984($t2)
    addu    $v0,$v0,$v1
    sh      $v0,34($a0)
    lh      $v0,26($a2)
    lw      $v1,0($a0)
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a1
    lw      $v0,0($v0)
    and     $v1,$v1,$t0
    and     $v0,$v0,$a3
    or      $v1,$v1,$v0
    sw      $v1,0($a0)
    lh      $v1,26($a2)
    sll     $zero,$zero,0x0
    sll     $v1,$v1,0x2
    addu    $v1,$v1,$a1
    lw      $v0,0($v1)
    and     $a0,$a0,$a3
    and     $v0,$v0,$t0
    or      $v0,$v0,$a0
    sw      $v0,0($v1)
    lbu     $v0,11($a2)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x2
    beq     $v0,$zero,.LFUN_80050b14_1a4
    lui     $v1,0xe100
    lw      $a0,22064($t1)
    ori     $v1,$v1,0x200
    addiu   $v0,$a0,8
    sw      $v0,22064($t1)
    addiu   $v0,$zero,1
    sb      $v0,3($a0)
    lhu     $v0,24($a2)
    lw      $a1,10984($t2)
    andi    $v0,$v0,0x3
    sll     $v0,$v0,0x5
    or      $v0,$v0,$v1
    sw      $v0,4($a0)
    lh      $v0,26($a2)
    lw      $v1,0($a0)
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a1
    lw      $v0,0($v0)
    and     $v1,$v1,$t0
    and     $v0,$v0,$a3
    or      $v1,$v1,$v0
    sw      $v1,0($a0)
    lh      $v1,26($a2)
    sll     $zero,$zero,0x0
    sll     $v1,$v1,0x2
    addu    $v1,$v1,$a1
    lw      $v0,0($v1)
    and     $a0,$a0,$a3
    and     $v0,$v0,$t0
    or      $v0,$v0,$a0
    sw      $v0,0($v1)
.LFUN_80050b14_1a4:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_80050b14
    .size FUN_80050b14, . - FUN_80050b14

/* FUN_800537bc (0x800537bc, 116 bytes) */
    .section .text.FUN_800537bc,"ax",@progbits
    .globl FUN_800537bc
    .globl FUN_80050864
    .type FUN_800537bc, @function
    .ent FUN_800537bc
FUN_800537bc:
    addiu   $sp,$sp,-40
    lui     $v0,0x800e
    lbu     $a3,-25737($v0)
    lui     $v1,0xff
    sw      $ra,32($sp)
    lhu     $v0,0($a0)
    ori     $v1,$v1,0xffff
    sh      $v0,16($sp)
    lhu     $v0,2($a0)
    and     $a1,$a1,$v1
    sh      $v0,18($sp)
    lhu     $v0,4($a0)
    lui     $v1,0x80
    sh      $v0,20($sp)
    lhu     $v0,6($a0)
    ori     $v1,$v1,0x8080
    bne     $a1,$v1,.LFUN_800537bc_4c
    sh      $v0,22($sp)
    ori     $a3,$a3,0x1
.LFUN_800537bc_4c:
    sll     $v0,$a3,0x18
    or      $a1,$a1,$v0
    addiu   $a0,$sp,16
    sw      $a1,24($sp)
    jal     FUN_80050864
    sh      $a2,30($sp)
    lw      $ra,32($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,40
    .end FUN_800537bc
    .size FUN_800537bc, . - FUN_800537bc

/* FUN_80056a08 (0x80056a08, 76 bytes) */
    .section .text.FUN_80056a08,"ax",@progbits
    .globl FUN_80056a08
    .globl sym_8002ac88
    .globl FUN_8002b230
    .globl sym_8002b1e8
    .globl FUN_8002bc38
    .type FUN_80056a08, @function
    .ent FUN_80056a08
FUN_80056a08:
    addiu   $sp,$sp,-56
    sw      $s0,48($sp)
    addu    $s0,$a1,$zero
    sw      $ra,52($sp)
    jal     sym_8002ac88
    lui     $a1,0x1f80
    jal     FUN_8002b230
    lui     $a0,0x1f80
    jal     sym_8002b1e8
    lui     $a0,0x1f80
    addu    $a0,$s0,$zero
    lui     $a1,0x800e
    addiu   $a1,$a1,15168
    jal     FUN_8002bc38
    addiu   $a2,$zero,1
    lw      $ra,52($sp)
    lw      $s0,48($sp)
    jr      $ra
    addiu   $sp,$sp,56
    .end FUN_80056a08
    .size FUN_80056a08, . - FUN_80056a08

/* FUN_8005b1e4 (0x8005b1e4, 48 bytes) */
    .section .text.FUN_8005b1e4,"ax",@progbits
    .globl FUN_8005b1e4
    .globl sym_80038810
    .globl sym_80038564
    .type FUN_8005b1e4, @function
    .ent FUN_8005b1e4
FUN_8005b1e4:
    lui     $v0,0x8011
    lw      $a1,27556($v0)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_80038810
    sll     $zero,$zero,0x0
    jal     sym_80038564
    addu    $a0,$zero,$zero
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8005b1e4
    .size FUN_8005b1e4, . - FUN_8005b1e4

/* FUN_8005b214 (0x8005b214, 28 bytes) */
    .section .text.FUN_8005b214,"ax",@progbits
    .globl FUN_8005b214
    .type FUN_8005b214, @function
    .ent FUN_8005b214
FUN_8005b214:
    lui     $v0,0x8011
    addiu   $v0,$v0,-7568
    sll     $a0,$a0,0x1
    addu    $a0,$a0,$v0
    lh      $v0,0($a0)
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8005b214
    .size FUN_8005b214, . - FUN_8005b214

/* FUN_8005e504 (0x8005e504, 420 bytes) */
    .section .text.FUN_8005e504,"ax",@progbits
    .globl FUN_8005e504
    .globl sym_8004aa4c
    .globl sym_8004afb8
    .globl sym_8004a16c
    .globl sym_8004ac30
    .globl sym_8004ad78
    .globl sym_8005bed8
    .globl sym_80098880
    .globl sym_8004b02c
    .globl sym_8004b188
    .globl sym_8004b3c0
    .globl sym_8004b21c
    .globl sym_8004abb0
    .globl sym_8004a2e8
    .type FUN_8005e504, @function
    .ent FUN_8005e504
FUN_8005e504:
    addiu   $sp,$sp,-64
    sw      $s4,48($sp)
    addiu   $s4,$zero,128
    addiu   $v0,$zero,22
    sw      $s6,56($sp)
    subu    $s6,$v0,$a0
    sw      $ra,60($sp)
    sw      $s5,52($sp)
    sw      $s3,44($sp)
    sw      $s2,40($sp)
    sw      $s1,36($sp)
    bgez    $s6,.LFUN_8005e504_38
    sw      $s0,32($sp)
    addu    $s6,$zero,$zero
.LFUN_8005e504_38:
    lui     $v0,0x2e8b
    ori     $v0,$v0,0xa2e9
    sll     $v1,$s6,0x7
    mult    $v1,$v0
    addu    $s2,$zero,$zero
    addiu   $a0,$zero,2
    addiu   $a1,$zero,1
    sra     $v1,$v1,0x1f
    mfhi    $t0
    srav    $v0,$t0,$a0
    subu    $v0,$v0,$v1
    jal     sym_8004aa4c
    subu    $s4,$s4,$v0
    addiu   $a0,$zero,2
    jal     sym_8004afb8
    addiu   $a1,$zero,254
    addiu   $v0,$zero,-1
    sw      $v0,16($sp)
    addiu   $a0,$zero,2
    addu    $a1,$v0,$zero
    addu    $a2,$v0,$zero
    jal     sym_8004a16c
    addu    $a3,$v0,$zero
    addiu   $a0,$zero,2
    jal     sym_8004ac30
    addu    $a1,$s2,$zero
    addiu   $a0,$zero,2
    addiu   $a1,$zero,-1
    jal     sym_8004ad78
    addu    $s5,$a0,$zero
    bne     $s6,$zero,.LFUN_8005e504_c4
    addiu   $a0,$zero,2
    jal     sym_8005bed8
    addu    $a1,$s2,$zero
    addu    $s2,$v0,$zero
.LFUN_8005e504_c4:
    jal     sym_80098880
    addiu   $a0,$zero,50
    addu    $s0,$v0,$zero
    addiu   $s1,$zero,-160
    addu    $s3,$zero,$zero
.LFUN_8005e504_d8:
    addu    $a0,$s5,$zero
    addu    $a1,$s2,$zero
    lh      $a2,2($s0)
    lh      $a3,4($s0)
    addiu   $v0,$zero,160
    sw      $v0,16($sp)
    addiu   $v0,$zero,22
    sw      $v0,20($sp)
    lh      $v1,10($s0)
    addiu   $v0,$zero,-1
    sw      $v0,28($sp)
    addu    $a3,$a3,$s3
    jal     sym_8004b02c
    sw      $v1,24($sp)
    addu    $a0,$s5,$zero
    addu    $a1,$s2,$zero
    addu    $a2,$s4,$zero
    addu    $a3,$s4,$zero
    jal     sym_8004b188
    sw      $s4,16($sp)
    addu    $a0,$s5,$zero
    addu    $a1,$s2,$zero
    lh      $a2,14($s0)
    lh      $a3,16($s0)
    jal     sym_8004b3c0
    addiu   $s3,$s3,120
    addu    $a0,$s5,$zero
    addu    $a1,$s2,$zero
    addu    $a2,$s1,$zero
    addiu   $a3,$zero,-120
    jal     sym_8004b21c
    subu    $a3,$a3,$s6
    addiu   $s1,$s1,160
    slti    $v0,$s1,160
    bne     $v0,$zero,.LFUN_8005e504_d8
    addiu   $s2,$s2,1
    addu    $a0,$s5,$zero
    jal     sym_8004abb0
    addu    $a1,$s2,$zero
    jal     sym_8004a2e8
    addu    $a0,$s5,$zero
    lw      $ra,60($sp)
    lw      $s6,56($sp)
    lw      $s5,52($sp)
    lw      $s4,48($sp)
    lw      $s3,44($sp)
    lw      $s2,40($sp)
    lw      $s1,36($sp)
    lw      $s0,32($sp)
    jr      $ra
    addiu   $sp,$sp,64
    .end FUN_8005e504
    .size FUN_8005e504, . - FUN_8005e504

/* FUN_8005ebb4 (0x8005ebb4, 764 bytes) */
    .section .text.FUN_8005ebb4,"ax",@progbits
    .globl FUN_8005ebb4
    .globl sym_800985c8
    .globl sym_80098880
    .globl sym_80043134
    .globl sym_80048e80
    .globl sym_80048d18
    .globl sym_80048c3c
    .globl sym_80048dec
    .globl sym_80048b94
    .globl sym_80049364
    .globl sym_80048144
    .globl sym_80049208
    .globl sym_800490f8
    .globl sym_80048aa8
    .globl sym_80043344
    .type FUN_8005ebb4, @function
    .ent FUN_8005ebb4
FUN_8005ebb4:
    addiu   $sp,$sp,-96
    sw      $a0,96($sp)
    lw      $a0,116($sp)
    sw      $s0,56($sp)
    addu    $s0,$a1,$zero
    sw      $s1,60($sp)
    addu    $s1,$a3,$zero
    sw      $ra,92($sp)
    sw      $s8,88($sp)
    sw      $s7,84($sp)
    sw      $s6,80($sp)
    sw      $s5,76($sp)
    sw      $s4,72($sp)
    sw      $s3,68($sp)
    sw      $s2,64($sp)
    jal     sym_800985c8
    sw      $a2,104($sp)
    jal     sym_80098880
    addu    $a0,$v0,$zero
    addiu   $a1,$zero,15
    lw      $a0,96($sp)
    jal     sym_80043134
    addu    $s4,$v0,$zero
    lw      $a0,96($sp)
    jal     sym_80048e80
    addu    $a1,$s0,$zero
    lh      $v1,8($s4)
    lh      $a1,2($s4)
    lh      $a2,4($s4)
    lh      $a3,6($s4)
    slti    $v0,$v1,241
    beq     $v0,$zero,.LFUN_8005ebb4_8c
    addiu   $v0,$zero,240
    j       .LFUN_8005ebb4_90
    sw      $v1,16($sp)
.LFUN_8005ebb4_8c:
    sw      $v0,16($sp)
.LFUN_8005ebb4_90:
    lw      $a0,96($sp)
    lh      $v0,10($s4)
    jal     sym_80048d18
    sw      $v0,20($sp)
    lw      $a0,96($sp)
    jal     sym_80048c3c
    addiu   $a1,$zero,-1
    lh      $a1,14($s4)
    lh      $a2,16($s4)
    lw      $a0,96($sp)
    jal     sym_80048dec
    addiu   $s2,$zero,64
    lw      $a1,104($sp)
    lw      $a0,96($sp)
    addu    $a2,$a1,$zero
    jal     sym_80048b94
    addu    $a3,$a1,$zero
    lh      $s8,6($s4)
    sll     $zero,$zero,0x0
    addiu   $v0,$s8,63
    div     $zero,$v0,$s2
    mflo    $s3
    lh      $s7,8($s4)
    sll     $zero,$zero,0x0
    addiu   $v0,$s7,63
    div     $zero,$v0,$s2
    mflo    $s2
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    div     $zero,$s8,$s3
    mflo    $s3
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    div     $zero,$s7,$s2
    mflo    $s2
    negu    $v1,$s1
    sll     $zero,$zero,0x0
    div     $zero,$v1,$s8
    mflo    $a0
    lw      $v0,112($sp)
    sll     $zero,$zero,0x0
    negu    $v0,$v0
    div     $zero,$v0,$s7
    mflo    $a1
    addiu   $a0,$a0,-1
    sll     $zero,$zero,0x0
    mult    $a0,$s8
    mflo    $t0
    subu    $v1,$v1,$t0
    sll     $zero,$zero,0x0
    div     $zero,$v1,$s3
    mflo    $t2
    mfhi    $v1
    addiu   $a1,$a1,-1
    sll     $zero,$zero,0x0
    mult    $a1,$s7
    mflo    $t0
    subu    $v0,$v0,$t0
    sll     $zero,$zero,0x0
    div     $zero,$v0,$s2
    mflo    $a0
    mfhi    $v0
    addu    $s5,$zero,$zero
    sw      $t2,40($sp)
    sw      $v1,32($sp)
    sw      $v0,36($sp)
    addiu   $v0,$s2,240
    blez    $v0,.LFUN_8005ebb4_2b4
    addu    $s1,$s5,$zero
    addiu   $t2,$s3,320
    sw      $t2,48($sp)
    mult    $a0,$s2
    mflo    $t2
    sw      $t2,44($sp)
.LFUN_8005ebb4_1b8:
    lw      $t2,48($sp)
    sll     $zero,$zero,0x0
    blez    $t2,.LFUN_8005ebb4_2a0
    addu    $s0,$zero,$zero
    lw      $t2,44($sp)
    sll     $zero,$zero,0x0
    addu    $s6,$s5,$t2
.LFUN_8005ebb4_1d4:
    lw      $a0,96($sp)
    lw      $t2,32($sp)
    addu    $a1,$s1,$zero
    sw      $s3,16($sp)
    sw      $s2,20($sp)
    addiu   $a2,$t2,160
    lw      $t2,36($sp)
    subu    $a2,$s0,$a2
    addiu   $a3,$t2,120
    jal     sym_80049364
    subu    $a3,$s5,$a3
    div     $zero,$s6,$s7
    mfhi    $t1
    lw      $t2,40($sp)
    sll     $zero,$zero,0x0
    mult    $t2,$s3
    mflo    $v1
    addu    $v0,$s0,$v1
    sll     $zero,$zero,0x0
    div     $zero,$v0,$s8
    mfhi    $t0
    lw      $a0,96($sp)
    lh      $a2,2($s4)
    lh      $a3,4($s4)
    addu    $a1,$s1,$zero
    sw      $s3,16($sp)
    sw      $s2,20($sp)
    addiu   $v0,$zero,-1
    lh      $v1,10($s4)
    addu    $s0,$s0,$s3
    sw      $v0,28($sp)
    sw      $v1,24($sp)
    addu    $a3,$a3,$t1
    jal     sym_80048144
    addu    $a2,$a2,$t0
    lw      $a0,96($sp)
    lh      $a2,14($s4)
    lh      $a3,16($s4)
    jal     sym_80049208
    addu    $a1,$s1,$zero
    addu    $a1,$s1,$zero
    lw      $a2,104($sp)
    lw      $a0,96($sp)
    addu    $a3,$a2,$zero
    jal     sym_800490f8
    sw      $a3,16($sp)
    lw      $t2,48($sp)
    sll     $zero,$zero,0x0
    slt     $v0,$s0,$t2
    bne     $v0,$zero,.LFUN_8005ebb4_1d4
    addiu   $s1,$s1,1
.LFUN_8005ebb4_2a0:
    addu    $s5,$s5,$s2
    addiu   $v0,$s2,240
    slt     $v0,$s5,$v0
    bne     $v0,$zero,.LFUN_8005ebb4_1b8
    sll     $zero,$zero,0x0
.LFUN_8005ebb4_2b4:
    lw      $a0,96($sp)
    jal     sym_80048aa8
    addu    $a1,$s1,$zero
    lw      $a0,96($sp)
    jal     sym_80043344
    sll     $zero,$zero,0x0
    lw      $ra,92($sp)
    lw      $s8,88($sp)
    lw      $s7,84($sp)
    lw      $s6,80($sp)
    lw      $s5,76($sp)
    lw      $s4,72($sp)
    lw      $s3,68($sp)
    lw      $s2,64($sp)
    lw      $s1,60($sp)
    lw      $s0,56($sp)
    jr      $ra
    addiu   $sp,$sp,96
    .end FUN_8005ebb4
    .size FUN_8005ebb4, . - FUN_8005ebb4

/* FUN_8005f004 (0x8005f004, 132 bytes) */
    .section .text.FUN_8005f004,"ax",@progbits
    .globl FUN_8005f004
    .globl sym_80056034
    .globl sym_80048f4c
    .type FUN_8005f004, @function
    .ent FUN_8005f004
FUN_8005f004:
    addiu   $sp,$sp,-32
    sw      $ra,28($sp)
    jal     sym_80056034
    sw      $s0,24($sp)
    addu    $a0,$zero,$zero
    addiu   $a1,$zero,9
    addiu   $a2,$zero,22
    addiu   $a3,$zero,302
    addiu   $s0,$zero,182
    jal     sym_80048f4c
    sw      $s0,16($sp)
    addiu   $a0,$zero,1
    addiu   $a1,$zero,9
    addiu   $a2,$zero,22
    addiu   $a3,$zero,302
    jal     sym_80048f4c
    sw      $s0,16($sp)
    addiu   $a0,$zero,3
    addiu   $a1,$zero,9
    addiu   $a2,$zero,22
    addiu   $a3,$zero,302
    jal     sym_80048f4c
    sw      $s0,16($sp)
    addiu   $a0,$zero,4
    addiu   $a1,$zero,9
    addiu   $a2,$zero,22
    addiu   $a3,$zero,302
    jal     sym_80048f4c
    sw      $s0,16($sp)
    lw      $ra,28($sp)
    lw      $s0,24($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end FUN_8005f004
    .size FUN_8005f004, . - FUN_8005f004

/* FUN_8005f298 (0x8005f298, 76 bytes) */
    .section .text.FUN_8005f298,"ax",@progbits
    .globl FUN_8005f298
    .type FUN_8005f298, @function
    .ent FUN_8005f298
FUN_8005f298:
    addu    $a1,$zero,$zero
    lui     $v0,0x800f
    addiu   $a0,$v0,15040
    lui     $v0,0x8011
    lui     $v1,0x8011
    sw      $zero,-6928($v0)
    lui     $v0,0x8011
    addiu   $v0,$v0,-7184
    sw      $v0,27564($v1)
    ori     $v0,$zero,0x9284
.LFUN_8005f298_28:
    sh      $zero,208($a0)
    sh      $zero,212($a0)
    addu    $a0,$a0,$v0
    addiu   $a1,$a1,1
    slti    $v0,$a1,2
    bne     $v0,$zero,.LFUN_8005f298_28
    ori     $v0,$zero,0x9284
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8005f298
    .size FUN_8005f298, . - FUN_8005f298

/* FUN_8005f2e4 (0x8005f2e4, 20 bytes) */
    .section .text.FUN_8005f2e4,"ax",@progbits
    .globl FUN_8005f2e4
    .type FUN_8005f2e4, @function
    .ent FUN_8005f2e4
FUN_8005f2e4:
    lui     $v0,0x8011
    addiu   $v0,$v0,27296
    sh      $zero,24($v0)
    jr      $ra
    sh      $zero,26($v0)
    .end FUN_8005f2e4
    .size FUN_8005f2e4, . - FUN_8005f2e4

/* FUN_80065ee4 (0x80065ee4, 1232 bytes) */
    .section .text.FUN_80065ee4,"ax",@progbits
    .globl FUN_80065ee4
    .globl sym_80043134
    .globl sym_80064910
    .globl sym_8006cbdc
    .globl sym_80048144
    .globl sym_80049364
    .globl sym_80049208
    .globl sym_80048aa8
    .type FUN_80065ee4, @function
    .ent FUN_80065ee4
FUN_80065ee4:
    addiu   $sp,$sp,-104
    sw      $s2,72($sp)
    addu    $s2,$a2,$zero
    sw      $a1,108($sp)
    addiu   $a1,$zero,15
    sw      $ra,100($sp)
    sw      $s8,96($sp)
    sw      $s7,92($sp)
    sw      $s6,88($sp)
    sw      $s5,84($sp)
    sw      $s4,80($sp)
    sw      $s3,76($sp)
    sw      $s1,68($sp)
    sw      $s0,64($sp)
    jal     sym_80043134
    sw      $a0,104($sp)
    lw      $a0,24($s2)
    lw      $a1,84($s2)
    jal     sym_80064910
    addu    $a2,$zero,$zero
    addiu   $a1,$s2,64
    lw      $v1,24($s2)
    lui     $a0,0x8011
    lbu     $v1,0($v1)
    addiu   $a0,$a0,-5576
    andi    $v1,$v1,0xf
    sll     $v1,$v1,0x2
    addu    $v1,$v1,$a0
    lw      $a0,0($v1)
    jal     sym_8006cbdc
    addu    $a2,$v0,$zero
    lw      $a0,24($s2)
    sw      $zero,52($sp)
    lbu     $v1,1($a0)
    addiu   $v0,$zero,255
    bne     $v1,$v0,.LFUN_80065ee4_a8
    sll     $zero,$zero,0x0
    lbu     $v0,2($a0)
    sll     $zero,$zero,0x0
    xori    $v0,$v0,0xff
    sltiu   $v0,$v0,1
    sw      $v0,52($sp)
.LFUN_80065ee4_a8:
    lh      $s1,70($s2)
    lw      $t4,52($sp)
    lh      $s3,72($s2)
    beq     $t4,$zero,.LFUN_80065ee4_d4
    slti    $v0,$s1,129
    bne     $v0,$zero,.LFUN_80065ee4_dc
    addiu   $v1,$s1,319
    addiu   $v0,$s1,127
    sra     $v0,$v0,0x7
    div     $zero,$s1,$v0
    mflo    $s1
.LFUN_80065ee4_d4:
    sll     $zero,$zero,0x0
    addiu   $v1,$s1,319
.LFUN_80065ee4_dc:
    div     $zero,$v1,$s1
    mflo    $v1
    addiu   $v0,$s3,239
    sll     $zero,$zero,0x0
    div     $zero,$v0,$s3
    mflo    $v0
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    mult    $v1,$v0
    lw      $v0,40($s2)
    mflo    $a0
    andi    $v0,$v0,0xfff
    addiu   $v1,$a0,1
    mult    $v0,$v1
    addu    $s6,$zero,$zero
    addu    $s5,$s6,$zero
    addu    $s4,$s6,$zero
    addiu   $t4,$zero,320
    addiu   $s8,$zero,240
    addu    $s7,$s6,$zero
    sw      $t4,32($sp)
    sw      $zero,36($sp)
    sw      $zero,40($sp)
    sw      $zero,48($sp)
    mflo    $v1
    sra     $v1,$v1,0xb
    slt     $v0,$a0,$v1
    beq     $v0,$zero,.LFUN_80065ee4_15c
    sw      $v1,44($sp)
    subu    $t4,$v1,$a0
    sw      $t4,48($sp)
    sw      $a0,44($sp)
.LFUN_80065ee4_15c:
    lw      $t4,44($sp)
    sll     $zero,$zero,0x0
    slti    $v0,$t4,65
    bne     $v0,$zero,.LFUN_80065ee4_184
    slt     $v0,$s7,$t4
    addiu   $t4,$zero,64
    sw      $t4,44($sp)
    lw      $t4,44($sp)
    sll     $zero,$zero,0x0
    slt     $v0,$s7,$t4
.LFUN_80065ee4_184:
    beq     $v0,$zero,.LFUN_80065ee4_490
    lui     $t4,0x6666
    ori     $t4,$t4,0x6667
    sw      $t4,56($sp)
    lui     $t4,0x8888
    ori     $t4,$t4,0x8889
    sw      $t4,60($sp)
.LFUN_80065ee4_1a0:
    lw      $t4,48($sp)
    sll     $zero,$zero,0x0
    slt     $v0,$s7,$t4
    bne     $v0,$zero,.LFUN_80065ee4_390
    andi    $s0,$s7,0x3
    sll     $s0,$s0,0x2
    addu    $s0,$s2,$s0
    lw      $a0,24($s0)
    lw      $a1,84($s2)
    jal     sym_80064910
    addu    $a2,$s7,$zero
    addiu   $a1,$s2,64
    lw      $v1,24($s0)
    lui     $t4,0x8011
    lbu     $v1,0($v1)
    addiu   $t4,$t4,-5576
    andi    $v1,$v1,0xf
    sll     $v1,$v1,0x2
    addu    $v1,$v1,$t4
    lw      $a0,0($v1)
    jal     sym_8006cbdc
    addu    $a2,$v0,$zero
    addiu   $v0,$zero,320
    sw      $v0,56($s2)
    lw      $v0,8($s0)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,496
    sw      $v0,60($s2)
    lw      $t4,52($sp)
    sll     $zero,$zero,0x0
    bne     $t4,$zero,.LFUN_80065ee4_248
    addiu   $t4,$zero,1
    lh      $a2,66($s2)
    lh      $a3,68($s2)
    sw      $s1,16($sp)
    sw      $s3,20($sp)
    sw      $t4,24($sp)
    lw      $v0,48($s2)
    lw      $a0,104($sp)
    lw      $a1,108($sp)
    j       .LFUN_80065ee4_334
    sw      $v0,28($sp)
.LFUN_80065ee4_248:
    lh      $v0,70($s2)
    sll     $zero,$zero,0x0
    mult    $s1,$v0
    lw      $t4,36($sp)
    mflo    $v1
    addu    $a3,$t4,$s6
    sll     $zero,$zero,0x0
    mult    $a3,$v0
    mflo    $a3
    lw      $t4,56($sp)
    sll     $zero,$zero,0x0
    mult    $v1,$t4
    mfhi    $t0
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    mult    $a3,$t4
    lh      $t1,66($s2)
    lh      $t2,68($s2)
    lh      $a0,72($s2)
    sra     $v1,$v1,0x1f
    sra     $v0,$t0,0x7
    subu    $v0,$v0,$v1
    sw      $v0,16($sp)
    mfhi    $a2
    lh      $v1,72($s2)
    sll     $zero,$zero,0x0
    mult    $s3,$v1
    lw      $t4,40($sp)
    mflo    $v1
    addu    $t0,$t4,$s5
    sll     $zero,$zero,0x0
    mult    $t0,$a0
    mflo    $t0
    lw      $t4,60($sp)
    sll     $zero,$zero,0x0
    mult    $v1,$t4
    lw      $a1,108($sp)
    sra     $a3,$a3,0x1f
    mfhi    $t5
    sra     $a2,$a2,0x7
    subu    $a2,$a2,$a3
    mult    $t0,$t4
    lw      $a0,104($sp)
    addiu   $t4,$zero,1
    addu    $v0,$t5,$v1
    sra     $v0,$v0,0x7
    sra     $v1,$v1,0x1f
    subu    $v0,$v0,$v1
    sw      $t4,24($sp)
    sw      $v0,20($sp)
    lw      $v0,48($s2)
    addu    $a2,$t1,$a2
    sw      $v0,28($sp)
    mfhi    $t3
    addu    $a3,$t3,$t0
    sra     $a3,$a3,0x7
    sra     $t0,$t0,0x1f
    subu    $a3,$a3,$t0
    addu    $a3,$t2,$a3
.LFUN_80065ee4_334:
    jal     sym_80048144
    sll     $zero,$zero,0x0
    addiu   $a2,$s6,-160
    lw      $a0,104($sp)
    lw      $t4,36($sp)
    lw      $a1,108($sp)
    addu    $a2,$t4,$a2
    lw      $t4,40($sp)
    addiu   $a3,$s5,-120
    sw      $s1,16($sp)
    sw      $s3,20($sp)
    jal     sym_80049364
    addu    $a3,$t4,$a3
    lw      $a0,104($sp)
    lw      $a2,56($s2)
    lw      $a3,60($s2)
    lw      $a1,108($sp)
    jal     sym_80049208
    sll     $zero,$zero,0x0
    lw      $t4,108($sp)
    sll     $zero,$zero,0x0
    addiu   $t4,$t4,1
    sw      $t4,108($sp)
.LFUN_80065ee4_390:
    addiu   $t4,$zero,1
    beq     $s4,$t4,.LFUN_80065ee4_400
    slti    $v0,$s4,2
    beq     $v0,$zero,.LFUN_80065ee4_3b4
    addiu   $v0,$zero,2
    beq     $s4,$zero,.LFUN_80065ee4_3cc
    addu    $v1,$s6,$s1
    j       .LFUN_80065ee4_47c
    sll     $zero,$zero,0x0
.LFUN_80065ee4_3b4:
    beq     $s4,$v0,.LFUN_80065ee4_430
    addiu   $v0,$zero,3
    beq     $s4,$v0,.LFUN_80065ee4_44c
    sll     $zero,$zero,0x0
    j       .LFUN_80065ee4_47c
    sll     $zero,$zero,0x0
.LFUN_80065ee4_3cc:
    lw      $t4,32($sp)
    sll     $zero,$zero,0x0
    slt     $v0,$v1,$t4
    bne     $v0,$zero,.LFUN_80065ee4_3f8
    sll     $zero,$zero,0x0
    addiu   $s4,$zero,1
    lw      $t4,40($sp)
    subu    $s8,$s8,$s3
    addu    $t4,$t4,$s3
    j       .LFUN_80065ee4_47c
    sw      $t4,40($sp)
.LFUN_80065ee4_3f8:
    j       .LFUN_80065ee4_47c
    addu    $s6,$v1,$zero
.LFUN_80065ee4_400:
    addu    $v1,$s5,$s3
    slt     $v0,$v1,$s8
    bne     $v0,$zero,.LFUN_80065ee4_428
    sll     $zero,$zero,0x0
    addiu   $s4,$zero,2
    lw      $t4,32($sp)
    subu    $s6,$s6,$s1
    subu    $t4,$t4,$s1
    j       .LFUN_80065ee4_47c
    sw      $t4,32($sp)
.LFUN_80065ee4_428:
    j       .LFUN_80065ee4_47c
    addu    $s5,$v1,$zero
.LFUN_80065ee4_430:
    bgtz    $s6,.LFUN_80065ee4_444
    sll     $zero,$zero,0x0
    addiu   $s4,$zero,3
    j       .LFUN_80065ee4_478
    subu    $s8,$s8,$s3
.LFUN_80065ee4_444:
    j       .LFUN_80065ee4_47c
    subu    $s6,$s6,$s1
.LFUN_80065ee4_44c:
    bgtz    $s5,.LFUN_80065ee4_478
    sll     $zero,$zero,0x0
    lw      $t4,32($sp)
    sll     $zero,$zero,0x0
    subu    $t4,$t4,$s1
    sw      $t4,32($sp)
    lw      $t4,36($sp)
    addu    $s4,$zero,$zero
    addu    $t4,$t4,$s1
    j       .LFUN_80065ee4_47c
    sw      $t4,36($sp)
.LFUN_80065ee4_478:
    subu    $s5,$s5,$s3
.LFUN_80065ee4_47c:
    lw      $t4,44($sp)
    addiu   $s7,$s7,1
    slt     $v0,$s7,$t4
    bne     $v0,$zero,.LFUN_80065ee4_1a0
    sll     $zero,$zero,0x0
.LFUN_80065ee4_490:
    lw      $a0,104($sp)
    lw      $a1,108($sp)
    jal     sym_80048aa8
    sll     $zero,$zero,0x0
    lw      $ra,100($sp)
    lw      $s8,96($sp)
    lw      $s7,92($sp)
    lw      $s6,88($sp)
    lw      $s5,84($sp)
    lw      $s4,80($sp)
    lw      $s3,76($sp)
    lw      $s2,72($sp)
    lw      $s1,68($sp)
    lw      $s0,64($sp)
    jr      $ra
    addiu   $sp,$sp,104
    .end FUN_80065ee4
    .size FUN_80065ee4, . - FUN_80065ee4

/* FUN_80067300 (0x80067300, 1268 bytes) */
    .section .text.FUN_80067300,"ax",@progbits
    .globl FUN_80067300
    .globl sym_80043134
    .globl sym_80064910
    .globl sym_8006cbdc
    .globl sym_80048144
    .globl sym_80049364
    .globl sym_80049208
    .globl sym_80048aa8
    .type FUN_80067300, @function
    .ent FUN_80067300
FUN_80067300:
    addiu   $sp,$sp,-88
    sw      $s6,72($sp)
    addu    $s6,$a1,$zero
    sw      $s5,68($sp)
    addu    $s5,$a2,$zero
    addiu   $a1,$zero,15
    sw      $ra,84($sp)
    sw      $s8,80($sp)
    sw      $s7,76($sp)
    sw      $s4,64($sp)
    sw      $s3,60($sp)
    sw      $s2,56($sp)
    sw      $s1,52($sp)
    sw      $s0,48($sp)
    jal     sym_80043134
    sw      $a0,88($sp)
    addu    $a2,$zero,$zero
    addiu   $t5,$s5,88
    lw      $s0,40($s5)
    lw      $a0,24($s5)
    lw      $a1,84($s5)
    addiu   $s7,$s5,152
    jal     sym_80064910
    sw      $t5,40($sp)
    addiu   $a1,$s5,64
    lw      $v1,24($s5)
    lui     $a0,0x8011
    lbu     $v1,0($v1)
    addiu   $a0,$a0,-5576
    andi    $v1,$v1,0xf
    sll     $v1,$v1,0x2
    addu    $v1,$v1,$a0
    lw      $a0,0($v1)
    jal     sym_8006cbdc
    addu    $a2,$v0,$zero
    addiu   $s0,$s0,1234
    lhu     $v0,70($s5)
    lh      $t5,72($s5)
    sll     $a0,$v0,0x10
    sra     $s4,$a0,0x10
    addu    $v1,$s4,$zero
    slti    $v0,$s4,129
    bne     $v0,$zero,.LFUN_80067300_148
    sw      $t5,32($sp)
    andi    $v0,$s4,0x7f
    bne     $v0,$zero,.LFUN_80067300_c4
    lui     $v0,0x6666
    j       .LFUN_80067300_148
    addiu   $v1,$zero,128
.LFUN_80067300_c4:
    ori     $v0,$v0,0x6667
    mult    $s4,$v0
    sra     $a0,$a0,0x1f
    mfhi    $t5
    sra     $v1,$t5,0x5
    subu    $v1,$v1,$a0
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x4
    bne     $v0,$s4,.LFUN_80067300_f8
    andi    $v0,$s4,0x3f
    j       .LFUN_80067300_148
    addiu   $v1,$zero,80
.LFUN_80067300_f8:
    bne     $v0,$zero,.LFUN_80067300_108
    lui     $v0,0x8888
    j       .LFUN_80067300_148
    addiu   $v1,$zero,64
.LFUN_80067300_108:
    ori     $v0,$v0,0x8889
    mult    $s4,$v0
    mfhi    $t5
    addu    $v1,$t5,$s4
    sra     $v1,$v1,0x5
    subu    $v1,$v1,$a0
    sll     $v0,$v1,0x4
    subu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    bne     $v0,$s4,.LFUN_80067300_13c
    addiu   $v0,$s4,63
    j       .LFUN_80067300_148
    addiu   $v1,$zero,60
.LFUN_80067300_13c:
    sra     $v0,$v0,0x6
    div     $zero,$s4,$v0
    mflo    $v1
.LFUN_80067300_148:
    lw      $t5,32($sp)
    sll     $zero,$zero,0x0
    mult    $s4,$t5
    mflo    $t0
    ori     $v0,$zero,0xc000
    sll     $zero,$zero,0x0
    div     $zero,$v0,$t0
    mflo    $s3
    sll     $zero,$zero,0x0
    slti    $v0,$s3,33
    bne     $v0,$zero,.LFUN_80067300_17c
    sw      $v1,36($sp)
    addiu   $s3,$zero,32
.LFUN_80067300_17c:
    lw      $v0,0($s5)
    sll     $zero,$zero,0x0
    lbu     $v1,0($v0)
    addiu   $v0,$zero,4
    beq     $v1,$v0,.LFUN_80067300_1a4
    addiu   $v0,$zero,5
    beq     $v1,$v0,.LFUN_80067300_264
    sll     $zero,$zero,0x0
    j       .LFUN_80067300_39c
    addiu   $s3,$s3,-1
.LFUN_80067300_1a4:
    addu    $a2,$zero,$zero
    addiu   $v0,$zero,322
    subu    $t2,$v0,$s4
    lw      $t5,32($sp)
    addiu   $v0,$zero,242
    blez    $s3,.LFUN_80067300_398
    subu    $t1,$v0,$t5
    addiu   $t3,$zero,19
    addu    $a3,$s7,$zero
    lw      $a1,40($sp)
    addu    $t0,$a2,$zero
.LFUN_80067300_1d0:
    andi    $v0,$t0,0xf
    addiu   $v0,$v0,7
    mult    $s0,$v0
    mflo    $v1
    srl     $s1,$v1,0x7
    sll     $zero,$zero,0x0
    div     $zero,$s1,$t2
    mflo    $v1
    mfhi    $a0
    andi    $v0,$a2,0xf
    subu    $v0,$t3,$v0
    mult    $s0,$v0
    mflo    $t4
    andi    $v1,$v1,0x1
    beq     $v1,$zero,.LFUN_80067300_21c
    srl     $s2,$t4,0x7
    subu    $v0,$t2,$a0
    j       .LFUN_80067300_220
    sh      $v0,0($a1)
.LFUN_80067300_21c:
    sh      $a0,0($a1)
.LFUN_80067300_220:
    div     $zero,$s2,$t1
    mflo    $v0
    mfhi    $v1
    andi    $v0,$v0,0x1
    beq     $v0,$zero,.LFUN_80067300_240
    subu    $v0,$t1,$v1
    j       .LFUN_80067300_244
    sh      $v0,0($a3)
.LFUN_80067300_240:
    sh      $v1,0($a3)
.LFUN_80067300_244:
    addiu   $a3,$a3,2
    addiu   $a1,$a1,2
    addiu   $a2,$a2,1
    slt     $v0,$a2,$s3
    bne     $v0,$zero,.LFUN_80067300_1d0
    addiu   $t0,$t0,3
    j       .LFUN_80067300_39c
    addiu   $s3,$s3,-1
.LFUN_80067300_264:
    blez    $s3,.LFUN_80067300_398
    addu    $a2,$zero,$zero
    addiu   $t4,$s3,1
    addu    $t3,$s7,$zero
    lw      $a3,40($sp)
    addiu   $t2,$zero,240
    addiu   $t1,$zero,320
.LFUN_80067300_280:
    div     $zero,$t1,$t4
    mflo    $a0
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    div     $zero,$t2,$t4
    mflo    $a1
    lui     $v0,0x2e8b
    ori     $v0,$v0,0xa2e9
    mult    $a2,$v0
    sra     $v0,$a2,0x1f
    mfhi    $v1
    sra     $v1,$v1,0x1
    subu    $v1,$v1,$v0
    sll     $v0,$v1,0x1
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$v1
    subu    $v0,$a2,$v0
    addiu   $v0,$v0,10
    mult    $s0,$v0
    mflo    $v1
    andi    $t0,$a2,0x1
    srl     $v0,$v1,0x7
    mult    $v0,$t0
    mflo    $v1
    addiu   $v0,$s4,320
    addu    $s1,$v1,$a0
    div     $zero,$s1,$v0
    mfhi    $a0
    andi    $v1,$a2,0x7
    addiu   $v0,$zero,16
    subu    $v0,$v0,$v1
    mult    $s0,$v0
    addiu   $v0,$a2,1
    mflo    $v1
    andi    $v0,$v0,0x1
    srl     $v1,$v1,0x7
    mult    $v1,$v0
    lw      $t5,32($sp)
    mflo    $v1
    addiu   $v0,$t5,240
    addu    $s2,$v1,$a1
    div     $zero,$s2,$v0
    mfhi    $v1
    andi    $v0,$a2,0x2
    subu    $a0,$a0,$s4
    sh      $a0,0($a3)
    subu    $v1,$v1,$t5
    beq     $v0,$zero,.LFUN_80067300_37c
    sh      $v1,0($t3)
    beq     $t0,$zero,.LFUN_80067300_368
    addiu   $v0,$zero,320
    lhu     $v1,0($a3)
    sll     $zero,$zero,0x0
    subu    $v0,$v0,$v1
    subu    $v0,$v0,$s4
    j       .LFUN_80067300_37c
    sh      $v0,0($a3)
.LFUN_80067300_368:
    addiu   $v0,$zero,240
    lw      $t5,32($sp)
    subu    $v0,$v0,$v1
    subu    $v0,$v0,$t5
    sh      $v0,0($t3)
.LFUN_80067300_37c:
    addiu   $t3,$t3,2
    addiu   $a3,$a3,2
    addiu   $t2,$t2,240
    addiu   $a2,$a2,1
    slt     $v0,$a2,$s3
    bne     $v0,$zero,.LFUN_80067300_280
    addiu   $t1,$t1,320
.LFUN_80067300_398:
    addiu   $s3,$s3,-1
.LFUN_80067300_39c:
    bltz    $s3,.LFUN_80067300_4b8
    sll     $v0,$s3,0x1
    lw      $t5,40($sp)
    addu    $s8,$v0,$s7
    addu    $s7,$v0,$t5
.LFUN_80067300_3b0:
    andi    $s0,$s3,0x3
    sll     $s0,$s0,0x2
    addu    $s0,$s5,$s0
    lw      $a0,24($s0)
    lw      $a1,84($s5)
    jal     sym_80064910
    addu    $a2,$s3,$zero
    addiu   $a1,$s5,64
    lw      $v1,24($s0)
    lui     $t5,0x8011
    lbu     $v1,0($v1)
    addiu   $t5,$t5,-5576
    andi    $v1,$v1,0xf
    sll     $v1,$v1,0x2
    addu    $v1,$v1,$t5
    lw      $a0,0($v1)
    jal     sym_8006cbdc
    addu    $a2,$v0,$zero
    addiu   $v0,$zero,320
    sw      $v0,56($s5)
    lw      $v0,8($s0)
    addu    $s0,$zero,$zero
    addiu   $v0,$v0,496
    sw      $v0,60($s5)
    lh      $v0,0($s7)
    lh      $v1,0($s8)
    addiu   $s1,$v0,-160
    blez    $s4,.LFUN_80067300_4a8
    addiu   $s2,$v1,-120
.LFUN_80067300_424:
    lw      $a0,88($sp)
    lh      $a2,66($s5)
    lh      $a3,68($s5)
    lw      $t5,36($sp)
    addu    $a1,$s6,$zero
    sw      $t5,16($sp)
    lw      $t5,32($sp)
    addiu   $v0,$zero,1
    sw      $v0,24($sp)
    sw      $t5,20($sp)
    lw      $v0,48($s5)
    addu    $a2,$a2,$s0
    jal     sym_80048144
    sw      $v0,28($sp)
    addu    $a1,$s6,$zero
    lw      $a0,88($sp)
    lw      $t5,36($sp)
    addu    $a2,$s1,$s0
    sw      $t5,16($sp)
    lw      $t5,32($sp)
    addu    $a3,$s2,$zero
    jal     sym_80049364
    sw      $t5,20($sp)
    addu    $a1,$s6,$zero
    lw      $a0,88($sp)
    lw      $a2,56($s5)
    lw      $t5,36($sp)
    lw      $a3,60($s5)
    jal     sym_80049208
    addu    $s0,$s0,$t5
    slt     $v0,$s0,$s4
    bne     $v0,$zero,.LFUN_80067300_424
    addiu   $s6,$s6,1
.LFUN_80067300_4a8:
    addiu   $s8,$s8,-2
    addiu   $s3,$s3,-1
    bgez    $s3,.LFUN_80067300_3b0
    addiu   $s7,$s7,-2
.LFUN_80067300_4b8:
    lw      $a0,88($sp)
    jal     sym_80048aa8
    addu    $a1,$s6,$zero
    lw      $ra,84($sp)
    lw      $s8,80($sp)
    lw      $s7,76($sp)
    lw      $s6,72($sp)
    lw      $s5,68($sp)
    lw      $s4,64($sp)
    lw      $s3,60($sp)
    lw      $s2,56($sp)
    lw      $s1,52($sp)
    lw      $s0,48($sp)
    jr      $ra
    addiu   $sp,$sp,88
    .end FUN_80067300
    .size FUN_80067300, . - FUN_80067300

/* FUN_80068bc8 (0x80068bc8, 1008 bytes) */
    .section .text.FUN_80068bc8,"ax",@progbits
    .globl FUN_80068bc8
    .globl sym_80043134
    .globl sym_80064910
    .globl sym_8006cbdc
    .globl sym_80049364
    .globl sym_80048144
    .globl sym_80049208
    .globl sym_80048aa8
    .type FUN_80068bc8, @function
    .ent FUN_80068bc8
FUN_80068bc8:
    addiu   $sp,$sp,-88
    sw      $s6,72($sp)
    addu    $s6,$a1,$zero
    sw      $s3,60($sp)
    addu    $s3,$a2,$zero
    addiu   $a1,$zero,15
    sw      $ra,84($sp)
    sw      $s8,80($sp)
    sw      $s7,76($sp)
    sw      $s5,68($sp)
    sw      $s4,64($sp)
    sw      $s2,56($sp)
    sw      $s1,52($sp)
    sw      $s0,48($sp)
    jal     sym_80043134
    sw      $a0,88($sp)
    addu    $s8,$zero,$zero
    sw      $zero,32($sp)
    sw      $zero,36($sp)
    lw      $a0,24($s3)
    lw      $a1,84($s3)
    jal     sym_80064910
    addu    $a2,$s8,$zero
    addiu   $a1,$s3,64
    lw      $v1,24($s3)
    lui     $a0,0x8011
    lbu     $v1,0($v1)
    addiu   $a0,$a0,-5576
    andi    $v1,$v1,0xf
    sll     $v1,$v1,0x2
    addu    $v1,$v1,$a0
    lw      $a0,0($v1)
    jal     sym_8006cbdc
    addu    $a2,$v0,$zero
    lw      $v0,0($s3)
    sll     $zero,$zero,0x0
    lbu     $v1,0($v0)
    addiu   $v0,$zero,2
    beq     $v1,$v0,.LFUN_80068bc8_10c
    addu    $s0,$s8,$zero
    slti    $v0,$v1,3
    beq     $v0,$zero,.LFUN_80068bc8_bc
    addiu   $v0,$zero,1
    beq     $v1,$v0,.LFUN_80068bc8_d0
    addiu   $a1,$zero,1
    j       .LFUN_80068bc8_258
    sll     $zero,$zero,0x0
.LFUN_80068bc8_bc:
    addiu   $v0,$zero,3
    beq     $v1,$v0,.LFUN_80068bc8_1bc
    sll     $zero,$zero,0x0
    j       .LFUN_80068bc8_258
    sll     $zero,$zero,0x0
.LFUN_80068bc8_d0:
    addiu   $v1,$zero,320
    div     $zero,$v1,$a1
    mflo    $t2
    addiu   $v0,$zero,240
    sw      $t2,32($sp)
    div     $zero,$v0,$a1
    mflo    $t2
    lh      $a0,70($s3)
    sll     $zero,$zero,0x0
    subu    $v1,$v1,$a0
    sw      $t2,36($sp)
    lh      $a0,72($s3)
    sra     $s8,$v1,0x1
    j       .LFUN_80068bc8_254
    subu    $v0,$v0,$a0
.LFUN_80068bc8_10c:
    lh      $a3,70($s3)
    addiu   $t1,$zero,320
    div     $zero,$t1,$a3
    mflo    $v0
    sll     $zero,$zero,0x0
    addiu   $a2,$v0,-1
    bgtz    $a2,.LFUN_80068bc8_130
    sll     $zero,$zero,0x0
    addiu   $a2,$zero,1
.LFUN_80068bc8_130:
    lh      $a0,72($s3)
    addiu   $t0,$zero,240
    div     $zero,$t0,$a0
    mflo    $v0
    sll     $zero,$zero,0x0
    addiu   $a1,$v0,-1
    bgtz    $a1,.LFUN_80068bc8_154
    sll     $zero,$zero,0x0
    addiu   $a1,$zero,1
.LFUN_80068bc8_154:
    div     $zero,$t1,$a2
    mflo    $t2
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    mult    $a3,$a2
    mflo    $v1
    subu    $v1,$t1,$v1
    sll     $zero,$zero,0x0
    div     $zero,$v1,$a2
    mflo    $v1
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    mult    $a0,$a1
    mflo    $t1
    subu    $v0,$t0,$t1
    sll     $zero,$zero,0x0
    div     $zero,$v0,$a1
    mflo    $v0
    sw      $t2,32($sp)
    sll     $zero,$zero,0x0
    div     $zero,$t0,$a1
    mflo    $t2
    sra     $s8,$v1,0x1
    sra     $s0,$v0,0x1
    j       .LFUN_80068bc8_258
    sw      $t2,36($sp)
.LFUN_80068bc8_1bc:
    lh      $v1,70($s3)
    lh      $a0,72($s3)
    sll     $zero,$zero,0x0
    addu    $v0,$v1,$a0
    sra     $s8,$v0,0x4
    slti    $v0,$s8,9
    bne     $v0,$zero,.LFUN_80068bc8_1e0
    sll     $zero,$zero,0x0
    addiu   $s8,$zero,8
.LFUN_80068bc8_1e0:
    addu    $v1,$v1,$s8
    addiu   $v0,$v1,319
    div     $zero,$v0,$v1
    mflo    $a2
    addu    $s0,$s8,$zero
    addu    $a0,$a0,$s8
    addiu   $v0,$a0,239
    sw      $v1,32($sp)
    div     $zero,$v0,$a0
    mflo    $a1
    bgtz    $a2,.LFUN_80068bc8_214
    sw      $a0,36($sp)
    addiu   $a2,$zero,1
.LFUN_80068bc8_214:
    bgtz    $a1,.LFUN_80068bc8_220
    sll     $zero,$zero,0x0
    addiu   $a1,$zero,1
.LFUN_80068bc8_220:
    lw      $t2,32($sp)
    sll     $zero,$zero,0x0
    mult    $a2,$t2
    mflo    $t0
    lw      $t2,36($sp)
    sll     $zero,$zero,0x0
    mult    $a1,$t2
    addiu   $v0,$s8,320
    subu    $v0,$v0,$t0
    sra     $s8,$v0,0x1
    addiu   $v0,$s0,240
    mflo    $v1
    subu    $v0,$v0,$v1
.LFUN_80068bc8_254:
    sra     $s0,$v0,0x1
.LFUN_80068bc8_258:
    lh      $a0,70($s3)
    sll     $zero,$zero,0x0
    addiu   $v0,$a0,127
    sra     $v1,$v0,0x7
    bgtz    $v1,.LFUN_80068bc8_274
    addu    $s7,$s0,$zero
    addiu   $v1,$zero,1
.LFUN_80068bc8_274:
    slti    $v0,$s7,240
    div     $zero,$a0,$v1
    mflo    $s4
    beq     $v0,$zero,.LFUN_80068bc8_3b4
    addu    $s5,$zero,$zero
    addu    $s2,$s8,$zero
.LFUN_80068bc8_28c:
    slti    $v0,$s2,320
    beq     $v0,$zero,.LFUN_80068bc8_39c
    addu    $a2,$s5,$zero
.LFUN_80068bc8_298:
    andi    $s0,$s5,0x3
    sll     $s0,$s0,0x2
    addu    $s0,$s3,$s0
    lw      $a0,24($s0)
    lw      $a1,84($s3)
    jal     sym_80064910
    addiu   $s5,$s5,1
    addu    $s1,$zero,$zero
    addiu   $a1,$s3,64
    lw      $v1,24($s0)
    lui     $t2,0x8011
    lbu     $v1,0($v1)
    addiu   $t2,$t2,-5576
    andi    $v1,$v1,0xf
    sll     $v1,$v1,0x2
    addu    $v1,$v1,$t2
    lw      $a0,0($v1)
    jal     sym_8006cbdc
    addu    $a2,$v0,$zero
    addiu   $v0,$zero,320
    sw      $v0,56($s3)
    lw      $v0,8($s0)
    lh      $v1,70($s3)
    addiu   $v0,$v0,496
    blez    $v1,.LFUN_80068bc8_384
    sw      $v0,60($s3)
.LFUN_80068bc8_300:
    addu    $a1,$s6,$zero
    addiu   $a2,$s1,-160
    lw      $a0,88($sp)
    addu    $a2,$s2,$a2
    sw      $s4,16($sp)
    lh      $v0,72($s3)
    addiu   $a3,$s7,-120
    jal     sym_80049364
    sw      $v0,20($sp)
    lw      $a0,88($sp)
    lh      $a2,66($s3)
    lh      $a3,68($s3)
    addu    $a1,$s6,$zero
    sw      $s4,16($sp)
    lh      $v1,72($s3)
    addiu   $v0,$zero,1
    sw      $v0,24($sp)
    addu    $a2,$a2,$s1
    sw      $v1,20($sp)
    lw      $v0,48($s3)
    addu    $s1,$s1,$s4
    jal     sym_80048144
    sw      $v0,28($sp)
    lw      $a0,88($sp)
    lw      $a2,56($s3)
    lw      $a3,60($s3)
    jal     sym_80049208
    addu    $a1,$s6,$zero
    lh      $v0,70($s3)
    sll     $zero,$zero,0x0
    slt     $v0,$s1,$v0
    bne     $v0,$zero,.LFUN_80068bc8_300
    addiu   $s6,$s6,1
.LFUN_80068bc8_384:
    lw      $t2,32($sp)
    sll     $zero,$zero,0x0
    addu    $s2,$s2,$t2
    slti    $v0,$s2,320
    bne     $v0,$zero,.LFUN_80068bc8_298
    addu    $a2,$s5,$zero
.LFUN_80068bc8_39c:
    lw      $t2,36($sp)
    sll     $zero,$zero,0x0
    addu    $s7,$s7,$t2
    slti    $v0,$s7,240
    bne     $v0,$zero,.LFUN_80068bc8_28c
    addu    $s2,$s8,$zero
.LFUN_80068bc8_3b4:
    lw      $a0,88($sp)
    jal     sym_80048aa8
    addu    $a1,$s6,$zero
    lw      $ra,84($sp)
    lw      $s8,80($sp)
    lw      $s7,76($sp)
    lw      $s6,72($sp)
    lw      $s5,68($sp)
    lw      $s4,64($sp)
    lw      $s3,60($sp)
    lw      $s2,56($sp)
    lw      $s1,52($sp)
    lw      $s0,48($sp)
    jr      $ra
    addiu   $sp,$sp,88
    .end FUN_80068bc8
    .size FUN_80068bc8, . - FUN_80068bc8

/* FUN_8006a074 (0x8006a074, 1388 bytes) */
    .section .text.FUN_8006a074,"ax",@progbits
    .globl FUN_8006a074
    .globl sym_80043134
    .globl sym_80064910
    .globl sym_8006cafc
    .globl sym_80049364
    .globl sym_80048144
    .globl sym_80049208
    .globl sym_80048aa8
    .type FUN_8006a074, @function
    .ent FUN_8006a074
FUN_8006a074:
    addiu   $sp,$sp,-104
    sw      $s8,96($sp)
    addu    $s8,$a1,$zero
    sw      $s7,92($sp)
    addu    $s7,$a2,$zero
    addiu   $a1,$zero,15
    sw      $ra,100($sp)
    sw      $s6,88($sp)
    sw      $s5,84($sp)
    sw      $s4,80($sp)
    sw      $s3,76($sp)
    sw      $s2,72($sp)
    sw      $s1,68($sp)
    sw      $s0,64($sp)
    jal     sym_80043134
    sw      $a0,104($sp)
    addiu   $t2,$zero,1
    sw      $t2,56($sp)
    lw      $a0,24($s7)
    lw      $a1,84($s7)
    jal     sym_80064910
    addu    $a2,$zero,$zero
    addiu   $a1,$s7,64
    lw      $v1,24($s7)
    lui     $a0,0x8011
    lbu     $v1,0($v1)
    addiu   $a0,$a0,-5576
    andi    $v1,$v1,0xf
    sll     $v1,$v1,0x2
    addu    $v1,$v1,$a0
    lw      $a0,0($v1)
    jal     sym_8006cafc
    addu    $a2,$v0,$zero
    lh      $t0,70($s7)
    lh      $t1,72($s7)
    slti    $v0,$t0,20
    beq     $v0,$zero,.LFUN_8006a074_9c
    slti    $v0,$t1,20
    addiu   $t0,$zero,20
.LFUN_8006a074_9c:
    beq     $v0,$zero,.LFUN_8006a074_a8
    addu    $a1,$zero,$zero
    addiu   $t1,$zero,20
.LFUN_8006a074_a8:
    addu    $a2,$a1,$zero
    slti    $v0,$t0,129
    bne     $v0,$zero,.LFUN_8006a074_150
    addu    $v1,$t0,$zero
    andi    $v0,$t0,0x7f
    bne     $v0,$zero,.LFUN_8006a074_cc
    lui     $v0,0x6666
    j       .LFUN_8006a074_150
    addiu   $v1,$zero,128
.LFUN_8006a074_cc:
    ori     $v0,$v0,0x6667
    mult    $t0,$v0
    sra     $a0,$t0,0x1f
    mfhi    $t2
    sra     $v1,$t2,0x5
    subu    $v1,$v1,$a0
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x4
    bne     $v0,$t0,.LFUN_8006a074_100
    andi    $v0,$t0,0x3f
    j       .LFUN_8006a074_150
    addiu   $v1,$zero,80
.LFUN_8006a074_100:
    bne     $v0,$zero,.LFUN_8006a074_110
    lui     $v0,0x8888
    j       .LFUN_8006a074_150
    addiu   $v1,$zero,64
.LFUN_8006a074_110:
    ori     $v0,$v0,0x8889
    mult    $t0,$v0
    mfhi    $t2
    addu    $v1,$t2,$t0
    sra     $v1,$v1,0x5
    subu    $v1,$v1,$a0
    sll     $v0,$v1,0x4
    subu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    bne     $v0,$t0,.LFUN_8006a074_144
    addiu   $v0,$t0,63
    j       .LFUN_8006a074_150
    addiu   $v1,$zero,60
.LFUN_8006a074_144:
    sra     $v0,$v0,0x6
    div     $zero,$t0,$v0
    mflo    $v1
.LFUN_8006a074_150:
    sll     $zero,$zero,0x0
    addu    $s6,$v1,$zero
    slti    $v0,$t1,129
    bne     $v0,$zero,.LFUN_8006a074_1fc
    addu    $v1,$t1,$zero
    andi    $v0,$t1,0x7f
    bne     $v0,$zero,.LFUN_8006a074_178
    lui     $v0,0x6666
    j       .LFUN_8006a074_1fc
    addiu   $v1,$zero,128
.LFUN_8006a074_178:
    ori     $v0,$v0,0x6667
    mult    $t1,$v0
    sra     $a0,$t1,0x1f
    mfhi    $t2
    sra     $v1,$t2,0x5
    subu    $v1,$v1,$a0
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x4
    bne     $v0,$t1,.LFUN_8006a074_1ac
    andi    $v0,$t1,0x3f
    j       .LFUN_8006a074_1fc
    addiu   $v1,$zero,80
.LFUN_8006a074_1ac:
    bne     $v0,$zero,.LFUN_8006a074_1bc
    lui     $v0,0x8888
    j       .LFUN_8006a074_1fc
    addiu   $v1,$zero,64
.LFUN_8006a074_1bc:
    ori     $v0,$v0,0x8889
    mult    $t1,$v0
    mfhi    $t2
    addu    $v1,$t2,$t1
    sra     $v1,$v1,0x5
    subu    $v1,$v1,$a0
    sll     $v0,$v1,0x4
    subu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    bne     $v0,$t1,.LFUN_8006a074_1f0
    addiu   $v0,$t1,63
    j       .LFUN_8006a074_1fc
    addiu   $v1,$zero,60
.LFUN_8006a074_1f0:
    sra     $v0,$v0,0x6
    div     $zero,$t1,$v0
    mflo    $v1
.LFUN_8006a074_1fc:
    slt     $v0,$t0,$s6
    beq     $v0,$zero,.LFUN_8006a074_20c
    addu    $s4,$v1,$zero
    addu    $s6,$t0,$zero
.LFUN_8006a074_20c:
    slt     $v0,$t1,$s4
    beq     $v0,$zero,.LFUN_8006a074_21c
    addu    $v0,$t0,$s6
    addu    $s4,$t1,$zero
.LFUN_8006a074_21c:
    addiu   $v0,$v0,-1
    div     $zero,$v0,$s6
    mflo    $v0
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    div     $zero,$t0,$v0
    mflo    $s6
    addu    $v1,$t1,$s4
    addiu   $v1,$v1,-1
    div     $zero,$v1,$s4
    mflo    $v1
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    div     $zero,$t1,$v1
    mflo    $s4
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    mult    $s6,$v0
    mflo    $t2
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    mult    $s4,$v1
    sw      $t2,48($sp)
    lw      $v0,0($s7)
    addiu   $a3,$zero,32
    lbu     $a0,0($v0)
    mflo    $t2
    bne     $a0,$a3,.LFUN_8006a074_298
    sw      $t2,52($sp)
    addiu   $t2,$zero,2
    sw      $t2,56($sp)
.LFUN_8006a074_298:
    addiu   $v0,$zero,34
    beq     $a0,$v0,.LFUN_8006a074_2ac
    sll     $zero,$zero,0x0
    bne     $a0,$a3,.LFUN_8006a074_2c8
    sll     $zero,$zero,0x0
.LFUN_8006a074_2ac:
    lw      $v0,40($s7)
    sll     $zero,$zero,0x0
    mult    $v0,$t0
    mflo    $t2
    sra     $v0,$t2,0xc
    subu    $a1,$v0,$t0
    sll     $t0,$t0,0x2
.LFUN_8006a074_2c8:
    lw      $v0,0($s7)
    sll     $zero,$zero,0x0
    lbu     $v0,0($v0)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,-32
    sltiu   $v0,$v0,2
    beq     $v0,$zero,.LFUN_8006a074_304
    sll     $zero,$zero,0x0
    lw      $v0,40($s7)
    sll     $zero,$zero,0x0
    mult    $v0,$t1
    mflo    $t2
    sra     $v0,$t2,0xc
    subu    $a2,$v0,$t1
    sll     $t1,$t1,0x2
.LFUN_8006a074_304:
    div     $zero,$a1,$t0
    mflo    $v0
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    div     $zero,$a2,$t1
    mflo    $v1
    addiu   $v0,$v0,-1
    sll     $zero,$zero,0x0
    mult    $v0,$t0
    mflo    $t0
    subu    $a1,$a1,$t0
    sll     $zero,$zero,0x0
    div     $zero,$a1,$s6
    mflo    $a1
    mfhi    $a3
    addiu   $v1,$v1,-1
    sll     $zero,$zero,0x0
    mult    $v1,$t1
    mflo    $v1
    subu    $a2,$a2,$v1
    sll     $zero,$zero,0x0
    div     $zero,$a2,$s4
    mflo    $a0
    mfhi    $a2
    addiu   $v0,$s4,239
    sll     $zero,$zero,0x0
    div     $zero,$v0,$s4
    mflo    $v0
    addiu   $v1,$s6,319
    sll     $zero,$zero,0x0
    div     $zero,$v1,$s6
    mflo    $v1
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    mult    $v0,$s4
    mflo    $s5
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    mult    $a1,$s6
    mflo    $t2
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    mult    $a0,$s4
    sw      $t2,40($sp)
    mflo    $t2
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    mult    $v1,$s6
    addiu   $v0,$zero,-160
    subu    $v0,$v0,$a3
    sw      $v0,32($sp)
    addiu   $v0,$zero,-120
    subu    $v0,$v0,$a2
    sw      $v0,36($sp)
    sw      $t2,44($sp)
    mflo    $t2
    bltz    $s5,.LFUN_8006a074_530
    sw      $t2,60($sp)
.LFUN_8006a074_3ec:
    lw      $s3,60($sp)
    sll     $zero,$zero,0x0
    bltz    $s3,.LFUN_8006a074_524
    sll     $zero,$zero,0x0
.LFUN_8006a074_3fc:
    lw      $t2,44($sp)
    sll     $zero,$zero,0x0
    addu    $v0,$s5,$t2
    lw      $t2,52($sp)
    sll     $zero,$zero,0x0
    div     $zero,$v0,$t2
    mflo    $v0
    mfhi    $s2
    lw      $t2,40($sp)
    sll     $zero,$zero,0x0
    addu    $a2,$s3,$t2
    lw      $t2,48($sp)
    sll     $zero,$zero,0x0
    div     $zero,$a2,$t2
    mflo    $a2
    mfhi    $s1
    lw      $t2,56($sp)
    sll     $zero,$zero,0x0
    mult    $v0,$t2
    addiu   $v0,$zero,320
    sw      $v0,56($s7)
    mflo    $v1
    addu    $a2,$a2,$v1
    andi    $s0,$a2,0x3
    sll     $s0,$s0,0x2
    addu    $s0,$s7,$s0
    lw      $v0,8($s0)
    lw      $a1,84($s7)
    addiu   $v0,$v0,496
    sw      $v0,60($s7)
    lw      $a0,24($s0)
    jal     sym_80064910
    sll     $zero,$zero,0x0
    addiu   $a1,$s7,64
    lw      $v1,24($s0)
    lui     $t2,0x8011
    lbu     $v1,0($v1)
    addiu   $t2,$t2,-5576
    andi    $v1,$v1,0xf
    sll     $v1,$v1,0x2
    addu    $v1,$v1,$t2
    lw      $a0,0($v1)
    jal     sym_8006cafc
    addu    $a2,$v0,$zero
    lw      $t2,32($sp)
    lw      $a0,104($sp)
    addu    $a2,$t2,$s3
    lw      $t2,36($sp)
    addu    $a1,$s8,$zero
    sw      $s6,16($sp)
    sw      $s4,20($sp)
    jal     sym_80049364
    addu    $a3,$t2,$s5
    addu    $a1,$s8,$zero
    subu    $s3,$s3,$s6
    lw      $a0,104($sp)
    lh      $a2,66($s7)
    lh      $a3,68($s7)
    addiu   $v0,$zero,1
    sw      $s6,16($sp)
    sw      $s4,20($sp)
    sw      $v0,24($sp)
    lw      $v0,48($s7)
    addu    $a2,$a2,$s1
    addu    $a3,$a3,$s2
    jal     sym_80048144
    sw      $v0,28($sp)
    lw      $a0,104($sp)
    lw      $a2,56($s7)
    lw      $a3,60($s7)
    jal     sym_80049208
    addu    $a1,$s8,$zero
    bgez    $s3,.LFUN_8006a074_3fc
    addiu   $s8,$s8,1
.LFUN_8006a074_524:
    subu    $s5,$s5,$s4
    bgez    $s5,.LFUN_8006a074_3ec
    sll     $zero,$zero,0x0
.LFUN_8006a074_530:
    lw      $a0,104($sp)
    jal     sym_80048aa8
    addu    $a1,$s8,$zero
    lw      $ra,100($sp)
    lw      $s8,96($sp)
    lw      $s7,92($sp)
    lw      $s6,88($sp)
    lw      $s5,84($sp)
    lw      $s4,80($sp)
    lw      $s3,76($sp)
    lw      $s2,72($sp)
    lw      $s1,68($sp)
    lw      $s0,64($sp)
    jr      $ra
    addiu   $sp,$sp,104
    .end FUN_8006a074
    .size FUN_8006a074, . - FUN_8006a074

/* FUN_80076428 (0x80076428, 424 bytes) */
    .section .text.FUN_80076428,"ax",@progbits
    .globl FUN_80076428
    .globl sym_80079358
    .globl sym_80079968
    .globl sym_80079ea4
    .globl sym_80078a38
    .globl sym_8007a410
    .globl sym_80078ecc
    .globl sym_80075b84
    .globl sym_8007c384
    .globl sym_800765d0
    .globl sym_80076c80
    .globl sym_80028034
    .globl sym_8002d630
    .type FUN_80076428, @function
    .ent FUN_80076428
FUN_80076428:
    sll     $zero,$zero,0x0
    j       .LFUN_80076428_164
    addu    $s0,$v0,$zero
    jal     sym_80079358
    sll     $zero,$zero,0x0
    j       .LFUN_80076428_164
    addu    $s0,$v0,$zero
    jal     sym_80079968
    sll     $zero,$zero,0x0
    j       .LFUN_80076428_164
    addu    $s0,$v0,$zero
    jal     sym_80079ea4
    sll     $zero,$zero,0x0
    j       .LFUN_80076428_164
    addu    $s0,$v0,$zero
    jal     sym_80078a38
    sll     $zero,$zero,0x0
    j       .LFUN_80076428_164
    addu    $s0,$v0,$zero
    jal     sym_8007a410
    sll     $zero,$zero,0x0
    j       .LFUN_80076428_164
    addu    $s0,$v0,$zero
    jal     sym_80078ecc
    sll     $zero,$zero,0x0
    j       .LFUN_80076428_164
    addu    $s0,$v0,$zero
    jal     sym_80075b84
    addiu   $a0,$zero,1
    j       .LFUN_80076428_164
    addu    $s0,$v0,$zero
    jal     sym_80075b84
    addiu   $a0,$zero,2
    j       .LFUN_80076428_164
    addu    $s0,$v0,$zero
    jal     sym_80075b84
    addiu   $a0,$zero,3
    j       .LFUN_80076428_164
    addu    $s0,$v0,$zero
    jal     sym_8007c384
    sll     $zero,$zero,0x0
    j       .LFUN_80076428_164
    addu    $s0,$v0,$zero
    jal     sym_800765d0
    addiu   $a0,$zero,1
    j       .LFUN_80076428_164
    addu    $s0,$v0,$zero
    jal     sym_800765d0
    addiu   $a0,$zero,2
    j       .LFUN_80076428_164
    addu    $s0,$v0,$zero
    jal     sym_800765d0
    addiu   $a0,$zero,3
    j       .LFUN_80076428_164
    addu    $s0,$v0,$zero
    j       .LFUN_80076428_158
    addu    $a0,$zero,$zero
    j       .LFUN_80076428_158
    addiu   $a0,$zero,1
    j       .LFUN_80076428_158
    addiu   $a0,$zero,2
    j       .LFUN_80076428_158
    addiu   $a0,$zero,3
    j       .LFUN_80076428_158
    addiu   $a0,$zero,4
    j       .LFUN_80076428_158
    addiu   $a0,$zero,5
    j       .LFUN_80076428_158
    addiu   $a0,$zero,6
    j       .LFUN_80076428_158
    addiu   $a0,$zero,7
    j       .LFUN_80076428_158
    addiu   $a0,$zero,8
    j       .LFUN_80076428_158
    addiu   $a0,$zero,9
    j       .LFUN_80076428_158
    addiu   $a0,$zero,10
    j       .LFUN_80076428_158
    addiu   $a0,$zero,11
    j       .LFUN_80076428_158
    addiu   $a0,$zero,12
    j       .LFUN_80076428_158
    addiu   $a0,$zero,13
    j       .LFUN_80076428_158
    addiu   $a0,$zero,14
    addiu   $a0,$zero,15
.LFUN_80076428_158:
    jal     sym_80076c80
    sll     $zero,$zero,0x0
    addu    $s0,$v0,$zero
.LFUN_80076428_164:
    jal     sym_80028034
    sll     $zero,$zero,0x0
    jal     sym_8002d630
    sll     $zero,$zero,0x0
    beq     $s0,$zero,.LFUN_80076428_194
    lui     $v0,0x800b
    lw      $v1,-14100($v0)
    addiu   $v0,$zero,1
    lw      $a0,144($v1)
    lui     $v1,0x800e
    j       .LFUN_80076428_198
    sw      $a0,15316($v1)
.LFUN_80076428_194:
    addu    $v0,$s0,$zero
.LFUN_80076428_198:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_80076428
    .size FUN_80076428, . - FUN_80076428

/* FUN_8007b6bc (0x8007b6bc, 140 bytes) */
    .section .text.FUN_8007b6bc,"ax",@progbits
    .globl FUN_8007b6bc
    .type FUN_8007b6bc, @function
    .ent FUN_8007b6bc
FUN_8007b6bc:
    lui     $v0,0x800e
    addiu   $a1,$v0,15224
    lw      $v1,12($a1)
    sll     $zero,$zero,0x0
    sll     $v0,$v1,0x1
    addu    $v0,$v0,$a1
    addu    $a2,$v1,$zero
    lh      $v1,16($v0)
    addiu   $a0,$a2,1
    addiu   $v1,$v1,-1
    sh      $v1,16($v0)
    slti    $v0,$a0,16
    beq     $v0,$zero,.LFUN_8007b6bc_50
    sll     $v0,$a0,0x1
    addu    $a1,$v0,$a1
.LFUN_8007b6bc_3c:
    sh      $zero,16($a1)
    addiu   $a0,$a0,1
    slti    $v0,$a0,16
    bne     $v0,$zero,.LFUN_8007b6bc_3c
    addiu   $a1,$a1,2
.LFUN_8007b6bc_50:
    bne     $v1,$zero,.LFUN_8007b6bc_84
    addu    $a0,$a2,$zero
    slti    $v0,$a0,16
    beq     $v0,$zero,.LFUN_8007b6bc_84
    lui     $v0,0x800e
    addiu   $v0,$v0,15224
    sll     $v1,$a0,0x1
    addu    $v1,$v1,$v0
.LFUN_8007b6bc_70:
    sh      $zero,48($v1)
    addiu   $a0,$a0,1
    slti    $v0,$a0,16
    bne     $v0,$zero,.LFUN_8007b6bc_70
    addiu   $v1,$v1,2
.LFUN_8007b6bc_84:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8007b6bc
    .size FUN_8007b6bc, . - FUN_8007b6bc

/* FUN_8007b748 (0x8007b748, 48 bytes) */
    .section .text.FUN_8007b748,"ax",@progbits
    .globl FUN_8007b748
    .type FUN_8007b748, @function
    .ent FUN_8007b748
FUN_8007b748:
    addu    $a0,$zero,$zero
    lui     $v0,0x800e
    addiu   $v1,$v0,15224
.LFUN_8007b748_c:
    lhu     $v0,48($v1)
    addiu   $a0,$a0,1
    addiu   $v0,$v0,1
    sh      $v0,48($v1)
    slti    $v0,$a0,16
    bne     $v0,$zero,.LFUN_8007b748_c
    addiu   $v1,$v1,2
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8007b748
    .size FUN_8007b748, . - FUN_8007b748

/* FUN_8007ecac (0x8007ecac, 64 bytes) */
    .section .text.FUN_8007ecac,"ax",@progbits
    .globl FUN_8007ecac
    .globl FUN_8007ecec
    .globl sym_8007ecf4
    .type FUN_8007ecac, @function
    .ent FUN_8007ecac
FUN_8007ecac:
    addu    $a3,$zero,$zero
    lui     $v0,0x800e
    addiu   $t0,$v0,-3112
.LFUN_8007ecac_c:
    addu    $v1,$t0,$zero
    lhu     $v0,0($v1)
    sll     $zero,$zero,0x0
    beq     $v0,$a0,FUN_8007ecec
    addiu   $a3,$a3,1
    slti    $v0,$a3,47
    bne     $v0,$zero,.LFUN_8007ecac_c
    addiu   $t0,$v1,28
    addu    $t1,$zero,$zero
    bne     $t1,$zero,sym_8007ecf4
    addu    $t0,$zero,$zero
    jr      $ra
    addiu   $v0,$zero,-1
    .end FUN_8007ecac
    .size FUN_8007ecac, . - FUN_8007ecac

/* FUN_8007ecec (0x8007ecec, 332 bytes) */
    .section .text.FUN_8007ecec,"ax",@progbits
    .globl FUN_8007ecec
    .globl sym_8007ecdc
    .type FUN_8007ecec, @function
    .ent FUN_8007ecec
FUN_8007ecec:
    j       sym_8007ecdc
    addu    $t1,$t0,$zero
    addu    $a3,$t0,$zero
    lw      $t2,24($t1)
    sll     $zero,$zero,0x0
    lbu     $v1,0($t2)
    addiu   $v0,$zero,32
    bne     $v1,$v0,.LFUN_8007ecec_48
    addu    $a0,$t0,$zero
    addu    $v1,$t2,$zero
    addu    $t2,$v0,$zero
    addiu   $a0,$a0,1
.LFUN_8007ecec_30:
    addu    $v0,$v1,$a0
    lbu     $v0,0($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$t2,.LFUN_8007ecec_30
    addiu   $a0,$a0,1
    addiu   $a0,$a0,-1
.LFUN_8007ecec_48:
    lw      $v1,24($t1)
    sll     $zero,$zero,0x0
    addu    $v0,$v1,$a0
    lbu     $v0,0($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_8007ecec_9c
    sll     $zero,$zero,0x0
    addiu   $t2,$zero,40
.LFUN_8007ecec_68:
    addu    $v0,$v1,$a0
    lbu     $v1,0($v0)
    sll     $zero,$zero,0x0
    beq     $v1,$t2,.LFUN_8007ecec_9c
    addu    $v0,$a1,$a3
    sb      $v1,0($v0)
    lw      $v1,24($t1)
    addiu   $a0,$a0,1
    addu    $v0,$v1,$a0
    lbu     $v0,0($v0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_8007ecec_68
    addiu   $a3,$a3,1
.LFUN_8007ecec_9c:
    blez    $a3,.LFUN_8007ecec_c4
    addiu   $v1,$zero,32
    addu    $v0,$a3,$a1
.LFUN_8007ecec_a8:
    lbu     $v0,-1($v0)
    sll     $zero,$zero,0x0
    bne     $v0,$v1,.LFUN_8007ecec_c8
    addu    $v0,$a1,$a3
    addiu   $a3,$a3,-1
    bgtz    $a3,.LFUN_8007ecec_a8
    addu    $v0,$a3,$a1
.LFUN_8007ecec_c4:
    addu    $v0,$a1,$a3
.LFUN_8007ecec_c8:
    sb      $zero,0($v0)
    lw      $v1,24($t1)
    sll     $zero,$zero,0x0
    addu    $v0,$v1,$a0
    lbu     $v0,0($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_8007ecec_114
    sll     $zero,$zero,0x0
.LFUN_8007ecec_e8:
    addu    $v0,$v1,$a0
    lbu     $v1,0($v0)
    addu    $v0,$a2,$t0
    sb      $v1,0($v0)
    lw      $v1,24($t1)
    addiu   $a0,$a0,1
    addu    $v0,$v1,$a0
    lbu     $v0,0($v0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_8007ecec_e8
    addiu   $t0,$t0,1
.LFUN_8007ecec_114:
    blez    $t0,.LFUN_8007ecec_13c
    addiu   $v1,$zero,41
.LFUN_8007ecec_11c:
    addu    $v0,$t0,$a2
    lbu     $v0,-1($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$v1,.LFUN_8007ecec_13c
    sll     $zero,$zero,0x0
    addiu   $t0,$t0,-1
    bgtz    $t0,.LFUN_8007ecec_11c
    sll     $zero,$zero,0x0
.LFUN_8007ecec_13c:
    addu    $v0,$a2,$t0
    sb      $zero,0($v0)
    jr      $ra
    addu    $v0,$t0,$zero
    .end FUN_8007ecec
    .size FUN_8007ecec, . - FUN_8007ecec

/* FUN_8007f1b4 (0x8007f1b4, 40 bytes) */
    .section .text.FUN_8007f1b4,"ax",@progbits
    .globl FUN_8007f1b4
    .globl sym_800280c8
    .type FUN_8007f1b4, @function
    .ent FUN_8007f1b4
FUN_8007f1b4:
    addiu   $sp,$sp,-24
    lui     $v0,0x8011
    addu    $a1,$zero,$zero
    sw      $ra,16($sp)
    jal     sym_800280c8
    sw      $a0,10700($v0)
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8007f1b4
    .size FUN_8007f1b4, . - FUN_8007f1b4

/* FUN_8007f1dc (0x8007f1dc, 60 bytes) */
    .section .text.FUN_8007f1dc,"ax",@progbits
    .globl FUN_8007f1dc
    .globl sym_8002829c
    .type FUN_8007f1dc, @function
    .ent FUN_8007f1dc
FUN_8007f1dc:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_8002829c
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_8007f1dc_2c
    lui     $v1,0x8011
    lw      $v0,10700($v1)
    sll     $zero,$zero,0x0
    blez    $v0,.LFUN_8007f1dc_2c
    addiu   $v0,$zero,-1
    sw      $v0,10700($v1)
.LFUN_8007f1dc_2c:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8007f1dc
    .size FUN_8007f1dc, . - FUN_8007f1dc

/* FUN_8007f4d4 (0x8007f4d4, 36 bytes) */
    .section .text.FUN_8007f4d4,"ax",@progbits
    .globl FUN_8007f4d4
    .globl sym_8002a8b0
    .type FUN_8007f4d4, @function
    .ent FUN_8007f4d4
FUN_8007f4d4:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_8002a8b0
    sll     $zero,$zero,0x0
    lw      $ra,16($sp)
    lui     $v1,0x800e
    sw      $v0,-1684($v1)
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8007f4d4
    .size FUN_8007f4d4, . - FUN_8007f4d4

/* FUN_8007f4f8 (0x8007f4f8, 16 bytes) */
    .section .text.FUN_8007f4f8,"ax",@progbits
    .globl FUN_8007f4f8
    .type FUN_8007f4f8, @function
    .ent FUN_8007f4f8
FUN_8007f4f8:
    lui     $v0,0x800e
    lw      $v0,-1684($v0)
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8007f4f8
    .size FUN_8007f4f8, . - FUN_8007f4f8

/* FUN_8007f508 (0x8007f508, 8 bytes) */
    .section .text.FUN_8007f508,"ax",@progbits
    .globl FUN_8007f508
    .type FUN_8007f508, @function
    .ent FUN_8007f508
FUN_8007f508:
    jr      $ra
    addu    $v0,$zero,$zero
    .end FUN_8007f508
    .size FUN_8007f508, . - FUN_8007f508

/* FUN_8007f510 (0x8007f510, 68 bytes) */
    .section .text.FUN_8007f510,"ax",@progbits
    .globl FUN_8007f510
    .globl sym_8002a8b0
    .type FUN_8007f510, @function
    .ent FUN_8007f510
FUN_8007f510:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    lui     $s0,0x800e
    lw      $v1,-1688($s0)
    addiu   $v0,$zero,1
    beq     $v1,$v0,.LFUN_8007f510_2c
    sw      $ra,20($sp)
    jal     sym_8002a8b0
    sll     $zero,$zero,0x0
    j       .LFUN_8007f510_30
    addiu   $v0,$zero,3
.LFUN_8007f510_2c:
    addiu   $v0,$zero,2
.LFUN_8007f510_30:
    sw      $v0,-1688($s0)
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8007f510
    .size FUN_8007f510, . - FUN_8007f510

/* FUN_8007f554 (0x8007f554, 68 bytes) */
    .section .text.FUN_8007f554,"ax",@progbits
    .globl FUN_8007f554
    .globl sym_8002a8b0
    .type FUN_8007f554, @function
    .ent FUN_8007f554
FUN_8007f554:
    addiu   $sp,$sp,-24
    addiu   $v0,$zero,-1
    beq     $a0,$v0,.LFUN_8007f554_34
    sw      $ra,16($sp)
    jal     sym_8002a8b0
    andi    $a0,$a0,0xffff
    bne     $v0,$zero,.LFUN_8007f554_34
    lui     $a0,0x800e
    lw      $v1,-1688($a0)
    addiu   $v0,$zero,2
    bne     $v1,$v0,.LFUN_8007f554_34
    addiu   $v0,$zero,4
    sw      $v0,-1688($a0)
.LFUN_8007f554_34:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8007f554
    .size FUN_8007f554, . - FUN_8007f554

/* FUN_8007f6a0 (0x8007f6a0, 80 bytes) */
    .section .text.FUN_8007f6a0,"ax",@progbits
    .globl FUN_8007f6a0
    .globl sym_8002a8b0
    .type FUN_8007f6a0, @function
    .ent FUN_8007f6a0
FUN_8007f6a0:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    lui     $s0,0x800e
    lw      $v1,-1688($s0)
    addiu   $v0,$zero,2
    beq     $v1,$v0,.LFUN_8007f6a0_28
    sw      $ra,20($sp)
    addiu   $v0,$zero,4
    bne     $v1,$v0,.LFUN_8007f6a0_3c
    lui     $v0,0x800e
.LFUN_8007f6a0_28:
    jal     sym_8002a8b0
    sll     $zero,$zero,0x0
    addiu   $v0,$zero,3
    sw      $v0,-1688($s0)
    lui     $v0,0x800e
.LFUN_8007f6a0_3c:
    lw      $v0,-1688($v0)
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8007f6a0
    .size FUN_8007f6a0, . - FUN_8007f6a0

/* FUN_8007f6f0 (0x8007f6f0, 24 bytes) */
    .section .text.FUN_8007f6f0,"ax",@progbits
    .globl FUN_8007f6f0
    .globl FUN_8007f708
    .type FUN_8007f6f0, @function
    .ent FUN_8007f6f0
FUN_8007f6f0:
    bne     $a0,$zero,FUN_8007f708
    lui     $v0,0x800e
    lui     $v0,0x800e
    lw      $v0,-1676($v0)
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8007f6f0
    .size FUN_8007f6f0, . - FUN_8007f6f0

/* FUN_8007f708 (0x8007f708, 12 bytes) */
    .section .text.FUN_8007f708,"ax",@progbits
    .globl FUN_8007f708
    .type FUN_8007f708, @function
    .ent FUN_8007f708
FUN_8007f708:
    lw      $v0,-1680($v0)
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8007f708
    .size FUN_8007f708, . - FUN_8007f708

/* FUN_8007f7d4 (0x8007f7d4, 32 bytes) */
    .section .text.FUN_8007f7d4,"ax",@progbits
    .globl FUN_8007f7d4
    .globl sym_8002a8b0
    .type FUN_8007f7d4, @function
    .ent FUN_8007f7d4
FUN_8007f7d4:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_8002a8b0
    sll     $zero,$zero,0x0
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8007f7d4
    .size FUN_8007f7d4, . - FUN_8007f7d4

/* FUN_8007f7f4 (0x8007f7f4, 76 bytes) */
    .section .text.FUN_8007f7f4,"ax",@progbits
    .globl FUN_8007f7f4
    .globl sym_8007f06c
    .type FUN_8007f7f4, @function
    .ent FUN_8007f7f4
FUN_8007f7f4:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    lui     $s0,0x800e
    lw      $v0,-1680($s0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_8007f7f4_3c
    sw      $ra,20($sp)
    jal     sym_8007f06c
    sll     $zero,$zero,0x0
    lui     $v1,0x800e
    sw      $v0,-1676($v1)
    addiu   $v1,$zero,-1
    beq     $v0,$v1,.LFUN_8007f7f4_3c
    addu    $v0,$zero,$zero
    sw      $v1,-1680($s0)
.LFUN_8007f7f4_3c:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_8007f7f4
    .size FUN_8007f7f4, . - FUN_8007f7f4

/* FUN_80083e34 (0x80083e34, 132 bytes) */
    .section .text.FUN_80083e34,"ax",@progbits
    .globl FUN_80083e34
    .globl FUN_80083eb8
    .type FUN_80083e34, @function
    .ent FUN_80083e34
FUN_80083e34:
    addu    $t1,$a0,$zero
    bne     $t1,$zero,FUN_80083eb8
    lui     $a0,0x8010
    addu    $a3,$zero,$zero
    lui     $v0,0x8010
    addiu   $a2,$v0,20188
.LFUN_80083e34_18:
    addu    $a1,$zero,$zero
    addu    $a0,$a2,$zero
    addu    $v0,$a0,$a1
.LFUN_80083e34_24:
    xor     $v1,$a3,$a1
    sltiu   $v1,$v1,1
    sb      $v1,0($v0)
    addiu   $a1,$a1,1
    slti    $v0,$a1,8
    bne     $v0,$zero,.LFUN_80083e34_24
    addu    $v0,$a0,$a1
    addiu   $a3,$a3,1
    slti    $v0,$a3,8
    bne     $v0,$zero,.LFUN_80083e34_18
    addiu   $a2,$a2,8
    addiu   $a0,$zero,5
    addiu   $a1,$zero,7
    lui     $v1,0x8010
    addiu   $v1,$v1,20188
    sll     $v0,$a3,0x3
    addu    $v0,$v0,$v1
    addu    $v0,$v0,$a1
.LFUN_80083e34_6c:
    sb      $a0,0($v0)
    addiu   $a1,$a1,-1
    bgez    $a1,.LFUN_80083e34_6c
    addiu   $v0,$v0,-1
    jr      $ra
    addu    $v0,$a3,$zero
    .end FUN_80083e34
    .size FUN_80083e34, . - FUN_80083e34

/* FUN_80083eb8 (0x80083eb8, 176 bytes) */
    .section .text.FUN_80083eb8,"ax",@progbits
    .globl FUN_80083eb8
    .globl sym_80083eb0
    .type FUN_80083eb8, @function
    .ent FUN_80083eb8
FUN_80083eb8:
    lbu     $v1,20188($a0)
    addiu   $v0,$zero,5
    beq     $v1,$v0,.LFUN_80083eb8_64
    addu    $a3,$zero,$zero
    addiu   $t2,$zero,8
    addu    $t0,$v0,$zero
    addiu   $a2,$a0,20188
.LFUN_80083eb8_1c:
    addu    $a1,$zero,$zero
    addu    $v0,$t1,$a1
.LFUN_80083eb8_24:
    addu    $v1,$a2,$a1
    lbu     $a0,0($v0)
    lbu     $v0,0($v1)
    sll     $zero,$zero,0x0
    bne     $a0,$v0,.LFUN_80083eb8_4c
    sll     $zero,$zero,0x0
    addiu   $a1,$a1,1
    slti    $v0,$a1,8
    bne     $v0,$zero,.LFUN_80083eb8_24
    addu    $v0,$t1,$a1
.LFUN_80083eb8_4c:
    beq     $a1,$t2,sym_80083eb0
    addiu   $a2,$a2,8
    lbu     $v0,0($a2)
    sll     $zero,$zero,0x0
    bne     $v0,$t0,.LFUN_80083eb8_1c
    addiu   $a3,$a3,1
.LFUN_80083eb8_64:
    addu    $a1,$zero,$zero
    lui     $v0,0x8010
    addiu   $v0,$v0,20188
    sll     $v1,$a3,0x3
    addu    $t0,$v1,$v0
    addiu   $v0,$v0,8
    addu    $a2,$v1,$v0
    addiu   $t2,$zero,5
.LFUN_80083eb8_84:
    addu    $a0,$t0,$a1
    addu    $v0,$t1,$a1
    addu    $v1,$a2,$a1
    lbu     $v0,0($v0)
    addiu   $a1,$a1,1
    sb      $v0,0($a0)
    slti    $v0,$a1,8
    bne     $v0,$zero,.LFUN_80083eb8_84
    sb      $t2,0($v1)
    jr      $ra
    addu    $v0,$a3,$zero
    .end FUN_80083eb8
    .size FUN_80083eb8, . - FUN_80083eb8

/* FUN_80085a90 (0x80085a90, 192 bytes) */
    .section .text.FUN_80085a90,"ax",@progbits
    .globl FUN_80085a90
    .type FUN_80085a90, @function
    .ent FUN_80085a90
FUN_80085a90:
    lui     $v0,0x800f
    addiu   $a1,$v0,10504
    lui     $v0,0x1
    addu    $v1,$a1,$v0
    lbu     $v0,10110($v1)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_80085a90_b8
    addu    $a2,$zero,$zero
    lbu     $v0,10107($v1)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_80085a90_b8
    addu    $a0,$a2,$zero
    addiu   $t1,$zero,7
    addu    $a3,$v1,$zero
    addiu   $t0,$zero,1
    addu    $v1,$a1,$zero
.LFUN_80085a90_40:
    lbu     $v0,146($v1)
    sll     $zero,$zero,0x0
    beq     $v0,$t1,.LFUN_80085a90_a0
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_80085a90_a4
    ori     $v0,$zero,0x9284
    lbu     $a1,10110($a3)
    sll     $zero,$zero,0x0
    srav    $v0,$a1,$a0
    andi    $v0,$v0,0x1
    bne     $v0,$zero,.LFUN_80085a90_a4
    ori     $v0,$zero,0x9284
    lw      $v0,104($v1)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_80085a90_94
    sllv    $v0,$t0,$a0
    lw      $v0,108($v1)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_80085a90_a4
    ori     $v0,$zero,0x9284
    sllv    $v0,$t0,$a0
.LFUN_80085a90_94:
    or      $v0,$a1,$v0
    sb      $v0,10110($a3)
    addiu   $a2,$zero,1
.LFUN_80085a90_a0:
    ori     $v0,$zero,0x9284
.LFUN_80085a90_a4:
    addu    $v1,$v1,$v0
    addiu   $a0,$a0,1
    slti    $v0,$a0,2
    bne     $v0,$zero,.LFUN_80085a90_40
    sll     $zero,$zero,0x0
.LFUN_80085a90_b8:
    jr      $ra
    addu    $v0,$a2,$zero
    .end FUN_80085a90
    .size FUN_80085a90, . - FUN_80085a90

/* FUN_80095be0 (0x80095be0, 248 bytes) */
    .section .text.FUN_80095be0,"ax",@progbits
    .globl FUN_80095be0
    .globl sym_80095cd8
    .type FUN_80095be0, @function
    .ent FUN_80095be0
FUN_80095be0:
    addiu   $sp,$sp,-96
    sw      $s3,84($sp)
    addu    $s3,$a0,$zero
    addiu   $v1,$sp,16
    lui     $v0,0x8002
    addiu   $v0,$v0,-5712
    addiu   $a0,$v0,48
    sw      $ra,88($sp)
    sw      $s2,80($sp)
    sw      $s1,76($sp)
    sw      $s0,72($sp)
.LFUN_80095be0_2c:
    lw      $a3,0($v0)
    lw      $t0,4($v0)
    lw      $t1,8($v0)
    lw      $t2,12($v0)
    sw      $a3,0($v1)
    sw      $t0,4($v1)
    sw      $t1,8($v1)
    sw      $t2,12($v1)
    addiu   $v0,$v0,16
    bne     $v0,$a0,.LFUN_80095be0_2c
    addiu   $v1,$v1,16
    addu    $s2,$zero,$zero
    lw      $a3,0($v0)
    sll     $zero,$zero,0x0
    sw      $a3,0($v1)
    lw      $v0,16($sp)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_80095be0_dc
    addiu   $v1,$sp,16
    addu    $s0,$s2,$zero
.LFUN_80095be0_7c:
    addu    $s1,$v1,$zero
    addu    $v0,$s1,$s0
    addu    $a0,$s3,$zero
    lw      $a1,0($v0)
    jal     sym_80095cd8
    addiu   $a2,$zero,3
    beq     $v0,$zero,.LFUN_80095be0_b4
    addiu   $s0,$s0,4
    addiu   $s2,$s2,1
    addu    $v0,$s1,$s0
    lw      $v0,0($v0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_80095be0_7c
    addu    $v1,$s1,$zero
.LFUN_80095be0_b4:
    sll     $v0,$s2,0x2
    addu    $v0,$s1,$v0
    lw      $v0,0($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_80095be0_dc
    addiu   $v0,$zero,68
    sb      $v0,0($s3)
    sb      $v0,1($s3)
    addiu   $v0,$zero,82
    sb      $v0,2($s3)
.LFUN_80095be0_dc:
    lw      $ra,88($sp)
    lw      $s3,84($sp)
    lw      $s2,80($sp)
    lw      $s1,76($sp)
    lw      $s0,72($sp)
    jr      $ra
    addiu   $sp,$sp,96
    .end FUN_80095be0
    .size FUN_80095be0, . - FUN_80095be0

/* FUN_80096180 (0x80096180, 360 bytes) */
    .section .text.FUN_80096180,"ax",@progbits
    .globl FUN_80096180
    .globl sym_8009d478
    .globl sym_8009ddcc
    .globl sym_8002d60c
    .type FUN_80096180, @function
    .ent FUN_80096180
FUN_80096180:
    addiu   $sp,$sp,-32
    sw      $s1,20($sp)
    addu    $s1,$zero,$zero
    sw      $ra,24($sp)
    beq     $a0,$zero,.LFUN_80096180_150
    sw      $s0,16($sp)
    addiu   $a1,$zero,2
    bne     $a0,$a1,.LFUN_80096180_ec
    addiu   $v0,$zero,1
    lui     $v0,0x800f
    addiu   $v0,$v0,10504
    lui     $v1,0x1
    addu    $v0,$v0,$v1
    lbu     $v0,10110($v0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_80096180_54
    addu    $v0,$zero,$zero
    lui     $v0,0x800e
    lw      $v0,2840($v0)
    sll     $zero,$zero,0x0
    lbu     $v0,125($v0)
.LFUN_80096180_54:
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_80096180_94
    lui     $v0,0x800b
    lui     $s0,0x800f
    addiu   $s0,$s0,15276
    lw      $v0,-14100($v0)
    addu    $a0,$s0,$zero
    jal     sym_8009d478
    sb      $zero,0($v0)
    jal     sym_8009ddcc
    addu    $a0,$zero,$zero
    ori     $v0,$zero,0xed5c
    addu    $s0,$s0,$v0
    addiu   $v0,$zero,1
    j       .LFUN_80096180_d0
    sb      $v0,10114($s0)
.LFUN_80096180_94:
    addiu   $a2,$zero,-1
    addiu   $a1,$zero,14
    lui     $v0,0x8011
    addiu   $v0,$v0,20984
    addiu   $a0,$v0,588
    lui     $v0,0x800f
    addiu   $v0,$v0,10504
    lui     $v1,0x1
    addu    $v0,$v0,$v1
    sb      $zero,10114($v0)
    sb      $zero,10115($v0)
.LFUN_80096180_c0:
    sh      $a2,38($a0)
    addiu   $a1,$a1,-1
    bgez    $a1,.LFUN_80096180_c0
    addiu   $a0,$a0,-42
.LFUN_80096180_d0:
    lui     $v0,0x800f
    addiu   $v0,$v0,10504
    lui     $v1,0x1
    addu    $v0,$v0,$v1
    addiu   $v1,$zero,1
    j       .LFUN_80096180_148
    sb      $v1,10105($v0)
.LFUN_80096180_ec:
    bne     $a0,$v0,.LFUN_80096180_10c
    addiu   $a2,$zero,-1
    lui     $v0,0x800f
    addiu   $v0,$v0,10504
    lui     $v1,0x1
    addu    $v0,$v0,$v1
    j       .LFUN_80096180_144
    sb      $a1,10105($v0)
.LFUN_80096180_10c:
    addiu   $a1,$zero,14
    lui     $v0,0x8011
    addiu   $v0,$v0,20984
    addiu   $a0,$v0,588
    lui     $v0,0x800f
    addiu   $v0,$v0,10504
    lui     $v1,0x1
    addu    $v0,$v0,$v1
    sb      $zero,10105($v0)
    sb      $zero,10115($v0)
.LFUN_80096180_134:
    sh      $a2,38($a0)
    addiu   $a1,$a1,-1
    bgez    $a1,.LFUN_80096180_134
    addiu   $a0,$a0,-42
.LFUN_80096180_144:
    addiu   $s1,$zero,1
.LFUN_80096180_148:
    jal     sym_8002d60c
    addu    $a0,$zero,$zero
.LFUN_80096180_150:
    addu    $v0,$s1,$zero
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end FUN_80096180
    .size FUN_80096180, . - FUN_80096180

/* FUN_800962e8 (0x800962e8, 340 bytes) */
    .section .text.FUN_800962e8,"ax",@progbits
    .globl FUN_800962e8
    .globl sym_80085558
    .type FUN_800962e8, @function
    .ent FUN_800962e8
FUN_800962e8:
    addiu   $sp,$sp,-32
    addu    $t3,$a0,$zero
    sw      $s2,24($sp)
    addu    $s2,$a1,$zero
    sw      $s0,16($sp)
    addiu   $s0,$zero,-1
    addu    $a2,$zero,$zero
    lui     $v0,0x8011
    addiu   $t2,$v0,20984
    addiu   $t1,$zero,1
    sw      $ra,28($sp)
    sw      $s1,20($sp)
.LFUN_800962e8_30:
    addu    $t0,$zero,$zero
    addu    $a1,$t0,$zero
    addu    $a3,$t1,$zero
    addu    $v0,$a1,$a3
.LFUN_800962e8_40:
    addu    $v0,$v0,$t2
    addu    $v1,$t3,$a1
    lbu     $a0,24($v0)
    lbu     $v0,0($v1)
    sll     $zero,$zero,0x0
    bne     $a0,$v0,.LFUN_800962e8_78
    addiu   $a1,$a1,1
    slti    $v0,$a1,8
    bne     $v0,$zero,.LFUN_800962e8_40
    addu    $v0,$a1,$a3
.LFUN_800962e8_68:
    bne     $t0,$zero,.LFUN_800962e8_80
    sll     $zero,$zero,0x0
    j       .LFUN_800962e8_90
    addu    $s0,$a2,$zero
.LFUN_800962e8_78:
    j       .LFUN_800962e8_68
    addiu   $t0,$zero,1
.LFUN_800962e8_80:
    addiu   $a2,$a2,1
    slti    $v0,$a2,15
    bne     $v0,$zero,.LFUN_800962e8_30
    addiu   $t1,$t1,42
.LFUN_800962e8_90:
    bgez    $s0,.LFUN_800962e8_a0
    lui     $v1,0x8011
    j       .LFUN_800962e8_13c
    addiu   $v0,$zero,-1
.LFUN_800962e8_a0:
    addiu   $v1,$v1,20984
    sll     $v0,$s0,0x2
    addu    $v0,$v0,$s0
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$s0
    sll     $v0,$v0,0x1
    addu    $v0,$v0,$v1
    lbu     $s1,40($v0)
    jal     sym_80085558
    sll     $zero,$zero,0x0
    addu    $v1,$v0,$zero
    bltz    $v1,.LFUN_800962e8_f8
    slti    $v0,$v1,2
    bne     $v0,$zero,.LFUN_800962e8_fc
    sltiu   $v0,$s1,2
    addiu   $v0,$zero,2
    beq     $v1,$v0,.LFUN_800962e8_f0
    xori    $v0,$s1,0x2
    j       .LFUN_800962e8_fc
    addu    $v0,$zero,$zero
.LFUN_800962e8_f0:
    j       .LFUN_800962e8_fc
    sltiu   $v0,$v0,1
.LFUN_800962e8_f8:
    addu    $v0,$zero,$zero
.LFUN_800962e8_fc:
    beq     $v0,$zero,.LFUN_800962e8_134
    lui     $v1,0x8011
    addiu   $v1,$v1,20984
    sll     $v0,$s0,0x2
    addu    $v0,$v0,$s0
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$s0
    sll     $v0,$v0,0x1
    addu    $v0,$v0,$v1
    lh      $v1,38($v0)
    lhu     $v0,0($s2)
    sll     $zero,$zero,0x0
    beq     $v1,$v0,.LFUN_800962e8_13c
    addu    $v0,$s0,$zero
.LFUN_800962e8_134:
    addiu   $s0,$zero,-1
    addu    $v0,$s0,$zero
.LFUN_800962e8_13c:
    lw      $ra,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end FUN_800962e8
    .size FUN_800962e8, . - FUN_800962e8

/* FUN_800964d4 (0x800964d4, 68 bytes) */
    .section .text.FUN_800964d4,"ax",@progbits
    .globl FUN_800964d4
    .globl sym_8007f0a4
    .type FUN_800964d4, @function
    .ent FUN_800964d4
FUN_800964d4:
    addiu   $sp,$sp,-24
    lui     $v1,0x8011
    addiu   $v1,$v1,20984
    sll     $v0,$a0,0x2
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x1
    addu    $v0,$v0,$v1
    sw      $ra,16($sp)
    lh      $a0,38($v0)
    jal     sym_8007f0a4
    sll     $zero,$zero,0x0
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_800964d4
    .size FUN_800964d4, . - FUN_800964d4

/* FUN_800966a8 (0x800966a8, 24 bytes) */
    .section .text.FUN_800966a8,"ax",@progbits
    .globl FUN_800966a8
    .type FUN_800966a8, @function
    .ent FUN_800966a8
FUN_800966a8:
    lui     $v0,0x800e
    lw      $v0,2840($v0)
    sll     $zero,$zero,0x0
    lbu     $v0,136($v0)
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_800966a8
    .size FUN_800966a8, . - FUN_800966a8

/* FUN_800966c0 (0x800966c0, 8 bytes) */
    .section .text.FUN_800966c0,"ax",@progbits
    .globl FUN_800966c0
    .type FUN_800966c0, @function
    .ent FUN_800966c0
FUN_800966c0:
    jr      $ra
    addu    $v0,$zero,$zero
    .end FUN_800966c0
    .size FUN_800966c0, . - FUN_800966c0

/* FUN_800966c8 (0x800966c8, 48 bytes) */
    .section .text.FUN_800966c8,"ax",@progbits
    .globl FUN_800966c8
    .type FUN_800966c8, @function
    .ent FUN_800966c8
FUN_800966c8:
    lui     $v0,0x800e
    lw      $v0,2840($v0)
    sll     $zero,$zero,0x0
    lbu     $v0,136($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_800966c8_28
    addiu   $v0,$zero,2
    addiu   $v0,$v0,-1
.LFUN_800966c8_20:
    bgez    $v0,.LFUN_800966c8_20
    addiu   $v0,$v0,-1
.LFUN_800966c8_28:
    jr      $ra
    addu    $v0,$zero,$zero
    .end FUN_800966c8
    .size FUN_800966c8, . - FUN_800966c8

/* FUN_800970b8 (0x800970b8, 124 bytes) */
    .section .text.FUN_800970b8,"ax",@progbits
    .globl FUN_800970b8
    .type FUN_800970b8, @function
    .ent FUN_800970b8
FUN_800970b8:
    sll     $a0,$a0,0x10
    lui     $v0,0x800e
    addiu   $v0,$v0,-884
    sll     $a1,$a1,0x10
    sra     $a1,$a1,0x10
    addu    $v0,$a1,$v0
    lbu     $v0,0($v0)
    sra     $a0,$a0,0x10
    mult    $a0,$v0
    mflo    $a0
    lui     $v0,0x6666
    ori     $v0,$v0,0x6667
    mult    $a0,$v0
    lui     $v0,0x800e
    addiu   $v0,$v0,-876
    addu    $a1,$a1,$v0
    mfhi    $v1
    lbu     $v0,0($a1)
    sll     $zero,$zero,0x0
    mult    $v0,$a2
    mflo    $t0
    lui     $v0,0x8888
    ori     $v0,$v0,0x8889
    multu   $t0,$v0
    sra     $a0,$a0,0x1f
    sra     $v0,$v1,0x3
    subu    $v0,$v0,$a0
    mfhi    $t0
    srl     $v1,$t0,0xd
    jr      $ra
    addu    $v0,$v0,$v1
    .end FUN_800970b8
    .size FUN_800970b8, . - FUN_800970b8

/* FUN_80097fc0 (0x80097fc0, 144 bytes) */
    .section .text.FUN_80097fc0,"ax",@progbits
    .globl FUN_80097fc0
    .globl FUN_80098258
    .type FUN_80097fc0, @function
    .ent FUN_80097fc0
FUN_80097fc0:
    addiu   $sp,$sp,-32
    addu    $t1,$a1,$zero
    addu    $t5,$a2,$zero
    lui     $t3,0xff
    ori     $t3,$t3,0xffff
    lw      $t4,48($sp)
    lui     $t2,0x8000
    sw      $ra,24($sp)
    lw      $a0,12($a0)
.LFUN_80097fc0_24:
    sll     $zero,$zero,0x0
    lw      $v1,0($a0)
    addiu   $a0,$a0,4
    lw      $a2,0($a0)
    and     $v0,$v1,$t3
    or      $t0,$v0,$t2
    lui     $v0,0xff00
    and     $a1,$v1,$v0
    slt     $v0,$t1,$a2
    beq     $v0,$zero,.LFUN_80097fc0_6c
    addiu   $a0,$a0,4
    addu    $a2,$t1,$zero
    sw      $a3,16($sp)
    addu    $a3,$t5,$zero
    jal     FUN_80098258
    sw      $t4,20($sp)
    j       .LFUN_80097fc0_80
    sll     $zero,$zero,0x0
.LFUN_80097fc0_6c:
    beq     $t0,$t2,.LFUN_80097fc0_7c
    subu    $t1,$t1,$a2
    j       .LFUN_80097fc0_24
    addu    $a0,$t0,$zero
.LFUN_80097fc0_7c:
    addu    $v0,$zero,$zero
.LFUN_80097fc0_80:
    lw      $ra,24($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,32
    .end FUN_80097fc0
    .size FUN_80097fc0, . - FUN_80097fc0

/* FUN_80098258 (0x80098258, 252 bytes) */
    .section .text.FUN_80098258,"ax",@progbits
    .globl FUN_80098258
    .globl FUN_80098438
    .globl FUN_80098354
    .type FUN_80098258, @function
    .ent FUN_80098258
FUN_80098258:
    addiu   $sp,$sp,-56
    addu    $t1,$a2,$zero
    addu    $t2,$a3,$zero
    sra     $a1,$a1,0x1a
    andi    $a2,$a1,0x7
    lw      $t0,72($sp)
    lw      $a3,76($sp)
    andi    $a1,$a1,0x1
    sw      $ra,48($sp)
    beq     $a1,$zero,.LFUN_80098258_ec
    addu    $v0,$zero,$zero
    lui     $v0,0x8002
    addiu   $t6,$v0,-5560
    lw      $t3,0($t6)
    lw      $t4,4($t6)
    lw      $t5,8($t6)
    sw      $t3,16($sp)
    sw      $t4,20($sp)
    sw      $t5,24($sp)
    lw      $t3,12($t6)
    lw      $t4,16($t6)
    lw      $t5,20($t6)
    sw      $t3,28($sp)
    sw      $t4,32($sp)
    sw      $t5,36($sp)
    lw      $t3,24($t6)
    lw      $t4,28($t6)
    sw      $t3,40($sp)
    sw      $t4,44($sp)
    beq     $t0,$zero,.LFUN_80098258_a0
    addiu   $v1,$sp,16
    sll     $v0,$a2,0x2
    addu    $v0,$v1,$v0
    lw      $v0,0($v0)
    sll     $zero,$zero,0x0
    sll     $v0,$v0,0x1
    mult    $v0,$t1
    mflo    $t3
    j       .LFUN_80098258_c4
    addu    $a0,$a0,$t3
.LFUN_80098258_a0:
    sll     $v0,$a2,0x2
    addu    $v0,$v1,$v0
    lw      $v0,0($v0)
    sll     $zero,$zero,0x0
    sll     $v1,$v0,0x1
    mult    $v1,$t1
    mflo    $t3
    addu    $v0,$t3,$v0
    addu    $a0,$a0,$v0
.LFUN_80098258_c4:
    andi    $v0,$a2,0x4
    bne     $v0,$zero,.LFUN_80098258_e0
    sll     $zero,$zero,0x0
    jal     FUN_80098438
    addu    $a1,$t2,$zero
    j       .LFUN_80098258_ec
    addiu   $v0,$zero,1
.LFUN_80098258_e0:
    jal     FUN_80098354
    addu    $a1,$t2,$zero
    addiu   $v0,$zero,1
.LFUN_80098258_ec:
    lw      $ra,48($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,56
    .end FUN_80098258
    .size FUN_80098258, . - FUN_80098258

/* FUN_80098354 (0x80098354, 116 bytes) */
    .section .text.FUN_80098354,"ax",@progbits
    .globl FUN_80098354
    .globl FUN_800983c8
    .globl sym_80098430
    .type FUN_80098354, @function
    .ent FUN_80098354
FUN_80098354:
    andi    $v0,$a3,0x1
    beq     $v0,$zero,FUN_800983c8
    sll     $zero,$zero,0x0
    lbu     $v0,0($a1)
    sll     $zero,$zero,0x0
    sb      $v0,12($a0)
    lbu     $v0,1($a1)
    sll     $zero,$zero,0x0
    sb      $v0,13($a0)
    lbu     $v0,2($a1)
    sll     $zero,$zero,0x0
    sb      $v0,24($a0)
    lbu     $v0,3($a1)
    sll     $zero,$zero,0x0
    sb      $v0,25($a0)
    lbu     $v0,4($a1)
    sll     $zero,$zero,0x0
    sb      $v0,36($a0)
    lbu     $v0,5($a1)
    sll     $zero,$zero,0x0
    sb      $v0,37($a0)
    andi    $v0,$a2,0x2
    beq     $v0,$zero,sym_80098430
    andi    $v0,$a3,0x2
    beq     $v0,$zero,sym_80098430
    sll     $zero,$zero,0x0
    lbu     $v0,6($a1)
    jr      $ra
    sb      $v0,48($a0)
    .end FUN_80098354
    .size FUN_80098354, . - FUN_80098354

/* FUN_800983c8 (0x800983c8, 112 bytes) */
    .section .text.FUN_800983c8,"ax",@progbits
    .globl FUN_800983c8
    .type FUN_800983c8, @function
    .ent FUN_800983c8
FUN_800983c8:
    lbu     $v0,12($a0)
    sll     $zero,$zero,0x0
    sb      $v0,0($a1)
    lbu     $v0,13($a0)
    sll     $zero,$zero,0x0
    sb      $v0,1($a1)
    lbu     $v0,24($a0)
    sll     $zero,$zero,0x0
    sb      $v0,2($a1)
    lbu     $v0,25($a0)
    sll     $zero,$zero,0x0
    sb      $v0,3($a1)
    lbu     $v0,36($a0)
    sll     $zero,$zero,0x0
    sb      $v0,4($a1)
    lbu     $v0,37($a0)
    sll     $zero,$zero,0x0
    sb      $v0,5($a1)
    andi    $v0,$a2,0x2
    beq     $v0,$zero,.LFUN_800983c8_68
    andi    $v0,$a3,0x2
    beq     $v0,$zero,.LFUN_800983c8_68
    sll     $zero,$zero,0x0
    lbu     $v0,48($a0)
    sll     $zero,$zero,0x0
    sb      $v0,6($a1)
.LFUN_800983c8_68:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_800983c8
    .size FUN_800983c8, . - FUN_800983c8

/* FUN_80098438 (0x80098438, 116 bytes) */
    .section .text.FUN_80098438,"ax",@progbits
    .globl FUN_80098438
    .globl FUN_800984ac
    .globl sym_80098514
    .type FUN_80098438, @function
    .ent FUN_80098438
FUN_80098438:
    andi    $v0,$a3,0x1
    beq     $v0,$zero,FUN_800984ac
    sll     $zero,$zero,0x0
    lbu     $v0,0($a1)
    sll     $zero,$zero,0x0
    sb      $v0,12($a0)
    lbu     $v0,1($a1)
    sll     $zero,$zero,0x0
    sb      $v0,13($a0)
    lbu     $v0,2($a1)
    sll     $zero,$zero,0x0
    sb      $v0,20($a0)
    lbu     $v0,3($a1)
    sll     $zero,$zero,0x0
    sb      $v0,21($a0)
    lbu     $v0,4($a1)
    sll     $zero,$zero,0x0
    sb      $v0,28($a0)
    lbu     $v0,5($a1)
    sll     $zero,$zero,0x0
    sb      $v0,29($a0)
    andi    $v0,$a2,0x2
    beq     $v0,$zero,sym_80098514
    andi    $v0,$a3,0x2
    beq     $v0,$zero,sym_80098514
    sll     $zero,$zero,0x0
    lbu     $v0,6($a1)
    jr      $ra
    sb      $v0,36($a0)
    .end FUN_80098438
    .size FUN_80098438, . - FUN_80098438

/* FUN_800984ac (0x800984ac, 112 bytes) */
    .section .text.FUN_800984ac,"ax",@progbits
    .globl FUN_800984ac
    .type FUN_800984ac, @function
    .ent FUN_800984ac
FUN_800984ac:
    lbu     $v0,12($a0)
    sll     $zero,$zero,0x0
    sb      $v0,0($a1)
    lbu     $v0,13($a0)
    sll     $zero,$zero,0x0
    sb      $v0,1($a1)
    lbu     $v0,20($a0)
    sll     $zero,$zero,0x0
    sb      $v0,2($a1)
    lbu     $v0,21($a0)
    sll     $zero,$zero,0x0
    sb      $v0,3($a1)
    lbu     $v0,28($a0)
    sll     $zero,$zero,0x0
    sb      $v0,4($a1)
    lbu     $v0,29($a0)
    sll     $zero,$zero,0x0
    sb      $v0,5($a1)
    andi    $v0,$a2,0x2
    beq     $v0,$zero,.LFUN_800984ac_68
    andi    $v0,$a3,0x2
    beq     $v0,$zero,.LFUN_800984ac_68
    sll     $zero,$zero,0x0
    lbu     $v0,36($a0)
    sll     $zero,$zero,0x0
    sb      $v0,6($a1)
.LFUN_800984ac_68:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_800984ac
    .size FUN_800984ac, . - FUN_800984ac

/* FUN_800990c8 (0x800990c8, 56 bytes) */
    .section .text.FUN_800990c8,"ax",@progbits
    .globl FUN_800990c8
    .globl sym_800991b4
    .type FUN_800990c8, @function
    .ent FUN_800990c8
FUN_800990c8:
    lui     $v0,0x8011
    lw      $v1,27728($v0)
    addiu   $sp,$sp,-24
    sltiu   $v0,$v1,5
    beq     $v0,$zero,sym_800991b4
    sw      $ra,16($sp)
    lui     $v0,0x8002
    addiu   $v0,$v0,-3224
    sll     $v1,$v1,0x2
    addu    $v1,$v1,$v0
    lw      $v0,0($v1)
    sll     $zero,$zero,0x0
    jr      $v0
    sll     $zero,$zero,0x0
    .end FUN_800990c8
    .size FUN_800990c8, . - FUN_800990c8

/* FUN_80099100 (0x80099100, 224 bytes) */
    .section .text.FUN_80099100,"ax",@progbits
    .globl FUN_80099100
    .globl sym_80025b18
    .globl sym_8002829c
    .globl sym_80028150
    .globl sym_8002821c
    .type FUN_80099100, @function
    .ent FUN_80099100
FUN_80099100:
    jal     sym_80025b18
    addiu   $a0,$zero,2
    lui     $v0,0x8011
    lw      $v1,27728($v0)
    lui     $a0,0x8011
    sw      $zero,27724($a0)
    addiu   $v1,$v1,1
    j       .LFUN_80099100_b4
    sw      $v1,27728($v0)
    lui     $v1,0x8011
    lw      $v0,27724($v1)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,1
    jal     sym_8002829c
    sw      $v0,27724($v1)
    bne     $v0,$zero,.LFUN_80099100_b8
    lui     $v0,0x8011
    j       .LFUN_80099100_a4
    lui     $v1,0x8011
    sll     $a0,$a0,0x10
    sra     $a0,$a0,0x10
    sll     $a1,$a1,0x10
    sll     $a2,$a2,0x10
    sra     $a1,$a1,0x10
    jal     sym_80028150
    sra     $a2,$a2,0x10
    lui     $a0,0x8011
    lw      $v0,27728($a0)
    lui     $v1,0x8011
    sw      $zero,27724($v1)
    addiu   $v0,$v0,1
    j       .LFUN_80099100_b4
    sw      $v0,27728($a0)
    lui     $v1,0x8011
    lw      $v0,27724($v1)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,1
    jal     sym_8002821c
    sw      $v0,27724($v1)
    beq     $v0,$zero,.LFUN_80099100_b4
    lui     $v1,0x8011
.LFUN_80099100_a4:
    lw      $v0,27728($v1)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,1
    sw      $v0,27728($v1)
.LFUN_80099100_b4:
    lui     $v0,0x8011
.LFUN_80099100_b8:
    lh      $v0,27732($v0)
    sll     $zero,$zero,0x0
    bgtz    $v0,.LFUN_80099100_d0
    addiu   $v0,$zero,-1
    lui     $v0,0x8011
    lw      $v0,27728($v0)
.LFUN_80099100_d0:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_80099100
    .size FUN_80099100, . - FUN_80099100

/* FUN_80099aa4 (0x80099aa4, 36 bytes) */
    .section .text.FUN_80099aa4,"ax",@progbits
    .globl FUN_80099aa4
    .globl FUN_80099ac8
    .type FUN_80099aa4, @function
    .ent FUN_80099aa4
FUN_80099aa4:
    slt     $v0,$a1,$a0
    bne     $v0,$zero,FUN_80099ac8
    addu    $v0,$a0,$zero
    addu    $v0,$a2,$zero
    slt     $v1,$v0,$a1
    bne     $v1,$zero,FUN_80099ac8
    sll     $zero,$zero,0x0
    jr      $ra
    addu    $v0,$a1,$zero
    .end FUN_80099aa4
    .size FUN_80099aa4, . - FUN_80099aa4

/* FUN_80099ac8 (0x80099ac8, 8 bytes) */
    .section .text.FUN_80099ac8,"ax",@progbits
    .globl FUN_80099ac8
    .type FUN_80099ac8, @function
    .ent FUN_80099ac8
FUN_80099ac8:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_80099ac8
    .size FUN_80099ac8, . - FUN_80099ac8

/* FUN_80099ad0 (0x80099ad0, 72 bytes) */
    .section .text.FUN_80099ad0,"ax",@progbits
    .globl FUN_80099ad0
    .globl sym_8003bae8
    .type FUN_80099ad0, @function
    .ent FUN_80099ad0
FUN_80099ad0:
    addiu   $sp,$sp,-24
    sw      $ra,20($sp)
    beq     $a0,$zero,.LFUN_80099ad0_18
    sw      $s0,16($sp)
    lui     $v0,0x8011
    sw      $zero,27736($v0)
.LFUN_80099ad0_18:
    lui     $a0,0x8002
    lui     $s0,0x8011
    lw      $a1,27736($s0)
    jal     sym_8003bae8
    addiu   $a0,$a0,-3204
    lw      $v0,27736($s0)
    lw      $ra,20($sp)
    addiu   $v0,$v0,1
    sw      $v0,27736($s0)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_80099ad0
    .size FUN_80099ad0, . - FUN_80099ad0

/* FUN_8009a798 (0x8009a798, 908 bytes) */
    .section .text.FUN_8009a798,"ax",@progbits
    .globl FUN_8009a798
    .globl sym_8002d13c
    .globl sym_8002d3b0
    .globl sym_8002d228
    .globl sym_8002cec0
    .globl sym_8009b8bc
    .globl sym_8009b82c
    .globl sym_8009b93c
    .globl sym_8009b858
    .type FUN_8009a798, @function
    .ent FUN_8009a798
FUN_8009a798:
    lw      $v0,2844($v1)
    j       .LFUN_8009a798_370
    sw      $zero,96($v0)
    lui     $s0,0x800e
    lw      $a1,2844($s0)
    ori     $a2,$zero,0x8001
    lbu     $a0,12($a1)
    jal     sym_8002d13c
    addiu   $a1,$a1,24
    lw      $a0,2844($s0)
    addiu   $v1,$zero,-1
    bne     $v0,$v1,.LFUN_8009a798_80
    sw      $v0,108($a0)
    lw      $v0,96($a0)
    sll     $zero,$zero,0x0
    sltiu   $v0,$v0,21
    bne     $v0,$zero,.LFUN_8009a798_64
    addiu   $v0,$zero,34
    sb      $v0,2($a0)
    lw      $v0,2844($s0)
    sll     $zero,$zero,0x0
    sb      $zero,3($v0)
    lw      $v1,2844($s0)
    addiu   $v0,$zero,1
    sw      $v0,92($v1)
.LFUN_8009a798_64:
    lw      $v1,2844($s0)
    sll     $zero,$zero,0x0
    lw      $v0,96($v1)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,1
    j       .LFUN_8009a798_370
    sw      $v0,96($v1)
.LFUN_8009a798_80:
    j       .LFUN_8009a798_118
    addiu   $v0,$zero,17
    lui     $s0,0x800e
    lw      $a0,2844($s0)
    sll     $zero,$zero,0x0
    lbu     $v1,3($a0)
    addiu   $s1,$zero,1
    beq     $v1,$s1,.LFUN_8009a798_114
    slti    $v0,$v1,2
    beq     $v0,$zero,.LFUN_8009a798_bc
    addiu   $v0,$zero,2
    beq     $v1,$zero,.LFUN_8009a798_cc
    addu    $v0,$s2,$zero
    j       .LFUN_8009a798_374
    sll     $zero,$zero,0x0
.LFUN_8009a798_bc:
    beq     $v1,$v0,.LFUN_8009a798_134
    addu    $v0,$s2,$zero
    j       .LFUN_8009a798_374
    sll     $zero,$zero,0x0
.LFUN_8009a798_cc:
    lw      $a1,112($a0)
    sll     $zero,$zero,0x0
    beq     $a1,$zero,.LFUN_8009a798_10c
    sll     $a1,$a1,0x7
    lw      $a0,108($a0)
    jal     sym_8002d3b0
    addu    $a2,$zero,$zero
    addiu   $v1,$zero,-1
    bne     $v0,$v1,.LFUN_8009a798_100
    addiu   $v0,$zero,2
    lw      $v1,2844($s0)
    j       .LFUN_8009a798_370
    sb      $v0,3($v1)
.LFUN_8009a798_100:
    lw      $v0,2844($s0)
    j       .LFUN_8009a798_370
    sb      $s1,3($v0)
.LFUN_8009a798_10c:
    j       .LFUN_8009a798_370
    sb      $s1,3($a0)
.LFUN_8009a798_114:
    addiu   $v0,$zero,18
.LFUN_8009a798_118:
    sb      $v0,2($a0)
    lw      $v0,2844($s0)
    sll     $zero,$zero,0x0
    sb      $zero,3($v0)
    lw      $v0,2844($s0)
    j       .LFUN_8009a798_370
    sw      $zero,96($v0)
.LFUN_8009a798_134:
    addiu   $v0,$zero,35
    sb      $v0,2($a0)
    lw      $v0,2844($s0)
    sll     $zero,$zero,0x0
    sb      $zero,3($v0)
    lw      $v0,2844($s0)
    j       .LFUN_8009a798_370
    sw      $v1,92($v0)
    lui     $s1,0x800e
    lw      $v1,2844($s1)
    sll     $zero,$zero,0x0
    lbu     $s0,3($v1)
    sll     $zero,$zero,0x0
    beq     $s0,$zero,.LFUN_8009a798_180
    addiu   $v0,$zero,1
    beq     $s0,$v0,.LFUN_8009a798_1d8
    addu    $v0,$s2,$zero
    j       .LFUN_8009a798_374
    sll     $zero,$zero,0x0
.LFUN_8009a798_180:
    lw      $v0,116($v1)
    sll     $zero,$zero,0x0
    sll     $a2,$v0,0x7
    beq     $a2,$zero,.LFUN_8009a798_1b8
    addiu   $v0,$zero,35
    lw      $a0,108($v1)
    lw      $a1,120($v1)
    jal     sym_8002d228
    sll     $zero,$zero,0x0
    lw      $v1,2844($s1)
    addiu   $v0,$zero,1
    sw      $zero,100($v1)
    j       .LFUN_8009a798_370
    sb      $v0,3($v1)
.LFUN_8009a798_1b8:
    sb      $v0,2($v1)
    lw      $v0,2844($s1)
    sll     $zero,$zero,0x0
    sb      $zero,3($v0)
    lw      $v1,2844($s1)
    addiu   $v0,$zero,2
    j       .LFUN_8009a798_370
    sw      $v0,92($v1)
.LFUN_8009a798_1d8:
    jal     sym_8002cec0
    sll     $zero,$zero,0x0
    lw      $a0,2844($s1)
    sll     $zero,$zero,0x0
    lw      $v1,100($a0)
    sll     $zero,$zero,0x0
    sltiu   $v1,$v1,720
    beq     $v1,$zero,.LFUN_8009a798_220
    sll     $zero,$zero,0x0
    blez    $v0,.LFUN_8009a798_240
    sll     $zero,$zero,0x0
    bne     $v0,$s0,.LFUN_8009a798_224
    addiu   $v0,$zero,35
    addiu   $v0,$zero,19
    sb      $v0,2($a0)
    lw      $v0,2844($s1)
    j       .LFUN_8009a798_240
    sb      $zero,3($v0)
.LFUN_8009a798_220:
    addiu   $v0,$zero,35
.LFUN_8009a798_224:
    sb      $v0,2($a0)
    lw      $v0,2844($s1)
    sll     $zero,$zero,0x0
    sb      $zero,3($v0)
    lw      $v1,2844($s1)
    addiu   $v0,$zero,2
    sw      $v0,92($v1)
.LFUN_8009a798_240:
    lui     $v0,0x800e
    lw      $v1,2844($v0)
    sll     $zero,$zero,0x0
    lw      $v0,100($v1)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,1
    j       .LFUN_8009a798_370
    sw      $v0,100($v1)
    lui     $s0,0x800e
    lw      $v1,2844($s0)
    sll     $zero,$zero,0x0
    lbu     $s1,15($v1)
    addiu   $v0,$zero,1
    bne     $s1,$v0,.LFUN_8009a798_2e8
    addiu   $v0,$zero,33
    lw      $a0,120($v1)
    jal     sym_8009b8bc
    sll     $zero,$zero,0x0
    bne     $v0,$s1,.LFUN_8009a798_2c0
    addiu   $v0,$zero,36
    lw      $v0,2844($s0)
    sll     $zero,$zero,0x0
    lw      $a0,120($v0)
    jal     sym_8009b82c
    sll     $zero,$zero,0x0
    lui     $v0,0x800b
    lw      $v0,-14100($v0)
    sll     $zero,$zero,0x0
    sb      $zero,99($v0)
    lw      $v1,2844($s0)
    j       .LFUN_8009a798_2e8
    addiu   $v0,$zero,33
.LFUN_8009a798_2c0:
    lw      $v1,2844($s0)
    sll     $zero,$zero,0x0
    sb      $v0,2($v1)
    lw      $v0,2844($s0)
    sll     $zero,$zero,0x0
    sb      $zero,3($v0)
    lw      $v1,2844($s0)
    addiu   $v0,$zero,3
    j       .LFUN_8009a798_370
    sw      $v0,92($v1)
.LFUN_8009a798_2e8:
    sb      $v0,2($v1)
    lw      $v0,2844($s0)
    j       .LFUN_8009a798_370
    sb      $zero,3($v0)
    lui     $s0,0x800e
    lw      $v0,2844($s0)
    sll     $zero,$zero,0x0
    lw      $a0,108($v0)
    jal     sym_8009b93c
    sll     $zero,$zero,0x0
    lw      $v0,2844($s0)
    sll     $zero,$zero,0x0
    lbu     $v1,16($v0)
    addiu   $v0,$zero,1
    bne     $v1,$v0,.LFUN_8009a798_370
    addiu   $s2,$zero,1
    jal     sym_8009b858
    sll     $zero,$zero,0x0
    j       .LFUN_8009a798_374
    addu    $v0,$s2,$zero
    lui     $v0,0x800e
    lw      $v0,2844($v0)
    sll     $zero,$zero,0x0
    lw      $a0,108($v0)
    jal     sym_8009b93c
    sll     $zero,$zero,0x0
    j       .LFUN_8009a798_370
    addiu   $s2,$zero,2
    lui     $v0,0x800e
    lw      $v0,2844($v0)
    sll     $zero,$zero,0x0
    lw      $a0,108($v0)
    jal     sym_8009b93c
    addiu   $s2,$zero,3
.LFUN_8009a798_370:
    addu    $v0,$s2,$zero
.LFUN_8009a798_374:
    lw      $ra,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end FUN_8009a798
    .size FUN_8009a798, . - FUN_8009a798

/* FUN_8009b8e4 (0x8009b8e4, 8 bytes) */
    .section .text.FUN_8009b8e4,"ax",@progbits
    .globl FUN_8009b8e4
    .type FUN_8009b8e4, @function
    .ent FUN_8009b8e4
FUN_8009b8e4:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8009b8e4
    .size FUN_8009b8e4, . - FUN_8009b8e4

/* FUN_8009b8ec (0x8009b8ec, 76 bytes) */
    .section .text.FUN_8009b8ec,"ax",@progbits
    .globl FUN_8009b8ec
    .type FUN_8009b8ec, @function
    .ent FUN_8009b8ec
FUN_8009b8ec:
    j       .LFUN_8009b8ec_1c
    sll     $zero,$zero,0x0
.LFUN_8009b8ec_8:
    addiu   $a2,$a2,-1
    bgtz    $a2,.LFUN_8009b8ec_1c
    addiu   $a1,$a1,1
    j       .LFUN_8009b8ec_44
    addu    $v0,$zero,$zero
.LFUN_8009b8ec_1c:
    lbu     $v1,0($a0)
    lbu     $v0,0($a1)
    sll     $zero,$zero,0x0
    beq     $v1,$v0,.LFUN_8009b8ec_8
    addiu   $a0,$a0,1
    addiu   $a0,$a0,-1
    lbu     $v1,0($a0)
    lbu     $v0,0($a1)
    sll     $zero,$zero,0x0
    subu    $v0,$v1,$v0
.LFUN_8009b8ec_44:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8009b8ec
    .size FUN_8009b8ec, . - FUN_8009b8ec

/* FUN_8009d218 (0x8009d218, 92 bytes) */
    .section .text.FUN_8009d218,"ax",@progbits
    .globl FUN_8009d218
    .type FUN_8009d218, @function
    .ent FUN_8009d218
FUN_8009d218:
    addu    $t0,$zero,$zero
    addu    $a2,$t0,$zero
    addiu   $t2,$zero,1
    lhu     $v0,0($a0)
    lhu     $t1,2($a0)
    or      $a1,$v0,$a1
    andi    $a1,$a1,0xffff
    xor     $a3,$v0,$a1
    sllv    $v1,$t2,$a2
.LFUN_8009d218_24:
    and     $v0,$a3,$v1
    beq     $v0,$zero,.LFUN_8009d218_38
    addiu   $a2,$a2,1
    j       .LFUN_8009d218_48
    addu    $t0,$v1,$zero
.LFUN_8009d218_38:
    andi    $v0,$a2,0xff
    sltiu   $v0,$v0,16
    bne     $v0,$zero,.LFUN_8009d218_24
    sllv    $v1,$t2,$a2
.LFUN_8009d218_48:
    or      $v0,$t1,$t0
    sll     $v0,$v0,0x10
    or      $v0,$a1,$v0
    jr      $ra
    sw      $v0,0($a0)
    .end FUN_8009d218
    .size FUN_8009d218, . - FUN_8009d218

/* FUN_8009d378 (0x8009d378, 48 bytes) */
    .section .text.FUN_8009d378,"ax",@progbits
    .globl FUN_8009d378
    .globl FUN_8009d3a8
    .type FUN_8009d378, @function
    .ent FUN_8009d378
FUN_8009d378:
    addiu   $a1,$a0,-65
    andi    $v0,$a1,0xff
    sltiu   $v0,$v0,26
    beq     $v0,$zero,FUN_8009d3a8
    addu    $v1,$a0,$zero
    lui     $v0,0x800e
    lhu     $v0,3542($v0)
    andi    $v1,$v1,0xff
    addu    $v0,$v0,$v1
    addiu   $v0,$v0,-65
    jr      $ra
    andi    $v0,$v0,0xffff
    .end FUN_8009d378
    .size FUN_8009d378, . - FUN_8009d378

/* FUN_8009d3a8 (0x8009d3a8, 44 bytes) */
    .section .text.FUN_8009d3a8,"ax",@progbits
    .globl FUN_8009d3a8
    .globl FUN_8009d3d4
    .type FUN_8009d3a8, @function
    .ent FUN_8009d3a8
FUN_8009d3a8:
    addiu   $v0,$a0,-97
    andi    $v0,$v0,0xff
    sltiu   $v0,$v0,26
    beq     $v0,$zero,FUN_8009d3d4
    lui     $v0,0x800e
    lhu     $v0,3544($v0)
    andi    $v1,$v1,0xff
    addu    $v0,$v0,$v1
    addiu   $v0,$v0,-97
    jr      $ra
    andi    $v0,$v0,0xffff
    .end FUN_8009d3a8
    .size FUN_8009d3a8, . - FUN_8009d3a8

/* FUN_8009d3d4 (0x8009d3d4, 44 bytes) */
    .section .text.FUN_8009d3d4,"ax",@progbits
    .globl FUN_8009d3d4
    .globl FUN_8009d400
    .type FUN_8009d3d4, @function
    .ent FUN_8009d3d4
FUN_8009d3d4:
    addiu   $v0,$a0,-48
    andi    $v0,$v0,0xff
    sltiu   $v0,$v0,10
    beq     $v0,$zero,FUN_8009d400
    lui     $v0,0x800e
    lhu     $v0,3540($v0)
    andi    $v1,$v1,0xff
    addu    $v0,$v0,$v1
    addiu   $v0,$v0,-48
    jr      $ra
    andi    $v0,$v0,0xffff
    .end FUN_8009d3d4
    .size FUN_8009d3d4, . - FUN_8009d3d4

/* FUN_8009d400 (0x8009d400, 120 bytes) */
    .section .text.FUN_8009d400,"ax",@progbits
    .globl FUN_8009d400
    .type FUN_8009d400, @function
    .ent FUN_8009d400
FUN_8009d400:
    addiu   $v0,$a0,-32
    andi    $v0,$v0,0xff
    sltiu   $v0,$v0,16
    beq     $v0,$zero,.LFUN_8009d400_1c
    addiu   $v0,$a0,-58
    j       .LFUN_8009d400_58
    addiu   $a1,$a0,-29
.LFUN_8009d400_1c:
    andi    $v0,$v0,0xff
    sltiu   $v0,$v0,7
    beq     $v0,$zero,.LFUN_8009d400_34
    addiu   $v1,$a0,-91
    j       .LFUN_8009d400_58
    addiu   $a1,$a0,-39
.LFUN_8009d400_34:
    andi    $v0,$v1,0xff
    sltiu   $v0,$v0,6
    bne     $v0,$zero,.LFUN_8009d400_58
    addiu   $v0,$a0,-123
    andi    $v0,$v0,0xff
    sltiu   $v0,$v0,4
    beq     $v0,$zero,.LFUN_8009d400_58
    addiu   $a1,$zero,3
    addu    $a1,$v1,$zero
.LFUN_8009d400_58:
    lui     $v1,0x800e
    addiu   $v1,$v1,3540
    andi    $v0,$a1,0xff
    sll     $v0,$v0,0x1
    addu    $v0,$v0,$v1
    lhu     $v0,0($v0)
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_8009d400
    .size FUN_8009d400, . - FUN_8009d400

/* FUN_8009d4a0 (0x8009d4a0, 172 bytes) */
    .section .text.FUN_8009d4a0,"ax",@progbits
    .globl FUN_8009d4a0
    .globl FUN_8009d378
    .globl sym_80095ce8
    .type FUN_8009d4a0, @function
    .ent FUN_8009d4a0
FUN_8009d4a0:
    addiu   $sp,$sp,-56
    sw      $s1,36($sp)
    addu    $s1,$a0,$zero
    sw      $s4,48($sp)
    addu    $s4,$a1,$zero
    sw      $s3,44($sp)
    addu    $s3,$a2,$zero
    sw      $s0,32($sp)
    addu    $s0,$zero,$zero
    sw      $s2,40($sp)
    addiu   $s2,$sp,16
    sw      $ra,52($sp)
.LFUN_8009d4a0_30:
    lbu     $a0,0($s1)
    jal     FUN_8009d378
    addiu   $s1,$s1,1
    andi    $v1,$s0,0xff
    addiu   $s0,$s0,1
    sll     $v1,$v1,0x1
    addu    $a1,$s2,$v1
    srl     $a0,$v0,0x8
    addiu   $v1,$v1,1
    addu    $v1,$s2,$v1
    sb      $a0,0($a1)
    sb      $v0,0($v1)
    andi    $v0,$s0,0xff
    sltiu   $v0,$v0,8
    bne     $v0,$zero,.LFUN_8009d4a0_30
    addu    $a0,$s4,$zero
    addu    $a1,$s3,$zero
    jal     sym_80095ce8
    addiu   $a2,$zero,64
    addiu   $a0,$sp,16
    addiu   $a1,$s3,46
    jal     sym_80095ce8
    addiu   $a2,$zero,16
    lw      $ra,52($sp)
    lw      $s4,48($sp)
    lw      $s3,44($sp)
    lw      $s2,40($sp)
    lw      $s1,36($sp)
    lw      $s0,32($sp)
    jr      $ra
    addiu   $sp,$sp,56
    .end FUN_8009d4a0
    .size FUN_8009d4a0, . - FUN_8009d4a0

/* FUN_8009dd2c (0x8009dd2c, 160 bytes) */
    .section .text.FUN_8009dd2c,"ax",@progbits
    .globl FUN_8009dd2c
    .globl sym_8009d54c
    .globl sym_8003bac8
    .type FUN_8009dd2c, @function
    .ent FUN_8009dd2c
FUN_8009dd2c:
    addiu   $sp,$sp,-32
    sw      $s1,20($sp)
    addu    $s1,$a0,$zero
    addu    $a0,$zero,$zero
    sw      $ra,24($sp)
    jal     sym_8009d54c
    sw      $s0,16($sp)
    lui     $s0,0x800e
    addiu   $a1,$zero,2480
    addu    $v1,$s1,$zero
    lui     $a2,0x8012
    lw      $v0,2844($s0)
    andi    $v1,$v1,0xff
    sb      $zero,132($v0)
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $a0,$v0,0x5
    subu    $a0,$a0,$v0
    lw      $v0,-30424($a2)
    sll     $a0,$a0,0x4
    jal     sym_8003bac8
    addu    $a0,$v0,$a0
    lui     $v0,0x800e
    lw      $a0,3612($v0)
    jal     sym_8003bac8
    addiu   $a1,$zero,12
    lw      $a0,2844($s0)
    jal     sym_8003bac8
    addiu   $a1,$zero,144
    lw      $v0,2844($s0)
    sll     $zero,$zero,0x0
    sb      $s1,12($v0)
    lw      $v1,2844($s0)
    addiu   $v0,$zero,5
    sb      $v0,13($v1)
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end FUN_8009dd2c
    .size FUN_8009dd2c, . - FUN_8009dd2c

/* FUN_8009de80 (0x8009de80, 216 bytes) */
    .section .text.FUN_8009de80,"ax",@progbits
    .globl FUN_8009de80
    .globl sym_8009d54c
    .globl sym_8003bac8
    .type FUN_8009de80, @function
    .ent FUN_8009de80
FUN_8009de80:
    addiu   $sp,$sp,-40
    sw      $s2,24($sp)
    addu    $s2,$a0,$zero
    sw      $s3,28($sp)
    addu    $s3,$a1,$zero
    addu    $a0,$zero,$zero
    sw      $ra,32($sp)
    sw      $s1,20($sp)
    jal     sym_8009d54c
    sw      $s0,16($sp)
    lui     $s1,0x800e
    addiu   $a1,$zero,2480
    addu    $v1,$s2,$zero
    lui     $a2,0x8012
    lw      $v0,2844($s1)
    andi    $v1,$v1,0xff
    sb      $zero,132($v0)
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $a0,$v0,0x5
    subu    $a0,$a0,$v0
    lw      $v0,-30424($a2)
    sll     $a0,$a0,0x4
    jal     sym_8003bac8
    addu    $a0,$v0,$a0
    lui     $s0,0x800e
    lw      $a0,3612($s0)
    jal     sym_8003bac8
    addiu   $a1,$zero,12
    lw      $a0,2844($s1)
    jal     sym_8003bac8
    addiu   $a1,$zero,144
    lw      $v0,2844($s1)
    sll     $zero,$zero,0x0
    sb      $s2,12($v0)
    lw      $v1,2844($s1)
    addiu   $v0,$zero,5
    sb      $v0,13($v1)
    lw      $v0,3612($s0)
    addiu   $v1,$zero,1
    sb      $v1,2($v0)
    lw      $v0,3612($s0)
    sll     $zero,$zero,0x0
    sb      $v1,3($v0)
    lw      $v0,3612($s0)
    sll     $zero,$zero,0x0
    sw      $s3,8($v0)
    lw      $ra,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end FUN_8009de80
    .size FUN_8009de80, . - FUN_8009de80

/* FUN_8009ef8c (0x8009ef8c, 284 bytes) */
    .section .text.FUN_8009ef8c,"ax",@progbits
    .globl FUN_8009ef8c
    .globl sym_800392f0
    .type FUN_8009ef8c, @function
    .ent FUN_8009ef8c
FUN_8009ef8c:
    addiu   $sp,$sp,-40
    sw      $s1,28($sp)
    addu    $s1,$a0,$zero
    lui     $v1,0x800e
    lui     $v0,0x800b
    sw      $s0,24($sp)
    lw      $s0,22064($v1)
    lw      $a0,-14104($v0)
    sw      $ra,32($sp)
    addiu   $v0,$s0,12
    sw      $v0,22064($v1)
    lhu     $v1,14($a0)
    addiu   $v0,$zero,480
    bne     $v1,$v0,.LFUN_8009ef8c_5c
    sll     $zero,$zero,0x0
    sh      $zero,16($sp)
    sh      $zero,18($sp)
    lhu     $v0,12($a0)
    sll     $zero,$zero,0x0
    sh      $v0,20($sp)
    lhu     $v0,14($a0)
    j       .LFUN_8009ef8c_a4
    sh      $v0,22($sp)
.LFUN_8009ef8c_5c:
    sh      $zero,16($sp)
    lbu     $v0,8($a0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_8009ef8c_7c
    lui     $v0,0x800e
    lhu     $a0,10810($v0)
    j       .LFUN_8009ef8c_84
    lui     $v0,0x800b
.LFUN_8009ef8c_7c:
    addu    $a0,$zero,$zero
    lui     $v0,0x800b
.LFUN_8009ef8c_84:
    lw      $v1,-14104($v0)
    sh      $a0,18($sp)
    lhu     $v0,12($v1)
    sll     $zero,$zero,0x0
    sh      $v0,20($sp)
    lhu     $v0,14($v1)
    sll     $zero,$zero,0x0
    sh      $v0,22($sp)
.LFUN_8009ef8c_a4:
    addu    $a0,$s0,$zero
    jal     sym_800392f0
    addiu   $a1,$sp,16
    lui     $a1,0xff
    lui     $v0,0x800b
    ori     $a1,$a1,0xffff
    sll     $a0,$s1,0x2
    lw      $a3,-14104($v0)
    lui     $a2,0xff00
    lw      $v0,164($a3)
    lw      $v1,0($s0)
    addu    $v0,$a0,$v0
    lw      $v0,0($v0)
    and     $v1,$v1,$a2
    and     $v0,$v0,$a1
    or      $v1,$v1,$v0
    sw      $v1,0($s0)
    lw      $v0,164($a3)
    sll     $zero,$zero,0x0
    addu    $a0,$a0,$v0
    lw      $v0,0($a0)
    and     $a1,$s0,$a1
    and     $v0,$v0,$a2
    or      $v0,$v0,$a1
    sw      $v0,0($a0)
    lw      $ra,32($sp)
    lw      $s1,28($sp)
    lw      $s0,24($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end FUN_8009ef8c
    .size FUN_8009ef8c, . - FUN_8009ef8c

/* FUN_8009f3f4 (0x8009f3f4, 276 bytes) */
    .section .text.FUN_8009f3f4,"ax",@progbits
    .globl FUN_8009f3f4
    .globl sym_80038778
    .globl sym_80038564
    .globl sym_8009f0a8
    .globl sym_800384cc
    .type FUN_8009f3f4, @function
    .ent FUN_8009f3f4
FUN_8009f3f4:
    sb      $zero,0($a1)
    j       .LFUN_8009f3f4_a8
    addu    $a0,$zero,$zero
    addiu   $a0,$sp,16
    lui     $s1,0x8012
    addiu   $s0,$s1,-30392
    addu    $a1,$zero,$zero
    addu    $a2,$a1,$zero
    lhu     $v0,4($s0)
    lhu     $v1,6($s0)
    addu    $a3,$a1,$zero
    sh      $zero,16($sp)
    sh      $zero,18($sp)
    sh      $v0,20($sp)
    jal     sym_80038778
    sh      $v1,22($sp)
    jal     sym_80038564
    addu    $a0,$zero,$zero
    lh      $a0,4($s0)
    lh      $a1,6($s0)
    jal     sym_8009f0a8
    sll     $zero,$zero,0x0
    lbu     $v0,-30392($s1)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,1
    j       .LFUN_8009f3f4_f8
    sb      $v0,-30392($s1)
    lui     $v1,0x8012
    addiu   $a1,$v1,-30392
    lbu     $a0,1($a1)
    sll     $zero,$zero,0x0
    sltiu   $v0,$a0,3
    bne     $v0,$zero,.LFUN_8009f3f4_9c
    addiu   $v0,$a0,1
    lbu     $v0,-30392($v1)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,1
    sb      $v0,-30392($v1)
    addiu   $v0,$a0,1
.LFUN_8009f3f4_9c:
    j       .LFUN_8009f3f4_f8
    sb      $v0,1($a1)
    addiu   $a0,$zero,1
.LFUN_8009f3f4_a8:
    jal     sym_800384cc
    sll     $zero,$zero,0x0
    lui     $v1,0x8012
    lbu     $v0,-30392($v1)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,1
    j       .LFUN_8009f3f4_f8
    sb      $v0,-30392($v1)
    lui     $a0,0x800b
    lui     $v1,0x8012
    addiu   $v0,$v1,-30392
    lw      $a0,-14100($a0)
    lbu     $v0,2($v0)
    sll     $zero,$zero,0x0
    sb      $v0,0($a0)
    lbu     $v0,-30392($v1)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,1
    sb      $v0,-30392($v1)
    addiu   $s2,$zero,1
.LFUN_8009f3f4_f8:
    addu    $v0,$s2,$zero
    lw      $ra,36($sp)
    lw      $s2,32($sp)
    lw      $s1,28($sp)
    lw      $s0,24($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end FUN_8009f3f4
    .size FUN_8009f3f4, . - FUN_8009f3f4

/* FUN_8009f534 (0x8009f534, 516 bytes) */
    .section .text.FUN_8009f534,"ax",@progbits
    .globl FUN_8009f534
    .globl sym_80023e9c
    .globl sym_80023f68
    .type FUN_8009f534, @function
    .ent FUN_8009f534
FUN_8009f534:
    addiu   $sp,$sp,-120
    sw      $s5,100($sp)
    addu    $s5,$a0,$zero
    sw      $s2,88($sp)
    lhu     $s2,140($sp)
    lw      $a0,136($sp)
    sw      $s6,104($sp)
    addu    $s6,$a1,$zero
    sw      $s3,92($sp)
    lbu     $s3,152($sp)
    lw      $a1,144($sp)
    sh      $a2,40($sp)
    lw      $a2,148($sp)
    sw      $s7,108($sp)
    lw      $s7,160($sp)
    lbu     $t0,156($sp)
    sw      $s4,96($sp)
    addu    $s4,$zero,$zero
    sw      $ra,116($sp)
    sw      $s8,112($sp)
    sw      $s1,84($sp)
    sw      $s0,80($sp)
    sh      $a3,48($sp)
    sll     $v0,$a0,0x10
    sra     $v1,$v0,0x10
    addu    $v0,$v1,$zero
    sh      $a0,56($sp)
    bgez    $v1,.LFUN_8009f534_78
    sb      $t0,64($sp)
    addiu   $v0,$v1,63
.LFUN_8009f534_78:
    sra     $v0,$v0,0x6
    sll     $v0,$v0,0x6
    subu    $v0,$v1,$v0
    subu    $v0,$a0,$v0
    sll     $v0,$v0,0x10
    sra     $v0,$v0,0x10
    subu    $v0,$v1,$v0
    bgez    $v0,.LFUN_8009f534_a0
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,3
.LFUN_8009f534_a0:
    sra     $v0,$v0,0x2
    sll     $s0,$v0,0x4
    sll     $v0,$a1,0x10
    sra     $v0,$v0,0x10
    sw      $v0,68($sp)
    sll     $v0,$a2,0x10
    sra     $v0,$v0,0x10
    sw      $v0,72($sp)
    andi    $v0,$a0,0x3ff
    srl     $s8,$v0,0x6
.LFUN_8009f534_c8:
    lbu     $v0,0($s5)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_8009f534_190
    sll     $a0,$s6,0x10
    sra     $a0,$a0,0x10
    sll     $v0,$s0,0x10
    sra     $v0,$v0,0x10
    andi    $s1,$s3,0xff
    lhu     $t0,40($sp)
    addiu   $a2,$zero,16
    sw      $v0,16($sp)
    lbu     $v0,64($sp)
    sll     $a1,$t0,0x10
    lw      $t0,68($sp)
    addu    $a3,$a2,$zero
    sw      $s1,20($sp)
    sw      $s7,36($sp)
    sw      $t0,24($sp)
    lw      $t0,72($sp)
    sra     $a1,$a1,0x10
    sw      $v0,32($sp)
    jal     sym_80023e9c
    sw      $t0,28($sp)
    addiu   $s4,$s4,1
    addiu   $s5,$s5,2
    addiu   $s0,$s0,16
    andi    $v0,$s0,0xffff
    lhu     $t0,48($sp)
    sltiu   $v0,$v0,256
    bne     $v0,$zero,.LFUN_8009f534_c8
    addu    $s6,$s6,$t0
    addiu   $s3,$s3,16
    andi    $v0,$s3,0xff
    sltu    $v0,$v0,$s1
    beq     $v0,$zero,.LFUN_8009f534_c8
    addu    $s0,$zero,$zero
    andi    $v0,$s2,0x100
    sll     $v0,$v0,0x10
    sra     $v0,$v0,0x14
    or      $v0,$v0,$s8
    andi    $a0,$s2,0x200
    sll     $a0,$a0,0x10
    sra     $a0,$a0,0x10
    sll     $a0,$a0,0x2
    or      $a0,$v0,$a0
    jal     sym_80023f68
    addu    $a1,$s7,$zero
    addu    $s4,$s0,$zero
    j       .LFUN_8009f534_c8
    addiu   $s2,$s2,256
.LFUN_8009f534_190:
    andi    $v0,$s4,0xff
    beq     $v0,$zero,.LFUN_8009f534_1d4
    addu    $a1,$s7,$zero
    andi    $a0,$s2,0x100
    sll     $a0,$a0,0x10
    sra     $a0,$a0,0x14
    lhu     $t0,56($sp)
    sll     $zero,$zero,0x0
    andi    $v0,$t0,0x3ff
    srl     $v0,$v0,0x6
    or      $a0,$a0,$v0
    andi    $v0,$s2,0x200
    sll     $v0,$v0,0x10
    sra     $v0,$v0,0x10
    sll     $v0,$v0,0x2
    jal     sym_80023f68
    or      $a0,$a0,$v0
.LFUN_8009f534_1d4:
    lw      $ra,116($sp)
    lw      $s8,112($sp)
    lw      $s7,108($sp)
    lw      $s6,104($sp)
    lw      $s5,100($sp)
    lw      $s4,96($sp)
    lw      $s3,92($sp)
    lw      $s2,88($sp)
    lw      $s1,84($sp)
    lw      $s0,80($sp)
    jr      $ra
    addiu   $sp,$sp,120
    .end FUN_8009f534
    .size FUN_8009f534, . - FUN_8009f534

/* FUN_8009f738 (0x8009f738, 232 bytes) */
    .section .text.FUN_8009f738,"ax",@progbits
    .globl FUN_8009f738
    .globl sym_800392f0
    .type FUN_8009f738, @function
    .ent FUN_8009f738
FUN_8009f738:
    addiu   $sp,$sp,-32
    lui     $v1,0x800e
    lui     $v0,0x800b
    sw      $s0,24($sp)
    lw      $s0,22064($v1)
    lw      $t0,-14104($v0)
    sw      $ra,28($sp)
    addiu   $v0,$s0,12
    sw      $v0,22064($v1)
    lhu     $v1,14($t0)
    addiu   $v0,$zero,480
    bne     $v1,$v0,.LFUN_8009f738_40
    sll     $v0,$a1,0x10
    sh      $a0,16($sp)
    j       .LFUN_8009f738_68
    sh      $a1,18($sp)
.LFUN_8009f738_40:
    sh      $a0,16($sp)
    lbu     $v1,8($t0)
    sll     $zero,$zero,0x0
    beq     $v1,$zero,.LFUN_8009f738_64
    sra     $a0,$v0,0x10
    lui     $v0,0x800e
    lh      $v0,10810($v0)
    sll     $zero,$zero,0x0
    addu    $a0,$a0,$v0
.LFUN_8009f738_64:
    sh      $a0,18($sp)
.LFUN_8009f738_68:
    sh      $a2,20($sp)
    sh      $a3,22($sp)
    addu    $a0,$s0,$zero
    jal     sym_800392f0
    addiu   $a1,$sp,16
    lui     $a1,0xff
    lui     $v0,0x800b
    ori     $a1,$a1,0xffff
    lui     $a2,0xff00
    lw      $a3,-14104($v0)
    lw      $a0,48($sp)
    lw      $v1,0($s0)
    lw      $v0,164($a3)
    sll     $a0,$a0,0x2
    addu    $v0,$a0,$v0
    lw      $v0,0($v0)
    and     $v1,$v1,$a2
    and     $v0,$v0,$a1
    or      $v1,$v1,$v0
    sw      $v1,0($s0)
    lw      $v0,164($a3)
    sll     $zero,$zero,0x0
    addu    $a0,$a0,$v0
    lw      $v0,0($a0)
    and     $a1,$s0,$a1
    and     $v0,$v0,$a2
    or      $v0,$v0,$a1
    sw      $v0,0($a0)
    lw      $ra,28($sp)
    lw      $s0,24($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end FUN_8009f738
    .size FUN_8009f738, . - FUN_8009f738

/* FUN_8009f870 (0x8009f870, 344 bytes) */
    .section .text.FUN_8009f870,"ax",@progbits
    .globl FUN_8009f870
    .type FUN_8009f870, @function
    .ent FUN_8009f870
FUN_8009f870:
    addiu   $sp,$sp,-56
    sw      $s7,44($sp)
    addu    $s7,$a0,$zero
    addu    $v1,$a3,$zero
    sw      $s3,28($sp)
    addu    $s3,$zero,$zero
    sw      $s6,40($sp)
    addu    $s6,$a2,$zero
    andi    $a1,$a1,0xff
    sw      $ra,48($sp)
    sw      $s5,36($sp)
    sw      $s4,32($sp)
    sw      $s2,24($sp)
    sw      $s1,20($sp)
    beq     $a1,$zero,.LFUN_8009f870_128
    sw      $s0,16($sp)
    sll     $v0,$a3,0x18
    sra     $v0,$v0,0x18
    bne     $v0,$zero,.LFUN_8009f870_64
    slti    $v0,$v0,-1
    j       .LFUN_8009f870_12c
    addu    $v0,$zero,$zero
.LFUN_8009f870_58:
    sb      $s0,0($s7)
    j       .LFUN_8009f870_128
    addiu   $s3,$zero,1
.LFUN_8009f870_64:
    beq     $v0,$zero,.LFUN_8009f870_74
    sll     $v0,$v1,0x18
    addiu   $v1,$zero,-1
    sll     $v0,$v1,0x18
.LFUN_8009f870_74:
    sra     $v0,$v0,0x18
    slti    $v0,$v0,2
    bne     $v0,$zero,.LFUN_8009f870_88
    sll     $zero,$zero,0x0
    addiu   $v1,$zero,1
.LFUN_8009f870_88:
    lbu     $s0,0($s7)
    addiu   $a0,$a1,-1
    slt     $v0,$s3,$a0
    beq     $v0,$zero,.LFUN_8009f870_128
    addu    $s2,$zero,$zero
    sll     $v0,$v1,0x18
    sra     $s5,$v0,0x18
    addu    $s1,$a1,$zero
    addu    $s4,$a0,$zero
    andi    $v0,$s0,0xffff
.LFUN_8009f870_b0:
    addu    $v0,$v0,$s5
    addu    $v0,$v0,$s1
    div     $zero,$v0,$s1
    bne     $s1,$zero,.LFUN_8009f870_c8
    sll     $zero,$zero,0x0
    break   0x7
.LFUN_8009f870_c8:
    addiu   $at,$zero,-1
    bne     $s1,$at,.LFUN_8009f870_e0
    lui     $at,0x8000
    bne     $v0,$at,.LFUN_8009f870_e0
    sll     $zero,$zero,0x0
    break   0x6
.LFUN_8009f870_e0:
    mfhi    $v1
    sll     $zero,$zero,0x0
    addu    $s0,$v1,$zero
    andi    $v1,$s0,0xffff
    sll     $v0,$v1,0x1
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    addu    $v0,$s6,$v0
    lw      $v0,0($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_8009f870_58
    addiu   $s2,$s2,1
    andi    $v0,$s2,0xffff
    slt     $v0,$v0,$s4
    bne     $v0,$zero,.LFUN_8009f870_b0
    andi    $v0,$s0,0xffff
.LFUN_8009f870_128:
    addu    $v0,$s3,$zero
.LFUN_8009f870_12c:
    lw      $ra,48($sp)
    lw      $s7,44($sp)
    lw      $s6,40($sp)
    lw      $s5,36($sp)
    lw      $s4,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,56
    .end FUN_8009f870
    .size FUN_8009f870, . - FUN_8009f870

/* FUN_8009f9c8 (0x8009f9c8, 152 bytes) */
    .section .text.FUN_8009f9c8,"ax",@progbits
    .globl FUN_8009f9c8
    .globl sym_8009e33c
    .type FUN_8009f9c8, @function
    .ent FUN_8009f9c8
FUN_8009f9c8:
    addiu   $sp,$sp,-40
    sw      $s4,32($sp)
    addu    $s4,$a0,$zero
    sw      $s2,24($sp)
    addu    $s2,$a2,$zero
    sw      $s0,16($sp)
    addu    $s0,$zero,$zero
    sw      $s3,28($sp)
    addiu   $s3,$zero,-1
    sw      $s1,20($sp)
    sll     $s1,$a1,0x10
    sw      $ra,36($sp)
    andi    $v1,$s0,0xffff
.LFUN_8009f9c8_34:
    sll     $v0,$v1,0x2
    addu    $v0,$s4,$v0
    lw      $a0,0($v0)
    sll     $v1,$v1,0x5
    beq     $a0,$s3,.LFUN_8009f9c8_64
    addu    $a2,$s2,$v1
    lui     $a3,0x801d
    ori     $a3,$a3,0x3000
    sll     $a2,$a2,0x10
    sra     $a1,$s1,0x10
    jal     sym_8009e33c
    sra     $a2,$a2,0x10
.LFUN_8009f9c8_64:
    addiu   $s0,$s0,1
    andi    $v0,$s0,0xffff
    sltiu   $v0,$v0,4
    bne     $v0,$zero,.LFUN_8009f9c8_34
    andi    $v1,$s0,0xffff
    lw      $ra,36($sp)
    lw      $s4,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end FUN_8009f9c8
    .size FUN_8009f9c8, . - FUN_8009f9c8

/* FUN_8009fa60 (0x8009fa60, 88 bytes) */
    .section .text.FUN_8009fa60,"ax",@progbits
    .globl FUN_8009fa60
    .globl FUN_8009fab8
    .type FUN_8009fa60, @function
    .ent FUN_8009fa60
FUN_8009fa60:
    addiu   $sp,$sp,-40
    sll     $a3,$a3,0x10
    lw      $v1,56($sp)
    lw      $t0,64($sp)
    lbu     $v0,60($sp)
    sra     $a3,$a3,0x10
    sw      $a3,16($sp)
    sll     $a3,$a2,0x10
    sra     $a3,$a3,0x10
    sw      $ra,32($sp)
    andi    $v0,$v0,0xff
    sw      $v0,24($sp)
    sll     $v0,$a1,0x10
    addiu   $a1,$zero,-200
    sra     $a2,$v0,0x10
    sw      $v1,20($sp)
    jal     FUN_8009fab8
    sw      $t0,28($sp)
    lw      $ra,32($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,40
    .end FUN_8009fa60
    .size FUN_8009fa60, . - FUN_8009fa60

/* FUN_8009fab8 (0x8009fab8, 476 bytes) */
    .section .text.FUN_8009fab8,"ax",@progbits
    .globl FUN_8009fab8
    .globl sym_80023e9c
    .globl sym_80023f68
    .type FUN_8009fab8, @function
    .ent FUN_8009fab8
FUN_8009fab8:
    addiu   $sp,$sp,-112
    lw      $t0,140($sp)
    sw      $s7,100($sp)
    lhu     $s7,128($sp)
    sw      $s8,104($sp)
    lbu     $s8,136($sp)
    sw      $s5,92($sp)
    addu    $s5,$zero,$zero
    sw      $s4,88($sp)
    addu    $s4,$s5,$zero
    sw      $ra,108($sp)
    sw      $s6,96($sp)
    sw      $s3,84($sp)
    sw      $s2,80($sp)
    sw      $s1,76($sp)
    sw      $s0,72($sp)
    sw      $a0,112($sp)
    sh      $a1,40($sp)
    sh      $a2,48($sp)
    sh      $a3,56($sp)
    andi    $v0,$s4,0xff
.LFUN_8009fab8_54:
    sll     $v1,$v0,0x2
    lw      $t1,112($sp)
    sll     $v0,$v0,0x5
    addu    $v1,$t1,$v1
    lw      $s2,0($v1)
    addu    $v1,$s7,$v0
    sll     $v0,$v1,0x10
    sra     $v0,$v0,0x10
    slti    $v0,$v0,256
    bne     $v0,$zero,.LFUN_8009fab8_88
    addu    $s0,$zero,$zero
    j       .LFUN_8009fab8_8c
    addiu   $s1,$v1,-256
.LFUN_8009fab8_88:
    addu    $s1,$v1,$zero
.LFUN_8009fab8_8c:
    andi    $v0,$s4,0xff
    addiu   $t1,$zero,20
    mult    $t1,$v0
    addiu   $v0,$zero,-1
    lhu     $s3,40($sp)
    lhu     $t2,48($sp)
    mflo    $t1
    beq     $s2,$v0,.LFUN_8009fab8_158
    addu    $s6,$t2,$t1
    lbu     $v0,0($s2)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_8009fab8_158
    sll     $zero,$zero,0x0
.LFUN_8009fab8_c0:
    lw      $t2,132($sp)
    sll     $zero,$zero,0x0
    sltu    $v0,$s5,$t2
    beq     $v0,$zero,.LFUN_8009fab8_16c
    sll     $a0,$s3,0x10
    sra     $a0,$a0,0x10
    sll     $a1,$s6,0x10
    sra     $a1,$a1,0x10
    sll     $v0,$s0,0x10
    sra     $v0,$v0,0x10
    sw      $v0,16($sp)
    sll     $v0,$s1,0x10
    sra     $v0,$v0,0x10
    sw      $v0,20($sp)
    addiu   $v0,$zero,960
    sw      $v0,24($sp)
    addiu   $v0,$zero,112
    sw      $v0,28($sp)
    andi    $v0,$s8,0xff
    addiu   $a2,$zero,16
    addu    $a3,$a2,$zero
    sw      $v0,32($sp)
    sw      $t0,36($sp)
    jal     sym_80023e9c
    sw      $t0,64($sp)
    addiu   $s2,$s2,2
    addiu   $s0,$s0,16
    andi    $v0,$s0,0xffff
    sltiu   $v0,$v0,256
    lw      $t0,64($sp)
    bne     $v0,$zero,.LFUN_8009fab8_148
    addiu   $s3,$s3,16
    addu    $s0,$zero,$zero
    addiu   $s1,$s1,16
.LFUN_8009fab8_148:
    lbu     $v0,0($s2)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_8009fab8_c0
    addiu   $s5,$s5,1
.LFUN_8009fab8_158:
    addiu   $s4,$s4,1
    andi    $v0,$s4,0xff
    sltiu   $v0,$v0,4
    bne     $v0,$zero,.LFUN_8009fab8_54
    andi    $v0,$s4,0xff
.LFUN_8009fab8_16c:
    beq     $s5,$zero,.LFUN_8009fab8_1ac
    addu    $a1,$t0,$zero
    andi    $a0,$s7,0x100
    sll     $a0,$a0,0x10
    sra     $a0,$a0,0x14
    lhu     $t1,56($sp)
    sll     $zero,$zero,0x0
    andi    $v0,$t1,0x3ff
    srl     $v0,$v0,0x6
    or      $a0,$a0,$v0
    andi    $v0,$s7,0x200
    sll     $v0,$v0,0x10
    sra     $v0,$v0,0x10
    sll     $v0,$v0,0x2
    jal     sym_80023f68
    or      $a0,$a0,$v0
.LFUN_8009fab8_1ac:
    lw      $ra,108($sp)
    lw      $s8,104($sp)
    lw      $s7,100($sp)
    lw      $s6,96($sp)
    lw      $s5,92($sp)
    lw      $s4,88($sp)
    lw      $s3,84($sp)
    lw      $s2,80($sp)
    lw      $s1,76($sp)
    lw      $s0,72($sp)
    jr      $ra
    addiu   $sp,$sp,112
    .end FUN_8009fab8
    .size FUN_8009fab8, . - FUN_8009fab8

/* FUN_8009fc94 (0x8009fc94, 160 bytes) */
    .section .text.FUN_8009fc94,"ax",@progbits
    .globl FUN_8009fc94
    .globl sym_8003bac8
    .type FUN_8009fc94, @function
    .ent FUN_8009fc94
FUN_8009fc94:
    addiu   $sp,$sp,-32
    sw      $s1,20($sp)
    addu    $s1,$a0,$zero
    sw      $s2,24($sp)
    addu    $s2,$a1,$zero
    sw      $s0,16($sp)
    andi    $s0,$a2,0xff
    addu    $a0,$s2,$zero
    sw      $ra,28($sp)
    jal     sym_8003bac8
    addiu   $a1,$s0,1
    beq     $s0,$zero,.LFUN_8009fc94_88
    addu    $a3,$zero,$zero
    addu    $a1,$s0,$zero
    addiu   $v0,$a1,-1
    addu    $a2,$s2,$v0
    lui     $t0,0xcccc
    ori     $t0,$t0,0xcccd
.LFUN_8009fc94_48:
    multu   $s1,$t0
    andi    $a0,$a3,0xff
    addiu   $a3,$a3,1
    subu    $a0,$a2,$a0
    mfhi    $t1
    srl     $v1,$t1,0x3
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x1
    subu    $v0,$s1,$v0
    addiu   $v0,$v0,48
    sb      $v0,0($a0)
    andi    $v0,$a3,0xff
    sltu    $v0,$v0,$a1
    bne     $v0,$zero,.LFUN_8009fc94_48
    addu    $s1,$v1,$zero
.LFUN_8009fc94_88:
    lw      $ra,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end FUN_8009fc94
    .size FUN_8009fc94, . - FUN_8009fc94

/* FUN_8009fd34 (0x8009fd34, 292 bytes) */
    .section .text.FUN_8009fd34,"ax",@progbits
    .globl FUN_8009fd34
    .globl sym_8003bac8
    .type FUN_8009fd34, @function
    .ent FUN_8009fd34
FUN_8009fd34:
    addiu   $sp,$sp,-40
    sw      $s3,28($sp)
    addu    $s3,$a1,$zero
    sw      $s1,20($sp)
    addu    $s1,$a0,$zero
    sw      $s4,32($sp)
    addu    $s4,$a3,$zero
    sw      $s2,24($sp)
    addu    $s2,$a2,$zero
    sw      $s0,16($sp)
    andi    $s0,$s2,0xff
    addu    $a0,$s3,$zero
    sw      $ra,36($sp)
    jal     sym_8003bac8
    addiu   $a1,$s0,1
    beq     $s0,$zero,.LFUN_8009fd34_98
    addu    $a2,$zero,$zero
    addu    $a1,$s0,$zero
    addiu   $v0,$a1,-1
    addu    $a3,$s3,$v0
    lui     $t0,0xcccc
    ori     $t0,$t0,0xcccd
.LFUN_8009fd34_58:
    multu   $s1,$t0
    andi    $a0,$a2,0xff
    addiu   $a2,$a2,1
    subu    $a0,$a3,$a0
    mfhi    $t1
    srl     $v1,$t1,0x3
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x1
    subu    $v0,$s1,$v0
    addiu   $v0,$v0,48
    sb      $v0,0($a0)
    andi    $v0,$a2,0xff
    sltu    $v0,$v0,$a1
    bne     $v0,$zero,.LFUN_8009fd34_58
    addu    $s1,$v1,$zero
.LFUN_8009fd34_98:
    andi    $v0,$s2,0xff
    addiu   $v0,$v0,-1
    blez    $v0,.LFUN_8009fd34_f8
    addu    $a0,$zero,$zero
    addiu   $t0,$zero,48
    addiu   $a3,$zero,32
    addiu   $a2,$zero,58
    addu    $a1,$v0,$zero
    andi    $v0,$a0,0xff
.LFUN_8009fd34_bc:
    addu    $v1,$s3,$v0
    lbu     $v0,0($v1)
    sll     $zero,$zero,0x0
    bne     $v0,$t0,.LFUN_8009fd34_fc
    andi    $v0,$s2,0xff
    bne     $s4,$zero,.LFUN_8009fd34_e0
    sll     $zero,$zero,0x0
    j       .LFUN_8009fd34_e4
    sb      $a3,0($v1)
.LFUN_8009fd34_e0:
    sb      $a2,0($v1)
.LFUN_8009fd34_e4:
    addiu   $a0,$a0,1
    andi    $v0,$a0,0xff
    slt     $v0,$v0,$a1
    bne     $v0,$zero,.LFUN_8009fd34_bc
    andi    $v0,$a0,0xff
.LFUN_8009fd34_f8:
    andi    $v0,$s2,0xff
.LFUN_8009fd34_fc:
    addu    $v1,$s3,$v0
    sb      $zero,0($v1)
    lw      $ra,36($sp)
    lw      $s4,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end FUN_8009fd34
    .size FUN_8009fd34, . - FUN_8009fd34

/* FUN_8009ffb0 (0x8009ffb0, 32 bytes) */
    .section .text.FUN_8009ffb0,"ax",@progbits
    .globl FUN_8009ffb0
    .type FUN_8009ffb0, @function
    .ent FUN_8009ffb0
FUN_8009ffb0:
    lui     $v0,0x800e
    lw      $v0,2840($v0)
    sll     $zero,$zero,0x0
    lbu     $v0,130($v0)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,1
    jr      $ra
    andi    $v0,$v0,0xff
    .end FUN_8009ffb0
    .size FUN_8009ffb0, . - FUN_8009ffb0

/* FUN_8009ffd0 (0x8009ffd0, 32 bytes) */
    .section .text.FUN_8009ffd0,"ax",@progbits
    .globl FUN_8009ffd0
    .type FUN_8009ffd0, @function
    .ent FUN_8009ffd0
FUN_8009ffd0:
    lui     $v0,0x800e
    lw      $v0,2840($v0)
    sll     $zero,$zero,0x0
    lbu     $v0,131($v0)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,1
    jr      $ra
    andi    $v0,$v0,0xff
    .end FUN_8009ffd0
    .size FUN_8009ffd0, . - FUN_8009ffd0

/* FUN_8009fff0 (0x8009fff0, 24 bytes) */
    .section .text.FUN_8009fff0,"ax",@progbits
    .globl FUN_8009fff0
    .type FUN_8009fff0, @function
    .ent FUN_8009fff0
FUN_8009fff0:
    lui     $v0,0x800e
    lw      $v0,2840($v0)
    addiu   $a1,$a1,-1
    addu    $v0,$v0,$a0
    jr      $ra
    sb      $a1,129($v0)
    .end FUN_8009fff0
    .size FUN_8009fff0, . - FUN_8009fff0

/* FUN_800a07b8 (0x800a07b8, 376 bytes) */
    .section .text.FUN_800a07b8,"ax",@progbits
    .globl FUN_800a07b8
    .globl sym_800a0640
    .globl sym_80020d24
    .globl sym_80021010
    .type FUN_800a07b8, @function
    .ent FUN_800a07b8
FUN_800a07b8:
    addiu   $v0,$zero,32
    bne     $a0,$zero,.LFUN_800a07b8_2c
    sb      $v0,5528($v1)
    lw      $v0,184($a1)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_800a07b8_30
    lui     $v0,0x800b
    lbu     $v1,82($a1)
    addiu   $v0,$zero,1
    bne     $v1,$v0,.LFUN_800a07b8_168
    sll     $zero,$zero,0x0
.LFUN_800a07b8_2c:
    lui     $v0,0x800b
.LFUN_800a07b8_30:
    lw      $v0,-14100($v0)
    sll     $zero,$zero,0x0
    lbu     $v0,81($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LFUN_800a07b8_168
    lui     $v1,0x800e
    addiu   $v0,$zero,1
    j       .LFUN_800a07b8_168
    sb      $v0,5528($v1)
    lui     $v0,0x800b
    lw      $v0,-14100($v0)
    sll     $zero,$zero,0x0
    lbu     $v0,81($v0)
    sll     $zero,$zero,0x0
    sll     $v1,$v0,0x3
    subu    $v1,$v1,$v0
    sll     $v1,$v1,0x2
    lui     $v0,0x800e
    addiu   $v0,$v0,5136
    jal     sym_800a0640
    addu    $s0,$v1,$v0
    lw      $a0,0($s0)
    lw      $a1,16($s0)
    jal     sym_80020d24
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_800a07b8_168
    lui     $v1,0x800e
    addiu   $v0,$zero,33
    j       .LFUN_800a07b8_168
    sb      $v0,5528($v1)
    lui     $v0,0x800b
    lw      $v1,-14100($v0)
    addiu   $v0,$zero,6
    sb      $v0,64($v1)
    lui     $v0,0x800e
    j       .LFUN_800a07b8_168
    sb      $zero,5528($v0)
    lui     $v0,0x800b
    lw      $v0,-14100($v0)
    addiu   $v1,$zero,1
    sb      $v1,0($v0)
    lui     $v0,0x8012
    sb      $v1,-30384($v0)
    lui     $v1,0x800e
    addiu   $v0,$zero,16
    j       .LFUN_800a07b8_168
    sb      $v0,5528($v1)
    lui     $v0,0x8012
    lbu     $v0,-30384($v0)
    sll     $zero,$zero,0x0
    sll     $v1,$v0,0x3
    subu    $v1,$v1,$v0
    sll     $v1,$v1,0x2
    lui     $v0,0x800e
    addiu   $v0,$v0,5136
    jal     sym_800a0640
    addu    $s0,$v1,$v0
    lw      $a0,0($s0)
    lw      $a1,16($s0)
    jal     sym_80020d24
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_800a07b8_168
    lui     $v1,0x800e
    addiu   $v0,$zero,17
    j       .LFUN_800a07b8_168
    sb      $v0,5528($v1)
    jal     sym_80021010
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_800a07b8_158
    lui     $v1,0x8012
    lui     $v1,0x800e
    addiu   $v0,$zero,1
    sb      $v0,5528($v1)
    lui     $v1,0x8012
.LFUN_800a07b8_158:
    lbu     $v0,-30384($v1)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,1
    sb      $v0,-30384($v1)
.LFUN_800a07b8_168:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_800a07b8
    .size FUN_800a07b8, . - FUN_800a07b8

/* FUN_800a0b58 (0x800a0b58, 20 bytes) */
    .section .text.FUN_800a0b58,"ax",@progbits
    .globl FUN_800a0b58
    .type FUN_800a0b58, @function
    .ent FUN_800a0b58
FUN_800a0b58:
    lui     $v0,0x8012
    sw      $zero,-30380($v0)
    lui     $v0,0x8012
    jr      $ra
    sb      $a0,-30376($v0)
    .end FUN_800a0b58
    .size FUN_800a0b58, . - FUN_800a0b58

/* FUN_800a0b6c (0x800a0b6c, 152 bytes) */
    .section .text.FUN_800a0b6c,"ax",@progbits
    .globl FUN_800a0b6c
    .globl sym_80021470
    .type FUN_800a0b6c, @function
    .ent FUN_800a0b6c
FUN_800a0b6c:
    lui     $v1,0x8012
    lw      $v0,-30380($v1)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    addiu   $a0,$v0,1
    lui     $v0,0x8012
    sw      $a0,-30380($v1)
    lbu     $v1,-30376($v0)
    addiu   $v0,$zero,1
    beq     $v1,$v0,.LFUN_800a0b6c_34
    sltiu   $v0,$a0,241
    bne     $v0,$zero,.LFUN_800a0b6c_88
    sll     $zero,$zero,0x0
.LFUN_800a0b6c_34:
    lui     $v0,0x800b
    lui     $a0,0x800b
    lw      $v0,-14100($v0)
    lw      $v1,-14104($a0)
    lui     $a2,0x8002
    sh      $zero,8($v0)
    lbu     $v0,144($v1)
    addiu   $a1,$zero,190
    sb      $v0,23($v1)
    lw      $v0,-14104($a0)
    addiu   $a2,$a2,780
    lhu     $a0,12($v0)
    ori     $a3,$zero,0xc100
    negu    $a0,$a0
    srl     $v0,$a0,0x1f
    addu    $a0,$a0,$v0
    sra     $a0,$a0,0x1
    addiu   $a0,$a0,24
    sll     $a0,$a0,0x10
    jal     sym_80021470
    sra     $a0,$a0,0x10
.LFUN_800a0b6c_88:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_800a0b6c
    .size FUN_800a0b6c, . - FUN_800a0b6c

/* FUN_800a0edc (0x800a0edc, 48 bytes) */
    .section .text.FUN_800a0edc,"ax",@progbits
    .globl FUN_800a0edc
    .type FUN_800a0edc, @function
    .ent FUN_800a0edc
FUN_800a0edc:
    lui     $a1,0x800f
    lui     $v1,0x800b
    lw      $a0,-14100($v1)
    addiu   $v0,$zero,1
    sb      $v0,10497($a1)
    sb      $v0,81($a0)
    lw      $v0,-14100($v1)
    sll     $zero,$zero,0x0
    sb      $zero,64($v0)
    lw      $v0,-14100($v1)
    jr      $ra
    sb      $zero,66($v0)
    .end FUN_800a0edc
    .size FUN_800a0edc, . - FUN_800a0edc

/* FUN_800a0f0c (0x800a0f0c, 32 bytes) */
    .section .text.FUN_800a0f0c,"ax",@progbits
    .globl FUN_800a0f0c
    .globl sym_800a00d4
    .type FUN_800a0f0c, @function
    .ent FUN_800a0f0c
FUN_800a0f0c:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_800a00d4
    sll     $zero,$zero,0x0
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_800a0f0c
    .size FUN_800a0f0c, . - FUN_800a0f0c

/* FUN_800a0f2c (0x800a0f2c, 48 bytes) */
    .section .text.FUN_800a0f2c,"ax",@progbits
    .globl FUN_800a0f2c
    .type FUN_800a0f2c, @function
    .ent FUN_800a0f2c
FUN_800a0f2c:
    lui     $a1,0x800f
    lui     $v1,0x800b
    lw      $a0,-14100($v1)
    addiu   $v0,$zero,1
    sb      $v0,10497($a1)
    sb      $v0,81($a0)
    lw      $v0,-14100($v1)
    sll     $zero,$zero,0x0
    sb      $zero,64($v0)
    lw      $v0,-14100($v1)
    jr      $ra
    sb      $zero,66($v0)
    .end FUN_800a0f2c
    .size FUN_800a0f2c, . - FUN_800a0f2c

/* FUN_800a0f5c (0x800a0f5c, 32 bytes) */
    .section .text.FUN_800a0f5c,"ax",@progbits
    .globl FUN_800a0f5c
    .globl sym_800a00d4
    .type FUN_800a0f5c, @function
    .ent FUN_800a0f5c
FUN_800a0f5c:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_800a00d4
    sll     $zero,$zero,0x0
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_800a0f5c
    .size FUN_800a0f5c, . - FUN_800a0f5c

/* FUN_800a1024 (0x800a1024, 48 bytes) */
    .section .text.FUN_800a1024,"ax",@progbits
    .globl FUN_800a1024
    .type FUN_800a1024, @function
    .ent FUN_800a1024
FUN_800a1024:
    lui     $a1,0x800f
    lui     $v1,0x800b
    lw      $a0,-14100($v1)
    addiu   $v0,$zero,1
    sb      $v0,10497($a1)
    sb      $v0,81($a0)
    lw      $v0,-14100($v1)
    sll     $zero,$zero,0x0
    sb      $zero,64($v0)
    lw      $v0,-14100($v1)
    jr      $ra
    sb      $zero,66($v0)
    .end FUN_800a1024
    .size FUN_800a1024, . - FUN_800a1024

/* FUN_800a1054 (0x800a1054, 32 bytes) */
    .section .text.FUN_800a1054,"ax",@progbits
    .globl FUN_800a1054
    .globl sym_800a00d4
    .type FUN_800a1054, @function
    .ent FUN_800a1054
FUN_800a1054:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_800a00d4
    sll     $zero,$zero,0x0
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_800a1054
    .size FUN_800a1054, . - FUN_800a1054

/* FUN_800a1250 (0x800a1250, 144 bytes) */
    .section .text.FUN_800a1250,"ax",@progbits
    .globl FUN_800a1250
    .globl sym_800a2364
    .globl sym_80021010
    .globl sym_80020e68
    .type FUN_800a1250, @function
    .ent FUN_800a1250
FUN_800a1250:
    j       .LFUN_800a1250_80
    sb      $v0,5528($v1)
    jal     sym_800a2364
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0xff
    addiu   $v1,$zero,1
    beq     $v0,$v1,.LFUN_800a1250_80
    lui     $v1,0x800e
    addiu   $v0,$zero,2
    j       .LFUN_800a1250_80
    sb      $v0,5528($v1)
    jal     sym_80021010
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_800a1250_80
    lui     $v1,0x800e
    addiu   $v0,$zero,3
    j       .LFUN_800a1250_80
    sb      $v0,5528($v1)
    jal     sym_80020e68
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0xff
    bne     $v0,$zero,.LFUN_800a1250_80
    lui     $v1,0x800e
    addiu   $v0,$zero,4
    j       .LFUN_800a1250_80
    sb      $v0,5528($v1)
    lui     $v0,0x800b
    lw      $v1,-14100($v0)
    addiu   $v0,$zero,3
    sb      $v0,64($v1)
    lui     $v0,0x800e
    sb      $zero,5528($v0)
.LFUN_800a1250_80:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_800a1250
    .size FUN_800a1250, . - FUN_800a1250

/* FUN_800a1548 (0x800a1548, 60 bytes) */
    .section .text.FUN_800a1548,"ax",@progbits
    .globl FUN_800a1548
    .globl sym_800a1634
    .type FUN_800a1548, @function
    .ent FUN_800a1548
FUN_800a1548:
    lui     $v0,0x800e
    lw      $v0,5532($v0)
    sll     $zero,$zero,0x0
    lbu     $v1,0($v0)
    sll     $zero,$zero,0x0
    sltiu   $v0,$v1,6
    beq     $v0,$zero,sym_800a1634
    lui     $v0,0x8002
    addiu   $v0,$v0,1056
    sll     $v1,$v1,0x2
    addu    $v1,$v1,$v0
    lw      $v0,0($v1)
    sll     $zero,$zero,0x0
    jr      $v0
    sll     $zero,$zero,0x0
    .end FUN_800a1548
    .size FUN_800a1548, . - FUN_800a1548

/* FUN_800a1584 (0x800a1584, 184 bytes) */
    .section .text.FUN_800a1584,"ax",@progbits
    .globl FUN_800a1584
    .type FUN_800a1584, @function
    .ent FUN_800a1584
FUN_800a1584:
    lui     $v1,0x800e
    lw      $v0,5532($v1)
    sll     $zero,$zero,0x0
    sb      $zero,1($v0)
    lw      $v1,5532($v1)
    j       .LFUN_800a1584_a0
    sll     $zero,$zero,0x0
    lui     $a1,0x800e
    lw      $v1,5532($a1)
    sll     $zero,$zero,0x0
    lbu     $v0,1($v1)
    lbu     $a0,2($v1)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$a0
    sb      $v0,1($v1)
    lw      $v1,5532($a1)
    sll     $zero,$zero,0x0
    lb      $v0,1($v1)
    sll     $zero,$zero,0x0
    bltz    $v0,.LFUN_800a1584_a0
    sll     $zero,$zero,0x0
    j       .LFUN_800a1584_b0
    sll     $zero,$zero,0x0
    lui     $a1,0x800e
    lw      $a0,5532($a1)
    sll     $zero,$zero,0x0
    lbu     $v1,1($a0)
    lbu     $v0,3($a0)
    sll     $zero,$zero,0x0
    subu    $v0,$v1,$v0
    bgtz    $v0,.LFUN_800a1584_84
    addu    $v1,$v0,$zero
    addu    $v1,$zero,$zero
.LFUN_800a1584_84:
    sb      $v1,1($a0)
    lw      $v1,5532($a1)
    sll     $zero,$zero,0x0
    lbu     $v0,1($v1)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_800a1584_b0
    sll     $zero,$zero,0x0
.LFUN_800a1584_a0:
    lbu     $v0,0($v1)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,1
    sb      $v0,0($v1)
.LFUN_800a1584_b0:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_800a1584
    .size FUN_800a1584, . - FUN_800a1584

/* FUN_800a163c (0x800a163c, 68 bytes) */
    .section .text.FUN_800a163c,"ax",@progbits
    .globl FUN_800a163c
    .globl sym_8003bac8
    .type FUN_800a163c, @function
    .ent FUN_800a163c
FUN_800a163c:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    lui     $s0,0x800e
    lw      $a0,5532($s0)
    sw      $ra,20($sp)
    jal     sym_8003bac8
    addiu   $a1,$zero,8
    lw      $v0,5532($s0)
    addiu   $v1,$zero,8
    sb      $v1,2($v0)
    lw      $v0,5532($s0)
    sll     $zero,$zero,0x0
    sb      $v1,3($v0)
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_800a163c
    .size FUN_800a163c, . - FUN_800a163c

/* FUN_800a1680 (0x800a1680, 44 bytes) */
    .section .text.FUN_800a1680,"ax",@progbits
    .globl FUN_800a1680
    .type FUN_800a1680, @function
    .ent FUN_800a1680
FUN_800a1680:
    andi    $v0,$a0,0xff
    bne     $v0,$zero,.LFUN_800a1680_10
    lui     $v1,0x800e
    addiu   $a0,$zero,8
.LFUN_800a1680_10:
    lw      $v0,5532($v1)
    sll     $zero,$zero,0x0
    sb      $a0,2($v0)
    lw      $v1,5532($v1)
    addiu   $v0,$zero,1
    jr      $ra
    sb      $v0,0($v1)
    .end FUN_800a1680
    .size FUN_800a1680, . - FUN_800a1680

/* FUN_800a16ac (0x800a16ac, 44 bytes) */
    .section .text.FUN_800a16ac,"ax",@progbits
    .globl FUN_800a16ac
    .type FUN_800a16ac, @function
    .ent FUN_800a16ac
FUN_800a16ac:
    andi    $v0,$a0,0xff
    bne     $v0,$zero,.LFUN_800a16ac_10
    lui     $v1,0x800e
    addiu   $a0,$zero,8
.LFUN_800a16ac_10:
    lw      $v0,5532($v1)
    sll     $zero,$zero,0x0
    sb      $a0,3($v0)
    lw      $v1,5532($v1)
    addiu   $v0,$zero,4
    jr      $ra
    sb      $v0,0($v1)
    .end FUN_800a16ac
    .size FUN_800a16ac, . - FUN_800a16ac

/* FUN_800a16d8 (0x800a16d8, 28 bytes) */
    .section .text.FUN_800a16d8,"ax",@progbits
    .globl FUN_800a16d8
    .type FUN_800a16d8, @function
    .ent FUN_800a16d8
FUN_800a16d8:
    lui     $v0,0x800e
    lw      $v1,5532($v0)
    sll     $zero,$zero,0x0
    sb      $a0,2($v1)
    lw      $v0,5532($v0)
    jr      $ra
    sb      $a1,3($v0)
    .end FUN_800a16d8
    .size FUN_800a16d8, . - FUN_800a16d8

/* FUN_800a16f4 (0x800a16f4, 8 bytes) */
    .section .text.FUN_800a16f4,"ax",@progbits
    .globl FUN_800a16f4
    .type FUN_800a16f4, @function
    .ent FUN_800a16f4
FUN_800a16f4:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_800a16f4
    .size FUN_800a16f4, . - FUN_800a16f4

/* FUN_800a16fc (0x800a16fc, 8 bytes) */
    .section .text.FUN_800a16fc,"ax",@progbits
    .globl FUN_800a16fc
    .type FUN_800a16fc, @function
    .ent FUN_800a16fc
FUN_800a16fc:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_800a16fc
    .size FUN_800a16fc, . - FUN_800a16fc

/* FUN_800a1704 (0x800a1704, 8 bytes) */
    .section .text.FUN_800a1704,"ax",@progbits
    .globl FUN_800a1704
    .type FUN_800a1704, @function
    .ent FUN_800a1704
FUN_800a1704:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_800a1704
    .size FUN_800a1704, . - FUN_800a1704

/* FUN_800a170c (0x800a170c, 8 bytes) */
    .section .text.FUN_800a170c,"ax",@progbits
    .globl FUN_800a170c
    .type FUN_800a170c, @function
    .ent FUN_800a170c
FUN_800a170c:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_800a170c
    .size FUN_800a170c, . - FUN_800a170c

/* FUN_800a1714 (0x800a1714, 8 bytes) */
    .section .text.FUN_800a1714,"ax",@progbits
    .globl FUN_800a1714
    .type FUN_800a1714, @function
    .ent FUN_800a1714
FUN_800a1714:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_800a1714
    .size FUN_800a1714, . - FUN_800a1714

/* FUN_800a171c (0x800a171c, 8 bytes) */
    .section .text.FUN_800a171c,"ax",@progbits
    .globl FUN_800a171c
    .type FUN_800a171c, @function
    .ent FUN_800a171c
FUN_800a171c:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_800a171c
    .size FUN_800a171c, . - FUN_800a171c

/* FUN_800a2080 (0x800a2080, 336 bytes) */
    .section .text.FUN_800a2080,"ax",@progbits
    .globl FUN_800a2080
    .globl sym_80028600
    .globl sym_80026bc8
    .globl sym_80020d24
    .globl sym_80021010
    .globl sym_80026e70
    .globl sym_80028588
    .type FUN_800a2080, @function
    .ent FUN_800a2080
FUN_800a2080:
    j       .LFUN_800a2080_138
    sb      $v1,12($v0)
    lui     $s0,0x800e
    lw      $v0,5564($s0)
    sll     $zero,$zero,0x0
    lw      $a0,0($v0)
    jal     sym_80028600
    sll     $zero,$zero,0x0
    addiu   $v1,$zero,-1
    bne     $v0,$v1,.LFUN_800a2080_38
    addiu   $v0,$zero,2
    lw      $v1,5564($s0)
    j       .LFUN_800a2080_138
    sb      $v0,12($v1)
.LFUN_800a2080_38:
    lw      $v1,5564($s0)
    j       .LFUN_800a2080_120
    addiu   $v0,$zero,7
    lui     $s0,0x800e
    lw      $v0,5564($s0)
    sll     $zero,$zero,0x0
    lw      $a0,0($v0)
    lw      $a1,4($v0)
    jal     sym_80026bc8
    sll     $zero,$zero,0x0
    lw      $v1,5564($s0)
    addiu   $v0,$zero,3
    j       .LFUN_800a2080_138
    sb      $v0,12($v1)
    lui     $s0,0x800e
    lw      $v0,5564($s0)
    sll     $zero,$zero,0x0
    lw      $a0,8($v0)
    lw      $a1,4($v0)
    jal     sym_80020d24
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_800a2080_13c
    addu    $v0,$s1,$zero
    lw      $v1,5564($s0)
    addiu   $v0,$zero,4
    j       .LFUN_800a2080_138
    sb      $v0,12($v1)
    jal     sym_80021010
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_800a2080_13c
    addu    $v0,$s1,$zero
    lui     $v0,0x800e
    lw      $v1,5564($v0)
    addiu   $v0,$zero,5
    j       .LFUN_800a2080_138
    sb      $v0,12($v1)
    jal     sym_80026e70
    sll     $zero,$zero,0x0
    addu    $v1,$v0,$zero
    addiu   $v0,$zero,-1
    beq     $v1,$v0,.LFUN_800a2080_13c
    addu    $v0,$s1,$zero
    bne     $v1,$zero,.LFUN_800a2080_128
    lui     $v0,0x800e
    lw      $v1,5564($v0)
    addiu   $v0,$zero,6
    j       .LFUN_800a2080_138
    sb      $v0,12($v1)
    jal     sym_80028588
    sll     $zero,$zero,0x0
    addu    $v1,$v0,$zero
    addiu   $v0,$zero,1
    beq     $v1,$v0,.LFUN_800a2080_13c
    addu    $v0,$s1,$zero
    bne     $v1,$zero,.LFUN_800a2080_128
    lui     $v0,0x800e
    lw      $v1,5564($v0)
    addiu   $v0,$zero,7
.LFUN_800a2080_120:
    j       .LFUN_800a2080_138
    sb      $v0,12($v1)
.LFUN_800a2080_128:
    lw      $v0,5564($v0)
    j       .LFUN_800a2080_138
    sb      $zero,12($v0)
    addiu   $s1,$zero,1
.LFUN_800a2080_138:
    addu    $v0,$s1,$zero
.LFUN_800a2080_13c:
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end FUN_800a2080
    .size FUN_800a2080, . - FUN_800a2080

/* FUN_800a2230 (0x800a2230, 32 bytes) */
    .section .text.FUN_800a2230,"ax",@progbits
    .globl FUN_800a2230
    .globl sym_80026940
    .type FUN_800a2230, @function
    .ent FUN_800a2230
FUN_800a2230:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_80026940
    addiu   $a0,$zero,795
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_800a2230
    .size FUN_800a2230, . - FUN_800a2230

/* FUN_800a2250 (0x800a2250, 32 bytes) */
    .section .text.FUN_800a2250,"ax",@progbits
    .globl FUN_800a2250
    .globl sym_80026940
    .type FUN_800a2250, @function
    .ent FUN_800a2250
FUN_800a2250:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_80026940
    addiu   $a0,$zero,793
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_800a2250
    .size FUN_800a2250, . - FUN_800a2250

/* FUN_800a2270 (0x800a2270, 32 bytes) */
    .section .text.FUN_800a2270,"ax",@progbits
    .globl FUN_800a2270
    .globl sym_80026940
    .type FUN_800a2270, @function
    .ent FUN_800a2270
FUN_800a2270:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_80026940
    addiu   $a0,$zero,796
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_800a2270
    .size FUN_800a2270, . - FUN_800a2270

/* FUN_800a2290 (0x800a2290, 32 bytes) */
    .section .text.FUN_800a2290,"ax",@progbits
    .globl FUN_800a2290
    .globl sym_80026940
    .type FUN_800a2290, @function
    .ent FUN_800a2290
FUN_800a2290:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_80026940
    addiu   $a0,$zero,788
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_800a2290
    .size FUN_800a2290, . - FUN_800a2290

/* FUN_800a2774 (0x800a2774, 68 bytes) */
    .section .text.FUN_800a2774,"ax",@progbits
    .globl FUN_800a2774
    .globl sym_80038810
    .globl sym_80038564
    .type FUN_800a2774, @function
    .ent FUN_800a2774
FUN_800a2774:
    addiu   $sp,$sp,-32
    sh      $a0,16($sp)
    addiu   $a0,$sp,16
    lui     $v0,0x800e
    sh      $a1,18($sp)
    lw      $a1,5632($v0)
    addiu   $v0,$zero,16
    sw      $ra,24($sp)
    sh      $v0,20($sp)
    jal     sym_80038810
    sh      $v0,22($sp)
    jal     sym_80038564
    addu    $a0,$zero,$zero
    lw      $ra,24($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,32
    .end FUN_800a2774
    .size FUN_800a2774, . - FUN_800a2774

/* FUN_800a27b8 (0x800a27b8, 76 bytes) */
    .section .text.FUN_800a27b8,"ax",@progbits
    .globl FUN_800a27b8
    .type FUN_800a27b8, @function
    .ent FUN_800a27b8
FUN_800a27b8:
    j       .LFUN_800a27b8_1c
    sll     $zero,$zero,0x0
.LFUN_800a27b8_8:
    addiu   $a2,$a2,-1
    bgtz    $a2,.LFUN_800a27b8_1c
    addiu   $a1,$a1,1
    j       .LFUN_800a27b8_44
    addu    $v0,$zero,$zero
.LFUN_800a27b8_1c:
    lbu     $v1,0($a0)
    lbu     $v0,0($a1)
    sll     $zero,$zero,0x0
    beq     $v1,$v0,.LFUN_800a27b8_8
    addiu   $a0,$a0,1
    addiu   $a0,$a0,-1
    lbu     $v1,0($a0)
    lbu     $v0,0($a1)
    sll     $zero,$zero,0x0
    subu    $v0,$v1,$v0
.LFUN_800a27b8_44:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_800a27b8
    .size FUN_800a27b8, . - FUN_800a27b8

/* FUN_800a2b7c (0x800a2b7c, 80 bytes) */
    .section .text.FUN_800a2b7c,"ax",@progbits
    .globl FUN_800a2b7c
    .type FUN_800a2b7c, @function
    .ent FUN_800a2b7c
FUN_800a2b7c:
    addu    $a0,$zero,$zero
    lui     $v0,0x800e
    lw      $v0,2840($v0)
    addu    $v1,$a0,$zero
    addiu   $a1,$v0,4560
    andi    $v0,$v1,0xff
.LFUN_800a2b7c_18:
    addu    $v0,$a1,$v0
    lbu     $v0,0($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x1
    bne     $v0,$zero,.LFUN_800a2b7c_34
    sll     $zero,$zero,0x0
    addiu   $a0,$a0,1
.LFUN_800a2b7c_34:
    addiu   $v1,$v1,1
    andi    $v0,$v1,0xff
    sltiu   $v0,$v0,228
    bne     $v0,$zero,.LFUN_800a2b7c_18
    andi    $v0,$v1,0xff
    jr      $ra
    andi    $v0,$a0,0xff
    .end FUN_800a2b7c
    .size FUN_800a2b7c, . - FUN_800a2b7c

/* FUN_800a2c1c (0x800a2c1c, 52 bytes) */
    .section .text.FUN_800a2c1c,"ax",@progbits
    .globl FUN_800a2c1c
    .type FUN_800a2c1c, @function
    .ent FUN_800a2c1c
FUN_800a2c1c:
    lui     $v0,0x800e
    lw      $v0,2840($v0)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,4560
    addu    $a0,$v0,$a0
    lbu     $v1,0($a0)
    sll     $zero,$zero,0x0
    andi    $v0,$v1,0x1
    bne     $v0,$zero,.LFUN_800a2c1c_2c
    ori     $v0,$v1,0x3
    sb      $v0,0($a0)
.LFUN_800a2c1c_2c:
    jr      $ra
    sll     $zero,$zero,0x0
    .end FUN_800a2c1c
    .size FUN_800a2c1c, . - FUN_800a2c1c

/* FUN_800a2c50 (0x800a2c50, 152 bytes) */
    .section .text.FUN_800a2c50,"ax",@progbits
    .globl FUN_800a2c50
    .globl sym_8009d274
    .type FUN_800a2c50, @function
    .ent FUN_800a2c50
FUN_800a2c50:
    lui     $a1,0x800e
    lw      $v0,2840($a1)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    addiu   $v0,$v0,4560
    addu    $a0,$v0,$a0
    lbu     $v1,0($a0)
    sll     $zero,$zero,0x0
    andi    $v0,$v1,0x1
    bne     $v0,$zero,.LFUN_800a2c50_30
    ori     $v0,$v1,0x3
    sb      $v0,0($a0)
.LFUN_800a2c50_30:
    addu    $a0,$zero,$zero
    lw      $v0,2840($a1)
    addu    $v1,$a0,$zero
    addiu   $a1,$v0,4560
    andi    $v0,$v1,0xff
.LFUN_800a2c50_44:
    addu    $v0,$a1,$v0
    lbu     $v0,0($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x1
    bne     $v0,$zero,.LFUN_800a2c50_60
    sll     $zero,$zero,0x0
    addiu   $a0,$a0,1
.LFUN_800a2c50_60:
    addiu   $v1,$v1,1
    andi    $v0,$v1,0xff
    sltiu   $v0,$v0,228
    bne     $v0,$zero,.LFUN_800a2c50_44
    andi    $v0,$v1,0xff
    andi    $v0,$a0,0xff
    bne     $v0,$zero,.LFUN_800a2c50_88
    addiu   $a0,$zero,3
    jal     sym_8009d274
    ori     $a1,$zero,0xffff
.LFUN_800a2c50_88:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_800a2c50
    .size FUN_800a2c50, . - FUN_800a2c50

/* FUN_800a2e14 (0x800a2e14, 144 bytes) */
    .section .text.FUN_800a2e14,"ax",@progbits
    .globl FUN_800a2e14
    .globl sym_8009d274
    .type FUN_800a2e14, @function
    .ent FUN_800a2e14
FUN_800a2e14:
    lui     $a1,0x800e
    lw      $a0,2840($a1)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lbu     $v1,4569($a0)
    sll     $zero,$zero,0x0
    andi    $v0,$v1,0x1
    bne     $v0,$zero,.LFUN_800a2e14_28
    ori     $v0,$v1,0x3
    sb      $v0,4569($a0)
.LFUN_800a2e14_28:
    addu    $a0,$zero,$zero
    lw      $v0,2840($a1)
    addu    $v1,$a0,$zero
    addiu   $a1,$v0,4560
    andi    $v0,$v1,0xff
.LFUN_800a2e14_3c:
    addu    $v0,$a1,$v0
    lbu     $v0,0($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x1
    bne     $v0,$zero,.LFUN_800a2e14_58
    sll     $zero,$zero,0x0
    addiu   $a0,$a0,1
.LFUN_800a2e14_58:
    addiu   $v1,$v1,1
    andi    $v0,$v1,0xff
    sltiu   $v0,$v0,228
    bne     $v0,$zero,.LFUN_800a2e14_3c
    andi    $v0,$v1,0xff
    andi    $v0,$a0,0xff
    bne     $v0,$zero,.LFUN_800a2e14_80
    addiu   $a0,$zero,3
    jal     sym_8009d274
    ori     $a1,$zero,0xffff
.LFUN_800a2e14_80:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_800a2e14
    .size FUN_800a2e14, . - FUN_800a2e14

/* FUN_800a2ea4 (0x800a2ea4, 144 bytes) */
    .section .text.FUN_800a2ea4,"ax",@progbits
    .globl FUN_800a2ea4
    .globl sym_8009d274
    .type FUN_800a2ea4, @function
    .ent FUN_800a2ea4
FUN_800a2ea4:
    lui     $a1,0x800e
    lw      $a0,2840($a1)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lbu     $v1,4570($a0)
    sll     $zero,$zero,0x0
    andi    $v0,$v1,0x1
    bne     $v0,$zero,.LFUN_800a2ea4_28
    ori     $v0,$v1,0x3
    sb      $v0,4570($a0)
.LFUN_800a2ea4_28:
    addu    $a0,$zero,$zero
    lw      $v0,2840($a1)
    addu    $v1,$a0,$zero
    addiu   $a1,$v0,4560
    andi    $v0,$v1,0xff
.LFUN_800a2ea4_3c:
    addu    $v0,$a1,$v0
    lbu     $v0,0($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x1
    bne     $v0,$zero,.LFUN_800a2ea4_58
    sll     $zero,$zero,0x0
    addiu   $a0,$a0,1
.LFUN_800a2ea4_58:
    addiu   $v1,$v1,1
    andi    $v0,$v1,0xff
    sltiu   $v0,$v0,228
    bne     $v0,$zero,.LFUN_800a2ea4_3c
    andi    $v0,$v1,0xff
    andi    $v0,$a0,0xff
    bne     $v0,$zero,.LFUN_800a2ea4_80
    addiu   $a0,$zero,3
    jal     sym_8009d274
    ori     $a1,$zero,0xffff
.LFUN_800a2ea4_80:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_800a2ea4
    .size FUN_800a2ea4, . - FUN_800a2ea4

/* FUN_800a2f34 (0x800a2f34, 144 bytes) */
    .section .text.FUN_800a2f34,"ax",@progbits
    .globl FUN_800a2f34
    .globl sym_8009d274
    .type FUN_800a2f34, @function
    .ent FUN_800a2f34
FUN_800a2f34:
    lui     $a1,0x800e
    lw      $a0,2840($a1)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lbu     $v1,4573($a0)
    sll     $zero,$zero,0x0
    andi    $v0,$v1,0x1
    bne     $v0,$zero,.LFUN_800a2f34_28
    ori     $v0,$v1,0x3
    sb      $v0,4573($a0)
.LFUN_800a2f34_28:
    addu    $a0,$zero,$zero
    lw      $v0,2840($a1)
    addu    $v1,$a0,$zero
    addiu   $a1,$v0,4560
    andi    $v0,$v1,0xff
.LFUN_800a2f34_3c:
    addu    $v0,$a1,$v0
    lbu     $v0,0($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x1
    bne     $v0,$zero,.LFUN_800a2f34_58
    sll     $zero,$zero,0x0
    addiu   $a0,$a0,1
.LFUN_800a2f34_58:
    addiu   $v1,$v1,1
    andi    $v0,$v1,0xff
    sltiu   $v0,$v0,228
    bne     $v0,$zero,.LFUN_800a2f34_3c
    andi    $v0,$v1,0xff
    andi    $v0,$a0,0xff
    bne     $v0,$zero,.LFUN_800a2f34_80
    addiu   $a0,$zero,3
    jal     sym_8009d274
    ori     $a1,$zero,0xffff
.LFUN_800a2f34_80:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_800a2f34
    .size FUN_800a2f34, . - FUN_800a2f34

/* FUN_800a2fc4 (0x800a2fc4, 144 bytes) */
    .section .text.FUN_800a2fc4,"ax",@progbits
    .globl FUN_800a2fc4
    .globl sym_8009d274
    .type FUN_800a2fc4, @function
    .ent FUN_800a2fc4
FUN_800a2fc4:
    lui     $a1,0x800e
    lw      $a0,2840($a1)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lbu     $v1,4571($a0)
    sll     $zero,$zero,0x0
    andi    $v0,$v1,0x1
    bne     $v0,$zero,.LFUN_800a2fc4_28
    ori     $v0,$v1,0x3
    sb      $v0,4571($a0)
.LFUN_800a2fc4_28:
    addu    $a0,$zero,$zero
    lw      $v0,2840($a1)
    addu    $v1,$a0,$zero
    addiu   $a1,$v0,4560
    andi    $v0,$v1,0xff
.LFUN_800a2fc4_3c:
    addu    $v0,$a1,$v0
    lbu     $v0,0($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x1
    bne     $v0,$zero,.LFUN_800a2fc4_58
    sll     $zero,$zero,0x0
    addiu   $a0,$a0,1
.LFUN_800a2fc4_58:
    addiu   $v1,$v1,1
    andi    $v0,$v1,0xff
    sltiu   $v0,$v0,228
    bne     $v0,$zero,.LFUN_800a2fc4_3c
    andi    $v0,$v1,0xff
    andi    $v0,$a0,0xff
    bne     $v0,$zero,.LFUN_800a2fc4_80
    addiu   $a0,$zero,3
    jal     sym_8009d274
    ori     $a1,$zero,0xffff
.LFUN_800a2fc4_80:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_800a2fc4
    .size FUN_800a2fc4, . - FUN_800a2fc4

/* FUN_800a3054 (0x800a3054, 144 bytes) */
    .section .text.FUN_800a3054,"ax",@progbits
    .globl FUN_800a3054
    .globl sym_8009d274
    .type FUN_800a3054, @function
    .ent FUN_800a3054
FUN_800a3054:
    lui     $a1,0x800e
    lw      $a0,2840($a1)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lbu     $v1,4572($a0)
    sll     $zero,$zero,0x0
    andi    $v0,$v1,0x1
    bne     $v0,$zero,.LFUN_800a3054_28
    ori     $v0,$v1,0x3
    sb      $v0,4572($a0)
.LFUN_800a3054_28:
    addu    $a0,$zero,$zero
    lw      $v0,2840($a1)
    addu    $v1,$a0,$zero
    addiu   $a1,$v0,4560
    andi    $v0,$v1,0xff
.LFUN_800a3054_3c:
    addu    $v0,$a1,$v0
    lbu     $v0,0($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x1
    bne     $v0,$zero,.LFUN_800a3054_58
    sll     $zero,$zero,0x0
    addiu   $a0,$a0,1
.LFUN_800a3054_58:
    addiu   $v1,$v1,1
    andi    $v0,$v1,0xff
    sltiu   $v0,$v0,228
    bne     $v0,$zero,.LFUN_800a3054_3c
    andi    $v0,$v1,0xff
    andi    $v0,$a0,0xff
    bne     $v0,$zero,.LFUN_800a3054_80
    addiu   $a0,$zero,3
    jal     sym_8009d274
    ori     $a1,$zero,0xffff
.LFUN_800a3054_80:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_800a3054
    .size FUN_800a3054, . - FUN_800a3054

/* FUN_800a30e4 (0x800a30e4, 144 bytes) */
    .section .text.FUN_800a30e4,"ax",@progbits
    .globl FUN_800a30e4
    .globl sym_8009d274
    .type FUN_800a30e4, @function
    .ent FUN_800a30e4
FUN_800a30e4:
    lui     $a1,0x800e
    lw      $a0,2840($a1)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lbu     $v1,4576($a0)
    sll     $zero,$zero,0x0
    andi    $v0,$v1,0x1
    bne     $v0,$zero,.LFUN_800a30e4_28
    ori     $v0,$v1,0x3
    sb      $v0,4576($a0)
.LFUN_800a30e4_28:
    addu    $a0,$zero,$zero
    lw      $v0,2840($a1)
    addu    $v1,$a0,$zero
    addiu   $a1,$v0,4560
    andi    $v0,$v1,0xff
.LFUN_800a30e4_3c:
    addu    $v0,$a1,$v0
    lbu     $v0,0($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x1
    bne     $v0,$zero,.LFUN_800a30e4_58
    sll     $zero,$zero,0x0
    addiu   $a0,$a0,1
.LFUN_800a30e4_58:
    addiu   $v1,$v1,1
    andi    $v0,$v1,0xff
    sltiu   $v0,$v0,228
    bne     $v0,$zero,.LFUN_800a30e4_3c
    andi    $v0,$v1,0xff
    andi    $v0,$a0,0xff
    bne     $v0,$zero,.LFUN_800a30e4_80
    addiu   $a0,$zero,3
    jal     sym_8009d274
    ori     $a1,$zero,0xffff
.LFUN_800a30e4_80:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_800a30e4
    .size FUN_800a30e4, . - FUN_800a30e4

/* FUN_800a3174 (0x800a3174, 144 bytes) */
    .section .text.FUN_800a3174,"ax",@progbits
    .globl FUN_800a3174
    .globl sym_8009d274
    .type FUN_800a3174, @function
    .ent FUN_800a3174
FUN_800a3174:
    lui     $a1,0x800e
    lw      $a0,2840($a1)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lbu     $v1,4578($a0)
    sll     $zero,$zero,0x0
    andi    $v0,$v1,0x1
    bne     $v0,$zero,.LFUN_800a3174_28
    ori     $v0,$v1,0x3
    sb      $v0,4578($a0)
.LFUN_800a3174_28:
    addu    $a0,$zero,$zero
    lw      $v0,2840($a1)
    addu    $v1,$a0,$zero
    addiu   $a1,$v0,4560
    andi    $v0,$v1,0xff
.LFUN_800a3174_3c:
    addu    $v0,$a1,$v0
    lbu     $v0,0($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x1
    bne     $v0,$zero,.LFUN_800a3174_58
    sll     $zero,$zero,0x0
    addiu   $a0,$a0,1
.LFUN_800a3174_58:
    addiu   $v1,$v1,1
    andi    $v0,$v1,0xff
    sltiu   $v0,$v0,228
    bne     $v0,$zero,.LFUN_800a3174_3c
    andi    $v0,$v1,0xff
    andi    $v0,$a0,0xff
    bne     $v0,$zero,.LFUN_800a3174_80
    addiu   $a0,$zero,3
    jal     sym_8009d274
    ori     $a1,$zero,0xffff
.LFUN_800a3174_80:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_800a3174
    .size FUN_800a3174, . - FUN_800a3174

/* FUN_800a3204 (0x800a3204, 144 bytes) */
    .section .text.FUN_800a3204,"ax",@progbits
    .globl FUN_800a3204
    .globl sym_8009d274
    .type FUN_800a3204, @function
    .ent FUN_800a3204
FUN_800a3204:
    lui     $a1,0x800e
    lw      $a0,2840($a1)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lbu     $v1,4579($a0)
    sll     $zero,$zero,0x0
    andi    $v0,$v1,0x1
    bne     $v0,$zero,.LFUN_800a3204_28
    ori     $v0,$v1,0x3
    sb      $v0,4579($a0)
.LFUN_800a3204_28:
    addu    $a0,$zero,$zero
    lw      $v0,2840($a1)
    addu    $v1,$a0,$zero
    addiu   $a1,$v0,4560
    andi    $v0,$v1,0xff
.LFUN_800a3204_3c:
    addu    $v0,$a1,$v0
    lbu     $v0,0($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x1
    bne     $v0,$zero,.LFUN_800a3204_58
    sll     $zero,$zero,0x0
    addiu   $a0,$a0,1
.LFUN_800a3204_58:
    addiu   $v1,$v1,1
    andi    $v0,$v1,0xff
    sltiu   $v0,$v0,228
    bne     $v0,$zero,.LFUN_800a3204_3c
    andi    $v0,$v1,0xff
    andi    $v0,$a0,0xff
    bne     $v0,$zero,.LFUN_800a3204_80
    addiu   $a0,$zero,3
    jal     sym_8009d274
    ori     $a1,$zero,0xffff
.LFUN_800a3204_80:
    lw      $ra,16($sp)
    sll     $zero,$zero,0x0
    jr      $ra
    addiu   $sp,$sp,24
    .end FUN_800a3204
    .size FUN_800a3204, . - FUN_800a3204

/* FUN_800a33b0 (0x800a33b0, 172 bytes) */
    .section .text.FUN_800a33b0,"ax",@progbits
    .globl FUN_800a33b0
    .globl sym_800a345c
    .globl sym_800a3618
    .type FUN_800a33b0, @function
    .ent FUN_800a33b0
FUN_800a33b0:
    addiu   $sp,$sp,-32
    sw      $s1,20($sp)
    addiu   $s1,$a0,68
    addu    $v1,$s1,$zero
    sw      $s2,24($sp)
    addu    $s2,$a0,$zero
    addu    $a2,$zero,$zero
    sll     $t0,$a1,0x1
    sll     $a3,$a1,0x2
    sltiu   $a1,$a1,1
    sll     $a1,$a1,0x1
    sw      $ra,28($sp)
    sw      $s0,16($sp)
.LFUN_800a33b0_34:
    addu    $v0,$v1,$t0
    sh      $zero,4($v0)
    addu    $v0,$v1,$a3
    sw      $zero,8($v0)
    addu    $v0,$v1,$a1
    lhu     $v0,4($v0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LFUN_800a33b0_5c
    sll     $zero,$zero,0x0
    sh      $zero,0($v1)
.LFUN_800a33b0_5c:
    addiu   $a2,$a2,1
    slti    $v0,$a2,60
    bne     $v0,$zero,.LFUN_800a33b0_34
    addiu   $v1,$v1,16
    addiu   $s0,$a0,68
    jal     sym_800a345c
    addu    $a0,$s0,$zero
    jal     sym_800a3618
    addu    $a0,$s0,$zero
    beq     $v0,$zero,.LFUN_800a33b0_8c
    addiu   $v0,$zero,820
    lhu     $v0,0($s1)
.LFUN_800a33b0_8c:
    sll     $zero,$zero,0x0
    sh      $v0,2($s2)
    lw      $ra,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end FUN_800a33b0
    .size FUN_800a33b0, . - FUN_800a33b0

/* FUN_800a7a50 (0x800a7a50, 1764 bytes) */
    .section .text.FUN_800a7a50,"ax",@progbits
    .globl FUN_800a7a50
    .globl sym_800ac2bc
    .type FUN_800a7a50, @function
    .ent FUN_800a7a50
FUN_800a7a50:
    addiu   $sp,$sp,-216
    sw      $s8,208($sp)
    addu    $s8,$a0,$zero
    lw      $t5,236($sp)
    lui     $v0,0x8002
    sw      $ra,212($sp)
    sw      $s7,204($sp)
    sw      $s6,200($sp)
    sw      $s5,196($sp)
    sw      $s4,192($sp)
    sw      $s3,188($sp)
    sw      $s2,184($sp)
    sw      $s1,180($sp)
    sw      $s0,176($sp)
    sw      $a1,220($sp)
    sw      $a3,228($sp)
    addiu   $t9,$v0,1612
    lwl     $t4,3($t9)
    lwr     $t4,0($t9)
    lb      $t6,4($t9)
    lb      $t8,5($t9)
    swl     $t4,35($sp)
    swr     $t4,32($sp)
    sb      $t6,36($sp)
    sb      $t8,37($sp)
    lb      $t4,6($t9)
    sll     $zero,$zero,0x0
    sb      $t4,38($sp)
    lw      $t6,240($sp)
    lw      $t9,228($sp)
    addu    $s2,$zero,$zero
    sw      $s8,140($sp)
    andi    $t4,$t5,0x8000
    srl     $v0,$t6,0x1f
    addu    $v0,$t6,$v0
    sra     $v0,$v0,0x1
    sw      $v0,148($sp)
    lui     $v0,0x8012
    addiu   $t7,$v0,-30112
    lw      $v0,232($sp)
    andi    $t5,$t5,0x7fff
    sw      $t4,144($sp)
    sltu    $t8,$s2,$v0
    addu    $s5,$t9,$v0
    addiu   $v1,$s5,-1
    blez    $v1,.LFUN_800a7a50_d0
    sw      $t8,136($sp)
    addiu   $s2,$s2,1
.LFUN_800a7a50_c0:
    slt     $v0,$s2,$v1
    bne     $v0,$zero,.LFUN_800a7a50_c0
    addiu   $s2,$s2,1
    addiu   $s2,$s2,-1
.LFUN_800a7a50_d0:
    addu    $a1,$a2,$zero
    addiu   $t3,$zero,1
    addu    $a3,$zero,$zero
    lw      $s0,8($t7)
    lw      $t0,12($t7)
    blez    $s5,.LFUN_800a7a50_22c
    addiu   $s1,$sp,40
    lui     $s2,0xcccc
    ori     $s2,$s2,0xcccd
    srav    $v0,$s5,$t3
    addiu   $t2,$v0,2
    addu    $t1,$v0,$t3
.LFUN_800a7a50_100:
    bne     $a1,$zero,.LFUN_800a7a50_11c
    multu   $a1,$s2
    addiu   $v0,$zero,10
    mult    $t0,$v0
    mflo    $v1
    j       .LFUN_800a7a50_188
    addu    $a0,$zero,$zero
.LFUN_800a7a50_11c:
    mfhi    $t4
    srl     $v1,$t4,0x3
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x1
    subu    $v0,$a1,$v0
    addiu   $v0,$v0,10
    sll     $a0,$v0,0x5
    slti    $v0,$s5,7
    bne     $v0,$zero,.LFUN_800a7a50_170
    subu    $v0,$s5,$a3
    addiu   $v0,$a3,-1
    subu    $v0,$s5,$v0
    mult    $t0,$v0
    mflo    $v1
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    div     $zero,$v1,$t2
    mflo    $v1
    j       .LFUN_800a7a50_188
    sll     $zero,$zero,0x0
.LFUN_800a7a50_170:
    mult    $t0,$v0
    mflo    $v1
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    div     $zero,$v1,$t1
    mflo    $v1
.LFUN_800a7a50_188:
    sll     $zero,$zero,0x0
    bgez    $v1,.LFUN_800a7a50_19c
    slti    $v0,$v1,256
    addu    $v1,$zero,$zero
    slti    $v0,$v1,256
.LFUN_800a7a50_19c:
    bne     $v0,$zero,.LFUN_800a7a50_1ac
    sll     $zero,$zero,0x0
    j       .LFUN_800a7a50_1b0
    addiu   $v1,$zero,256
.LFUN_800a7a50_1ac:
    addu    $t3,$zero,$zero
.LFUN_800a7a50_1b0:
    mult    $a0,$v1
    addiu   $v0,$zero,256
    subu    $v0,$v0,$v1
    sll     $v0,$v0,0x5
    mflo    $t4
    subu    $v0,$t4,$v0
    sra     $a0,$v0,0x8
    slti    $v0,$a0,320
    bne     $v0,$zero,.LFUN_800a7a50_1ec
    sll     $zero,$zero,0x0
    addiu   $a0,$a0,-320
.LFUN_800a7a50_1dc:
    slti    $v0,$a0,320
    beq     $v0,$zero,.LFUN_800a7a50_1dc
    addiu   $a0,$a0,-320
    addiu   $a0,$a0,320
.LFUN_800a7a50_1ec:
    beq     $a1,$zero,.LFUN_800a7a50_204
    multu   $a1,$s2
    bne     $a0,$zero,.LFUN_800a7a50_208
    addiu   $v1,$a3,1
    addiu   $a0,$zero,1
    multu   $a1,$s2
.LFUN_800a7a50_204:
    addiu   $v1,$a3,1
.LFUN_800a7a50_208:
    subu    $v0,$s5,$v1
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$s1
    sw      $a0,0($v0)
    addu    $a3,$v1,$zero
    slt     $v0,$a3,$s5
    mfhi    $t4
    bne     $v0,$zero,.LFUN_800a7a50_100
    srl     $a1,$t4,0x3
.LFUN_800a7a50_22c:
    addu    $a1,$zero,$zero
    sltiu   $v0,$t3,1
    addu    $v0,$s0,$v0
    sw      $v0,8($t7)
    lw      $v0,12($t7)
    addiu   $t3,$sp,80
    blez    $s5,.LFUN_800a7a50_384
    addiu   $a3,$v0,2
    lui     $t2,0xcccc
    ori     $t2,$t2,0xcccd
    sra     $v0,$s5,0x1
    addiu   $t1,$v0,2
    addiu   $t0,$v0,1
.LFUN_800a7a50_260:
    bne     $a2,$zero,.LFUN_800a7a50_27c
    multu   $a2,$t2
    addiu   $v0,$zero,10
    mult    $a3,$v0
    mflo    $v1
    j       .LFUN_800a7a50_2e8
    addu    $a0,$zero,$zero
.LFUN_800a7a50_27c:
    mfhi    $t4
    srl     $v1,$t4,0x3
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x1
    subu    $v0,$a2,$v0
    addiu   $v0,$v0,10
    sll     $a0,$v0,0x5
    slti    $v0,$s5,7
    bne     $v0,$zero,.LFUN_800a7a50_2d0
    subu    $v0,$s5,$a1
    addiu   $v0,$a1,-1
    subu    $v0,$s5,$v0
    mult    $a3,$v0
    mflo    $v1
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    div     $zero,$v1,$t1
    mflo    $v1
    j       .LFUN_800a7a50_2e8
    sll     $zero,$zero,0x0
.LFUN_800a7a50_2d0:
    mult    $a3,$v0
    mflo    $v1
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    div     $zero,$v1,$t0
    mflo    $v1
.LFUN_800a7a50_2e8:
    sll     $zero,$zero,0x0
    bgez    $v1,.LFUN_800a7a50_2fc
    slti    $v0,$v1,256
    addu    $v1,$zero,$zero
    slti    $v0,$v1,256
.LFUN_800a7a50_2fc:
    bne     $v0,$zero,.LFUN_800a7a50_30c
    mult    $a0,$v1
    addiu   $v1,$zero,256
    mult    $a0,$v1
.LFUN_800a7a50_30c:
    addiu   $v0,$zero,256
    subu    $v0,$v0,$v1
    sll     $v0,$v0,0x5
    mflo    $t4
    subu    $v0,$t4,$v0
    sra     $a0,$v0,0x8
    slti    $v0,$a0,320
    bne     $v0,$zero,.LFUN_800a7a50_344
    sll     $zero,$zero,0x0
    addiu   $a0,$a0,-320
.LFUN_800a7a50_334:
    slti    $v0,$a0,320
    beq     $v0,$zero,.LFUN_800a7a50_334
    addiu   $a0,$a0,-320
    addiu   $a0,$a0,320
.LFUN_800a7a50_344:
    beq     $a2,$zero,.LFUN_800a7a50_35c
    multu   $a2,$t2
    bne     $a0,$zero,.LFUN_800a7a50_360
    addiu   $v1,$a1,1
    addiu   $a0,$zero,1
    multu   $a2,$t2
.LFUN_800a7a50_35c:
    addiu   $v1,$a1,1
.LFUN_800a7a50_360:
    subu    $v0,$s5,$v1
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$t3
    sw      $a0,0($v0)
    addu    $a1,$v1,$zero
    slt     $v0,$a1,$s5
    mfhi    $t4
    bne     $v0,$zero,.LFUN_800a7a50_260
    srl     $a2,$t4,0x3
.LFUN_800a7a50_384:
    blez    $s5,.LFUN_800a7a50_3bc
    addu    $s2,$zero,$zero
    addiu   $a1,$sp,80
    addiu   $a0,$sp,40
.LFUN_800a7a50_394:
    lw      $v1,0($a0)
    lw      $v0,0($a1)
    sra     $v1,$v1,0x5
    sra     $v0,$v0,0x5
    bne     $v1,$v0,.LFUN_800a7a50_3d4
    addiu   $a1,$a1,4
    addiu   $s2,$s2,1
    slt     $v0,$s2,$s5
    bne     $v0,$zero,.LFUN_800a7a50_394
    addiu   $a0,$a0,4
.LFUN_800a7a50_3bc:
    lw      $t6,144($sp)
    sll     $zero,$zero,0x0
    beq     $t6,$zero,.LFUN_800a7a50_3e0
    lui     $v0,0x800e
    j       .LFUN_800a7a50_3e8
    addiu   $s3,$v0,9052
.LFUN_800a7a50_3d4:
    addiu   $v0,$zero,1
    j       .LFUN_800a7a50_3bc
    sb      $v0,0($t7)
.LFUN_800a7a50_3e0:
    lui     $v0,0x800e
    addiu   $s3,$v0,9040
.LFUN_800a7a50_3e8:
    lw      $t8,136($sp)
    addu    $s2,$zero,$zero
    addu    $v0,$s5,$t8
    blez    $v0,.LFUN_800a7a50_6ac
    sw      $zero,152($sp)
    addiu   $v0,$sp,32
    addu    $v0,$v0,$t5
    sw      $v0,156($sp)
    addu    $a1,$zero,$zero
.LFUN_800a7a50_40c:
    lw      $t9,228($sp)
    sll     $zero,$zero,0x0
    bne     $s2,$t9,.LFUN_800a7a50_488
    addu    $a0,$a1,$zero
    lw      $t4,144($sp)
    sll     $zero,$zero,0x0
    bne     $t4,$zero,.LFUN_800a7a50_448
    lui     $v0,0x800e
    lw      $t6,220($sp)
    sll     $zero,$zero,0x0
    addiu   $t6,$t6,3
    sw      $t6,220($sp)
    addiu   $a1,$zero,3
    j       .LFUN_800a7a50_44c
    addiu   $s3,$v0,9028
.LFUN_800a7a50_448:
    addiu   $a0,$zero,-3
.LFUN_800a7a50_44c:
    addiu   $s6,$zero,11
    addu    $a0,$s8,$a0
    addu    $a2,$s3,$zero
    addu    $a3,$zero,$zero
    lw      $t8,220($sp)
    lw      $t9,156($sp)
    lw      $t4,148($sp)
    addiu   $v0,$zero,10
    sw      $s6,16($sp)
    lbu     $v1,0($t9)
    addu    $a1,$t8,$a1
    sw      $t4,24($sp)
    sw      $v0,28($sp)
    j       .LFUN_800a7a50_628
    sw      $v1,20($sp)
.LFUN_800a7a50_488:
    lw      $t6,152($sp)
    sll     $zero,$zero,0x0
    sll     $v0,$t6,0x2
    addu    $v0,$sp,$v0
    lw      $s6,40($v0)
    sll     $zero,$zero,0x0
    bgtz    $s6,.LFUN_800a7a50_4bc
    sll     $zero,$zero,0x0
    lw      $t8,228($sp)
    sll     $zero,$zero,0x0
    addiu   $v0,$t8,-1
    bne     $s2,$v0,.LFUN_800a7a50_4c8
    sll     $zero,$zero,0x0
.LFUN_800a7a50_4bc:
    lw      $t9,240($sp)
    sll     $zero,$zero,0x0
    sw      $t9,148($sp)
.LFUN_800a7a50_4c8:
    lw      $t4,156($sp)
    sll     $zero,$zero,0x0
    lbu     $t1,0($t4)
    lwl     $t6,3($s3)
    lwr     $t6,0($s3)
    lwl     $t8,7($s3)
    lwr     $t8,4($s3)
    lwl     $t9,11($s3)
    lwr     $t9,8($s3)
    swl     $t6,123($sp)
    swr     $t6,120($sp)
    swl     $t8,127($sp)
    swr     $t8,124($sp)
    swl     $t9,131($sp)
    swr     $t9,128($sp)
    lhu     $s1,2($s3)
    andi    $v1,$s6,0x1f
    addiu   $v0,$s1,1
    mult    $v1,$v0
    addu    $s7,$s8,$a0
    addiu   $t2,$zero,10
    sra     $a2,$s6,0x5
    addiu   $a0,$zero,1
    lw      $t6,220($sp)
    addu    $s4,$s1,$zero
    addu    $t0,$s4,$zero
    mflo    $t4
    sra     $v1,$t4,0x5
    slt     $v0,$v1,$s4
    beq     $v0,$zero,.LFUN_800a7a50_548
    addu    $a1,$t6,$a1
    addu    $s4,$v1,$zero
.LFUN_800a7a50_548:
    addu    $v0,$a1,$s1
    addiu   $v0,$v0,1
    subu    $v0,$v0,$v1
    sw      $v0,160($sp)
    slt     $v0,$a0,$v1
    beq     $v0,$zero,.LFUN_800a7a50_56c
    addiu   $v0,$v1,-1
    subu    $t0,$s1,$v0
    addiu   $v1,$zero,1
.LFUN_800a7a50_56c:
    addiu   $s0,$a2,1
    addu    $a0,$s0,$zero
    addiu   $v0,$zero,9
    bne     $a2,$v0,.LFUN_800a7a50_584
    subu    $a1,$a1,$v1
    addu    $s0,$zero,$zero
.LFUN_800a7a50_584:
    bgez    $a2,.LFUN_800a7a50_594
    mult    $s1,$a0
    addiu   $a0,$zero,11
    mult    $s1,$a0
.LFUN_800a7a50_594:
    addu    $a0,$s7,$zero
    addiu   $a2,$sp,120
    lbu     $v0,7($s3)
    lw      $t6,148($sp)
    addu    $a3,$zero,$zero
    sh      $t0,122($sp)
    sw      $t1,168($sp)
    sw      $t2,172($sp)
    mflo    $t4
    addu    $v0,$v0,$t4
    subu    $v0,$v0,$t0
    sb      $v0,127($sp)
    sw      $zero,16($sp)
    sw      $t1,20($sp)
    sw      $t6,24($sp)
    jal     sym_800ac2bc
    sw      $t2,28($sp)
    addu    $a0,$s7,$zero
    mult    $s1,$s0
    addiu   $a2,$sp,120
    lw      $t4,152($sp)
    lw      $a1,160($sp)
    lw      $t1,168($sp)
    lw      $t8,148($sp)
    lw      $t2,172($sp)
    addiu   $t4,$t4,1
    sw      $t4,152($sp)
    lbu     $v0,7($s3)
    addu    $a3,$zero,$zero
    sh      $s4,122($sp)
    mflo    $t6
    addu    $v0,$v0,$t6
    sb      $v0,127($sp)
    sw      $zero,16($sp)
    sw      $t1,20($sp)
    sw      $t8,24($sp)
    sw      $t2,28($sp)
.LFUN_800a7a50_628:
    jal     sym_800ac2bc
    sll     $zero,$zero,0x0
    lw      $t9,144($sp)
    sll     $zero,$zero,0x0
    bne     $t9,$zero,.LFUN_800a7a50_64c
    addiu   $v0,$zero,11
    lhu     $v0,0($s3)
    j       .LFUN_800a7a50_694
    addu    $s8,$s8,$v0
.LFUN_800a7a50_64c:
    bne     $s6,$v0,.LFUN_800a7a50_674
    lui     $v1,0x5555
    lhu     $v1,0($s3)
    lui     $v0,0xaaaa
    ori     $v0,$v0,0xaaab
    multu   $v1,$v0
    mfhi    $t4
    srl     $v0,$t4,0x1
    j       .LFUN_800a7a50_690
    andi    $v0,$v0,0xffff
.LFUN_800a7a50_674:
    lhu     $v0,0($s3)
    ori     $v1,$v1,0x5556
    sll     $v0,$v0,0x1
    mult    $v0,$v1
    sra     $v0,$v0,0x1f
    mfhi    $t4
    subu    $v0,$t4,$v0
.LFUN_800a7a50_690:
    addu    $s8,$s8,$v0
.LFUN_800a7a50_694:
    lw      $t6,136($sp)
    addiu   $s2,$s2,1
    addu    $v0,$s5,$t6
    slt     $v0,$s2,$v0
    bne     $v0,$zero,.LFUN_800a7a50_40c
    addu    $a1,$zero,$zero
.LFUN_800a7a50_6ac:
    lw      $t8,140($sp)
    lw      $ra,212($sp)
    lw      $s7,204($sp)
    lw      $s6,200($sp)
    lw      $s5,196($sp)
    lw      $s4,192($sp)
    lw      $s3,188($sp)
    lw      $s2,184($sp)
    lw      $s1,180($sp)
    lw      $s0,176($sp)
    subu    $v0,$s8,$t8
    lw      $s8,208($sp)
    jr      $ra
    addiu   $sp,$sp,216
    .end FUN_800a7a50
    .size FUN_800a7a50, . - FUN_800a7a50

/* FUN_800a8134 (0x800a8134, 288 bytes) */
    .section .text.FUN_800a8134,"ax",@progbits
    .globl FUN_800a8134
    .globl sym_80042bfc
    .globl sym_80043134
    .globl sym_80048e80
    .globl sym_80041628
    .globl sym_80048aa8
    .globl sym_80043344
    .type FUN_800a8134, @function
    .ent FUN_800a8134
FUN_800a8134:
    addiu   $sp,$sp,-80
    sw      $s1,60($sp)
    addu    $s1,$a1,$zero
    sw      $s3,68($sp)
    lui     $s3,0x10
    ori     $s3,$s3,0x1003
    lui     $a1,0x10
    lui     $v0,0x8002
    sll     $a0,$a0,0x2
    sw      $ra,72($sp)
    sw      $s2,64($sp)
    sw      $s0,56($sp)
    addiu   $t3,$v0,1680
    lw      $t0,0($t3)
    lw      $t1,4($t3)
    lw      $t2,8($t3)
    sw      $t0,32($sp)
    sw      $t1,36($sp)
    sw      $t2,40($sp)
    addu    $v0,$sp,$a0
    lw      $s2,32($v0)
    ori     $a1,$a1,0x1003
    jal     sym_80042bfc
    addu    $a0,$s2,$zero
    addiu   $a0,$zero,1
    addiu   $a1,$zero,15
    lui     $v1,0x8002
    addiu   $t3,$v1,1620
    lwl     $t0,3($t3)
    lwr     $t0,0($t3)
    lb      $t1,4($t3)
    lb      $t2,5($t3)
    swl     $t0,51($sp)
    swr     $t0,48($sp)
    sb      $t1,52($sp)
    sb      $t2,53($sp)
    lb      $t0,6($t3)
    sll     $zero,$zero,0x0
    sb      $t0,54($sp)
    srl     $v1,$v0,0x1f
    addu    $v1,$v1,$v0
    srav    $v1,$v1,$a0
    lbu     $s0,48($sp)
    subu    $s1,$s1,$v1
    and     $s0,$s0,$a1
    sll     $s0,$s0,0x18
    jal     sym_80043134
    or      $s0,$s0,$s3
    addiu   $a0,$zero,1
    jal     sym_80048e80
    addiu   $a1,$zero,10
    addiu   $a0,$zero,1
    addu    $a1,$zero,$zero
    addiu   $v0,$zero,128
    addu    $a2,$s1,$zero
    addiu   $a3,$zero,-189
    sw      $s2,16($sp)
    sw      $s0,20($sp)
    jal     sym_80041628
    sw      $v0,24($sp)
    addiu   $a0,$zero,1
    jal     sym_80048aa8
    addu    $a1,$v0,$zero
    jal     sym_80043344
    addiu   $a0,$zero,1
    lw      $ra,72($sp)
    lw      $s3,68($sp)
    lw      $s2,64($sp)
    lw      $s1,60($sp)
    lw      $s0,56($sp)
    jr      $ra
    addiu   $sp,$sp,80
    .end FUN_800a8134
    .size FUN_800a8134, . - FUN_800a8134

/* FUN_800a907c (0x800a907c, 404 bytes) */
    .section .text.FUN_800a907c,"ax",@progbits
    .globl FUN_800a907c
    .globl sym_800ac2bc
    .type FUN_800a907c, @function
    .ent FUN_800a907c
FUN_800a907c:
    addiu   $sp,$sp,-88
    sw      $s4,64($sp)
    addu    $s4,$a2,$zero
    sw      $ra,84($sp)
    sw      $s8,80($sp)
    sw      $s7,76($sp)
    sw      $s6,72($sp)
    sw      $s5,68($sp)
    sw      $s3,60($sp)
    sw      $s2,56($sp)
    sw      $s1,52($sp)
    sw      $s0,48($sp)
    sw      $a0,88($sp)
    lwl     $t1,3($s4)
    lwr     $t1,0($s4)
    lwl     $t2,7($s4)
    lwr     $t2,4($s4)
    lwl     $t3,11($s4)
    lwr     $t3,8($s4)
    swl     $t1,35($sp)
    swr     $t1,32($sp)
    swl     $t2,39($sp)
    swr     $t2,36($sp)
    swl     $t3,43($sp)
    swr     $t3,40($sp)
    lhu     $s2,2($s4)
    andi    $v1,$a3,0x1f
    addiu   $v0,$s2,1
    mult    $v1,$v0
    addiu   $s5,$sp,32
    sra     $a3,$a3,0x5
    lw      $s7,104($sp)
    lw      $s8,108($sp)
    addu    $s3,$s2,$zero
    mflo    $t1
    sra     $v1,$t1,0x5
    slt     $v0,$v1,$s3
    beq     $v0,$zero,.LFUN_800a907c_a0
    addu    $t0,$s3,$zero
    addu    $s3,$v1,$zero
.LFUN_800a907c_a0:
    addu    $v0,$a1,$s2
    addiu   $v0,$v0,1
    subu    $s6,$v0,$v1
    addiu   $v0,$zero,1
    slt     $v0,$v0,$v1
    beq     $v0,$zero,.LFUN_800a907c_c4
    addiu   $v0,$v1,-1
    subu    $t0,$s2,$v0
    addiu   $v1,$zero,1
.LFUN_800a907c_c4:
    addiu   $s1,$a3,1
    addu    $a0,$s1,$zero
    addiu   $v0,$zero,9
    bne     $a3,$v0,.LFUN_800a907c_dc
    subu    $a1,$a1,$v1
    addu    $s1,$zero,$zero
.LFUN_800a907c_dc:
    bgez    $a3,.LFUN_800a907c_ec
    mult    $s2,$a0
    addiu   $a0,$zero,11
    mult    $s2,$a0
.LFUN_800a907c_ec:
    addu    $a2,$s5,$zero
    lw      $a0,88($sp)
    lbu     $v0,7($s4)
    lhu     $s0,112($sp)
    addu    $a3,$zero,$zero
    sh      $t0,34($sp)
    mflo    $t1
    addu    $v0,$v0,$t1
    subu    $v0,$v0,$t0
    sb      $v0,39($sp)
    sw      $zero,16($sp)
    sw      $s7,20($sp)
    sw      $s8,24($sp)
    jal     sym_800ac2bc
    sw      $s0,28($sp)
    mult    $s2,$s1
    addu    $a1,$s6,$zero
    addu    $a2,$s5,$zero
    lw      $a0,88($sp)
    lbu     $v0,7($s4)
    addu    $a3,$zero,$zero
    sh      $s3,34($sp)
    mflo    $t1
    addu    $v0,$v0,$t1
    sb      $v0,39($sp)
    sw      $zero,16($sp)
    sw      $s7,20($sp)
    sw      $s8,24($sp)
    jal     sym_800ac2bc
    sw      $s0,28($sp)
    lw      $ra,84($sp)
    lw      $s8,80($sp)
    lw      $s7,76($sp)
    lw      $s6,72($sp)
    lw      $s5,68($sp)
    lw      $s4,64($sp)
    lw      $s3,60($sp)
    lw      $s2,56($sp)
    lw      $s1,52($sp)
    lw      $s0,48($sp)
    jr      $ra
    addiu   $sp,$sp,88
    .end FUN_800a907c
    .size FUN_800a907c, . - FUN_800a907c
