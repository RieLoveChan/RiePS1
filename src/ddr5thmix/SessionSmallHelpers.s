.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007ee38
.globl FUN_8007ee38
.type FUN_8007ee38, @function
FUN_8007ee38:
.L8007ee38:
/* 0x8007ee38 */ addu	$a1,$zero,$zero
.L8007ee3c:
/* 0x8007ee3c */ lui	$v0,0x800e
.L8007ee40:
/* 0x8007ee40 */ addiu	$v1,$v0,-3112
.L8007ee44:
/* 0x8007ee44 */ lb	$v0,3($v1)
.L8007ee48:
/* 0x8007ee48 */ sll	$zero,$zero,0x0
.L8007ee4c:
/* 0x8007ee4c */ bne	$v0,$a0,.L8007ee5c
.L8007ee50:
/* 0x8007ee50 */ addiu	$a1,$a1,1
.L8007ee54:
/* 0x8007ee54 */ jr	$ra
.L8007ee58:
/* 0x8007ee58 */ addu	$v0,$v1,$zero
.L8007ee5c:
/* 0x8007ee5c */ slti	$v0,$a1,47
.L8007ee60:
/* 0x8007ee60 */ bne	$v0,$zero,.L8007ee44
.L8007ee64:
/* 0x8007ee64 */ addiu	$v1,$v1,28
.L8007ee68:
/* 0x8007ee68 */ jr	$ra
.L8007ee6c:
/* 0x8007ee6c */ addu	$v0,$zero,$zero
.size FUN_8007ee38, .-FUN_8007ee38
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007ee70
.globl FUN_8007ee70
.type FUN_8007ee70, @function
FUN_8007ee70:
.L8007ee70:
/* 0x8007ee70 */ slti	$v0,$a0,47
.L8007ee74:
/* 0x8007ee74 */ beq	$v0,$zero,.L8007ee94
.L8007ee78:
/* 0x8007ee78 */ sll	$v1,$a0,0x3
.L8007ee7c:
/* 0x8007ee7c */ subu	$v1,$v1,$a0
.L8007ee80:
/* 0x8007ee80 */ sll	$v1,$v1,0x2
.L8007ee84:
/* 0x8007ee84 */ lui	$v0,0x800e
.L8007ee88:
/* 0x8007ee88 */ addiu	$v0,$v0,-3112
.L8007ee8c:
/* 0x8007ee8c */ jr	$ra
.L8007ee90:
/* 0x8007ee90 */ addu	$v0,$v1,$v0
.L8007ee94:
/* 0x8007ee94 */ jr	$ra
.L8007ee98:
/* 0x8007ee98 */ addu	$v0,$zero,$zero
.size FUN_8007ee70, .-FUN_8007ee70
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007eeb0
.globl FUN_8007eeb0
.type FUN_8007eeb0, @function
FUN_8007eeb0:
.L8007eeb0:
/* 0x8007eeb0 */ beq	$a0,$zero,.L8007eed8
.L8007eeb4:
/* 0x8007eeb4 */ sll	$v0,$a1,0x1
.L8007eeb8:
/* 0x8007eeb8 */ addu	$v0,$a0,$v0
.L8007eebc:
/* 0x8007eebc */ lhu	$v0,8($v0)
.L8007eec0:
/* 0x8007eec0 */ addiu	$v1,$zero,2
.L8007eec4:
/* 0x8007eec4 */ subu	$v1,$v1,$a2
.L8007eec8:
/* 0x8007eec8 */ sll	$v1,$v1,0x2
.L8007eecc:
/* 0x8007eecc */ srav	$v0,$v0,$v1
.L8007eed0:
/* 0x8007eed0 */ jr	$ra
.L8007eed4:
/* 0x8007eed4 */ andi	$v0,$v0,0xf
.L8007eed8:
/* 0x8007eed8 */ jr	$ra
.L8007eedc:
/* 0x8007eedc */ addu	$v0,$zero,$zero
.size FUN_8007eeb0, .-FUN_8007eeb0
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007eee0
.globl FUN_8007eee0
.type FUN_8007eee0, @function
FUN_8007eee0:
.L8007eee0:
/* 0x8007eee0 */ addiu	$sp,$sp,-24
.L8007eee4:
/* 0x8007eee4 */ beq	$a0,$zero,.L8007eefc
.L8007eee8:
/* 0x8007eee8 */ sw	$ra,16($sp)
.L8007eeec:
/* 0x8007eeec */ jal	0x8007ef38
.L8007eef0:
/* 0x8007eef0 */ sll	$zero,$zero,0x0
.L8007eef4:
/* 0x8007eef4 */ j	.L8007ef00
.L8007eef8:
/* 0x8007eef8 */ sltiu	$v0,$v0,1
.L8007eefc:
/* 0x8007eefc */ addu	$v0,$zero,$zero
.L8007ef00:
/* 0x8007ef00 */ lw	$ra,16($sp)
.L8007ef04:
/* 0x8007ef04 */ sll	$zero,$zero,0x0
.L8007ef08:
/* 0x8007ef08 */ jr	$ra
.L8007ef0c:
/* 0x8007ef0c */ addiu	$sp,$sp,24
.size FUN_8007eee0, .-FUN_8007eee0
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007ef10
.globl FUN_8007ef10
.type FUN_8007ef10, @function
FUN_8007ef10:
.L8007ef10:
/* 0x8007ef10 */ lb	$v0,3($a0)
.L8007ef14:
/* 0x8007ef14 */ sll	$zero,$zero,0x0
.L8007ef18:
/* 0x8007ef18 */ slti	$v0,$v0,41
.L8007ef1c:
/* 0x8007ef1c */ beq	$v0,$zero,.L8007ef30
.L8007ef20:
/* 0x8007ef20 */ sll	$zero,$zero,0x0
.L8007ef24:
/* 0x8007ef24 */ lhu	$v0,18($a0)
.L8007ef28:
/* 0x8007ef28 */ jr	$ra
.L8007ef2c:
/* 0x8007ef2c */ sltu	$v0,$zero,$v0
.L8007ef30:
/* 0x8007ef30 */ jr	$ra
.L8007ef34:
/* 0x8007ef34 */ addiu	$v0,$zero,2
.size FUN_8007ef10, .-FUN_8007ef10
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007ef38
.globl FUN_8007ef38
.type FUN_8007ef38, @function
FUN_8007ef38:
.L8007ef38:
/* 0x8007ef38 */ addiu	$sp,$sp,-24
.L8007ef3c:
/* 0x8007ef3c */ sw	$ra,20($sp)
.L8007ef40:
/* 0x8007ef40 */ sw	$s0,16($sp)
.L8007ef44:
/* 0x8007ef44 */ lhu	$s0,18($a0)
.L8007ef48:
/* 0x8007ef48 */ beq	$a0,$zero,.L8007ef7c
.L8007ef4c:
/* 0x8007ef4c */ addiu	$v0,$zero,-1
.L8007ef50:
/* 0x8007ef50 */ beq	$s0,$zero,.L8007ef78
.L8007ef54:
/* 0x8007ef54 */ sll	$zero,$zero,0x0
.L8007ef58:
/* 0x8007ef58 */ jal	0x8007f968
.L8007ef5c:
/* 0x8007ef5c */ sll	$zero,$zero,0x0
.L8007ef60:
/* 0x8007ef60 */ addiu	$a0,$s0,-1
.L8007ef64:
/* 0x8007ef64 */ addiu	$v1,$zero,1
.L8007ef68:
/* 0x8007ef68 */ sllv	$v1,$v1,$a0
.L8007ef6c:
/* 0x8007ef6c */ and	$v1,$v1,$v0
.L8007ef70:
/* 0x8007ef70 */ j	.L8007ef7c
.L8007ef74:
/* 0x8007ef74 */ sltiu	$v0,$v1,1
.L8007ef78:
/* 0x8007ef78 */ addu	$v0,$zero,$zero
.L8007ef7c:
/* 0x8007ef7c */ lw	$ra,20($sp)
.L8007ef80:
/* 0x8007ef80 */ lw	$s0,16($sp)
.L8007ef84:
/* 0x8007ef84 */ jr	$ra
.L8007ef88:
/* 0x8007ef88 */ addiu	$sp,$sp,24
.size FUN_8007ef38, .-FUN_8007ef38
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007f0a4
.globl FUN_8007f0a4
.type FUN_8007f0a4, @function
FUN_8007f0a4:
.L8007f0a4:
/* 0x8007f0a4 */ addu	$a1,$zero,$zero
.L8007f0a8:
/* 0x8007f0a8 */ lui	$v0,0x800e
.L8007f0ac:
/* 0x8007f0ac */ addiu	$v1,$v0,-3112
.L8007f0b0:
/* 0x8007f0b0 */ lhu	$v0,0($v1)
.L8007f0b4:
/* 0x8007f0b4 */ sll	$zero,$zero,0x0
.L8007f0b8:
/* 0x8007f0b8 */ bne	$v0,$a0,.L8007f0c8
.L8007f0bc:
/* 0x8007f0bc */ addiu	$a1,$a1,1
.L8007f0c0:
/* 0x8007f0c0 */ jr	$ra
.L8007f0c4:
/* 0x8007f0c4 */ addu	$v0,$v1,$zero
.L8007f0c8:
/* 0x8007f0c8 */ slti	$v0,$a1,47
.L8007f0cc:
/* 0x8007f0cc */ bne	$v0,$zero,.L8007f0b0
.L8007f0d0:
/* 0x8007f0d0 */ addiu	$v1,$v1,28
.L8007f0d4:
/* 0x8007f0d4 */ jr	$ra
.L8007f0d8:
/* 0x8007f0d8 */ addu	$v0,$zero,$zero
.size FUN_8007f0a4, .-FUN_8007f0a4
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007f0dc
.globl FUN_8007f0dc
.type FUN_8007f0dc, @function
FUN_8007f0dc:
.L8007f0dc:
/* 0x8007f0dc */ addu	$v1,$zero,$zero
.L8007f0e0:
/* 0x8007f0e0 */ lui	$v0,0x800e
.L8007f0e4:
/* 0x8007f0e4 */ addiu	$a1,$v0,-3112
.L8007f0e8:
/* 0x8007f0e8 */ beq	$a1,$a0,.L8007f108
.L8007f0ec:
/* 0x8007f0ec */ addu	$v0,$v1,$zero
.L8007f0f0:
/* 0x8007f0f0 */ addiu	$v1,$v1,1
.L8007f0f4:
/* 0x8007f0f4 */ slti	$v0,$v1,47
.L8007f0f8:
/* 0x8007f0f8 */ bne	$v0,$zero,.L8007f0e8
.L8007f0fc:
/* 0x8007f0fc */ addiu	$a1,$a1,28
.L8007f100:
/* 0x8007f100 */ jr	$ra
.L8007f104:
/* 0x8007f104 */ addiu	$v0,$zero,-1
.L8007f108:
/* 0x8007f108 */ jr	$ra
.L8007f10c:
/* 0x8007f10c */ sll	$zero,$zero,0x0
.size FUN_8007f0dc, .-FUN_8007f0dc
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007f110
.globl FUN_8007f110
.type FUN_8007f110, @function
FUN_8007f110:
.L8007f110:
/* 0x8007f110 */ addu	$v1,$zero,$zero
.L8007f114:
/* 0x8007f114 */ lui	$v0,0x800e
.L8007f118:
/* 0x8007f118 */ addiu	$a1,$v0,-3112
.L8007f11c:
/* 0x8007f11c */ lb	$v0,3($a1)
.L8007f120:
/* 0x8007f120 */ sll	$zero,$zero,0x0
.L8007f124:
/* 0x8007f124 */ beq	$v0,$a0,.L8007f144
.L8007f128:
/* 0x8007f128 */ addu	$v0,$v1,$zero
.L8007f12c:
/* 0x8007f12c */ addiu	$v1,$v1,1
.L8007f130:
/* 0x8007f130 */ slti	$v0,$v1,47
.L8007f134:
/* 0x8007f134 */ bne	$v0,$zero,.L8007f11c
.L8007f138:
/* 0x8007f138 */ addiu	$a1,$a1,28
.L8007f13c:
/* 0x8007f13c */ jr	$ra
.L8007f140:
/* 0x8007f140 */ addiu	$v0,$zero,-1
.L8007f144:
/* 0x8007f144 */ jr	$ra
.L8007f148:
/* 0x8007f148 */ sll	$zero,$zero,0x0
.size FUN_8007f110, .-FUN_8007f110
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007f14c
.globl FUN_8007f14c
.type FUN_8007f14c, @function
FUN_8007f14c:
.L8007f14c:
/* 0x8007f14c */ addiu	$sp,$sp,-24
.L8007f150:
/* 0x8007f150 */ addu	$v1,$zero,$zero
.L8007f154:
/* 0x8007f154 */ lui	$v0,0x800e
.L8007f158:
/* 0x8007f158 */ sw	$ra,16($sp)
.L8007f15c:
/* 0x8007f15c */ lhu	$a1,0($a0)
.L8007f160:
/* 0x8007f160 */ addiu	$a0,$v0,-1792
.L8007f164:
/* 0x8007f164 */ lhu	$v0,0($a0)
.L8007f168:
/* 0x8007f168 */ sll	$zero,$zero,0x0
.L8007f16c:
/* 0x8007f16c */ beq	$a1,$v0,.L8007f194
.L8007f170:
/* 0x8007f170 */ addu	$v0,$v1,$zero
.L8007f174:
/* 0x8007f174 */ addiu	$v1,$v1,1
.L8007f178:
/* 0x8007f178 */ sltiu	$v0,$v1,50
.L8007f17c:
/* 0x8007f17c */ bne	$v0,$zero,.L8007f164
.L8007f180:
/* 0x8007f180 */ addiu	$a0,$a0,2
.L8007f184:
/* 0x8007f184 */ lui	$a0,0x8002
.L8007f188:
/* 0x8007f188 */ jal	0x8003bae8
.L8007f18c:
/* 0x8007f18c */ addiu	$a0,$a0,-8624
.L8007f190:
/* 0x8007f190 */ addiu	$v0,$zero,-1
.L8007f194:
/* 0x8007f194 */ lw	$ra,16($sp)
.L8007f198:
/* 0x8007f198 */ sll	$zero,$zero,0x0
.L8007f19c:
/* 0x8007f19c */ jr	$ra
.L8007f1a0:
/* 0x8007f1a0 */ addiu	$sp,$sp,24
.size FUN_8007f14c, .-FUN_8007f14c
