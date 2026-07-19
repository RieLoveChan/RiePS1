# DDR 5th Mix HOW TO PLAY Overlay Assembly Source
# Reconstructs all 70 functions of the inst-demo overlay (0x801e4048 - 0x801e64e4).

.set noreorder
.set noat

# ---------------------------------------------------------------------------
# FUN_801e4048 (0x801e4048 - 0x801e413c) - 244 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e4048, "ax", @progbits
.globl FUN_801e4048
.type FUN_801e4048, @function
FUN_801e4048:
	addiu	$sp,$sp,-40
	li	$a0,900
	sw	$s0,16($sp)
	lui	$s0,0x8011
	addiu	$s0,$s0,-10200
	addu	$v0, $a0, $zero
	sw	$ra,36($sp)
	sw	$s4,32($sp)
	sw	$s3,28($sp)
	sw	$s2,24($sp)
	sw	$s1,20($sp)
	jal	0x800548c8
	sh	$v0,96($s0)
	addu	$s1, $zero, $zero
	li	$s4,255
	addu	$s2, $s0, $zero
	addiu	$s3,$s2,36
	sh	$zero,98($s2)
.L801e4090:
	li	$v0,40
	sw	$v0,36($s0)
	li	$v0,60
	sw	$v0,40($s0)
	li	$v0,80
	bnez	$s1, .L801e40bc
	sw	$v0,44($s0)
	sb	$s4,48($s2)
	sb	$s4,49($s2)
	j	.L801e40c8
	sb	$s4,50($s2)
.L801e40bc:
	sb	$zero,48($s0)
	sb	$zero,49($s0)
	sb	$zero,50($s0)
.L801e40c8:
	addu	$a0, $s1, $zero
	jal	0x80037988
	addu	$a1, $s3, $zero
	addiu	$s3,$s3,16
	addiu	$s1,$s1,1
	slti	$v0,$s1,3
	bnez	$v0, .L801e4090
	addiu	$s0,$s0,16
	lui	$s0,0x8011
	addiu	$s0,$s0,-10200
	lhu	$a0,98($s0)
	li	$v0,1600
	sh	$v0,100($s0)
	sh	$v0,102($s0)
	jal	0x800548e8
	sh	$v0,104($s0)
	lhu	$a0,100($s0)
	lhu	$a1,102($s0)
	lhu	$a2,104($s0)
	jal	0x80054968
	nop
	lw	$ra,36($sp)
	lw	$s4,32($sp)
	lw	$s3,28($sp)
	lw	$s2,24($sp)
	lw	$s1,20($sp)
	lw	$s0,16($sp)
	jr	$ra
	addiu	$sp,$sp,40

# ---------------------------------------------------------------------------
# FUN_801e413c (0x801e413c - 0x801e41e8) - 172 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e413c, "ax", @progbits
.globl FUN_801e413c
.type FUN_801e413c, @function
FUN_801e413c:
	addiu	$sp,$sp,-40
	sw	$s1,28($sp)
	addu	$s1, $a0, $zero
	sw	$s2,32($sp)
	addu	$s2, $a1, $zero
	sw	$ra,36($sp)
	jal	FUN_801e4048
	sw	$s0,24($sp)
	addiu	$a0,$s1,1352
	addu	$a1, $s1, $zero
	lui	$a2,0x801e
	jal	FUN_801e42d4
	addiu	$a2,$a2,26308
	addu	$a0, $s1, $zero
	lui	$a1,0x8011
	addiu	$a1,$a1,-10200
	jal	FUN_801e5ae0
	sw	$zero,1372($s1)
	jal	FUN_801e5040
	addiu	$a0,$s1,84
	addiu	$a0,$s1,1320
	lui	$s0,0x800f
	addiu	$s0,$s0,10536
	jal	FUN_801e5f08
	addu	$a1, $s0, $zero
	addiu	$a0,$s1,1280
	lui	$a1,0x8010
	addiu	$a1,$a1,-17492
	sll	$s2,$s2,0x18
	lw	$a2,3140($s0)
	lw	$v0,1372($s1)
	sra	$a3,$s2,0x18
	jal	FUN_801e5758
	sw	$v0,16($sp)
	lw	$a1,1372($s1)
	jal	FUN_801e5308
	addiu	$a0,$s1,1272
	lw	$ra,36($sp)
	lw	$s2,32($sp)
	lw	$s1,28($sp)
	lw	$s0,24($sp)
	jr	$ra
	addiu	$sp,$sp,40

# ---------------------------------------------------------------------------
# FUN_801e41e8 (0x801e41e8 - 0x801e4284) - 156 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e41e8, "ax", @progbits
.globl FUN_801e41e8
.type FUN_801e41e8, @function
FUN_801e41e8:
	addiu	$sp,$sp,-32
	sw	$s1,20($sp)
	addu	$s1, $a0, $zero
	addiu	$a0,$s1,1352
	sw	$ra,24($sp)
	jal	FUN_801e42ec
	sw	$s0,16($sp)
	bnez	$v0, .L801e4270
	li	$v0,1
	addu	$a0, $zero, $zero
	lui	$s0,0x8011
	addiu	$s0,$s0,-10164
	jal	0x80037988
	addu	$a1, $s0, $zero
	addiu	$s0,$s0,-36
	lhu	$a0,98($s0)
	jal	0x800548e8
	nop
	lhu	$a0,100($s0)
	lhu	$a1,102($s0)
	lhu	$a2,104($s0)
	jal	0x80054968
	nop
	jal	FUN_801e47dc
	addu	$a0, $s1, $zero
	jal	FUN_801e5d74
	addiu	$a0,$s1,1280
	jal	FUN_801e58dc
	addiu	$a0,$s1,1320
	jal	FUN_801e5cd8
	addiu	$a0,$s1,84
	jal	FUN_801e5420
	addiu	$a0,$s1,1272
	addu	$v0, $zero, $zero
.L801e4270:
	lw	$ra,24($sp)
	lw	$s1,20($sp)
	lw	$s0,16($sp)
	jr	$ra
	addiu	$sp,$sp,32

# ---------------------------------------------------------------------------
# FUN_801e4284 (0x801e4284 - 0x801e42c8) - 68 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e4284, "ax", @progbits
.globl FUN_801e4284
.type FUN_801e4284, @function
FUN_801e4284:
	addiu	$sp,$sp,-24
	sw	$s0,16($sp)
	sw	$ra,20($sp)
	jal	FUN_801e5c98
	addu	$s0, $a0, $zero
	jal	FUN_801e5ed0
	addiu	$a0,$s0,1280
	jal	FUN_801e600c
	addiu	$a0,$s0,1320
	jal	FUN_801e5d34
	addiu	$a0,$s0,84
	jal	FUN_801e5d4c
	addiu	$a0,$s0,1272
	lw	$ra,20($sp)
	lw	$s0,16($sp)
	jr	$ra
	addiu	$sp,$sp,24

# ---------------------------------------------------------------------------
# FUN_801e42c8 (0x801e42c8 - 0x801e42d4) - 12 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e42c8, "ax", @progbits
.globl FUN_801e42c8
.type FUN_801e42c8, @function
FUN_801e42c8:
	sw	$a1,0($a0)
	jr	$ra
	addu	$v0, $zero, $zero

# ---------------------------------------------------------------------------
# FUN_801e42d4 (0x801e42d4 - 0x801e42ec) - 24 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e42d4, "ax", @progbits
.globl FUN_801e42d4
.type FUN_801e42d4, @function
FUN_801e42d4:
	addu	$v0, $zero, $zero
	sw	$a1,12($a0)
	sw	$a2,0($a0)
	sw	$zero,4($a0)
	jr	$ra
	sw	$zero,8($a0)

# ---------------------------------------------------------------------------
# FUN_801e42ec (0x801e42ec - 0x801e43a0) - 180 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e42ec, "ax", @progbits
.globl FUN_801e42ec
.type FUN_801e42ec, @function
FUN_801e42ec:
	addiu	$sp,$sp,-32
	sw	$s0,16($sp)
	addu	$s0, $a0, $zero
	lui	$v0,0x800f
	sw	$s1,20($sp)
	addiu	$s1,$v0,10376
	sw	$ra,24($sp)
.L801e4308:
	lw	$a0,116($s1)
	lw	$v0,4($s0)
	lw	$v1,8($s0)
	subu	$v0,$a0,$v0
	slt	$v0,$v0,$v1
	bnez	$v0, .L801e438c
	addu	$v0, $zero, $zero
	lw	$v0,0($s0)
	nop
	beqz	$v0, .L801e4388
	addu	$v1, $v0, $zero
	sw	$a0,4($s0)
	sw	$zero,8($s0)
	lw	$v0,0($v1)
	nop
	beqz	$v0, .L801e437c
	nop
	lw	$a1,4($v1)
	jalr	$v0
	addu	$a0, $s0, $zero
	beqz	$v0, .L801e4368
	nop
	j	.L801e4308
	sw	$v0,0($s0)
.L801e4368:
	lw	$v0,0($s0)
	nop
	addiu	$v0,$v0,8
	j	.L801e4308
	sw	$v0,0($s0)
.L801e437c:
	sw	$zero,0($s0)
	j	.L801e438c
	li	$v0,1
.L801e4388:
	addu	$v0, $zero, $zero
.L801e438c:
	lw	$ra,24($sp)
	lw	$s1,20($sp)
	lw	$s0,16($sp)
	jr	$ra
	addiu	$sp,$sp,32

# ---------------------------------------------------------------------------
# FUN_801e43a0 (0x801e43a0 - 0x801e43b4) - 20 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e43a0, "ax", @progbits
.globl FUN_801e43a0
.type FUN_801e43a0, @function
FUN_801e43a0:
	lw	$v0,0($a1)
	nop
	sw	$v0,8($a0)
	jr	$ra
	addu	$v0, $zero, $zero

# ---------------------------------------------------------------------------
# FUN_801e43b4 (0x801e43b4 - 0x801e43bc) - 8 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e43b4, "ax", @progbits
.globl FUN_801e43b4
.type FUN_801e43b4, @function
FUN_801e43b4:
	jr	$ra
	addu	$v0, $a1, $zero

# ---------------------------------------------------------------------------
# FUN_801e43bc (0x801e43bc - 0x801e43f8) - 60 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e43bc, "ax", @progbits
.globl FUN_801e43bc
.type FUN_801e43bc, @function
FUN_801e43bc:
	addiu	$sp,$sp,-32
	addu	$v1, $a1, $zero
	sw	$ra,24($sp)
	lw	$v0,8($v1)
	nop
	sw	$v0,16($sp)
	lw	$a0,12($a0)
	lw	$a1,0($v1)
	lw	$a2,4($v1)
	jal	FUN_801e5b88
	addu	$a3, $zero, $zero
	lw	$ra,24($sp)
	addu	$v0, $zero, $zero
	jr	$ra
	addiu	$sp,$sp,32

# ---------------------------------------------------------------------------
# FUN_801e43f8 (0x801e43f8 - 0x801e4418) - 32 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e43f8, "ax", @progbits
.globl FUN_801e43f8
.type FUN_801e43f8, @function
FUN_801e43f8:
	lw	$v0,12($a0)
	nop
	lw	$v0,76($v0)
	nop
	bnez	$v0, FUN_801e4418
	li	$v1,1
	jr	$ra
	addu	$v0, $zero, $zero

# ---------------------------------------------------------------------------
# FUN_801e4418 (0x801e4418 - 0x801e4424) - 12 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e4418, "ax", @progbits
.globl FUN_801e4418
.type FUN_801e4418, @function
FUN_801e4418:
	lw	$v0,0($a0)
	jr	$ra
	sw	$v1,8($a0)

# ---------------------------------------------------------------------------
# FUN_801e4424 (0x801e4424 - 0x801e4474) - 80 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e4424, "ax", @progbits
.globl FUN_801e4424
.type FUN_801e4424, @function
FUN_801e4424:
	addiu	$sp,$sp,-24
	sw	$ra,16($sp)
	lw	$a1,0($a1)
	lw	$v1,12($a0)
	sll	$v0,$a1,0x5
	addu	$v0,$v0,$a1
	sll	$v0,$v0,0x2
	addiu	$a0,$v1,84
	addu	$v0,$a0,$v0
	lbu	$v0,128($v0)
	nop
	beqz	$v0, .L801e445c
	li	$a2,1
	addu	$a2, $zero, $zero
