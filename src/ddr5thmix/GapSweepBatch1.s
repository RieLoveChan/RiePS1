# Gap-sweep batch 1: reconstructed sub-65-byte gap functions (2026-08-04)
    .set noreorder
    .set noat
    .set nomacro

    .section .text.FUN_80020ee8,"ax",@progbits
    .globl FUN_80020ee8
    .type FUN_80020ee8, @function
    .ent FUN_80020ee8
FUN_80020ee8:
    lui	$v0,0x800b
    lw	$v1,-14100($v0)
    addiu	$v0,$zero,1
    jr	$ra
    sb	$v0,5($v1)
    .end FUN_80020ee8
    .size FUN_80020ee8, . - FUN_80020ee8

    .section .text.FUN_80020fd4,"ax",@progbits
    .globl FUN_80020fd4
    .globl FUN_80020e68
    .type FUN_80020fd4, @function
    .ent FUN_80020fd4
FUN_80020fd4:
    lui	$v0,0x800b
    lw	$v0,-14196($v0)
    addiu	$sp,$sp,-24
    bne	$v0,$zero,.LFUN_80020fd4_28
    sw	$ra,16($sp)
    jal	FUN_80020e68
    sll	$zero,$zero,0x0
    andi	$v0,$v0,0xff
    j	.LFUN_80020fd4_2c
    sltu	$v0,$zero,$v0
.LFUN_80020fd4_28:
    addiu	$v0,$zero,1
.LFUN_80020fd4_2c:
    lw	$ra,16($sp)
    sll	$zero,$zero,0x0
    jr	$ra
    addiu	$sp,$sp,24
    .end FUN_80020fd4
    .size FUN_80020fd4, . - FUN_80020fd4

    .section .text.FUN_800219f4,"ax",@progbits
    .globl FUN_800219f4
    .globl FUN_80023210
    .type FUN_800219f4, @function
    .ent FUN_800219f4
FUN_800219f4:
    lui	$v0,0x800b
    lw	$v0,-14104($v0)
    addiu	$sp,$sp,-24
    sw	$ra,16($sp)
    lw	$v0,84($v0)
    sll	$zero,$zero,0x0
    andi	$v0,$v0,0x40
    beq	$v0,$zero,.LFUN_800219f4_2c
    sll	$zero,$zero,0x0
    jal	FUN_80023210
    addiu	$a0,$zero,16
.LFUN_800219f4_2c:
    lw	$ra,16($sp)
    sll	$zero,$zero,0x0
    jr	$ra
    addiu	$sp,$sp,24
    .end FUN_800219f4
    .size FUN_800219f4, . - FUN_800219f4

    .section .text.FUN_80022138,"ax",@progbits
    .globl FUN_80022138
    .type FUN_80022138, @function
    .ent FUN_80022138
FUN_80022138:
    lui	$v0,0x800b
    lw	$v0,-14104($v0)
    jr	$ra
    sb	$zero,230($v0)
    .end FUN_80022138
    .size FUN_80022138, . - FUN_80022138

    .section .text.FUN_80023190,"ax",@progbits
    .globl FUN_80023190
    .type FUN_80023190, @function
    .ent FUN_80023190
FUN_80023190:
    lui	$v0,0x800b
    lw	$v1,-14104($v0)
    sll	$zero,$zero,0x0
    lhu	$v0,40($v1)
    sh	$zero,42($v1)
    addiu	$v0,$v0,1
    jr	$ra
    sh	$v0,40($v1)
    .end FUN_80023190
    .size FUN_80023190, . - FUN_80023190

    .section .text.FUN_800231d0,"ax",@progbits
    .globl FUN_800231d0
    .type FUN_800231d0, @function
    .ent FUN_800231d0
FUN_800231d0:
    lui	$v0,0x800b
    lw	$v1,-14104($v0)
    sll	$zero,$zero,0x0
    lhu	$v0,44($v1)
    sh	$zero,46($v1)
    addiu	$v0,$v0,1
    jr	$ra
    sh	$v0,44($v1)
    .end FUN_800231d0
    .size FUN_800231d0, . - FUN_800231d0

    .section .text.FUN_800231f0,"ax",@progbits
    .globl FUN_800231f0
    .type FUN_800231f0, @function
    .ent FUN_800231f0
FUN_800231f0:
    lui	$v0,0x800b
    lw	$v1,-14104($v0)
    sll	$zero,$zero,0x0
    lhu	$v0,46($v1)
    sll	$zero,$zero,0x0
    addiu	$v0,$v0,1
    jr	$ra
    sh	$v0,46($v1)
    .end FUN_800231f0
    .size FUN_800231f0, . - FUN_800231f0

    .section .text.FUN_800281e4,"ax",@progbits
    .globl FUN_800281e4
    .type FUN_800281e4, @function
    .ent FUN_800281e4
FUN_800281e4:
    lui	$v0,0x800b
    lw	$v0,-7056($v0)
    jr	$ra
    sll	$zero,$zero,0x0
    .end FUN_800281e4
    .size FUN_800281e4, . - FUN_800281e4

    .section .text.FUN_80028378,"ax",@progbits
    .globl FUN_80028378
    .globl FUN_80026940
    .type FUN_80028378, @function
    .ent FUN_80028378
