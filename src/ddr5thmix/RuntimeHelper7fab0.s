.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007fab0
.globl FUN_8007fab0
.type FUN_8007fab0, @function
FUN_8007fab0:
/* Runtime timeline and state update helper. */
/* 0x8007fab0 */ addiu	$sp,$sp,-40
/* 0x8007fab4 */ sw	$ra,36($sp)
/* 0x8007fab8 */ sw	$s4,32($sp)
/* 0x8007fabc */ sw	$s3,28($sp)
/* 0x8007fac0 */ sw	$s2,24($sp)
/* 0x8007fac4 */ sw	$s1,20($sp)
/* 0x8007fac8 */ jal	0x80093900
/* 0x8007facc */ sw	$s0,16($sp)
/* 0x8007fad0 */ addu $s2,$zero,$zero
/* 0x8007fad4 */ lui	$v0,0x800f
/* 0x8007fad8 */ addiu	$s4,$v0,15276
/* 0x8007fadc */ addiu $s3,$zero,-9999
/* 0x8007fae0 */ addu $s1,$s2,$zero
.L8007fae4:
/* 0x8007fae4 */ addu $a2,$zero,$zero
/* 0x8007fae8 */ addu $a1,$s1,$zero
/* 0x8007faec */ lui	$v0,0x800f
/* 0x8007faf0 */ addiu	$v0,$v0,15040
/* 0x8007faf4 */ addu	$s0,$s1,$v0
/* 0x8007faf8 */ sw	$zero,0($s0)
/* 0x8007fafc */ sw	$zero,4($s0)
/* 0x8007fb00 */ sw	$zero,8($s0)
/* 0x8007fb04 */ sw	$zero,12($s0)
/* 0x8007fb08 */ sw	$zero,32($s0)
.L8007fb0c:
/* 0x8007fb0c */ addu	$a0,$a1,$s4
/* 0x8007fb10 */ lh	$v1,4($a0)
/* 0x8007fb14 */ addiu $v0,$zero,-5
/* 0x8007fb18 */ bne	$v1,$v0,.L8007fb2c
/* 0x8007fb1c */ addiu $v0,$zero,-6
/* 0x8007fb20 */ lw	$v0,0($a0)
/* 0x8007fb24 */ j	0x8007fb7c
/* 0x8007fb28 */ sw	$v0,16($s0)
.L8007fb2c:
/* 0x8007fb2c */ bne	$v1,$v0,.L8007fb40
/* 0x8007fb30 */ addiu $v0,$zero,-7
/* 0x8007fb34 */ lw	$v0,0($a0)
/* 0x8007fb38 */ j	0x8007fb7c
/* 0x8007fb3c */ sw	$v0,20($s0)
.L8007fb40:
/* 0x8007fb40 */ beq	$v1,$v0,.L8007fb70
/* 0x8007fb44 */ addiu $v0,$zero,-2
/* 0x8007fb48 */ bne	$v1,$v0,.L8007fb80
/* 0x8007fb4c */ addiu	$a1,$a1,16
/* 0x8007fb50 */ lw	$v0,0($a0)
/* 0x8007fb54 */ lw	$v1,24($s0)
/* 0x8007fb58 */ sw	$a2,32($s0)
/* 0x8007fb5c */ bne $v1,$zero,.L8007fb88
/* 0x8007fb60 */ sw	$v0,28($s0)
/* 0x8007fb64 */ lw	$v0,0($a0)
/* 0x8007fb68 */ j	0x8007fb88
/* 0x8007fb6c */ sw	$v0,24($s0)
.L8007fb70:
/* 0x8007fb70 */ lw	$v0,0($a0)
/* 0x8007fb74 */ nop
/* 0x8007fb78 */ sw	$v0,24($s0)
.L8007fb7c:
/* 0x8007fb7c */ addiu	$a1,$a1,16
.L8007fb80:
/* 0x8007fb80 */ j	0x8007fb0c
/* 0x8007fb84 */ addiu	$a2,$a2,1
.L8007fb88:
/* 0x8007fb88 */ sw	$zero,148($s0)
/* 0x8007fb8c */ addiu $t0,$zero,1
/* 0x8007fb90 */ addu $a1,$zero,$zero
/* 0x8007fb94 */ addu $a0,$s0,$zero
/* 0x8007fb98 */ addiu	$a3,$s0,96
.L8007fb9c:
/* 0x8007fb9c */ sw	$s3,52($a0)
/* 0x8007fba0 */ addu $v1,$zero,$zero
/* 0x8007fba4 */ addu $a2,$a1,$zero
/* 0x8007fba8 */ addu	$v0,$v1,$a2
.L8007fbac:
/* 0x8007fbac */ addu	$v0,$s0,$v0
/* 0x8007fbb0 */ sb	$t0,56($v0)
/* 0x8007fbb4 */ addiu	$v1,$v1,1
/* 0x8007fbb8 */ slti	$v0,$v1,8
/* 0x8007fbbc */ bne $v0,$zero,.L8007fbac
/* 0x8007fbc0 */ addu	$v0,$v1,$a2
/* 0x8007fbc4 */ addiu	$a0,$a0,12
/* 0x8007fbc8 */ slt	$v0,$a0,$a3
/* 0x8007fbcc */ bne $v0,$zero,.L8007fb9c
/* 0x8007fbd0 */ addiu	$a1,$a1,12
/* 0x8007fbd4 */ addu $v1,$zero,$zero
/* 0x8007fbd8 */ addu	$v0,$s1,$s4
/* 0x8007fbdc */ sw	$zero,152($s0)
/* 0x8007fbe0 */ lh	$v0,6($v0)
/* 0x8007fbe4 */ nop
/* 0x8007fbe8 */ bgez	$v0,.L8007fc1c
/* 0x8007fbec */ addu $a0,$s1,$zero
/* 0x8007fbf0 */ addiu	$v0,$v1,1
.L8007fbf4:
/* 0x8007fbf4 */ addu $v1,$v0,$zero
/* 0x8007fbf8 */ sll	$v0,$v1,0x4
/* 0x8007fbfc */ addu	$v0,$v0,$a0
/* 0x8007fc00 */ addu	$v0,$v0,$s4
/* 0x8007fc04 */ sw	$v1,152($s0)
/* 0x8007fc08 */ lh	$v0,6($v0)
/* 0x8007fc0c */ nop
/* 0x8007fc10 */ bltz	$v0,.L8007fbf4
/* 0x8007fc14 */ addiu	$v0,$v1,1
/* 0x8007fc18 */ addu $v1,$zero,$zero
.L8007fc1c:
/* 0x8007fc1c */ addu $a0,$s0,$zero
/* 0x8007fc20 */ sw	$zero,156($s0)
/* 0x8007fc24 */ sw	$zero,160($s0)
.L8007fc28:
/* 0x8007fc28 */ sh	$s3,36($a0)
/* 0x8007fc2c */ sh	$s3,188($a0)
/* 0x8007fc30 */ addiu	$v1,$v1,1
/* 0x8007fc34 */ slti	$v0,$v1,8
/* 0x8007fc38 */ bne $v0,$zero,.L8007fc28
/* 0x8007fc3c */ addiu	$a0,$a0,2
/* 0x8007fc40 */ addu $a0,$s2,$zero
/* 0x8007fc44 */ sh	$zero,204($s0)
/* 0x8007fc48 */ jal	0x8007f9b8
/* 0x8007fc4c */ sh	$zero,206($s0)
/* 0x8007fc50 */ ori $v1,$zero,0x9284
/* 0x8007fc54 */ addiu	$s2,$s2,1
/* 0x8007fc58 */ sb	$v0,187($s0)
/* 0x8007fc5c */ slti	$v0,$s2,2
/* 0x8007fc60 */ bne $v0,$zero,.L8007fae4
/* 0x8007fc64 */ addu	$s1,$s1,$v1
/* 0x8007fc68 */ lw	$ra,36($sp)
/* 0x8007fc6c */ lw	$s4,32($sp)
/* 0x8007fc70 */ lw	$s3,28($sp)
/* 0x8007fc74 */ lw	$s2,24($sp)
/* 0x8007fc78 */ lw	$s1,20($sp)
/* 0x8007fc7c */ lw	$s0,16($sp)
/* 0x8007fc80 */ addu $v0,$zero,$zero
/* 0x8007fc84 */ jr $ra
/* 0x8007fc88 */ addiu	$sp,$sp,40
.size FUN_8007fab0, .-FUN_8007fab0