.L801e445c:
	jal	FUN_801e5ca0
	nop
	lw	$ra,16($sp)
	addu	$v0, $zero, $zero
	jr	$ra
	addiu	$sp,$sp,24

# ---------------------------------------------------------------------------
# FUN_801e4474 (0x801e4474 - 0x801e44a0) - 44 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e4474, "ax", @progbits
.globl FUN_801e4474
.type FUN_801e4474, @function
FUN_801e4474:
	addiu	$sp,$sp,-24
	addu	$a2, $zero, $zero
	sw	$ra,16($sp)
	lw	$a0,12($a0)
	lw	$a1,0($a1)
	jal	FUN_801e5ca0
	addiu	$a0,$a0,84
	lw	$ra,16($sp)
	addu	$v0, $zero, $zero
	jr	$ra
	addiu	$sp,$sp,24

# ---------------------------------------------------------------------------
# FUN_801e44a0 (0x801e44a0 - 0x801e4500) - 96 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e44a0, "ax", @progbits
.globl FUN_801e44a0
.type FUN_801e44a0, @function
FUN_801e44a0:
	addiu	$sp,$sp,-32
	sw	$s0,16($sp)
	addu	$s0, $a0, $zero
	sw	$s1,20($sp)
	addu	$s1, $a1, $zero
	sw	$ra,24($sp)
	lw	$a0,12($s0)
	addu	$a1, $zero, $zero
	jal	FUN_801e5ec8
	addiu	$a0,$a0,1280
	lw	$a0,12($s0)
	addu	$a1, $zero, $zero
	jal	FUN_801e5d44
	addiu	$a0,$a0,1272
	lw	$a0,12($s0)
	lw	$a1,0($s1)
	jal	FUN_801e5e74
	addiu	$a0,$a0,1280
	lw	$ra,24($sp)
	lw	$s1,20($sp)
	lw	$s0,16($sp)
	addu	$v0, $zero, $zero
	jr	$ra
	addiu	$sp,$sp,32

# ---------------------------------------------------------------------------
# FUN_801e4500 (0x801e4500 - 0x801e4540) - 64 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e4500, "ax", @progbits
.globl FUN_801e4500
.type FUN_801e4500, @function
FUN_801e4500:
	lw	$v1,12($a0)
	lw	$v0,0($a1)
	lw	$a0,1280($v1)
	nop
	sw	$v0,3104($a0)
	lw	$v0,4($a1)
	addiu	$v1,$v1,1280
	sw	$v0,16($v1)
	lw	$v0,8($a1)
	nop
	sw	$v0,20($v1)
	lw	$v0,0($a1)
	nop
	sw	$v0,24($v1)
	jr	$ra
	addu	$v0, $zero, $zero

# ---------------------------------------------------------------------------
# FUN_801e4540 (0x801e4540 - 0x801e4660) - 288 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e4540, "ax", @progbits
.globl FUN_801e4540
.type FUN_801e4540, @function
FUN_801e4540:
	addiu	$sp,$sp,-24
	sw	$s0,16($sp)
	addu	$s0, $a0, $zero
	sw	$ra,20($sp)
	lw	$a0,12($s0)
	li	$a1,1
	jal	FUN_801e5ec8
	addiu	$a0,$a0,1280
	lw	$a0,12($s0)
	li	$a1,1
	jal	FUN_801e5d44
	addiu	$a0,$a0,1272
	lw	$v1,12($s0)
	nop
	lw	$v0,1312($v1)
	nop
	beqz	$v0, .L801e4634
	nop
	lw	$v0,1280($v1)
	nop
	lhu	$v1,14($v0)
	nop
	addiu	$v1,$v1,20
	sh	$v1,14($v0)
	lw	$a0,12($s0)
	nop
	lw	$v1,1312($a0)
	li	$v0,2
	beq	$v1, $v0, .L801e45fc
	slti	$v0,$v1,3
	beqz	$v0, .L801e45d0
	li	$v0,1
	beq	$v1, $v0, .L801e45ec
	nop
	j	.L801e464c
	nop
.L801e45d0:
	li	$v0,3
	beq	$v1, $v0, .L801e4610
	li	$v0,4
	beq	$v1, $v0, .L801e4624
	li	$v0,1
	j	.L801e464c
	nop
.L801e45ec:
	jal	FUN_801e61e0
	sb	$v1,1334($a0)
	j	.L801e464c
	nop
.L801e45fc:
	li	$v0,1
	jal	FUN_801e6188
	sb	$v0,1336($a0)
	j	.L801e464c
	nop
.L801e4610:
	li	$v1,1
	sb	$v1,1336($a0)
	lw	$v0,12($s0)
	j	.L801e464c
	sb	$v1,1337($v0)
.L801e4624:
	jal	FUN_801e61b4
	sb	$v0,1335($a0)
	j	.L801e464c
	nop
.L801e4634:
	lw	$v1,1280($v1)
	nop
	lhu	$v0,14($v1)
	nop
	addiu	$v0,$v0,-250
	sh	$v0,14($v1)
.L801e464c:
	lw	$ra,20($sp)
	lw	$s0,16($sp)
	addu	$v0, $zero, $zero
	jr	$ra
	addiu	$sp,$sp,24

# ---------------------------------------------------------------------------
# FUN_801e4660 (0x801e4660 - 0x801e46d4) - 116 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e4660, "ax", @progbits
.globl FUN_801e4660
.type FUN_801e4660, @function
FUN_801e4660:
	addiu	$sp,$sp,-24
	sw	$s0,16($sp)
	addu	$s0, $a0, $zero
	sw	$ra,20($sp)
	lw	$a0,12($s0)
	addu	$a1, $zero, $zero
	jal	FUN_801e5ec8
	addiu	$a0,$a0,1280
	lw	$a0,12($s0)
	addu	$a1, $zero, $zero
	jal	FUN_801e5d44
	addiu	$a0,$a0,1272
	lw	$v0,12($s0)
	nop
	sb	$zero,1334($v0)
	lw	$v0,12($s0)
	nop
	sb	$zero,1335($v0)
	lw	$v0,12($s0)
	nop
	sb	$zero,1336($v0)
	lw	$v0,12($s0)
	nop
	sb	$zero,1337($v0)
	lw	$ra,20($sp)
	lw	$s0,16($sp)
	addu	$v0, $zero, $zero
	jr	$ra
	addiu	$sp,$sp,24

# ---------------------------------------------------------------------------
# FUN_801e46d4 (0x801e46d4 - 0x801e4718) - 68 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e46d4, "ax", @progbits
.globl FUN_801e46d4
.type FUN_801e46d4, @function
FUN_801e46d4:
	addiu	$sp,$sp,-24
	sw	$s0,16($sp)
	addu	$s0, $a0, $zero
	sw	$ra,20($sp)
	lw	$a0,12($s0)
	li	$a1,1
	jal	FUN_801e5d3c
	addiu	$a0,$a0,1272
	lw	$a0,12($s0)
	addu	$a1, $zero, $zero
	jal	FUN_801e5fe8
	addiu	$a0,$a0,1320
	lw	$ra,20($sp)
	lw	$s0,16($sp)
	addu	$v0, $zero, $zero
	jr	$ra
	addiu	$sp,$sp,24

# ---------------------------------------------------------------------------
# FUN_801e4718 (0x801e4718 - 0x801e4720) - 8 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e4718, "ax", @progbits
.globl FUN_801e4718
.type FUN_801e4718, @function
FUN_801e4718:
	jr	$ra
	addu	$v0, $zero, $zero

# ---------------------------------------------------------------------------
# FUN_801e4720 (0x801e4720 - 0x801e4748) - 40 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e4720, "ax", @progbits
.globl FUN_801e4720
.type FUN_801e4720, @function
FUN_801e4720:
	addiu	$sp,$sp,-24
	sw	$ra,16($sp)
	lw	$a0,12($a0)
	li	$a1,1
	jal	FUN_801e5fa8
	addiu	$a0,$a0,1320
	lw	$ra,16($sp)
	addu	$v0, $zero, $zero
	jr	$ra
	addiu	$sp,$sp,24

# ---------------------------------------------------------------------------
# FUN_801e4748 (0x801e4748 - 0x801e4770) - 40 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e4748, "ax", @progbits
.globl FUN_801e4748
.type FUN_801e4748, @function
FUN_801e4748:
	addiu	$sp,$sp,-24
	sw	$ra,16($sp)
	lw	$a0,12($a0)
	li	$a1,1
	jal	FUN_801e5fb0
	addiu	$a0,$a0,1320
	lw	$ra,16($sp)
	addu	$v0, $zero, $zero
	jr	$ra
	addiu	$sp,$sp,24

# ---------------------------------------------------------------------------
# FUN_801e4770 (0x801e4770 - 0x801e4798) - 40 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e4770, "ax", @progbits
.globl FUN_801e4770
.type FUN_801e4770, @function
FUN_801e4770:
	addiu	$sp,$sp,-24
	sw	$ra,16($sp)
	lw	$a0,12($a0)
	addu	$a1, $zero, $zero
	jal	FUN_801e5fb0
	addiu	$a0,$a0,1320
	lw	$ra,16($sp)
	addu	$v0, $zero, $zero
	jr	$ra
	addiu	$sp,$sp,24

# ---------------------------------------------------------------------------
# FUN_801e4798 (0x801e4798 - 0x801e47c0) - 40 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e4798, "ax", @progbits
.globl FUN_801e4798
.type FUN_801e4798, @function
FUN_801e4798:
	addiu	$sp,$sp,-24
	sw	$ra,16($sp)
	lw	$a0,12($a0)
	li	$a1,1
	jal	FUN_801e5e6c
	addiu	$a0,$a0,1280
	lw	$ra,16($sp)
	addu	$v0, $zero, $zero
	jr	$ra
	addiu	$sp,$sp,24

# ---------------------------------------------------------------------------
# FUN_801e47c0 (0x801e47c0 - 0x801e47d4) - 20 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e47c0, "ax", @progbits
.globl FUN_801e47c0
.type FUN_801e47c0, @function
FUN_801e47c0:
	lw	$v1,12($a0)
	li	$v0,1
	sw	$v0,472($v1)
	jr	$ra
	addu	$v0, $zero, $zero

# ---------------------------------------------------------------------------
# FUN_801e47d4 (0x801e47d4 - 0x801e47dc) - 8 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e47d4, "ax", @progbits
.globl FUN_801e47d4
.type FUN_801e47d4, @function
FUN_801e47d4:
	jr	$ra
	addu	$v0, $zero, $zero