FUN_80028378:
    addiu	$sp,$sp,-24
    sw	$ra,16($sp)
    jal	FUN_80026940
    addiu	$a0,$zero,781
    lw	$ra,16($sp)
    addu	$v0,$zero,$zero
    jr	$ra
    addiu	$sp,$sp,24
    .end FUN_80028378
    .size FUN_80028378, . - FUN_80028378

    .section .text.FUN_80028700,"ax",@progbits
    .globl FUN_80028700
    .globl FUN_8002f29c
    .globl SpuSetTransferStartAddr
    .type FUN_80028700, @function
    .ent FUN_80028700
FUN_80028700:
    addiu	$sp,$sp,-24
    addu	$a0,$zero,$zero
    lui	$a1,0x800e
    addiu	$v1,$a1,14824
    addiu	$v0,$zero,1
    sw	$ra,16($sp)
    sw	$v0,16($v1)
    sw	$zero,20($v1)
    jal	SpuSetTransferStartAddr
    sw	$zero,14824($a1)
    jal	FUN_8002f29c
    addu	$a0,$zero,$zero
    lw	$ra,16($sp)
    sll	$zero,$zero,0x0
    jr	$ra
    addiu	$sp,$sp,24
    .end FUN_80028700
    .size FUN_80028700, . - FUN_80028700

    .section .text.FUN_80029778,"ax",@progbits
    .globl FUN_80029778
    .type FUN_80029778, @function
    .ent FUN_80029778
FUN_80029778:
    lui	$v0,0x800e
    lbu	$v0,14328($v0)
    jr	$ra
    sltu	$v0,$zero,$v0
    .end FUN_80029778
    .size FUN_80029778, . - FUN_80029778

    .section .text.FUN_8002982c,"ax",@progbits
    .globl FUN_8002982c
    .globl FUN_8002e8bc
    .type FUN_8002982c, @function
    .ent FUN_8002982c
FUN_8002982c:
    addiu	$sp,$sp,-24
    addiu	$a0,$zero,1
    sw	$ra,16($sp)
    jal	FUN_8002e8bc
    lui	$a1,0x30
    lw	$ra,16($sp)
    sll	$zero,$zero,0x0
    jr	$ra
    addiu	$sp,$sp,24
    .end FUN_8002982c
    .size FUN_8002982c, . - FUN_8002982c

    .section .text.FUN_80029900,"ax",@progbits
    .globl FUN_80029900
    .globl FUN_80029d24
    .type FUN_80029900, @function
    .ent FUN_80029900
FUN_80029900:
    addiu	$sp,$sp,-24
    sw	$ra,16($sp)
    jal	FUN_80029d24
    andi	$a0,$a0,0xffff
    lw	$ra,16($sp)
    sll	$zero,$zero,0x0
    jr	$ra
    addiu	$sp,$sp,24
    .end FUN_80029900
    .size FUN_80029900, . - FUN_80029900

    .section .text.FUN_80029f30,"ax",@progbits
    .globl FUN_80029f30
    .type FUN_80029f30, @function
    .ent FUN_80029f30
FUN_80029f30:
    lui	$v0,0x800e
    lbu	$v0,14164($v0)
    jr	$ra
    sll	$zero,$zero,0x0
    .end FUN_80029f30
    .size FUN_80029f30, . - FUN_80029f30

    .section .text.FUN_8002a0f0,"ax",@progbits
    .globl FUN_8002a0f0
    .type FUN_8002a0f0, @function
    .ent FUN_8002a0f0
FUN_8002a0f0:
    jr	$ra
    addu	$v0,$zero,$zero
    .end FUN_8002a0f0
    .size FUN_8002a0f0, . - FUN_8002a0f0

    .section .text.FUN_8002a0f8,"ax",@progbits
    .globl FUN_8002a0f8
    .type FUN_8002a0f8, @function
    .ent FUN_8002a0f8
FUN_8002a0f8:
    jr	$ra
    sll	$zero,$zero,0x0
    .end FUN_8002a0f8
    .size FUN_8002a0f8, . - FUN_8002a0f8

    .section .text.FUN_8002a100,"ax",@progbits
    .globl FUN_8002a100
    .type FUN_8002a100, @function
    .ent FUN_8002a100
FUN_8002a100:
    jr	$ra
    sll	$zero,$zero,0x0
    .end FUN_8002a100
    .size FUN_8002a100, . - FUN_8002a100

    .section .text.FUN_8002a2d8,"ax",@progbits
    .globl FUN_8002a2d8
    .globl bzero
    .type FUN_8002a2d8, @function
    .ent FUN_8002a2d8
