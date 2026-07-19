# DDR 5th Mix Screen-Selector Module Assembly Source
# Reconstructs all unique functions of the screen selector hierarchy.

.set noreorder
.set noat

# ---------------------------------------------------------------------------
# 1. FUN_80075258 (Exit State 0) - 604 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_80075258, "ax", @progbits
.globl FUN_80075258
.type FUN_80075258, @function
FUN_80075258:
	addiu	$sp, $sp, -24
	sw	$ra, 16($sp)
	addu	$a1, $zero, $zero
	li	$a3, 2
	li	$a2, 4
	lui	$v0, 0x800f
	addiu	$v1, $v0, 10504
.L80075274:
	lb	$v0, 36($v1)
	nop
	bne	$v0, $a3, .L80075288
	li	$v0, 0x9284
	sb	$a2, 36($v1)
.L80075288:
	addu	$v1, $v1, $v0
	addiu	$a1, $a1, 1
	slti	$v0, $a1, 2
	bnez	$v0, .L80075274
	nop
	jal	FUN_80090820
	addiu	$a0, $a0, 8
	lui	$v0, 0x800f
	addiu	$v1, $v0, 10504
	lb	$v0, 36($v1)
	li	$a1, 2
	beq	$v0, $a1, .L80075320
	li	$a0, 4
	beq	$v0, $a0, .L80075320
	li	$v0, 0x8000
	addu	$a2, $v1, $v0
	lb	$v0, 4776($a2)
	nop
	beq	$v0, $a1, .L80075318
	nop
	beq	$v0, $a0, .L80075318
	nop
	lbu	$v0, 146($v1)
	li	$v1, 7
	beq	$v0, $v1, .L800752f8
	nop
	bnez	$v0, .L80075324
	addu	$a1, $zero, $zero
.L800752f8:
	lbu	$v0, 4886($a2)
	nop
	beq	$v0, $v1, .L80075324
	li	$a1, -1
	bnez	$v0, .L80075324
	addu	$a1, $zero, $zero
	j	.L80075324
	li	$a1, -1
.L80075318:
	j	.L80075324
	li	$a1, 1
.L80075320:
	addu	$a1, $zero, $zero
.L80075324:
	lui	$v0, 0x800f
	addiu	$a0, $v0, 10504
	sll	$v0, $a1, 3
	addu	$v0, $v0, $a1
	sll	$v0, $v0, 3
	addu	$v0, $v0, $a1
	sll	$v0, $v0, 2
	addu	$v0, $v0, $a1
	sll	$v0, $v0, 5
	addu	$v0, $v0, $a1
	sll	$v0, $v0, 2
	lbu	$v1, 24($a0)
	addu	$v0, $v0, $a0
	sb	$v1, 146($v0)
	lb	$a2, 24($a0)
	li	$v0, 2
	beq	$a2, $v0, .L8007541c
	slti	$v0, $a2, 3
	beqz	$v0, .L80075384
	li	$v0, 1
	beq	$a2, $v0, .L800753a0
	subu	$v1, $a2, $a1
	j	.L800754a4
	nop
.L80075384:
	li	$v0, 5
	beq	$a2, $v0, .L800753d4
	li	$v0, 10
	beq	$a2, $v0, .L8007546c
	li	$v0, 1
	j	.L800754a4
	nop
.L800753a0:
	sll	$v0, $v1, 3
	addu	$v0, $v0, $v1
	sll	$v0, $v0, 3
	addu	$v0, $v0, $v1
	sll	$v0, $v0, 2
	addu	$v0, $v0, $v1
	sll	$v0, $v0, 5
	addu	$v0, $v0, $v1
	sll	$v0, $v0, 2
	addu	$v0, $v0, $a0
	sb	$zero, 146($v0)
	j	.L800754a4
	sb	$zero, 36($v0)