# ---------------------------------------------------------------------------
# FUN_801e47dc (0x801e47dc - 0x801e4978) - 412 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e47dc, "ax", @progbits
.globl FUN_801e47dc
.type FUN_801e47dc, @function
FUN_801e47dc:
	addiu	$sp,$sp,-24
	addu	$a2, $a0, $zero
	sw	$ra,16($sp)
	lw	$a0,76($a2)
	lw	$a3,0($a2)
	beqz	$a0, .L801e4968
	addiu	$a0,$a0,-1
	lw	$v0,40($a2)
	lw	$v1,4($a2)
	nop
	subu	$v0,$v0,$v1
	mult	$a0,$v0
	mflo	$a1
	lw	$v0,80($a2)
	nop
	div	$zero,$a1,$v0
	mflo	$v0
	sw	$a0,76($a2)
	addu	$v1,$v1,$v0
	sw	$v1,0($a3)
	lw	$v0,44($a2)
	lw	$v1,8($a2)
	lw	$a0,76($a2)
	subu	$v0,$v0,$v1
	mult	$a0,$v0
	mflo	$a1
	lw	$v0,80($a2)
	nop
	div	$zero,$a1,$v0
	mflo	$v0
	nop
	addu	$v1,$v1,$v0
	sw	$v1,4($a3)
	lw	$v0,48($a2)
	lw	$v1,12($a2)
	lw	$a0,76($a2)
	subu	$v0,$v0,$v1
	mult	$a0,$v0
	mflo	$a1
	lw	$v0,80($a2)
	nop
	div	$zero,$a1,$v0
	mflo	$v0
	nop
	addu	$v1,$v1,$v0
	sw	$v1,8($a3)
	lw	$v0,56($a2)
	lw	$v1,20($a2)
	lw	$a0,76($a2)
	subu	$v0,$v0,$v1
	mult	$a0,$v0
	mflo	$a1
	lw	$v0,80($a2)
	nop
	div	$zero,$a1,$v0
	mflo	$v0
	nop
	addu	$v1,$v1,$v0
	sw	$v1,12($a3)
	lw	$v0,60($a2)
	lw	$v1,24($a2)
	lw	$a0,76($a2)
	subu	$v0,$v0,$v1
	mult	$a0,$v0
	mflo	$a1
	lw	$v0,80($a2)
	nop
	div	$zero,$a1,$v0
	mflo	$v0
	nop
	addu	$v1,$v1,$v0
	sw	$v1,16($a3)
	lw	$v0,64($a2)
	lw	$v1,28($a2)
	lw	$a0,76($a2)
	subu	$v0,$v0,$v1
	mult	$a0,$v0
	mflo	$a1
	lw	$v0,80($a2)
	nop
	div	$zero,$a1,$v0
	mflo	$v0
	nop
	addu	$v1,$v1,$v0
	sw	$v1,20($a3)
	lw	$v0,72($a2)
	lw	$v1,36($a2)
	lw	$a0,76($a2)
	subu	$v0,$v0,$v1
	mult	$a0,$v0
	mflo	$a1
	lw	$v0,80($a2)
	nop
	div	$zero,$a1,$v0
	mflo	$v0
	addu	$a0, $a3, $zero
	addu	$v1,$v1,$v0
	jal	0x800549b8
	sw	$v1,24($a3)
.L801e4968:
	lw	$ra,16($sp)
	nop
	jr	$ra
	addiu	$sp,$sp,24

# ---------------------------------------------------------------------------
# FUN_801e4978 (0x801e4978 - 0x801e4bc0) - 584 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e4978, "ax", @progbits
.globl FUN_801e4978
.type FUN_801e4978, @function
FUN_801e4978:
	addiu	$sp,$sp,-32
	sw	$s0,16($sp)
	addu	$s0, $a0, $zero
	sw	$s1,20($sp)
	addu	$s1, $a2, $zero
	sw	$ra,24($sp)
	jal	0x80098880
	addu	$a0, $a1, $zero
	li	$v1,9
	sb	$v1,3($s0)
	li	$v1,44
	li	$a0,2
	sb	$v1,7($s0)
	lhu	$a2,10($v0)
	lh	$v1,4($v0)
	andi	$a1,$a2,0x3
	sll	$a1,$a1,0x7
	andi	$v1,$v1,0x100
	sra	$v1,$v1,0x4
	or	$a1,$a1,$v1
	sll	$a2,$a2,0x10
	sra	$a2,$a2,0x10
	lh	$v1,2($v0)
	subu	$a0,$a0,$a2
	srav	$v1,$v1,$a0
	andi	$v1,$v1,0x3ff
	sra	$v1,$v1,0x6
	lhu	$a0,4($v0)
	or	$a1,$a1,$v1
	andi	$a0,$a0,0x200
	sll	$a0,$a0,0x2
	or	$a1,$a1,$a0
	sh	$a1,22($s0)
	lhu	$a0,16($v0)
	lhu	$v1,14($v0)
	sll	$a0,$a0,0x6
	srl	$v1,$v1,0x4
	andi	$v1,$v1,0x3f
	or	$a0,$a0,$v1
	sh	$a0,14($s0)
	lw	$a1,0($s1)
	lw	$a0,8($s1)
	lw	$v1,4($s1)
	lw	$a2,12($s1)
	lh	$t2,2($v0)
	lh	$a3,10($v0)
	lh	$t0,6($v0)
	lbu	$t3,4($v0)
	lh	$t1,8($v0)
	li	$v0,128
	sb	$v0,4($s0)
	sb	$v0,5($s0)
	sb	$v0,6($s0)
	li	$v0,255
	addu	$a0,$a1,$a0
	sh	$v1,10($s0)
	sh	$v1,18($s0)
	addu	$v1,$v1,$a2
	srav	$v0,$v0,$a3
	and	$t2,$t2,$v0
	sh	$a0,16($s0)
	sh	$a0,32($s0)
	addu	$a0,$t2,$t0
	sh	$a1,8($s0)
	sh	$a1,24($s0)
	sh	$v1,26($s0)
	sh	$v1,34($s0)
	lbu	$v0,21($s1)
	nop
	beqz	$v0, .L801e4abc
	addu	$v1,$t3,$t1
	addiu	$v0,$v1,-1
	sb	$t2,12($s0)
	sb	$v0,13($s0)
	sb	$a0,20($s0)
	sb	$v0,21($s0)
	sb	$t2,28($s0)
	sb	$t3,29($s0)
	sb	$a0,36($s0)
	j	.L801e4adc
	sb	$t3,37($s0)
.L801e4abc:
	sb	$t2,12($s0)
	sb	$t3,13($s0)
	sb	$a0,20($s0)
	sb	$t3,21($s0)
	sb	$t2,28($s0)
	sb	$v1,29($s0)
	sb	$a0,36($s0)
	sb	$v1,37($s0)
.L801e4adc:
	lbu	$v0,20($s1)
	nop
	beqz	$v0, .L801e4afc
	addu	$a2, $s0, $zero
	lbu	$v0,7($s0)
	nop
	ori	$v0,$v0,0x2
	sb	$v0,7($s0)
.L801e4afc:
	lui	$v1,0x800e
	lw	$a3,22064($v1)
	addiu	$a0,$a2,32
	addu	$a1, $a3, $zero
	addiu	$v0,$a3,40
	sw	$v0,22064($v1)
.L801e4b14:
	lw	$t4,0($a2)
	lw	$t5,4($a2)
	lw	$t6,8($a2)
	lw	$t7,12($a2)
	sw	$t4,0($a1)
	sw	$t5,4($a1)
	sw	$t6,8($a1)
	sw	$t7,12($a1)
	addiu	$a2,$a2,16
	bne	$a2, $a0, .L801e4b14
	addiu	$a1,$a1,16
	lui	$a0,0xff
	ori	$a0,$a0,0xffff
	lui	$v1,0x800e
	lw	$t4,0($a2)
	lw	$t5,4($a2)
	sw	$t4,0($a1)
	sw	$t5,4($a1)
	lui	$a1,0xff00
	lw	$v0,16($s1)
	lw	$a2,10984($v1)
	lw	$v1,0($a3)
	sll	$v0,$v0,0x2
	addu	$v0,$v0,$a2
	lw	$v0,0($v0)
	and	$v1,$v1,$a1
	and	$v0,$v0,$a0
	or	$v1,$v1,$v0
	sw	$v1,0($a3)
	lw	$v1,16($s1)
	nop
	sll	$v1,$v1,0x2
	addu	$v1,$v1,$a2
	lw	$v0,0($v1)
	and	$a0,$a3,$a0
	and	$v0,$v0,$a1
	or	$v0,$v0,$a0
	sw	$v0,0($v1)
	lw	$ra,24($sp)
	lw	$s1,20($sp)
	lw	$s0,16($sp)
	jr	$ra
	addiu	$sp,$sp,32

# ---------------------------------------------------------------------------
# FUN_801e4bc0 (0x801e4bc0 - 0x801e4e70) - 688 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e4bc0, "ax", @progbits
.globl FUN_801e4bc0
.type FUN_801e4bc0, @function
FUN_801e4bc0:
	addiu	$sp,$sp,-32
	sw	$s0,16($sp)
	addu	$s0, $a0, $zero
	sw	$s2,24($sp)
	addu	$s2, $a2, $zero
	sw	$s1,20($sp)
	addu	$s1, $a3, $zero
	sw	$ra,28($sp)
	jal	0x80098880
	addu	$a0, $a1, $zero
	li	$v1,9
	sb	$v1,3($s0)
	li	$v1,44
	li	$a0,2
	sb	$v1,7($s0)
	lhu	$a2,10($v0)
	lh	$v1,4($v0)
	andi	$a1,$a2,0x3
	sll	$a1,$a1,0x7
	andi	$v1,$v1,0x100
	sra	$v1,$v1,0x4
	or	$a1,$a1,$v1
	sll	$a2,$a2,0x10
	sra	$a2,$a2,0x10
	lh	$v1,2($v0)
	subu	$a0,$a0,$a2
	srav	$v1,$v1,$a0
	andi	$v1,$v1,0x3ff
	sra	$v1,$v1,0x6
	lhu	$a0,4($v0)
	or	$a1,$a1,$v1
	andi	$a0,$a0,0x200
	sll	$a0,$a0,0x2
	or	$a1,$a1,$a0
	sh	$a1,22($s0)
	lhu	$v1,16($v0)
	lhu	$v0,14($v0)
	sll	$v1,$v1,0x6
	srl	$v0,$v0,0x4
	andi	$v0,$v0,0x3f
	or	$v1,$v1,$v0
	sh	$v1,14($s0)
	lw	$a1,0($s2)
	lw	$a0,8($s2)
	lw	$v1,4($s2)
	lw	$a2,12($s2)
	li	$v0,128
	sb	$v0,4($s0)
	sb	$v0,5($s0)
	sb	$v0,6($s0)
	addu	$a0,$a1,$a0
	sh	$v1,10($s0)
	sh	$v1,18($s0)
	addu	$v1,$v1,$a2
	sh	$a1,8($s0)
	sh	$a0,16($s0)
	sh	$a1,24($s0)
	sh	$v1,26($s0)
	sh	$a0,32($s0)
	sh	$v1,34($s0)
	lbu	$v0,21($s2)
	nop
	beqz	$v0, .L801e4d28
	nop
	lbu	$v0,0($s1)
	nop
	sb	$v0,12($s0)
	lbu	$v0,4($s1)
	nop
	addiu	$v0,$v0,-1
	sb	$v0,13($s0)
	lbu	$v0,8($s1)
	nop
	sb	$v0,20($s0)
	lbu	$v0,12($s1)
	nop
	addiu	$v0,$v0,-1
	sb	$v0,21($s0)
	lbu	$v0,0($s1)
	nop
	sb	$v0,28($s0)
	lbu	$v0,4($s1)
	nop
	sb	$v0,29($s0)
	lbu	$v0,8($s1)
	nop
	sb	$v0,36($s0)
	lbu	$v0,4($s1)
	j	.L801e4d88
	sb	$v0,37($s0)
.L801e4d28:
	lbu	$v0,0($s1)
	nop
	sb	$v0,12($s0)
	lbu	$v0,4($s1)
	nop
	sb	$v0,13($s0)
	lbu	$v0,8($s1)
	nop
	sb	$v0,20($s0)
	lbu	$v0,4($s1)
	nop
	sb	$v0,21($s0)
	lbu	$v0,0($s1)
	nop
	sb	$v0,28($s0)
	lbu	$v0,12($s1)
	nop
	sb	$v0,29($s0)
	lbu	$v0,8($s1)
	nop
	sb	$v0,36($s0)
	lbu	$v0,12($s1)
	nop
	sb	$v0,37($s0)
.L801e4d88:
	lbu	$v0,20($s2)
	nop
	beqz	$v0, .L801e4da8
	addu	$a2, $s0, $zero
	lbu	$v0,7($s0)
	nop
	ori	$v0,$v0,0x2
	sb	$v0,7($s0)
.L801e4da8:
	lui	$v1,0x800e
	lw	$a3,22064($v1)
	addiu	$a0,$a2,32
	addu	$a1, $a3, $zero
	addiu	$v0,$a3,40
	sw	$v0,22064($v1)