FUN_8002a2d8:
    addiu	$sp,$sp,-24
    lui	$a0,0x800e
    addiu	$a0,$a0,11184
    sw	$ra,16($sp)
    jal	bzero
    addiu	$a1,$zero,116
    lw	$ra,16($sp)
    sll	$zero,$zero,0x0
    jr	$ra
    addiu	$sp,$sp,24
    .end FUN_8002a2d8
    .size FUN_8002a2d8, . - FUN_8002a2d8

    .section .text.FUN_8002a800,"ax",@progbits
    .globl FUN_8002a800
    .type FUN_8002a800, @function
    .ent FUN_8002a800
FUN_8002a800:
    lui	$v0,0x801d
    jr	$ra
    ori	$v0,$v0,0xc000
    .end FUN_8002a800
    .size FUN_8002a800, . - FUN_8002a800

    .section .text.FUN_8002b1dc,"ax",@progbits
    .globl FUN_8002b1dc
    .type FUN_8002b1dc, @function
    .ent FUN_8002b1dc
FUN_8002b1dc:
    sw	$t9,28($a2)
    jr	$ra
    sll	$zero,$zero,0x0
    .end FUN_8002b1dc
    .size FUN_8002b1dc, . - FUN_8002b1dc

    .section .text.FUN_8002ee50,"ax",@progbits
    .globl FUN_8002ee50
    .globl sym_8002ee24
    .type FUN_8002ee50, @function
    .ent FUN_8002ee50
FUN_8002ee50:
    lui	$v0,0x800d
    lw	$v0,27492($v0)
    sll	$zero,$zero,0x0
    lhu	$v0,426($v0)
    sll	$zero,$zero,0x0
    andi	$v0,$v0,0x40
    beq	$v0,$zero,sym_8002ee24
    addiu	$v1,$v1,1
    addiu	$v1,$v1,-1
    addu	$v0,$a0,$zero
    .end FUN_8002ee50
    .size FUN_8002ee50, . - FUN_8002ee50

    .section .text.FUN_8002f19c,"ax",@progbits
    .globl FUN_8002f19c
    .type FUN_8002f19c, @function
    .ent FUN_8002f19c
FUN_8002f19c:
    addiu	$v0,$zero,1
    addiu	$v0,$zero,3
    .end FUN_8002f19c
    .size FUN_8002f19c, . - FUN_8002f19c

    .section .text.FUN_800311dc,"ax",@progbits
    .globl FUN_800311dc
    .globl _SsSeqGetEof
    .globl MIDIREAD_OBJ_6C8
    .type FUN_800311dc, @function
    .ent FUN_800311dc
FUN_800311dc:
    andi	$a2,$s2,0xff
    addiu	$v0,$zero,47
    bne	$a2,$v0,.LFUN_800311dc_34
    sll	$zero,$zero,0x0
    addiu	$s5,$zero,1
    sll	$a0,$a0,0x10
    sra	$a0,$a0,0x10
    sll	$a1,$a1,0x10
    sra	$a1,$a1,0x10
    jal	_SsSeqGetEof
    addiu	$a2,$zero,47
    j	MIDIREAD_OBJ_6C8
    addu	$v0,$s5,$zero
.LFUN_800311dc_34:
    sll	$a0,$a0,0x10
    .end FUN_800311dc
    .size FUN_800311dc, . - FUN_800311dc

    .section .text.FUN_80031aac,"ax",@progbits
    .globl FUN_80031aac
    .type FUN_80031aac, @function
    .ent FUN_80031aac
FUN_80031aac:
    lui	$at,0x800e
    sw	$v1,16716($at)
    .end FUN_80031aac
    .size FUN_80031aac, . - FUN_80031aac

    .section .text.FUN_80032b84,"ax",@progbits
    .globl FUN_80032b84
    .type FUN_80032b84, @function
    .ent FUN_80032b84
FUN_80032b84:
    addiu	$v0,$zero,-1
    .end FUN_80032b84
    .size FUN_80032b84, . - FUN_80032b84

    .section .text.FUN_800357ec,"ax",@progbits
    .globl FUN_800357ec
    .type FUN_800357ec, @function
    .ent FUN_800357ec
FUN_800357ec:
    addu	$a1,$a0,$zero
    break	0x0,0x104
    jr	$ra
    sll	$zero,$zero,0x0
    .end FUN_800357ec
    .size FUN_800357ec, . - FUN_800357ec

    .section .text.FUN_80036584,"ax",@progbits
    .globl FUN_80036584
    .type FUN_80036584, @function
    .ent FUN_80036584
FUN_80036584:
    sll	$zero,$zero,0x0
    lui	$v0,0x800e
    lw	$v0,-30884($v0)
    lui	$at,0x800e
    jr	$ra
    sw	$a0,-30884($at)
    .end FUN_80036584
    .size FUN_80036584, . - FUN_80036584

    .section .text.FUN_80036724,"ax",@progbits
    .globl FUN_80036724
    .type FUN_80036724, @function
    .ent FUN_80036724
