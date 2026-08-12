.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007d8a8
.globl FUN_8007d8a8
.type FUN_8007d8a8, @function
FUN_8007d8a8:
/* Interpolate two runtime transform states and synthesize the resulting matrix. */
/* 0x8007d8a8 */ addiu	$sp,$sp,-176
/* 0x8007d8ac */ addu $t9,$a0,$zero
/* 0x8007d8b0 */ addu $t4,$a1,$zero
/* 0x8007d8b4 */ addu $t5,$a2,$zero
/* 0x8007d8b8 */ addiu	$t0,$t4,24
/* 0x8007d8bc */ addiu	$t3,$t5,24
/* 0x8007d8c0 */ sw	$ra,172($sp)
/* 0x8007d8c4 */ sw	$s6,168($sp)
/* 0x8007d8c8 */ sw	$s5,164($sp)
/* 0x8007d8cc */ sw	$s4,160($sp)
/* 0x8007d8d0 */ sw	$s3,156($sp)
/* 0x8007d8d4 */ sw	$s2,152($sp)
/* 0x8007d8d8 */ sw	$s1,148($sp)
/* 0x8007d8dc */ sw	$s0,144($sp)
/* 0x8007d8e0 */ lw	$v0,24($t4)
/* 0x8007d8e4 */ lw	$s0,192($sp)
/* 0x8007d8e8 */ lw	$t7,196($sp)
/* 0x8007d8ec */ lw	$t1,200($sp)
/* 0x8007d8f0 */ lw	$t2,204($sp)
/* 0x8007d8f4 */ addu $s1,$s0,$zero
/* 0x8007d8f8 */ addu $s2,$t7,$zero
/* 0x8007d8fc */ addu $s3,$t1,$zero
/* 0x8007d900 */ addu $s4,$t2,$zero
/* 0x8007d904 */ sw	$v0,16($sp)
/* 0x8007d908 */ lw	$v0,4($t0)
/* 0x8007d90c */ addu	$v1,$t1,$t2
/* 0x8007d910 */ sw	$v0,20($sp)
/* 0x8007d914 */ lw	$v0,8($t0)
/* 0x8007d918 */ addu $t8,$v1,$zero
/* 0x8007d91c */ beqz	$a3,.L8007d9d8
/* 0x8007d920 */ sw	$v0,24($sp)
/* 0x8007d924 */ sll	$a1,$t1,0x10
/* 0x8007d928 */ lw	$v0,24($t4)
/* 0x8007d92c */ sra	$a1,$a1,0x10
/* 0x8007d930 */ mult	$v0,$a1
/* 0x8007d934 */ sll	$a0,$t2,0x10
/* 0x8007d938 */ mflo	$a2
/* 0x8007d93c */ lw	$v0,24($t5)
/* 0x8007d940 */ sra	$a0,$a0,0x10
/* 0x8007d944 */ mult	$v0,$a0
/* 0x8007d948 */ sll	$v1,$v1,0x10
/* 0x8007d94c */ mflo	$s6
/* 0x8007d950 */ sra	$v1,$v1,0x10
/* 0x8007d954 */ addu	$v0,$a2,$s6
/* 0x8007d958 */ div	$zero,$v0,$v1
/* 0x8007d95c */ mflo	$v0
/* 0x8007d960 */ nop
/* 0x8007d964 */ sw	$v0,16($sp)
/* 0x8007d968 */ lw	$v0,4($t0)
/* 0x8007d96c */ nop
/* 0x8007d970 */ mult	$v0,$a1
/* 0x8007d974 */ mflo	$a2
/* 0x8007d978 */ lw	$v0,4($t3)
/* 0x8007d97c */ nop
/* 0x8007d980 */ mult	$v0,$a0
/* 0x8007d984 */ mflo	$s6
/* 0x8007d988 */ addu	$v0,$a2,$s6
/* 0x8007d98c */ nop
/* 0x8007d990 */ div	$zero,$v0,$v1
/* 0x8007d994 */ mflo	$v0
/* 0x8007d998 */ nop
/* 0x8007d99c */ sw	$v0,20($sp)
/* 0x8007d9a0 */ lw	$v0,8($t0)
/* 0x8007d9a4 */ nop
/* 0x8007d9a8 */ mult	$v0,$a1
/* 0x8007d9ac */ mflo	$a1
/* 0x8007d9b0 */ lw	$v0,8($t3)
/* 0x8007d9b4 */ nop
/* 0x8007d9b8 */ mult	$v0,$a0
/* 0x8007d9bc */ mflo	$t0
/* 0x8007d9c0 */ addu	$v0,$a1,$t0
/* 0x8007d9c4 */ nop
/* 0x8007d9c8 */ div	$zero,$v0,$v1
/* 0x8007d9cc */ mflo	$v0
/* 0x8007d9d0 */ nop
/* 0x8007d9d4 */ sw	$v0,24($sp)
.L8007d9d8:
/* 0x8007d9d8 */ addiu	$v1,$t4,4
/* 0x8007d9dc */ lhu	$v0,2($v1)
/* 0x8007d9e0 */ nop
/* 0x8007d9e4 */ sh	$v0,40($sp)
/* 0x8007d9e8 */ lhu	$v0,8($v1)
/* 0x8007d9ec */ nop
/* 0x8007d9f0 */ sh	$v0,42($sp)
/* 0x8007d9f4 */ lhu	$v0,14($v1)
/* 0x8007d9f8 */ addiu	$v1,$t5,4
/* 0x8007d9fc */ sh	$v0,44($sp)
/* 0x8007da00 */ lhu	$v0,2($v1)
/* 0x8007da04 */ nop
/* 0x8007da08 */ sh	$v0,48($sp)
/* 0x8007da0c */ lhu	$v0,8($v1)
/* 0x8007da10 */ nop
/* 0x8007da14 */ sh	$v0,50($sp)
/* 0x8007da18 */ lhu	$v0,14($v1)
/* 0x8007da1c */ nop
/* 0x8007da20 */ sh	$v0,52($sp)
/* 0x8007da24 */ sll	$v0,$t1,0x10
/* 0x8007da28 */ sra	$v0,$v0,0x10
/* 0x8007da2c */ mtc2 $v0,$8
/* 0x8007da30 */ addiu	$v0,$sp,40
/* 0x8007da34 */ lhu $t4,0($v0)
/* 0x8007da34 */ lhu $t5,2($v0)
/* 0x8007da34 */ lhu $t6,4($v0)
/* 0x8007da34 */ mtc2 $t4,$9
/* 0x8007da34 */ mtc2 $t5,$10
/* 0x8007da34 */ mtc2 $t6,$11
/* 0x8007da34 */ nop
/* 0x8007da34 */ nop
/* 0x8007da34 */ c2 0x198003d
/* 0x8007da58 */ sll	$v0,$t2,0x10
/* 0x8007da5c */ sra	$v0,$v0,0x10
/* 0x8007da60 */ mtc2 $v0,$8
/* 0x8007da64 */ addiu	$v0,$sp,48
/* 0x8007da68 */ lhu $t4,0($v0)
/* 0x8007da68 */ lhu $t5,2($v0)
/* 0x8007da68 */ lhu $t6,4($v0)
/* 0x8007da68 */ mtc2 $t4,$9
/* 0x8007da68 */ mtc2 $t5,$10
/* 0x8007da68 */ mtc2 $t6,$11
/* 0x8007da68 */ nop
/* 0x8007da68 */ nop
/* 0x8007da68 */ c2 0x1a8003e
/* 0x8007da8c */ addiu	$v0,$sp,32
/* 0x8007da90 */ mfc2 $t4,$9
/* 0x8007da90 */ mfc2 $t5,$10
/* 0x8007da90 */ mfc2 $t6,$11
/* 0x8007da90 */ sh $t4,0($v0)
/* 0x8007da90 */ sh $t5,2($v0)
/* 0x8007da90 */ sh $t6,4($v0)
/* 0x8007daa8 */ sll	$v0,$s0,0x10
/* 0x8007daac */ sra	$a0,$v0,0x10
/* 0x8007dab0 */ sll	$v0,$t7,0x10
/* 0x8007dab4 */ sra	$v1,$v0,0x10
/* 0x8007dab8 */ slt	$v0,$v1,$a0
/* 0x8007dabc */ beqz	$v0,.L8007dad8
/* 0x8007dac0 */ subu	$v0,$a0,$v1
/* 0x8007dac4 */ slti	$v0,$v0,2049
/* 0x8007dac8 */ bnez	$v0,.L8007daf0
/* 0x8007dacc */ sll	$v1,$s1,0x10
/* 0x8007dad0 */ j	0x8007daf0
/* 0x8007dad4 */ addiu	$s2,$t7,4096
.L8007dad8:
/* 0x8007dad8 */ subu	$v0,$v1,$a0
/* 0x8007dadc */ slti	$v0,$v0,2049
/* 0x8007dae0 */ bnez	$v0,.L8007daf0
/* 0x8007dae4 */ sll	$v1,$s1,0x10
/* 0x8007dae8 */ addiu	$s1,$s0,4096
/* 0x8007daec */ sll	$v1,$s1,0x10
.L8007daf0:
/* 0x8007daf0 */ sra	$v1,$v1,0x10
/* 0x8007daf4 */ sll	$v0,$s3,0x10
/* 0x8007daf8 */ sra	$v0,$v0,0x10
/* 0x8007dafc */ mult	$v1,$v0
/* 0x8007db00 */ sll	$v1,$s2,0x10
/* 0x8007db04 */ sra	$v1,$v1,0x10
/* 0x8007db08 */ mflo	$a0
/* 0x8007db0c */ sll	$v0,$s4,0x10
/* 0x8007db10 */ sra	$v0,$v0,0x10
/* 0x8007db14 */ mult	$v1,$v0
/* 0x8007db18 */ sll	$v0,$t8,0x10
/* 0x8007db1c */ mflo	$v1
/* 0x8007db20 */ sra	$v0,$v0,0x10
/* 0x8007db24 */ addu	$v1,$a0,$v1
/* 0x8007db28 */ div	$zero,$v1,$v0
/* 0x8007db2c */ mflo	$v1
/* 0x8007db30 */ addiu	$s0,$sp,56
/* 0x8007db34 */ addu $a1,$s0,$zero
/* 0x8007db38 */ addiu	$s2,$t9,4
/* 0x8007db3c */ addiu	$a0,$sp,32
/* 0x8007db40 */ jal	0x80060f80
/* 0x8007db44 */ addu $s4,$v1,$zero
/* 0x8007db48 */ addiu $v0,$zero,4096
/* 0x8007db4c */ lhu	$a0,56($sp)
/* 0x8007db50 */ lhu	$v1,58($sp)
/* 0x8007db54 */ lhu	$a1,60($sp)
/* 0x8007db58 */ addiu	$s1,$sp,16
/* 0x8007db5c */ sh	$zero,66($sp)
/* 0x8007db60 */ sh	$zero,64($sp)
/* 0x8007db64 */ addu $s3,$a0,$zero
/* 0x8007db68 */ sh	$v1,80($sp)
/* 0x8007db6c */ sll	$v1,$v1,0x10
/* 0x8007db70 */ sh	$a0,74($sp)
/* 0x8007db74 */ sh	$a1,86($sp)
/* 0x8007db78 */ sh	$v0,12($s0)
/* 0x8007db7c */ bnez	$v1,.L8007db90
/* 0x8007db80 */ sh	$zero,56($sp)
/* 0x8007db84 */ sll	$v0,$a1,0x10
/* 0x8007db88 */ beqz	$v0,.L8007dbb0
/* 0x8007db8c */ nop
.L8007db90:
/* 0x8007db90 */ addu $a0,$s0,$zero
/* 0x8007db94 */ jal	0x80060f80
/* 0x8007db98 */ addiu	$a1,$sp,64
/* 0x8007db9c */ lhu	$v0,68($sp)
/* 0x8007dba0 */ lhu	$v1,66($sp)
/* 0x8007dba4 */ subu $v0,$zero,$v0
/* 0x8007dba8 */ sh	$v1,68($sp)
/* 0x8007dbac */ sh	$v0,66($sp)
.L8007dbb0:
/* 0x8007dbb0 */ lhu	$v0,66($sp)
/* 0x8007dbb4 */ lhu	$v1,68($sp)
/* 0x8007dbb8 */ sh	$zero,76($sp)
/* 0x8007dbbc */ sh	$s3,56($sp)
/* 0x8007dbc0 */ sh	$v1,88($sp)
/* 0x8007dbc4 */ addiu	$v1,$sp,112
/* 0x8007dbc8 */ sh	$v0,82($sp)
/* 0x8007dbcc */ cfc2 $t4,$0
/* 0x8007dbcc */ cfc2 $t5,$1
/* 0x8007dbcc */ sw $t4,0($v1)
/* 0x8007dbcc */ sw $t5,4($v1)
/* 0x8007dbcc */ cfc2 $t4,$2
/* 0x8007dbcc */ cfc2 $t5,$3
/* 0x8007dbcc */ cfc2 $t6,$4
/* 0x8007dbcc */ sw $t4,8($v1)
/* 0x8007dbcc */ sw $t5,12($v1)
/* 0x8007dbcc */ sw $t6,16($v1)
/* 0x8007dbcc */ cfc2 $t4,$5
/* 0x8007dbcc */ cfc2 $t5,$6
/* 0x8007dbcc */ cfc2 $t6,$7
/* 0x8007dbcc */ sw $t4,20($v1)
/* 0x8007dbcc */ sw $t5,24($v1)
/* 0x8007dbcc */ sw $t6,28($v1)
/* 0x8007dc0c */ lh $t4,0($s0)
/* 0x8007dc10 */ lh $t5,2($s0)
/* 0x8007dc14 */ ctc2 $t4,$0
/* 0x8007dc18 */ lh $t6,4($s0)
/* 0x8007dc1c */ ctc2 $t5,$2
/* 0x8007dc20 */ ctc2 $t6,$4
/* 0x8007dc24 */ addiu $v0,$sp,64
/* 0x8007dc28 */ lh $t4,0($v0)
/* 0x8007dc2c */ lh $t5,2($v0)
/* 0x8007dc30 */ lh $t6,4($v0)
/* 0x8007dc34 */ mtc2 $t4,$9
/* 0x8007dc38 */ mtc2 $t5,$10
/* 0x8007dc3c */ mtc2 $t6,$11
/* 0x8007dc40 */ nop
/* 0x8007dc44 */ nop
/* 0x8007dc48 */ c2 0x178000c
/* 0x8007dc4c */ addiu $s0,$sp,104
/* 0x8007dc50 */ mfc2 $t4,$9
/* 0x8007dc50 */ mfc2 $t5,$10
/* 0x8007dc50 */ mfc2 $t6,$11
/* 0x8007dc50 */ sh $t4,0($s0)
/* 0x8007dc50 */ sh $t5,2($s0)
/* 0x8007dc50 */ sh $t6,4($s0)
/* 0x8007dc68 */ lw $t4,0($v1)
/* 0x8007dc6c */ lw $t5,4($v1)
/* 0x8007dc70 */ ctc2 $t4,$0
/* 0x8007dc74 */ ctc2 $t5,$1
/* 0x8007dc78 */ lw $t4,8($v1)
/* 0x8007dc7c */ lw $t5,12($v1)
/* 0x8007dc80 */ lw $t6,16($v1)
/* 0x8007dc84 */ ctc2 $t4,$2
/* 0x8007dc88 */ ctc2 $t5,$3
/* 0x8007dc8c */ ctc2 $t6,$4
/* 0x8007dc90 */ addiu	$a0,$sp,72
/* 0x8007dc94 */ lhu	$v0,104($sp)
/* 0x8007dc98 */ lhu	$v1,106($sp)
/* 0x8007dc9c */ lhu	$a2,108($sp)
/* 0x8007dca0 */ addu $a1,$s0,$zero
/* 0x8007dca4 */ sh	$v0,72($sp)
/* 0x8007dca8 */ sh	$v1,78($sp)
/* 0x8007dcac */ jal	0x800553c8
/* 0x8007dcb0 */ sh	$a2,84($sp)
/* 0x8007dcb4 */ sll	$a0,$s4,0x10
/* 0x8007dcb8 */ sra	$a0,$a0,0x10
/* 0x8007dcbc */ subu $a0,$zero,$a0
/* 0x8007dcc0 */ jal	0x8007e618
/* 0x8007dcc4 */ addu $a1,$s0,$zero
/* 0x8007dcc8 */ addu $a0,$s0,$zero
/* 0x8007dccc */ jal	0x800553c8
/* 0x8007dcd0 */ addu $a1,$s2,$zero
/* 0x8007dcd4 */ beqz	$s1,.L8007dd00
/* 0x8007dcd8 */ nop
/* 0x8007dcdc */ lw	$v0,0($s1)
/* 0x8007dce0 */ nop
/* 0x8007dce4 */ sw	$v0,20($s2)
/* 0x8007dce8 */ lw	$v0,4($s1)
/* 0x8007dcec */ nop
/* 0x8007dcf0 */ sw	$v0,24($s2)
/* 0x8007dcf4 */ lw	$v0,8($s1)
/* 0x8007dcf8 */ nop
/* 0x8007dcfc */ sw	$v0,28($s2)
.L8007dd00:
/* 0x8007dd00 */ lw	$ra,172($sp)
/* 0x8007dd04 */ lw	$s6,168($sp)
/* 0x8007dd08 */ lw	$s5,164($sp)
/* 0x8007dd0c */ lw	$s4,160($sp)
/* 0x8007dd10 */ lw	$s3,156($sp)
/* 0x8007dd14 */ lw	$s2,152($sp)
/* 0x8007dd18 */ lw	$s1,148($sp)
/* 0x8007dd1c */ lw	$s0,144($sp)
/* 0x8007dd20 */ addiu $v0,$zero,1
/* 0x8007dd24 */ jr	$ra
/* 0x8007dd28 */ addiu	$sp,$sp,176
.size FUN_8007d8a8, .-FUN_8007d8a8
