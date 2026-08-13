.set noreorder
.set noat
.set nomacro

.section .text.FUN_8008ac3c
.globl FUN_8008ac3c
.type FUN_8008ac3c, @function
FUN_8008ac3c:
/* Runtime resource and state dispatch helper. */
.L8008ac3c:
/* 0x8008ac3c */ addiu	$sp,$sp,-56
.L8008ac40:
/* 0x8008ac40 */ sw	$s4,32($sp)
.L8008ac44:
/* 0x8008ac44 */ lw	$s4,72($sp)
.L8008ac48:
/* 0x8008ac48 */ sw	$s2,24($sp)
.L8008ac4c:
/* 0x8008ac4c */ addu	$s2,$a0,$zero
.L8008ac50:
/* 0x8008ac50 */ sw	$s3,28($sp)
.L8008ac54:
/* 0x8008ac54 */ addu	$s3,$a1,$zero
.L8008ac58:
/* 0x8008ac58 */ sw	$s7,44($sp)
.L8008ac5c:
/* 0x8008ac5c */ addu	$s7,$a2,$zero
.L8008ac60:
/* 0x8008ac60 */ sw	$s8,48($sp)
.L8008ac64:
/* 0x8008ac64 */ addu	$s8,$a3,$zero
.L8008ac68:
/* 0x8008ac68 */ sw	$s1,20($sp)
.L8008ac6c:
/* 0x8008ac6c */ addu	$s1,$zero,$zero
.L8008ac70:
/* 0x8008ac70 */ sw	$ra,52($sp)
.L8008ac74:
/* 0x8008ac74 */ sw	$s6,40($sp)
.L8008ac78:
/* 0x8008ac78 */ sw	$s5,36($sp)
.L8008ac7c:
/* 0x8008ac7c */ blez	$s3,.L8008ad6c
.L8008ac80:
/* 0x8008ac80 */ sw	$s0,16($sp)
.L8008ac84:
/* 0x8008ac84 */ lui	$v0,0x800f
.L8008ac88:
/* 0x8008ac88 */ addiu	$s6,$v0,10504
.L8008ac8c:
/* 0x8008ac8c */ srl	$v0,$s3,0x1f
.L8008ac90:
/* 0x8008ac90 */ addu	$v0,$s3,$v0
.L8008ac94:
/* 0x8008ac94 */ sra	$s5,$v0,0x1
.L8008ac98:
/* 0x8008ac98 */ addu	$s0,$s7,$zero
.L8008ac9c:
/* 0x8008ac9c */ lbu	$v0,1968($s2)
.L8008aca0:
/* 0x8008aca0 */ sll	$zero,$zero,0x0
.L8008aca4:
/* 0x8008aca4 */ beq	$v0,$zero,.L8008acc0
.L8008aca8:
/* 0x8008aca8 */ subu	$v0,$s1,$s5
.L8008acac:
/* 0x8008acac */ lw	$v0,4($s6)
.L8008acb0:
/* 0x8008acb0 */ sll	$zero,$zero,0x0
.L8008acb4:
/* 0x8008acb4 */ lb	$v0,3($v0)
.L8008acb8:
/* 0x8008acb8 */ j	0x8008ad38
.L8008acbc:
/* 0x8008acbc */ sw	$v0,0($s0)
.L8008acc0:
/* 0x8008acc0 */ lw	$v1,1868($s2)
.L8008acc4:
/* 0x8008acc4 */ sll	$v0,$v0,0xc
.L8008acc8:
/* 0x8008acc8 */ addu	$v1,$v1,$v0
.L8008accc:
/* 0x8008accc */ bgez	$v1,.L8008ad08
.L8008acd0:
/* 0x8008acd0 */ addu	$a1,$s0,$zero
.L8008acd4:
/* 0x8008acd4 */ lw	$a0,4($s2)
.L8008acd8:
/* 0x8008acd8 */ negu	$v0,$v1
.L8008acdc:
/* 0x8008acdc */ sll	$a0,$a0,0xc
.L8008ace0:
/* 0x8008ace0 */ div	$zero,$v0,$a0
.L8008ace4:
/* 0x8008ace4 */ mfhi	$v1
.L8008ace8:
/* 0x8008ace8 */ sll	$zero,$zero,0x0
.L8008acec:
/* 0x8008acec */ subu	$v1,$a0,$v1
.L8008acf0:
/* 0x8008acf0 */ div	$zero,$v1,$a0
.L8008acf4:
/* 0x8008acf4 */ mfhi	$v0
.L8008acf8:
/* 0x8008acf8 */ sll	$zero,$zero,0x0
.L8008acfc:
/* 0x8008acfc */ sra	$v0,$v0,0xc
.L8008ad00:
/* 0x8008ad00 */ j	0x8008ad28
.L8008ad04:
/* 0x8008ad04 */ sll	$v0,$v0,0x1
.L8008ad08:
/* 0x8008ad08 */ lw	$v0,4($s2)
.L8008ad0c:
/* 0x8008ad0c */ sll	$zero,$zero,0x0
.L8008ad10:
/* 0x8008ad10 */ sll	$v0,$v0,0xc
.L8008ad14:
/* 0x8008ad14 */ div	$zero,$v1,$v0
.L8008ad18:
/* 0x8008ad18 */ mfhi	$v1
.L8008ad1c:
/* 0x8008ad1c */ sll	$zero,$zero,0x0
.L8008ad20:
/* 0x8008ad20 */ sra	$v1,$v1,0xc
.L8008ad24:
/* 0x8008ad24 */ sll	$v0,$v1,0x1
.L8008ad28:
/* 0x8008ad28 */ addu	$v0,$s2,$v0
.L8008ad2c:
/* 0x8008ad2c */ lh	$v0,22($v0)
.L8008ad30:
/* 0x8008ad30 */ sll	$zero,$zero,0x0
.L8008ad34:
/* 0x8008ad34 */ sw	$v0,0($a1)
.L8008ad38:
/* 0x8008ad38 */ lw	$a0,0($s0)
.L8008ad3c:
/* 0x8008ad3c */ sll	$zero,$zero,0x0
.L8008ad40:
/* 0x8008ad40 */ slti	$v0,$a0,200
.L8008ad44:
/* 0x8008ad44 */ beq	$v0,$zero,.L8008ad5c
.L8008ad48:
/* 0x8008ad48 */ sll	$zero,$zero,0x0
.L8008ad4c:
/* 0x8008ad4c */ jal	0x80092fa4
.L8008ad50:
/* 0x8008ad50 */ addu	$a1,$s4,$zero
.L8008ad54:
/* 0x8008ad54 */ bne	$v0,$zero,.L8008add4
.L8008ad58:
/* 0x8008ad58 */ addiu	$v0,$zero,-1
.L8008ad5c:
/* 0x8008ad5c */ addiu	$s1,$s1,1
.L8008ad60:
/* 0x8008ad60 */ slt	$v0,$s1,$s3
.L8008ad64:
/* 0x8008ad64 */ bne	$v0,$zero,.L8008ac9c
.L8008ad68:
/* 0x8008ad68 */ addiu	$s0,$s0,4
.L8008ad6c:
/* 0x8008ad6c */ jal	0x80092ca8
.L8008ad70:
/* 0x8008ad70 */ addu	$a0,$s4,$zero
.L8008ad74:
/* 0x8008ad74 */ bne	$v0,$zero,.L8008add4
.L8008ad78:
/* 0x8008ad78 */ addiu	$v0,$zero,-1
.L8008ad7c:
/* 0x8008ad7c */ blez	$s3,.L8008add0
.L8008ad80:
/* 0x8008ad80 */ addu	$s1,$zero,$zero
.L8008ad84:
/* 0x8008ad84 */ addu	$s0,$s7,$zero
.L8008ad88:
/* 0x8008ad88 */ addu	$s2,$s8,$zero
.L8008ad8c:
/* 0x8008ad8c */ lw	$a0,0($s0)
.L8008ad90:
/* 0x8008ad90 */ jal	0x8009304c
.L8008ad94:
/* 0x8008ad94 */ addu	$a1,$s4,$zero
.L8008ad98:
/* 0x8008ad98 */ addu	$v1,$v0,$zero
.L8008ad9c:
/* 0x8008ad9c */ sw	$v1,0($s2)
.L8008ada0:
/* 0x8008ada0 */ lw	$v0,0($s0)
.L8008ada4:
/* 0x8008ada4 */ sll	$zero,$zero,0x0
.L8008ada8:
/* 0x8008ada8 */ slti	$v0,$v0,160
.L8008adac:
/* 0x8008adac */ beq	$v0,$zero,.L8008adbc
.L8008adb0:
/* 0x8008adb0 */ sll	$zero,$zero,0x0
.L8008adb4:
/* 0x8008adb4 */ bltz	$v1,.L8008add4
.L8008adb8:
/* 0x8008adb8 */ addiu	$v0,$zero,-1
.L8008adbc:
/* 0x8008adbc */ addiu	$s0,$s0,4
.L8008adc0:
/* 0x8008adc0 */ addiu	$s1,$s1,1
.L8008adc4:
/* 0x8008adc4 */ slt	$v0,$s1,$s3
.L8008adc8:
/* 0x8008adc8 */ bne	$v0,$zero,.L8008ad8c
.L8008adcc:
/* 0x8008adcc */ addiu	$s2,$s2,4
.L8008add0:
/* 0x8008add0 */ addu	$v0,$zero,$zero
.L8008add4:
/* 0x8008add4 */ lw	$ra,52($sp)
.L8008add8:
/* 0x8008add8 */ lw	$s8,48($sp)
.L8008addc:
/* 0x8008addc */ lw	$s7,44($sp)
.L8008ade0:
/* 0x8008ade0 */ lw	$s6,40($sp)
.L8008ade4:
/* 0x8008ade4 */ lw	$s5,36($sp)
.L8008ade8:
/* 0x8008ade8 */ lw	$s4,32($sp)
.L8008adec:
/* 0x8008adec */ lw	$s3,28($sp)
.L8008adf0:
/* 0x8008adf0 */ lw	$s2,24($sp)
.L8008adf4:
/* 0x8008adf4 */ lw	$s1,20($sp)
.L8008adf8:
/* 0x8008adf8 */ lw	$s0,16($sp)
.L8008adfc:
/* 0x8008adfc */ jr	$ra
.L8008ae00:
/* 0x8008ae00 */ addiu	$sp,$sp,56
.size FUN_8008ac3c, .-FUN_8008ac3c