FUN_80036724:
    sw	$at,4($k0)
    sw	$v0,8($k0)
    sw	$v1,12($k0)
    sw	$ra,124($k0)
    mfc0	$v1,$14
    sll	$zero,$zero,0x0
    sw	$at,4($k0)
    sw	$v0,8($k0)
    mfc0	$v0,$13
    sw	$v1,12($k0)
    mfc0	$v1,$14
    sw	$ra,124($k0)
    .end FUN_80036724
    .size FUN_80036724, . - FUN_80036724

    .section .text.FUN_80037f74,"ax",@progbits
    .globl FUN_80037f74
    .type FUN_80037f74, @function
    .ent FUN_80037f74
FUN_80037f74:
    jr	$ra
    addiu	$v0,$zero,0
    .end FUN_80037f74
    .size FUN_80037f74, . - FUN_80037f74

    .section .text.FUN_8003b43c,"ax",@progbits
    .globl FUN_8003b43c
    .globl FUN_8003b668
    .globl StopCARD2
    .type FUN_8003b43c, @function
    .ent FUN_8003b43c
FUN_8003b43c:
    addiu	$sp,$sp,-24
    sw	$ra,16($sp)
    jal	StopCARD2
    sll	$zero,$zero,0x0
    jal	FUN_8003b668
    sll	$zero,$zero,0x0
    lw	$ra,16($sp)
    addiu	$sp,$sp,24
    jr	$ra
    sll	$zero,$zero,0x0
    .end FUN_8003b43c
    .size FUN_8003b43c, . - FUN_8003b43c

    .section .text.FUN_8003bf78,"ax",@progbits
    .globl FUN_8003bf78
    .globl sym_8003bf58
    .type FUN_8003bf78, @function
    .ent FUN_8003bf78
FUN_8003bf78:
    sll	$zero,$zero,0x0
    addiu	$s0,$s0,80
    sltu	$v0,$s0,$s1
    bne	$v0,$zero,sym_8003bf58
    sll	$zero,$zero,0x0
    .end FUN_8003bf78
    .size FUN_8003bf78, . - FUN_8003bf78

    .section .text.FUN_8003c874,"ax",@progbits
    .globl FUN_8003c874
    .type FUN_8003c874, @function
    .ent FUN_8003c874
FUN_8003c874:
    addu	$v0,$zero,$zero
    .end FUN_8003c874
    .size FUN_8003c874, . - FUN_8003c874

    .section .text.FUN_8003d154,"ax",@progbits
    .globl FUN_8003d154
    .globl PADMAIN_OBJ_780
    .type FUN_8003d154, @function
    .ent FUN_8003d154
FUN_8003d154:
    lui	$v1,0x800e
    lw	$v1,-29068($v1)
    sll	$zero,$zero,0x0
    sw	$v0,0($v1)
    lbu	$v0,80($s0)
    sll	$zero,$zero,0x0
    beq	$v0,$zero,PADMAIN_OBJ_780
    addiu	$v0,$zero,1
    lbu	$v1,55($s0)
    sll	$zero,$zero,0x0
    bne	$v1,$zero,PADMAIN_OBJ_780
    addu	$v0,$zero,$zero
    addiu	$v0,$zero,1
    .end FUN_8003d154
    .size FUN_8003d154, . - FUN_8003d154

    .section .text.FUN_8003df74,"ax",@progbits
    .globl FUN_8003df74
    .type FUN_8003df74, @function
    .ent FUN_8003df74
FUN_8003df74:
    addiu	$a3,$zero,5
    addiu	$a0,$a2,3
    addiu	$a3,$a3,-1
    .end FUN_8003df74
    .size FUN_8003df74, . - FUN_8003df74

    .section .text.FUN_8003ed44,"ax",@progbits
    .globl FUN_8003ed44
    .globl PADPORTD_OBJ_330
    .globl PADPORTD_OBJ_380
    .type FUN_8003ed44, @function
    .ent FUN_8003ed44
FUN_8003ed44:
    lbu	$v0,54($a0)
    sll	$zero,$zero,0x0
    slt	$v0,$v1,$v0
    beq	$v0,$zero,PADPORTD_OBJ_380
    addiu	$v0,$zero,255
    lw	$v0,44($a0)
    j	PADPORTD_OBJ_330
    addu	$v0,$v0,$v1
    .end FUN_8003ed44
    .size FUN_8003ed44, . - FUN_8003ed44

    .section .text.FUN_8003f3c0,"ax",@progbits
    .globl FUN_8003f3c0
    .globl PADSEQD_OBJ_398
    .type FUN_8003f3c0, @function
    .ent FUN_8003f3c0
FUN_8003f3c0:
    j	PADSEQD_OBJ_398
    sb	$v0,70($s0)
    .end FUN_8003f3c0
    .size FUN_8003f3c0, . - FUN_8003f3c0

    .section .text.FUN_800403f0,"ax",@progbits
    .globl FUN_800403f0
    .globl FUN_8003ba70
    .globl printf
    .type FUN_800403f0, @function
    .ent FUN_800403f0
