.set noreorder
.set noat
.set nomacro

.section .text.FUN_8008ff00
.globl FUN_8008ff00
.type FUN_8008ff00, @function
FUN_8008ff00:
/* Runtime resource and state helper. */
.L8008ff00:
/* 0x8008ff00 */ addiu	$sp,$sp,-48
.L8008ff04:
/* 0x8008ff04 */ sw	$s2,24($sp)
.L8008ff08:
/* 0x8008ff08 */ addu	$s2,$a0,$zero
.L8008ff0c:
/* 0x8008ff0c */ addiu	$a0,$zero,100
.L8008ff10:
/* 0x8008ff10 */ addiu	$a1,$zero,-1
.L8008ff14:
/* 0x8008ff14 */ addu	$a2,$a1,$zero
.L8008ff18:
/* 0x8008ff18 */ sw	$ra,40($sp)
.L8008ff1c:
/* 0x8008ff1c */ sw	$s5,36($sp)
.L8008ff20:
/* 0x8008ff20 */ sw	$s4,32($sp)
.L8008ff24:
/* 0x8008ff24 */ sw	$s3,28($sp)
.L8008ff28:
/* 0x8008ff28 */ sw	$s1,20($sp)
.L8008ff2c:
/* 0x8008ff2c */ jal	0x8002a8b0
.L8008ff30:
/* 0x8008ff30 */ sw	$s0,16($sp)
.L8008ff34:
/* 0x8008ff34 */ addu	$a0,$s2,$zero
.L8008ff38:
/* 0x8008ff38 */ addu	$a1,$zero,$zero
.L8008ff3c:
/* 0x8008ff3c */ jal	0x8005b2a4
.L8008ff40:
/* 0x8008ff40 */ addiu	$a2,$zero,100
.L8008ff44:
/* 0x8008ff44 */ lui	$v0,0x800f
.L8008ff48:
/* 0x8008ff48 */ addiu	$v0,$v0,10504
.L8008ff4c:
/* 0x8008ff4c */ lui	$v1,0x1
.L8008ff50:
/* 0x8008ff50 */ addu	$v0,$v0,$v1
.L8008ff54:
/* 0x8008ff54 */ lbu	$v0,10107($v0)
.L8008ff58:
/* 0x8008ff58 */ sll	$zero,$zero,0x0
.L8008ff5c:
/* 0x8008ff5c */ beq	$v0,$zero,.L8008ff7c
.L8008ff60:
/* 0x8008ff60 */ addu	$s0,$zero,$zero
.L8008ff64:
/* 0x8008ff64 */ jal	0x800a384c
.L8008ff68:
/* 0x8008ff68 */ sll	$zero,$zero,0x0
.L8008ff6c:
/* 0x8008ff6c */ j	0x800900d0
.L8008ff70:
/* 0x8008ff70 */ sll	$zero,$zero,0x0
.L8008ff74:
/* 0x8008ff74 */ j	0x800900ac
.L8008ff78:
/* 0x8008ff78 */ sw	$s0,0($s2)
.L8008ff7c:
/* 0x8008ff7c */ addu	$v1,$s2,$zero
.L8008ff80:
/* 0x8008ff80 */ addiu	$v0,$zero,1
.L8008ff84:
/* 0x8008ff84 */ sw	$zero,4($s2)
.L8008ff88:
/* 0x8008ff88 */ sw	$v0,56($s2)
.L8008ff8c:
/* 0x8008ff8c */ addiu	$v0,$zero,1
.L8008ff90:
/* 0x8008ff90 */ sw	$zero,60($v1)
.L8008ff94:
/* 0x8008ff94 */ sw	$zero,64($v1)
.L8008ff98:
/* 0x8008ff98 */ addiu	$v0,$v0,-1
.L8008ff9c:
/* 0x8008ff9c */ bgez	$v0,.L8008ff9c
.L8008ffa0:
/* 0x8008ffa0 */ addiu	$v0,$v0,-1
.L8008ffa4:
/* 0x8008ffa4 */ addiu	$s0,$s0,1
.L8008ffa8:
/* 0x8008ffa8 */ slti	$v0,$s0,3
.L8008ffac:
/* 0x8008ffac */ bne	$v0,$zero,.L8008ff8c
.L8008ffb0:
/* 0x8008ffb0 */ addiu	$v1,$v1,8
.L8008ffb4:
/* 0x8008ffb4 */ addu	$s0,$zero,$zero
.L8008ffb8:
/* 0x8008ffb8 */ addiu	$s4,$zero,10
.L8008ffbc:
/* 0x8008ffbc */ lui	$v0,0x800f
.L8008ffc0:
/* 0x8008ffc0 */ addiu	$s5,$v0,10376
.L8008ffc4:
/* 0x8008ffc4 */ lui	$v0,0x8002
.L8008ffc8:
/* 0x8008ffc8 */ addiu	$s1,$v0,-6432
.L8008ffcc:
/* 0x8008ffcc */ addu	$s3,$s2,$zero
.L8008ffd0:
/* 0x8008ffd0 */ lw	$v1,0($s1)
.L8008ffd4:
/* 0x8008ffd4 */ addiu	$v0,$zero,1
.L8008ffd8:
/* 0x8008ffd8 */ beq	$v1,$v0,.L8008ffe8
.L8008ffdc:
/* 0x8008ffdc */ sll	$zero,$zero,0x0
.L8008ffe0:
/* 0x8008ffe0 */ bne	$v1,$s4,.L80090004
.L8008ffe4:
/* 0x8008ffe4 */ sll	$zero,$zero,0x0
.L8008ffe8:
/* 0x8008ffe8 */ lw	$v0,120($s5)
.L8008ffec:
/* 0x8008ffec */ addiu	$v1,$zero,3
.L8008fff0:
/* 0x8008fff0 */ andi	$v0,$v0,0x3
.L8008fff4:
/* 0x8008fff4 */ bne	$v0,$v1,.L80090004
.L8008fff8:
/* 0x8008fff8 */ sll	$zero,$zero,0x0
.L8008fffc:
/* 0x8008fffc */ j	0x80090060
.L80090000:
/* 0x80090000 */ sw	$zero,56($s2)
.L80090004:
/* 0x80090004 */ jal	0x800497bc
.L80090008:
/* 0x80090008 */ sll	$zero,$zero,0x0
.L8009000c:
/* 0x8009000c */ beq	$v0,$zero,.L80090034
.L80090010:
/* 0x80090010 */ addiu	$v0,$zero,5
.L80090014:
/* 0x80090014 */ lw	$v1,0($s1)
.L80090018:
/* 0x80090018 */ sll	$zero,$zero,0x0
.L8009001c:
/* 0x8009001c */ beq	$v1,$v0,.L80090060
.L80090020:
/* 0x80090020 */ addiu	$v0,$zero,2
.L80090024:
/* 0x80090024 */ beq	$v1,$v0,.L80090060
.L80090028:
/* 0x80090028 */ addiu	$v0,$zero,-1
.L8009002c:
/* 0x8009002c */ j	0x80090050
.L80090030:
/* 0x80090030 */ sw	$v1,8($s3)
.L80090034:
/* 0x80090034 */ lw	$v0,0($s1)
.L80090038:
/* 0x80090038 */ sll	$zero,$zero,0x0
.L8009003c:
/* 0x8009003c */ beq	$v0,$s4,.L80090060
.L80090040:
/* 0x80090040 */ addiu	$v0,$zero,-1
.L80090044:
/* 0x80090044 */ lw	$v1,0($s1)
.L80090048:
/* 0x80090048 */ sll	$zero,$zero,0x0
.L8009004c:
/* 0x8009004c */ sw	$v1,8($s3)
.L80090050:
/* 0x80090050 */ bne	$v1,$v0,.L80090060
.L80090054:
/* 0x80090054 */ addiu	$s3,$s3,4
.L80090058:
/* 0x80090058 */ bgtz	$s0,.L8009006c
.L8009005c:
/* 0x8009005c */ addiu	$v0,$zero,1
.L80090060:
/* 0x80090060 */ addiu	$s1,$s1,4
.L80090064:
/* 0x80090064 */ j	0x8008ffd0
.L80090068:
/* 0x80090068 */ addiu	$s0,$s0,1
.L8009006c:
/* 0x8009006c */ addiu	$v1,$s2,4
.L80090070:
/* 0x80090070 */ sw	$v0,0($s2)
.L80090074:
/* 0x80090074 */ lw	$v0,8($v1)
.L80090078:
/* 0x80090078 */ sll	$zero,$zero,0x0
.L8009007c:
/* 0x8009007c */ bltz	$v0,.L800900ac
.L80090080:
/* 0x80090080 */ addiu	$s0,$zero,1
.L80090084:
/* 0x80090084 */ lui	$v0,0x800f
.L80090088:
/* 0x80090088 */ lb	$a0,10528($v0)
.L8009008c:
/* 0x8009008c */ lw	$v0,8($v1)
.L80090090:
/* 0x80090090 */ sll	$zero,$zero,0x0
.L80090094:
/* 0x80090094 */ beq	$v0,$a0,.L8008ff74
.L80090098:
/* 0x80090098 */ addiu	$v1,$v1,4
.L8009009c:
/* 0x8009009c */ lw	$v0,8($v1)
.L800900a0:
/* 0x800900a0 */ sll	$zero,$zero,0x0
.L800900a4:
/* 0x800900a4 */ bgez	$v0,.L80090090
.L800900a8:
/* 0x800900a8 */ addiu	$s0,$s0,1
.L800900ac:
/* 0x800900ac */ lui	$v1,0x800f
.L800900b0:
/* 0x800900b0 */ addiu	$v1,$v1,10376
.L800900b4:
/* 0x800900b4 */ lw	$a0,112($v1)
.L800900b8:
/* 0x800900b8 */ addiu	$v0,$zero,-1
.L800900bc:
/* 0x800900bc */ sw	$v0,92($s2)
.L800900c0:
/* 0x800900c0 */ sw	$a0,88($s2)
.L800900c4:
/* 0x800900c4 */ lw	$v0,112($v1)
.L800900c8:
/* 0x800900c8 */ sll	$zero,$zero,0x0
.L800900cc:
/* 0x800900cc */ sw	$v0,96($s2)
.L800900d0:
/* 0x800900d0 */ lw	$ra,40($sp)
.L800900d4:
/* 0x800900d4 */ lw	$s5,36($sp)
.L800900d8:
/* 0x800900d8 */ lw	$s4,32($sp)
.L800900dc:
/* 0x800900dc */ lw	$s3,28($sp)
.L800900e0:
/* 0x800900e0 */ lw	$s2,24($sp)
.L800900e4:
/* 0x800900e4 */ lw	$s1,20($sp)
.L800900e8:
/* 0x800900e8 */ lw	$s0,16($sp)
.L800900ec:
/* 0x800900ec */ jr	$ra
.L800900f0:
/* 0x800900f0 */ addiu	$sp,$sp,48
.size FUN_8008ff00, .-FUN_8008ff00