.L801e4dc0:
	lw	$t0,0($a2)
	lw	$t1,4($a2)
	lw	$t2,8($a2)
	lw	$t3,12($a2)
	sw	$t0,0($a1)
	sw	$t1,4($a1)
	sw	$t2,8($a1)
	sw	$t3,12($a1)
	addiu	$a2,$a2,16
	bne	$a2, $a0, .L801e4dc0
	addiu	$a1,$a1,16
	lui	$a0,0xff
	ori	$a0,$a0,0xffff
	lui	$v1,0x800e
	lw	$t0,0($a2)
	lw	$t1,4($a2)
	sw	$t0,0($a1)
	sw	$t1,4($a1)
	lui	$a1,0xff00
	lw	$v0,16($s2)
	lw	$a2,10984($v1)
	lw	$v1,0($a3)
	sll	$v0,$v0,0x2
	addu	$v0,$v0,$a2
	lw	$v0,0($v0)
	and	$v1,$v1,$a1
	and	$v0,$v0,$a0
	or	$v1,$v1,$v0
	sw	$v1,0($a3)
	lw	$v1,16($s2)
	nop
	sll	$v1,$v1,0x2
	addu	$v1,$v1,$a2
	lw	$v0,0($v1)
	and	$a0,$a3,$a0
	and	$v0,$v0,$a1
	or	$v0,$v0,$a0
	sw	$v0,0($v1)
	lw	$ra,28($sp)
	lw	$s2,24($sp)
	lw	$s1,20($sp)
	lw	$s0,16($sp)
	jr	$ra
	addiu	$sp,$sp,32

# ---------------------------------------------------------------------------
# FUN_801e4e70 (0x801e4e70 - 0x801e4f68) - 248 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e4e70, "ax", @progbits
.globl FUN_801e4e70
.type FUN_801e4e70, @function
FUN_801e4e70:
	addiu	$sp,$sp,-32
	sw	$s1,20($sp)
	addu	$s1, $a0, $zero
	addiu	$a0,$s1,4
	li	$a1,114
	lui	$a2,0x801e
	addiu	$a2,$a2,27884
	sw	$ra,24($sp)
	jal	FUN_801e4978
	sw	$s0,16($sp)
	addiu	$a0,$s1,44
	li	$a1,55
	lui	$a2,0x801e
	jal	FUN_801e4978
	addiu	$a2,$a2,27916
	lui	$s0,0x801e
	lw	$v1,28236($s0)
	li	$v0,5120
	beq	$v1, $v0, .L801e4f40
	addiu	$v0,$v1,256
	sw	$v0,28236($s0)
	bgez	$v0, .L801e4ed0
	addu	$a0, $v0, $zero
	addiu	$a0,$v1,4351
.L801e4ed0:
	sra	$a0,$a0,0xc
	sll	$a0,$a0,0xc
	subu	$a0,$v0,$a0
	jal	0x8004964c
	addiu	$a0,$a0,-1024
	lui	$a0,0x801e
	lui	$v1,0x801e
	sll	$v0,$v0,0x5
	sra	$v0,$v0,0xd
	lw	$a1,28236($s0)
	addiu	$s0,$a0,28076
	lw	$v1,28240($v1)
	addu	$a2, $a1, $zero
	addu	$v1,$v1,$v0
	bgez	$a1, .L801e4f14
	sw	$v1,28076($a0)
	addiu	$a2,$a1,4095
.L801e4f14:
	sra	$a0,$a2,0xc
	sll	$a0,$a0,0xc
	subu	$a0,$a1,$a0
	jal	0x8004971c
	addiu	$a0,$a0,-1024
	lui	$v1,0x801e
	sll	$v0,$v0,0x5
	lw	$v1,28244($v1)
	sra	$v0,$v0,0xd
	addu	$v1,$v1,$v0
	sw	$v1,4($s0)
.L801e4f40:
	addiu	$a0,$s1,84
	li	$a1,58
	lui	$a2,0x801e
	jal	FUN_801e4978
	addiu	$a2,$a2,28076
	lw	$ra,24($sp)
	lw	$s1,20($sp)
	lw	$s0,16($sp)
	jr	$ra
	addiu	$sp,$sp,32

# ---------------------------------------------------------------------------
# FUN_801e4f68 (0x801e4f68 - 0x801e5040) - 216 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e4f68, "ax", @progbits
.globl FUN_801e4f68
.type FUN_801e4f68, @function
FUN_801e4f68:
	addiu	$sp,$sp,-24
	sw	$s0,16($sp)
	addu	$s0, $a0, $zero
	addiu	$a0,$s0,4
	li	$a1,115
	lui	$a2,0x801e
	addiu	$a2,$a2,27948
	lui	$a3,0x801e
	sw	$ra,20($sp)
	lw	$v0,124($s0)
	addiu	$a3,$a3,28204
	addiu	$v0,$v0,1
	jal	FUN_801e4bc0
	sw	$v0,124($s0)
	addiu	$a0,$s0,44
	li	$a1,56
	lui	$a2,0x801e
	jal	FUN_801e4978
	addiu	$a2,$a2,27980
	lw	$v1,124($s0)
	nop
	slti	$v0,$v1,4
	beqz	$v0, .L801e4fdc
	nop
	lui	$v1,0x801e
	addiu	$v1,$v1,28140
	lw	$v0,4($v1)
	j	.L801e5010
	addiu	$v0,$v0,-8
.L801e4fdc:
	slti	$v0,$v1,8
	beqz	$v0, .L801e5014
	andi	$v0,$v1,0x1
	beqz	$v0, .L801e5000
	lui	$v1,0x801e
	addiu	$v1,$v1,28140
	lw	$v0,4($v1)
	j	.L801e5010
	addiu	$v0,$v0,1
.L801e5000:
	addiu	$v1,$v1,28140
	lw	$v0,4($v1)
	nop
	addiu	$v0,$v0,-1
.L801e5010:
	sw	$v0,4($v1)
.L801e5014:
	addiu	$a0,$s0,84
	li	$a1,115
	lui	$a2,0x801e
	addiu	$a2,$a2,28140
	lui	$a3,0x801e
	jal	FUN_801e4bc0
	addiu	$a3,$a3,28220
	lw	$ra,20($sp)
	lw	$s0,16($sp)
	jr	$ra
	addiu	$sp,$sp,24

# ---------------------------------------------------------------------------
# FUN_801e5040 (0x801e5040 - 0x801e5178) - 312 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e5040, "ax", @progbits
.globl FUN_801e5040
.type FUN_801e5040, @function
FUN_801e5040:
	addiu	$sp,$sp,-32
	addu	$a1, $zero, $zero
	lui	$v0,0x801e
	addiu	$v1,$v0,27096
	sw	$ra,24($sp)
	sw	$s1,20($sp)
	sw	$s0,16($sp)
.L801e505c:
	lw	$v0,0($v1)
	addiu	$v1,$v1,4
	addiu	$a1,$a1,1
	sw	$zero,124($a0)
	sb	$zero,128($a0)
	sw	$v0,0($a0)
	slti	$v0,$a1,9
	bnez	$v0, .L801e505c
	addiu	$a0,$a0,132
	lui	$v0,0x801e
	lw	$v1,27132($v0)
	nop
	beqz	$v1, .L801e5118
	addiu	$a0,$v0,27132
	addiu	$a1,$a0,25
.L801e5098:
	lw	$v1,0($a0)
	lw	$v0,-21($a1)
	nop
	sw	$v0,0($v1)
	lw	$v1,0($a0)
	lw	$v0,-17($a1)
	nop
	sw	$v0,4($v1)
	lw	$v1,0($a0)
	lw	$v0,-13($a1)
	nop
	sw	$v0,8($v1)
	lw	$v1,0($a0)
	lw	$v0,-9($a1)
	nop
	sw	$v0,12($v1)
	lw	$v1,0($a0)
	lw	$v0,-5($a1)
	nop
	sw	$v0,16($v1)
	lw	$v1,0($a0)
	lbu	$v0,-1($a1)
	nop
	sb	$v0,20($v1)
	lw	$v1,0($a0)
	lbu	$v0,0($a1)
	addiu	$a0,$a0,28
	sb	$v0,21($v1)
	lw	$v0,0($a0)
	nop
	bnez	$v0, .L801e5098
	addiu	$a1,$a1,28
.L801e5118:
	li	$a0,115
	lui	$s0,0x801e
	addiu	$s0,$s0,28204
	jal	FUN_801e601c
	addu	$a1, $s0, $zero
	li	$a0,115
	lui	$s1,0x801e
	addiu	$s1,$s1,28220
	lw	$v0,4($s0)
	addu	$a1, $s1, $zero
	addiu	$v1,$v0,48
	addiu	$v0,$v0,120
	sw	$v1,4($s0)
	jal	FUN_801e601c
	sw	$v0,12($s0)
	lw	$v0,4($s1)
	nop
	addiu	$v0,$v0,48
	sw	$v0,12($s1)
	lw	$ra,24($sp)
	lw	$s1,20($sp)
	lw	$s0,16($sp)
	jr	$ra
	addiu	$sp,$sp,32

# ---------------------------------------------------------------------------
# FUN_801e5178 (0x801e5178 - 0x801e5308) - 400 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e5178, "ax", @progbits
.globl FUN_801e5178
.type FUN_801e5178, @function
FUN_801e5178:
	addiu	$sp,$sp,-40
	addu	$t7, $a0, $zero
	addu	$t2, $zero, $zero
	li	$t5,-1
	lui	$v0,0x801e
	addiu	$t6,$v0,27524
	lui	$v0,0x800f
	addiu	$t4,$v0,15276
	sw	$s1,36($sp)
	sw	$s0,32($sp)
.L801e51a0:
	addu	$t0, $zero, $zero
	addu	$a2, $t4, $zero
.L801e51a8:
	bnez	$t0, .L801e51c0
	li	$v0,16
	li	$v0,16
	sh	$t5,4($a2)
	j	.L801e5288
	sh	$v0,6($a2)
.L801e51c0:
	bne	$t0, $v0, .L801e51d4
	li	$v0,-2
	sh	$v0,4($a2)
	j	.L801e5288
	sh	$zero,6($a2)
.L801e51d4:
	sh	$t0,4($a2)
	beqz	$t2, .L801e5288
	sh	$t5,6($a2)
	lui	$v0,0x801e
	addiu	$t9,$v0,16404
	lw	$s0,0($t9)
	lw	$s1,4($t9)
	lw	$t8,8($t9)
	sw	$s0,0($sp)
	sw	$s1,4($sp)
	sw	$t8,8($sp)
	lw	$s0,12($t9)
	lw	$s1,16($t9)
	lw	$t8,20($t9)
	sw	$s0,12($sp)
	sw	$s1,16($sp)
	sw	$t8,20($sp)
	lw	$s0,24($t9)
	lw	$s1,28($t9)
	sw	$s0,24($sp)
	sw	$s1,28($sp)
	addu	$a3, $zero, $zero
	sll	$v0,$t7,0x4
	addu	$v0,$t0,$v0
	addu	$t1,$v0,$t6
	li	$t3,1
	sll	$v1,$t0,0x3
	lui	$v0,0x8010
	addiu	$v0,$v0,20188
	addu	$a0,$v1,$v0
	addu	$a1, $sp, $zero
.L801e5250:
	lbu	$v1,0($t1)
	lw	$v0,0($a1)
	nop
	and	$v1,$v1,$v0
	beqz	$v1, .L801e5270
	nop
	j	.L801e5274
	sb	$t3,0($a0)
.L801e5270:
	sb	$zero,0($a0)
.L801e5274:
	addiu	$a0,$a0,1
	addiu	$a3,$a3,1
	slti	$v0,$a3,8
	bnez	$v0, .L801e5250
	addiu	$a1,$a1,4