FUN_800403f0:
    lui	$a0,0x8002
    jal	FUN_8003ba70
    addiu	$a0,$a0,-20012
    lbu	$a1,16($sp)
    lui	$a0,0x8002
    jal	printf
    addiu	$a0,$a0,-19992
    addu	$v0,$zero,$zero
    .end FUN_800403f0
    .size FUN_800403f0, . - FUN_800403f0

    .section .text.FUN_80042ec8,"ax",@progbits
    .globl FUN_80042ec8
    .type FUN_80042ec8, @function
    .ent FUN_80042ec8
FUN_80042ec8:
    jr	$ra
    sll	$zero,$zero,0x0
    .end FUN_80042ec8
    .size FUN_80042ec8, . - FUN_80042ec8

    .section .text.FUN_80049fcc,"ax",@progbits
    .globl FUN_80049fcc
    .type FUN_80049fcc, @function
    .ent FUN_80049fcc
FUN_80049fcc:
    jr	$ra
    addu	$v0,$zero,$zero
    .end FUN_80049fcc
    .size FUN_80049fcc, . - FUN_80049fcc

    .section .text.FUN_80053748,"ax",@progbits
    .globl FUN_80053748
    .type FUN_80053748, @function
    .ent FUN_80053748
FUN_80053748:
    jr	$ra
    sll	$zero,$zero,0x0
    .end FUN_80053748
    .size FUN_80053748, . - FUN_80053748

    .section .text.FUN_80053758,"ax",@progbits
    .globl FUN_80053758
    .type FUN_80053758, @function
    .ent FUN_80053758
FUN_80053758:
    jr	$ra
    sll	$zero,$zero,0x0
    .end FUN_80053758
    .size FUN_80053758, . - FUN_80053758

    .section .text.FUN_80053760,"ax",@progbits
    .globl FUN_80053760
    .type FUN_80053760, @function
    .ent FUN_80053760
FUN_80053760:
    jr	$ra
    sll	$zero,$zero,0x0
    .end FUN_80053760
    .size FUN_80053760, . - FUN_80053760

    .section .text.FUN_80053768,"ax",@progbits
    .globl FUN_80053768
    .type FUN_80053768, @function
    .ent FUN_80053768
FUN_80053768:
    jr	$ra
    sll	$zero,$zero,0x0
    .end FUN_80053768
    .size FUN_80053768, . - FUN_80053768

    .section .text.FUN_80053770,"ax",@progbits
    .globl FUN_80053770
    .type FUN_80053770, @function
    .ent FUN_80053770
FUN_80053770:
    jr	$ra
    sll	$zero,$zero,0x0
    .end FUN_80053770
    .size FUN_80053770, . - FUN_80053770

    .section .text.FUN_8005383c,"ax",@progbits
    .globl FUN_8005383c
    .type FUN_8005383c, @function
    .ent FUN_8005383c
FUN_8005383c:
    lw	$t0,0($a1)
    lw	$t1,4($a1)
    lw	$t2,8($a1)
    sw	$t0,20($a0)
    sw	$t1,24($a0)
    sw	$t2,28($a0)
    addu	$v0,$a0,$zero
    jr	$ra
    sll	$zero,$zero,0x0
    .end FUN_8005383c
    .size FUN_8005383c, . - FUN_8005383c

    .section .text.FUN_8005b274,"ax",@progbits
    .globl FUN_8005b274
    .globl DrawSync
    .globl LoadImage
    .type FUN_8005b274, @function
    .ent FUN_8005b274
FUN_8005b274:
    lui	$v0,0x8011
    lw	$a1,27556($v0)
    addiu	$sp,$sp,-24
    sw	$ra,16($sp)
    jal	LoadImage
    sll	$zero,$zero,0x0
    jal	DrawSync
    addu	$a0,$zero,$zero
    lw	$ra,16($sp)
    sll	$zero,$zero,0x0
    jr	$ra
    addiu	$sp,$sp,24
    .end FUN_8005b274
    .size FUN_8005b274, . - FUN_8005b274

    .section .text.FUN_80060f34,"ax",@progbits
    .globl FUN_80060f34
    .type FUN_80060f34, @function
    .ent FUN_80060f34
FUN_80060f34:
    jr	$ra
    addiu	$v0,$zero,-1
    .end FUN_80060f34
    .size FUN_80060f34, . - FUN_80060f34

    .section .text.FUN_80074efc,"ax",@progbits
    .globl FUN_80074efc
    .type FUN_80074efc, @function
    .ent FUN_80074efc
FUN_80074efc:
    addiu	$v0,$zero,1
    lw	$ra,196($sp)
    lw	$s8,192($sp)
    lw	$s7,188($sp)
    lw	$s6,184($sp)
    lw	$s5,180($sp)
    lw	$s4,176($sp)
    lw	$s3,172($sp)
    lw	$s2,168($sp)
    lw	$s1,164($sp)
    lw	$s0,160($sp)
    jr	$ra
    addiu	$sp,$sp,200
    .end FUN_80074efc
    .size FUN_80074efc, . - FUN_80074efc

    .section .text.FUN_8007b520,"ax",@progbits
    .globl FUN_8007b520
    .type FUN_8007b520, @function
    .ent FUN_8007b520
