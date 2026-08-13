.set noreorder
.set noat
.set nomacro

.section .text.FUN_8008cd3c
.globl FUN_8008cd3c
.type FUN_8008cd3c, @function
FUN_8008cd3c:
/* Runtime resource, timing, and state coordinator. */
.L8008cd3c:
/* 0x8008cd3c */ addiu	$sp,$sp,-96
.L8008cd40:
/* 0x8008cd40 */ sw	$s1,60($sp)
.L8008cd44:
/* 0x8008cd44 */ addu	$s1,$a0,$zero
.L8008cd48:
/* 0x8008cd48 */ sw	$s7,84($sp)
.L8008cd4c:
/* 0x8008cd4c */ addu	$s7,$zero,$zero
.L8008cd50:
/* 0x8008cd50 */ sw	$ra,92($sp)
.L8008cd54:
/* 0x8008cd54 */ sw	$s8,88($sp)
.L8008cd58:
/* 0x8008cd58 */ sw	$s6,80($sp)
.L8008cd5c:
/* 0x8008cd5c */ sw	$s5,76($sp)
.L8008cd60:
/* 0x8008cd60 */ sw	$s4,72($sp)
.L8008cd64:
/* 0x8008cd64 */ sw	$s3,68($sp)
.L8008cd68:
/* 0x8008cd68 */ sw	$s2,64($sp)
.L8008cd6c:
/* 0x8008cd6c */ sw	$s0,56($sp)
.L8008cd70:
/* 0x8008cd70 */ jal	0x8009302c
.L8008cd74:
/* 0x8008cd74 */ sw	$zero,48($sp)
.L8008cd78:
/* 0x8008cd78 */ lui	$v0,0x800f
.L8008cd7c:
/* 0x8008cd7c */ addiu	$s0,$v0,10376
.L8008cd80:
/* 0x8008cd80 */ sw	$zero,1892($s1)
.L8008cd84:
/* 0x8008cd84 */ lw	$v1,116($s0)
.L8008cd88:
/* 0x8008cd88 */ addiu	$v0,$zero,1202
.L8008cd8c:
/* 0x8008cd8c */ bne	$v1,$v0,.L8008cdf4
.L8008cd90:
/* 0x8008cd90 */ lui	$v0,0x800f
.L8008cd94:
/* 0x8008cd94 */ lw	$a0,10508($v0)
.L8008cd98:
/* 0x8008cd98 */ jal	0x8007ef10
.L8008cd9c:
/* 0x8008cd9c */ sll	$zero,$zero,0x0
.L8008cda0:
/* 0x8008cda0 */ bne	$v0,$zero,.L8008cdec
.L8008cda4:
/* 0x8008cda4 */ addiu	$a0,$zero,825
.L8008cda8:
/* 0x8008cda8 */ lui	$v0,0x8002
.L8008cdac:
/* 0x8008cdac */ addiu	$t3,$v0,-6464
.L8008cdb0:
/* 0x8008cdb0 */ lw	$t0,0($t3)
.L8008cdb4:
/* 0x8008cdb4 */ lw	$t1,4($t3)
.L8008cdb8:
/* 0x8008cdb8 */ lw	$t2,8($t3)
.L8008cdbc:
/* 0x8008cdbc */ sw	$t0,32($sp)
.L8008cdc0:
/* 0x8008cdc0 */ sw	$t1,36($sp)
.L8008cdc4:
/* 0x8008cdc4 */ sw	$t2,40($sp)
.L8008cdc8:
/* 0x8008cdc8 */ lw	$t0,12($t3)
.L8008cdcc:
/* 0x8008cdcc */ sll	$zero,$zero,0x0
.L8008cdd0:
/* 0x8008cdd0 */ sw	$t0,44($sp)
.L8008cdd4:
/* 0x8008cdd4 */ lw	$v0,112($s0)
.L8008cdd8:
/* 0x8008cdd8 */ addiu	$v1,$sp,32
.L8008cddc:
/* 0x8008cddc */ andi	$v0,$v0,0x1
.L8008cde0:
/* 0x8008cde0 */ sll	$v0,$v0,0x2
.L8008cde4:
/* 0x8008cde4 */ addu	$v1,$v1,$v0
.L8008cde8:
/* 0x8008cde8 */ lhu	$a0,0($v1)
.L8008cdec:
/* 0x8008cdec */ jal	0x80028358
.L8008cdf0:
/* 0x8008cdf0 */ sll	$zero,$zero,0x0
.L8008cdf4:
/* 0x8008cdf4 */ addu	$s0,$zero,$zero
.L8008cdf8:
/* 0x8008cdf8 */ addu	$a0,$s0,$zero
.L8008cdfc:
/* 0x8008cdfc */ jal	0x80043134
.L8008ce00:
/* 0x8008ce00 */ addiu	$a1,$zero,15
.L8008ce04:
/* 0x8008ce04 */ addu	$a0,$s0,$zero
.L8008ce08:
/* 0x8008ce08 */ jal	0x80048c3c
.L8008ce0c:
/* 0x8008ce0c */ addiu	$a1,$zero,-1
.L8008ce10:
/* 0x8008ce10 */ addu	$a0,$s0,$zero
.L8008ce14:
/* 0x8008ce14 */ jal	0x80048e80
.L8008ce18:
/* 0x8008ce18 */ addiu	$a1,$zero,252
.L8008ce1c:
/* 0x8008ce1c */ addu	$s4,$s0,$zero
.L8008ce20:
/* 0x8008ce20 */ lui	$v0,0x800f
.L8008ce24:
/* 0x8008ce24 */ lw	$a0,10488($v0)
.L8008ce28:
/* 0x8008ce28 */ lw	$v0,1876($s1)
.L8008ce2c:
/* 0x8008ce2c */ lw	$v1,1880($s1)
.L8008ce30:
/* 0x8008ce30 */ subu	$s2,$a0,$v0
.L8008ce34:
/* 0x8008ce34 */ addiu	$v0,$zero,1
.L8008ce38:
/* 0x8008ce38 */ beq	$s2,$v0,.L8008ce48
.L8008ce3c:
/* 0x8008ce3c */ subu	$s3,$a0,$v1
.L8008ce40:
/* 0x8008ce40 */ bne	$s3,$v0,.L8008ce54
.L8008ce44:
/* 0x8008ce44 */ addiu	$s5,$zero,12
.L8008ce48:
/* 0x8008ce48 */ jal	0x80028358
.L8008ce4c:
/* 0x8008ce4c */ addiu	$a0,$zero,788
.L8008ce50:
/* 0x8008ce50 */ addiu	$s5,$zero,12
.L8008ce54:
/* 0x8008ce54 */ bne	$s2,$s5,.L8008ce64
.L8008ce58:
/* 0x8008ce58 */ sll	$zero,$zero,0x0
.L8008ce5c:
/* 0x8008ce5c */ jal	0x8007b8b4
.L8008ce60:
/* 0x8008ce60 */ sll	$zero,$zero,0x0
.L8008ce64:
/* 0x8008ce64 */ bltz	$s2,.L8008cfdc
.L8008ce68:
/* 0x8008ce68 */ slti	$v0,$s2,13
.L8008ce6c:
/* 0x8008ce6c */ beq	$v0,$zero,.L8008ce9c
.L8008ce70:
/* 0x8008ce70 */ addiu	$a0,$s1,1892
.L8008ce74:
/* 0x8008ce74 */ addu	$a1,$s4,$zero
.L8008ce78:
/* 0x8008ce78 */ addu	$a2,$s0,$zero
.L8008ce7c:
/* 0x8008ce7c */ addiu	$a3,$zero,91
.L8008ce80:
/* 0x8008ce80 */ addiu	$v1,$zero,1
.L8008ce84:
/* 0x8008ce84 */ addu	$v0,$s2,$v1
.L8008ce88:
/* 0x8008ce88 */ sw	$v1,16($sp)
.L8008ce8c:
/* 0x8008ce8c */ sw	$v0,20($sp)
.L8008ce90:
/* 0x8008ce90 */ sw	$s5,24($sp)
.L8008ce94:
/* 0x8008ce94 */ j	0x8008cfd0
.L8008ce98:
/* 0x8008ce98 */ sw	$v1,28($sp)
.L8008ce9c:
/* 0x8008ce9c */ slti	$v0,$s2,58
.L8008cea0:
/* 0x8008cea0 */ beq	$v0,$zero,.L8008cef0
.L8008cea4:
/* 0x8008cea4 */ addu	$a1,$s4,$zero
.L8008cea8:
/* 0x8008cea8 */ addu	$a2,$s0,$zero
.L8008ceac:
/* 0x8008ceac */ addiu	$a3,$zero,2
.L8008ceb0:
/* 0x8008ceb0 */ addiu	$v0,$zero,1200
.L8008ceb4:
/* 0x8008ceb4 */ addiu	$v1,$zero,28
.L8008ceb8:
/* 0x8008ceb8 */ sw	$v0,16($sp)
.L8008cebc:
/* 0x8008cebc */ subu	$v0,$v1,$s2
.L8008cec0:
/* 0x8008cec0 */ sw	$v0,20($sp)
.L8008cec4:
/* 0x8008cec4 */ jal	0x80086478
.L8008cec8:
/* 0x8008cec8 */ sw	$v1,24($sp)
.L8008cecc:
/* 0x8008cecc */ addu	$a0,$s1,$zero
.L8008ced0:
/* 0x8008ced0 */ addu	$a1,$s4,$zero
.L8008ced4:
/* 0x8008ced4 */ addu	$a2,$v0,$zero
.L8008ced8:
/* 0x8008ced8 */ addiu	$a3,$s2,-12
.L8008cedc:
/* 0x8008cedc */ addiu	$v0,$zero,45
.L8008cee0:
/* 0x8008cee0 */ jal	0x8008cb00
.L8008cee4:
/* 0x8008cee4 */ sw	$v0,16($sp)
.L8008cee8:
/* 0x8008cee8 */ j	0x8008cfdc
.L8008ceec:
/* 0x8008ceec */ addu	$s0,$v0,$zero
.L8008cef0:
/* 0x8008cef0 */ lw	$v1,1880($s1)
.L8008cef4:
/* 0x8008cef4 */ addiu	$v0,$zero,-1
.L8008cef8:
/* 0x8008cef8 */ bne	$v1,$v0,.L8008cf48
.L8008cefc:
/* 0x8008cefc */ slti	$v0,$s3,46
.L8008cf00:
/* 0x8008cf00 */ addiu	$a0,$s1,1892
.L8008cf04:
/* 0x8008cf04 */ addu	$a1,$s4,$zero
.L8008cf08:
/* 0x8008cf08 */ addu	$a2,$s0,$zero
.L8008cf0c:
/* 0x8008cf0c */ addiu	$a3,$zero,2
.L8008cf10:
/* 0x8008cf10 */ addiu	$v0,$zero,1200
.L8008cf14:
/* 0x8008cf14 */ sw	$v0,16($sp)
.L8008cf18:
/* 0x8008cf18 */ sw	$zero,20($sp)
.L8008cf1c:
/* 0x8008cf1c */ jal	0x80086478
.L8008cf20:
/* 0x8008cf20 */ sw	$zero,24($sp)
.L8008cf24:
/* 0x8008cf24 */ addu	$a0,$s1,$zero
.L8008cf28:
/* 0x8008cf28 */ addu	$a1,$s4,$zero
.L8008cf2c:
/* 0x8008cf2c */ addu	$a2,$v0,$zero
.L8008cf30:
/* 0x8008cf30 */ addiu	$a3,$zero,57
.L8008cf34:
/* 0x8008cf34 */ addu	$v0,$a3,$zero
.L8008cf38:
/* 0x8008cf38 */ jal	0x8008cb00
.L8008cf3c:
/* 0x8008cf3c */ sw	$v0,16($sp)
.L8008cf40:
/* 0x8008cf40 */ j	0x8008cfdc
.L8008cf44:
/* 0x8008cf44 */ addu	$s0,$v0,$zero
.L8008cf48:
/* 0x8008cf48 */ beq	$v0,$zero,.L8008cf9c
.L8008cf4c:
/* 0x8008cf4c */ addiu	$a0,$s1,1892
.L8008cf50:
/* 0x8008cf50 */ addu	$a1,$s4,$zero
.L8008cf54:
/* 0x8008cf54 */ addu	$a2,$s0,$zero
.L8008cf58:
/* 0x8008cf58 */ addiu	$a3,$zero,2
.L8008cf5c:
/* 0x8008cf5c */ addiu	$v0,$zero,1200
.L8008cf60:
/* 0x8008cf60 */ sw	$v0,16($sp)
.L8008cf64:
/* 0x8008cf64 */ addiu	$v0,$s3,-29
.L8008cf68:
/* 0x8008cf68 */ sw	$v0,20($sp)
.L8008cf6c:
/* 0x8008cf6c */ addiu	$v0,$zero,28
.L8008cf70:
/* 0x8008cf70 */ jal	0x80086478
.L8008cf74:
/* 0x8008cf74 */ sw	$v0,24($sp)
.L8008cf78:
/* 0x8008cf78 */ addu	$a0,$s1,$zero
.L8008cf7c:
/* 0x8008cf7c */ addu	$a1,$s4,$zero
.L8008cf80:
/* 0x8008cf80 */ addu	$a2,$v0,$zero
.L8008cf84:
/* 0x8008cf84 */ addiu	$v0,$zero,45
.L8008cf88:
/* 0x8008cf88 */ subu	$a3,$v0,$s3
.L8008cf8c:
/* 0x8008cf8c */ jal	0x8008cb00
.L8008cf90:
/* 0x8008cf90 */ sw	$v0,16($sp)
.L8008cf94:
/* 0x8008cf94 */ j	0x8008cfdc
.L8008cf98:
/* 0x8008cf98 */ addu	$s0,$v0,$zero
.L8008cf9c:
/* 0x8008cf9c */ slti	$v0,$s3,58
.L8008cfa0:
/* 0x8008cfa0 */ bne	$v0,$zero,.L8008cfb0
.L8008cfa4:
/* 0x8008cfa4 */ addu	$a1,$s4,$zero
.L8008cfa8:
/* 0x8008cfa8 */ j	0x8008e78c
.L8008cfac:
/* 0x8008cfac */ addiu	$v0,$zero,4
.L8008cfb0:
/* 0x8008cfb0 */ addu	$a2,$s0,$zero
.L8008cfb4:
/* 0x8008cfb4 */ addiu	$a3,$zero,91
.L8008cfb8:
/* 0x8008cfb8 */ addiu	$v0,$zero,57
.L8008cfbc:
/* 0x8008cfbc */ subu	$v0,$v0,$s3
.L8008cfc0:
/* 0x8008cfc0 */ sw	$zero,16($sp)
.L8008cfc4:
/* 0x8008cfc4 */ sw	$v0,20($sp)
.L8008cfc8:
/* 0x8008cfc8 */ sw	$s5,24($sp)
.L8008cfcc:
/* 0x8008cfcc */ sw	$zero,28($sp)
.L8008cfd0:
/* 0x8008cfd0 */ jal	0x80086334
.L8008cfd4:
/* 0x8008cfd4 */ sll	$zero,$zero,0x0
.L8008cfd8:
/* 0x8008cfd8 */ addu	$s0,$v0,$zero
.L8008cfdc:
/* 0x8008cfdc */ addu	$a0,$s4,$zero
.L8008cfe0:
/* 0x8008cfe0 */ jal	0x80048aa8
.L8008cfe4:
/* 0x8008cfe4 */ addu	$a1,$s0,$zero
.L8008cfe8:
/* 0x8008cfe8 */ jal	0x80043344
.L8008cfec:
/* 0x8008cfec */ addu	$a0,$s4,$zero
.L8008cff0:
/* 0x8008cff0 */ jal	0x80093168
.L8008cff4:
/* 0x8008cff4 */ sll	$zero,$zero,0x0
.L8008cff8:
/* 0x8008cff8 */ lbu	$v0,1968($s1)
.L8008cffc:
/* 0x8008cffc */ sll	$zero,$zero,0x0
.L8008d000:
/* 0x8008d000 */ bne	$v0,$zero,.L8008d04c
.L8008d004:
/* 0x8008d004 */ lui	$v0,0x800f
.L8008d008:
/* 0x8008d008 */ lw	$v0,0($s1)
.L8008d00c:
/* 0x8008d00c */ sll	$zero,$zero,0x0
.L8008d010:
/* 0x8008d010 */ sll	$v0,$v0,0x1
.L8008d014:
/* 0x8008d014 */ addu	$v0,$s1,$v0
.L8008d018:
/* 0x8008d018 */ lh	$v0,22($v0)
.L8008d01c:
/* 0x8008d01c */ sll	$zero,$zero,0x0
.L8008d020:
/* 0x8008d020 */ sll	$v0,$v0,0x1
.L8008d024:
/* 0x8008d024 */ addu	$v1,$s1,$v0
.L8008d028:
/* 0x8008d028 */ lh	$v0,802($v1)
.L8008d02c:
/* 0x8008d02c */ sll	$zero,$zero,0x0
.L8008d030:
/* 0x8008d030 */ bne	$v0,$zero,.L8008d04c
.L8008d034:
/* 0x8008d034 */ lui	$v0,0x800f
.L8008d038:
/* 0x8008d038 */ addiu	$v0,$zero,1
.L8008d03c:
/* 0x8008d03c */ sh	$v0,802($v1)
.L8008d040:
/* 0x8008d040 */ addiu	$v0,$zero,90
.L8008d044:
/* 0x8008d044 */ sw	$v0,8($s1)
.L8008d048:
/* 0x8008d048 */ lui	$v0,0x800f
.L8008d04c:
/* 0x8008d04c */ addiu	$a0,$v0,10376
.L8008d050:
/* 0x8008d050 */ lw	$v0,116($a0)
.L8008d054:
/* 0x8008d054 */ sll	$zero,$zero,0x0
.L8008d058:
/* 0x8008d058 */ slti	$v0,$v0,10
.L8008d05c:
/* 0x8008d05c */ bne	$v0,$zero,.L8008e78c
.L8008d060:
/* 0x8008d060 */ addu	$v0,$zero,$zero
.L8008d064:
/* 0x8008d064 */ lw	$v0,1872($s1)
.L8008d068:
/* 0x8008d068 */ addiu	$v1,$zero,16
.L8008d06c:
/* 0x8008d06c */ addiu	$v0,$v0,1
.L8008d070:
/* 0x8008d070 */ bne	$v0,$v1,.L8008d094
.L8008d074:
/* 0x8008d074 */ sw	$v0,1872($s1)
.L8008d078:
/* 0x8008d078 */ lbu	$v0,1968($s1)
.L8008d07c:
/* 0x8008d07c */ sll	$zero,$zero,0x0
.L8008d080:
/* 0x8008d080 */ bne	$v0,$zero,.L8008d094
.L8008d084:
/* 0x8008d084 */ sll	$zero,$zero,0x0
.L8008d088:
/* 0x8008d088 */ lw	$v0,112($a0)
.L8008d08c:
/* 0x8008d08c */ sll	$zero,$zero,0x0
.L8008d090:
/* 0x8008d090 */ sw	$v0,1884($s1)
.L8008d094:
/* 0x8008d094 */ lw	$v0,1872($s1)
.L8008d098:
/* 0x8008d098 */ sll	$zero,$zero,0x0
.L8008d09c:
/* 0x8008d09c */ slti	$v0,$v0,17
.L8008d0a0:
/* 0x8008d0a0 */ bne	$v0,$zero,.L8008d0ac
.L8008d0a4:
/* 0x8008d0a4 */ addiu	$v0,$zero,16
.L8008d0a8:
/* 0x8008d0a8 */ sw	$v0,1872($s1)
.L8008d0ac:
/* 0x8008d0ac */ lw	$a0,1872($s1)
.L8008d0b0:
/* 0x8008d0b0 */ jal	0x8004964c
.L8008d0b4:
/* 0x8008d0b4 */ sll	$a0,$a0,0x6
.L8008d0b8:
/* 0x8008d0b8 */ lw	$v1,1864($s1)
.L8008d0bc:
/* 0x8008d0bc */ lw	$a1,1860($s1)
.L8008d0c0:
/* 0x8008d0c0 */ sll	$zero,$zero,0x0
.L8008d0c4:
/* 0x8008d0c4 */ subu	$v1,$v1,$a1
.L8008d0c8:
/* 0x8008d0c8 */ mult	$v1,$v0
.L8008d0cc:
/* 0x8008d0cc */ mflo	$v0
.L8008d0d0:
/* 0x8008d0d0 */ bgez	$v0,.L8008d0dc
.L8008d0d4:
/* 0x8008d0d4 */ sll	$zero,$zero,0x0
.L8008d0d8:
/* 0x8008d0d8 */ addiu	$v0,$v0,4095
.L8008d0dc:
/* 0x8008d0dc */ sra	$v0,$v0,0xc
.L8008d0e0:
/* 0x8008d0e0 */ lw	$a0,1864($s1)
.L8008d0e4:
/* 0x8008d0e4 */ addu	$v0,$a1,$v0
.L8008d0e8:
/* 0x8008d0e8 */ bgez	$a0,.L8008d11c
.L8008d0ec:
/* 0x8008d0ec */ sw	$v0,1868($s1)
.L8008d0f0:
/* 0x8008d0f0 */ lw	$v1,4($s1)
.L8008d0f4:
/* 0x8008d0f4 */ negu	$v0,$a0
.L8008d0f8:
/* 0x8008d0f8 */ sll	$v1,$v1,0xc
.L8008d0fc:
/* 0x8008d0fc */ div	$zero,$v0,$v1
.L8008d100:
/* 0x8008d100 */ mfhi	$a0
.L8008d104:
/* 0x8008d104 */ sll	$zero,$zero,0x0
.L8008d108:
/* 0x8008d108 */ subu	$a0,$v1,$a0
.L8008d10c:
/* 0x8008d10c */ div	$zero,$a0,$v1
.L8008d110:
/* 0x8008d110 */ mfhi	$v0
.L8008d114:
/* 0x8008d114 */ j	0x8008d138
.L8008d118:
/* 0x8008d118 */ sra	$v1,$v0,0xc
.L8008d11c:
/* 0x8008d11c */ lw	$v0,4($s1)
.L8008d120:
/* 0x8008d120 */ sll	$zero,$zero,0x0
.L8008d124:
/* 0x8008d124 */ sll	$v0,$v0,0xc
.L8008d128:
/* 0x8008d128 */ div	$zero,$a0,$v0
.L8008d12c:
/* 0x8008d12c */ mfhi	$v1
.L8008d130:
/* 0x8008d130 */ sll	$zero,$zero,0x0
.L8008d134:
/* 0x8008d134 */ sra	$v1,$v1,0xc
.L8008d138:
/* 0x8008d138 */ lbu	$v0,1968($s1)
.L8008d13c:
/* 0x8008d13c */ sll	$zero,$zero,0x0
.L8008d140:
/* 0x8008d140 */ bne	$v0,$zero,.L8008d170
.L8008d144:
/* 0x8008d144 */ sw	$v1,0($s1)
.L8008d148:
/* 0x8008d148 */ sll	$v0,$v1,0x1
.L8008d14c:
/* 0x8008d14c */ addu	$v0,$s1,$v0
.L8008d150:
/* 0x8008d150 */ lui	$s0,0x800f
.L8008d154:
/* 0x8008d154 */ lhu	$v0,22($v0)
.L8008d158:
/* 0x8008d158 */ addiu	$s0,$s0,10504
.L8008d15c:
/* 0x8008d15c */ sll	$a0,$v0,0x10
.L8008d160:
/* 0x8008d160 */ sra	$a0,$a0,0x10
.L8008d164:
/* 0x8008d164 */ jal	0x8007ee38
.L8008d168:
/* 0x8008d168 */ sh	$v0,28($s0)
.L8008d16c:
/* 0x8008d16c */ sw	$v0,4($s0)
.L8008d170:
/* 0x8008d170 */ lw	$v1,1864($s1)
.L8008d174:
/* 0x8008d174 */ lw	$v0,1868($s1)
.L8008d178:
/* 0x8008d178 */ sll	$zero,$zero,0x0
.L8008d17c:
/* 0x8008d17c */ beq	$v1,$v0,.L8008d1a4
.L8008d180:
/* 0x8008d180 */ lui	$v0,0x800f
.L8008d184:
/* 0x8008d184 */ addiu	$a0,$v0,10376
.L8008d188:
/* 0x8008d188 */ lw	$v1,116($a0)
.L8008d18c:
/* 0x8008d18c */ addiu	$v0,$zero,1201
.L8008d190:
/* 0x8008d190 */ bne	$v1,$v0,.L8008d1a4
.L8008d194:
/* 0x8008d194 */ addiu	$v0,$zero,1200
.L8008d198:
/* 0x8008d198 */ sw	$v0,116($a0)
.L8008d19c:
/* 0x8008d19c */ j	0x8008e78c
.L8008d1a0:
/* 0x8008d1a0 */ addiu	$v0,$zero,3
.L8008d1a4:
/* 0x8008d1a4 */ lw	$v1,1868($s1)
.L8008d1a8:
/* 0x8008d1a8 */ lw	$v0,1864($s1)
.L8008d1ac:
/* 0x8008d1ac */ sll	$zero,$zero,0x0
.L8008d1b0:
/* 0x8008d1b0 */ bne	$v1,$v0,.L8008d1f0
.L8008d1b4:
/* 0x8008d1b4 */ lui	$v0,0x800f
.L8008d1b8:
/* 0x8008d1b8 */ addiu	$a0,$v0,10376
.L8008d1bc:
/* 0x8008d1bc */ lw	$v1,116($a0)
.L8008d1c0:
/* 0x8008d1c0 */ addiu	$v0,$zero,1201
.L8008d1c4:
/* 0x8008d1c4 */ bne	$v1,$v0,.L8008d1f0
.L8008d1c8:
/* 0x8008d1c8 */ lui	$v0,0x800f
.L8008d1cc:
/* 0x8008d1cc */ lw	$v1,1880($s1)
.L8008d1d0:
/* 0x8008d1d0 */ addiu	$v0,$zero,-1
.L8008d1d4:
/* 0x8008d1d4 */ bne	$v1,$v0,.L8008d1f0
.L8008d1d8:
/* 0x8008d1d8 */ lui	$v0,0x800f
.L8008d1dc:
/* 0x8008d1dc */ lw	$v1,112($a0)
.L8008d1e0:
/* 0x8008d1e0 */ addiu	$v0,$zero,1200
.L8008d1e4:
/* 0x8008d1e4 */ sw	$v0,116($a0)
.L8008d1e8:
/* 0x8008d1e8 */ sw	$v1,1880($s1)
.L8008d1ec:
/* 0x8008d1ec */ lui	$v0,0x800f
.L8008d1f0:
/* 0x8008d1f0 */ addiu	$s0,$v0,10376
.L8008d1f4:
/* 0x8008d1f4 */ lw	$v0,116($s0)
.L8008d1f8:
/* 0x8008d1f8 */ sll	$zero,$zero,0x0
.L8008d1fc:
/* 0x8008d1fc */ slti	$v0,$v0,1201
.L8008d200:
/* 0x8008d200 */ beq	$v0,$zero,.L8008e78c
.L8008d204:
/* 0x8008d204 */ addiu	$v0,$zero,3
.L8008d208:
/* 0x8008d208 */ jal	0x800a0094
.L8008d20c:
/* 0x8008d20c */ sll	$zero,$zero,0x0
.L8008d210:
/* 0x8008d210 */ bne	$v0,$zero,.L8008d2a8
.L8008d214:
/* 0x8008d214 */ lui	$v0,0x800f
.L8008d218:
/* 0x8008d218 */ lw	$v0,8($s1)
.L8008d21c:
/* 0x8008d21c */ sll	$zero,$zero,0x0
.L8008d220:
/* 0x8008d220 */ blez	$v0,.L8008d2a4
.L8008d224:
/* 0x8008d224 */ addiu	$a0,$zero,-1
.L8008d228:
/* 0x8008d228 */ addu	$a1,$zero,$zero
.L8008d22c:
/* 0x8008d22c */ addiu	$a3,$zero,1200
.L8008d230:
/* 0x8008d230 */ addiu	$s3,$zero,99
.L8008d234:
/* 0x8008d234 */ lw	$a2,116($s0)
.L8008d238:
/* 0x8008d238 */ addiu	$s2,$zero,60
.L8008d23c:
/* 0x8008d23c */ sw	$s3,16($sp)
.L8008d240:
/* 0x8008d240 */ sw	$s2,20($sp)
.L8008d244:
/* 0x8008d244 */ sw	$zero,24($sp)
.L8008d248:
/* 0x8008d248 */ jal	0x800843dc
.L8008d24c:
/* 0x8008d24c */ sw	$zero,28($sp)
.L8008d250:
/* 0x8008d250 */ bne	$v0,$zero,.L8008d2a8
.L8008d254:
/* 0x8008d254 */ lui	$v0,0x800f
.L8008d258:
/* 0x8008d258 */ addiu	$a0,$zero,-2
.L8008d25c:
/* 0x8008d25c */ addu	$a1,$zero,$zero
.L8008d260:
/* 0x8008d260 */ lw	$a2,116($s0)
.L8008d264:
/* 0x8008d264 */ addiu	$a3,$zero,1200
.L8008d268:
/* 0x8008d268 */ sw	$s3,16($sp)
.L8008d26c:
/* 0x8008d26c */ sw	$s2,20($sp)
.L8008d270:
/* 0x8008d270 */ sw	$zero,24($sp)
.L8008d274:
/* 0x8008d274 */ jal	0x800843dc
.L8008d278:
/* 0x8008d278 */ sw	$zero,28($sp)
.L8008d27c:
/* 0x8008d27c */ bne	$v0,$zero,.L8008d2a8
.L8008d280:
/* 0x8008d280 */ lui	$v0,0x800f
.L8008d284:
/* 0x8008d284 */ lw	$v0,8($s1)
.L8008d288:
/* 0x8008d288 */ sll	$zero,$zero,0x0
.L8008d28c:
/* 0x8008d28c */ addiu	$v0,$v0,-1
.L8008d290:
/* 0x8008d290 */ sw	$v0,8($s1)
.L8008d294:
/* 0x8008d294 */ lw	$v0,116($s0)
.L8008d298:
/* 0x8008d298 */ sll	$zero,$zero,0x0
.L8008d29c:
/* 0x8008d29c */ addiu	$v0,$v0,-1
.L8008d2a0:
/* 0x8008d2a0 */ sw	$v0,116($s0)
.L8008d2a4:
/* 0x8008d2a4 */ lui	$v0,0x800f
.L8008d2a8:
/* 0x8008d2a8 */ lb	$v1,10530($v0)
.L8008d2ac:
/* 0x8008d2ac */ addiu	$v0,$zero,2
.L8008d2b0:
/* 0x8008d2b0 */ bne	$v1,$v0,.L8008d520
.L8008d2b4:
/* 0x8008d2b4 */ lui	$v0,0x800f
.L8008d2b8:
/* 0x8008d2b8 */ lbu	$v0,1968($s1)
.L8008d2bc:
/* 0x8008d2bc */ sll	$zero,$zero,0x0
.L8008d2c0:
/* 0x8008d2c0 */ bne	$v0,$zero,.L8008d520
.L8008d2c4:
/* 0x8008d2c4 */ lui	$v0,0x800f
.L8008d2c8:
/* 0x8008d2c8 */ addiu	$a0,$zero,-1
.L8008d2cc:
/* 0x8008d2cc */ addu	$a1,$zero,$zero
.L8008d2d0:
/* 0x8008d2d0 */ addiu	$a3,$zero,1200
.L8008d2d4:
/* 0x8008d2d4 */ lui	$v1,0x800f
.L8008d2d8:
/* 0x8008d2d8 */ lw	$v0,0($s1)
.L8008d2dc:
/* 0x8008d2dc */ lw	$a2,10492($v1)
.L8008d2e0:
/* 0x8008d2e0 */ sll	$v0,$v0,0x1
.L8008d2e4:
/* 0x8008d2e4 */ addu	$v0,$s1,$v0
.L8008d2e8:
/* 0x8008d2e8 */ lh	$s0,22($v0)
.L8008d2ec:
/* 0x8008d2ec */ addiu	$v0,$zero,99
.L8008d2f0:
/* 0x8008d2f0 */ sw	$v0,16($sp)
.L8008d2f4:
/* 0x8008d2f4 */ addiu	$v0,$zero,60
.L8008d2f8:
/* 0x8008d2f8 */ sw	$v0,20($sp)
.L8008d2fc:
/* 0x8008d2fc */ sw	$zero,24($sp)
.L8008d300:
/* 0x8008d300 */ jal	0x800843dc
.L8008d304:
/* 0x8008d304 */ sw	$zero,28($sp)
.L8008d308:
/* 0x8008d308 */ beq	$v0,$zero,.L8008d51c
.L8008d30c:
/* 0x8008d30c */ slti	$v0,$s0,200
.L8008d310:
/* 0x8008d310 */ bne	$v0,$zero,.L8008d520
.L8008d314:
/* 0x8008d314 */ lui	$v0,0x800f
.L8008d318:
/* 0x8008d318 */ lw	$v1,1868($s1)
.L8008d31c:
/* 0x8008d31c */ lw	$v0,1864($s1)
.L8008d320:
/* 0x8008d320 */ sll	$zero,$zero,0x0
.L8008d324:
/* 0x8008d324 */ bne	$v1,$v0,.L8008d520
.L8008d328:
/* 0x8008d328 */ lui	$v0,0x800f
.L8008d32c:
/* 0x8008d32c */ lbu	$v0,1968($s1)
.L8008d330:
/* 0x8008d330 */ sll	$zero,$zero,0x0
.L8008d334:
/* 0x8008d334 */ bne	$v0,$zero,.L8008d520
.L8008d338:
/* 0x8008d338 */ lui	$v0,0x800f
.L8008d33c:
/* 0x8008d33c */ bgez	$v1,.L8008d380
.L8008d340:
/* 0x8008d340 */ sll	$zero,$zero,0x0
.L8008d344:
/* 0x8008d344 */ lw	$v0,4($s1)
.L8008d348:
/* 0x8008d348 */ lw	$v1,1860($s1)
.L8008d34c:
/* 0x8008d34c */ sll	$v0,$v0,0xc
.L8008d350:
/* 0x8008d350 */ addu	$v1,$v1,$v0
.L8008d354:
/* 0x8008d354 */ lw	$v0,4($s1)
.L8008d358:
/* 0x8008d358 */ sw	$v1,1860($s1)
.L8008d35c:
/* 0x8008d35c */ lw	$v1,1864($s1)
.L8008d360:
/* 0x8008d360 */ sll	$v0,$v0,0xc
.L8008d364:
/* 0x8008d364 */ addu	$v1,$v1,$v0
.L8008d368:
/* 0x8008d368 */ lw	$v0,4($s1)
.L8008d36c:
/* 0x8008d36c */ sw	$v1,1864($s1)
.L8008d370:
/* 0x8008d370 */ lw	$v1,1868($s1)
.L8008d374:
/* 0x8008d374 */ sll	$v0,$v0,0xc
.L8008d378:
/* 0x8008d378 */ addu	$v1,$v1,$v0
.L8008d37c:
/* 0x8008d37c */ sw	$v1,1868($s1)
.L8008d380:
/* 0x8008d380 */ lw	$v1,4($s1)
.L8008d384:
/* 0x8008d384 */ lw	$v0,1868($s1)
.L8008d388:
/* 0x8008d388 */ sll	$v1,$v1,0xc
.L8008d38c:
/* 0x8008d38c */ slt	$v0,$v0,$v1
.L8008d390:
/* 0x8008d390 */ bne	$v0,$zero,.L8008d3d0
.L8008d394:
/* 0x8008d394 */ sll	$zero,$zero,0x0
.L8008d398:
/* 0x8008d398 */ lw	$v0,1860($s1)
.L8008d39c:
/* 0x8008d39c */ sll	$zero,$zero,0x0
.L8008d3a0:
/* 0x8008d3a0 */ subu	$v0,$v0,$v1
.L8008d3a4:
/* 0x8008d3a4 */ sw	$v0,1860($s1)
.L8008d3a8:
/* 0x8008d3a8 */ lw	$v0,4($s1)
.L8008d3ac:
/* 0x8008d3ac */ lw	$v1,1864($s1)
.L8008d3b0:
/* 0x8008d3b0 */ sll	$v0,$v0,0xc
.L8008d3b4:
/* 0x8008d3b4 */ subu	$v1,$v1,$v0
.L8008d3b8:
/* 0x8008d3b8 */ lw	$v0,4($s1)
.L8008d3bc:
/* 0x8008d3bc */ sw	$v1,1864($s1)
.L8008d3c0:
/* 0x8008d3c0 */ lw	$v1,1868($s1)
.L8008d3c4:
/* 0x8008d3c4 */ sll	$v0,$v0,0xc
.L8008d3c8:
/* 0x8008d3c8 */ subu	$v1,$v1,$v0
.L8008d3cc:
/* 0x8008d3cc */ sw	$v1,1868($s1)
.L8008d3d0:
/* 0x8008d3d0 */ lw	$a0,1848($s1)
.L8008d3d4:
/* 0x8008d3d4 */ addiu	$v0,$zero,-1
.L8008d3d8:
/* 0x8008d3d8 */ beq	$a0,$v0,.L8008d4f4
.L8008d3dc:
/* 0x8008d3dc */ sll	$zero,$zero,0x0
.L8008d3e0:
/* 0x8008d3e0 */ lw	$v1,1864($s1)
.L8008d3e4:
/* 0x8008d3e4 */ lw	$v0,1868($s1)
.L8008d3e8:
/* 0x8008d3e8 */ sll	$zero,$zero,0x0
.L8008d3ec:
/* 0x8008d3ec */ bne	$v1,$v0,.L8008d49c
.L8008d3f0:
/* 0x8008d3f0 */ addu	$a1,$a0,$zero
.L8008d3f4:
/* 0x8008d3f4 */ lbu	$v0,1968($s1)
.L8008d3f8:
/* 0x8008d3f8 */ sll	$zero,$zero,0x0
.L8008d3fc:
/* 0x8008d3fc */ bne	$v0,$zero,.L8008d4a0
.L8008d400:
/* 0x8008d400 */ sll	$zero,$zero,0x0
.L8008d404:
/* 0x8008d404 */ lh	$v0,22($s1)
.L8008d408:
/* 0x8008d408 */ sll	$zero,$zero,0x0
.L8008d40c:
/* 0x8008d40c */ beq	$v0,$a1,.L8008d42c
.L8008d410:
/* 0x8008d410 */ addu	$a0,$zero,$zero
.L8008d414:
/* 0x8008d414 */ addu	$v1,$s1,$zero
.L8008d418:
/* 0x8008d418 */ addiu	$v1,$v1,2
.L8008d41c:
/* 0x8008d41c */ lh	$v0,22($v1)
.L8008d420:
/* 0x8008d420 */ sll	$zero,$zero,0x0
.L8008d424:
/* 0x8008d424 */ bne	$v0,$a1,.L8008d418
.L8008d428:
/* 0x8008d428 */ addiu	$a0,$a0,1
.L8008d42c:
/* 0x8008d42c */ addiu	$v0,$a1,-200
.L8008d430:
/* 0x8008d430 */ sll	$v0,$v0,0x1
.L8008d434:
/* 0x8008d434 */ addu	$v0,$s1,$v0
.L8008d438:
/* 0x8008d438 */ lh	$a1,1782($v0)
.L8008d43c:
/* 0x8008d43c */ lw	$v0,4($s1)
.L8008d440:
/* 0x8008d440 */ addiu	$v1,$a0,1
.L8008d444:
/* 0x8008d444 */ subu	$v0,$v0,$a1
.L8008d448:
/* 0x8008d448 */ slt	$v0,$v1,$v0
.L8008d44c:
/* 0x8008d44c */ beq	$v0,$zero,.L8008d488
.L8008d450:
/* 0x8008d450 */ sll	$v0,$v1,0x1
.L8008d454:
/* 0x8008d454 */ addu	$a0,$v0,$s1
.L8008d458:
/* 0x8008d458 */ addu	$v0,$v1,$a1
.L8008d45c:
/* 0x8008d45c */ sll	$v0,$v0,0x1
.L8008d460:
/* 0x8008d460 */ addu	$v0,$s1,$v0
.L8008d464:
/* 0x8008d464 */ lhu	$v0,22($v0)
.L8008d468:
/* 0x8008d468 */ addiu	$v1,$v1,1
.L8008d46c:
/* 0x8008d46c */ sh	$v0,22($a0)
.L8008d470:
/* 0x8008d470 */ lw	$v0,4($s1)
.L8008d474:
/* 0x8008d474 */ sll	$zero,$zero,0x0
.L8008d478:
/* 0x8008d478 */ subu	$v0,$v0,$a1
.L8008d47c:
/* 0x8008d47c */ slt	$v0,$v1,$v0
.L8008d480:
/* 0x8008d480 */ bne	$v0,$zero,.L8008d458
.L8008d484:
/* 0x8008d484 */ addiu	$a0,$a0,2
.L8008d488:
/* 0x8008d488 */ lw	$v0,4($s1)
.L8008d48c:
/* 0x8008d48c */ addiu	$a0,$zero,787
.L8008d490:
/* 0x8008d490 */ subu	$v0,$v0,$a1
.L8008d494:
/* 0x8008d494 */ jal	0x80028358
.L8008d498:
/* 0x8008d498 */ sw	$v0,4($s1)
.L8008d49c:
/* 0x8008d49c */ lbu	$v0,1968($s1)
.L8008d4a0:
/* 0x8008d4a0 */ lw	$v1,1848($s1)
.L8008d4a4:
/* 0x8008d4a4 */ bne	$v0,$zero,.L8008d4f0
.L8008d4a8:
/* 0x8008d4a8 */ addiu	$v0,$zero,-1
.L8008d4ac:
/* 0x8008d4ac */ slt	$v0,$v1,$s0
.L8008d4b0:
/* 0x8008d4b0 */ beq	$v0,$zero,.L8008d4ec
.L8008d4b4:
/* 0x8008d4b4 */ addiu	$v0,$v1,-200
.L8008d4b8:
/* 0x8008d4b8 */ sll	$v0,$v0,0x1
.L8008d4bc:
/* 0x8008d4bc */ addu	$v0,$s1,$v0
.L8008d4c0:
/* 0x8008d4c0 */ lh	$a0,1782($v0)
.L8008d4c4:
/* 0x8008d4c4 */ lw	$v0,1860($s1)
.L8008d4c8:
/* 0x8008d4c8 */ lw	$v1,1868($s1)
.L8008d4cc:
/* 0x8008d4cc */ sll	$a0,$a0,0xc
.L8008d4d0:
/* 0x8008d4d0 */ subu	$v0,$v0,$a0
.L8008d4d4:
/* 0x8008d4d4 */ sw	$v0,1860($s1)
.L8008d4d8:
/* 0x8008d4d8 */ lw	$v0,1864($s1)
.L8008d4dc:
/* 0x8008d4dc */ subu	$v1,$v1,$a0
.L8008d4e0:
/* 0x8008d4e0 */ sw	$v1,1868($s1)
.L8008d4e4:
/* 0x8008d4e4 */ subu	$v0,$v0,$a0
.L8008d4e8:
/* 0x8008d4e8 */ sw	$v0,1864($s1)
.L8008d4ec:
/* 0x8008d4ec */ addiu	$v0,$zero,-1
.L8008d4f0:
/* 0x8008d4f0 */ sw	$v0,1848($s1)
.L8008d4f4:
/* 0x8008d4f4 */ addu	$a0,$s1,$zero
.L8008d4f8:
/* 0x8008d4f8 */ jal	0x80087050
.L8008d4fc:
/* 0x8008d4fc */ addu	$a1,$s0,$zero
.L8008d500:
/* 0x8008d500 */ lw	$v1,1868($s1)
.L8008d504:
/* 0x8008d504 */ lw	$v0,1864($s1)
.L8008d508:
/* 0x8008d508 */ sw	$s0,1848($s1)
.L8008d50c:
/* 0x8008d50c */ sw	$zero,1872($s1)
.L8008d510:
/* 0x8008d510 */ addiu	$v0,$v0,4096
.L8008d514:
/* 0x8008d514 */ sw	$v1,1860($s1)
.L8008d518:
/* 0x8008d518 */ sw	$v0,1864($s1)
.L8008d51c:
/* 0x8008d51c */ lui	$v0,0x800f
.L8008d520:
/* 0x8008d520 */ addiu	$a2,$v0,10376
.L8008d524:
/* 0x8008d524 */ lw	$v0,112($a2)
.L8008d528:
/* 0x8008d528 */ lw	$v1,1888($s1)
.L8008d52c:
/* 0x8008d52c */ sll	$zero,$zero,0x0
.L8008d530:
/* 0x8008d530 */ subu	$s0,$v0,$v1
.L8008d534:
/* 0x8008d534 */ addiu	$v0,$zero,-1
.L8008d538:
/* 0x8008d538 */ bne	$v1,$v0,.L8008d544
.L8008d53c:
/* 0x8008d53c */ addiu	$a0,$zero,-1
.L8008d540:
/* 0x8008d540 */ addu	$s0,$v0,$zero
.L8008d544:
/* 0x8008d544 */ addu	$a1,$zero,$zero
.L8008d548:
/* 0x8008d548 */ addiu	$a3,$zero,1200
.L8008d54c:
/* 0x8008d54c */ lw	$a2,116($a2)
.L8008d550:
/* 0x8008d550 */ addiu	$v0,$zero,99
.L8008d554:
/* 0x8008d554 */ sw	$v0,16($sp)
.L8008d558:
/* 0x8008d558 */ addiu	$v0,$zero,60
.L8008d55c:
/* 0x8008d55c */ sw	$v0,20($sp)
.L8008d560:
/* 0x8008d560 */ sw	$zero,24($sp)
.L8008d564:
/* 0x8008d564 */ jal	0x800843dc
.L8008d568:
/* 0x8008d568 */ sw	$zero,28($sp)
.L8008d56c:
/* 0x8008d56c */ bne	$v0,$zero,.L8008d620
.L8008d570:
/* 0x8008d570 */ sll	$zero,$zero,0x0
.L8008d574:
/* 0x8008d574 */ lbu	$v0,1968($s1)
.L8008d578:
/* 0x8008d578 */ sll	$zero,$zero,0x0
.L8008d57c:
/* 0x8008d57c */ bne	$v0,$zero,.L8008d620
.L8008d580:
/* 0x8008d580 */ sll	$zero,$zero,0x0
.L8008d584:
/* 0x8008d584 */ jal	0x80085c54
.L8008d588:
/* 0x8008d588 */ addu	$a0,$zero,$zero
.L8008d58c:
/* 0x8008d58c */ beq	$v0,$zero,.L8008d5a8
.L8008d590:
/* 0x8008d590 */ lui	$v0,0x800e
.L8008d594:
/* 0x8008d594 */ lw	$v0,15200($v0)
.L8008d598:
/* 0x8008d598 */ sll	$zero,$zero,0x0
.L8008d59c:
/* 0x8008d59c */ andi	$v0,$v0,0x800
.L8008d5a0:
/* 0x8008d5a0 */ bne	$v0,$zero,.L8008d5cc
.L8008d5a4:
/* 0x8008d5a4 */ sll	$zero,$zero,0x0
.L8008d5a8:
/* 0x8008d5a8 */ jal	0x80085c54
.L8008d5ac:
/* 0x8008d5ac */ addiu	$a0,$zero,1
.L8008d5b0:
/* 0x8008d5b0 */ beq	$v0,$zero,.L8008d620
.L8008d5b4:
/* 0x8008d5b4 */ lui	$v0,0x800e
.L8008d5b8:
/* 0x8008d5b8 */ lw	$v0,15216($v0)
.L8008d5bc:
/* 0x8008d5bc */ sll	$zero,$zero,0x0
.L8008d5c0:
/* 0x8008d5c0 */ andi	$v0,$v0,0x800
.L8008d5c4:
/* 0x8008d5c4 */ beq	$v0,$zero,.L8008d620
.L8008d5c8:
/* 0x8008d5c8 */ sll	$zero,$zero,0x0
.L8008d5cc:
/* 0x8008d5cc */ lw	$v1,1864($s1)
.L8008d5d0:
/* 0x8008d5d0 */ lw	$v0,1868($s1)
.L8008d5d4:
/* 0x8008d5d4 */ sll	$zero,$zero,0x0
.L8008d5d8:
/* 0x8008d5d8 */ bne	$v1,$v0,.L8008d620
.L8008d5dc:
/* 0x8008d5dc */ addiu	$v0,$zero,-1
.L8008d5e0:
/* 0x8008d5e0 */ beq	$s0,$v0,.L8008d60c
.L8008d5e4:
/* 0x8008d5e4 */ slti	$v0,$s0,61
.L8008d5e8:
/* 0x8008d5e8 */ bne	$v0,$zero,.L8008d620
.L8008d5ec:
/* 0x8008d5ec */ slti	$v0,$s0,90
.L8008d5f0:
/* 0x8008d5f0 */ beq	$v0,$zero,.L8008d60c
.L8008d5f4:
/* 0x8008d5f4 */ addiu	$v0,$s0,-60
.L8008d5f8:
/* 0x8008d5f8 */ lw	$v1,1888($s1)
.L8008d5fc:
/* 0x8008d5fc */ sll	$v0,$v0,0x1
.L8008d600:
/* 0x8008d600 */ addu	$v1,$v1,$v0
.L8008d604:
/* 0x8008d604 */ j	0x8008d620
.L8008d608:
/* 0x8008d608 */ sw	$v1,1888($s1)
.L8008d60c:
/* 0x8008d60c */ lui	$v0,0x800f
.L8008d610:
/* 0x8008d610 */ lw	$v0,10488($v0)
.L8008d614:
/* 0x8008d614 */ sll	$zero,$zero,0x0
.L8008d618:
/* 0x8008d618 */ addiu	$v0,$v0,-30
.L8008d61c:
/* 0x8008d61c */ sw	$v0,1888($s1)
.L8008d620:
/* 0x8008d620 */ lw	$v1,1888($s1)
.L8008d624:
/* 0x8008d624 */ addiu	$a0,$zero,-1
.L8008d628:
/* 0x8008d628 */ beq	$v1,$a0,.L8008d768
.L8008d62c:
/* 0x8008d62c */ lui	$v0,0x800f
.L8008d630:
/* 0x8008d630 */ addiu	$a1,$v0,10376
.L8008d634:
/* 0x8008d634 */ lw	$v0,112($a1)
.L8008d638:
/* 0x8008d638 */ sll	$zero,$zero,0x0
.L8008d63c:
/* 0x8008d63c */ subu	$v1,$v0,$v1
.L8008d640:
/* 0x8008d640 */ addiu	$v0,$zero,60
.L8008d644:
/* 0x8008d644 */ bne	$v1,$v0,.L8008d734
.L8008d648:
/* 0x8008d648 */ slti	$v0,$v1,121
.L8008d64c:
/* 0x8008d64c */ lui	$v0,0x8002
.L8008d650:
/* 0x8008d650 */ addiu	$t3,$v0,-6448
.L8008d654:
/* 0x8008d654 */ lw	$t0,0($t3)
.L8008d658:
/* 0x8008d658 */ lw	$t1,4($t3)
.L8008d65c:
/* 0x8008d65c */ lw	$t2,8($t3)
.L8008d660:
/* 0x8008d660 */ sw	$t0,32($sp)
.L8008d664:
/* 0x8008d664 */ sw	$t1,36($sp)
.L8008d668:
/* 0x8008d668 */ sw	$t2,40($sp)
.L8008d66c:
/* 0x8008d66c */ lw	$t0,12($t3)
.L8008d670:
/* 0x8008d670 */ sll	$zero,$zero,0x0
.L8008d674:
/* 0x8008d674 */ sw	$t0,44($sp)
.L8008d678:
/* 0x8008d678 */ jal	0x8007ea5c
.L8008d67c:
/* 0x8008d67c */ sll	$zero,$zero,0x0
.L8008d680:
/* 0x8008d680 */ jal	0x8007f07c
.L8008d684:
/* 0x8008d684 */ sll	$zero,$zero,0x0
.L8008d688:
/* 0x8008d688 */ addu	$v1,$zero,$zero
.L8008d68c:
/* 0x8008d68c */ addiu	$a2,$sp,32
.L8008d690:
/* 0x8008d690 */ addu	$a0,$a2,$zero
.L8008d694:
/* 0x8008d694 */ lui	$v0,0x800f
.L8008d698:
/* 0x8008d698 */ addiu	$s0,$v0,10504
.L8008d69c:
/* 0x8008d69c */ lb	$a1,26($s0)
.L8008d6a0:
/* 0x8008d6a0 */ lw	$v0,0($a0)
.L8008d6a4:
/* 0x8008d6a4 */ sll	$zero,$zero,0x0
.L8008d6a8:
/* 0x8008d6a8 */ beq	$a1,$v0,.L8008d6c4
.L8008d6ac:
/* 0x8008d6ac */ addiu	$v0,$v1,1
.L8008d6b0:
/* 0x8008d6b0 */ addiu	$v1,$v1,1
.L8008d6b4:
/* 0x8008d6b4 */ sltiu	$v0,$v1,4
.L8008d6b8:
/* 0x8008d6b8 */ bne	$v0,$zero,.L8008d6a0
.L8008d6bc:
/* 0x8008d6bc */ addiu	$a0,$a0,4
.L8008d6c0:
/* 0x8008d6c0 */ addiu	$v0,$v1,1
.L8008d6c4:
/* 0x8008d6c4 */ andi	$v0,$v0,0x3
.L8008d6c8:
/* 0x8008d6c8 */ sll	$v0,$v0,0x2
.L8008d6cc:
/* 0x8008d6cc */ addu	$v0,$a2,$v0
.L8008d6d0:
/* 0x8008d6d0 */ lbu	$v0,0($v0)
.L8008d6d4:
/* 0x8008d6d4 */ addu	$a0,$s1,$zero
.L8008d6d8:
/* 0x8008d6d8 */ sb	$v0,26($s0)
.L8008d6dc:
/* 0x8008d6dc */ addiu	$v0,$zero,-1
.L8008d6e0:
/* 0x8008d6e0 */ sw	$v0,1848($s1)
.L8008d6e4:
/* 0x8008d6e4 */ jal	0x80086878
.L8008d6e8:
/* 0x8008d6e8 */ sw	$v0,1852($s1)
.L8008d6ec:
/* 0x8008d6ec */ lh	$v0,28($s0)
.L8008d6f0:
/* 0x8008d6f0 */ sll	$zero,$zero,0x0
.L8008d6f4:
/* 0x8008d6f4 */ slti	$v0,$v0,160
.L8008d6f8:
/* 0x8008d6f8 */ bne	$v0,$zero,.L8008d71c
.L8008d6fc:
/* 0x8008d6fc */ sll	$zero,$zero,0x0
.L8008d700:
/* 0x8008d700 */ lhu	$v0,342($s1)
.L8008d704:
/* 0x8008d704 */ sll	$zero,$zero,0x0
.L8008d708:
/* 0x8008d708 */ sll	$a0,$v0,0x10
.L8008d70c:
/* 0x8008d70c */ sra	$a0,$a0,0x10
.L8008d710:
/* 0x8008d710 */ jal	0x8007ee38
.L8008d714:
/* 0x8008d714 */ sh	$v0,28($s0)
.L8008d718:
/* 0x8008d718 */ sw	$v0,4($s0)
.L8008d71c:
/* 0x8008d71c */ jal	0x8008c7b4
.L8008d720:
/* 0x8008d720 */ addu	$a0,$s1,$zero
.L8008d724:
/* 0x8008d724 */ jal	0x80028358
.L8008d728:
/* 0x8008d728 */ addiu	$a0,$zero,776
.L8008d72c:
/* 0x8008d72c */ j	0x8008e78c
.L8008d730:
/* 0x8008d730 */ addiu	$v0,$zero,1
.L8008d734:
/* 0x8008d734 */ bne	$v0,$zero,.L8008d740
.L8008d738:
/* 0x8008d738 */ sll	$zero,$zero,0x0
.L8008d73c:
/* 0x8008d73c */ sw	$a0,1888($s1)
.L8008d740:
/* 0x8008d740 */ lw	$v1,1888($s1)
.L8008d744:
/* 0x8008d744 */ sll	$zero,$zero,0x0
.L8008d748:
/* 0x8008d748 */ beq	$v1,$a0,.L8008d76c
.L8008d74c:
/* 0x8008d74c */ addu	$s3,$zero,$zero
.L8008d750:
/* 0x8008d750 */ lw	$v0,112($a1)
.L8008d754:
/* 0x8008d754 */ sll	$zero,$zero,0x0
.L8008d758:
/* 0x8008d758 */ subu	$v0,$v0,$v1
.L8008d75c:
/* 0x8008d75c */ slti	$v0,$v0,90
.L8008d760:
/* 0x8008d760 */ bne	$v0,$zero,.L8008e78c
.L8008d764:
/* 0x8008d764 */ addiu	$v0,$zero,1
.L8008d768:
/* 0x8008d768 */ addu	$s3,$zero,$zero
.L8008d76c:
/* 0x8008d76c */ addiu	$s5,$zero,2
.L8008d770:
/* 0x8008d770 */ lui	$v0,0x8010
.L8008d774:
/* 0x8008d774 */ addiu	$s8,$v0,-22264
.L8008d778:
/* 0x8008d778 */ addu	$s2,$s1,$zero
.L8008d77c:
/* 0x8008d77c */ lui	$v0,0x800f
.L8008d780:
/* 0x8008d780 */ addiu	$s4,$v0,10504
.L8008d784:
/* 0x8008d784 */ lbu	$t0,1968($s1)
.L8008d788:
/* 0x8008d788 */ addu	$s6,$s4,$zero
.L8008d78c:
/* 0x8008d78c */ sw	$t0,52($sp)
.L8008d790:
/* 0x8008d790 */ jal	0x80085c54
.L8008d794:
/* 0x8008d794 */ addu	$a0,$s3,$zero
.L8008d798:
/* 0x8008d798 */ beq	$v0,$zero,.L8008dbcc
.L8008d79c:
/* 0x8008d79c */ ori	$v0,$zero,0x9284
.L8008d7a0:
/* 0x8008d7a0 */ jal	0x80085558
.L8008d7a4:
/* 0x8008d7a4 */ sll	$zero,$zero,0x0
.L8008d7a8:
/* 0x8008d7a8 */ bne	$v0,$s5,.L8008d824
.L8008d7ac:
/* 0x8008d7ac */ addu	$v0,$s3,$zero
.L8008d7b0:
/* 0x8008d7b0 */ lb	$v0,36($s4)
.L8008d7b4:
/* 0x8008d7b4 */ sll	$zero,$zero,0x0
.L8008d7b8:
/* 0x8008d7b8 */ beq	$v0,$s5,.L8008d820
.L8008d7bc:
/* 0x8008d7bc */ addiu	$v1,$zero,4
.L8008d7c0:
/* 0x8008d7c0 */ beq	$v0,$v1,.L8008d824
.L8008d7c4:
/* 0x8008d7c4 */ addu	$v0,$zero,$zero
.L8008d7c8:
/* 0x8008d7c8 */ lb	$v0,4776($s8)
.L8008d7cc:
/* 0x8008d7cc */ sll	$zero,$zero,0x0
.L8008d7d0:
/* 0x8008d7d0 */ beq	$v0,$s5,.L8008d818
.L8008d7d4:
/* 0x8008d7d4 */ sll	$zero,$zero,0x0
.L8008d7d8:
/* 0x8008d7d8 */ beq	$v0,$v1,.L8008d818
.L8008d7dc:
/* 0x8008d7dc */ addiu	$v1,$zero,7
.L8008d7e0:
/* 0x8008d7e0 */ lbu	$v0,146($s4)
.L8008d7e4:
/* 0x8008d7e4 */ sll	$zero,$zero,0x0
.L8008d7e8:
/* 0x8008d7e8 */ beq	$v0,$v1,.L8008d7f8
.L8008d7ec:
/* 0x8008d7ec */ sll	$zero,$zero,0x0
.L8008d7f0:
/* 0x8008d7f0 */ bne	$v0,$zero,.L8008d824
.L8008d7f4:
/* 0x8008d7f4 */ addu	$v0,$zero,$zero
.L8008d7f8:
/* 0x8008d7f8 */ lbu	$v0,4886($s8)
.L8008d7fc:
/* 0x8008d7fc */ sll	$zero,$zero,0x0
.L8008d800:
/* 0x8008d800 */ beq	$v0,$v1,.L8008d810
.L8008d804:
/* 0x8008d804 */ sll	$zero,$zero,0x0
.L8008d808:
/* 0x8008d808 */ bne	$v0,$zero,.L8008d824
.L8008d80c:
/* 0x8008d80c */ addu	$v0,$zero,$zero
.L8008d810:
/* 0x8008d810 */ j	0x8008d824
.L8008d814:
/* 0x8008d814 */ addiu	$v0,$zero,-1
.L8008d818:
/* 0x8008d818 */ j	0x8008d824
.L8008d81c:
/* 0x8008d81c */ addiu	$v0,$zero,1
.L8008d820:
/* 0x8008d820 */ addu	$v0,$zero,$zero
.L8008d824:
/* 0x8008d824 */ addu	$v0,$s4,$v0
.L8008d828:
/* 0x8008d828 */ lui	$v1,0x1
.L8008d82c:
/* 0x8008d82c */ addu	$v0,$v0,$v1
.L8008d830:
/* 0x8008d830 */ lbu	$v0,10098($v0)
.L8008d834:
/* 0x8008d834 */ sll	$zero,$zero,0x0
.L8008d838:
/* 0x8008d838 */ bne	$v0,$zero,.L8008dbcc
.L8008d83c:
/* 0x8008d83c */ ori	$v0,$zero,0x9284
.L8008d840:
/* 0x8008d840 */ lbu	$v0,1968($s1)
.L8008d844:
/* 0x8008d844 */ sll	$zero,$zero,0x0
.L8008d848:
/* 0x8008d848 */ beq	$v0,$zero,.L8008d8cc
.L8008d84c:
/* 0x8008d84c */ addu	$s0,$zero,$zero
.L8008d850:
/* 0x8008d850 */ lw	$v1,1864($s1)
.L8008d854:
/* 0x8008d854 */ sll	$zero,$zero,0x0
.L8008d858:
/* 0x8008d858 */ bgez	$v1,.L8008d894
.L8008d85c:
/* 0x8008d85c */ negu	$v0,$v1
.L8008d860:
/* 0x8008d860 */ lw	$a0,4($s1)
.L8008d864:
/* 0x8008d864 */ sll	$zero,$zero,0x0
.L8008d868:
/* 0x8008d868 */ sll	$a0,$a0,0xc
.L8008d86c:
/* 0x8008d86c */ div	$zero,$v0,$a0
.L8008d870:
/* 0x8008d870 */ mfhi	$v1
.L8008d874:
/* 0x8008d874 */ sll	$zero,$zero,0x0
.L8008d878:
/* 0x8008d878 */ subu	$v1,$a0,$v1
.L8008d87c:
/* 0x8008d87c */ div	$zero,$v1,$a0
.L8008d880:
/* 0x8008d880 */ mfhi	$v0
.L8008d884:
/* 0x8008d884 */ sll	$zero,$zero,0x0
.L8008d888:
/* 0x8008d888 */ sra	$v0,$v0,0xc
.L8008d88c:
/* 0x8008d88c */ j	0x8008d8b4
.L8008d890:
/* 0x8008d890 */ sll	$v0,$v0,0x1
.L8008d894:
/* 0x8008d894 */ lw	$v0,4($s1)
.L8008d898:
/* 0x8008d898 */ sll	$zero,$zero,0x0
.L8008d89c:
/* 0x8008d89c */ sll	$v0,$v0,0xc
.L8008d8a0:
/* 0x8008d8a0 */ div	$zero,$v1,$v0
.L8008d8a4:
/* 0x8008d8a4 */ mfhi	$v1
.L8008d8a8:
/* 0x8008d8a8 */ sll	$zero,$zero,0x0
.L8008d8ac:
/* 0x8008d8ac */ sra	$v1,$v1,0xc
.L8008d8b0:
/* 0x8008d8b0 */ sll	$v0,$v1,0x1
.L8008d8b4:
/* 0x8008d8b4 */ addu	$v0,$s1,$v0
.L8008d8b8:
/* 0x8008d8b8 */ lh	$v0,22($v0)
.L8008d8bc:
/* 0x8008d8bc */ sll	$zero,$zero,0x0
.L8008d8c0:
/* 0x8008d8c0 */ bne	$v0,$zero,.L8008da1c
.L8008d8c4:
/* 0x8008d8c4 */ sll	$zero,$zero,0x0
.L8008d8c8:
/* 0x8008d8c8 */ addu	$s0,$zero,$zero
.L8008d8cc:
/* 0x8008d8cc */ jal	0x80097dec
.L8008d8d0:
/* 0x8008d8d0 */ addu	$a0,$s3,$zero
.L8008d8d4:
/* 0x8008d8d4 */ beq	$v0,$zero,.L8008d8f8
.L8008d8d8:
/* 0x8008d8d8 */ sll	$zero,$zero,0x0
.L8008d8dc:
/* 0x8008d8dc */ lh	$v0,1900($s2)
.L8008d8e0:
/* 0x8008d8e0 */ sll	$zero,$zero,0x0
.L8008d8e4:
/* 0x8008d8e4 */ bgez	$v0,.L8008d8f4
.L8008d8e8:
/* 0x8008d8e8 */ addiu	$v0,$zero,-30
.L8008d8ec:
/* 0x8008d8ec */ j	0x8008d8f8
.L8008d8f0:
/* 0x8008d8f0 */ addiu	$s0,$zero,1
.L8008d8f4:
/* 0x8008d8f4 */ sh	$v0,1900($s2)
.L8008d8f8:
/* 0x8008d8f8 */ jal	0x80097dd0
.L8008d8fc:
/* 0x8008d8fc */ addu	$a0,$s3,$zero
.L8008d900:
/* 0x8008d900 */ beq	$v0,$zero,.L8008d924
.L8008d904:
/* 0x8008d904 */ sll	$zero,$zero,0x0
.L8008d908:
/* 0x8008d908 */ lh	$v0,1900($s2)
.L8008d90c:
/* 0x8008d90c */ sll	$zero,$zero,0x0
.L8008d910:
/* 0x8008d910 */ blez	$v0,.L8008d920
.L8008d914:
/* 0x8008d914 */ addiu	$v0,$zero,30
.L8008d918:
/* 0x8008d918 */ j	0x8008d924
.L8008d91c:
/* 0x8008d91c */ addiu	$s0,$zero,-1
.L8008d920:
/* 0x8008d920 */ sh	$v0,1900($s2)
.L8008d924:
/* 0x8008d924 */ beq	$s0,$zero,.L8008da1c
.L8008d928:
/* 0x8008d928 */ sll	$zero,$zero,0x0
.L8008d92c:
/* 0x8008d92c */ lw	$v1,1864($s1)
.L8008d930:
/* 0x8008d930 */ lw	$v0,1868($s1)
.L8008d934:
/* 0x8008d934 */ sll	$zero,$zero,0x0
.L8008d938:
/* 0x8008d938 */ bne	$v1,$v0,.L8008da1c
.L8008d93c:
/* 0x8008d93c */ sll	$zero,$zero,0x0
.L8008d940:
/* 0x8008d940 */ addiu	$a1,$zero,3
.L8008d944:
/* 0x8008d944 */ addu	$a0,$zero,$zero
.L8008d948:
/* 0x8008d948 */ addu	$a2,$s6,$zero
.L8008d94c:
/* 0x8008d94c */ sll	$v0,$a0,0x2
.L8008d950:
/* 0x8008d950 */ lui	$t0,0x8002
.L8008d954:
/* 0x8008d954 */ addiu	$t0,$t0,-6836
.L8008d958:
/* 0x8008d958 */ addu	$v0,$v0,$t0
.L8008d95c:
/* 0x8008d95c */ lbu	$v1,144($a2)
.L8008d960:
/* 0x8008d960 */ lw	$v0,0($v0)
.L8008d964:
/* 0x8008d964 */ sll	$zero,$zero,0x0
.L8008d968:
/* 0x8008d968 */ bne	$v1,$v0,.L8008da0c
.L8008d96c:
/* 0x8008d96c */ addu	$v1,$a0,$s0
.L8008d970:
/* 0x8008d970 */ bltz	$v1,.L8008da1c
.L8008d974:
/* 0x8008d974 */ slt	$v0,$v1,$a1
.L8008d978:
/* 0x8008d978 */ beq	$v0,$zero,.L8008da1c
.L8008d97c:
/* 0x8008d97c */ addu	$v0,$v1,$a1
.L8008d980:
/* 0x8008d980 */ div	$zero,$v0,$a1
.L8008d984:
/* 0x8008d984 */ mfhi	$v1
.L8008d988:
/* 0x8008d988 */ lui	$t0,0x8002
.L8008d98c:
/* 0x8008d98c */ addiu	$t0,$t0,-6836
.L8008d990:
/* 0x8008d990 */ sll	$v1,$v1,0x2
.L8008d994:
/* 0x8008d994 */ addu	$v1,$v1,$t0
.L8008d998:
/* 0x8008d998 */ lbu	$a0,0($v1)
.L8008d99c:
/* 0x8008d99c */ sll	$zero,$zero,0x0
.L8008d9a0:
/* 0x8008d9a0 */ sb	$a0,144($a2)
.L8008d9a4:
/* 0x8008d9a4 */ lbu	$v0,146($s4)
.L8008d9a8:
/* 0x8008d9a8 */ sll	$zero,$zero,0x0
.L8008d9ac:
/* 0x8008d9ac */ beq	$v0,$s5,.L8008d9c4
.L8008d9b0:
/* 0x8008d9b0 */ sll	$zero,$zero,0x0
.L8008d9b4:
/* 0x8008d9b4 */ lbu	$v0,4886($s8)
.L8008d9b8:
/* 0x8008d9b8 */ sll	$zero,$zero,0x0
.L8008d9bc:
/* 0x8008d9bc */ bne	$v0,$s5,.L8008d9f8
.L8008d9c0:
/* 0x8008d9c0 */ sll	$zero,$zero,0x0
.L8008d9c4:
/* 0x8008d9c4 */ addiu	$v1,$zero,1
.L8008d9c8:
/* 0x8008d9c8 */ subu	$v1,$v1,$s3
.L8008d9cc:
/* 0x8008d9cc */ sll	$v0,$v1,0x3
.L8008d9d0:
/* 0x8008d9d0 */ addu	$v0,$v0,$v1
.L8008d9d4:
/* 0x8008d9d4 */ sll	$v0,$v0,0x3
.L8008d9d8:
/* 0x8008d9d8 */ addu	$v0,$v0,$v1
.L8008d9dc:
/* 0x8008d9dc */ sll	$v0,$v0,0x2
.L8008d9e0:
/* 0x8008d9e0 */ addu	$v0,$v0,$v1
.L8008d9e4:
/* 0x8008d9e4 */ sll	$v0,$v0,0x5
.L8008d9e8:
/* 0x8008d9e8 */ addu	$v0,$v0,$v1
.L8008d9ec:
/* 0x8008d9ec */ sll	$v0,$v0,0x2
.L8008d9f0:
/* 0x8008d9f0 */ addu	$v0,$v0,$s4
.L8008d9f4:
/* 0x8008d9f4 */ sb	$a0,144($v0)
.L8008d9f8:
/* 0x8008d9f8 */ sh	$zero,1900($s2)
.L8008d9fc:
/* 0x8008d9fc */ jal	0x80028358
.L8008da00:
/* 0x8008da00 */ addiu	$a0,$zero,778
.L8008da04:
/* 0x8008da04 */ j	0x8008da1c
.L8008da08:
/* 0x8008da08 */ sll	$zero,$zero,0x0
.L8008da0c:
/* 0x8008da0c */ addiu	$a0,$a0,1
.L8008da10:
/* 0x8008da10 */ slt	$v0,$a0,$a1
.L8008da14:
/* 0x8008da14 */ bne	$v0,$zero,.L8008d950
.L8008da18:
/* 0x8008da18 */ sll	$v0,$a0,0x2
.L8008da1c:
/* 0x8008da1c */ lh	$v0,1900($s2)
.L8008da20:
/* 0x8008da20 */ sll	$zero,$zero,0x0
.L8008da24:
/* 0x8008da24 */ beq	$v0,$zero,.L8008da44
.L8008da28:
/* 0x8008da28 */ addu	$v1,$s2,$zero
.L8008da2c:
/* 0x8008da2c */ blez	$v0,.L8008da3c
.L8008da30:
/* 0x8008da30 */ sll	$zero,$zero,0x0
.L8008da34:
/* 0x8008da34 */ j	0x8008da48
.L8008da38:
/* 0x8008da38 */ addiu	$v0,$v0,-1
.L8008da3c:
/* 0x8008da3c */ j	0x8008da48
.L8008da40:
/* 0x8008da40 */ addiu	$v0,$v0,1
.L8008da44:
/* 0x8008da44 */ addu	$v0,$zero,$zero
.L8008da48:
/* 0x8008da48 */ jal	0x8009643c
.L8008da4c:
/* 0x8008da4c */ sh	$v0,1900($v1)
.L8008da50:
/* 0x8008da50 */ beq	$v0,$zero,.L8008db98
.L8008da54:
/* 0x8008da54 */ sll	$zero,$zero,0x0
.L8008da58:
/* 0x8008da58 */ lw	$v0,4($s4)
.L8008da5c:
/* 0x8008da5c */ sll	$zero,$zero,0x0
.L8008da60:
/* 0x8008da60 */ lhu	$a0,0($v0)
.L8008da64:
/* 0x8008da64 */ jal	0x80096478
.L8008da68:
/* 0x8008da68 */ sll	$zero,$zero,0x0
.L8008da6c:
/* 0x8008da6c */ beq	$v0,$zero,.L8008db98
.L8008da70:
/* 0x8008da70 */ lui	$v0,0x800e
.L8008da74:
/* 0x8008da74 */ addiu	$v0,$v0,15192
.L8008da78:
/* 0x8008da78 */ sll	$v1,$s3,0x4
.L8008da7c:
/* 0x8008da7c */ addu	$v1,$v1,$v0
.L8008da80:
/* 0x8008da80 */ lw	$v0,8($v1)
.L8008da84:
/* 0x8008da84 */ sll	$zero,$zero,0x0
.L8008da88:
/* 0x8008da88 */ andi	$v0,$v0,0x40
.L8008da8c:
/* 0x8008da8c */ beq	$v0,$zero,.L8008daa8
.L8008da90:
/* 0x8008da90 */ addu	$a1,$zero,$zero
.L8008da94:
/* 0x8008da94 */ lbu	$v0,1968($s1)
.L8008da98:
/* 0x8008da98 */ sll	$zero,$zero,0x0
.L8008da9c:
/* 0x8008da9c */ beq	$v0,$zero,.L8008daa8
.L8008daa0:
/* 0x8008daa0 */ addiu	$a1,$zero,1
.L8008daa4:
/* 0x8008daa4 */ addiu	$a1,$zero,-1
.L8008daa8:
/* 0x8008daa8 */ beq	$a1,$zero,.L8008db98
.L8008daac:
/* 0x8008daac */ sll	$zero,$zero,0x0
.L8008dab0:
/* 0x8008dab0 */ lw	$v1,1864($s1)
.L8008dab4:
/* 0x8008dab4 */ lw	$v0,1868($s1)
.L8008dab8:
/* 0x8008dab8 */ sll	$zero,$zero,0x0
.L8008dabc:
/* 0x8008dabc */ bne	$v1,$v0,.L8008db98
.L8008dac0:
/* 0x8008dac0 */ sll	$zero,$zero,0x0
.L8008dac4:
/* 0x8008dac4 */ bgez	$v1,.L8008db00
.L8008dac8:
/* 0x8008dac8 */ negu	$v0,$v1
.L8008dacc:
/* 0x8008dacc */ lw	$a0,4($s1)
.L8008dad0:
/* 0x8008dad0 */ sll	$zero,$zero,0x0
.L8008dad4:
/* 0x8008dad4 */ sll	$a0,$a0,0xc
.L8008dad8:
/* 0x8008dad8 */ div	$zero,$v0,$a0
.L8008dadc:
/* 0x8008dadc */ mfhi	$v1
.L8008dae0:
/* 0x8008dae0 */ sll	$zero,$zero,0x0
.L8008dae4:
/* 0x8008dae4 */ subu	$v1,$a0,$v1
.L8008dae8:
/* 0x8008dae8 */ div	$zero,$v1,$a0
.L8008daec:
/* 0x8008daec */ mfhi	$v0
.L8008daf0:
/* 0x8008daf0 */ sll	$zero,$zero,0x0
.L8008daf4:
/* 0x8008daf4 */ sra	$v0,$v0,0xc
.L8008daf8:
/* 0x8008daf8 */ j	0x8008db20
.L8008dafc:
/* 0x8008dafc */ sll	$v0,$v0,0x1
.L8008db00:
/* 0x8008db00 */ lw	$v0,4($s1)
.L8008db04:
/* 0x8008db04 */ sll	$zero,$zero,0x0
.L8008db08:
/* 0x8008db08 */ sll	$v0,$v0,0xc
.L8008db0c:
/* 0x8008db0c */ div	$zero,$v1,$v0
.L8008db10:
/* 0x8008db10 */ mfhi	$v1
.L8008db14:
/* 0x8008db14 */ sll	$zero,$zero,0x0
.L8008db18:
/* 0x8008db18 */ sra	$v1,$v1,0xc
.L8008db1c:
/* 0x8008db1c */ sll	$v0,$v1,0x1
.L8008db20:
/* 0x8008db20 */ addu	$v0,$s1,$v0
.L8008db24:
/* 0x8008db24 */ lh	$v1,22($v0)
.L8008db28:
/* 0x8008db28 */ addiu	$v0,$zero,1
.L8008db2c:
/* 0x8008db2c */ bne	$a1,$v0,.L8008db6c
.L8008db30:
/* 0x8008db30 */ addiu	$v0,$zero,-1
.L8008db34:
/* 0x8008db34 */ lbu	$v0,1968($s1)
.L8008db38:
/* 0x8008db38 */ sll	$zero,$zero,0x0
.L8008db3c:
/* 0x8008db3c */ bne	$v0,$zero,.L8008db6c
.L8008db40:
/* 0x8008db40 */ addiu	$v0,$zero,-1
.L8008db44:
/* 0x8008db44 */ slti	$v0,$v1,160
.L8008db48:
/* 0x8008db48 */ beq	$v0,$zero,.L8008db6c
.L8008db4c:
/* 0x8008db4c */ addiu	$v0,$zero,-1
.L8008db50:
/* 0x8008db50 */ sb	$a1,1968($s1)
.L8008db54:
/* 0x8008db54 */ jal	0x80028358
.L8008db58:
/* 0x8008db58 */ addiu	$a0,$zero,778
.L8008db5c:
/* 0x8008db5c */ jal	0x8009312c
.L8008db60:
/* 0x8008db60 */ sll	$zero,$zero,0x0
.L8008db64:
/* 0x8008db64 */ j	0x8008db98
.L8008db68:
/* 0x8008db68 */ sll	$zero,$zero,0x0
.L8008db6c:
/* 0x8008db6c */ bne	$a1,$v0,.L8008db98
.L8008db70:
/* 0x8008db70 */ sll	$zero,$zero,0x0
.L8008db74:
/* 0x8008db74 */ lbu	$v0,1968($s1)
.L8008db78:
/* 0x8008db78 */ sll	$zero,$zero,0x0
.L8008db7c:
/* 0x8008db7c */ beq	$v0,$zero,.L8008db98
.L8008db80:
/* 0x8008db80 */ sll	$zero,$zero,0x0
.L8008db84:
/* 0x8008db84 */ sb	$zero,1968($s1)
.L8008db88:
/* 0x8008db88 */ jal	0x80028358
.L8008db8c:
/* 0x8008db8c */ addiu	$a0,$zero,778
.L8008db90:
/* 0x8008db90 */ jal	0x80092d70
.L8008db94:
/* 0x8008db94 */ sll	$zero,$zero,0x0
.L8008db98:
/* 0x8008db98 */ lh	$v0,1904($s2)
.L8008db9c:
/* 0x8008db9c */ sll	$zero,$zero,0x0
.L8008dba0:
/* 0x8008dba0 */ beq	$v0,$zero,.L8008dbc0
.L8008dba4:
/* 0x8008dba4 */ addu	$v1,$s2,$zero
.L8008dba8:
/* 0x8008dba8 */ blez	$v0,.L8008dbb8
.L8008dbac:
/* 0x8008dbac */ sll	$zero,$zero,0x0
.L8008dbb0:
/* 0x8008dbb0 */ j	0x8008dbc4
.L8008dbb4:
/* 0x8008dbb4 */ addiu	$v0,$v0,-1
.L8008dbb8:
/* 0x8008dbb8 */ j	0x8008dbc4
.L8008dbbc:
/* 0x8008dbbc */ addiu	$v0,$v0,1
.L8008dbc0:
/* 0x8008dbc0 */ addu	$v0,$zero,$zero
.L8008dbc4:
/* 0x8008dbc4 */ sh	$v0,1904($v1)
.L8008dbc8:
/* 0x8008dbc8 */ ori	$v0,$zero,0x9284
.L8008dbcc:
/* 0x8008dbcc */ addu	$s6,$s6,$v0
.L8008dbd0:
/* 0x8008dbd0 */ addiu	$s3,$s3,1
.L8008dbd4:
/* 0x8008dbd4 */ slti	$v0,$s3,2
.L8008dbd8:
/* 0x8008dbd8 */ bne	$v0,$zero,.L8008d790
.L8008dbdc:
/* 0x8008dbdc */ addiu	$s2,$s2,2
.L8008dbe0:
/* 0x8008dbe0 */ lw	$t0,52($sp)
.L8008dbe4:
/* 0x8008dbe4 */ lbu	$s0,1968($s1)
.L8008dbe8:
/* 0x8008dbe8 */ bne	$t0,$zero,.L8008dc14
.L8008dbec:
/* 0x8008dbec */ addiu	$v0,$zero,1
.L8008dbf0:
/* 0x8008dbf0 */ bne	$s0,$v0,.L8008dc14
.L8008dbf4:
/* 0x8008dbf4 */ sll	$zero,$zero,0x0
.L8008dbf8:
/* 0x8008dbf8 */ jal	0x80086878
.L8008dbfc:
/* 0x8008dbfc */ addu	$a0,$s1,$zero
.L8008dc00:
/* 0x8008dc00 */ addiu	$v0,$zero,16
.L8008dc04:
/* 0x8008dc04 */ sw	$zero,1864($s1)
.L8008dc08:
/* 0x8008dc08 */ sw	$zero,1868($s1)
.L8008dc0c:
/* 0x8008dc0c */ sw	$zero,1860($s1)
.L8008dc10:
/* 0x8008dc10 */ sw	$v0,1872($s1)
.L8008dc14:
/* 0x8008dc14 */ lw	$t1,52($sp)
.L8008dc18:
/* 0x8008dc18 */ addiu	$v0,$zero,1
.L8008dc1c:
/* 0x8008dc1c */ bne	$t1,$v0,.L8008dc88
.L8008dc20:
/* 0x8008dc20 */ addu	$s2,$zero,$zero
.L8008dc24:
/* 0x8008dc24 */ bne	$s0,$zero,.L8008dc88
.L8008dc28:
/* 0x8008dc28 */ sll	$zero,$zero,0x0
.L8008dc2c:
/* 0x8008dc2c */ jal	0x80086878
.L8008dc30:
/* 0x8008dc30 */ addu	$a0,$s1,$zero
.L8008dc34:
/* 0x8008dc34 */ addiu	$v0,$zero,-1
.L8008dc38:
/* 0x8008dc38 */ sw	$v0,1848($s1)
.L8008dc3c:
/* 0x8008dc3c */ lui	$v0,0x800f
.L8008dc40:
/* 0x8008dc40 */ addiu	$s0,$v0,10504
.L8008dc44:
/* 0x8008dc44 */ lh	$v0,28($s0)
.L8008dc48:
/* 0x8008dc48 */ sll	$zero,$zero,0x0
.L8008dc4c:
/* 0x8008dc4c */ slti	$v0,$v0,160
.L8008dc50:
/* 0x8008dc50 */ bne	$v0,$zero,.L8008dc74
.L8008dc54:
/* 0x8008dc54 */ sll	$zero,$zero,0x0
.L8008dc58:
/* 0x8008dc58 */ lhu	$v0,342($s1)
.L8008dc5c:
/* 0x8008dc5c */ sll	$zero,$zero,0x0
.L8008dc60:
/* 0x8008dc60 */ sll	$a0,$v0,0x10
.L8008dc64:
/* 0x8008dc64 */ sra	$a0,$a0,0x10
.L8008dc68:
/* 0x8008dc68 */ jal	0x8007ee38
.L8008dc6c:
/* 0x8008dc6c */ sh	$v0,28($s0)
.L8008dc70:
/* 0x8008dc70 */ sw	$v0,4($s0)
.L8008dc74:
/* 0x8008dc74 */ jal	0x8008c7b4
.L8008dc78:
/* 0x8008dc78 */ addu	$a0,$s1,$zero
.L8008dc7c:
/* 0x8008dc7c */ addiu	$v0,$zero,16
.L8008dc80:
/* 0x8008dc80 */ sw	$v0,1872($s1)
.L8008dc84:
/* 0x8008dc84 */ addu	$s2,$zero,$zero
.L8008dc88:
/* 0x8008dc88 */ sh	$zero,20($s1)
.L8008dc8c:
/* 0x8008dc8c */ addu	$s0,$s2,$zero
.L8008dc90:
/* 0x8008dc90 */ lui	$v0,0x800f
.L8008dc94:
/* 0x8008dc94 */ addiu	$s3,$v0,10504
.L8008dc98:
/* 0x8008dc98 */ addiu	$s6,$zero,4
.L8008dc9c:
/* 0x8008dc9c */ lui	$v0,0x8010
.L8008dca0:
/* 0x8008dca0 */ addiu	$s5,$v0,-22264
.L8008dca4:
/* 0x8008dca4 */ addiu	$s4,$zero,7
.L8008dca8:
/* 0x8008dca8 */ jal	0x80085c54
.L8008dcac:
/* 0x8008dcac */ addu	$a0,$s0,$zero
.L8008dcb0:
/* 0x8008dcb0 */ beq	$v0,$zero,.L8008dd88
.L8008dcb4:
/* 0x8008dcb4 */ sll	$zero,$zero,0x0
.L8008dcb8:
/* 0x8008dcb8 */ jal	0x80085558
.L8008dcbc:
/* 0x8008dcbc */ sll	$zero,$zero,0x0
.L8008dcc0:
/* 0x8008dcc0 */ addu	$v1,$v0,$zero
.L8008dcc4:
/* 0x8008dcc4 */ addiu	$v0,$zero,2
.L8008dcc8:
/* 0x8008dcc8 */ bne	$v1,$v0,.L8008dd44
.L8008dccc:
/* 0x8008dccc */ addu	$v0,$s0,$zero
.L8008dcd0:
/* 0x8008dcd0 */ lb	$v0,36($s3)
.L8008dcd4:
/* 0x8008dcd4 */ sll	$zero,$zero,0x0
.L8008dcd8:
/* 0x8008dcd8 */ beq	$v0,$v1,.L8008dd40
.L8008dcdc:
/* 0x8008dcdc */ sll	$zero,$zero,0x0
.L8008dce0:
/* 0x8008dce0 */ beq	$v0,$s6,.L8008dd44
.L8008dce4:
/* 0x8008dce4 */ addu	$v0,$zero,$zero
.L8008dce8:
/* 0x8008dce8 */ lb	$v0,4776($s5)
.L8008dcec:
/* 0x8008dcec */ sll	$zero,$zero,0x0
.L8008dcf0:
/* 0x8008dcf0 */ beq	$v0,$v1,.L8008dd38
.L8008dcf4:
/* 0x8008dcf4 */ sll	$zero,$zero,0x0
.L8008dcf8:
/* 0x8008dcf8 */ beq	$v0,$s6,.L8008dd44
.L8008dcfc:
/* 0x8008dcfc */ addiu	$v0,$zero,1
.L8008dd00:
/* 0x8008dd00 */ lbu	$v0,146($s3)
.L8008dd04:
/* 0x8008dd04 */ sll	$zero,$zero,0x0
.L8008dd08:
/* 0x8008dd08 */ beq	$v0,$s4,.L8008dd18
.L8008dd0c:
/* 0x8008dd0c */ sll	$zero,$zero,0x0
.L8008dd10:
/* 0x8008dd10 */ bne	$v0,$zero,.L8008dd44
.L8008dd14:
/* 0x8008dd14 */ addu	$v0,$zero,$zero
.L8008dd18:
/* 0x8008dd18 */ lbu	$v0,4886($s5)
.L8008dd1c:
/* 0x8008dd1c */ sll	$zero,$zero,0x0
.L8008dd20:
/* 0x8008dd20 */ beq	$v0,$s4,.L8008dd30
.L8008dd24:
/* 0x8008dd24 */ sll	$zero,$zero,0x0
.L8008dd28:
/* 0x8008dd28 */ bne	$v0,$zero,.L8008dd44
.L8008dd2c:
/* 0x8008dd2c */ addu	$v0,$zero,$zero
.L8008dd30:
/* 0x8008dd30 */ j	0x8008dd44
.L8008dd34:
/* 0x8008dd34 */ addiu	$v0,$zero,-1
.L8008dd38:
/* 0x8008dd38 */ j	0x8008dd44
.L8008dd3c:
/* 0x8008dd3c */ addiu	$v0,$zero,1
.L8008dd40:
/* 0x8008dd40 */ addu	$v0,$zero,$zero
.L8008dd44:
/* 0x8008dd44 */ addu	$v0,$s3,$v0
.L8008dd48:
/* 0x8008dd48 */ lui	$v1,0x1
.L8008dd4c:
/* 0x8008dd4c */ addu	$v0,$v0,$v1
.L8008dd50:
/* 0x8008dd50 */ lbu	$v0,10098($v0)
.L8008dd54:
/* 0x8008dd54 */ sll	$zero,$zero,0x0
.L8008dd58:
/* 0x8008dd58 */ bne	$v0,$zero,.L8008dd88
.L8008dd5c:
/* 0x8008dd5c */ sll	$zero,$zero,0x0
.L8008dd60:
/* 0x8008dd60 */ jal	0x80085e8c
.L8008dd64:
/* 0x8008dd64 */ addu	$a0,$s0,$zero
.L8008dd68:
/* 0x8008dd68 */ beq	$v0,$zero,.L8008dd74
.L8008dd6c:
/* 0x8008dd6c */ sll	$zero,$zero,0x0
.L8008dd70:
/* 0x8008dd70 */ addiu	$s2,$s2,1
.L8008dd74:
/* 0x8008dd74 */ jal	0x80085f0c
.L8008dd78:
/* 0x8008dd78 */ addu	$a0,$s0,$zero
.L8008dd7c:
/* 0x8008dd7c */ beq	$v0,$zero,.L8008dd88
.L8008dd80:
/* 0x8008dd80 */ sll	$zero,$zero,0x0
.L8008dd84:
/* 0x8008dd84 */ addiu	$s2,$s2,1
.L8008dd88:
/* 0x8008dd88 */ addiu	$s0,$s0,1
.L8008dd8c:
/* 0x8008dd8c */ slti	$v0,$s0,2
.L8008dd90:
/* 0x8008dd90 */ bne	$v0,$zero,.L8008dca8
.L8008dd94:
/* 0x8008dd94 */ slti	$v0,$s2,2
.L8008dd98:
/* 0x8008dd98 */ beq	$v0,$zero,.L8008dfb8
.L8008dd9c:
/* 0x8008dd9c */ lui	$v0,0x800f
.L8008dda0:
/* 0x8008dda0 */ addu	$s0,$zero,$zero
.L8008dda4:
/* 0x8008dda4 */ addiu	$s3,$v0,10504
.L8008dda8:
/* 0x8008dda8 */ addiu	$s5,$zero,4
.L8008ddac:
/* 0x8008ddac */ lui	$v0,0x8010
.L8008ddb0:
/* 0x8008ddb0 */ addiu	$s4,$v0,-22264
.L8008ddb4:
/* 0x8008ddb4 */ addu	$s2,$s1,$zero
.L8008ddb8:
/* 0x8008ddb8 */ jal	0x80085c54
.L8008ddbc:
/* 0x8008ddbc */ addu	$a0,$s0,$zero
.L8008ddc0:
/* 0x8008ddc0 */ beq	$v0,$zero,.L8008dfa8
.L8008ddc4:
/* 0x8008ddc4 */ sll	$zero,$zero,0x0
.L8008ddc8:
/* 0x8008ddc8 */ jal	0x80085558
.L8008ddcc:
/* 0x8008ddcc */ sll	$zero,$zero,0x0
.L8008ddd0:
/* 0x8008ddd0 */ addu	$v1,$v0,$zero
.L8008ddd4:
/* 0x8008ddd4 */ addiu	$v0,$zero,2
.L8008ddd8:
/* 0x8008ddd8 */ bne	$v1,$v0,.L8008de54
.L8008dddc:
/* 0x8008dddc */ addu	$v0,$s0,$zero
.L8008dde0:
/* 0x8008dde0 */ lb	$v0,36($s3)
.L8008dde4:
/* 0x8008dde4 */ sll	$zero,$zero,0x0
.L8008dde8:
/* 0x8008dde8 */ beq	$v0,$v1,.L8008de50
.L8008ddec:
/* 0x8008ddec */ sll	$zero,$zero,0x0
.L8008ddf0:
/* 0x8008ddf0 */ beq	$v0,$s5,.L8008de54
.L8008ddf4:
/* 0x8008ddf4 */ addu	$v0,$zero,$zero
.L8008ddf8:
/* 0x8008ddf8 */ lb	$v0,4776($s4)
.L8008ddfc:
/* 0x8008ddfc */ sll	$zero,$zero,0x0
.L8008de00:
/* 0x8008de00 */ beq	$v0,$v1,.L8008de48
.L8008de04:
/* 0x8008de04 */ sll	$zero,$zero,0x0
.L8008de08:
/* 0x8008de08 */ beq	$v0,$s5,.L8008de48
.L8008de0c:
/* 0x8008de0c */ addiu	$v1,$zero,7
.L8008de10:
/* 0x8008de10 */ lbu	$v0,146($s3)
.L8008de14:
/* 0x8008de14 */ sll	$zero,$zero,0x0
.L8008de18:
/* 0x8008de18 */ beq	$v0,$v1,.L8008de28
.L8008de1c:
/* 0x8008de1c */ sll	$zero,$zero,0x0
.L8008de20:
/* 0x8008de20 */ bne	$v0,$zero,.L8008de54
.L8008de24:
/* 0x8008de24 */ addu	$v0,$zero,$zero
.L8008de28:
/* 0x8008de28 */ lbu	$v0,4886($s4)
.L8008de2c:
/* 0x8008de2c */ sll	$zero,$zero,0x0
.L8008de30:
/* 0x8008de30 */ beq	$v0,$v1,.L8008de40
.L8008de34:
/* 0x8008de34 */ sll	$zero,$zero,0x0
.L8008de38:
/* 0x8008de38 */ bne	$v0,$zero,.L8008de54
.L8008de3c:
/* 0x8008de3c */ addu	$v0,$zero,$zero
.L8008de40:
/* 0x8008de40 */ j	0x8008de54
.L8008de44:
/* 0x8008de44 */ addiu	$v0,$zero,-1
.L8008de48:
/* 0x8008de48 */ j	0x8008de54
.L8008de4c:
/* 0x8008de4c */ addiu	$v0,$zero,1
.L8008de50:
/* 0x8008de50 */ addu	$v0,$zero,$zero
.L8008de54:
/* 0x8008de54 */ addu	$v0,$s3,$v0
.L8008de58:
/* 0x8008de58 */ lui	$v1,0x1
.L8008de5c:
/* 0x8008de5c */ addu	$v0,$v0,$v1
.L8008de60:
/* 0x8008de60 */ lbu	$v0,10098($v0)
.L8008de64:
/* 0x8008de64 */ sll	$zero,$zero,0x0
.L8008de68:
/* 0x8008de68 */ bne	$v0,$zero,.L8008dfa8
.L8008de6c:
/* 0x8008de6c */ sll	$zero,$zero,0x0
.L8008de70:
/* 0x8008de70 */ jal	0x80085e8c
.L8008de74:
/* 0x8008de74 */ addu	$a0,$s0,$zero
.L8008de78:
/* 0x8008de78 */ beq	$v0,$zero,.L8008de94
.L8008de7c:
/* 0x8008de7c */ sll	$zero,$zero,0x0
.L8008de80:
/* 0x8008de80 */ lhu	$v0,12($s2)
.L8008de84:
/* 0x8008de84 */ sll	$zero,$zero,0x0
.L8008de88:
/* 0x8008de88 */ addiu	$v0,$v0,1
.L8008de8c:
/* 0x8008de8c */ j	0x8008de98
.L8008de90:
/* 0x8008de90 */ sh	$v0,12($s2)
.L8008de94:
/* 0x8008de94 */ sh	$zero,12($s2)
.L8008de98:
/* 0x8008de98 */ jal	0x80085f0c
.L8008de9c:
/* 0x8008de9c */ addu	$a0,$s0,$zero
.L8008dea0:
/* 0x8008dea0 */ beq	$v0,$zero,.L8008debc
.L8008dea4:
/* 0x8008dea4 */ sll	$zero,$zero,0x0
.L8008dea8:
/* 0x8008dea8 */ lhu	$v0,16($s2)
.L8008deac:
/* 0x8008deac */ sll	$zero,$zero,0x0
.L8008deb0:
/* 0x8008deb0 */ addiu	$v0,$v0,1
.L8008deb4:
/* 0x8008deb4 */ j	0x8008dec0
.L8008deb8:
/* 0x8008deb8 */ sh	$v0,16($s2)
.L8008debc:
/* 0x8008debc */ sh	$zero,16($s2)
.L8008dec0:
/* 0x8008dec0 */ jal	0x80085cc4
.L8008dec4:
/* 0x8008dec4 */ addu	$a0,$s0,$zero
.L8008dec8:
/* 0x8008dec8 */ beq	$v0,$zero,.L8008ded4
.L8008decc:
/* 0x8008decc */ sll	$zero,$zero,0x0
.L8008ded0:
/* 0x8008ded0 */ addiu	$s7,$s7,1
.L8008ded4:
/* 0x8008ded4 */ jal	0x80085d44
.L8008ded8:
/* 0x8008ded8 */ addu	$a0,$s0,$zero
.L8008dedc:
/* 0x8008dedc */ beq	$v0,$zero,.L8008dee8
.L8008dee0:
/* 0x8008dee0 */ sll	$zero,$zero,0x0
.L8008dee4:
/* 0x8008dee4 */ addiu	$s7,$s7,-1
.L8008dee8:
/* 0x8008dee8 */ lh	$a0,12($s2)
.L8008deec:
/* 0x8008deec */ sll	$zero,$zero,0x0
.L8008def0:
/* 0x8008def0 */ slti	$v0,$a0,30
.L8008def4:
/* 0x8008def4 */ bne	$v0,$zero,.L8008df3c
.L8008def8:
/* 0x8008def8 */ lui	$v0,0x2aaa
.L8008defc:
/* 0x8008defc */ ori	$v0,$v0,0xaaab
.L8008df00:
/* 0x8008df00 */ addiu	$a0,$a0,-30
.L8008df04:
/* 0x8008df04 */ mult	$a0,$v0
.L8008df08:
/* 0x8008df08 */ sra	$v0,$a0,0x1f
.L8008df0c:
/* 0x8008df0c */ mfhi	$t0
.L8008df10:
/* 0x8008df10 */ subu	$v0,$t0,$v0
.L8008df14:
/* 0x8008df14 */ sll	$v1,$v0,0x1
.L8008df18:
/* 0x8008df18 */ addu	$v1,$v1,$v0
.L8008df1c:
/* 0x8008df1c */ sll	$v1,$v1,0x1
.L8008df20:
/* 0x8008df20 */ bne	$a0,$v1,.L8008df2c
.L8008df24:
/* 0x8008df24 */ sll	$zero,$zero,0x0
.L8008df28:
/* 0x8008df28 */ addiu	$s7,$s7,1
.L8008df2c:
/* 0x8008df2c */ lhu	$v0,20($s1)
.L8008df30:
/* 0x8008df30 */ sll	$zero,$zero,0x0
.L8008df34:
/* 0x8008df34 */ ori	$v0,$v0,0x1
.L8008df38:
/* 0x8008df38 */ sh	$v0,20($s1)
.L8008df3c:
/* 0x8008df3c */ lh	$a0,16($s2)
.L8008df40:
/* 0x8008df40 */ sll	$zero,$zero,0x0
.L8008df44:
/* 0x8008df44 */ slti	$v0,$a0,30
.L8008df48:
/* 0x8008df48 */ bne	$v0,$zero,.L8008df90
.L8008df4c:
/* 0x8008df4c */ lui	$v0,0x2aaa
.L8008df50:
/* 0x8008df50 */ ori	$v0,$v0,0xaaab
.L8008df54:
/* 0x8008df54 */ addiu	$a0,$a0,-30
.L8008df58:
/* 0x8008df58 */ mult	$a0,$v0
.L8008df5c:
/* 0x8008df5c */ sra	$v0,$a0,0x1f
.L8008df60:
/* 0x8008df60 */ mfhi	$t0
.L8008df64:
/* 0x8008df64 */ subu	$v0,$t0,$v0
.L8008df68:
/* 0x8008df68 */ sll	$v1,$v0,0x1
.L8008df6c:
/* 0x8008df6c */ addu	$v1,$v1,$v0
.L8008df70:
/* 0x8008df70 */ sll	$v1,$v1,0x1
.L8008df74:
/* 0x8008df74 */ bne	$a0,$v1,.L8008df80
.L8008df78:
/* 0x8008df78 */ sll	$zero,$zero,0x0
.L8008df7c:
/* 0x8008df7c */ addiu	$s7,$s7,-1
.L8008df80:
/* 0x8008df80 */ lhu	$v0,20($s1)
.L8008df84:
/* 0x8008df84 */ sll	$zero,$zero,0x0
.L8008df88:
/* 0x8008df88 */ ori	$v0,$v0,0x2
.L8008df8c:
/* 0x8008df8c */ sh	$v0,20($s1)
.L8008df90:
/* 0x8008df90 */ jal	0x80085dc4
.L8008df94:
/* 0x8008df94 */ addu	$a0,$s0,$zero
.L8008df98:
/* 0x8008df98 */ beq	$v0,$zero,.L8008dfa8
.L8008df9c:
/* 0x8008df9c */ addiu	$t1,$zero,1
.L8008dfa0:
/* 0x8008dfa0 */ sw	$t1,48($sp)
.L8008dfa4:
/* 0x8008dfa4 */ addu	$s7,$zero,$zero
.L8008dfa8:
/* 0x8008dfa8 */ addiu	$s0,$s0,1
.L8008dfac:
/* 0x8008dfac */ slti	$v0,$s0,2
.L8008dfb0:
/* 0x8008dfb0 */ bne	$v0,$zero,.L8008ddb8
.L8008dfb4:
/* 0x8008dfb4 */ addiu	$s2,$s2,2
.L8008dfb8:
/* 0x8008dfb8 */ beq	$s7,$zero,.L8008e1ec
.L8008dfbc:
/* 0x8008dfbc */ sll	$zero,$zero,0x0
.L8008dfc0:
/* 0x8008dfc0 */ lw	$s0,1864($s1)
.L8008dfc4:
/* 0x8008dfc4 */ lw	$s2,1868($s1)
.L8008dfc8:
/* 0x8008dfc8 */ bgez	$s7,.L8008dff0
.L8008dfcc:
/* 0x8008dfcc */ sll	$zero,$zero,0x0
.L8008dfd0:
/* 0x8008dfd0 */ lw	$v1,4($s1)
.L8008dfd4:
/* 0x8008dfd4 */ lw	$v0,1860($s1)
.L8008dfd8:
/* 0x8008dfd8 */ sll	$v1,$v1,0xc
.L8008dfdc:
/* 0x8008dfdc */ slt	$v0,$v1,$v0
.L8008dfe0:
/* 0x8008dfe0 */ beq	$v0,$zero,.L8008dff0
.L8008dfe4:
/* 0x8008dfe4 */ sll	$zero,$zero,0x0
.L8008dfe8:
/* 0x8008dfe8 */ subu	$s0,$s0,$v1
.L8008dfec:
/* 0x8008dfec */ subu	$s2,$s2,$v1
.L8008dff0:
/* 0x8008dff0 */ blez	$s7,.L8008e024
.L8008dff4:
/* 0x8008dff4 */ sll	$v0,$s7,0xc
.L8008dff8:
/* 0x8008dff8 */ lw	$v0,1860($s1)
.L8008dffc:
/* 0x8008dffc */ sll	$zero,$zero,0x0
.L8008e000:
/* 0x8008e000 */ bgez	$v0,.L8008e024
.L8008e004:
/* 0x8008e004 */ sll	$v0,$s7,0xc
.L8008e008:
/* 0x8008e008 */ lw	$v0,4($s1)
.L8008e00c:
/* 0x8008e00c */ lw	$v1,1864($s1)
.L8008e010:
/* 0x8008e010 */ lw	$a0,1868($s1)
.L8008e014:
/* 0x8008e014 */ sll	$v0,$v0,0xc
.L8008e018:
/* 0x8008e018 */ addu	$s0,$v1,$v0
.L8008e01c:
/* 0x8008e01c */ addu	$s2,$a0,$v0
.L8008e020:
/* 0x8008e020 */ sll	$v0,$s7,0xc
.L8008e024:
/* 0x8008e024 */ subu	$v1,$s0,$v0
.L8008e028:
/* 0x8008e028 */ bgez	$v1,.L8008e064
.L8008e02c:
/* 0x8008e02c */ subu	$v0,$v0,$s0
.L8008e030:
/* 0x8008e030 */ lw	$v1,4($s1)
.L8008e034:
/* 0x8008e034 */ sll	$zero,$zero,0x0
.L8008e038:
/* 0x8008e038 */ sll	$v1,$v1,0xc
.L8008e03c:
/* 0x8008e03c */ div	$zero,$v0,$v1
.L8008e040:
/* 0x8008e040 */ mfhi	$a0
.L8008e044:
/* 0x8008e044 */ sll	$zero,$zero,0x0
.L8008e048:
/* 0x8008e048 */ subu	$a0,$v1,$a0
.L8008e04c:
/* 0x8008e04c */ div	$zero,$a0,$v1
.L8008e050:
/* 0x8008e050 */ mfhi	$v0
.L8008e054:
/* 0x8008e054 */ sll	$zero,$zero,0x0
.L8008e058:
/* 0x8008e058 */ sra	$v0,$v0,0xc
.L8008e05c:
/* 0x8008e05c */ j	0x8008e084
.L8008e060:
/* 0x8008e060 */ sll	$v0,$v0,0x1
.L8008e064:
/* 0x8008e064 */ lw	$v0,4($s1)
.L8008e068:
/* 0x8008e068 */ sll	$zero,$zero,0x0
.L8008e06c:
/* 0x8008e06c */ sll	$v0,$v0,0xc
.L8008e070:
/* 0x8008e070 */ div	$zero,$v1,$v0
.L8008e074:
/* 0x8008e074 */ mfhi	$v1
.L8008e078:
/* 0x8008e078 */ sll	$zero,$zero,0x0
.L8008e07c:
/* 0x8008e07c */ sra	$v1,$v1,0xc
.L8008e080:
/* 0x8008e080 */ sll	$v0,$v1,0x1
.L8008e084:
/* 0x8008e084 */ addu	$v0,$s1,$v0
.L8008e088:
/* 0x8008e088 */ lbu	$v1,1968($s1)
.L8008e08c:
/* 0x8008e08c */ lh	$s3,22($v0)
.L8008e090:
/* 0x8008e090 */ bne	$v1,$zero,.L8008e0f8
.L8008e094:
/* 0x8008e094 */ addu	$s4,$zero,$zero
.L8008e098:
/* 0x8008e098 */ lui	$v0,0x800f
.L8008e09c:
/* 0x8008e09c */ lb	$v1,10530($v0)
.L8008e0a0:
/* 0x8008e0a0 */ addiu	$v0,$zero,2
.L8008e0a4:
/* 0x8008e0a4 */ bne	$v1,$v0,.L8008e0e8
.L8008e0a8:
/* 0x8008e0a8 */ addiu	$a0,$zero,-1
.L8008e0ac:
/* 0x8008e0ac */ addu	$a1,$s4,$zero
.L8008e0b0:
/* 0x8008e0b0 */ addiu	$a3,$zero,1200
.L8008e0b4:
/* 0x8008e0b4 */ lui	$v0,0x800f
.L8008e0b8:
/* 0x8008e0b8 */ lw	$a2,10492($v0)
.L8008e0bc:
/* 0x8008e0bc */ addiu	$v0,$zero,99
.L8008e0c0:
/* 0x8008e0c0 */ sw	$v0,16($sp)
.L8008e0c4:
/* 0x8008e0c4 */ addiu	$v0,$zero,60
.L8008e0c8:
/* 0x8008e0c8 */ sw	$v0,20($sp)
.L8008e0cc:
/* 0x8008e0cc */ sw	$zero,24($sp)
.L8008e0d0:
/* 0x8008e0d0 */ jal	0x800843dc
.L8008e0d4:
/* 0x8008e0d4 */ sw	$zero,28($sp)
.L8008e0d8:
/* 0x8008e0d8 */ beq	$v0,$zero,.L8008e0e8
.L8008e0dc:
/* 0x8008e0dc */ slti	$v0,$s3,200
.L8008e0e0:
/* 0x8008e0e0 */ beq	$v0,$zero,.L8008e104
.L8008e0e4:
/* 0x8008e0e4 */ sll	$zero,$zero,0x0
.L8008e0e8:
/* 0x8008e0e8 */ lbu	$v0,1968($s1)
.L8008e0ec:
/* 0x8008e0ec */ sll	$zero,$zero,0x0
.L8008e0f0:
/* 0x8008e0f0 */ beq	$v0,$zero,.L8008e108
.L8008e0f4:
/* 0x8008e0f4 */ sll	$zero,$zero,0x0
.L8008e0f8:
/* 0x8008e0f8 */ addiu	$v0,$zero,-1
.L8008e0fc:
/* 0x8008e0fc */ bne	$s3,$v0,.L8008e108
.L8008e100:
/* 0x8008e100 */ sll	$zero,$zero,0x0
.L8008e104:
/* 0x8008e104 */ addiu	$s4,$zero,1
.L8008e108:
/* 0x8008e108 */ bne	$s4,$zero,.L8008e1ec
.L8008e10c:
/* 0x8008e10c */ addu	$v0,$s0,$zero
.L8008e110:
/* 0x8008e110 */ sw	$s0,1864($s1)
.L8008e114:
/* 0x8008e114 */ sll	$v1,$s7,0xc
.L8008e118:
/* 0x8008e118 */ subu	$v0,$v0,$v1
.L8008e11c:
/* 0x8008e11c */ sw	$v0,1864($s1)
.L8008e120:
/* 0x8008e120 */ addu	$a0,$v0,$zero
.L8008e124:
/* 0x8008e124 */ sw	$s2,1868($s1)
.L8008e128:
/* 0x8008e128 */ sw	$s2,1860($s1)
.L8008e12c:
/* 0x8008e12c */ bgez	$a0,.L8008e160
.L8008e130:
/* 0x8008e130 */ sw	$zero,1872($s1)
.L8008e134:
/* 0x8008e134 */ lw	$v1,4($s1)
.L8008e138:
/* 0x8008e138 */ negu	$v0,$a0
.L8008e13c:
/* 0x8008e13c */ sll	$v1,$v1,0xc
.L8008e140:
/* 0x8008e140 */ div	$zero,$v0,$v1
.L8008e144:
/* 0x8008e144 */ mfhi	$a0
.L8008e148:
/* 0x8008e148 */ sll	$zero,$zero,0x0
.L8008e14c:
/* 0x8008e14c */ subu	$a0,$v1,$a0
.L8008e150:
/* 0x8008e150 */ div	$zero,$a0,$v1
.L8008e154:
/* 0x8008e154 */ mfhi	$v0
.L8008e158:
/* 0x8008e158 */ j	0x8008e17c
.L8008e15c:
/* 0x8008e15c */ sra	$v1,$v0,0xc
.L8008e160:
/* 0x8008e160 */ lw	$v0,4($s1)
.L8008e164:
/* 0x8008e164 */ sll	$zero,$zero,0x0
.L8008e168:
/* 0x8008e168 */ sll	$v0,$v0,0xc
.L8008e16c:
/* 0x8008e16c */ div	$zero,$a0,$v0
.L8008e170:
/* 0x8008e170 */ mfhi	$v1
.L8008e174:
/* 0x8008e174 */ sll	$zero,$zero,0x0
.L8008e178:
/* 0x8008e178 */ sra	$v1,$v1,0xc
.L8008e17c:
/* 0x8008e17c */ lbu	$v0,1968($s1)
.L8008e180:
/* 0x8008e180 */ sll	$zero,$zero,0x0
.L8008e184:
/* 0x8008e184 */ bne	$v0,$zero,.L8008e1e4
.L8008e188:
/* 0x8008e188 */ sw	$v1,0($s1)
.L8008e18c:
/* 0x8008e18c */ sll	$v0,$v1,0x1
.L8008e190:
/* 0x8008e190 */ addu	$v0,$s1,$v0
.L8008e194:
/* 0x8008e194 */ lui	$s0,0x800f
.L8008e198:
/* 0x8008e198 */ lhu	$v0,22($v0)
.L8008e19c:
/* 0x8008e19c */ addiu	$s0,$s0,10504
.L8008e1a0:
/* 0x8008e1a0 */ sll	$a0,$v0,0x10
.L8008e1a4:
/* 0x8008e1a4 */ sra	$a0,$a0,0x10
.L8008e1a8:
/* 0x8008e1a8 */ jal	0x8007ee38
.L8008e1ac:
/* 0x8008e1ac */ sh	$v0,28($s0)
.L8008e1b0:
/* 0x8008e1b0 */ sw	$v0,4($s0)
.L8008e1b4:
/* 0x8008e1b4 */ lw	$v0,0($s1)
.L8008e1b8:
/* 0x8008e1b8 */ sll	$zero,$zero,0x0
.L8008e1bc:
/* 0x8008e1bc */ sll	$v0,$v0,0x1
.L8008e1c0:
/* 0x8008e1c0 */ addu	$v0,$s1,$v0
.L8008e1c4:
/* 0x8008e1c4 */ lh	$v0,22($v0)
.L8008e1c8:
/* 0x8008e1c8 */ sll	$zero,$zero,0x0
.L8008e1cc:
/* 0x8008e1cc */ slti	$v0,$v0,200
.L8008e1d0:
/* 0x8008e1d0 */ beq	$v0,$zero,.L8008e1e0
.L8008e1d4:
/* 0x8008e1d4 */ sll	$zero,$zero,0x0
.L8008e1d8:
/* 0x8008e1d8 */ jal	0x8007f07c
.L8008e1dc:
/* 0x8008e1dc */ sll	$zero,$zero,0x0
.L8008e1e0:
/* 0x8008e1e0 */ sh	$zero,1856($s1)
.L8008e1e4:
/* 0x8008e1e4 */ jal	0x80028358
.L8008e1e8:
/* 0x8008e1e8 */ addiu	$a0,$zero,784
.L8008e1ec:
/* 0x8008e1ec */ lh	$v0,20($s1)
.L8008e1f0:
/* 0x8008e1f0 */ sll	$zero,$zero,0x0
.L8008e1f4:
/* 0x8008e1f4 */ beq	$v0,$zero,.L8008e340
.L8008e1f8:
/* 0x8008e1f8 */ sll	$zero,$zero,0x0
.L8008e1fc:
/* 0x8008e1fc */ lbu	$v0,1968($s1)
.L8008e200:
/* 0x8008e200 */ sll	$zero,$zero,0x0
.L8008e204:
/* 0x8008e204 */ beq	$v0,$zero,.L8008e210
.L8008e208:
/* 0x8008e208 */ sll	$zero,$zero,0x0
.L8008e20c:
/* 0x8008e20c */ sh	$zero,20($s1)
.L8008e210:
/* 0x8008e210 */ lh	$v0,20($s1)
.L8008e214:
/* 0x8008e214 */ sll	$zero,$zero,0x0
.L8008e218:
/* 0x8008e218 */ beq	$v0,$zero,.L8008e340
.L8008e21c:
/* 0x8008e21c */ sll	$zero,$zero,0x0
.L8008e220:
/* 0x8008e220 */ lw	$a0,1860($s1)
.L8008e224:
/* 0x8008e224 */ sll	$zero,$zero,0x0
.L8008e228:
/* 0x8008e228 */ bgez	$a0,.L8008e25c
.L8008e22c:
/* 0x8008e22c */ negu	$v0,$a0
.L8008e230:
/* 0x8008e230 */ lw	$v1,4($s1)
.L8008e234:
/* 0x8008e234 */ sll	$zero,$zero,0x0
.L8008e238:
/* 0x8008e238 */ sll	$v1,$v1,0xc
.L8008e23c:
/* 0x8008e23c */ div	$zero,$v0,$v1
.L8008e240:
/* 0x8008e240 */ mfhi	$a0
.L8008e244:
/* 0x8008e244 */ sll	$zero,$zero,0x0
.L8008e248:
/* 0x8008e248 */ subu	$a0,$v1,$a0
.L8008e24c:
/* 0x8008e24c */ div	$zero,$a0,$v1
.L8008e250:
/* 0x8008e250 */ mfhi	$v0
.L8008e254:
/* 0x8008e254 */ j	0x8008e278
.L8008e258:
/* 0x8008e258 */ sra	$a1,$v0,0xc
.L8008e25c:
/* 0x8008e25c */ lw	$v0,4($s1)
.L8008e260:
/* 0x8008e260 */ sll	$zero,$zero,0x0
.L8008e264:
/* 0x8008e264 */ sll	$v0,$v0,0xc
.L8008e268:
/* 0x8008e268 */ div	$zero,$a0,$v0
.L8008e26c:
/* 0x8008e26c */ mfhi	$v1
.L8008e270:
/* 0x8008e270 */ sll	$zero,$zero,0x0
.L8008e274:
/* 0x8008e274 */ sra	$a1,$v1,0xc
.L8008e278:
/* 0x8008e278 */ lw	$a0,1864($s1)
.L8008e27c:
/* 0x8008e27c */ sll	$zero,$zero,0x0
.L8008e280:
/* 0x8008e280 */ bgez	$a0,.L8008e2b4
.L8008e284:
/* 0x8008e284 */ negu	$v0,$a0
.L8008e288:
/* 0x8008e288 */ lw	$v1,4($s1)
.L8008e28c:
/* 0x8008e28c */ sll	$zero,$zero,0x0
.L8008e290:
/* 0x8008e290 */ sll	$v1,$v1,0xc
.L8008e294:
/* 0x8008e294 */ div	$zero,$v0,$v1
.L8008e298:
/* 0x8008e298 */ mfhi	$a0
.L8008e29c:
/* 0x8008e29c */ sll	$zero,$zero,0x0
.L8008e2a0:
/* 0x8008e2a0 */ subu	$a0,$v1,$a0
.L8008e2a4:
/* 0x8008e2a4 */ div	$zero,$a0,$v1
.L8008e2a8:
/* 0x8008e2a8 */ mfhi	$v0
.L8008e2ac:
/* 0x8008e2ac */ j	0x8008e2d0
.L8008e2b0:
/* 0x8008e2b0 */ sra	$s0,$v0,0xc
.L8008e2b4:
/* 0x8008e2b4 */ lw	$v0,4($s1)
.L8008e2b8:
/* 0x8008e2b8 */ sll	$zero,$zero,0x0
.L8008e2bc:
/* 0x8008e2bc */ sll	$v0,$v0,0xc
.L8008e2c0:
/* 0x8008e2c0 */ div	$zero,$a0,$v0
.L8008e2c4:
/* 0x8008e2c4 */ mfhi	$v1
.L8008e2c8:
/* 0x8008e2c8 */ sll	$zero,$zero,0x0
.L8008e2cc:
/* 0x8008e2cc */ sra	$s0,$v1,0xc
.L8008e2d0:
/* 0x8008e2d0 */ sll	$v0,$a1,0x1
.L8008e2d4:
/* 0x8008e2d4 */ addu	$v1,$s1,$v0
.L8008e2d8:
/* 0x8008e2d8 */ lh	$v0,22($v1)
.L8008e2dc:
/* 0x8008e2dc */ sll	$zero,$zero,0x0
.L8008e2e0:
/* 0x8008e2e0 */ slti	$v0,$v0,200
.L8008e2e4:
/* 0x8008e2e4 */ beq	$v0,$zero,.L8008e320
.L8008e2e8:
/* 0x8008e2e8 */ sll	$v0,$s0,0x1
.L8008e2ec:
/* 0x8008e2ec */ addu	$v0,$s1,$v0
.L8008e2f0:
/* 0x8008e2f0 */ lh	$v0,22($v0)
.L8008e2f4:
/* 0x8008e2f4 */ sll	$zero,$zero,0x0
.L8008e2f8:
/* 0x8008e2f8 */ slti	$v0,$v0,200
.L8008e2fc:
/* 0x8008e2fc */ bne	$v0,$zero,.L8008e340
.L8008e300:
/* 0x8008e300 */ sll	$zero,$zero,0x0
.L8008e304:
/* 0x8008e304 */ sh	$zero,20($s1)
.L8008e308:
/* 0x8008e308 */ lh	$a0,22($v1)
.L8008e30c:
/* 0x8008e30c */ jal	0x8007ee38
.L8008e310:
/* 0x8008e310 */ sll	$zero,$zero,0x0
.L8008e314:
/* 0x8008e314 */ lhu	$v0,6($v0)
.L8008e318:
/* 0x8008e318 */ sll	$zero,$zero,0x0
.L8008e31c:
/* 0x8008e31c */ sw	$v0,1852($s1)
.L8008e320:
/* 0x8008e320 */ sll	$v0,$s0,0x1
.L8008e324:
/* 0x8008e324 */ addu	$v0,$s1,$v0
.L8008e328:
/* 0x8008e328 */ lh	$v0,22($v0)
.L8008e32c:
/* 0x8008e32c */ sll	$zero,$zero,0x0
.L8008e330:
/* 0x8008e330 */ slti	$v0,$v0,200
.L8008e334:
/* 0x8008e334 */ bne	$v0,$zero,.L8008e340
.L8008e338:
/* 0x8008e338 */ sll	$zero,$zero,0x0
.L8008e33c:
/* 0x8008e33c */ sh	$zero,20($s1)
.L8008e340:
/* 0x8008e340 */ lw	$v0,0($s1)
.L8008e344:
/* 0x8008e344 */ sll	$zero,$zero,0x0
.L8008e348:
/* 0x8008e348 */ sll	$v0,$v0,0x1
.L8008e34c:
/* 0x8008e34c */ addu	$v0,$s1,$v0
.L8008e350:
/* 0x8008e350 */ lh	$v0,22($v0)
.L8008e354:
/* 0x8008e354 */ sll	$zero,$zero,0x0
.L8008e358:
/* 0x8008e358 */ slti	$v0,$v0,200
.L8008e35c:
/* 0x8008e35c */ bne	$v0,$zero,.L8008e3f8
.L8008e360:
/* 0x8008e360 */ lui	$v0,0x800f
.L8008e364:
/* 0x8008e364 */ lw	$v1,1852($s1)
.L8008e368:
/* 0x8008e368 */ addiu	$v0,$zero,-1
.L8008e36c:
/* 0x8008e36c */ bne	$v1,$v0,.L8008e3f4
.L8008e370:
/* 0x8008e370 */ sll	$zero,$zero,0x0
.L8008e374:
/* 0x8008e374 */ lw	$a0,1860($s1)
.L8008e378:
/* 0x8008e378 */ sll	$zero,$zero,0x0
.L8008e37c:
/* 0x8008e37c */ bgez	$a0,.L8008e3b8
.L8008e380:
/* 0x8008e380 */ negu	$v0,$a0
.L8008e384:
/* 0x8008e384 */ lw	$v1,4($s1)
.L8008e388:
/* 0x8008e388 */ sll	$zero,$zero,0x0
.L8008e38c:
/* 0x8008e38c */ sll	$v1,$v1,0xc
.L8008e390:
/* 0x8008e390 */ div	$zero,$v0,$v1
.L8008e394:
/* 0x8008e394 */ mfhi	$a0
.L8008e398:
/* 0x8008e398 */ sll	$zero,$zero,0x0
.L8008e39c:
/* 0x8008e39c */ subu	$a0,$v1,$a0
.L8008e3a0:
/* 0x8008e3a0 */ div	$zero,$a0,$v1
.L8008e3a4:
/* 0x8008e3a4 */ mfhi	$v0
.L8008e3a8:
/* 0x8008e3a8 */ sll	$zero,$zero,0x0
.L8008e3ac:
/* 0x8008e3ac */ sra	$v0,$v0,0xc
.L8008e3b0:
/* 0x8008e3b0 */ j	0x8008e3d8
.L8008e3b4:
/* 0x8008e3b4 */ sll	$v0,$v0,0x1
.L8008e3b8:
/* 0x8008e3b8 */ lw	$v0,4($s1)
.L8008e3bc:
/* 0x8008e3bc */ sll	$zero,$zero,0x0
.L8008e3c0:
/* 0x8008e3c0 */ sll	$v0,$v0,0xc
.L8008e3c4:
/* 0x8008e3c4 */ div	$zero,$a0,$v0
.L8008e3c8:
/* 0x8008e3c8 */ mfhi	$v1
.L8008e3cc:
/* 0x8008e3cc */ sll	$zero,$zero,0x0
.L8008e3d0:
/* 0x8008e3d0 */ sra	$v1,$v1,0xc
.L8008e3d4:
/* 0x8008e3d4 */ sll	$v0,$v1,0x1
.L8008e3d8:
/* 0x8008e3d8 */ addu	$v0,$s1,$v0
.L8008e3dc:
/* 0x8008e3dc */ lh	$a0,22($v0)
.L8008e3e0:
/* 0x8008e3e0 */ jal	0x8007ee38
.L8008e3e4:
/* 0x8008e3e4 */ sll	$zero,$zero,0x0
.L8008e3e8:
/* 0x8008e3e8 */ lhu	$v0,6($v0)
.L8008e3ec:
/* 0x8008e3ec */ sll	$zero,$zero,0x0
.L8008e3f0:
/* 0x8008e3f0 */ sw	$v0,1852($s1)
.L8008e3f4:
/* 0x8008e3f4 */ lui	$v0,0x800f
.L8008e3f8:
/* 0x8008e3f8 */ lw	$v0,10508($v0)
.L8008e3fc:
/* 0x8008e3fc */ sll	$zero,$zero,0x0
.L8008e400:
/* 0x8008e400 */ lhu	$a0,6($v0)
.L8008e404:
/* 0x8008e404 */ jal	0x8007f2e4
.L8008e408:
/* 0x8008e408 */ sll	$zero,$zero,0x0
.L8008e40c:
/* 0x8008e40c */ jal	0x8007f2f8
.L8008e410:
/* 0x8008e410 */ sll	$zero,$zero,0x0
.L8008e414:
/* 0x8008e414 */ lw	$t0,48($sp)
.L8008e418:
/* 0x8008e418 */ sll	$zero,$zero,0x0
.L8008e41c:
/* 0x8008e41c */ beq	$t0,$zero,.L8008e768
.L8008e420:
/* 0x8008e420 */ lui	$v0,0x800f
.L8008e424:
/* 0x8008e424 */ lw	$a2,1868($s1)
.L8008e428:
/* 0x8008e428 */ lw	$v0,1864($s1)
.L8008e42c:
/* 0x8008e42c */ sll	$zero,$zero,0x0
.L8008e430:
/* 0x8008e430 */ bne	$a2,$v0,.L8008e768
.L8008e434:
/* 0x8008e434 */ lui	$v0,0x800f
.L8008e438:
/* 0x8008e438 */ lui	$v0,0x800f
.L8008e43c:
/* 0x8008e43c */ lw	$v0,10488($v0)
.L8008e440:
/* 0x8008e440 */ lw	$v1,1876($s1)
.L8008e444:
/* 0x8008e444 */ sll	$zero,$zero,0x0
.L8008e448:
/* 0x8008e448 */ subu	$v0,$v0,$v1
.L8008e44c:
/* 0x8008e44c */ slti	$v0,$v0,58
.L8008e450:
/* 0x8008e450 */ bne	$v0,$zero,.L8008e768
.L8008e454:
/* 0x8008e454 */ lui	$v0,0x800f
.L8008e458:
/* 0x8008e458 */ lw	$v1,0($s1)
.L8008e45c:
/* 0x8008e45c */ lw	$a1,4($s1)
.L8008e460:
/* 0x8008e460 */ addiu	$v0,$v1,1
.L8008e464:
/* 0x8008e464 */ div	$zero,$v0,$a1
.L8008e468:
/* 0x8008e468 */ mfhi	$a0
.L8008e46c:
/* 0x8008e46c */ sll	$v1,$v1,0x1
.L8008e470:
/* 0x8008e470 */ addu	$v1,$s1,$v1
.L8008e474:
/* 0x8008e474 */ lh	$s0,22($v1)
.L8008e478:
/* 0x8008e478 */ lbu	$v0,1968($s1)
.L8008e47c:
/* 0x8008e47c */ sll	$a0,$a0,0x1
.L8008e480:
/* 0x8008e480 */ addu	$a0,$s1,$a0
.L8008e484:
/* 0x8008e484 */ lh	$a0,22($a0)
.L8008e488:
/* 0x8008e488 */ bne	$v0,$zero,.L8008e738
.L8008e48c:
/* 0x8008e48c */ lui	$v0,0x800f
.L8008e490:
/* 0x8008e490 */ slti	$v0,$s0,200
.L8008e494:
/* 0x8008e494 */ bne	$v0,$zero,.L8008e738
.L8008e498:
/* 0x8008e498 */ lui	$v0,0x800f
.L8008e49c:
/* 0x8008e49c */ bgez	$a2,.L8008e4dc
.L8008e4a0:
/* 0x8008e4a0 */ sll	$v1,$a1,0xc
.L8008e4a4:
/* 0x8008e4a4 */ lw	$v0,1860($s1)
.L8008e4a8:
/* 0x8008e4a8 */ sll	$zero,$zero,0x0
.L8008e4ac:
/* 0x8008e4ac */ addu	$v0,$v0,$v1
.L8008e4b0:
/* 0x8008e4b0 */ sw	$v0,1860($s1)
.L8008e4b4:
/* 0x8008e4b4 */ addu	$v0,$a1,$zero
.L8008e4b8:
/* 0x8008e4b8 */ lw	$v1,1864($s1)
.L8008e4bc:
/* 0x8008e4bc */ sll	$v0,$v0,0xc
.L8008e4c0:
/* 0x8008e4c0 */ addu	$v1,$v1,$v0
.L8008e4c4:
/* 0x8008e4c4 */ addu	$v0,$a1,$zero
.L8008e4c8:
/* 0x8008e4c8 */ sw	$v1,1864($s1)
.L8008e4cc:
/* 0x8008e4cc */ addu	$v1,$a2,$zero
.L8008e4d0:
/* 0x8008e4d0 */ sll	$v0,$v0,0xc
.L8008e4d4:
/* 0x8008e4d4 */ addu	$v1,$v1,$v0
.L8008e4d8:
/* 0x8008e4d8 */ sw	$v1,1868($s1)
.L8008e4dc:
/* 0x8008e4dc */ lw	$v1,4($s1)
.L8008e4e0:
/* 0x8008e4e0 */ lw	$v0,1868($s1)
.L8008e4e4:
/* 0x8008e4e4 */ sll	$v1,$v1,0xc
.L8008e4e8:
/* 0x8008e4e8 */ slt	$v0,$v0,$v1
.L8008e4ec:
/* 0x8008e4ec */ bne	$v0,$zero,.L8008e530
.L8008e4f0:
/* 0x8008e4f0 */ slti	$v0,$a0,200
.L8008e4f4:
/* 0x8008e4f4 */ lw	$v0,1860($s1)
.L8008e4f8:
/* 0x8008e4f8 */ sll	$zero,$zero,0x0
.L8008e4fc:
/* 0x8008e4fc */ subu	$v0,$v0,$v1
.L8008e500:
/* 0x8008e500 */ sw	$v0,1860($s1)
.L8008e504:
/* 0x8008e504 */ lw	$v0,4($s1)
.L8008e508:
/* 0x8008e508 */ lw	$v1,1864($s1)
.L8008e50c:
/* 0x8008e50c */ sll	$v0,$v0,0xc
.L8008e510:
/* 0x8008e510 */ subu	$v1,$v1,$v0
.L8008e514:
/* 0x8008e514 */ lw	$v0,4($s1)
.L8008e518:
/* 0x8008e518 */ sw	$v1,1864($s1)
.L8008e51c:
/* 0x8008e51c */ lw	$v1,1868($s1)
.L8008e520:
/* 0x8008e520 */ sll	$v0,$v0,0xc
.L8008e524:
/* 0x8008e524 */ subu	$v1,$v1,$v0
.L8008e528:
/* 0x8008e528 */ sw	$v1,1868($s1)
.L8008e52c:
/* 0x8008e52c */ slti	$v0,$a0,200
.L8008e530:
/* 0x8008e530 */ bne	$v0,$zero,.L8008e670
.L8008e534:
/* 0x8008e534 */ addiu	$v0,$zero,-1
.L8008e538:
/* 0x8008e538 */ lw	$a0,1848($s1)
.L8008e53c:
/* 0x8008e53c */ sll	$zero,$zero,0x0
.L8008e540:
/* 0x8008e540 */ beq	$a0,$v0,.L8008e65c
.L8008e544:
/* 0x8008e544 */ sll	$zero,$zero,0x0
.L8008e548:
/* 0x8008e548 */ lw	$v1,1864($s1)
.L8008e54c:
/* 0x8008e54c */ lw	$v0,1868($s1)
.L8008e550:
/* 0x8008e550 */ sll	$zero,$zero,0x0
.L8008e554:
/* 0x8008e554 */ bne	$v1,$v0,.L8008e604
.L8008e558:
/* 0x8008e558 */ addu	$a1,$a0,$zero
.L8008e55c:
/* 0x8008e55c */ lbu	$v0,1968($s1)
.L8008e560:
/* 0x8008e560 */ sll	$zero,$zero,0x0
.L8008e564:
/* 0x8008e564 */ bne	$v0,$zero,.L8008e608
.L8008e568:
/* 0x8008e568 */ sll	$zero,$zero,0x0
.L8008e56c:
/* 0x8008e56c */ lh	$v0,22($s1)
.L8008e570:
/* 0x8008e570 */ sll	$zero,$zero,0x0
.L8008e574:
/* 0x8008e574 */ beq	$v0,$a1,.L8008e594
.L8008e578:
/* 0x8008e578 */ addu	$a0,$zero,$zero
.L8008e57c:
/* 0x8008e57c */ addu	$v1,$s1,$zero
.L8008e580:
/* 0x8008e580 */ addiu	$v1,$v1,2
.L8008e584:
/* 0x8008e584 */ lh	$v0,22($v1)
.L8008e588:
/* 0x8008e588 */ sll	$zero,$zero,0x0
.L8008e58c:
/* 0x8008e58c */ bne	$v0,$a1,.L8008e580
.L8008e590:
/* 0x8008e590 */ addiu	$a0,$a0,1
.L8008e594:
/* 0x8008e594 */ addiu	$v0,$a1,-200
.L8008e598:
/* 0x8008e598 */ sll	$v0,$v0,0x1
.L8008e59c:
/* 0x8008e59c */ addu	$v0,$s1,$v0
.L8008e5a0:
/* 0x8008e5a0 */ lh	$a1,1782($v0)
.L8008e5a4:
/* 0x8008e5a4 */ lw	$v0,4($s1)
.L8008e5a8:
/* 0x8008e5a8 */ addiu	$v1,$a0,1
.L8008e5ac:
/* 0x8008e5ac */ subu	$v0,$v0,$a1
.L8008e5b0:
/* 0x8008e5b0 */ slt	$v0,$v1,$v0
.L8008e5b4:
/* 0x8008e5b4 */ beq	$v0,$zero,.L8008e5f0
.L8008e5b8:
/* 0x8008e5b8 */ sll	$v0,$v1,0x1
.L8008e5bc:
/* 0x8008e5bc */ addu	$a0,$v0,$s1
.L8008e5c0:
/* 0x8008e5c0 */ addu	$v0,$v1,$a1
.L8008e5c4:
/* 0x8008e5c4 */ sll	$v0,$v0,0x1
.L8008e5c8:
/* 0x8008e5c8 */ addu	$v0,$s1,$v0
.L8008e5cc:
/* 0x8008e5cc */ lhu	$v0,22($v0)
.L8008e5d0:
/* 0x8008e5d0 */ addiu	$v1,$v1,1
.L8008e5d4:
/* 0x8008e5d4 */ sh	$v0,22($a0)
.L8008e5d8:
/* 0x8008e5d8 */ lw	$v0,4($s1)
.L8008e5dc:
/* 0x8008e5dc */ sll	$zero,$zero,0x0
.L8008e5e0:
/* 0x8008e5e0 */ subu	$v0,$v0,$a1
.L8008e5e4:
/* 0x8008e5e4 */ slt	$v0,$v1,$v0
.L8008e5e8:
/* 0x8008e5e8 */ bne	$v0,$zero,.L8008e5c0
.L8008e5ec:
/* 0x8008e5ec */ addiu	$a0,$a0,2
.L8008e5f0:
/* 0x8008e5f0 */ lw	$v0,4($s1)
.L8008e5f4:
/* 0x8008e5f4 */ addiu	$a0,$zero,787
.L8008e5f8:
/* 0x8008e5f8 */ subu	$v0,$v0,$a1
.L8008e5fc:
/* 0x8008e5fc */ jal	0x80028358
.L8008e600:
/* 0x8008e600 */ sw	$v0,4($s1)
.L8008e604:
/* 0x8008e604 */ lbu	$v0,1968($s1)
.L8008e608:
/* 0x8008e608 */ lw	$v1,1848($s1)
.L8008e60c:
/* 0x8008e60c */ bne	$v0,$zero,.L8008e658
.L8008e610:
/* 0x8008e610 */ addiu	$v0,$zero,-1
.L8008e614:
/* 0x8008e614 */ slt	$v0,$v1,$s0
.L8008e618:
/* 0x8008e618 */ beq	$v0,$zero,.L8008e654
.L8008e61c:
/* 0x8008e61c */ addiu	$v0,$v1,-200
.L8008e620:
/* 0x8008e620 */ sll	$v0,$v0,0x1
.L8008e624:
/* 0x8008e624 */ addu	$v0,$s1,$v0
.L8008e628:
/* 0x8008e628 */ lh	$a0,1782($v0)
.L8008e62c:
/* 0x8008e62c */ lw	$v0,1860($s1)
.L8008e630:
/* 0x8008e630 */ lw	$v1,1868($s1)
.L8008e634:
/* 0x8008e634 */ sll	$a0,$a0,0xc
.L8008e638:
/* 0x8008e638 */ subu	$v0,$v0,$a0
.L8008e63c:
/* 0x8008e63c */ sw	$v0,1860($s1)
.L8008e640:
/* 0x8008e640 */ lw	$v0,1864($s1)
.L8008e644:
/* 0x8008e644 */ subu	$v1,$v1,$a0
.L8008e648:
/* 0x8008e648 */ sw	$v1,1868($s1)
.L8008e64c:
/* 0x8008e64c */ subu	$v0,$v0,$a0
.L8008e650:
/* 0x8008e650 */ sw	$v0,1864($s1)
.L8008e654:
/* 0x8008e654 */ addiu	$v0,$zero,-1
.L8008e658:
/* 0x8008e658 */ sw	$v0,1848($s1)
.L8008e65c:
/* 0x8008e65c */ addu	$a0,$s1,$zero
.L8008e660:
/* 0x8008e660 */ jal	0x80087050
.L8008e664:
/* 0x8008e664 */ addu	$a1,$s0,$zero
.L8008e668:
/* 0x8008e668 */ j	0x8008e764
.L8008e66c:
/* 0x8008e66c */ sw	$s0,1848($s1)
.L8008e670:
/* 0x8008e670 */ lw	$v1,1864($s1)
.L8008e674:
/* 0x8008e674 */ lw	$v0,1868($s1)
.L8008e678:
/* 0x8008e678 */ sll	$zero,$zero,0x0
.L8008e67c:
/* 0x8008e67c */ bne	$v1,$v0,.L8008e730
.L8008e680:
/* 0x8008e680 */ addiu	$v0,$zero,-1
.L8008e684:
/* 0x8008e684 */ lbu	$v0,1968($s1)
.L8008e688:
/* 0x8008e688 */ sll	$zero,$zero,0x0
.L8008e68c:
/* 0x8008e68c */ bne	$v0,$zero,.L8008e730
.L8008e690:
/* 0x8008e690 */ addiu	$v0,$zero,-1
.L8008e694:
/* 0x8008e694 */ lh	$v0,22($s1)
.L8008e698:
/* 0x8008e698 */ sll	$zero,$zero,0x0
.L8008e69c:
/* 0x8008e69c */ beq	$v0,$s0,.L8008e6bc
.L8008e6a0:
/* 0x8008e6a0 */ addu	$a0,$zero,$zero
.L8008e6a4:
/* 0x8008e6a4 */ addu	$v1,$s1,$zero
.L8008e6a8:
/* 0x8008e6a8 */ addiu	$v1,$v1,2
.L8008e6ac:
/* 0x8008e6ac */ lh	$v0,22($v1)
.L8008e6b0:
/* 0x8008e6b0 */ sll	$zero,$zero,0x0
.L8008e6b4:
/* 0x8008e6b4 */ bne	$v0,$s0,.L8008e6a8
.L8008e6b8:
/* 0x8008e6b8 */ addiu	$a0,$a0,1
.L8008e6bc:
/* 0x8008e6bc */ addiu	$v0,$s0,-200
.L8008e6c0:
/* 0x8008e6c0 */ sll	$v0,$v0,0x1
.L8008e6c4:
/* 0x8008e6c4 */ addu	$v0,$s1,$v0
.L8008e6c8:
/* 0x8008e6c8 */ lh	$a1,1782($v0)
.L8008e6cc:
/* 0x8008e6cc */ lw	$v0,4($s1)
.L8008e6d0:
/* 0x8008e6d0 */ addiu	$v1,$a0,1
.L8008e6d4:
/* 0x8008e6d4 */ subu	$v0,$v0,$a1
.L8008e6d8:
/* 0x8008e6d8 */ slt	$v0,$v1,$v0
.L8008e6dc:
/* 0x8008e6dc */ beq	$v0,$zero,.L8008e718
.L8008e6e0:
/* 0x8008e6e0 */ sll	$v0,$v1,0x1
.L8008e6e4:
/* 0x8008e6e4 */ addu	$a0,$v0,$s1
.L8008e6e8:
/* 0x8008e6e8 */ addu	$v0,$v1,$a1
.L8008e6ec:
/* 0x8008e6ec */ sll	$v0,$v0,0x1
.L8008e6f0:
/* 0x8008e6f0 */ addu	$v0,$s1,$v0
.L8008e6f4:
/* 0x8008e6f4 */ lhu	$v0,22($v0)
.L8008e6f8:
/* 0x8008e6f8 */ addiu	$v1,$v1,1
.L8008e6fc:
/* 0x8008e6fc */ sh	$v0,22($a0)
.L8008e700:
/* 0x8008e700 */ lw	$v0,4($s1)
.L8008e704:
/* 0x8008e704 */ sll	$zero,$zero,0x0
.L8008e708:
/* 0x8008e708 */ subu	$v0,$v0,$a1
.L8008e70c:
/* 0x8008e70c */ slt	$v0,$v1,$v0
.L8008e710:
/* 0x8008e710 */ bne	$v0,$zero,.L8008e6e8
.L8008e714:
/* 0x8008e714 */ addiu	$a0,$a0,2
.L8008e718:
/* 0x8008e718 */ lw	$v0,4($s1)
.L8008e71c:
/* 0x8008e71c */ addiu	$a0,$zero,787
.L8008e720:
/* 0x8008e720 */ subu	$v0,$v0,$a1
.L8008e724:
/* 0x8008e724 */ jal	0x80028358
.L8008e728:
/* 0x8008e728 */ sw	$v0,4($s1)
.L8008e72c:
/* 0x8008e72c */ addiu	$v0,$zero,-1
.L8008e730:
/* 0x8008e730 */ j	0x8008e764
.L8008e734:
/* 0x8008e734 */ sw	$v0,1848($s1)
.L8008e738:
/* 0x8008e738 */ lh	$a0,10532($v0)
.L8008e73c:
/* 0x8008e73c */ jal	0x8007f840
.L8008e740:
/* 0x8008e740 */ addiu	$a1,$zero,1
.L8008e744:
/* 0x8008e744 */ lui	$v0,0x800f
.L8008e748:
/* 0x8008e748 */ addiu	$v0,$v0,10376
.L8008e74c:
/* 0x8008e74c */ addiu	$v1,$zero,1200
.L8008e750:
/* 0x8008e750 */ sw	$v1,116($v0)
.L8008e754:
/* 0x8008e754 */ lw	$v1,112($v0)
.L8008e758:
/* 0x8008e758 */ addiu	$v0,$zero,-1
.L8008e75c:
/* 0x8008e75c */ sw	$v0,1888($s1)
.L8008e760:
/* 0x8008e760 */ sw	$v1,1880($s1)
.L8008e764:
/* 0x8008e764 */ lui	$v0,0x800f
.L8008e768:
/* 0x8008e768 */ lw	$v1,10492($v0)
.L8008e76c:
/* 0x8008e76c */ addiu	$v0,$zero,1200
.L8008e770:
/* 0x8008e770 */ bne	$v1,$v0,.L8008e78c
.L8008e774:
/* 0x8008e774 */ addiu	$v0,$zero,1
.L8008e778:
/* 0x8008e778 */ lw	$a0,1880($s1)
.L8008e77c:
/* 0x8008e77c */ addiu	$v1,$zero,-1
.L8008e780:
/* 0x8008e780 */ bne	$a0,$v1,.L8008e78c
.L8008e784:
/* 0x8008e784 */ addiu	$v0,$zero,2
.L8008e788:
/* 0x8008e788 */ addiu	$v0,$zero,1
.L8008e78c:
/* 0x8008e78c */ lw	$ra,92($sp)
.L8008e790:
/* 0x8008e790 */ lw	$s8,88($sp)
.L8008e794:
/* 0x8008e794 */ lw	$s7,84($sp)
.L8008e798:
/* 0x8008e798 */ lw	$s6,80($sp)
.L8008e79c:
/* 0x8008e79c */ lw	$s5,76($sp)
.L8008e7a0:
/* 0x8008e7a0 */ lw	$s4,72($sp)
.L8008e7a4:
/* 0x8008e7a4 */ lw	$s3,68($sp)
.L8008e7a8:
/* 0x8008e7a8 */ lw	$s2,64($sp)
.L8008e7ac:
/* 0x8008e7ac */ lw	$s1,60($sp)
.L8008e7b0:
/* 0x8008e7b0 */ lw	$s0,56($sp)
.L8008e7b4:
/* 0x8008e7b4 */ jr	$ra
.L8008e7b8:
/* 0x8008e7b8 */ addiu	$sp,$sp,96
.size FUN_8008cd3c, .-FUN_8008cd3c
