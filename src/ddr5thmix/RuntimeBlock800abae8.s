.set noreorder
.set noat
.set nomacro

.section .text.FUN_800abae8
.globl FUN_800abae8
.type FUN_800abae8, @function
FUN_800abae8:
.L800abae8:
/* 0x800abae8 */ addiu	$sp,$sp,-88
.L800abaec:
/* 0x800abaec */ sw	$s1,52($sp)
.L800abaf0:
/* 0x800abaf0 */ addu	$s1,$zero,$zero
.L800abaf4:
/* 0x800abaf4 */ sw	$s7,76($sp)
.L800abaf8:
/* 0x800abaf8 */ sb	$a1,32($sp)
.L800abafc:
/* 0x800abafc */ andi	$s7,$a1,0xff
.L800abb00:
/* 0x800abb00 */ sw	$s8,80($sp)
.L800abb04:
/* 0x800abb04 */ addiu	$s8,$zero,1
.L800abb08:
/* 0x800abb08 */ lui	$v0,0x800e
.L800abb0c:
/* 0x800abb0c */ lw	$v0,2840($v0)
.L800abb10:
/* 0x800abb10 */ addiu	$t0,$zero,-84
.L800abb14:
/* 0x800abb14 */ sw	$ra,84($sp)
.L800abb18:
/* 0x800abb18 */ sw	$s6,72($sp)
.L800abb1c:
/* 0x800abb1c */ sw	$s5,68($sp)
.L800abb20:
/* 0x800abb20 */ sw	$s4,64($sp)
.L800abb24:
/* 0x800abb24 */ sw	$s3,60($sp)
.L800abb28:
/* 0x800abb28 */ sw	$s2,56($sp)
.L800abb2c:
/* 0x800abb2c */ sw	$s0,48($sp)
.L800abb30:
/* 0x800abb30 */ sw	$a0,88($sp)
.L800abb34:
/* 0x800abb34 */ sw	$t0,44($sp)
.L800abb38:
/* 0x800abb38 */ addiu	$v0,$v0,4880
.L800abb3c:
/* 0x800abb3c */ sw	$v0,36($sp)
.L800abb40:
/* 0x800abb40 */ addiu	$v0,$zero,5
.L800abb44:
/* 0x800abb44 */ subu	$v0,$v0,$s1
.L800abb48:
/* 0x800abb48 */ sll	$v0,$v0,0x1
.L800abb4c:
/* 0x800abb4c */ lw	$t0,88($sp)
.L800abb50:
/* 0x800abb50 */ addiu	$v0,$v0,-12
.L800abb54:
/* 0x800abb54 */ addu	$v0,$t0,$v0
.L800abb58:
/* 0x800abb58 */ addu	$a0,$v0,$zero
.L800abb5c:
/* 0x800abb5c */ sll	$v0,$v0,0x10
.L800abb60:
/* 0x800abb60 */ sra	$v0,$v0,0x10
.L800abb64:
/* 0x800abb64 */ slti	$v0,$v0,13
.L800abb68:
/* 0x800abb68 */ bne	$v0,$zero,.L800abb74
.L800abb6c:
/* 0x800abb6c */ lui	$v1,0x2aaa
.L800abb70:
/* 0x800abb70 */ addiu	$a0,$zero,12
.L800abb74:
/* 0x800abb74 */ ori	$v1,$v1,0xaaab
.L800abb78:
/* 0x800abb78 */ sll	$v0,$a0,0x10
.L800abb7c:
/* 0x800abb7c */ sra	$v0,$v0,0x6
.L800abb80:
/* 0x800abb80 */ mult	$v0,$v1
.L800abb84:
/* 0x800abb84 */ addu	$s4,$zero,$zero
.L800abb88:
/* 0x800abb88 */ addu	$s6,$s4,$zero
.L800abb8c:
/* 0x800abb8c */ lui	$s2,0x800f
.L800abb90:
/* 0x800abb90 */ addiu	$s2,$s2,10504
.L800abb94:
/* 0x800abb94 */ sra	$v0,$v0,0x1f
.L800abb98:
/* 0x800abb98 */ lw	$s5,44($sp)
.L800abb9c:
/* 0x800abb9c */ mfhi	$t0
.L800abba0:
/* 0x800abba0 */ sra	$s0,$t0,0x1
.L800abba4:
/* 0x800abba4 */ subu	$s0,$s0,$v0
.L800abba8:
/* 0x800abba8 */ jal	0x8004964c
.L800abbac:
/* 0x800abbac */ addu	$a0,$s0,$zero
.L800abbb0:
/* 0x800abbb0 */ sll	$v1,$v0,0x3
.L800abbb4:
/* 0x800abbb4 */ subu	$v1,$v1,$v0
.L800abbb8:
/* 0x800abbb8 */ sll	$v0,$v1,0x4
.L800abbbc:
/* 0x800abbbc */ subu	$v0,$v0,$v1
.L800abbc0:
/* 0x800abbc0 */ sll	$v0,$v0,0x2
.L800abbc4:
/* 0x800abbc4 */ sra	$v0,$v0,0xc
.L800abbc8:
/* 0x800abbc8 */ addiu	$a1,$zero,420
.L800abbcc:
/* 0x800abbcc */ subu	$a1,$a1,$v0
.L800abbd0:
/* 0x800abbd0 */ sll	$a1,$a1,0x10
.L800abbd4:
/* 0x800abbd4 */ sra	$a1,$a1,0x10
.L800abbd8:
/* 0x800abbd8 */ addiu	$a1,$a1,2
.L800abbdc:
/* 0x800abbdc */ addu	$a1,$s5,$a1
.L800abbe0:
/* 0x800abbe0 */ lui	$v0,0x800e
.L800abbe4:
/* 0x800abbe4 */ addiu	$a2,$v0,9208
.L800abbe8:
/* 0x800abbe8 */ addu	$a3,$s4,$zero
.L800abbec:
/* 0x800abbec */ lhu	$a0,9208($v0)
.L800abbf0:
/* 0x800abbf0 */ addiu	$v0,$zero,10
.L800abbf4:
/* 0x800abbf4 */ sw	$s1,16($sp)
.L800abbf8:
/* 0x800abbf8 */ sw	$zero,20($sp)
.L800abbfc:
/* 0x800abbfc */ sw	$s7,24($sp)
.L800abc00:
/* 0x800abc00 */ sw	$v0,28($sp)
.L800abc04:
/* 0x800abc04 */ negu	$a0,$a0
.L800abc08:
/* 0x800abc08 */ srl	$v0,$a0,0x1f
.L800abc0c:
/* 0x800abc0c */ addu	$a0,$a0,$v0
.L800abc10:
/* 0x800abc10 */ jal	0x800ac2bc
.L800abc14:
/* 0x800abc14 */ sra	$a0,$a0,0x1
.L800abc18:
/* 0x800abc18 */ jal	0x8004964c
.L800abc1c:
/* 0x800abc1c */ addu	$a0,$s0,$zero
.L800abc20:
/* 0x800abc20 */ sll	$v1,$v0,0x2
.L800abc24:
/* 0x800abc24 */ addu	$v1,$v1,$v0
.L800abc28:
/* 0x800abc28 */ sll	$v1,$v1,0x6
.L800abc2c:
/* 0x800abc2c */ sra	$v1,$v1,0xc
.L800abc30:
/* 0x800abc30 */ addiu	$v0,$zero,320
.L800abc34:
/* 0x800abc34 */ subu	$s3,$v0,$v1
.L800abc38:
/* 0x800abc38 */ lbu	$v1,146($s2)
.L800abc3c:
/* 0x800abc3c */ addiu	$v0,$zero,7
.L800abc40:
/* 0x800abc40 */ beq	$v1,$v0,.L800abe20
.L800abc44:
/* 0x800abc44 */ ori	$v0,$zero,0x9284
.L800abc48:
/* 0x800abc48 */ beq	$v1,$zero,.L800abe20
.L800abc4c:
/* 0x800abc4c */ sll	$zero,$zero,0x0
.L800abc50:
/* 0x800abc50 */ jal	0x80097280
.L800abc54:
/* 0x800abc54 */ addu	$a0,$s4,$zero
.L800abc58:
/* 0x800abc58 */ addu	$a2,$zero,$zero
.L800abc5c:
/* 0x800abc5c */ lw	$a1,84($s2)
.L800abc60:
/* 0x800abc60 */ beq	$s1,$s8,.L800abcc0
.L800abc64:
/* 0x800abc64 */ addu	$a3,$v0,$zero
.L800abc68:
/* 0x800abc68 */ slti	$v0,$s1,2
.L800abc6c:
/* 0x800abc6c */ beq	$v0,$zero,.L800abc84
.L800abc70:
/* 0x800abc70 */ sll	$zero,$zero,0x0
.L800abc74:
/* 0x800abc74 */ beq	$s1,$zero,.L800abc98
.L800abc78:
/* 0x800abc78 */ sll	$a0,$a1,0x1
.L800abc7c:
/* 0x800abc7c */ j	.L800abd50
.L800abc80:
/* 0x800abc80 */ lui	$v0,0x98
.L800abc84:
/* 0x800abc84 */ addiu	$v0,$zero,2
.L800abc88:
/* 0x800abc88 */ beq	$s1,$v0,.L800abcf4
.L800abc8c:
/* 0x800abc8c */ lui	$v0,0x98
.L800abc90:
/* 0x800abc90 */ j	.L800abd54
.L800abc94:
/* 0x800abc94 */ ori	$v0,$v0,0x967f
.L800abc98:
/* 0x800abc98 */ addu	$a0,$a0,$a1
.L800abc9c:
/* 0x800abc9c */ sll	$a0,$a0,0x1
.L800abca0:
/* 0x800abca0 */ andi	$v1,$a3,0xffff
.L800abca4:
/* 0x800abca4 */ sll	$v0,$v1,0x4
.L800abca8:
/* 0x800abca8 */ subu	$v0,$v0,$v1
.L800abcac:
/* 0x800abcac */ srl	$v0,$v0,0x8
.L800abcb0:
/* 0x800abcb0 */ divu	$zero,$a0,$v0
.L800abcb4:
/* 0x800abcb4 */ mflo	$v1
.L800abcb8:
/* 0x800abcb8 */ j	.L800abd30
.L800abcbc:
/* 0x800abcbc */ sll	$v0,$v1,0x6
.L800abcc0:
/* 0x800abcc0 */ sll	$v1,$a1,0x1
.L800abcc4:
/* 0x800abcc4 */ addu	$v1,$v1,$a1
.L800abcc8:
/* 0x800abcc8 */ sll	$v1,$v1,0x1
.L800abccc:
/* 0x800abccc */ andi	$a0,$a3,0xffff
.L800abcd0:
/* 0x800abcd0 */ sll	$v0,$a0,0x1
.L800abcd4:
/* 0x800abcd4 */ addu	$v0,$v0,$a0
.L800abcd8:
/* 0x800abcd8 */ sll	$v0,$v0,0x3
.L800abcdc:
/* 0x800abcdc */ addu	$v0,$v0,$a0
.L800abce0:
/* 0x800abce0 */ srl	$v0,$v0,0x8
.L800abce4:
/* 0x800abce4 */ divu	$zero,$v1,$v0
.L800abce8:
/* 0x800abce8 */ mflo	$v1
.L800abcec:
/* 0x800abcec */ j	.L800abd4c
.L800abcf0:
/* 0x800abcf0 */ sll	$a2,$v1,0x1
.L800abcf4:
/* 0x800abcf4 */ sll	$v1,$a1,0x1
.L800abcf8:
/* 0x800abcf8 */ addu	$v1,$v1,$a1
.L800abcfc:
/* 0x800abcfc */ sll	$v1,$v1,0x1
.L800abd00:
/* 0x800abd00 */ andi	$a0,$a3,0xffff
.L800abd04:
/* 0x800abd04 */ sll	$v0,$a0,0x1
.L800abd08:
/* 0x800abd08 */ addu	$v0,$v0,$a0
.L800abd0c:
/* 0x800abd0c */ sll	$v0,$v0,0x2
.L800abd10:
/* 0x800abd10 */ addu	$v0,$v0,$a0
.L800abd14:
/* 0x800abd14 */ srl	$v0,$v0,0x8
.L800abd18:
/* 0x800abd18 */ divu	$zero,$v1,$v0
.L800abd1c:
/* 0x800abd1c */ mflo	$v1
.L800abd20:
/* 0x800abd20 */ sll	$zero,$zero,0x0
.L800abd24:
/* 0x800abd24 */ sll	$v0,$v1,0x1
.L800abd28:
/* 0x800abd28 */ addu	$v0,$v0,$v1
.L800abd2c:
/* 0x800abd2c */ sll	$v0,$v0,0x3
.L800abd30:
/* 0x800abd30 */ addu	$v0,$v0,$v1
.L800abd34:
/* 0x800abd34 */ sll	$v0,$v0,0x1
.L800abd38:
/* 0x800abd38 */ lui	$v1,0x8888
.L800abd3c:
/* 0x800abd3c */ ori	$v1,$v1,0x8889
.L800abd40:
/* 0x800abd40 */ multu	$v0,$v1
.L800abd44:
/* 0x800abd44 */ mfhi	$v1
.L800abd48:
/* 0x800abd48 */ srl	$a2,$v1,0x5
.L800abd4c:
/* 0x800abd4c */ lui	$v0,0x98
.L800abd50:
/* 0x800abd50 */ ori	$v0,$v0,0x967f
.L800abd54:
/* 0x800abd54 */ sltu	$v0,$v0,$a2
.L800abd58:
/* 0x800abd58 */ beq	$v0,$zero,.L800abd68
.L800abd5c:
/* 0x800abd5c */ sll	$zero,$zero,0x0
.L800abd60:
/* 0x800abd60 */ lui	$a2,0x98
.L800abd64:
/* 0x800abd64 */ ori	$a2,$a2,0x967f
.L800abd68:
/* 0x800abd68 */ bne	$s1,$s8,.L800abdc0
.L800abd6c:
/* 0x800abd6c */ sll	$v0,$s3,0x10
.L800abd70:
/* 0x800abd70 */ sra	$v0,$v0,0x10
.L800abd74:
/* 0x800abd74 */ addiu	$v0,$v0,254
.L800abd78:
/* 0x800abd78 */ subu	$s0,$s6,$v0
.L800abd7c:
/* 0x800abd7c */ addu	$a0,$s0,$zero
.L800abd80:
/* 0x800abd80 */ addiu	$a1,$s5,4
.L800abd84:
/* 0x800abd84 */ addiu	$a3,$zero,6
.L800abd88:
/* 0x800abd88 */ addiu	$v0,$zero,128
.L800abd8c:
/* 0x800abd8c */ sw	$zero,16($sp)
.L800abd90:
/* 0x800abd90 */ sw	$zero,20($sp)
.L800abd94:
/* 0x800abd94 */ jal	0x800a8e78
.L800abd98:
/* 0x800abd98 */ sw	$v0,24($sp)
.L800abd9c:
/* 0x800abd9c */ addu	$v0,$s0,$v0
.L800abda0:
/* 0x800abda0 */ addiu	$a0,$v0,4
.L800abda4:
/* 0x800abda4 */ addiu	$a1,$s5,8
.L800abda8:
/* 0x800abda8 */ lui	$a2,0x800e
.L800abdac:
/* 0x800abdac */ addiu	$a2,$a2,9244
.L800abdb0:
/* 0x800abdb0 */ addu	$a3,$zero,$zero
.L800abdb4:
/* 0x800abdb4 */ addiu	$v0,$zero,10
.L800abdb8:
/* 0x800abdb8 */ j	.L800abe0c
.L800abdbc:
/* 0x800abdbc */ sw	$zero,16($sp)
.L800abdc0:
/* 0x800abdc0 */ sra	$v0,$v0,0x10
.L800abdc4:
/* 0x800abdc4 */ addiu	$v0,$v0,288
.L800abdc8:
/* 0x800abdc8 */ subu	$s0,$s6,$v0
.L800abdcc:
/* 0x800abdcc */ addu	$a0,$s0,$zero
.L800abdd0:
/* 0x800abdd0 */ addiu	$a1,$s5,4
.L800abdd4:
/* 0x800abdd4 */ addiu	$a3,$zero,4
.L800abdd8:
/* 0x800abdd8 */ addiu	$v0,$zero,3
.L800abddc:
/* 0x800abddc */ sw	$v0,16($sp)
.L800abde0:
/* 0x800abde0 */ sw	$zero,20($sp)
.L800abde4:
/* 0x800abde4 */ jal	0x800a8e78
.L800abde8:
/* 0x800abde8 */ sw	$s7,24($sp)
.L800abdec:
/* 0x800abdec */ addu	$v0,$s0,$v0
.L800abdf0:
/* 0x800abdf0 */ addiu	$a0,$v0,4
.L800abdf4:
/* 0x800abdf4 */ addiu	$a1,$s5,8
.L800abdf8:
/* 0x800abdf8 */ lui	$a2,0x800e
.L800abdfc:
/* 0x800abdfc */ addiu	$a2,$a2,9244
.L800abe00:
/* 0x800abe00 */ addu	$a3,$zero,$zero
.L800abe04:
/* 0x800abe04 */ addiu	$v0,$zero,10
.L800abe08:
/* 0x800abe08 */ sw	$s8,16($sp)
.L800abe0c:
/* 0x800abe0c */ sw	$zero,20($sp)
.L800abe10:
/* 0x800abe10 */ sw	$s7,24($sp)
.L800abe14:
/* 0x800abe14 */ jal	0x800ac2bc
.L800abe18:
/* 0x800abe18 */ sw	$v0,28($sp)
.L800abe1c:
/* 0x800abe1c */ ori	$v0,$zero,0x9284
.L800abe20:
/* 0x800abe20 */ addu	$s2,$s2,$v0
.L800abe24:
/* 0x800abe24 */ addiu	$s4,$s4,1
.L800abe28:
/* 0x800abe28 */ sll	$v0,$s3,0x10
.L800abe2c:
/* 0x800abe2c */ sra	$v0,$v0,0x10
.L800abe30:
/* 0x800abe30 */ negu	$s3,$v0
.L800abe34:
/* 0x800abe34 */ slti	$v0,$s4,2
.L800abe38:
/* 0x800abe38 */ bne	$v0,$zero,.L800abc38
.L800abe3c:
/* 0x800abe3c */ addiu	$s6,$s6,352
.L800abe40:
/* 0x800abe40 */ addiu	$s1,$s1,1
.L800abe44:
/* 0x800abe44 */ lw	$t0,44($sp)
.L800abe48:
/* 0x800abe48 */ slti	$v0,$s1,3
.L800abe4c:
/* 0x800abe4c */ addiu	$t0,$t0,36
.L800abe50:
/* 0x800abe50 */ bne	$v0,$zero,.L800abb40
.L800abe54:
/* 0x800abe54 */ sw	$t0,44($sp)
.L800abe58:
/* 0x800abe58 */ addu	$s1,$zero,$zero
.L800abe5c:
/* 0x800abe5c */ lbu	$t0,32($sp)
.L800abe60:
/* 0x800abe60 */ addiu	$s8,$zero,36
.L800abe64:
/* 0x800abe64 */ sw	$t0,40($sp)
.L800abe68:
/* 0x800abe68 */ addiu	$v0,$zero,2
.L800abe6c:
/* 0x800abe6c */ subu	$v0,$v0,$s1
.L800abe70:
/* 0x800abe70 */ sll	$v0,$v0,0x1
.L800abe74:
/* 0x800abe74 */ lw	$t0,88($sp)
.L800abe78:
/* 0x800abe78 */ addiu	$v0,$v0,-12
.L800abe7c:
/* 0x800abe7c */ addu	$v0,$t0,$v0
.L800abe80:
/* 0x800abe80 */ addu	$a0,$v0,$zero
.L800abe84:
/* 0x800abe84 */ sll	$v0,$v0,0x10
.L800abe88:
/* 0x800abe88 */ sra	$v0,$v0,0x10
.L800abe8c:
/* 0x800abe8c */ slti	$v0,$v0,13
.L800abe90:
/* 0x800abe90 */ bne	$v0,$zero,.L800abe9c
.L800abe94:
/* 0x800abe94 */ lui	$v1,0x2aaa
.L800abe98:
/* 0x800abe98 */ addiu	$a0,$zero,12
.L800abe9c:
/* 0x800abe9c */ ori	$v1,$v1,0xaaab
.L800abea0:
/* 0x800abea0 */ sll	$v0,$a0,0x10
.L800abea4:
/* 0x800abea4 */ sra	$v0,$v0,0x6
.L800abea8:
/* 0x800abea8 */ mult	$v0,$v1
.L800abeac:
/* 0x800abeac */ addu	$s5,$s8,$zero
.L800abeb0:
/* 0x800abeb0 */ addu	$s4,$zero,$zero
.L800abeb4:
/* 0x800abeb4 */ addu	$s7,$s4,$zero
.L800abeb8:
/* 0x800abeb8 */ lui	$s2,0x800f
.L800abebc:
/* 0x800abebc */ addiu	$s2,$s2,10536
.L800abec0:
/* 0x800abec0 */ lui	$s6,0x800f
.L800abec4:
/* 0x800abec4 */ addiu	$s6,$s6,10504
.L800abec8:
/* 0x800abec8 */ sra	$v0,$v0,0x1f
.L800abecc:
/* 0x800abecc */ mfhi	$t0
.L800abed0:
/* 0x800abed0 */ sra	$s0,$t0,0x1
.L800abed4:
/* 0x800abed4 */ subu	$s0,$s0,$v0
.L800abed8:
/* 0x800abed8 */ jal	0x8004964c
.L800abedc:
/* 0x800abedc */ addu	$a0,$s0,$zero
.L800abee0:
/* 0x800abee0 */ sll	$v1,$v0,0x3
.L800abee4:
/* 0x800abee4 */ subu	$v1,$v1,$v0
.L800abee8:
/* 0x800abee8 */ sll	$v0,$v1,0x4
.L800abeec:
/* 0x800abeec */ subu	$v0,$v0,$v1
.L800abef0:
/* 0x800abef0 */ sll	$v0,$v0,0x2
.L800abef4:
/* 0x800abef4 */ sra	$v0,$v0,0xc
.L800abef8:
/* 0x800abef8 */ addiu	$a1,$zero,420
.L800abefc:
/* 0x800abefc */ subu	$a1,$a1,$v0
.L800abf00:
/* 0x800abf00 */ sll	$a1,$a1,0x10
.L800abf04:
/* 0x800abf04 */ sra	$a1,$a1,0x10
.L800abf08:
/* 0x800abf08 */ addu	$a1,$s8,$a1
.L800abf0c:
/* 0x800abf0c */ lui	$v1,0x800e
.L800abf10:
/* 0x800abf10 */ addiu	$a2,$v1,9196
.L800abf14:
/* 0x800abf14 */ addu	$a3,$s4,$zero
.L800abf18:
/* 0x800abf18 */ xori	$v0,$s1,0x2
.L800abf1c:
/* 0x800abf1c */ sltiu	$v0,$v0,1
.L800abf20:
/* 0x800abf20 */ lw	$t0,40($sp)
.L800abf24:
/* 0x800abf24 */ lhu	$a0,9196($v1)
.L800abf28:
/* 0x800abf28 */ sll	$v0,$v0,0x1
.L800abf2c:
/* 0x800abf2c */ sw	$v0,20($sp)
.L800abf30:
/* 0x800abf30 */ addiu	$v0,$zero,10
.L800abf34:
/* 0x800abf34 */ sw	$s1,16($sp)
.L800abf38:
/* 0x800abf38 */ sw	$v0,28($sp)
.L800abf3c:
/* 0x800abf3c */ negu	$a0,$a0
.L800abf40:
/* 0x800abf40 */ srl	$v0,$a0,0x1f
.L800abf44:
/* 0x800abf44 */ addu	$a0,$a0,$v0
.L800abf48:
/* 0x800abf48 */ sra	$a0,$a0,0x1
.L800abf4c:
/* 0x800abf4c */ jal	0x800ac2bc
.L800abf50:
/* 0x800abf50 */ sw	$t0,24($sp)
.L800abf54:
/* 0x800abf54 */ jal	0x8004964c
.L800abf58:
/* 0x800abf58 */ addu	$a0,$s0,$zero
.L800abf5c:
/* 0x800abf5c */ sll	$v1,$v0,0x2
.L800abf60:
/* 0x800abf60 */ addu	$v1,$v1,$v0
.L800abf64:
/* 0x800abf64 */ sll	$v1,$v1,0x6
.L800abf68:
/* 0x800abf68 */ sra	$v1,$v1,0xc
.L800abf6c:
/* 0x800abf6c */ addiu	$v0,$zero,320
.L800abf70:
/* 0x800abf70 */ subu	$s3,$v0,$v1
.L800abf74:
/* 0x800abf74 */ lbu	$v1,146($s6)
.L800abf78:
/* 0x800abf78 */ addiu	$v0,$zero,7
.L800abf7c:
/* 0x800abf7c */ beq	$v1,$v0,.L800ac050
.L800abf80:
/* 0x800abf80 */ ori	$v0,$zero,0x9284
.L800abf84:
/* 0x800abf84 */ beq	$v1,$zero,.L800ac04c
.L800abf88:
/* 0x800abf88 */ sll	$v0,$s3,0x10
.L800abf8c:
/* 0x800abf8c */ sra	$v0,$v0,0x10
.L800abf90:
/* 0x800abf90 */ addiu	$v0,$v0,288
.L800abf94:
/* 0x800abf94 */ subu	$s0,$s7,$v0
.L800abf98:
/* 0x800abf98 */ sll	$v0,$s4,0x5
.L800abf9c:
/* 0x800abf9c */ lw	$t0,36($sp)
.L800abfa0:
/* 0x800abfa0 */ addiu	$v0,$v0,4
.L800abfa4:
/* 0x800abfa4 */ bne	$s1,$zero,.L800abfb8
.L800abfa8:
/* 0x800abfa8 */ addu	$v1,$t0,$v0
.L800abfac:
/* 0x800abfac */ lw	$a2,68($s2)
.L800abfb0:
/* 0x800abfb0 */ j	.L800abff4
.L800abfb4:
/* 0x800abfb4 */ addu	$a0,$s0,$zero
.L800abfb8:
/* 0x800abfb8 */ addiu	$v0,$zero,1
.L800abfbc:
/* 0x800abfbc */ bne	$s1,$v0,.L800abfd4
.L800abfc0:
/* 0x800abfc0 */ lui	$v0,0x98
.L800abfc4:
/* 0x800abfc4 */ lw	$v1,52($s2)
.L800abfc8:
/* 0x800abfc8 */ lw	$v0,56($s2)
.L800abfcc:
/* 0x800abfcc */ j	.L800abff0
.L800abfd0:
/* 0x800abfd0 */ subu	$a2,$v1,$v0
.L800abfd4:
/* 0x800abfd4 */ lw	$a2,16($v1)
.L800abfd8:
/* 0x800abfd8 */ ori	$v0,$v0,0x967f
.L800abfdc:
/* 0x800abfdc */ slt	$v0,$v0,$a2
.L800abfe0:
/* 0x800abfe0 */ beq	$v0,$zero,.L800abff4
.L800abfe4:
/* 0x800abfe4 */ addu	$a0,$s0,$zero
.L800abfe8:
/* 0x800abfe8 */ lui	$a2,0x98
.L800abfec:
/* 0x800abfec */ ori	$a2,$a2,0x967f
.L800abff0:
/* 0x800abff0 */ addu	$a0,$s0,$zero
.L800abff4:
/* 0x800abff4 */ addiu	$a1,$s5,4
.L800abff8:
/* 0x800abff8 */ addiu	$a3,$zero,4
.L800abffc:
/* 0x800abffc */ lw	$t0,40($sp)
.L800ac000:
/* 0x800ac000 */ addiu	$v0,$zero,3
.L800ac004:
/* 0x800ac004 */ sw	$v0,16($sp)
.L800ac008:
/* 0x800ac008 */ sw	$zero,20($sp)
.L800ac00c:
/* 0x800ac00c */ jal	0x800a8e78
.L800ac010:
/* 0x800ac010 */ sw	$t0,24($sp)
.L800ac014:
/* 0x800ac014 */ addu	$v0,$s0,$v0
.L800ac018:
/* 0x800ac018 */ addiu	$a0,$v0,4
.L800ac01c:
/* 0x800ac01c */ addiu	$a1,$s5,8
.L800ac020:
/* 0x800ac020 */ lui	$a2,0x800e
.L800ac024:
/* 0x800ac024 */ addiu	$a2,$a2,9244
.L800ac028:
/* 0x800ac028 */ addu	$a3,$zero,$zero
.L800ac02c:
/* 0x800ac02c */ lw	$t0,40($sp)
.L800ac030:
/* 0x800ac030 */ addiu	$v0,$zero,2
.L800ac034:
/* 0x800ac034 */ sw	$v0,16($sp)
.L800ac038:
/* 0x800ac038 */ addiu	$v0,$zero,10
.L800ac03c:
/* 0x800ac03c */ sw	$zero,20($sp)
.L800ac040:
/* 0x800ac040 */ sw	$v0,28($sp)
.L800ac044:
/* 0x800ac044 */ jal	0x800ac2bc
.L800ac048:
/* 0x800ac048 */ sw	$t0,24($sp)
.L800ac04c:
/* 0x800ac04c */ ori	$v0,$zero,0x9284
.L800ac050:
/* 0x800ac050 */ addu	$s2,$s2,$v0
.L800ac054:
/* 0x800ac054 */ addu	$s6,$s6,$v0
.L800ac058:
/* 0x800ac058 */ addiu	$s4,$s4,1
.L800ac05c:
/* 0x800ac05c */ sll	$v0,$s3,0x10
.L800ac060:
/* 0x800ac060 */ sra	$v0,$v0,0x10
.L800ac064:
/* 0x800ac064 */ negu	$s3,$v0
.L800ac068:
/* 0x800ac068 */ slti	$v0,$s4,2
.L800ac06c:
/* 0x800ac06c */ bne	$v0,$zero,.L800abf74
.L800ac070:
/* 0x800ac070 */ addiu	$s7,$s7,352
.L800ac074:
/* 0x800ac074 */ addiu	$s1,$s1,1
.L800ac078:
/* 0x800ac078 */ slti	$v0,$s1,3
.L800ac07c:
/* 0x800ac07c */ bne	$v0,$zero,.L800abe68
.L800ac080:
/* 0x800ac080 */ addiu	$s8,$s8,36
.L800ac084:
/* 0x800ac084 */ lw	$ra,84($sp)
.L800ac088:
/* 0x800ac088 */ lw	$s8,80($sp)
.L800ac08c:
/* 0x800ac08c */ lw	$s7,76($sp)
.L800ac090:
/* 0x800ac090 */ lw	$s6,72($sp)
.L800ac094:
/* 0x800ac094 */ lw	$s5,68($sp)
.L800ac098:
/* 0x800ac098 */ lw	$s4,64($sp)
.L800ac09c:
/* 0x800ac09c */ lw	$s3,60($sp)
.L800ac0a0:
/* 0x800ac0a0 */ lw	$s2,56($sp)
.L800ac0a4:
/* 0x800ac0a4 */ lw	$s1,52($sp)
.L800ac0a8:
/* 0x800ac0a8 */ lw	$s0,48($sp)
.L800ac0ac:
/* 0x800ac0ac */ jr	$ra
.L800ac0b0:
/* 0x800ac0b0 */ addiu	$sp,$sp,88
.size FUN_800abae8, .-FUN_800abae8
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800ac0b4
.globl FUN_800ac0b4
.type FUN_800ac0b4, @function
FUN_800ac0b4:
.L800ac0b4:
/* 0x800ac0b4 */ addu	$a3,$a0,$zero
.L800ac0b8:
/* 0x800ac0b8 */ lui	$v0,0xb30f
.L800ac0bc:
/* 0x800ac0bc */ ori	$v0,$v0,0x6353
.L800ac0c0:
/* 0x800ac0c0 */ mult	$a3,$v0
.L800ac0c4:
/* 0x800ac0c4 */ sra	$v1,$a3,0x1f
.L800ac0c8:
/* 0x800ac0c8 */ mfhi	$t2
.L800ac0cc:
/* 0x800ac0cc */ addu	$v0,$t2,$a3
.L800ac0d0:
/* 0x800ac0d0 */ sra	$v0,$v0,0x8
.L800ac0d4:
/* 0x800ac0d4 */ subu	$t0,$v0,$v1
.L800ac0d8:
/* 0x800ac0d8 */ addiu	$a2,$t0,-1
.L800ac0dc:
/* 0x800ac0dc */ bgez	$a2,.L800ac0e8
.L800ac0e0:
/* 0x800ac0e0 */ addu	$a0,$a2,$zero
.L800ac0e4:
/* 0x800ac0e4 */ addiu	$a0,$t0,2
.L800ac0e8:
/* 0x800ac0e8 */ lui	$v0,0x51eb
.L800ac0ec:
/* 0x800ac0ec */ ori	$v0,$v0,0x851f
.L800ac0f0:
/* 0x800ac0f0 */ mult	$a2,$v0
.L800ac0f4:
/* 0x800ac0f4 */ sra	$a0,$a0,0x2
.L800ac0f8:
/* 0x800ac0f8 */ sra	$a1,$a2,0x1f
.L800ac0fc:
/* 0x800ac0fc */ mfhi	$v0
.L800ac100:
/* 0x800ac100 */ sra	$v1,$v0,0x5
.L800ac104:
/* 0x800ac104 */ subu	$v1,$v1,$a1
.L800ac108:
/* 0x800ac108 */ subu	$a0,$a0,$v1
.L800ac10c:
/* 0x800ac10c */ sra	$v0,$v0,0x7
.L800ac110:
/* 0x800ac110 */ subu	$v0,$v0,$a1
.L800ac114:
/* 0x800ac114 */ addu	$a0,$a0,$v0
.L800ac118:
/* 0x800ac118 */ sll	$v1,$a0,0x1
.L800ac11c:
/* 0x800ac11c */ addu	$v1,$v1,$a0
.L800ac120:
/* 0x800ac120 */ sll	$v1,$v1,0x3
.L800ac124:
/* 0x800ac124 */ subu	$v1,$v1,$a0
.L800ac128:
/* 0x800ac128 */ sll	$v1,$v1,0x3
.L800ac12c:
/* 0x800ac12c */ subu	$v1,$v1,$a0
.L800ac130:
/* 0x800ac130 */ sll	$v1,$v1,0x1
.L800ac134:
/* 0x800ac134 */ subu	$a0,$a2,$a0
.L800ac138:
/* 0x800ac138 */ sll	$v0,$a0,0x3
.L800ac13c:
/* 0x800ac13c */ addu	$v0,$v0,$a0
.L800ac140:
/* 0x800ac140 */ sll	$v0,$v0,0x3
.L800ac144:
/* 0x800ac144 */ addu	$v0,$v0,$a0
.L800ac148:
/* 0x800ac148 */ sll	$a0,$v0,0x2
.L800ac14c:
/* 0x800ac14c */ addu	$v0,$v0,$a0
.L800ac150:
/* 0x800ac150 */ addu	$v1,$v1,$v0
.L800ac154:
/* 0x800ac154 */ subu	$a3,$a3,$v1
.L800ac158:
/* 0x800ac158 */ addu	$a0,$t0,$zero
.L800ac15c:
/* 0x800ac15c */ lui	$t1,0x51eb
.L800ac160:
/* 0x800ac160 */ ori	$t1,$t1,0x851f
.L800ac164:
/* 0x800ac164 */ mult	$a0,$t1
.L800ac168:
/* 0x800ac168 */ sra	$a1,$a0,0x1f
.L800ac16c:
/* 0x800ac16c */ mfhi	$a2
.L800ac170:
/* 0x800ac170 */ sra	$v1,$a2,0x7
.L800ac174:
/* 0x800ac174 */ subu	$v1,$v1,$a1
.L800ac178:
/* 0x800ac178 */ sll	$v0,$v1,0x1
.L800ac17c:
/* 0x800ac17c */ addu	$v0,$v0,$v1
.L800ac180:
/* 0x800ac180 */ sll	$v0,$v0,0x3
.L800ac184:
/* 0x800ac184 */ addu	$v0,$v0,$v1
.L800ac188:
/* 0x800ac188 */ sll	$v0,$v0,0x4
.L800ac18c:
/* 0x800ac18c */ beq	$a0,$v0,.L800ac1c0
.L800ac190:
/* 0x800ac190 */ addu	$t0,$zero,$zero
.L800ac194:
/* 0x800ac194 */ andi	$v0,$a0,0x3
.L800ac198:
/* 0x800ac198 */ bne	$v0,$zero,.L800ac1c4
.L800ac19c:
/* 0x800ac19c */ sra	$v1,$a2,0x5
.L800ac1a0:
/* 0x800ac1a0 */ subu	$v1,$v1,$a1
.L800ac1a4:
/* 0x800ac1a4 */ sll	$v0,$v1,0x1
.L800ac1a8:
/* 0x800ac1a8 */ addu	$v0,$v0,$v1
.L800ac1ac:
/* 0x800ac1ac */ sll	$v0,$v0,0x3
.L800ac1b0:
/* 0x800ac1b0 */ addu	$v0,$v0,$v1
.L800ac1b4:
/* 0x800ac1b4 */ sll	$v0,$v0,0x2
.L800ac1b8:
/* 0x800ac1b8 */ beq	$a0,$v0,.L800ac1c4
.L800ac1bc:
/* 0x800ac1bc */ sll	$zero,$zero,0x0
.L800ac1c0:
/* 0x800ac1c0 */ addiu	$t0,$zero,1
.L800ac1c4:
/* 0x800ac1c4 */ beq	$t0,$zero,.L800ac1d0
.L800ac1c8:
/* 0x800ac1c8 */ addiu	$v1,$zero,365
.L800ac1cc:
/* 0x800ac1cc */ addiu	$v1,$zero,366
.L800ac1d0:
/* 0x800ac1d0 */ slt	$v0,$v1,$a3
.L800ac1d4:
/* 0x800ac1d4 */ beq	$v0,$zero,.L800ac1e8
.L800ac1d8:
/* 0x800ac1d8 */ addu	$a2,$a0,$zero
.L800ac1dc:
/* 0x800ac1dc */ subu	$a3,$a3,$v1
.L800ac1e0:
/* 0x800ac1e0 */ j	.L800ac164
.L800ac1e4:
/* 0x800ac1e4 */ addiu	$a0,$a0,1
.L800ac1e8:
/* 0x800ac1e8 */ addu	$a0,$zero,$zero
.L800ac1ec:
/* 0x800ac1ec */ addiu	$t1,$zero,1
.L800ac1f0:
/* 0x800ac1f0 */ lui	$v0,0x800e
.L800ac1f4:
/* 0x800ac1f4 */ addiu	$a1,$v0,10500
.L800ac1f8:
/* 0x800ac1f8 */ lw	$v1,0($a1)
.L800ac1fc:
/* 0x800ac1fc */ bne	$a0,$t1,.L800ac214
.L800ac200:
/* 0x800ac200 */ slt	$v0,$v1,$a3
.L800ac204:
/* 0x800ac204 */ beq	$t0,$zero,.L800ac214
.L800ac208:
/* 0x800ac208 */ sll	$zero,$zero,0x0
.L800ac20c:
/* 0x800ac20c */ addiu	$v1,$v1,1
.L800ac210:
/* 0x800ac210 */ slt	$v0,$v1,$a3
.L800ac214:
/* 0x800ac214 */ beq	$v0,$zero,.L800ac230
.L800ac218:
/* 0x800ac218 */ sll	$zero,$zero,0x0
.L800ac21c:
/* 0x800ac21c */ subu	$a3,$a3,$v1
.L800ac220:
/* 0x800ac220 */ addiu	$a0,$a0,1
.L800ac224:
/* 0x800ac224 */ slti	$v0,$a0,12
.L800ac228:
/* 0x800ac228 */ bne	$v0,$zero,.L800ac1f8
.L800ac22c:
/* 0x800ac22c */ addiu	$a1,$a1,4
.L800ac230:
/* 0x800ac230 */ addiu	$v1,$a0,1
.L800ac234:
/* 0x800ac234 */ addiu	$a0,$a2,-2000
.L800ac238:
/* 0x800ac238 */ sltiu	$v0,$a0,128
.L800ac23c:
/* 0x800ac23c */ bne	$v0,$zero,.L800ac24c
.L800ac240:
/* 0x800ac240 */ andi	$v0,$a0,0x7f
.L800ac244:
/* 0x800ac244 */ jr	$ra
.L800ac248:
/* 0x800ac248 */ addu	$v0,$zero,$zero
.L800ac24c:
/* 0x800ac24c */ sll	$v0,$v0,0x9
.L800ac250:
/* 0x800ac250 */ andi	$v1,$v1,0xf
.L800ac254:
/* 0x800ac254 */ sll	$v1,$v1,0x5
.L800ac258:
/* 0x800ac258 */ or	$v0,$v0,$v1
.L800ac25c:
/* 0x800ac25c */ andi	$v1,$a3,0x1f
.L800ac260:
/* 0x800ac260 */ jr	$ra
.L800ac264:
/* 0x800ac264 */ or	$v0,$v0,$v1
.size FUN_800ac0b4, .-FUN_800ac0b4