FUN_8007b520:
    lui	$v0,0x800e
    lw	$v0,15236($v0)
    jr	$ra
    sll	$zero,$zero,0x0
    .end FUN_8007b520
    .size FUN_8007b520, . - FUN_8007b520

    .section .text.FUN_8007b58c,"ax",@progbits
    .globl FUN_8007b58c
    .type FUN_8007b58c, @function
    .ent FUN_8007b58c
FUN_8007b58c:
    lui	$v1,0x800e
    addiu	$v1,$v1,15224
    lw	$v0,12($v1)
    sll	$zero,$zero,0x0
    sll	$v0,$v0,0x1
    addu	$v0,$v0,$v1
    lh	$v0,48($v0)
    jr	$ra
    sll	$zero,$zero,0x0
    .end FUN_8007b58c
    .size FUN_8007b58c, . - FUN_8007b58c

    .section .text.FUN_8007ee9c,"ax",@progbits
    .globl FUN_8007ee9c
    .type FUN_8007ee9c, @function
    .ent FUN_8007ee9c
FUN_8007ee9c:
    lui	$v0,0x800e
    jr	$ra
    addiu	$v0,$v0,-3112
    .end FUN_8007ee9c
    .size FUN_8007ee9c, . - FUN_8007ee9c

    .section .text.FUN_8007f65c,"ax",@progbits
    .globl FUN_8007f65c
    .type FUN_8007f65c, @function
    .ent FUN_8007f65c
FUN_8007f65c:
    lui	$v0,0x800e
    sw	$zero,-1688($v0)
    jr	$ra
    addu	$v0,$zero,$zero
    .end FUN_8007f65c
    .size FUN_8007f65c, . - FUN_8007f65c

    .section .text.FUN_8007f980,"ax",@progbits
    .globl FUN_8007f980
    .type FUN_8007f980, @function
    .ent FUN_8007f980
FUN_8007f980:
    lui	$v0,0x800e
    lw	$v0,2840($v0)
    sll	$zero,$zero,0x0
    sw	$zero,16($v0)
    jr	$ra
    addu	$v0,$zero,$zero
    .end FUN_8007f980
    .size FUN_8007f980, . - FUN_8007f980

    .section .text.FUN_80082518,"ax",@progbits
    .globl FUN_80082518
    .type FUN_80082518, @function
    .ent FUN_80082518
FUN_80082518:
    lui	$v0,0x800f
    lui	$a0,0x800e
    lw	$v1,10488($v0)
    lw	$v0,-1672($a0)
    andi	$v1,$v1,0x1
    addiu	$v1,$v1,2
    addu	$v0,$v0,$v1
    jr	$ra
    sw	$v0,-1672($a0)
    .end FUN_80082518
    .size FUN_80082518, . - FUN_80082518

    .section .text.FUN_800843d4,"ax",@progbits
    .globl FUN_800843d4
    .type FUN_800843d4, @function
    .ent FUN_800843d4
FUN_800843d4:
    jr	$ra
    sll	$zero,$zero,0x0
    .end FUN_800843d4
    .size FUN_800843d4, . - FUN_800843d4

    .section .text.FUN_80093044,"ax",@progbits
    .globl FUN_80093044
    .type FUN_80093044, @function
    .ent FUN_80093044
FUN_80093044:
    jr	$ra
    addu	$v0,$zero,$zero
    .end FUN_80093044
    .size FUN_80093044, . - FUN_80093044

    .section .text.FUN_80097d44,"ax",@progbits
    .globl FUN_80097d44
    .type FUN_80097d44, @function
    .ent FUN_80097d44
FUN_80097d44:
    lui	$v0,0x800e
    addiu	$v0,$v0,15192
    sll	$a0,$a0,0x4
    addu	$a0,$a0,$v0
    lw	$v0,4($a0)
    jr	$ra
    andi	$v0,$v0,0x820
    .end FUN_80097d44
    .size FUN_80097d44, . - FUN_80097d44

    .section .text.FUN_80097e08,"ax",@progbits
    .globl FUN_80097e08
    .type FUN_80097e08, @function
    .ent FUN_80097e08
FUN_80097e08:
    lui	$v0,0x800e
    lw	$v0,15216($v0)
    jr	$ra
    andi	$v0,$v0,0x8000
    .end FUN_80097e08
    .size FUN_80097e08, . - FUN_80097e08

    .section .text.FUN_80097e18,"ax",@progbits
    .globl FUN_80097e18
    .type FUN_80097e18, @function
    .ent FUN_80097e18
FUN_80097e18:
    lui	$v0,0x800e
    lw	$v0,15216($v0)
    jr	$ra
    andi	$v0,$v0,0x2000
    .end FUN_80097e18
    .size FUN_80097e18, . - FUN_80097e18

    .section .text.FUN_80099770,"ax",@progbits
    .globl FUN_80099770
    .type FUN_80099770, @function
    .ent FUN_80099770
