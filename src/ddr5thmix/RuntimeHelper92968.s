.set noreorder
.set noat
.set nomacro

.section .text.FUN_80092968
.globl FUN_80092968
.type FUN_80092968, @function
FUN_80092968:
/* Runtime resource and state helper. */
.L80092968:
/* 0x80092968 */ addiu	$sp,$sp,-40
.L8009296c:
/* 0x8009296c */ sw	$s1,28($sp)
.L80092970:
/* 0x80092970 */ addu	$s1,$a0,$zero
.L80092974:
/* 0x80092974 */ sw	$s0,24($sp)
.L80092978:
/* 0x80092978 */ addu	$s0,$a2,$zero
.L8009297c:
/* 0x8009297c */ addiu	$v0,$zero,1
.L80092980:
/* 0x80092980 */ beq	$a1,$v0,.L8009299c
.L80092984:
/* 0x80092984 */ sw	$ra,32($sp)
.L80092988:
/* 0x80092988 */ addiu	$v0,$zero,2
.L8009298c:
/* 0x8009298c */ beq	$a1,$v0,.L80092a60
.L80092990:
/* 0x80092990 */ addiu	$v0,$zero,-1
.L80092994:
/* 0x80092994 */ j 0x80092a6c
.L80092998:
/* 0x80092998 */ sll	$zero,$zero,0x0
.L8009299c:
/* 0x8009299c */ addu	$v1,$zero,$zero
.L800929a0:
/* 0x800929a0 */ lui	$v0,0x8011
.L800929a4:
/* 0x800929a4 */ addiu	$a0,$v0,17320
.L800929a8:
/* 0x800929a8 */ lw	$v0,8($a0)
.L800929ac:
/* 0x800929ac */ sll	$zero,$zero,0x0
.L800929b0:
/* 0x800929b0 */ beq	$v0,$s1,.L800929cc
.L800929b4:
/* 0x800929b4 */ addiu	$v0,$zero,150
.L800929b8:
/* 0x800929b8 */ addiu	$v1,$v1,1
.L800929bc:
/* 0x800929bc */ slti	$v0,$v1,150
.L800929c0:
/* 0x800929c0 */ bne	$v0,$zero,.L800929a8
.L800929c4:
/* 0x800929c4 */ addiu	$a0,$a0,12
.L800929c8:
/* 0x800929c8 */ addiu	$v0,$zero,150
.L800929cc:
/* 0x800929cc */ beq	$v1,$v0,.L80092a58
.L800929d0:
/* 0x800929d0 */ addiu	$a0,$zero,-1
.L800929d4:
/* 0x800929d4 */ jal	0x8007ee38
.L800929d8:
/* 0x800929d8 */ addu	$a0,$s1,$zero
.L800929dc:
/* 0x800929dc */ jal	0x8007f14c
.L800929e0:
/* 0x800929e0 */ addu	$a0,$v0,$zero
.L800929e4:
/* 0x800929e4 */ lui	$a2,0x8017
.L800929e8:
/* 0x800929e8 */ ori	$a2,$a2,0x4000
.L800929ec:
/* 0x800929ec */ addiu	$a1,$zero,-31968
.L800929f0:
/* 0x800929f0 */ andi	$v1,$s0,0xf
.L800929f4:
/* 0x800929f4 */ ori	$v1,$v1,0x1f0
.L800929f8:
/* 0x800929f8 */ lui	$a0,0x8017
.L800929fc:
/* 0x800929fc */ lw	$a0,16412($a0)
.L80092a00:
/* 0x80092a00 */ addiu	$a3,$zero,912
.L80092a04:
/* 0x80092a04 */ sw	$v1,16($sp)
.L80092a08:
/* 0x80092a08 */ addu	$a2,$a0,$a2
.L80092a0c:
/* 0x80092a0c */ sll	$a0,$v0,0x2
.L80092a10:
/* 0x80092a10 */ addu	$a0,$a0,$v0
.L80092a14:
/* 0x80092a14 */ sll	$a0,$a0,0x3
.L80092a18:
/* 0x80092a18 */ addu	$a0,$a0,$v0
.L80092a1c:
/* 0x80092a1c */ sll	$a0,$a0,0x6
.L80092a20:
/* 0x80092a20 */ addu	$a0,$a2,$a0
.L80092a24:
/* 0x80092a24 */ sll	$a2,$s0,0x2
.L80092a28:
/* 0x80092a28 */ addu	$a2,$a2,$s0
.L80092a2c:
/* 0x80092a2c */ sll	$a2,$a2,0x3
.L80092a30:
/* 0x80092a30 */ addiu	$a2,$a2,256
.L80092a34:
/* 0x80092a34 */ sll	$a2,$a2,0x10
.L80092a38:
/* 0x80092a38 */ jal	0x800223a8
.L80092a3c:
/* 0x80092a3c */ sra	$a2,$a2,0x10
.L80092a40:
/* 0x80092a40 */ addu	$a0,$zero,$zero
.L80092a44:
/* 0x80092a44 */ lui	$v1,0x8011
.L80092a48:
/* 0x80092a48 */ addiu	$v1,$v1,20936
.L80092a4c:
/* 0x80092a4c */ sll	$v0,$s0,0x1
.L80092a50:
/* 0x80092a50 */ addu	$v0,$v0,$v1
.L80092a54:
/* 0x80092a54 */ sb	$s1,0($v0)
.L80092a58:
/* 0x80092a58 */ j 0x80092a6c
.L80092a5c:
/* 0x80092a5c */ addu	$v0,$a0,$zero
.L80092a60:
/* 0x80092a60 */ addu	$a0,$s1,$zero
.L80092a64:
/* 0x80092a64 */ jal	0x80092854
.L80092a68:
/* 0x80092a68 */ addu	$a1,$s0,$zero
.L80092a6c:
/* 0x80092a6c */ lw	$ra,32($sp)
.L80092a70:
/* 0x80092a70 */ lw	$s1,28($sp)
.L80092a74:
/* 0x80092a74 */ lw	$s0,24($sp)
.L80092a78:
/* 0x80092a78 */ jr	$ra
.L80092a7c:
/* 0x80092a7c */ addiu	$sp,$sp,40
.size FUN_80092968, .-FUN_80092968