.L801e5288:
	lui	$a1,0x6666
	ori	$a1,$a1,0x6667
	sll	$a0,$t0,0xc
	sra	$v1,$a0,0x8
	sll	$v0,$v1,0x3
	subu	$v0,$v0,$v1
	sll	$v0,$v0,0x5
	addu	$v0,$v0,$v1
	sll	$v0,$v0,0x4
	mult	$v0,$a1
	addiu	$t0,$t0,1
	li	$v1,32000
	sra	$v0,$v0,0x1f
	sh	$v1,10($a2)
	sw	$a0,0($a2)
	mfhi	$s0
	sra	$v1,$s0,0x7
	subu	$v1,$v1,$v0
	sh	$v1,8($a2)
	slti	$v0,$t0,17
	bnez	$v0, .L801e51a8
	addiu	$a2,$a2,16
	li	$v0,0x9284
	addu	$t4,$t4,$v0
	addiu	$t2,$t2,1
	slti	$v0,$t2,2
	bnez	$v0, .L801e51a0
	nop
	lw	$s1,36($sp)
	lw	$s0,32($sp)
	jr	$ra
	addiu	$sp,$sp,40

# ---------------------------------------------------------------------------
# FUN_801e5308 (0x801e5308 - 0x801e5420) - 280 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e5308, "ax", @progbits
.globl FUN_801e5308
.type FUN_801e5308, @function
FUN_801e5308:
	addiu	$sp,$sp,-24
	addu	$t3, $zero, $zero
	li	$t2,-9999
	li	$t4,1
	lui	$v0,0x800f
	addiu	$v1,$v0,15040
	sw	$ra,16($sp)
	sb	$zero,4($a0)
	sb	$zero,5($a0)
	sw	$zero,0($a0)
	addu	$t0, $zero, $zero
.L801e5334:
	addu	$a2, $v1, $zero
	addiu	$t1,$v1,96
	sw	$zero,0($v1)
	sw	$zero,4($v1)
	sw	$zero,8($v1)
	sw	$zero,12($v1)
	sw	$zero,148($v1)
.L801e5350:
	sw	$t2,52($a2)
	addu	$a0, $zero, $zero
	addu	$a3, $t0, $zero
	addu	$v0,$a0,$a3
.L801e5360:
	addu	$v0,$v1,$v0
	sb	$t4,56($v0)
	addiu	$a0,$a0,1
	slti	$v0,$a0,8
	bnez	$v0, .L801e5360
	addu	$v0,$a0,$a3
	addiu	$a2,$a2,12
	slt	$v0,$a2,$t1
	bnez	$v0, .L801e5350
	addiu	$t0,$t0,12
	addu	$a0, $zero, $zero
	addu	$a2, $v1, $zero
	li	$v0,100
	sw	$zero,152($v1)
	sw	$zero,156($v1)
	sw	$zero,160($v1)
	sw	$zero,164($v1)
	sw	$zero,168($v1)
	sw	$zero,172($v1)
	sw	$zero,176($v1)
	sh	$v0,208($v1)
	sh	$zero,210($v1)
	sh	$zero,212($v1)
	sb	$zero,186($v1)
.L801e53c0:
	sh	$t2,36($a2)
	sh	$t2,188($a2)
	addiu	$a0,$a0,1
	slti	$v0,$a0,8
	bnez	$v0, .L801e53c0
	addiu	$a2,$a2,2
	li	$v0,0x9284
	sh	$zero,204($v1)
	sh	$zero,206($v1)
	addu	$v1,$v1,$v0
	addiu	$t3,$t3,1
	slti	$v0,$t3,2
	bnez	$v0, .L801e5334
	addu	$t0, $zero, $zero
	jal	FUN_801e5178
	addu	$a0, $a1, $zero
	jal	0x80058420
	nop
	jal	0x8005f298
	nop
	lw	$ra,16($sp)
	nop
	jr	$ra
	addiu	$sp,$sp,24

# ---------------------------------------------------------------------------
# FUN_801e5420 (0x801e5420 - 0x801e55b8) - 408 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e5420, "ax", @progbits
.globl FUN_801e5420
.type FUN_801e5420, @function
FUN_801e5420:
	addiu	$sp,$sp,-48
	sw	$s5,36($sp)
	addu	$s5, $a0, $zero
	sw	$ra,44($sp)
	sw	$s6,40($sp)
	sw	$s4,32($sp)
	sw	$s3,28($sp)
	sw	$s2,24($sp)
	sw	$s1,20($sp)
	sw	$s0,16($sp)
	lbu	$v0,4($s5)
	nop
	beqz	$v0, .L801e5590
	nop
	lbu	$v0,5($s5)
	nop
	bnez	$v0, .L801e5478
	addu	$s2, $zero, $zero
	lw	$v0,0($s5)
	nop
	addiu	$v0,$v0,1
	sw	$v0,0($s5)
.L801e5478:
	lui	$v0,0x800f
	addiu	$v0,$v0,15040
	addu	$s0, $v0, $zero
	addu	$s4, $s2, $zero
	addiu	$s6,$s0,236
	addu	$s3, $s6, $zero
.L801e5490:
	sw	$zero,152($s0)
	lw	$v0,152($s0)
	sw	$zero,156($s0)
	sw	$zero,160($s0)
	lw	$a2,0($s5)
	sll	$v0,$v0,0x4
	addu	$v0,$s3,$v0
	lh	$a0,6($v0)
	sw	$a2,0($s0)
	lw	$a1,0($v0)
	lh	$a3,8($v0)
	sll	$a0,$a0,0x4
	addu	$a0,$s3,$a0
	lw	$v1,0($a0)
	subu	$a2,$a2,$a3
	subu	$v1,$v1,$a1
	mult	$v1,$a2
	lh	$v0,8($a0)
	mflo	$v1
	subu	$v0,$v0,$a3
	nop
	div	$zero,$v1,$v0
	mflo	$v0
	nop
	addu	$a1,$a1,$v0
	lw	$v0,8($s0)
	addu	$s1, $zero, $zero
	sw	$a1,4($s0)
	addu	$v1, $a1, $zero
	sw	$v1,8($s0)
	sw	$v0,12($s0)
	addu	$v0,$s4,$s6
.L801e5510:
	sll	$v1,$s1,0x4
	addu	$a1,$v0,$v1
	lh	$a0,8($a1)
	lw	$v0,0($s0)
	lhu	$v1,8($a1)
	slt	$v0,$a0,$v0
	beqz	$v0, .L801e554c
	nop
	lh	$v0,10($a1)
	nop
	beq	$v0, $a0, .L801e554c
	addu	$a0, $s2, $zero
	sh	$v1,10($a1)
	jal	0x80056af0
	li	$a2,1
.L801e554c:
	addiu	$s1,$s1,1
	slti	$v0,$s1,17
	bnez	$v0, .L801e5510
	addu	$v0,$s4,$s6
	li	$v0,0x9284
	addu	$s0,$s0,$v0
	addu	$s4,$s4,$v0
	addu	$s3,$s3,$v0
	addiu	$s2,$s2,1
	slti	$v0,$s2,2
	bnez	$v0, .L801e5490
	nop
	jal	0x8005871c
	nop
	lw	$a0,0($s5)
	jal	0x8005e504
	nop
.L801e5590:
	lw	$ra,44($sp)
	lw	$s6,40($sp)
	lw	$s5,36($sp)
	lw	$s4,32($sp)
	lw	$s3,28($sp)
	lw	$s2,24($sp)
	lw	$s1,20($sp)
	lw	$s0,16($sp)
	jr	$ra
	addiu	$sp,$sp,48

# ---------------------------------------------------------------------------
# FUN_801e55b8 (0x801e55b8 - 0x801e5758) - 416 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e55b8, "ax", @progbits
.globl FUN_801e55b8
.type FUN_801e55b8, @function
FUN_801e55b8:
	addiu	$sp,$sp,-80
	sw	$ra,76($sp)
	sw	$s8,72($sp)
	sw	$s7,68($sp)
	sw	$s6,64($sp)
	sw	$s5,60($sp)
	sw	$s4,56($sp)
	sw	$s3,52($sp)
	sw	$s2,48($sp)
	sw	$s1,44($sp)
	sw	$s0,40($sp)
	lw	$v0,0($a0)
	lw	$a1,20($a0)
	nop
	beqz	$a1, .L801e563c
	addiu	$s6,$v0,196
	lw	$v0,2908($s6)
	lw	$v1,24($a0)
	nop
	subu	$v0,$v0,$v1
	sll	$v0,$v0,0xc
	div	$zero,$v0,$a1
	mflo	$s2
	nop
	bltz	$s2, .L801e5630
	slti	$v0,$s2,4097
	beqz	$v0, .L801e5634
	li	$v1,4096
	j	.L801e5634
	addu	$v1, $s2, $zero
.L801e5630:
	addu	$v1, $zero, $zero
.L801e5634:
	j	.L801e5644
	addu	$s2, $v1, $zero
.L801e563c:
	li	$s2,4096
	sw	$zero,8($a0)
.L801e5644:
	lw	$s5,8($a0)
	lw	$s8,12($a0)
	lw	$s4,2916($s6)
	lw	$s3,2908($s6)
	addiu	$s0,$s6,80
	beqz	$s5, .L801e5698
	sw	$zero,0($s0)
	li	$v1,4096
	beq	$s2, $v1, .L801e5698
	addu	$a0, $s0, $zero
	addu	$a1, $s5, $zero
	addu	$a2, $s8, $zero
	addu	$a3, $s4, $zero
	li	$v0,-1
	sw	$v0,20($sp)
	subu	$v0,$v1,$s2
	sw	$s3,16($sp)
	jal	0x8007dd2c
	sw	$v0,24($sp)
	j	.L801e56b0
	addiu	$s0,$s0,80
.L801e5698:
	addu	$a0, $s4, $zero
	addu	$a1, $s0, $zero
	li	$a2,-1
	jal	0x8007cf38
	addu	$a3, $s3, $zero
	addiu	$s0,$s0,80
.L801e56b0:
	addu	$s1, $zero, $zero
	li	$s7,4096
	subu	$t0,$s7,$s2
	sw	$t0,32($sp)
.L801e56c0:
	beqz	$s5, .L801e56f8
	sw	$zero,0($s0)
	beq	$s2, $s7, .L801e56f8
	addu	$a0, $s0, $zero
	addu	$a1, $s5, $zero
	addu	$a2, $s8, $zero
	lw	$t0,32($sp)
	addu	$a3, $s4, $zero
	sw	$s3,16($sp)
	sw	$s1,20($sp)
	jal	0x8007dd2c
	sw	$t0,24($sp)
	j	.L801e5718
	addiu	$s0,$s0,80
.L801e56f8:
	addu	$a0, $s4, $zero
	addu	$a1, $s0, $zero
	addu	$a2, $s1, $zero
	jal	0x8007cf38
	addu	$a3, $s3, $zero
	addu	$v1,$s6,$s1
	sb	$v0,2880($v1)
	addiu	$s0,$s0,80
.L801e5718:
	addiu	$s1,$s1,1
	slti	$v0,$s1,16
	bnez	$v0, .L801e56c0
	nop
	lw	$ra,76($sp)
	lw	$s8,72($sp)
	lw	$s7,68($sp)
	lw	$s6,64($sp)
	lw	$s5,60($sp)
	lw	$s4,56($sp)
	lw	$s3,52($sp)
	lw	$s2,48($sp)
	lw	$s1,44($sp)
	lw	$s0,40($sp)
	jr	$ra
	addiu	$sp,$sp,80

# ---------------------------------------------------------------------------
# FUN_801e5758 (0x801e5758 - 0x801e58dc) - 388 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e5758, "ax", @progbits
.globl FUN_801e5758
.type FUN_801e5758, @function
FUN_801e5758:
	addiu	$sp,$sp,-40
	sw	$s2,24($sp)
	addu	$s2, $a0, $zero
	sw	$s3,28($sp)
	addu	$s3, $a1, $zero
	sw	$s4,32($sp)
	addu	$s4, $a2, $zero
	sw	$ra,36($sp)
	sw	$s1,20($sp)
	sw	$s0,16($sp)
	sw	$s3,0($s2)
	lw	$v0,56($sp)
	nop
	beqz	$v0, .L801e579c
	addu	$s1, $a3, $zero
	j	.L801e57a0
	li	$v0,-2000
.L801e579c:
	li	$v0,-10000