FUN_80099770:
    jr	$ra
    sll	$zero,$zero,0x0
    .end FUN_80099770
    .size FUN_80099770, . - FUN_80099770

    .section .text.FUN_800998d0,"ax",@progbits
    .globl FUN_800998d0
    .type FUN_800998d0, @function
    .ent FUN_800998d0
FUN_800998d0:
    lui	$v1,0x800f
    addiu	$v1,$v1,10504
    sll	$v0,$a0,0x3
    addu	$v0,$v0,$a0
    sll	$v0,$v0,0x3
    addu	$v0,$v0,$a0
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$a0
    sll	$v0,$v0,0x5
    addu	$v0,$v0,$a0
    sll	$v0,$v0,0x2
    addu	$v0,$v0,$v1
    lw	$v1,120($v0)
    lw	$v0,84($v0)
    jr	$ra
    sltu	$v0,$v0,$v1
    .end FUN_800998d0
    .size FUN_800998d0, . - FUN_800998d0

    .section .text.FUN_80099b20,"ax",@progbits
    .globl FUN_80099b20
    .globl FUN_8002a9dc
    .type FUN_80099b20, @function
    .ent FUN_80099b20
FUN_80099b20:
    addiu	$sp,$sp,-24
    sw	$ra,16($sp)
    jal	FUN_8002a9dc
    sll	$zero,$zero,0x0
    lw	$ra,16($sp)
    sll	$zero,$zero,0x0
    jr	$ra
    addiu	$sp,$sp,24
    .end FUN_80099b20
    .size FUN_80099b20, . - FUN_80099b20

    .section .text.FUN_80099e84,"ax",@progbits
    .globl FUN_80099e84
    .type FUN_80099e84, @function
    .ent FUN_80099e84
FUN_80099e84:
    lui	$v0,0x800b
    xori	$a0,$a0,0x1
    lw	$v0,-14100($v0)
    sltiu	$a0,$a0,1
    jr	$ra
    sb	$a0,80($v0)
    .end FUN_80099e84
    .size FUN_80099e84, . - FUN_80099e84

    .section .text.FUN_8009a0f0,"ax",@progbits
    .globl FUN_8009a0f0
    .type FUN_8009a0f0, @function
    .ent FUN_8009a0f0
FUN_8009a0f0:
    lw	$ra,28($sp)
    lw	$s2,24($sp)
    lw	$s1,20($sp)
    lw	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
    .end FUN_8009a0f0
    .size FUN_8009a0f0, . - FUN_8009a0f0

    .section .text.FUN_8009b580,"ax",@progbits
    .globl FUN_8009b580
    .type FUN_8009b580, @function
    .ent FUN_8009b580
FUN_8009b580:
    jr	$ra
    sll	$zero,$zero,0x0
    .end FUN_8009b580
    .size FUN_8009b580, . - FUN_8009b580

    .section .text.FUN_8009b88c,"ax",@progbits
    .globl FUN_8009b88c
    .globl FUN_8009b8ec
    .type FUN_8009b88c, @function
    .ent FUN_8009b88c
FUN_8009b88c:
    addiu	$sp,$sp,-24
    lui	$a1,0x801d
    ori	$a1,$a1,0x1000
    lui	$v0,0x800e
    lw	$a0,2840($v0)
    sw	$ra,16($sp)
    jal	FUN_8009b8ec
    addiu	$a2,$zero,7168
    lw	$ra,16($sp)
    sltu	$v0,$zero,$v0
    jr	$ra
    addiu	$sp,$sp,24
    .end FUN_8009b88c
    .size FUN_8009b88c, . - FUN_8009b88c

    .section .text.FUN_8009d2fc,"ax",@progbits
    .globl FUN_8009d2fc
    .type FUN_8009d2fc, @function
    .ent FUN_8009d2fc
FUN_8009d2fc:
    lui	$v0,0x800e
    lw	$v0,2840($v0)
    sll	$zero,$zero,0x0
    addiu	$v1,$v0,4048
    sltiu	$v0,$a0,128
    beq	$v0,$zero,.LFUN_8009d2fc_2c
    sll	$v0,$a0,0x2
    addu	$v0,$v1,$v0
    lhu	$v0,0($v0)
    sll	$zero,$zero,0x0
    sh	$v0,0($a1)
.LFUN_8009d2fc_2c:
    jr	$ra
    sll	$zero,$zero,0x0
    .end FUN_8009d2fc
    .size FUN_8009d2fc, . - FUN_8009d2fc

    .section .text.FUN_800a00c4,"ax",@progbits
    .globl FUN_800a00c4
    .type FUN_800a00c4, @function
    .ent FUN_800a00c4
FUN_800a00c4:
    lui	$v0,0x800e
    lw	$v0,2840($v0)
    jr	$ra
    sb	$a0,168($v0)
    .end FUN_800a00c4
    .size FUN_800a00c4, . - FUN_800a00c4

    .section .text.FUN_800a113c,"ax",@progbits
    .globl FUN_800a113c
    .globl FUN_800a1474
    .type FUN_800a113c, @function
    .ent FUN_800a113c
