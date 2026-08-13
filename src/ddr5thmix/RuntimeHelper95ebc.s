.set noreorder
.set noat
.set nomacro

.section .text.FUN_80095ebc
.globl FUN_80095ebc
.type FUN_80095ebc, @function
FUN_80095ebc:
/* Runtime resource and state helper. */
.L80095ebc:
/* 0x80095ebc */ addiu	$sp,$sp,-40
.L80095ec0:
/* 0x80095ec0 */ sw	$s4,32($sp)
.L80095ec4:
/* 0x80095ec4 */ addu	$s4,$a0,$zero
.L80095ec8:
/* 0x80095ec8 */ sw	$s0,16($sp)
.L80095ecc:
/* 0x80095ecc */ addu	$s0,$a1,$zero
.L80095ed0:
/* 0x80095ed0 */ sw	$s3,28($sp)
.L80095ed4:
/* 0x80095ed4 */ addu	$s3,$zero,$zero
.L80095ed8:
/* 0x80095ed8 */ addiu	$v0,$zero,-1
.L80095edc:
/* 0x80095edc */ sw	$ra,36($sp)
.L80095ee0:
/* 0x80095ee0 */ sw	$s2,24($sp)
.L80095ee4:
/* 0x80095ee4 */ beq	$s4,$v0,.L80095f08
.L80095ee8:
/* 0x80095ee8 */ sw	$s1,20($sp)
.L80095eec:
/* 0x80095eec */ jal	0x8007f0a4
.L80095ef0:
/* 0x80095ef0 */ sll	$zero,$zero,0x0
.L80095ef4:
/* 0x80095ef4 */ addu	$s3,$v0,$zero
.L80095ef8:
/* 0x80095ef8 */ bne	$s3,$zero,.L80095f0c
.L80095efc:
/* 0x80095efc */ addiu	$s2,$s0,1
.L80095f00:
/* 0x80095f00 */ j 0x80095fe0
.L80095f04:
/* 0x80095f04 */ addiu	$v0,$zero,-1
.L80095f08:
/* 0x80095f08 */ addiu	$s2,$s0,1
.L80095f0c:
/* 0x80095f0c */ slti	$v0,$s2,15
.L80095f10:
/* 0x80095f10 */ beq	$v0,$zero,.L80095fdc
.L80095f14:
/* 0x80095f14 */ lui	$v1,0x8011
.L80095f18:
/* 0x80095f18 */ addiu	$v1,$v1,20984
.L80095f1c:
/* 0x80095f1c */ sll	$v0,$s2,0x2
.L80095f20:
/* 0x80095f20 */ addu	$v0,$v0,$s2
.L80095f24:
/* 0x80095f24 */ sll	$v0,$v0,0x2
.L80095f28:
/* 0x80095f28 */ addu	$v0,$v0,$s2
.L80095f2c:
/* 0x80095f2c */ sll	$v0,$v0,0x1
.L80095f30:
/* 0x80095f30 */ addu	$s1,$v0,$v1
.L80095f34:
/* 0x80095f34 */ lh	$a0,38($s1)
.L80095f38:
/* 0x80095f38 */ jal	0x8007f0a4
.L80095f3c:
/* 0x80095f3c */ sll	$zero,$zero,0x0
.L80095f40:
/* 0x80095f40 */ jal	0x8007ef38
.L80095f44:
/* 0x80095f44 */ addu	$a0,$v0,$zero
.L80095f48:
/* 0x80095f48 */ bne	$v0,$zero,.L80095fcc
.L80095f4c:
/* 0x80095f4c */ sll	$zero,$zero,0x0
.L80095f50:
/* 0x80095f50 */ bgez	$s4,.L80095f68
.L80095f54:
/* 0x80095f54 */ sll	$zero,$zero,0x0
.L80095f58:
/* 0x80095f58 */ lh	$v0,38($s1)
.L80095f5c:
/* 0x80095f5c */ sll	$zero,$zero,0x0
.L80095f60:
/* 0x80095f60 */ bgtz	$v0,.L80095f84
.L80095f64:
/* 0x80095f64 */ sll	$zero,$zero,0x0
.L80095f68:
/* 0x80095f68 */ beq	$s3,$zero,.L80095fcc
.L80095f6c:
/* 0x80095f6c */ sll	$zero,$zero,0x0
.L80095f70:
/* 0x80095f70 */ lhu	$v1,0($s3)
.L80095f74:
/* 0x80095f74 */ lh	$v0,38($s1)
.L80095f78:
/* 0x80095f78 */ sll	$zero,$zero,0x0
.L80095f7c:
/* 0x80095f7c */ bne	$v1,$v0,.L80095fcc
.L80095f80:
/* 0x80095f80 */ sll	$zero,$zero,0x0
.L80095f84:
/* 0x80095f84 */ lbu	$s0,40($s1)
.L80095f88:
/* 0x80095f88 */ jal	0x80085558
.L80095f8c:
/* 0x80095f8c */ sll	$zero,$zero,0x0
.L80095f90:
/* 0x80095f90 */ addu	$v1,$v0,$zero
.L80095f94:
/* 0x80095f94 */ bltz	$v1,.L80095fc0
.L80095f98:
/* 0x80095f98 */ slti	$v0,$v1,2
.L80095f9c:
/* 0x80095f9c */ bne	$v0,$zero,.L80095fc4
.L80095fa0:
/* 0x80095fa0 */ sltiu	$v0,$s0,2
.L80095fa4:
/* 0x80095fa4 */ addiu	$v0,$zero,2
.L80095fa8:
/* 0x80095fa8 */ beq	$v1,$v0,.L80095fb8
.L80095fac:
/* 0x80095fac */ xori	$v0,$s0,0x2
.L80095fb0:
/* 0x80095fb0 */ j 0x80095fc4
.L80095fb4:
/* 0x80095fb4 */ addu	$v0,$zero,$zero
.L80095fb8:
/* 0x80095fb8 */ j 0x80095fc4
.L80095fbc:
/* 0x80095fbc */ sltiu	$v0,$v0,1
.L80095fc0:
/* 0x80095fc0 */ addu	$v0,$zero,$zero
.L80095fc4:
/* 0x80095fc4 */ bne	$v0,$zero,.L80095fe0
.L80095fc8:
/* 0x80095fc8 */ addu	$v0,$s2,$zero
.L80095fcc:
/* 0x80095fcc */ addiu	$s2,$s2,1
.L80095fd0:
/* 0x80095fd0 */ slti	$v0,$s2,15
.L80095fd4:
/* 0x80095fd4 */ bne	$v0,$zero,.L80095f34
.L80095fd8:
/* 0x80095fd8 */ addiu	$s1,$s1,42
.L80095fdc:
/* 0x80095fdc */ addiu	$v0,$zero,-1
.L80095fe0:
/* 0x80095fe0 */ lw	$ra,36($sp)
.L80095fe4:
/* 0x80095fe4 */ lw	$s4,32($sp)
.L80095fe8:
/* 0x80095fe8 */ lw	$s3,28($sp)
.L80095fec:
/* 0x80095fec */ lw	$s2,24($sp)
.L80095ff0:
/* 0x80095ff0 */ lw	$s1,20($sp)
.L80095ff4:
/* 0x80095ff4 */ lw	$s0,16($sp)
.L80095ff8:
/* 0x80095ff8 */ jr	$ra
.L80095ffc:
/* 0x80095ffc */ addiu	$sp,$sp,40
.size FUN_80095ebc, .-FUN_80095ebc

