.set noreorder
.set noat
.set nomacro

.section .text.FUN_8008ed28
.globl FUN_8008ed28
.type FUN_8008ed28, @function
FUN_8008ed28:
/* Runtime resource, timing, and state helper. */
.L8008ed28:
/* 0x8008ed28 */ addiu	$sp,$sp,-120
.L8008ed2c:
/* 0x8008ed2c */ sw	$s1,84($sp)
.L8008ed30:
/* 0x8008ed30 */ addu	$s1,$a2,$zero
.L8008ed34:
/* 0x8008ed34 */ sw	$a0,120($sp)
.L8008ed38:
/* 0x8008ed38 */ addiu	$a0,$zero,129
.L8008ed3c:
/* 0x8008ed3c */ sw	$ra,116($sp)
.L8008ed40:
/* 0x8008ed40 */ sw	$s8,112($sp)
.L8008ed44:
/* 0x8008ed44 */ sw	$s7,108($sp)
.L8008ed48:
/* 0x8008ed48 */ sw	$s6,104($sp)
.L8008ed4c:
/* 0x8008ed4c */ sw	$s5,100($sp)
.L8008ed50:
/* 0x8008ed50 */ sw	$s4,96($sp)
.L8008ed54:
/* 0x8008ed54 */ sw	$s3,92($sp)
.L8008ed58:
/* 0x8008ed58 */ sw	$s2,88($sp)
.L8008ed5c:
/* 0x8008ed5c */ sw	$s0,80($sp)
.L8008ed60:
/* 0x8008ed60 */ sw	$a1,124($sp)
.L8008ed64:
/* 0x8008ed64 */ jal	0x80098880
.L8008ed68:
/* 0x8008ed68 */ sw	$a3,132($sp)
.L8008ed6c:
/* 0x8008ed6c */ addu	$s6,$v0,$zero
.L8008ed70:
/* 0x8008ed70 */ lui	$v0,0x800f
.L8008ed74:
/* 0x8008ed74 */ lb	$v1,10528($v0)
.L8008ed78:
/* 0x8008ed78 */ addiu	$v0,$zero,2
.L8008ed7c:
/* 0x8008ed7c */ beq	$v1,$v0,.L8008ed9c
.L8008ed80:
/* 0x8008ed80 */ slti	$v0,$v1,3
.L8008ed84:
/* 0x8008ed84 */ bne	$v0,$zero,.L8008eda8
.L8008ed88:
/* 0x8008ed88 */ addiu	$v0,$zero,5
.L8008ed8c:
/* 0x8008ed8c */ bne	$v1,$v0,.L8008eda8
.L8008ed90:
/* 0x8008ed90 */ addiu	$t0,$zero,1
.L8008ed94:
/* 0x8008ed94 */ j	0x8008edac
.L8008ed98:
/* 0x8008ed98 */ sw	$t0,40($sp)
.L8008ed9c:
/* 0x8008ed9c */ addiu	$t1,$zero,2
.L8008eda0:
/* 0x8008eda0 */ j	0x8008edac
.L8008eda4:
/* 0x8008eda4 */ sw	$t1,40($sp)
.L8008eda8:
/* 0x8008eda8 */ sw	$zero,40($sp)
.L8008edac:
/* 0x8008edac */ addu	$s8,$zero,$zero
.L8008edb0:
/* 0x8008edb0 */ lui	$v0,0x800f
.L8008edb4:
/* 0x8008edb4 */ lw	$t0,40($sp)
.L8008edb8:
/* 0x8008edb8 */ lw	$v1,10488($v0)
.L8008edbc:
/* 0x8008edbc */ lw	$t1,120($sp)
.L8008edc0:
/* 0x8008edc0 */ sll	$t0,$t0,0x1
.L8008edc4:
/* 0x8008edc4 */ sw	$t0,68($sp)
.L8008edc8:
/* 0x8008edc8 */ lw	$v0,96($t1)
.L8008edcc:
/* 0x8008edcc */ addiu	$t0,$zero,136
.L8008edd0:
/* 0x8008edd0 */ sw	$t0,76($sp)
.L8008edd4:
/* 0x8008edd4 */ subu	$s2,$v1,$v0
.L8008edd8:
/* 0x8008edd8 */ addiu	$v0,$s2,-65
.L8008eddc:
/* 0x8008eddc */ sltiu	$v0,$v0,31
.L8008ede0:
/* 0x8008ede0 */ sw	$v0,56($sp)
.L8008ede4:
/* 0x8008ede4 */ addiu	$v0,$s2,-96
.L8008ede8:
/* 0x8008ede8 */ sll	$v0,$v0,0xc
.L8008edec:
/* 0x8008edec */ sra	$t1,$v0,0x1f
.L8008edf0:
/* 0x8008edf0 */ sw	$v0,60($sp)
.L8008edf4:
/* 0x8008edf4 */ sw	$t1,64($sp)
.L8008edf8:
/* 0x8008edf8 */ slti	$v0,$s2,32
.L8008edfc:
/* 0x8008edfc */ bne	$v0,$zero,.L8008ee14
.L8008ee00:
/* 0x8008ee00 */ andi	$v0,$s2,0x1
.L8008ee04:
/* 0x8008ee04 */ lw	$t0,56($sp)
.L8008ee08:
/* 0x8008ee08 */ sll	$zero,$zero,0x0
.L8008ee0c:
/* 0x8008ee0c */ beq	$t0,$zero,.L8008ee24
.L8008ee10:
/* 0x8008ee10 */ sll	$zero,$zero,0x0
.L8008ee14:
/* 0x8008ee14 */ beq	$v0,$zero,.L8008ee24
.L8008ee18:
/* 0x8008ee18 */ sll	$zero,$zero,0x0
.L8008ee1c:
/* 0x8008ee1c */ jal	0x80028358
.L8008ee20:
/* 0x8008ee20 */ addiu	$a0,$zero,798
.L8008ee24:
/* 0x8008ee24 */ bne	$s8,$zero,.L8008ee40
.L8008ee28:
/* 0x8008ee28 */ slti	$v0,$s2,64
.L8008ee2c:
/* 0x8008ee2c */ slti	$v0,$s2,33
.L8008ee30:
/* 0x8008ee30 */ beq	$v0,$zero,.L8008ee54
.L8008ee34:
/* 0x8008ee34 */ addiu	$v1,$zero,32
.L8008ee38:
/* 0x8008ee38 */ j	0x8008ee54
.L8008ee3c:
/* 0x8008ee3c */ addu	$v1,$s2,$zero
.L8008ee40:
/* 0x8008ee40 */ bne	$v0,$zero,.L8008f1a8
.L8008ee44:
/* 0x8008ee44 */ slti	$v0,$s2,97
.L8008ee48:
/* 0x8008ee48 */ beq	$v0,$zero,.L8008ee54
.L8008ee4c:
/* 0x8008ee4c */ addiu	$v1,$zero,32
.L8008ee50:
/* 0x8008ee50 */ addiu	$v1,$s2,-64
.L8008ee54:
/* 0x8008ee54 */ sll	$v0,$v1,0x2
.L8008ee58:
/* 0x8008ee58 */ addu	$v0,$v0,$v1
.L8008ee5c:
/* 0x8008ee5c */ sll	$v0,$v0,0x1
.L8008ee60:
/* 0x8008ee60 */ bgez	$v0,.L8008ee70
.L8008ee64:
/* 0x8008ee64 */ sra	$s3,$v0,0x2
.L8008ee68:
/* 0x8008ee68 */ addiu	$v0,$v0,3
.L8008ee6c:
/* 0x8008ee6c */ sra	$s3,$v0,0x2
.L8008ee70:
/* 0x8008ee70 */ lw	$t1,132($sp)
.L8008ee74:
/* 0x8008ee74 */ lw	$t0,136($sp)
.L8008ee78:
/* 0x8008ee78 */ sll	$v0,$t1,0x1
.L8008ee7c:
/* 0x8008ee7c */ addu	$v0,$v0,$t1
.L8008ee80:
/* 0x8008ee80 */ sll	$v0,$v0,0x3
.L8008ee84:
/* 0x8008ee84 */ div	$zero,$v0,$t0
.L8008ee88:
/* 0x8008ee88 */ mflo	$t0
.L8008ee8c:
/* 0x8008ee8c */ lw	$t1,40($sp)
.L8008ee90:
/* 0x8008ee90 */ addiu	$v0,$zero,3
.L8008ee94:
/* 0x8008ee94 */ bne	$t1,$v0,.L8008eee0
.L8008ee98:
/* 0x8008ee98 */ sw	$t0,48($sp)
.L8008ee9c:
/* 0x8008ee9c */ slti	$v0,$s2,96
.L8008eea0:
/* 0x8008eea0 */ bne	$v0,$zero,.L8008eee4
.L8008eea4:
/* 0x8008eea4 */ addiu	$s0,$zero,128
.L8008eea8:
/* 0x8008eea8 */ lui	$v0,0x8888
.L8008eeac:
/* 0x8008eeac */ lw	$t0,60($sp)
.L8008eeb0:
/* 0x8008eeb0 */ ori	$v0,$v0,0x8889
.L8008eeb4:
/* 0x8008eeb4 */ mult	$t0,$v0
.L8008eeb8:
/* 0x8008eeb8 */ mfhi	$t1
.L8008eebc:
/* 0x8008eebc */ addu	$a0,$t1,$t0
.L8008eec0:
/* 0x8008eec0 */ lw	$t0,64($sp)
.L8008eec4:
/* 0x8008eec4 */ sra	$a0,$a0,0x4
.L8008eec8:
/* 0x8008eec8 */ jal	0x8004971c
.L8008eecc:
/* 0x8008eecc */ subu	$a0,$a0,$t0
.L8008eed0:
/* 0x8008eed0 */ sll	$v0,$v0,0x5
.L8008eed4:
/* 0x8008eed4 */ sra	$v0,$v0,0xc
.L8008eed8:
/* 0x8008eed8 */ j	0x8008eee4
.L8008eedc:
/* 0x8008eedc */ addiu	$s0,$v0,96
.L8008eee0:
/* 0x8008eee0 */ addiu	$s0,$zero,128
.L8008eee4:
/* 0x8008eee4 */ addu	$s7,$zero,$zero
.L8008eee8:
/* 0x8008eee8 */ addiu	$s5,$zero,-74
.L8008eeec:
/* 0x8008eeec */ lw	$t1,68($sp)
.L8008eef0:
/* 0x8008eef0 */ addu	$s4,$s7,$zero
.L8008eef4:
/* 0x8008eef4 */ sw	$s3,52($sp)
.L8008eef8:
/* 0x8008eef8 */ addu	$t1,$t1,$s8
.L8008eefc:
/* 0x8008eefc */ sw	$t1,72($sp)
.L8008ef00:
/* 0x8008ef00 */ lw	$t1,72($sp)
.L8008ef04:
/* 0x8008ef04 */ lw	$t0,76($sp)
.L8008ef08:
/* 0x8008ef08 */ sll	$v0,$t1,0x1
.L8008ef0c:
/* 0x8008ef0c */ addu	$v0,$v0,$t1
.L8008ef10:
/* 0x8008ef10 */ sll	$v0,$v0,0x3
.L8008ef14:
/* 0x8008ef14 */ sw	$t0,44($sp)
.L8008ef18:
/* 0x8008ef18 */ lh	$v1,4($s6)
.L8008ef1c:
/* 0x8008ef1c */ lh	$a0,2($s6)
.L8008ef20:
/* 0x8008ef20 */ lw	$t0,40($sp)
.L8008ef24:
/* 0x8008ef24 */ addu	$a3,$v1,$v0
.L8008ef28:
/* 0x8008ef28 */ addiu	$v0,$zero,3
.L8008ef2c:
/* 0x8008ef2c */ bne	$t0,$v0,.L8008f02c
.L8008ef30:
/* 0x8008ef30 */ addu	$a2,$a0,$s4
.L8008ef34:
/* 0x8008ef34 */ lui	$t1,0x800f
.L8008ef38:
/* 0x8008ef38 */ addiu	$t1,$t1,10504
.L8008ef3c:
/* 0x8008ef3c */ lb	$v0,36($t1)
.L8008ef40:
/* 0x8008ef40 */ addiu	$t0,$zero,2
.L8008ef44:
/* 0x8008ef44 */ beq	$v0,$t0,.L8008efbc
.L8008ef48:
/* 0x8008ef48 */ addiu	$a0,$zero,4
.L8008ef4c:
/* 0x8008ef4c */ beq	$v0,$a0,.L8008efbc
.L8008ef50:
/* 0x8008ef50 */ lui	$t1,0x8010
.L8008ef54:
/* 0x8008ef54 */ addiu	$t1,$t1,-22264
.L8008ef58:
/* 0x8008ef58 */ lb	$v0,4776($t1)
.L8008ef5c:
/* 0x8008ef5c */ sll	$zero,$zero,0x0
.L8008ef60:
/* 0x8008ef60 */ beq	$v0,$t0,.L8008efb4
.L8008ef64:
/* 0x8008ef64 */ sll	$zero,$zero,0x0
.L8008ef68:
/* 0x8008ef68 */ beq	$v0,$a0,.L8008efb4
.L8008ef6c:
/* 0x8008ef6c */ lui	$t0,0x800f
.L8008ef70:
/* 0x8008ef70 */ addiu	$t0,$t0,10504
.L8008ef74:
/* 0x8008ef74 */ lbu	$v0,146($t0)
.L8008ef78:
/* 0x8008ef78 */ addiu	$a0,$zero,7
.L8008ef7c:
/* 0x8008ef7c */ beq	$v0,$a0,.L8008ef90
.L8008ef80:
/* 0x8008ef80 */ lui	$t1,0x8010
.L8008ef84:
/* 0x8008ef84 */ bne	$v0,$zero,.L8008efc0
.L8008ef88:
/* 0x8008ef88 */ addiu	$v1,$zero,1
.L8008ef8c:
/* 0x8008ef8c */ lui	$t1,0x8010
.L8008ef90:
/* 0x8008ef90 */ addiu	$t1,$t1,-22264
.L8008ef94:
/* 0x8008ef94 */ lbu	$v0,4886($t1)
.L8008ef98:
/* 0x8008ef98 */ sll	$zero,$zero,0x0
.L8008ef9c:
/* 0x8008ef9c */ beq	$v0,$a0,.L8008efc0
.L8008efa0:
/* 0x8008efa0 */ addiu	$v1,$zero,2
.L8008efa4:
/* 0x8008efa4 */ bne	$v0,$zero,.L8008efc0
.L8008efa8:
/* 0x8008efa8 */ addiu	$v1,$zero,1
.L8008efac:
/* 0x8008efac */ j	0x8008efc0
.L8008efb0:
/* 0x8008efb0 */ addiu	$v1,$zero,2
.L8008efb4:
/* 0x8008efb4 */ j	0x8008efc0
.L8008efb8:
/* 0x8008efb8 */ addu	$v1,$zero,$zero
.L8008efbc:
/* 0x8008efbc */ addiu	$v1,$zero,1
.L8008efc0:
/* 0x8008efc0 */ addiu	$v0,$zero,1
.L8008efc4:
/* 0x8008efc4 */ bne	$s8,$v0,.L8008f030
.L8008efc8:
/* 0x8008efc8 */ addu	$a1,$s1,$zero
.L8008efcc:
/* 0x8008efcc */ sll	$v0,$v1,0x3
.L8008efd0:
/* 0x8008efd0 */ addu	$v0,$v0,$v1
.L8008efd4:
/* 0x8008efd4 */ sll	$v0,$v0,0x3
.L8008efd8:
/* 0x8008efd8 */ addu	$v0,$v0,$v1
.L8008efdc:
/* 0x8008efdc */ sll	$v0,$v0,0x2
.L8008efe0:
/* 0x8008efe0 */ addu	$v0,$v0,$v1
.L8008efe4:
/* 0x8008efe4 */ sll	$v0,$v0,0x5
.L8008efe8:
/* 0x8008efe8 */ addu	$v0,$v0,$v1
.L8008efec:
/* 0x8008efec */ sll	$v0,$v0,0x2
.L8008eff0:
/* 0x8008eff0 */ lui	$t0,0x800f
.L8008eff4:
/* 0x8008eff4 */ addiu	$t0,$t0,10504
.L8008eff8:
/* 0x8008eff8 */ addu	$v0,$v0,$t0
.L8008effc:
/* 0x8008effc */ lbu	$a0,146($v0)
.L8008f000:
/* 0x8008f000 */ addiu	$v0,$zero,7
.L8008f004:
/* 0x8008f004 */ beq	$a0,$v0,.L8008f014
.L8008f008:
/* 0x8008f008 */ sll	$zero,$zero,0x0
.L8008f00c:
/* 0x8008f00c */ bne	$a0,$zero,.L8008f030
.L8008f010:
/* 0x8008f010 */ sll	$zero,$zero,0x0
.L8008f014:
/* 0x8008f014 */ lh	$a0,4($s6)
.L8008f018:
/* 0x8008f018 */ addiu	$v1,$v1,8
.L8008f01c:
/* 0x8008f01c */ sll	$v0,$v1,0x1
.L8008f020:
/* 0x8008f020 */ addu	$v0,$v0,$v1
.L8008f024:
/* 0x8008f024 */ sll	$v0,$v0,0x3
.L8008f028:
/* 0x8008f028 */ addu	$a3,$a0,$v0
.L8008f02c:
/* 0x8008f02c */ addu	$a1,$s1,$zero
.L8008f030:
/* 0x8008f030 */ addu	$s4,$s4,$s3
.L8008f034:
/* 0x8008f034 */ lw	$a0,124($sp)
.L8008f038:
/* 0x8008f038 */ lw	$t1,52($sp)
.L8008f03c:
/* 0x8008f03c */ lw	$t0,48($sp)
.L8008f040:
/* 0x8008f040 */ addiu	$s7,$s7,1
.L8008f044:
/* 0x8008f044 */ sw	$t1,16($sp)
.L8008f048:
/* 0x8008f048 */ sw	$t0,20($sp)
.L8008f04c:
/* 0x8008f04c */ lh	$v0,10($s6)
.L8008f050:
/* 0x8008f050 */ addiu	$v1,$zero,-1
.L8008f054:
/* 0x8008f054 */ sw	$v1,28($sp)
.L8008f058:
/* 0x8008f058 */ jal	0x80048144
.L8008f05c:
/* 0x8008f05c */ sw	$v0,24($sp)
.L8008f060:
/* 0x8008f060 */ lw	$a0,124($sp)
.L8008f064:
/* 0x8008f064 */ lh	$a2,14($s6)
.L8008f068:
/* 0x8008f068 */ lh	$a3,16($s6)
.L8008f06c:
/* 0x8008f06c */ jal	0x80049208
.L8008f070:
/* 0x8008f070 */ addu	$a1,$s1,$zero
.L8008f074:
/* 0x8008f074 */ addu	$a1,$s1,$zero
.L8008f078:
/* 0x8008f078 */ lw	$a0,124($sp)
.L8008f07c:
/* 0x8008f07c */ lw	$a3,44($sp)
.L8008f080:
/* 0x8008f080 */ lw	$t1,52($sp)
.L8008f084:
/* 0x8008f084 */ lw	$t0,48($sp)
.L8008f088:
/* 0x8008f088 */ addu	$a2,$s5,$zero
.L8008f08c:
/* 0x8008f08c */ sw	$t1,16($sp)
.L8008f090:
/* 0x8008f090 */ jal	0x80049364
.L8008f094:
/* 0x8008f094 */ sw	$t0,20($sp)
.L8008f098:
/* 0x8008f098 */ addu	$a1,$s1,$zero
.L8008f09c:
/* 0x8008f09c */ addu	$a2,$s0,$zero
.L8008f0a0:
/* 0x8008f0a0 */ lw	$a0,124($sp)
.L8008f0a4:
/* 0x8008f0a4 */ addu	$a3,$s0,$zero
.L8008f0a8:
/* 0x8008f0a8 */ jal	0x800490f8
.L8008f0ac:
/* 0x8008f0ac */ sw	$s0,16($sp)
.L8008f0b0:
/* 0x8008f0b0 */ addiu	$s1,$s1,1
.L8008f0b4:
/* 0x8008f0b4 */ slti	$v0,$s7,4
.L8008f0b8:
/* 0x8008f0b8 */ bne	$v0,$zero,.L8008ef00
.L8008f0bc:
/* 0x8008f0bc */ addu	$s5,$s5,$s3
.L8008f0c0:
/* 0x8008f0c0 */ addiu	$v0,$zero,3
.L8008f0c4:
/* 0x8008f0c4 */ mult	$s3,$v0
.L8008f0c8:
/* 0x8008f0c8 */ mflo	$t0
.L8008f0cc:
/* 0x8008f0cc */ bne	$s8,$zero,.L8008f0e0
.L8008f0d0:
/* 0x8008f0d0 */ addiu	$s4,$t0,-74
.L8008f0d4:
/* 0x8008f0d4 */ slti	$v0,$s2,64
.L8008f0d8:
/* 0x8008f0d8 */ beq	$v0,$zero,.L8008f1a8
.L8008f0dc:
/* 0x8008f0dc */ sll	$zero,$zero,0x0
.L8008f0e0:
/* 0x8008f0e0 */ slti	$v0,$s2,32
.L8008f0e4:
/* 0x8008f0e4 */ bne	$v0,$zero,.L8008f11c
.L8008f0e8:
/* 0x8008f0e8 */ addiu	$v0,$zero,1
.L8008f0ec:
/* 0x8008f0ec */ lw	$t1,56($sp)
.L8008f0f0:
/* 0x8008f0f0 */ sll	$zero,$zero,0x0
.L8008f0f4:
/* 0x8008f0f4 */ bne	$t1,$zero,.L8008f11c
.L8008f0f8:
/* 0x8008f0f8 */ sll	$zero,$zero,0x0
.L8008f0fc:
/* 0x8008f0fc */ addu	$v0,$s2,$zero
.L8008f100:
/* 0x8008f100 */ bgez	$v0,.L8008f10c
.L8008f104:
/* 0x8008f104 */ sll	$zero,$zero,0x0
.L8008f108:
/* 0x8008f108 */ addiu	$v0,$v0,15
.L8008f10c:
/* 0x8008f10c */ sra	$v0,$v0,0x4
.L8008f110:
/* 0x8008f110 */ andi	$v0,$v0,0x1
.L8008f114:
/* 0x8008f114 */ beq	$v0,$zero,.L8008f1a8
.L8008f118:
/* 0x8008f118 */ addiu	$v0,$zero,1
.L8008f11c:
/* 0x8008f11c */ lui	$s0,0x8011
.L8008f120:
/* 0x8008f120 */ lw	$a0,124($sp)
.L8008f124:
/* 0x8008f124 */ addiu	$s0,$s0,27696
.L8008f128:
/* 0x8008f128 */ sw	$v0,16($sp)
.L8008f12c:
/* 0x8008f12c */ sw	$v0,20($sp)
.L8008f130:
/* 0x8008f130 */ lh	$a2,2($s0)
.L8008f134:
/* 0x8008f134 */ addiu	$v0,$zero,-1
.L8008f138:
/* 0x8008f138 */ sw	$v0,28($sp)
.L8008f13c:
/* 0x8008f13c */ lh	$a3,4($s0)
.L8008f140:
/* 0x8008f140 */ lh	$v0,10($s0)
.L8008f144:
/* 0x8008f144 */ addu	$a1,$s1,$zero
.L8008f148:
/* 0x8008f148 */ jal	0x80048144
.L8008f14c:
/* 0x8008f14c */ sw	$v0,24($sp)
.L8008f150:
/* 0x8008f150 */ lw	$a0,124($sp)
.L8008f154:
/* 0x8008f154 */ lh	$a2,14($s0)
.L8008f158:
/* 0x8008f158 */ lh	$a3,16($s0)
.L8008f15c:
/* 0x8008f15c */ jal	0x80049208
.L8008f160:
/* 0x8008f160 */ addu	$a1,$s1,$zero
.L8008f164:
/* 0x8008f164 */ addu	$a1,$s1,$zero
.L8008f168:
/* 0x8008f168 */ addu	$a2,$s4,$s3
.L8008f16c:
/* 0x8008f16c */ lw	$a0,124($sp)
.L8008f170:
/* 0x8008f170 */ lw	$a3,44($sp)
.L8008f174:
/* 0x8008f174 */ lw	$t0,48($sp)
.L8008f178:
/* 0x8008f178 */ addiu	$v0,$zero,16
.L8008f17c:
/* 0x8008f17c */ sw	$v0,16($sp)
.L8008f180:
/* 0x8008f180 */ jal	0x80049364
.L8008f184:
/* 0x8008f184 */ sw	$t0,20($sp)
.L8008f188:
/* 0x8008f188 */ addu	$a1,$s1,$zero
.L8008f18c:
/* 0x8008f18c */ addiu	$a2,$zero,2
.L8008f190:
/* 0x8008f190 */ addiu	$a3,$zero,79
.L8008f194:
/* 0x8008f194 */ lw	$a0,124($sp)
.L8008f198:
/* 0x8008f198 */ addiu	$v0,$zero,110
.L8008f19c:
/* 0x8008f19c */ jal	0x800490f8
.L8008f1a0:
/* 0x8008f1a0 */ sw	$v0,16($sp)
.L8008f1a4:
/* 0x8008f1a4 */ addiu	$s1,$s1,1
.L8008f1a8:
/* 0x8008f1a8 */ addiu	$s8,$s8,1
.L8008f1ac:
/* 0x8008f1ac */ lw	$t1,76($sp)
.L8008f1b0:
/* 0x8008f1b0 */ slti	$v0,$s8,2
.L8008f1b4:
/* 0x8008f1b4 */ addiu	$t1,$t1,24
.L8008f1b8:
/* 0x8008f1b8 */ bne	$v0,$zero,.L8008edf8
.L8008f1bc:
/* 0x8008f1bc */ sw	$t1,76($sp)
.L8008f1c0:
/* 0x8008f1c0 */ jal	0x80098880
.L8008f1c4:
/* 0x8008f1c4 */ addiu	$a0,$zero,100
.L8008f1c8:
/* 0x8008f1c8 */ addiu	$t0,$zero,136
.L8008f1cc:
/* 0x8008f1cc */ addiu	$s3,$zero,336
.L8008f1d0:
/* 0x8008f1d0 */ addiu	$t1,$zero,48
.L8008f1d4:
/* 0x8008f1d4 */ addiu	$a1,$zero,255
.L8008f1d8:
/* 0x8008f1d8 */ sw	$t0,44($sp)
.L8008f1dc:
/* 0x8008f1dc */ sw	$t0,16($sp)
.L8008f1e0:
/* 0x8008f1e0 */ lw	$t0,120($sp)
.L8008f1e4:
/* 0x8008f1e4 */ addiu	$a2,$zero,128
.L8008f1e8:
/* 0x8008f1e8 */ sw	$v0,20($sp)
.L8008f1ec:
/* 0x8008f1ec */ addiu	$v0,$zero,246
.L8008f1f0:
/* 0x8008f1f0 */ sw	$v0,24($sp)
.L8008f1f4:
/* 0x8008f1f4 */ addiu	$v0,$zero,376
.L8008f1f8:
/* 0x8008f1f8 */ sw	$t1,48($sp)
.L8008f1fc:
/* 0x8008f1fc */ sw	$v0,28($sp)
.L8008f200:
/* 0x8008f200 */ sw	$s3,32($sp)
.L8008f204:
/* 0x8008f204 */ sw	$t1,36($sp)
.L8008f208:
/* 0x8008f208 */ lw	$a0,84($t0)
.L8008f20c:
/* 0x8008f20c */ jal	0x8004dab8
.L8008f210:
/* 0x8008f210 */ addiu	$a3,$zero,-74
.L8008f214:
/* 0x8008f214 */ lw	$t1,120($sp)
.L8008f218:
/* 0x8008f218 */ sll	$zero,$zero,0x0
.L8008f21c:
/* 0x8008f21c */ sw	$v0,84($t1)
.L8008f220:
/* 0x8008f220 */ addu	$v0,$s1,$zero
.L8008f224:
/* 0x8008f224 */ lw	$ra,116($sp)
.L8008f228:
/* 0x8008f228 */ lw	$s8,112($sp)
.L8008f22c:
/* 0x8008f22c */ lw	$s7,108($sp)
.L8008f230:
/* 0x8008f230 */ lw	$s6,104($sp)
.L8008f234:
/* 0x8008f234 */ lw	$s5,100($sp)
.L8008f238:
/* 0x8008f238 */ lw	$s4,96($sp)
.L8008f23c:
/* 0x8008f23c */ lw	$s3,92($sp)
.L8008f240:
/* 0x8008f240 */ lw	$s2,88($sp)
.L8008f244:
/* 0x8008f244 */ lw	$s1,84($sp)
.L8008f248:
/* 0x8008f248 */ lw	$s0,80($sp)
.L8008f24c:
/* 0x8008f24c */ jr	$ra
.L8008f250:
/* 0x8008f250 */ addiu	$sp,$sp,120
.size FUN_8008ed28, .-FUN_8008ed28
