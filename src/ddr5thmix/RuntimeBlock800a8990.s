.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a8990
.globl FUN_800a8990
.type FUN_800a8990, @function
FUN_800a8990:
.L800a8990:
/* 0x800a8990 */ lbu	$v0,16($sp)
.L800a8994:
/* 0x800a8994 */ lbu	$v1,28($sp)
.L800a8998:
/* 0x800a8998 */ sll	$zero,$zero,0x0
.L800a899c:
/* 0x800a899c */ mult	$v0,$v1
.L800a89a0:
/* 0x800a89a0 */ mflo	$t2
.L800a89a4:
/* 0x800a89a4 */ lbu	$v0,20($sp)
.L800a89a8:
/* 0x800a89a8 */ sll	$zero,$zero,0x0
.L800a89ac:
/* 0x800a89ac */ mult	$v0,$v1
.L800a89b0:
/* 0x800a89b0 */ lui	$t4,0x800e
.L800a89b4:
/* 0x800a89b4 */ lw	$t1,22064($t4)
.L800a89b8:
/* 0x800a89b8 */ lw	$t5,32($sp)
.L800a89bc:
/* 0x800a89bc */ lbu	$t0,24($sp)
.L800a89c0:
/* 0x800a89c0 */ sh	$a0,8($t1)
.L800a89c4:
/* 0x800a89c4 */ mflo	$t3
.L800a89c8:
/* 0x800a89c8 */ sh	$a1,10($t1)
.L800a89cc:
/* 0x800a89cc */ sh	$a2,12($t1)
.L800a89d0:
/* 0x800a89d0 */ mult	$t0,$v1
.L800a89d4:
/* 0x800a89d4 */ sh	$a3,14($t1)
.L800a89d8:
/* 0x800a89d8 */ addiu	$v0,$t1,16
.L800a89dc:
/* 0x800a89dc */ sw	$v0,22064($t4)
.L800a89e0:
/* 0x800a89e0 */ addiu	$v0,$zero,3
.L800a89e4:
/* 0x800a89e4 */ sb	$v0,3($t1)
.L800a89e8:
/* 0x800a89e8 */ addiu	$v0,$zero,64
.L800a89ec:
/* 0x800a89ec */ sb	$v0,7($t1)
.L800a89f0:
/* 0x800a89f0 */ sra	$v0,$t2,0x7
.L800a89f4:
/* 0x800a89f4 */ sb	$v0,4($t1)
.L800a89f8:
/* 0x800a89f8 */ sra	$v0,$t3,0x7
.L800a89fc:
/* 0x800a89fc */ sb	$v0,5($t1)
.L800a8a00:
/* 0x800a8a00 */ mflo	$v1
.L800a8a04:
/* 0x800a8a04 */ sra	$v0,$v1,0x7
.L800a8a08:
/* 0x800a8a08 */ sb	$v0,6($t1)
.L800a8a0c:
/* 0x800a8a0c */ lui	$v0,0x8000
.L800a8a10:
/* 0x800a8a10 */ and	$a1,$t5,$v0
.L800a8a14:
/* 0x800a8a14 */ beq	$a1,$zero,.L800a8a2c
.L800a8a18:
/* 0x800a8a18 */ lui	$a2,0xff
.L800a8a1c:
/* 0x800a8a1c */ lbu	$v0,7($t1)
.L800a8a20:
/* 0x800a8a20 */ sll	$zero,$zero,0x0
.L800a8a24:
/* 0x800a8a24 */ ori	$v0,$v0,0x2
.L800a8a28:
/* 0x800a8a28 */ sb	$v0,7($t1)
.L800a8a2c:
/* 0x800a8a2c */ ori	$a2,$a2,0xffff
.L800a8a30:
/* 0x800a8a30 */ and	$v0,$t5,$a2
.L800a8a34:
/* 0x800a8a34 */ lui	$t2,0x800e
.L800a8a38:
/* 0x800a8a38 */ sll	$t0,$v0,0x2
.L800a8a3c:
/* 0x800a8a3c */ lui	$a3,0xff00
.L800a8a40:
/* 0x800a8a40 */ lw	$a0,10984($t2)
.L800a8a44:
/* 0x800a8a44 */ lw	$v1,0($t1)
.L800a8a48:
/* 0x800a8a48 */ addu	$a0,$t0,$a0
.L800a8a4c:
/* 0x800a8a4c */ lw	$v0,0($a0)
.L800a8a50:
/* 0x800a8a50 */ and	$v1,$v1,$a3
.L800a8a54:
/* 0x800a8a54 */ and	$v0,$v0,$a2
.L800a8a58:
/* 0x800a8a58 */ or	$v1,$v1,$v0
.L800a8a5c:
/* 0x800a8a5c */ sw	$v1,0($t1)
.L800a8a60:
/* 0x800a8a60 */ lw	$v0,0($a0)
.L800a8a64:
/* 0x800a8a64 */ and	$v1,$t1,$a2
.L800a8a68:
/* 0x800a8a68 */ and	$v0,$v0,$a3
.L800a8a6c:
/* 0x800a8a6c */ or	$v0,$v0,$v1
.L800a8a70:
/* 0x800a8a70 */ beq	$a1,$zero,.L800a8acc
.L800a8a74:
/* 0x800a8a74 */ sw	$v0,0($a0)
.L800a8a78:
/* 0x800a8a78 */ lw	$a0,22064($t4)
.L800a8a7c:
/* 0x800a8a7c */ lui	$v1,0xe100
.L800a8a80:
/* 0x800a8a80 */ addiu	$v0,$a0,8
.L800a8a84:
/* 0x800a8a84 */ sw	$v0,22064($t4)
.L800a8a88:
/* 0x800a8a88 */ addiu	$v0,$zero,1
.L800a8a8c:
/* 0x800a8a8c */ sb	$v0,3($a0)
.L800a8a90:
/* 0x800a8a90 */ lw	$a1,10984($t2)
.L800a8a94:
/* 0x800a8a94 */ ori	$v1,$v1,0x220
.L800a8a98:
/* 0x800a8a98 */ sw	$v1,4($a0)
.L800a8a9c:
/* 0x800a8a9c */ lw	$v1,0($a0)
.L800a8aa0:
/* 0x800a8aa0 */ addu	$a1,$t0,$a1
.L800a8aa4:
/* 0x800a8aa4 */ lw	$v0,0($a1)
.L800a8aa8:
/* 0x800a8aa8 */ and	$v1,$v1,$a3
.L800a8aac:
/* 0x800a8aac */ and	$v0,$v0,$a2
.L800a8ab0:
/* 0x800a8ab0 */ or	$v1,$v1,$v0
.L800a8ab4:
/* 0x800a8ab4 */ sw	$v1,0($a0)
.L800a8ab8:
/* 0x800a8ab8 */ lw	$v0,0($a1)
.L800a8abc:
/* 0x800a8abc */ and	$a0,$a0,$a2
.L800a8ac0:
/* 0x800a8ac0 */ and	$v0,$v0,$a3
.L800a8ac4:
/* 0x800a8ac4 */ or	$v0,$v0,$a0
.L800a8ac8:
/* 0x800a8ac8 */ sw	$v0,0($a1)
.L800a8acc:
/* 0x800a8acc */ jr	$ra
.L800a8ad0:
/* 0x800a8ad0 */ sll	$zero,$zero,0x0
.size FUN_800a8990, .-FUN_800a8990