.L801e57a0:
	sw	$v0,28($s2)
	sb	$zero,36($s2)
	sb	$zero,37($s2)
	sw	$zero,32($s2)
	sw	$s4,4($s2)
	sw	$zero,8($s2)
	sw	$zero,12($s2)
	sw	$zero,16($s2)
	sw	$zero,20($s2)
	sw	$zero,24($s2)
	lbu	$v0,5($s3)
	nop
	sb	$v0,38($s2)
	lbu	$v0,7($s3)
	nop
	sltiu	$v0,$v0,16
	bnez	$v0, .L801e57ec
	sb	$s1,5($s3)
	sb	$zero,7($s3)
.L801e57ec:
	li	$a0,16
	li	$v0,1
	sb	$v0,13($s3)
	li	$v0,250
	addiu	$s0,$s3,196
	addu	$a1, $zero, $zero
	jal	0x8007b778
	sh	$v0,14($s3)
	jal	0x800761c4
	li	$a0,1
	sll	$s1,$s1,0x18
	sra	$s1,$s1,0x18
	addu	$a0, $s1, $zero
	lw	$v0,12($s4)
	li	$v1,4096
	sw	$zero,2908($s0)
	sw	$v0,2916($s0)
	addiu	$v0,$s3,200
	sh	$v1,16($v0)
	sh	$v1,8($v0)
	sh	$v1,4($s0)
	sh	$zero,14($v0)
	sh	$zero,12($v0)
	sh	$zero,10($v0)
	sh	$zero,6($v0)
	sh	$zero,4($v0)
	sh	$zero,2($v0)
	sw	$zero,28($v0)
	sw	$zero,24($v0)
	jal	0x80049b30
	sw	$zero,24($s0)
	lui	$v1,0x801e
	addiu	$v1,$v1,27556
	sh	$v0,20($s0)
	sh	$v0,12($s0)
	sh	$v0,4($s0)
	sll	$v0,$s1,0x1
	addu	$v0,$v0,$s1
	sll	$v0,$v0,0x2
	addu	$v0,$v0,$v1
	lw	$v1,0($v0)
	nop
	sw	$v1,24($s0)
	lw	$v1,4($v0)
	lw	$a0,28($s2)
	nop
	addu	$v1,$v1,$a0
	sw	$v1,28($s0)
	lw	$v0,8($v0)
	nop
	sw	$v0,32($s0)
	sw	$zero,196($s3)
	lw	$ra,36($sp)
	lw	$s4,32($sp)
	lw	$s3,28($sp)
	lw	$s2,24($sp)
	lw	$s1,20($sp)
	lw	$s0,16($sp)
	jr	$ra
	addiu	$sp,$sp,40

# ---------------------------------------------------------------------------
# FUN_801e58dc (0x801e58dc - 0x801e5ae0) - 516 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e58dc, "ax", @progbits
.globl FUN_801e58dc
.type FUN_801e58dc, @function
FUN_801e58dc:
	addiu	$sp,$sp,-72
	sw	$s2,48($sp)
	addu	$s2, $a0, $zero
	sw	$ra,68($sp)
	sw	$s6,64($sp)
	sw	$s5,60($sp)
	sw	$s4,56($sp)
	sw	$s3,52($sp)
	sw	$s1,44($sp)
	sw	$s0,40($sp)
	lbu	$v0,28($s2)
	nop
	beqz	$v0, .L801e5ab8
	nop
	lbu	$v0,29($s2)
	nop
	beqz	$v0, .L801e59a4
	nop
	lw	$v0,4($s2)
	nop
	addiu	$v0,$v0,1
	jal	0x800497bc
	sw	$v0,4($s2)
	bnez	$v0, .L801e59a4
	li	$a0,19
	lui	$v0,0x801e
	addiu	$t0,$v0,27768
	li	$a3,2
	lui	$v0,0x801e
	addiu	$a2,$v0,27748
	li	$a1,1
	addu	$v1,$s2,$a0
.L801e595c:
	lw	$v0,4($s2)
	nop
	andi	$v0,$v0,0x10
	bnez	$v0, .L801e5988
	addu	$v0,$a0,$a2
	addu	$v0,$a0,$t0
	lbu	$v0,0($v0)
	nop
	sb	$v0,8($v1)
	j	.L801e5998
	sb	$a3,29($s2)
.L801e5988:
	lbu	$v0,0($v0)
	nop
	sb	$v0,8($v1)
	sb	$a1,29($s2)
.L801e5998:
	addiu	$a0,$a0,-1
	bgez	$a0, .L801e595c
	addiu	$v1,$v1,-1
.L801e59a4:
	lw	$v0,0($s2)
	li	$s0,18
	addiu	$s3,$v0,196
	jal	0x800497bc
	addiu	$s4,$v0,3144
	beqz	$v0, .L801e59c4
	nop
	li	$s0,5
.L801e59c4:
	blez	$s0, .L801e5a78
	sll	$v0,$s0,0x2
	lui	$s6,0x801e
	addiu	$s5,$sp,16
	addu	$v0,$v0,$s0
	sll	$v0,$v0,0x2
	addu	$s1,$v0,$s4
.L801e59e0:
	addu	$v0,$s5,$s0
	addiu	$t4,$s6,16436
	lwl	$t1,3($t4)
	lwr	$t1,0($t4)
	lwl	$t2,7($t4)
	lwr	$t2,4($t4)
	lwl	$t3,11($t4)
	lwr	$t3,8($t4)
	swl	$t1,19($sp)
	swr	$t1,16($sp)
	swl	$t2,23($sp)
	swr	$t2,20($sp)
	swl	$t3,27($sp)
	swr	$t3,24($sp)
	lwl	$t1,15($t4)
	lwr	$t1,12($t4)
	lwl	$t2,19($t4)
	lwr	$t2,16($t4)
	swl	$t1,31($sp)
	swr	$t1,28($sp)
	swl	$t2,35($sp)
	swr	$t2,32($sp)
	lbu	$v1,0($v0)
	nop
	sll	$v0,$v1,0x2
	addu	$v0,$v0,$v1
	sll	$v0,$v0,0x4
	addiu	$v0,$v0,160
	addu	$v1,$s2,$s0
	lbu	$v1,8($v1)
	nop
	beqz	$v1, .L801e5a6c
	addu	$a0,$s3,$v0
	jal	0x80056a08
	addu	$a1, $s1, $zero
.L801e5a6c:
	addiu	$s0,$s0,-1
	bgtz	$s0, .L801e59e0
	addiu	$s1,$s1,-20
.L801e5a78:
	jal	0x800497bc
	nop
	bnez	$v0, .L801e5aa0
	nop
	lbu	$v0,27($s2)
	nop
	beqz	$v0, .L801e5aa0
	addiu	$a0,$s3,480
	jal	0x80056a08
	addiu	$a1,$s4,380
.L801e5aa0:
	lbu	$v0,8($s2)
	nop
	beqz	$v0, .L801e5ab8
	addiu	$a0,$s3,160
	jal	0x80056a08
	addu	$a1, $s4, $zero
.L801e5ab8:
	lw	$ra,68($sp)
	lw	$s6,64($sp)
	lw	$s5,60($sp)
	lw	$s4,56($sp)
	lw	$s3,52($sp)
	lw	$s2,48($sp)
	lw	$s1,44($sp)
	lw	$s0,40($sp)
	jr	$ra
	addiu	$sp,$sp,72

# ---------------------------------------------------------------------------
# FUN_801e5ae0 (0x801e5ae0 - 0x801e5b88) - 168 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e5ae0, "ax", @progbits
.globl FUN_801e5ae0
.type FUN_801e5ae0, @function
FUN_801e5ae0:
	addiu	$sp,$sp,-24
	sw	$s0,16($sp)
	addu	$s0, $a1, $zero
	sw	$ra,20($sp)
	sw	$zero,4($a0)
	sw	$zero,8($a0)
	sw	$zero,12($a0)
	sw	$zero,20($a0)
	sw	$zero,24($a0)
	sw	$zero,28($a0)
	sw	$zero,40($a0)
	sw	$zero,44($a0)
	sw	$zero,48($a0)
	sw	$zero,56($a0)
	sw	$zero,60($a0)
	sw	$zero,64($a0)
	sw	$zero,36($a0)
	sw	$zero,72($a0)
	sw	$zero,76($a0)
	sw	$zero,80($a0)
	jal	0x800497bc
	sw	$s0,0($a0)
	bnez	$v0, .L801e5b44
	li	$v0,-150
	li	$v0,400
.L801e5b44:
	li	$v1,-1700
	sw	$v1,4($s0)
	li	$v1,10000
	sw	$v0,0($s0)
	sw	$v1,8($s0)
	sw	$v0,12($s0)
	li	$v0,-1000
	addu	$a0, $s0, $zero
	sw	$v0,16($s0)
	sw	$zero,20($s0)
	sw	$zero,24($s0)
	jal	0x800549b8
	sw	$zero,28($s0)
	lw	$ra,20($sp)
	lw	$s0,16($sp)
	jr	$ra
	addiu	$sp,$sp,24

# ---------------------------------------------------------------------------
# FUN_801e5b88 (0x801e5b88 - 0x801e5c98) - 272 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e5b88, "ax", @progbits
.globl FUN_801e5b88
.type FUN_801e5b88, @function
FUN_801e5b88:
	lw	$v1,0($a0)
	nop
	lw	$v0,0($v1)
	nop
	sw	$v0,40($a0)
	lw	$v0,4($v1)
	nop
	sw	$v0,44($a0)
	lw	$v0,8($v1)
	nop
	sw	$v0,48($a0)
	lw	$v0,12($v1)
	nop
	sw	$v0,56($a0)
	lw	$v0,16($v1)
	nop
	sw	$v0,60($a0)
	lw	$v0,20($v1)
	nop
	sw	$v0,64($a0)
	lw	$v0,24($v1)
	nop
	sw	$v0,72($a0)
	lw	$t0,16($sp)
	beqz	$a1, .L801e5c14
	nop
	lw	$v0,0($a1)
	nop
	sw	$v0,4($a0)
	lw	$v0,4($a1)
	nop
	sw	$v0,8($a0)
	lw	$v0,8($a1)
	j	.L801e5c38
	sw	$v0,12($a0)
.L801e5c14:
	lw	$v0,0($v1)
	nop
	sw	$v0,4($a0)
	lw	$v0,4($v1)
	nop
	sw	$v0,8($a0)
	lw	$v0,8($v1)
	nop
	sw	$v0,12($a0)
.L801e5c38:
	beqz	$a2, .L801e5c64
	nop
	lw	$v0,0($a2)
	nop
	sw	$v0,20($a0)
	lw	$v0,4($a2)
	nop
	sw	$v0,24($a0)
	lw	$v0,8($a2)
	j	.L801e5c88
	sw	$v0,28($a0)
.L801e5c64:
	lw	$v0,12($v1)
	nop
	sw	$v0,20($a0)
	lw	$v0,16($v1)
	nop
	sw	$v0,24($a0)
	lw	$v0,20($v1)
	nop
	sw	$v0,28($a0)
.L801e5c88:
	sw	$a3,36($a0)
	sw	$t0,76($a0)
	jr	$ra
	sw	$t0,80($a0)

# ---------------------------------------------------------------------------
# FUN_801e5c98 (0x801e5c98 - 0x801e5ca0) - 8 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e5c98, "ax", @progbits
.globl FUN_801e5c98
.type FUN_801e5c98, @function
FUN_801e5c98:
	jr	$ra
	nop

# ---------------------------------------------------------------------------
# FUN_801e5ca0 (0x801e5ca0 - 0x801e5cb8) - 24 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e5ca0, "ax", @progbits
.globl FUN_801e5ca0
.type FUN_801e5ca0, @function
FUN_801e5ca0:
	sll	$v0,$a1,0x5
	addu	$v0,$v0,$a1
	sll	$v0,$v0,0x2
	addu	$a0,$a0,$v0
	jr	$ra
	sb	$a2,128($a0)

# ---------------------------------------------------------------------------
# FUN_801e5cb8 (0x801e5cb8 - 0x801e5cd8) - 32 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e5cb8, "ax", @progbits
.globl FUN_801e5cb8
.type FUN_801e5cb8, @function
FUN_801e5cb8:
	li	$v0,8
	addiu	$a0,$a0,1056