.L800753d4:
	li	$v1, 1
	subu	$v1, $v1, $a1
	sll	$v0, $v1, 3
	addu	$v0, $v0, $v1
	sll	$v0, $v0, 3
	addu	$v0, $v0, $v1
	sll	$v0, $v0, 2
	addu	$v0, $v0, $v1
	sll	$v0, $v0, 5
	addu	$v0, $v0, $v1
	sll	$v0, $v0, 2
	addu	$a0, $v0, $a0
	lb	$v1, 36($a0)
	li	$v0, 3
	beq	$v1, $v0, .L800754a4
	sb	$a2, 146($a0)
	j	.L800754a4
	sb	$a2, 36($a0)
.L8007541c:
	li	$v1, 1
	subu	$v1, $v1, $a1
	sll	$v0, $v1, 3
	addu	$v0, $v0, $v1
	sll	$v0, $v0, 3
	addu	$v0, $v0, $v1
	sll	$v0, $v0, 2
	addu	$v0, $v0, $v1
	sll	$v0, $v0, 5
	addu	$v0, $v0, $v1
	sll	$v0, $v0, 2
	addu	$a0, $v0, $a0
	lb	$v1, 36($a0)
	li	$v0, 7
	sb	$v0, 146($a0)
	li	$v0, 3
	beq	$v1, $v0, .L800754a4
	li	$v0, 5
	j	.L800754a4
	sb	$v0, 36($a0)
.L8007546c:
	subu	$v0, $v0, $a1
	sll	$v1, $v0, 3
	addu	$v1, $v1, $v0
	sll	$v1, $v1, 3
	addu	$v1, $v1, $v0
	sll	$v1, $v1, 2
	addu	$v1, $v1, $v0
	sll	$v1, $v1, 5
	addu	$v1, $v1, $v0
	sll	$v1, $v1, 2
	addu	$v1, $v1, $a0
	li	$v0, 7
	sb	$v0, 146($v1)
	sb	$zero, 36($v1)
.L800754a4:
	lw	$ra, 16($sp)
	nop
	jr	$ra
	addiu	$sp, $sp, 24

# ---------------------------------------------------------------------------
# 2. FUN_800754b4 (Enter State 3: MUSIC SEL) - 204 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_800754b4, "ax", @progbits
.globl FUN_800754b4
.type FUN_800754b4, @function
FUN_800754b4:
	addiu	$sp, $sp, -24
	sw	$s0, 16($sp)
	addu	$s0, $a0, $zero
	addu	$a1, $zero, $zero
	li	$a2, -1
	lui	$v0, 0x800f
	addiu	$a0, $v0, 10504
	lui	$v1, 0x800f
	sw	$zero, 10492($v1)
	li	$v1, 12
	sw	$ra, 20($sp)
	sh	$v1, 10504($v0)
	li	$v0, 0x9284
.L800754e8:
	sb	$zero, 147($a0)
	sb	$zero, 148($a0)
	sh	$a2, 150($a0)
	addu	$a0, $a0, $v0
	addiu	$a1, $a1, 1
	slti	$v0, $a1, 2
	bnez	$v0, .L800754e8
	li	$v0, 0x9284
	jal	FUN_8002a8b0
	addu	$a0, $zero, $zero
	jal	FUN_8008c964
	addiu	$a0, $s0, 8
	jal	FUN_80096558
	nop
	jal	FUN_80028358
	li	$a0, 831
	li	$a0, 10
	jal	FUN_8007b778
	li	$a1, 17
	lui	$v1, 0x800e
	li	$v0, 1
	sb	$v0, 15307($v1)
.L80075540:
	jal	FUN_8007638c
	nop
	beqz	$v0, .L80075560
	nop
	jal	FUN_80095cf8
	nop
	bnez	$v0, .L80075570
	nop
.L80075560:
	jal	FUN_800358f8
	addu	$a0, $zero, $zero
	j	.L80075540
	nop
.L80075570:
	lw	$ra, 20($sp)
	lw	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 24

# ---------------------------------------------------------------------------
# 3. FUN_80075580 - 132 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_80075580, "ax", @progbits
.globl FUN_80075580
.type FUN_80075580, @function
FUN_80075580:
	addiu	$sp, $sp, -24
	lui	$v0, 0x800f
	addiu	$v1, $v0, 10504
	sw	$ra, 16($sp)
	sw	$zero, 4($a0)
	lh	$v0, 12($v1)
	nop
	bgtz	$v0, .L800755b8
	nop
	lb	$v0, 23($v1)
	nop
	slti	$v0, $v0, 2
	bnez	$v0, .L800755d0
	nop
