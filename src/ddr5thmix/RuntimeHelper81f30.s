.set noreorder
.set noat
.set nomacro

.section .text.FUN_80081f30
.globl FUN_80081f30
.type FUN_80081f30, @function
FUN_80081f30:
/* Runtime cleanup and state classification helper. */
/* 0x80081f30 */ lw	$v0,24($a0)
/* 0x80081f34 */ nop
/* 0x80081f38 */ beq $v0,$zero,.L80082044
/* 0x80081f3c */ addu $v0,$zero,$zero
/* 0x80081f40 */ lh	$v0,34($a0)
/* 0x80081f44 */ nop
/* 0x80081f48 */ bne $v0,$zero,.L80082044
/* 0x80081f4c */ addiu $t2,$zero,1
/* 0x80081f50 */ addu $t1,$t2,$zero
/* 0x80081f54 */ addu $a2,$zero,$zero
/* 0x80081f58 */ addu $a1,$a2,$zero
/* 0x80081f5c */ lui	$v0,0x8002
/* 0x80081f60 */ addiu	$t0,$v0,-8344
/* 0x80081f64 */ addu $a3,$a0,$zero
.L80081f68:
/* 0x80081f68 */ lw	$v1,0($a3)
/* 0x80081f6c */ lw	$v0,0($t0)
/* 0x80081f70 */ nop
/* 0x80081f74 */ mult	$v1,$v0
/* 0x80081f78 */ mflo	$t3
/* 0x80081f7c */ beq $v1,$zero,.L80081fa0
/* 0x80081f80 */ addu	$a2,$a2,$t3
/* 0x80081f84 */ slti	$v0,$a1,2
/* 0x80081f88 */ bne $v0,$zero,.L80081f94
/* 0x80081f8c */ nop
/* 0x80081f90 */ addu $t1,$zero,$zero
.L80081f94:
/* 0x80081f94 */ blez	$a1,.L80081fa0
/* 0x80081f98 */ nop
/* 0x80081f9c */ addu $t2,$zero,$zero
.L80081fa0:
/* 0x80081fa0 */ addiu	$t0,$t0,4
/* 0x80081fa4 */ addiu	$a1,$a1,1
/* 0x80081fa8 */ slti	$v0,$a1,6
/* 0x80081fac */ bne $v0,$zero,.L80081f68
/* 0x80081fb0 */ addiu	$a3,$a3,4
/* 0x80081fb4 */ lui	$v0,0x8002
/* 0x80081fb8 */ lw	$v1,24($a0)
/* 0x80081fbc */ lw	$v0,-8320($v0)
/* 0x80081fc0 */ nop
/* 0x80081fc4 */ mult	$v1,$v0
/* 0x80081fc8 */ sll	$v0,$a2,0x1
/* 0x80081fcc */ addu	$v0,$v0,$a2
/* 0x80081fd0 */ sll	$v0,$v0,0x3
/* 0x80081fd4 */ mflo	$a1
/* 0x80081fd8 */ addu	$v0,$v0,$a2
/* 0x80081fdc */ sll	$v0,$v0,0x2
/* 0x80081fe0 */ div	$zero,$v0,$a1
/* 0x80081fe4 */ mflo	$a2
/* 0x80081fe8 */ beq $t1,$zero,.L80082000
/* 0x80081fec */ addiu $v1,$zero,6
/* 0x80081ff0 */ beq $t2,$zero,.L80082030
/* 0x80081ff4 */ addiu $v1,$zero,2
/* 0x80081ff8 */ j	0x80082030
/* 0x80081ffc */ addiu $v1,$zero,1
.L80082000:
/* 0x80082000 */ slti	$v0,$a2,90
/* 0x80082004 */ bne $v0,$zero,.L80082014
/* 0x80082008 */ slti	$v0,$a2,82
/* 0x8008200c */ j	0x80082030
/* 0x80082010 */ addiu $v1,$zero,3
.L80082014:
/* 0x80082014 */ bne $v0,$zero,.L80082024
/* 0x80082018 */ slti	$v0,$a2,75
/* 0x8008201c */ j	0x80082030
/* 0x80082020 */ addiu $v1,$zero,4
.L80082024:
/* 0x80082024 */ bne $v0,$zero,.L80082034
/* 0x80082028 */ slti	$v0,$v1,7
/* 0x8008202c */ addiu $v1,$zero,5
.L80082030:
/* 0x80082030 */ slti	$v0,$v1,7
.L80082034:
/* 0x80082034 */ bne $v0,$zero,.L80082044
/* 0x80082038 */ addu $v0,$v1,$zero
/* 0x8008203c */ addiu $v1,$zero,6
/* 0x80082040 */ addu $v0,$v1,$zero
.L80082044:
/* 0x80082044 */ jr $ra
/* 0x80082048 */ nop
.size FUN_80081f30, .-FUN_80081f30