.L801e5cc0:
	sb	$zero,128($a0)
	addiu	$v0,$v0,-1
	bgez	$v0, .L801e5cc0
	addiu	$a0,$a0,-132
	jr	$ra
	nop

# ---------------------------------------------------------------------------
# FUN_801e5cd8 (0x801e5cd8 - 0x801e5d34) - 92 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e5cd8, "ax", @progbits
.globl FUN_801e5cd8
.type FUN_801e5cd8, @function
FUN_801e5cd8:
	addiu	$sp,$sp,-32
	sw	$s1,20($sp)
	addu	$s1, $zero, $zero
	sw	$s0,16($sp)
	addu	$s0, $a0, $zero
	sw	$ra,24($sp)
.L801e5cf0:
	lbu	$v0,128($s0)
	nop
	beqz	$v0, .L801e5d10
	nop
	lw	$v0,0($s0)
	nop
	jalr	$v0
	addu	$a0, $s0, $zero
.L801e5d10:
	addiu	$s1,$s1,1
	slti	$v0,$s1,9
	bnez	$v0, .L801e5cf0
	addiu	$s0,$s0,132
	lw	$ra,24($sp)
	lw	$s1,20($sp)
	lw	$s0,16($sp)
	jr	$ra
	addiu	$sp,$sp,32

# ---------------------------------------------------------------------------
# FUN_801e5d34 (0x801e5d34 - 0x801e5d3c) - 8 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e5d34, "ax", @progbits
.globl FUN_801e5d34
.type FUN_801e5d34, @function
FUN_801e5d34:
	jr	$ra
	nop

# ---------------------------------------------------------------------------
# FUN_801e5d3c (0x801e5d3c - 0x801e5d44) - 8 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e5d3c, "ax", @progbits
.globl FUN_801e5d3c
.type FUN_801e5d3c, @function
FUN_801e5d3c:
	jr	$ra
	sb	$a1,4($a0)

# ---------------------------------------------------------------------------
# FUN_801e5d44 (0x801e5d44 - 0x801e5d4c) - 8 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e5d44, "ax", @progbits
.globl FUN_801e5d44
.type FUN_801e5d44, @function
FUN_801e5d44:
	jr	$ra
	sb	$a1,5($a0)

# ---------------------------------------------------------------------------
# FUN_801e5d4c (0x801e5d4c - 0x801e5d74) - 40 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e5d4c, "ax", @progbits
.globl FUN_801e5d4c
.type FUN_801e5d4c, @function
FUN_801e5d4c:
	addiu	$sp,$sp,-24
	sw	$ra,16($sp)
	jal	0x8005b0b0
	nop
	jal	0x8005f2e4
	nop
	lw	$ra,16($sp)
	nop
	jr	$ra
	addiu	$sp,$sp,24

# ---------------------------------------------------------------------------
# FUN_801e5d74 (0x801e5d74 - 0x801e5e6c) - 248 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e5d74, "ax", @progbits
.globl FUN_801e5d74
.type FUN_801e5d74, @function
FUN_801e5d74:
	addiu	$sp,$sp,-32
	sw	$s1,20($sp)
	addu	$s1, $a0, $zero
	sw	$ra,24($sp)
	sw	$s0,16($sp)
	lbu	$v0,36($s1)
	nop
	beqz	$v0, .L801e5e58
	nop
	lw	$v0,0($s1)
	lw	$v1,32($s1)
	nop
	bltz	$v1, .L801e5e00
	addiu	$s0,$v0,196
	lbu	$v0,37($s1)
	nop
	bnez	$v0, .L801e5dd0
	nop
	lw	$v0,2908($s0)
	lw	$v1,16($s1)
	nop
	addu	$v0,$v0,$v1
	sw	$v0,2908($s0)
.L801e5dd0:
	lw	$v0,2916($s0)
	nop
	lhu	$v1,6($v0)
	lw	$v0,2908($s0)
	nop
	slt	$v0,$v0,$v1
	bnez	$v0, .L801e5df8
	nop
	sw	$zero,2908($s0)
	sw	$zero,20($s1)
.L801e5df8:
	jal	FUN_801e55b8
	addu	$a0, $s1, $zero
.L801e5e00:
	lw	$v0,28($s1)
	nop
	bgez	$v0, .L801e5e50
	addiu	$v0,$v0,500
	blez	$v0, .L801e5e1c
	sw	$v0,28($s1)
	sw	$zero,28($s1)
.L801e5e1c:
	lw	$v0,0($s1)
	lui	$v1,0x801e
	lb	$a0,5($v0)
	addiu	$v1,$v1,27556
	sll	$v0,$a0,0x1
	addu	$v0,$v0,$a0
	sll	$v0,$v0,0x2
	addu	$v0,$v0,$v1
	lw	$v0,4($v0)
	lw	$v1,28($s1)
	sw	$zero,0($s0)
	addu	$v0,$v0,$v1
	sw	$v0,28($s0)
.L801e5e50:
	jal	0x80056148
	li	$a0,1
.L801e5e58:
	lw	$ra,24($sp)
	lw	$s1,20($sp)
	lw	$s0,16($sp)
	jr	$ra
	addiu	$sp,$sp,32

# ---------------------------------------------------------------------------
# FUN_801e5e6c (0x801e5e6c - 0x801e5e74) - 8 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e5e6c, "ax", @progbits
.globl FUN_801e5e6c
.type FUN_801e5e6c, @function
FUN_801e5e6c:
	jr	$ra
	sb	$a1,36($a0)

# ---------------------------------------------------------------------------
# FUN_801e5e74 (0x801e5e74 - 0x801e5ec8) - 84 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e5e74, "ax", @progbits
.globl FUN_801e5e74
.type FUN_801e5e74, @function
FUN_801e5e74:
	lw	$v0,32($a0)
	lw	$v1,4($a0)
	sll	$v0,$v0,0x3
	addu	$v1,$v1,$v0
	lw	$v0,12($v1)
	lw	$v1,0($a0)
	nop
	addiu	$a2,$v1,196
	sw	$v0,8($a0)
	lw	$v0,2908($a2)
	sw	$a1,32($a0)
	bltz	$a1, .L801e5ec0
	sw	$v0,12($a0)
	lw	$v0,4($a0)
	sll	$v1,$a1,0x3
	addu	$v0,$v0,$v1
	lw	$v0,12($v0)
	sw	$zero,2908($a2)
	sw	$v0,2916($a2)
.L801e5ec0:
	jr	$ra
	nop

# ---------------------------------------------------------------------------
# FUN_801e5ec8 (0x801e5ec8 - 0x801e5ed0) - 8 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e5ec8, "ax", @progbits
.globl FUN_801e5ec8
.type FUN_801e5ec8, @function
FUN_801e5ec8:
	jr	$ra
	sb	$a1,37($a0)

# ---------------------------------------------------------------------------
# FUN_801e5ed0 (0x801e5ed0 - 0x801e5f08) - 56 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e5ed0, "ax", @progbits
.globl FUN_801e5ed0
.type FUN_801e5ed0, @function
FUN_801e5ed0:
	lw	$v1,0($a0)
	lbu	$v0,38($a0)
	nop
	sb	$v0,5($v1)
	lw	$v1,0($a0)
	nop
	lw	$v0,3140($v1)
	nop
	lw	$v0,12($v0)
	nop
	sw	$v0,3112($v1)
	lw	$v0,0($a0)
	jr	$ra
	sw	$zero,3104($v0)

# ---------------------------------------------------------------------------
# FUN_801e5f08 (0x801e5f08 - 0x801e5fa8) - 160 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e5f08, "ax", @progbits
.globl FUN_801e5f08
.type FUN_801e5f08, @function
FUN_801e5f08:
	addiu	$sp,$sp,-32
	sw	$s1,20($sp)
	addu	$s1, $a0, $zero
	sw	$s0,16($sp)
	addu	$s0, $a1, $zero
	li	$a0,18
	sw	$ra,24($sp)
	sw	$s0,0($s1)
	sw	$zero,4($s1)
	sb	$zero,28($s1)
	sb	$zero,29($s1)
	lbu	$v0,5($s0)
	addu	$a1, $zero, $zero
	sb	$v0,30($s1)
	li	$v0,-1
	sb	$v0,5($s0)
	jal	0x8007b778
	sb	$zero,13($s0)
	addu	$a0, $zero, $zero
	lui	$v0,0x801e
	addiu	$a1,$v0,27748
	addiu	$v1,$s0,196
	li	$v0,400
	sw	$v0,24($v1)
	li	$v0,820
	sw	$v0,32($v1)
	sw	$zero,196($s0)
.L801e5f74:
	addu	$v1,$s1,$a0
	addu	$v0,$a0,$a1
	lbu	$v0,0($v0)
	addiu	$a0,$a0,1
	sb	$v0,8($v1)
	slti	$v0,$a0,20
	bnez	$v0, .L801e5f74
	nop
	lw	$ra,24($sp)
	lw	$s1,20($sp)
	lw	$s0,16($sp)
	jr	$ra
	addiu	$sp,$sp,32

# ---------------------------------------------------------------------------
# FUN_801e5fa8 (0x801e5fa8 - 0x801e5fb0) - 8 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e5fa8, "ax", @progbits
.globl FUN_801e5fa8
.type FUN_801e5fa8, @function
FUN_801e5fa8:
	jr	$ra
	sb	$a1,28($a0)

# ---------------------------------------------------------------------------
# FUN_801e5fb0 (0x801e5fb0 - 0x801e5fe8) - 56 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e5fb0, "ax", @progbits
.globl FUN_801e5fb0
.type FUN_801e5fb0, @function
FUN_801e5fb0:
	sb	$a1,29($a0)
	andi	$a1,$a1,0xff
	bnez	$a1, .L801e5fe0
	li	$a1,19
	lui	$v0,0x801e
	addiu	$a2,$v0,27748
.L801e5fc8:
	addu	$v0,$a0,$a1
	addu	$v1,$a1,$a2
	lbu	$v1,0($v1)
	addiu	$a1,$a1,-1
	bgez	$a1, .L801e5fc8
	sb	$v1,8($v0)
.L801e5fe0:
	jr	$ra
	nop

# ---------------------------------------------------------------------------
# FUN_801e5fe8 (0x801e5fe8 - 0x801e600c) - 36 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e5fe8, "ax", @progbits
.globl FUN_801e5fe8
.type FUN_801e5fe8, @function
FUN_801e5fe8:
	li	$v1,10
	addu	$v0,$a0,$v1
.L801e5ff0:
	sb	$a1,8($v0)
	addiu	$v1,$v1,1
	slti	$v0,$v1,20
	bnez	$v0, .L801e5ff0
	addu	$v0,$a0,$v1
	jr	$ra
	nop

# ---------------------------------------------------------------------------
# FUN_801e600c (0x801e600c - 0x801e601c) - 16 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e600c, "ax", @progbits
.globl FUN_801e600c
.type FUN_801e600c, @function
FUN_801e600c:
	lw	$v1,0($a0)
	lbu	$v0,30($a0)
	jr	$ra
	sb	$v0,5($v1)

# ---------------------------------------------------------------------------
# FUN_801e601c (0x801e601c - 0x801e6084) - 104 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e601c, "ax", @progbits
.globl FUN_801e601c
.type FUN_801e601c, @function
FUN_801e601c:
	addiu	$sp,$sp,-24
	sw	$s0,16($sp)
	sw	$ra,20($sp)
	jal	0x80098880
	addu	$s0, $a1, $zero
	li	$a0,255
	lh	$a1,10($v0)
	lh	$v1,2($v0)
	srav	$a0,$a0,$a1
	and	$v1,$v1,$a0
	sw	$v1,0($s0)
	lh	$a0,6($v0)
	nop
	addu	$v1,$v1,$a0
	sw	$v1,8($s0)
	lbu	$v1,4($v0)
	nop
	sw	$v1,4($s0)
	lh	$v0,8($v0)
	nop
	addu	$v1,$v1,$v0
	sw	$v1,12($s0)
	lw	$ra,20($sp)
	lw	$s0,16($sp)
	jr	$ra
	addiu	$sp,$sp,24