.L800755b8:
	lb	$v1, 20($v1)
	li	$v0, 1
	bne	$v1, $v0, .L800755d4
	lui	$v1, 0x800e
	li	$v0, 3
	sw	$v0, 4($a0)
.L800755d0:
	lui	$v1, 0x800e
.L800755d4:
	lw	$a1, 4($a0)
	addiu	$v1, $v1, -4120
	sll	$v0, $a1, 2
	addu	$v0, $v0, $v1
	lw	$v0, 0($v0)
	nop
	jalr	$v0
	nop
	lw	$ra, 16($sp)
	nop
	jr	$ra
	addiu	$sp, $sp, 24

# ---------------------------------------------------------------------------
# 4. FUN_80075604 - 168 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_80075604, "ax", @progbits
.globl FUN_80075604
.type FUN_80075604, @function
FUN_80075604:
	addiu	$sp, $sp, -32
	sw	$s1, 20($sp)
	addu	$s1, $a0, $zero
	lui	$v0, 0x800e
	sw	$ra, 28($sp)
	sw	$s2, 24($sp)
	sw	$s0, 16($sp)
	lw	$v1, 4($s1)
	addiu	$s2, $v0, -4120
	sll	$v1, $v1, 2
	addu	$v1, $v1, $s2
	lw	$v0, 24($v1)
	nop
	jalr	$v0
	nop
	lw	$v1, 4($s1)
	addu	$s0, $v0, $zero
	beq	$s0, $v1, .L80075688
	sll	$v0, $v1, 2
	addu	$a0, $s1, $zero
	addu	$v0, $v0, $s2
	lw	$v0, 48($v0)
	nop
	jalr	$v0
	addu	$a1, $s0, $zero
	sll	$v0, $s0, 2
	addu	$v0, $v0, $s2
	lw	$a1, 4($s1)
	lw	$v0, 0($v0)
	nop
	jalr	$v0
	addu	$a0, $s1, $zero
	sw	$s0, 4($s1)
.L80075688:
	lw	$v0, 4($s1)
	lw	$ra, 28($sp)
	lw	$s2, 24($sp)
	lw	$s1, 20($sp)
	lw	$s0, 16($sp)
	xori	$v0, $v0, 5
	sltiu	$v0, $v0, 1
	jr	$ra
	addiu	$sp, $sp, 32

# ---------------------------------------------------------------------------
# 5. FUN_800756ac - 68 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_800756ac, "ax", @progbits
.globl FUN_800756ac
.type FUN_800756ac, @function
FUN_800756ac:
	addiu	$sp, $sp, -24
	lui	$v1, 0x800e
	sw	$ra, 16($sp)
	lw	$a1, 4($a0)
	addiu	$v1, $v1, -4120
	sll	$v0, $a1, 2
	addu	$v0, $v0, $v1
	lw	$v0, 48($v0)
	nop
	jalr	$v0
	nop
	jal	FUN_8007f07c
	nop
	lw	$ra, 16($sp)
	nop
	jr	$ra
	addiu	$sp, $sp, 24

# ---------------------------------------------------------------------------
# 6. FUN_800756f0 (Enter State 0: STYLE SEL) - 72 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_800756f0, "ax", @progbits
.globl FUN_800756f0
.type FUN_800756f0, @function
FUN_800756f0:
	addiu	$sp, $sp, -24
	sw	$s0, 16($sp)
	addu	$s0, $a0, $zero
	lui	$v0, 0x800f
	lui	$v1, 0x800f
	sw	$zero, 10492($v0)
	li	$v0, 9
	sw	$ra, 20($sp)
	jal	FUN_8002a8b0
	sh	$v0, 10504($v1)
	jal	FUN_8008ff00
	addiu	$a0, $s0, 8
	jal	FUN_8007f1a4
	nop
	lw	$ra, 20($sp)
	lw	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 24

