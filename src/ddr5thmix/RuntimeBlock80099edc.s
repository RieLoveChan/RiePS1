.set noreorder
.set noat
.set nomacro

.section .text.FUN_80099edc
.globl FUN_80099edc
.type FUN_80099edc, @function
FUN_80099edc:
.L80099edc:
/* 0x80099edc */ addiu	$sp,$sp,-32
.L80099ee0:
/* 0x80099ee0 */ sw	$s1,20($sp)
.L80099ee4:
/* 0x80099ee4 */ lui	$s1,0x800e
.L80099ee8:
/* 0x80099ee8 */ lw	$a0,2844($s1)
.L80099eec:
/* 0x80099eec */ sw	$s2,24($sp)
.L80099ef0:
/* 0x80099ef0 */ sw	$ra,28($sp)
.L80099ef4:
/* 0x80099ef4 */ sw	$s0,16($sp)
.L80099ef8:
/* 0x80099ef8 */ lbu	$v1,0($a0)
.L80099efc:
/* 0x80099efc */ addiu	$a1,$zero,5
.L80099f00:
/* 0x80099f00 */ beq	$v1,$a1,.L80099f60
.L80099f04:
/* 0x80099f04 */ addu	$s2,$zero,$zero
.L80099f08:
/* 0x80099f08 */ slti	$v0,$v1,6
.L80099f0c:
/* 0x80099f0c */ beq	$v0,$zero,.L80099f24
.L80099f10:
/* 0x80099f10 */ addiu	$v0,$zero,16
.L80099f14:
/* 0x80099f14 */ beq	$v1,$zero,.L80099f3c
.L80099f18:
/* 0x80099f18 */ lui	$v0,0x800e
.L80099f1c:
/* 0x80099f1c */ j	.L8009a0d8
.L80099f20:
/* 0x80099f20 */ sll	$zero,$zero,0x0
.L80099f24:
/* 0x80099f24 */ beq	$v1,$v0,.L8009a058
.L80099f28:
/* 0x80099f28 */ addiu	$v0,$zero,240
.L80099f2c:
/* 0x80099f2c */ beq	$v1,$v0,.L8009a084
.L80099f30:
/* 0x80099f30 */ lui	$v0,0x800e
.L80099f34:
/* 0x80099f34 */ j	.L8009a0d8
.L80099f38:
/* 0x80099f38 */ sll	$zero,$zero,0x0
.L80099f3c:
/* 0x80099f3c */ lui	$v0,0x800e
.L80099f40:
/* 0x80099f40 */ sb	$zero,2928($v0)
.L80099f44:
/* 0x80099f44 */ sb	$a1,0($a0)
.L80099f48:
/* 0x80099f48 */ lw	$v0,2844($s1)
.L80099f4c:
/* 0x80099f4c */ sll	$zero,$zero,0x0
.L80099f50:
/* 0x80099f50 */ sb	$zero,1($v0)
.L80099f54:
/* 0x80099f54 */ lw	$v0,2844($s1)
.L80099f58:
/* 0x80099f58 */ j	.L8009a0d4
.L80099f5c:
/* 0x80099f5c */ sw	$zero,96($v0)
.L80099f60:
/* 0x80099f60 */ lbu	$s0,1($a0)
.L80099f64:
/* 0x80099f64 */ sll	$zero,$zero,0x0
.L80099f68:
/* 0x80099f68 */ beq	$s0,$zero,.L80099f80
.L80099f6c:
/* 0x80099f6c */ addiu	$v0,$zero,1
.L80099f70:
/* 0x80099f70 */ beq	$s0,$v0,.L80099f94
.L80099f74:
/* 0x80099f74 */ lui	$v0,0x800e
.L80099f78:
/* 0x80099f78 */ j	.L8009a0d8
.L80099f7c:
/* 0x80099f7c */ sll	$zero,$zero,0x0
.L80099f80:
/* 0x80099f80 */ lui	$v0,0x800e
.L80099f84:
/* 0x80099f84 */ sb	$zero,16489($v0)
.L80099f88:
/* 0x80099f88 */ addiu	$v0,$zero,1
.L80099f8c:
/* 0x80099f8c */ j	.L8009a0d4
.L80099f90:
/* 0x80099f90 */ sb	$v0,1($a0)
.L80099f94:
/* 0x80099f94 */ lbu	$a0,12($a0)
.L80099f98:
/* 0x80099f98 */ jal	0x8002c7a0
.L80099f9c:
/* 0x80099f9c */ sll	$zero,$zero,0x0
.L80099fa0:
/* 0x80099fa0 */ addu	$v1,$v0,$zero
.L80099fa4:
/* 0x80099fa4 */ blez	$v1,.L8009a0d8
.L80099fa8:
/* 0x80099fa8 */ lui	$v0,0x800e
.L80099fac:
/* 0x80099fac */ bne	$v1,$s0,.L80099fc8
.L80099fb0:
/* 0x80099fb0 */ lui	$v0,0x800e
.L80099fb4:
/* 0x80099fb4 */ sb	$v1,2928($v0)
.L80099fb8:
/* 0x80099fb8 */ lw	$v1,2844($s1)
.L80099fbc:
/* 0x80099fbc */ addiu	$v0,$zero,16
.L80099fc0:
/* 0x80099fc0 */ j	.L8009a078
.L80099fc4:
/* 0x80099fc4 */ sb	$v0,0($v1)
.L80099fc8:
/* 0x80099fc8 */ lw	$a0,2844($s1)
.L80099fcc:
/* 0x80099fcc */ sll	$zero,$zero,0x0
.L80099fd0:
/* 0x80099fd0 */ lw	$v0,96($a0)
.L80099fd4:
/* 0x80099fd4 */ sll	$zero,$zero,0x0
.L80099fd8:
/* 0x80099fd8 */ sltiu	$v0,$v0,20
.L80099fdc:
/* 0x80099fdc */ beq	$v0,$zero,.L80099fec
.L80099fe0:
/* 0x80099fe0 */ addiu	$v0,$zero,3
.L80099fe4:
/* 0x80099fe4 */ j	.L8009a038
.L80099fe8:
/* 0x80099fe8 */ sb	$zero,1($a0)
.L80099fec:
/* 0x80099fec */ beq	$v1,$v0,.L8009a004
.L80099ff0:
/* 0x80099ff0 */ slti	$v0,$v1,4
.L80099ff4:
/* 0x80099ff4 */ beq	$v0,$zero,.L8009a010
.L80099ff8:
/* 0x80099ff8 */ addiu	$v0,$zero,2
.L80099ffc:
/* 0x80099ffc */ bne	$v1,$v0,.L8009a010
.L8009a000:
/* 0x8009a000 */ sll	$zero,$zero,0x0
.L8009a004:
/* 0x8009a004 */ lui	$v0,0x800e
.L8009a008:
/* 0x8009a008 */ j	.L8009a01c
.L8009a00c:
/* 0x8009a00c */ sb	$v1,2928($v0)
.L8009a010:
/* 0x8009a010 */ lui	$v1,0x800e
.L8009a014:
/* 0x8009a014 */ addiu	$v0,$zero,4
.L8009a018:
/* 0x8009a018 */ sb	$v0,2928($v1)
.L8009a01c:
/* 0x8009a01c */ lui	$a0,0x800e
.L8009a020:
/* 0x8009a020 */ lw	$v1,2844($a0)
.L8009a024:
/* 0x8009a024 */ addiu	$v0,$zero,16
.L8009a028:
/* 0x8009a028 */ sb	$v0,0($v1)
.L8009a02c:
/* 0x8009a02c */ lw	$v0,2844($a0)
.L8009a030:
/* 0x8009a030 */ sll	$zero,$zero,0x0
.L8009a034:
/* 0x8009a034 */ sb	$zero,1($v0)
.L8009a038:
/* 0x8009a038 */ lui	$v0,0x800e
.L8009a03c:
/* 0x8009a03c */ lw	$v1,2844($v0)
.L8009a040:
/* 0x8009a040 */ sll	$zero,$zero,0x0
.L8009a044:
/* 0x8009a044 */ lw	$v0,96($v1)
.L8009a048:
/* 0x8009a048 */ sll	$zero,$zero,0x0
.L8009a04c:
/* 0x8009a04c */ addiu	$v0,$v0,1
.L8009a050:
/* 0x8009a050 */ j	.L8009a0d4
.L8009a054:
/* 0x8009a054 */ sw	$v0,96($v1)
.L8009a058:
/* 0x8009a058 */ lw	$v0,136($a0)
.L8009a05c:
/* 0x8009a05c */ lw	$v1,140($a0)
.L8009a060:
/* 0x8009a060 */ sll	$zero,$zero,0x0
.L8009a064:
/* 0x8009a064 */ sltu	$v0,$v0,$v1
.L8009a068:
/* 0x8009a068 */ bne	$v0,$zero,.L8009a0d8
.L8009a06c:
/* 0x8009a06c */ lui	$v0,0x800e
.L8009a070:
/* 0x8009a070 */ addiu	$v0,$zero,240
.L8009a074:
/* 0x8009a074 */ sb	$v0,0($a0)
.L8009a078:
/* 0x8009a078 */ lw	$v0,2844($s1)
.L8009a07c:
/* 0x8009a07c */ j	.L8009a0d4
.L8009a080:
/* 0x8009a080 */ sb	$zero,1($v0)
.L8009a084:
/* 0x8009a084 */ lui	$v0,0x800e
.L8009a088:
/* 0x8009a088 */ lbu	$v1,2928($v0)
.L8009a08c:
/* 0x8009a08c */ sll	$zero,$zero,0x0
.L8009a090:
/* 0x8009a090 */ sltiu	$v0,$v1,5
.L8009a094:
/* 0x8009a094 */ beq	$v0,$zero,.L8009a0d0
.L8009a098:
/* 0x8009a098 */ lui	$v0,0x8002
.L8009a09c:
/* 0x8009a09c */ addiu	$v0,$v0,-3188
.L8009a0a0:
/* 0x8009a0a0 */ sll	$v1,$v1,0x2
.L8009a0a4:
/* 0x8009a0a4 */ addu	$v1,$v1,$v0
.L8009a0a8:
/* 0x8009a0a8 */ lw	$v0,0($v1)
.L8009a0ac:
/* 0x8009a0ac */ sll	$zero,$zero,0x0
.L8009a0b0:
/* 0x8009a0b0 */ jr	$v0
.L8009a0b4:
/* 0x8009a0b4 */ sll	$zero,$zero,0x0
.L8009a0b8:
/* 0x8009a0b8 */ j	.L8009a0d4
.L8009a0bc:
/* 0x8009a0bc */ addiu	$s2,$zero,1
.L8009a0c0:
/* 0x8009a0c0 */ j	.L8009a0d4
.L8009a0c4:
/* 0x8009a0c4 */ addiu	$s2,$zero,3
.L8009a0c8:
/* 0x8009a0c8 */ j	.L8009a0d4
.L8009a0cc:
/* 0x8009a0cc */ addiu	$s2,$zero,5
.L8009a0d0:
/* 0x8009a0d0 */ addiu	$s2,$zero,4
.L8009a0d4:
/* 0x8009a0d4 */ lui	$v0,0x800e
.L8009a0d8:
/* 0x8009a0d8 */ lw	$a0,2844($v0)
.L8009a0dc:
/* 0x8009a0dc */ sll	$zero,$zero,0x0
.L8009a0e0:
/* 0x8009a0e0 */ lw	$v1,136($a0)
.L8009a0e4:
/* 0x8009a0e4 */ addu	$v0,$s2,$zero
.L8009a0e8:
/* 0x8009a0e8 */ addiu	$v1,$v1,1
.L8009a0ec:
/* 0x8009a0ec */ sw	$v1,136($a0)
.size FUN_80099edc, .-FUN_80099edc