FUN_800a113c:
    addiu	$sp,$sp,-24
    lui	$a0,0x8019
    sw	$ra,16($sp)
    jal	FUN_800a1474
    ori	$a0,$a0,0x8000
    lw	$ra,16($sp)
    andi	$v0,$v0,0xff
    jr	$ra
    addiu	$sp,$sp,24
    .end FUN_800a113c
    .size FUN_800a113c, . - FUN_800a113c

    .section .text.FUN_800a243c,"ax",@progbits
    .globl FUN_800a243c
    .type FUN_800a243c, @function
    .ent FUN_800a243c
FUN_800a243c:
    lui	$v0,0x8012
    jr	$ra
    sw	$zero,-30312($v0)
    .end FUN_800a243c
    .size FUN_800a243c, . - FUN_800a243c

    .section .text.FUN_800a2448,"ax",@progbits
    .globl FUN_800a2448
    .type FUN_800a2448, @function
    .ent FUN_800a2448
FUN_800a2448:
    jr	$ra
    sll	$zero,$zero,0x0
    .end FUN_800a2448
    .size FUN_800a2448, . - FUN_800a2448

    .section .text.FUN_800a2450,"ax",@progbits
    .globl FUN_800a2450
    .type FUN_800a2450, @function
    .ent FUN_800a2450
FUN_800a2450:
    lui	$v0,0x8012
    lw	$v0,-30312($v0)
    jr	$ra
    sll	$zero,$zero,0x0
    .end FUN_800a2450
    .size FUN_800a2450, . - FUN_800a2450

    .section .text.FUN_800a259c,"ax",@progbits
    .globl FUN_800a259c
    .type FUN_800a259c, @function
    .ent FUN_800a259c
FUN_800a259c:
    lui	$v0,0x800e
    lw	$v0,2840($v0)
    sll	$zero,$zero,0x0
    lw	$v0,16($v0)
    jr	$ra
    sll	$zero,$zero,0x0
    .end FUN_800a259c
    .size FUN_800a259c, . - FUN_800a259c

    .section .text.FUN_800a25b4,"ax",@progbits
    .globl FUN_800a25b4
    .type FUN_800a25b4, @function
    .ent FUN_800a25b4
FUN_800a25b4:
    lui	$v0,0x800e
    lw	$v0,2840($v0)
    jr	$ra
    sw	$a0,16($v0)
    .end FUN_800a25b4
    .size FUN_800a25b4, . - FUN_800a25b4

    .section .text.FUN_800a2608,"ax",@progbits
    .globl FUN_800a2608
    .type FUN_800a2608, @function
    .ent FUN_800a2608
FUN_800a2608:
    jr	$ra
    addiu	$v0,$zero,1
    .end FUN_800a2608
    .size FUN_800a2608, . - FUN_800a2608

    .section .text.FUN_800a2610,"ax",@progbits
    .globl FUN_800a2610
    .type FUN_800a2610, @function
    .ent FUN_800a2610
FUN_800a2610:
    jr	$ra
    sll	$zero,$zero,0x0
    .end FUN_800a2610
    .size FUN_800a2610, . - FUN_800a2610

    .section .text.FUN_800a266c,"ax",@progbits
    .globl FUN_800a266c
    .type FUN_800a266c, @function
    .ent FUN_800a266c
FUN_800a266c:
    jr	$ra
    sll	$zero,$zero,0x0
    .end FUN_800a266c
    .size FUN_800a266c, . - FUN_800a266c

    .section .text.FUN_800a3324,"ax",@progbits
    .globl FUN_800a3324
    .type FUN_800a3324, @function
    .ent FUN_800a3324
FUN_800a3324:
    sll	$a1,$a1,0x5
    addiu	$a1,$a1,4
    addu	$a0,$a0,$a1
    sh	$zero,2($a0)
    sw	$zero,16($a0)
    sw	$zero,20($a0)
    sw	$zero,24($a0)
    jr	$ra
    sw	$zero,28($a0)
    .end FUN_800a3324
    .size FUN_800a3324, . - FUN_800a3324

    .section .text.FUN_800a36ac,"ax",@progbits
    .globl FUN_800a36ac
    .globl FUN_800a3324
    .type FUN_800a36ac, @function
    .ent FUN_800a36ac
FUN_800a36ac:
    addu	$a1,$a0,$zero
    lui	$v0,0x800e
    lw	$a0,2840($v0)
    addiu	$sp,$sp,-24
    sw	$ra,16($sp)
    jal	FUN_800a3324
    addiu	$a0,$a0,4880
    lw	$ra,16($sp)
    sll	$zero,$zero,0x0
    jr	$ra
    addiu	$sp,$sp,24
    .end FUN_800a36ac
    .size FUN_800a36ac, . - FUN_800a36ac

    .section .text.FUN_800a6428,"ax",@progbits
    .globl FUN_800a6428
    .type FUN_800a6428, @function
    .ent FUN_800a6428
FUN_800a6428:
    jr	$ra
    sll	$zero,$zero,0x0
    .end FUN_800a6428
    .size FUN_800a6428, . - FUN_800a6428