# ---------------------------------------------------------------------------
# 7. FUN_80075738 (Update State 0: STYLE SEL) - 168 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_80075738, "ax", @progbits
.globl FUN_80075738
.type FUN_80075738, @function
FUN_80075738:
	addiu	$sp, $sp, -24
	sw	$s0, 16($sp)
	addu	$s0, $a0, $zero
	sw	$ra, 20($sp)
	jal	FUN_8007f218
	li	$a0, 74
	jal	FUN_800902cc
	addiu	$a0, $s0, 8
	addu	$v1, $v0, $zero
	sltiu	$v0, $v1, 5
	beqz	$v0, .L800757cc
	lui	$v0, 0x8002
	addiu	$v0, $v0, -11380
	sll	$v1, $v1, 2
	addu	$v1, $v1, $v0
	lw	$v0, 0($v1)
	nop
	jr	$v0
	nop
	jal	FUN_800a0094
	nop
	beqz	$v0, .L800757cc
	lui	$v1, 0x800f
	addiu	$v1, $v1, 10376
	lw	$v0, 116($v1)
	nop
	addiu	$v0, $v0, -1
	j	.L800757cc
	sw	$v0, 116($v1)
	jal	FUN_80028358
	li	$a0, 780
	j	.L800757d0
	addu	$v0, $zero, $zero
	jal	FUN_80075af8
	addu	$a0, $zero, $zero
	j	.L800757d0
	nop
.L800757cc:
	addu	$v0, $zero, $zero
.L800757d0:
	lw	$ra, 20($sp)
	lw	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 24

# ---------------------------------------------------------------------------
# 8. FUN_800757e0 (Enter State 1: MODE SEL) - 56 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_800757e0, "ax", @progbits
.globl FUN_800757e0
.type FUN_800757e0, @function
FUN_800757e0:
	addiu	$sp, $sp, -24
	lui	$v0, 0x800f
	lui	$v1, 0x800f
	sw	$zero, 10492($v0)
	li	$v0, 10
	sw	$ra, 16($sp)
	jal	FUN_8002a8b0
	sh	$v0, 10504($v1)
	jal	FUN_8007f1a4
	nop
	lw	$ra, 16($sp)
	nop
	jr	$ra
	addiu	$sp, $sp, 24

# ---------------------------------------------------------------------------
# 9. FUN_80075818 (Update State 1: MODE SEL) - 32 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_80075818, "ax", @progbits
.globl FUN_80075818
.type FUN_80075818, @function
FUN_80075818:
	addiu	$sp, $sp, -24
	sw	$ra, 16($sp)
	jal	FUN_8007f218
	li	$a0, 74
	lw	$ra, 16($sp)
	li	$v0, 1
	jr	$ra
	addiu	$sp, $sp, 24

# ---------------------------------------------------------------------------
# 10. FUN_80075838 (Exit State 1: MODE SEL) - 8 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_80075838, "ax", @progbits
.globl FUN_80075838
.type FUN_80075838, @function
FUN_80075838:
	jr	$ra
	nop

# ---------------------------------------------------------------------------
# 11. FUN_80075840 (Enter State 2: CHARA SEL) - 84 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_80075840, "ax", @progbits
.globl FUN_80075840
.type FUN_80075840, @function
FUN_80075840:
	addiu	$sp, $sp, -24
	sw	$s0, 16($sp)
	addu	$s0, $a0, $zero
	lui	$v0, 0x800f
	lui	$v1, 0x800f
	sw	$zero, 10492($v0)
	li	$v0, 11
	sw	$ra, 20($sp)
	jal	FUN_8002a8b0
	sh	$v0, 10504($v1)
	jal	FUN_800919e4
	addiu	$a0, $s0, 8
	li	$a0, 9
	jal	FUN_8007b778
	addu	$a1, $zero, $zero
	jal	FUN_8007f1a4
	nop
	lw	$ra, 20($sp)
	lw	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 24