# ---------------------------------------------------------------------------
# FUN_801e6084 (0x801e6084 - 0x801e6188) - 260 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e6084, "ax", @progbits
.globl FUN_801e6084
.type FUN_801e6084, @function
FUN_801e6084:
	addiu	$sp,$sp,-32
	addu	$a1, $a0, $zero
	sw	$ra,24($sp)
	sw	$s1,20($sp)
	sw	$s0,16($sp)
	lw	$v0,0($a1)
	nop
	beqz	$v0, .L801e6128
	addiu	$a0,$a0,25
.L801e60a8:
	lw	$v1,0($a1)
	lw	$v0,-21($a0)
	nop
	sw	$v0,0($v1)
	lw	$v1,0($a1)
	lw	$v0,-17($a0)
	nop
	sw	$v0,4($v1)
	lw	$v1,0($a1)
	lw	$v0,-13($a0)
	nop
	sw	$v0,8($v1)
	lw	$v1,0($a1)
	lw	$v0,-9($a0)
	nop
	sw	$v0,12($v1)
	lw	$v1,0($a1)
	lw	$v0,-5($a0)
	nop
	sw	$v0,16($v1)
	lw	$v1,0($a1)
	lbu	$v0,-1($a0)
	nop
	sb	$v0,20($v1)
	lw	$v1,0($a1)
	lbu	$v0,0($a0)
	addiu	$a1,$a1,28
	sb	$v0,21($v1)
	lw	$v0,0($a1)
	nop
	bnez	$v0, .L801e60a8
	addiu	$a0,$a0,28
.L801e6128:
	li	$a0,115
	lui	$s0,0x801e
	addiu	$s0,$s0,28204
	jal	FUN_801e601c
	addu	$a1, $s0, $zero
	li	$a0,115
	lui	$s1,0x801e
	addiu	$s1,$s1,28220
	lw	$v0,4($s0)
	addu	$a1, $s1, $zero
	addiu	$v1,$v0,48
	addiu	$v0,$v0,120
	sw	$v1,4($s0)
	jal	FUN_801e601c
	sw	$v0,12($s0)
	lw	$v0,4($s1)
	nop
	addiu	$v0,$v0,48
	sw	$v0,12($s1)
	lw	$ra,24($sp)
	lw	$s1,20($sp)
	lw	$s0,16($sp)
	jr	$ra
	addiu	$sp,$sp,32

# ---------------------------------------------------------------------------
# FUN_801e6188 (0x801e6188 - 0x801e61b4) - 44 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e6188, "ax", @progbits
.globl FUN_801e6188
.type FUN_801e6188, @function
FUN_801e6188:
	lui	$v0,0x801e
	sw	$zero,28236($v0)
	lui	$v0,0x801e
	li	$v1,32
	sw	$v1,28240($v0)
	lui	$v0,0x801e
	sw	$v1,28076($v0)
	lui	$v1,0x801e
	li	$v0,-72
	jr	$ra
	sw	$v0,28244($v1)

# ---------------------------------------------------------------------------
# FUN_801e61b4 (0x801e61b4 - 0x801e61e0) - 44 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e61b4, "ax", @progbits
.globl FUN_801e61b4
.type FUN_801e61b4, @function
FUN_801e61b4:
	lui	$v0,0x801e
	sw	$zero,28236($v0)
	lui	$v0,0x801e
	li	$v1,64
	sw	$v1,28240($v0)
	lui	$v0,0x801e
	sw	$v1,28076($v0)
	lui	$v1,0x801e
	li	$v0,-72
	jr	$ra
	sw	$v0,28244($v1)

# ---------------------------------------------------------------------------
# FUN_801e61e0 (0x801e61e0 - 0x801e620c) - 44 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e61e0, "ax", @progbits
.globl FUN_801e61e0
.type FUN_801e61e0, @function
FUN_801e61e0:
	lui	$v0,0x801e
	sw	$zero,28236($v0)
	lui	$v0,0x801e
	li	$v1,96
	sw	$v1,28240($v0)
	lui	$v0,0x801e
	sw	$v1,28076($v0)
	lui	$v1,0x801e
	li	$v0,-72
	jr	$ra
	sw	$v0,28244($v1)

# ---------------------------------------------------------------------------
# FUN_801e620c (0x801e620c - 0x801e6270) - 100 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e620c, "ax", @progbits
.globl FUN_801e620c
.type FUN_801e620c, @function
FUN_801e620c:
	lui	$v0,0x800f
	lw	$v0,10492($v0)
	addiu	$sp,$sp,-32
	sw	$ra,24($sp)
	sra	$v1,$v0,0x1
	bgez	$v1, .L801e622c
	addu	$v0, $v1, $zero
	addiu	$v0,$v1,63
.L801e622c:
	sra	$v0,$v0,0x6
	sll	$v0,$v0,0x6
	subu	$v0,$v1,$v0
	li	$a3,64
	subu	$a3,$a3,$v0
	lui	$v0,0x801e
	addiu	$v0,$v0,16396
	addu	$a0, $zero, $zero
	li	$a1,255
	li	$a2,128
	sw	$a3,16($sp)
	jal	0x8005ebb4
	sw	$v0,20($sp)
	lw	$ra,24($sp)
	nop
	jr	$ra
	addiu	$sp,$sp,32

# ---------------------------------------------------------------------------
# FUN_801e6270 (0x801e6270 - 0x801e6320) - 176 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e6270, "ax", @progbits
.globl FUN_801e6270
.type FUN_801e6270, @function
FUN_801e6270:
	addiu	$sp,$sp,-24
	addu	$a3, $a0, $zero
	sw	$ra,16($sp)
	lw	$v0,124($a3)
	nop
	addiu	$v1,$v0,1
	slti	$v0,$v1,25
	beqz	$v0, .L801e62bc
	sw	$v1,124($a3)
	li	$v0,24
	subu	$a0,$v0,$v1
	lui	$v1,0x801e
	addiu	$v1,$v1,27788
	addiu	$v0,$a0,-60
	sll	$a0,$a0,0x1
	sw	$v0,4($v1)
	li	$v0,48
	subu	$v0,$v0,$a0
	sw	$v0,12($v1)
.L801e62bc:
	lw	$v1,124($a3)
	nop
	slti	$v0,$v1,96
	bnez	$v0, .L801e6300
	lui	$a2,0x801e
	addiu	$a0,$v1,-96
	lui	$v0,0x801e
	addiu	$a1,$v0,27788
	addiu	$v0,$v1,-156
	sll	$v1,$a0,0x1
	sw	$v0,4($a1)
	li	$v0,48
	subu	$v0,$v0,$v1
	bgez	$v0, .L801e6300
	sw	$v0,12($a1)
	sw	$zero,12($a1)
	lui	$a2,0x801e
.L801e6300:
	addiu	$a0,$a3,4
	li	$a1,117
	jal	FUN_801e4978
	addiu	$a2,$a2,27788
	lw	$ra,16($sp)
	nop
	jr	$ra
	addiu	$sp,$sp,24

# ---------------------------------------------------------------------------
# FUN_801e6320 (0x801e6320 - 0x801e634c) - 44 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e6320, "ax", @progbits
.globl FUN_801e6320
.type FUN_801e6320, @function
FUN_801e6320:
	addiu	$sp,$sp,-24
	lui	$a2,0x801e
	addiu	$a0,$a0,4
	li	$a1,127
	sw	$ra,16($sp)
	jal	FUN_801e4978
	addiu	$a2,$a2,27820
	lw	$ra,16($sp)
	nop
	jr	$ra
	addiu	$sp,$sp,24

# ---------------------------------------------------------------------------
# FUN_801e634c (0x801e634c - 0x801e6408) - 188 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e634c, "ax", @progbits
.globl FUN_801e634c
.type FUN_801e634c, @function
FUN_801e634c:
	addiu	$sp,$sp,-24
	addu	$a3, $a0, $zero
	sw	$ra,16($sp)
	lw	$v0,124($a3)
	nop
	addiu	$v1,$v0,1
	slti	$v0,$v1,25
	beqz	$v0, .L801e63a4
	sw	$v1,124($a3)
	li	$v0,24
	subu	$v0,$v0,$v1
	sll	$v1,$v0,0x2
	addu	$a0,$v1,$v0
	lui	$v1,0x801e
	li	$v0,-120
	subu	$v0,$v0,$a0
	sw	$v0,27852($v1)
	addiu	$v1,$v1,27852
	sll	$a0,$a0,0x1
	li	$v0,240
	subu	$v0,$v0,$a0
	sw	$v0,8($v1)
.L801e63a4:
	lw	$v1,124($a3)
	nop
	slti	$v0,$v1,164
	bnez	$v0, .L801e63e8
	lui	$a2,0x801e
	addiu	$a0,$v1,-164
	lui	$v0,0x801e
	addiu	$a1,$v0,27852
	addiu	$v0,$v1,-224
	sll	$v1,$a0,0x1
	sw	$v0,4($a1)
	li	$v0,32
	subu	$v0,$v0,$v1
	bgez	$v0, .L801e63e8
	sw	$v0,12($a1)
	sw	$zero,12($a1)
	lui	$a2,0x801e
.L801e63e8:
	addiu	$a0,$a3,4
	li	$a1,113
	jal	FUN_801e4978
	addiu	$a2,$a2,27852
	lw	$ra,16($sp)
	nop
	jr	$ra
	addiu	$sp,$sp,24

# ---------------------------------------------------------------------------
# FUN_801e6408 (0x801e6408 - 0x801e64d4) - 204 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e6408, "ax", @progbits
.globl FUN_801e6408
.type FUN_801e6408, @function
FUN_801e6408:
	addiu	$sp,$sp,-24
	sw	$s0,16($sp)
	addu	$s0, $a0, $zero
	addiu	$a0,$s0,4
	li	$a1,116
	lui	$a2,0x801e
	sw	$ra,20($sp)
	jal	FUN_801e4978
	addiu	$a2,$a2,28012
	addiu	$a0,$s0,44
	li	$a1,57
	lui	$a2,0x801e
	jal	FUN_801e4978
	addiu	$a2,$a2,28044
	lui	$a0,0x801e
	lbu	$v0,27092($a0)
	nop
	addiu	$v1,$v0,1
	addiu	$v0,$v0,-7
	andi	$v0,$v0,0xff
	sltiu	$v0,$v0,7
	beqz	$v0, .L801e6478
	sb	$v1,27092($a0)
	lui	$v1,0x801e
	addiu	$v1,$v1,28108
	lw	$v0,4($v1)
	j	.L801e64ac
	addiu	$v0,$v0,1
.L801e6478:
	andi	$v1,$v1,0xff
	li	$v0,15
	bne	$v1, $v0, .L801e649c
	lui	$v1,0x801e
	addiu	$v1,$v1,28108
	lw	$v0,4($v1)
	sb	$zero,27092($a0)
	j	.L801e64ac
	addiu	$v0,$v0,1
.L801e649c:
	addiu	$v1,$v1,28108
	lw	$v0,4($v1)
	nop
	addiu	$v0,$v0,-1
.L801e64ac:
	sw	$v0,4($v1)
	addiu	$a0,$s0,84
	li	$a1,59
	lui	$a2,0x801e
	jal	FUN_801e4978
	addiu	$a2,$a2,28108
	lw	$ra,20($sp)
	lw	$s0,16($sp)
	jr	$ra
	addiu	$sp,$sp,24

# ---------------------------------------------------------------------------
# FUN_801e64d4 (0x801e64d4 - 0x801e64dc) - 8 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e64d4, "ax", @progbits
.globl FUN_801e64d4
.type FUN_801e64d4, @function
FUN_801e64d4:
	jr	$ra
	nop

# ---------------------------------------------------------------------------
# FUN_801e64dc (0x801e64dc - 0x801e64e4) - 8 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_801e64dc, "ax", @progbits
.globl FUN_801e64dc
.type FUN_801e64dc, @function
FUN_801e64dc:
	jr	$ra
	nop
