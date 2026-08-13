.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007f218
.globl FUN_8007f218
.type FUN_8007f218, @function
FUN_8007f218:
/* Runtime callback and indexed record update helper. */
/* 0x8007f218 */ addiu	$sp,$sp,-32
/* 0x8007f21c */ sw	$s0,16($sp)
/* 0x8007f220 */ addu $s0,$a0,$zero
/* 0x8007f224 */ sw	$ra,24($sp)
/* 0x8007f228 */ jal	0x8002829c
/* 0x8007f22c */ sw	$s1,20($sp)
/* 0x8007f230 */ bne $v0,$zero,.L8007f24c
/* 0x8007f234 */ lui	$v1,0x8011
/* 0x8007f238 */ lw	$v0,10700($v1)
/* 0x8007f23c */ nop
/* 0x8007f240 */ blez	$v0,.L8007f24c
/* 0x8007f244 */ addiu $v0,$zero,-1
/* 0x8007f248 */ sw	$v0,10700($v1)
.L8007f24c:
/* 0x8007f24c */ bgez	$s0,.L8007f278
/* 0x8007f250 */ lui	$s1,0x8011
/* 0x8007f254 */ lui	$v0,0x8011
/* 0x8007f258 */ lw	$v1,10700($v0)
/* 0x8007f25c */ addiu $v0,$zero,-1
/* 0x8007f260 */ beq	$v1,$v0,.L8007f278
/* 0x8007f264 */ nop
/* 0x8007f268 */ jal	0x80025b18
/* 0x8007f26c */ addu $a0,$zero,$zero
/* 0x8007f270 */ j	0x8007f2d0
/* 0x8007f274 */ nop
.L8007f278:
/* 0x8007f278 */ lw	$v1,10700($s1)
/* 0x8007f27c */ nop
/* 0x8007f280 */ beq	$v1,$s0,.L8007f2c4
/* 0x8007f284 */ addiu $v0,$zero,-1
/* 0x8007f288 */ beq	$v1,$v0,.L8007f29c
/* 0x8007f28c */ lui	$v1,0x800e
/* 0x8007f290 */ jal	0x80025b18
/* 0x8007f294 */ addu $a0,$zero,$zero
/* 0x8007f298 */ lui	$v1,0x800e
.L8007f29c:
/* 0x8007f29c */ lw	$v0,-1692($v1)
/* 0x8007f2a0 */ nop
/* 0x8007f2a4 */ bgtz	$v0,.L8007f2cc
/* 0x8007f2a8 */ addiu	$v0,$v0,-1
/* 0x8007f2ac */ sw	$s0,10700($s1)
/* 0x8007f2b0 */ addu $a0,$s0,$zero
/* 0x8007f2b4 */ jal	0x800280c8
/* 0x8007f2b8 */ addu $a1,$zero,$zero
/* 0x8007f2bc */ j	0x8007f2d0
/* 0x8007f2c0 */ nop
.L8007f2c4:
/* 0x8007f2c4 */ lui	$v1,0x800e
/* 0x8007f2c8 */ addiu $v0,$zero,12
.L8007f2cc:
/* 0x8007f2cc */ sw	$v0,-1692($v1)
.L8007f2d0:
/* 0x8007f2d0 */ lw	$ra,24($sp)
/* 0x8007f2d4 */ lw	$s1,20($sp)
/* 0x8007f2d8 */ lw	$s0,16($sp)
/* 0x8007f2dc */ jr $ra
/* 0x8007f2e0 */ addiu	$sp,$sp,32
.size FUN_8007f218, .-FUN_8007f218