# ---------------------------------------------------------------------------
# 12. FUN_80075894 (Update State 2: CHARA SEL) - 168 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_80075894, "ax", @progbits
.globl FUN_80075894
.type FUN_80075894, @function
FUN_80075894:
	addiu	$sp, $sp, -24
	sw	$s0, 16($sp)
	addu	$s0, $a0, $zero
	sw	$ra, 20($sp)
	jal	FUN_8007f218
	li	$a0, 74
	jal	FUN_80091e20
	addiu	$a0, $s0, 8
	addu	$v1, $v0, $zero
	sltiu	$v0, $v1, 5
	beqz	$v0, .L80075928
	lui	$v0, 0x8002
	addiu	$v0, $v0, -11356
	sll	$v1, $v1, 2
	addu	$v1, $v1, $v0
	lw	$v0, 0($v1)
	nop
	jr	$v0
	nop
	jal	FUN_800a0094
	nop
	beqz	$v0, .L80075928
	lui	$v1, 0x800f
	addiu	$v1, $v1, 10376
	lw	$v0, 116($v1)
	nop
	addiu	$v0, $v0, -1
	j	.L80075928
	sw	$v0, 116($v1)
	jal	FUN_80028358
	li	$a0, 780
	j	.L8007592c
	li	$v0, 2
	jal	FUN_80075af8
	li	$a0, 2
	j	.L8007592c
	nop
.L80075928:
	li	$v0, 2
.L8007592c:
	lw	$ra, 20($sp)
	lw	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 24

# ---------------------------------------------------------------------------
# 13. FUN_8007593c (Exit State 2: CHARA SEL) - 48 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_8007593c, "ax", @progbits
.globl FUN_8007593c
.type FUN_8007593c, @function
FUN_8007593c:
	addiu	$sp, $sp, -24
	sw	$s0, 16($sp)
	addu	$s0, $a0, $zero
	sw	$ra, 20($sp)
	jal	FUN_80028358
	li	$a0, 512
	jal	FUN_800924b4
	addiu	$a0, $s0, 8
	lw	$ra, 20($sp)
	lw	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 24

# ---------------------------------------------------------------------------
# 14. FUN_8007596c (Update State 3: MUSIC SEL) - 152 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_8007596c, "ax", @progbits
.globl FUN_8007596c
.type FUN_8007596c, @function
FUN_8007596c:
	addiu	$sp, $sp, -24
	sw	$ra, 16($sp)
	jal	FUN_8008cd3c
	addiu	$a0, $a0, 8
	addu	$v1, $v0, $zero
	sltiu	$v0, $v1, 5
	beqz	$v0, .L800759f0
	lui	$v0, 0x8002
	addiu	$v0, $v0, -11332
	sll	$v1, $v1, 2
	addu	$v1, $v1, $v0
	lw	$v0, 0($v1)
	nop
	jr	$v0
	nop
	jal	FUN_800a0094
	nop
	beqz	$v0, .L800759f0
	lui	$v1, 0x800f
	addiu	$v1, $v1, 10376
	lw	$v0, 116($v1)
	nop
	addiu	$v0, $v0, -1
	j	.L800759f0
	sw	$v0, 116($v1)
	jal	FUN_80028358
	li	$a0, 780
	j	.L800759f4
	li	$v0, 3
	jal	FUN_80075af8
	li	$a0, 3
	j	.L800759f4
	nop
.L800759f0:
	li	$v0, 3
.L800759f4:
	lw	$ra, 16($sp)
	nop
	jr	$ra
	addiu	$sp, $sp, 24

# ---------------------------------------------------------------------------
# 15. FUN_80075a04 (Exit State 3: MUSIC SEL) - 60 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_80075a04, "ax", @progbits
.globl FUN_80075a04
.type FUN_80075a04, @function
FUN_80075a04:
	addiu	$sp, $sp, -24
	addiu	$a0, $a0, 8
	sw	$ra, 20($sp)
	jal	FUN_8008e7bc
	sw	$s0, 16($sp)
	lui	$s0, 0x800f
	addiu	$s0, $s0, 10504
	lh	$a0, 28($s0)
	jal	FUN_8007ee38
	nop
	sw	$v0, 4($s0)
	lw	$ra, 20($sp)
	lw	$s0, 16($sp)
	jr	$ra
	addiu	$sp, $sp, 24

