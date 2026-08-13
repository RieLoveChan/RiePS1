.set noreorder
.set noat
.set nomacro

.section .text.FUN_8008a9d8
.globl FUN_8008a9d8
.type FUN_8008a9d8, @function
FUN_8008a9d8:
/* Runtime timing and resource state helper. */
.L8008a9d8:
/* 0x8008a9d8 */ addiu	$sp,$sp,-128
.L8008a9dc:
/* 0x8008a9dc */ sw	$s0,96($sp)
.L8008a9e0:
/* 0x8008a9e0 */ addu	$s0,$a0,$zero
.L8008a9e4:
/* 0x8008a9e4 */ sw	$s5,116($sp)
.L8008a9e8:
/* 0x8008a9e8 */ addu	$s5,$a1,$zero
.L8008a9ec:
/* 0x8008a9ec */ sw	$s2,104($sp)
.L8008a9f0:
/* 0x8008a9f0 */ addu	$s2,$a2,$zero
.L8008a9f4:
/* 0x8008a9f4 */ sw	$s1,100($sp)
.L8008a9f8:
/* 0x8008a9f8 */ addu	$s1,$a3,$zero
.L8008a9fc:
/* 0x8008a9fc */ sw	$s4,112($sp)
.L8008aa00:
/* 0x8008aa00 */ lw	$s4,144($sp)
.L8008aa04:
/* 0x8008aa04 */ addiu	$a0,$zero,92
.L8008aa08:
/* 0x8008aa08 */ sw	$ra,120($sp)
.L8008aa0c:
/* 0x8008aa0c */ jal	0x80098880
.L8008aa10:
/* 0x8008aa10 */ sw	$s3,108($sp)
.L8008aa14:
/* 0x8008aa14 */ addu	$a0,$s0,$zero
.L8008aa18:
/* 0x8008aa18 */ jal	0x8008a8cc
.L8008aa1c:
/* 0x8008aa1c */ addu	$s3,$v0,$zero
.L8008aa20:
/* 0x8008aa20 */ addiu	$v1,$zero,16
.L8008aa24:
/* 0x8008aa24 */ addiu	$a0,$zero,14
.L8008aa28:
/* 0x8008aa28 */ sh	$v1,32($sp)
.L8008aa2c:
/* 0x8008aa2c */ sh	$zero,34($sp)
.L8008aa30:
/* 0x8008aa30 */ sh	$v1,36($sp)
.L8008aa34:
/* 0x8008aa34 */ sh	$a0,38($sp)
.L8008aa38:
/* 0x8008aa38 */ sh	$zero,40($sp)
.L8008aa3c:
/* 0x8008aa3c */ sh	$v0,42($sp)
.L8008aa40:
/* 0x8008aa40 */ sh	$v1,44($sp)
.L8008aa44:
/* 0x8008aa44 */ sh	$a0,46($sp)
.L8008aa48:
/* 0x8008aa48 */ addiu	$a0,$zero,8
.L8008aa4c:
/* 0x8008aa4c */ addiu	$v0,$zero,-7
.L8008aa50:
/* 0x8008aa50 */ sh	$zero,48($sp)
.L8008aa54:
/* 0x8008aa54 */ sh	$zero,50($sp)
.L8008aa58:
/* 0x8008aa58 */ sh	$v1,52($sp)
.L8008aa5c:
/* 0x8008aa5c */ sh	$a0,54($sp)
.L8008aa60:
/* 0x8008aa60 */ sh	$zero,56($sp)
.L8008aa64:
/* 0x8008aa64 */ sh	$v0,58($sp)
.L8008aa68:
/* 0x8008aa68 */ sh	$v1,60($sp)
.L8008aa6c:
/* 0x8008aa6c */ sh	$a0,62($sp)
.L8008aa70:
/* 0x8008aa70 */ addiu	$v0,$zero,1
.L8008aa74:
/* 0x8008aa74 */ addiu	$a1,$zero,350
.L8008aa78:
/* 0x8008aa78 */ sh	$zero,64($sp)
.L8008aa7c:
/* 0x8008aa7c */ sh	$a0,66($sp)
.L8008aa80:
/* 0x8008aa80 */ sh	$v1,68($sp)
.L8008aa84:
/* 0x8008aa84 */ sh	$v0,70($sp)
.L8008aa88:
/* 0x8008aa88 */ sh	$zero,72($sp)
.L8008aa8c:
/* 0x8008aa8c */ sh	$zero,74($sp)
.L8008aa90:
/* 0x8008aa90 */ sh	$v1,76($sp)
.L8008aa94:
/* 0x8008aa94 */ sh	$a1,78($sp)
.L8008aa98:
/* 0x8008aa98 */ addiu	$v0,$zero,10
.L8008aa9c:
/* 0x8008aa9c */ sh	$zero,80($sp)
.L8008aaa0:
/* 0x8008aaa0 */ sh	$v0,82($sp)
.L8008aaa4:
/* 0x8008aaa4 */ sh	$v1,84($sp)
.L8008aaa8:
/* 0x8008aaa8 */ sh	$a0,86($sp)
.L8008aaac:
/* 0x8008aaac */ sh	$zero,88($sp)
.L8008aab0:
/* 0x8008aab0 */ sh	$a1,90($sp)
.L8008aab4:
/* 0x8008aab4 */ sh	$v1,92($sp)
.L8008aab8:
/* 0x8008aab8 */ sh	$a0,94($sp)
.L8008aabc:
/* 0x8008aabc */ lw	$v1,1888($s0)
.L8008aac0:
/* 0x8008aac0 */ addiu	$v0,$zero,-1
.L8008aac4:
/* 0x8008aac4 */ beq	$v1,$v0,.L8008aaf0
.L8008aac8:
/* 0x8008aac8 */ lui	$v0,0x800f
.L8008aacc:
/* 0x8008aacc */ lw	$v0,10488($v0)
.L8008aad0:
/* 0x8008aad0 */ sll	$zero,$zero,0x0
.L8008aad4:
/* 0x8008aad4 */ subu	$a3,$v0,$v1
.L8008aad8:
/* 0x8008aad8 */ slti	$v0,$a3,60
.L8008aadc:
/* 0x8008aadc */ beq	$v0,$zero,.L8008aaec
.L8008aae0:
/* 0x8008aae0 */ addiu	$v0,$zero,54
.L8008aae4:
/* 0x8008aae4 */ j	0x8008aaf0
.L8008aae8:
/* 0x8008aae8 */ subu	$s1,$v0,$a3
.L8008aaec:
/* 0x8008aaec */ addiu	$s1,$a3,-90
.L8008aaf0:
/* 0x8008aaf0 */ slt	$v0,$s4,$s1
.L8008aaf4:
/* 0x8008aaf4 */ beq	$v0,$zero,.L8008ab00
.L8008aaf8:
/* 0x8008aaf8 */ sll	$zero,$zero,0x0
.L8008aafc:
/* 0x8008aafc */ addu	$s1,$s4,$zero
.L8008ab00:
/* 0x8008ab00 */ bgez	$s1,.L8008ab10
.L8008ab04:
/* 0x8008ab04 */ slt	$v0,$s4,$s1
.L8008ab08:
/* 0x8008ab08 */ addu	$s1,$zero,$zero
.L8008ab0c:
/* 0x8008ab0c */ slt	$v0,$s4,$s1
.L8008ab10:
/* 0x8008ab10 */ bne	$v0,$zero,.L8008ab2c
.L8008ab14:
/* 0x8008ab14 */ sll	$v0,$s1,0x5
.L8008ab18:
/* 0x8008ab18 */ div	$zero,$v0,$s4
.L8008ab1c:
/* 0x8008ab1c */ mflo	$v0
.L8008ab20:
/* 0x8008ab20 */ addiu	$v1,$zero,32
.L8008ab24:
/* 0x8008ab24 */ j	0x8008ab30
.L8008ab28:
/* 0x8008ab28 */ subu	$s4,$v1,$v0
.L8008ab2c:
/* 0x8008ab2c */ addu	$s4,$zero,$zero
.L8008ab30:
/* 0x8008ab30 */ addu	$s1,$zero,$zero
.L8008ab34:
/* 0x8008ab34 */ addu	$a0,$s5,$zero
.L8008ab38:
/* 0x8008ab38 */ addu	$a1,$s2,$zero
.L8008ab3c:
/* 0x8008ab3c */ sll	$v0,$s1,0x4
.L8008ab40:
/* 0x8008ab40 */ addiu	$s0,$sp,32
.L8008ab44:
/* 0x8008ab44 */ addu	$s0,$s0,$v0
.L8008ab48:
/* 0x8008ab48 */ addiu	$s1,$s1,1
.L8008ab4c:
/* 0x8008ab4c */ lh	$a2,0($s0)
.L8008ab50:
/* 0x8008ab50 */ lh	$v0,2($s3)
.L8008ab54:
/* 0x8008ab54 */ lhu	$a3,2($s0)
.L8008ab58:
/* 0x8008ab58 */ lh	$v1,4($s3)
.L8008ab5c:
/* 0x8008ab5c */ addiu	$a2,$a2,288
.L8008ab60:
/* 0x8008ab60 */ addu	$a2,$v0,$a2
.L8008ab64:
/* 0x8008ab64 */ sll	$a3,$a3,0x10
.L8008ab68:
/* 0x8008ab68 */ sra	$a3,$a3,0x10
.L8008ab6c:
/* 0x8008ab6c */ addiu	$a3,$a3,28
.L8008ab70:
/* 0x8008ab70 */ lhu	$v0,4($s0)
.L8008ab74:
/* 0x8008ab74 */ addu	$a3,$v1,$a3
.L8008ab78:
/* 0x8008ab78 */ sll	$v0,$v0,0x10
.L8008ab7c:
/* 0x8008ab7c */ sra	$v0,$v0,0x10
.L8008ab80:
/* 0x8008ab80 */ sw	$v0,16($sp)
.L8008ab84:
/* 0x8008ab84 */ lhu	$v1,6($s0)
.L8008ab88:
/* 0x8008ab88 */ addiu	$v0,$zero,1
.L8008ab8c:
/* 0x8008ab8c */ sw	$v0,24($sp)
.L8008ab90:
/* 0x8008ab90 */ addiu	$v0,$zero,-1
.L8008ab94:
/* 0x8008ab94 */ sw	$v0,28($sp)
.L8008ab98:
/* 0x8008ab98 */ sll	$v1,$v1,0x10
.L8008ab9c:
/* 0x8008ab9c */ sra	$v1,$v1,0x10
.L8008aba0:
/* 0x8008aba0 */ jal	0x80048144
.L8008aba4:
/* 0x8008aba4 */ sw	$v1,20($sp)
.L8008aba8:
/* 0x8008aba8 */ addu	$a0,$s5,$zero
.L8008abac:
/* 0x8008abac */ lh	$a2,14($s3)
.L8008abb0:
/* 0x8008abb0 */ lh	$a3,16($s3)
.L8008abb4:
/* 0x8008abb4 */ jal	0x80049208
.L8008abb8:
/* 0x8008abb8 */ addu	$a1,$s2,$zero
.L8008abbc:
/* 0x8008abbc */ addu	$a0,$s5,$zero
.L8008abc0:
/* 0x8008abc0 */ addu	$a1,$s2,$zero
.L8008abc4:
/* 0x8008abc4 */ addiu	$v1,$s4,300
.L8008abc8:
/* 0x8008abc8 */ lh	$a2,8($s0)
.L8008abcc:
/* 0x8008abcc */ lh	$a3,10($s0)
.L8008abd0:
/* 0x8008abd0 */ lh	$v0,12($s0)
.L8008abd4:
/* 0x8008abd4 */ addu	$a2,$a2,$v1
.L8008abd8:
/* 0x8008abd8 */ sw	$v0,16($sp)
.L8008abdc:
/* 0x8008abdc */ lh	$v0,14($s0)
.L8008abe0:
/* 0x8008abe0 */ addiu	$a3,$a3,-175
.L8008abe4:
/* 0x8008abe4 */ jal	0x80049364
.L8008abe8:
/* 0x8008abe8 */ sw	$v0,20($sp)
.L8008abec:
/* 0x8008abec */ addu	$a0,$s5,$zero
.L8008abf0:
/* 0x8008abf0 */ addu	$a1,$s2,$zero
.L8008abf4:
/* 0x8008abf4 */ addiu	$a2,$zero,128
.L8008abf8:
/* 0x8008abf8 */ addu	$a3,$a2,$zero
.L8008abfc:
/* 0x8008abfc */ addu	$v0,$a2,$zero
.L8008ac00:
/* 0x8008ac00 */ jal	0x800490f8
.L8008ac04:
/* 0x8008ac04 */ sw	$v0,16($sp)
.L8008ac08:
/* 0x8008ac08 */ sltiu	$v0,$s1,4
.L8008ac0c:
/* 0x8008ac0c */ bne	$v0,$zero,.L8008ab34
.L8008ac10:
/* 0x8008ac10 */ addiu	$s2,$s2,1
.L8008ac14:
/* 0x8008ac14 */ addu	$v0,$s2,$zero
.L8008ac18:
/* 0x8008ac18 */ lw	$ra,120($sp)
.L8008ac1c:
/* 0x8008ac1c */ lw	$s5,116($sp)
.L8008ac20:
/* 0x8008ac20 */ lw	$s4,112($sp)
.L8008ac24:
/* 0x8008ac24 */ lw	$s3,108($sp)
.L8008ac28:
/* 0x8008ac28 */ lw	$s2,104($sp)
.L8008ac2c:
/* 0x8008ac2c */ lw	$s1,100($sp)
.L8008ac30:
/* 0x8008ac30 */ lw	$s0,96($sp)
.L8008ac34:
/* 0x8008ac34 */ jr	$ra
.L8008ac38:
/* 0x8008ac38 */ addiu	$sp,$sp,128
.size FUN_8008a9d8, .-FUN_8008a9d8