# ---------------------------------------------------------------------------
# 16. FUN_80075a40 (Enter State 4: LINK START) - 80 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_80075a40, "ax", @progbits
.globl FUN_80075a40
.type FUN_80075a40, @function
FUN_80075a40:
	addiu	$sp, $sp, -24
	lui	$v0, 0x800f
	lui	$v1, 0x800f
	sw	$zero, 10492($v0)
	li	$v0, 23
	sw	$ra, 16($sp)
	jal	FUN_8002a8b0
	sh	$v0, 10504($v1)
	jal	FUN_8005f10c
	nop
	jal	FUN_8002a8b0
	addu	$a0, $zero, $zero
	jal	FUN_8002a8b0
	addu	$a0, $zero, $zero
	jal	FUN_8002a8b0
	nop
	lw	$ra, 16($sp)
	nop
	jr	$ra
	addiu	$sp, $sp, 24

# ---------------------------------------------------------------------------
# 17. FUN_80075a90 (Update State 4: LINK START) - 40 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_80075a90, "ax", @progbits
.globl FUN_80075a90
.type FUN_80075a90, @function
FUN_80075a90:
	addiu	$sp, $sp, -24
	sw	$ra, 16($sp)
	jal	FUN_8005f12c
	nop
	jal	FUN_80075af8
	li	$a0, 4
	lw	$ra, 16($sp)
	nop
	jr	$ra
	addiu	$sp, $sp, 24

# ---------------------------------------------------------------------------
# 18. FUN_80075ab8 (Exit State 4: LINK START) - 40 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_80075ab8, "ax", @progbits
.globl FUN_80075ab8
.type FUN_80075ab8, @function
FUN_80075ab8:
	addiu	$sp, $sp, -24
	sw	$ra, 16($sp)
	jal	FUN_8005f14c
	nop
	jal	FUN_8002a8b0
	nop
	lw	$ra, 16($sp)
	nop
	jr	$ra
	addiu	$sp, $sp, 24

# ---------------------------------------------------------------------------
# 19. FUN_80075ae0 (Enter State 5: terminal) - 8 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_80075ae0, "ax", @progbits
.globl FUN_80075ae0
.type FUN_80075ae0, @function
FUN_80075ae0:
	jr	$ra
	nop

# ---------------------------------------------------------------------------
# 20. FUN_80075ae8 (Update State 5: terminal) - 8 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_80075ae8, "ax", @progbits
.globl FUN_80075ae8
.type FUN_80075ae8, @function
FUN_80075ae8:
	jr	$ra
	li	$v0, 5

# ---------------------------------------------------------------------------
# 21. FUN_80075af0 (Exit State 5: terminal) - 8 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_80075af0, "ax", @progbits
.globl FUN_80075af0
.type FUN_80075af0, @function
FUN_80075af0:
	jr	$ra
	nop

# ---------------------------------------------------------------------------
# 22. FUN_80075af8 (Central Next-State Router) - 136 bytes
# ---------------------------------------------------------------------------
.section .text.FUN_80075af8, "ax", @progbits
.globl FUN_80075af8
.type FUN_80075af8, @function
FUN_80075af8:
	sltiu	$v0, $a0, 5
	beqz	$v0, .L80075b7c
	lui	$v0, 0x8002
	addiu	$v0, $v0, -11308
	sll	$v1, $a0, 2
	addu	$v1, $v1, $v0
	lw	$v0, 0($v1)
	nop
	jr	$v0
	nop
	jr	$ra
	li	$v0, 4
	lui	$v0, 0x800e
	lw	$v0, 2840($v0)
	nop
	lbu	$v0, 152($v0)
	li	$a1, 1
	bne	$v0, $a1, .L80075b4c
	li	$v0, 3
	jr	$ra
	li	$v0, 2
.L80075b4c:
	lui	$v1, 0x800f
	addiu	$v1, $v1, 10504
	li	$a0, 0x8000
	sb	$a1, 26($v1)
	sb	$zero, 37($v1)
	addu	$v1, $v1, $a0
	jr	$ra
	sb	$a1, 4777($v1)
	jr	$ra
	li	$v0, 3
	jr	$ra
	li	$v0, 5
.L80075b7c:
	jr	$ra
