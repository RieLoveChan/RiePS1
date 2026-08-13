.set noreorder
.set noat
.set nomacro

.section .text.FUN_8008ae04
.globl FUN_8008ae04
.type FUN_8008ae04, @function
FUN_8008ae04:
/* Runtime resource, timing, and state helper. */
.L8008ae04:
/* 0x8008ae04 */ addiu	$sp,$sp,-136
.L8008ae08:
/* 0x8008ae08 */ sw	$s2,104($sp)
.L8008ae0c:
/* 0x8008ae0c */ addu	$s2,$a0,$zero
.L8008ae10:
/* 0x8008ae10 */ sw	$s8,128($sp)
.L8008ae14:
/* 0x8008ae14 */ addu	$s8,$a1,$zero
.L8008ae18:
/* 0x8008ae18 */ sw	$s1,100($sp)
.L8008ae1c:
/* 0x8008ae1c */ addu	$s1,$a2,$zero
.L8008ae20:
/* 0x8008ae20 */ sw	$s6,120($sp)
.L8008ae24:
/* 0x8008ae24 */ addu	$s6,$a3,$zero
.L8008ae28:
/* 0x8008ae28 */ sw	$ra,132($sp)
.L8008ae2c:
/* 0x8008ae2c */ sw	$s7,124($sp)
.L8008ae30:
/* 0x8008ae30 */ sw	$s5,116($sp)
.L8008ae34:
/* 0x8008ae34 */ sw	$s4,112($sp)
.L8008ae38:
/* 0x8008ae38 */ sw	$s3,108($sp)
.L8008ae3c:
/* 0x8008ae3c */ bgez	$s6,.L8008ae48
.L8008ae40:
/* 0x8008ae40 */ sw	$s0,96($sp)
.L8008ae44:
/* 0x8008ae44 */ addu	$s6,$zero,$zero
.L8008ae48:
/* 0x8008ae48 */ lw	$t0,152($sp)
.L8008ae4c:
/* 0x8008ae4c */ sll	$zero,$zero,0x0
.L8008ae50:
/* 0x8008ae50 */ slt	$v0,$t0,$s6
.L8008ae54:
/* 0x8008ae54 */ beq	$v0,$zero,.L8008ae60
.L8008ae58:
/* 0x8008ae58 */ addiu	$v0,$zero,1
.L8008ae5c:
/* 0x8008ae5c */ addu	$s6,$t0,$zero
.L8008ae60:
/* 0x8008ae60 */ sw	$v0,16($sp)
.L8008ae64:
/* 0x8008ae64 */ sll	$v0,$s6,0x2
.L8008ae68:
/* 0x8008ae68 */ addu	$v0,$v0,$s6
.L8008ae6c:
/* 0x8008ae6c */ sll	$v0,$v0,0x3
.L8008ae70:
/* 0x8008ae70 */ lw	$t0,152($sp)
.L8008ae74:
/* 0x8008ae74 */ subu	$v0,$v0,$s6
.L8008ae78:
/* 0x8008ae78 */ div	$zero,$v0,$t0
.L8008ae7c:
/* 0x8008ae7c */ mflo	$t0
.L8008ae80:
/* 0x8008ae80 */ addiu	$s7,$zero,128
.L8008ae84:
/* 0x8008ae84 */ addu	$a0,$s2,$zero
.L8008ae88:
/* 0x8008ae88 */ addiu	$a1,$zero,5
.L8008ae8c:
/* 0x8008ae8c */ addiu	$a2,$sp,40
.L8008ae90:
/* 0x8008ae90 */ addiu	$a3,$sp,64
.L8008ae94:
/* 0x8008ae94 */ jal	0x8008ac3c
.L8008ae98:
/* 0x8008ae98 */ sw	$t0,88($sp)
.L8008ae9c:
/* 0x8008ae9c */ addiu	$s5,$zero,1
.L8008aea0:
/* 0x8008aea0 */ addu	$s4,$zero,$zero
.L8008aea4:
/* 0x8008aea4 */ sll	$v0,$s4,0x2
.L8008aea8:
/* 0x8008aea8 */ addu	$v1,$sp,$v0
.L8008aeac:
/* 0x8008aeac */ addu	$a0,$v1,$zero
.L8008aeb0:
/* 0x8008aeb0 */ lw	$s3,64($v1)
.L8008aeb4:
/* 0x8008aeb4 */ lbu	$v0,1968($s2)
.L8008aeb8:
/* 0x8008aeb8 */ lw	$a2,40($a0)
.L8008aebc:
/* 0x8008aebc */ beq	$v0,$zero,.L8008aed4
.L8008aec0:
/* 0x8008aec0 */ sll	$zero,$zero,0x0
.L8008aec4:
/* 0x8008aec4 */ bgtz	$s4,.L8008b0dc
.L8008aec8:
/* 0x8008aec8 */ addu	$s0,$s7,$zero
.L8008aecc:
/* 0x8008aecc */ j	0x8008b004
.L8008aed0:
/* 0x8008aed0 */ addiu	$s5,$zero,-1
.L8008aed4:
/* 0x8008aed4 */ lw	$v0,1868($s2)
.L8008aed8:
/* 0x8008aed8 */ sll	$zero,$zero,0x0
.L8008aedc:
/* 0x8008aedc */ andi	$a1,$v0,0xfff
.L8008aee0:
/* 0x8008aee0 */ subu	$v1,$v0,$a1
.L8008aee4:
/* 0x8008aee4 */ bgez	$v1,.L8008af20
.L8008aee8:
/* 0x8008aee8 */ subu	$v0,$a1,$v0
.L8008aeec:
/* 0x8008aeec */ lw	$a0,4($s2)
.L8008aef0:
/* 0x8008aef0 */ sll	$zero,$zero,0x0
.L8008aef4:
/* 0x8008aef4 */ sll	$a0,$a0,0xc
.L8008aef8:
/* 0x8008aef8 */ div	$zero,$v0,$a0
.L8008aefc:
/* 0x8008aefc */ mfhi	$v1
.L8008af00:
/* 0x8008af00 */ sll	$zero,$zero,0x0
.L8008af04:
/* 0x8008af04 */ subu	$v1,$a0,$v1
.L8008af08:
/* 0x8008af08 */ div	$zero,$v1,$a0
.L8008af0c:
/* 0x8008af0c */ mfhi	$v0
.L8008af10:
/* 0x8008af10 */ sll	$zero,$zero,0x0
.L8008af14:
/* 0x8008af14 */ sra	$v0,$v0,0xc
.L8008af18:
/* 0x8008af18 */ j	0x8008af40
.L8008af1c:
/* 0x8008af1c */ sll	$v0,$v0,0x1
.L8008af20:
/* 0x8008af20 */ lw	$v0,4($s2)
.L8008af24:
/* 0x8008af24 */ sll	$zero,$zero,0x0
.L8008af28:
/* 0x8008af28 */ sll	$v0,$v0,0xc
.L8008af2c:
/* 0x8008af2c */ div	$zero,$v1,$v0
.L8008af30:
/* 0x8008af30 */ mfhi	$v1
.L8008af34:
/* 0x8008af34 */ sll	$zero,$zero,0x0
.L8008af38:
/* 0x8008af38 */ sra	$v1,$v1,0xc
.L8008af3c:
/* 0x8008af3c */ sll	$v0,$v1,0x1
.L8008af40:
/* 0x8008af40 */ addu	$v0,$s2,$v0
.L8008af44:
/* 0x8008af44 */ lh	$v0,22($v0)
.L8008af48:
/* 0x8008af48 */ sll	$zero,$zero,0x0
.L8008af4c:
/* 0x8008af4c */ bne	$a2,$v0,.L8008af70
.L8008af50:
/* 0x8008af50 */ mult	$s7,$a1
.L8008af54:
/* 0x8008af54 */ mflo	$v0
.L8008af58:
/* 0x8008af58 */ bgez	$v0,.L8008af64
.L8008af5c:
/* 0x8008af5c */ sll	$zero,$zero,0x0
.L8008af60:
/* 0x8008af60 */ addiu	$v0,$v0,4095
.L8008af64:
/* 0x8008af64 */ sra	$v0,$v0,0xc
.L8008af68:
/* 0x8008af68 */ j	0x8008b004
.L8008af6c:
/* 0x8008af6c */ subu	$s0,$s7,$v0
.L8008af70:
/* 0x8008af70 */ lw	$v0,1868($s2)
.L8008af74:
/* 0x8008af74 */ sll	$zero,$zero,0x0
.L8008af78:
/* 0x8008af78 */ subu	$v0,$v0,$a1
.L8008af7c:
/* 0x8008af7c */ addiu	$v1,$v0,4096
.L8008af80:
/* 0x8008af80 */ bgez	$v1,.L8008afbc
.L8008af84:
/* 0x8008af84 */ negu	$v0,$v1
.L8008af88:
/* 0x8008af88 */ lw	$a0,4($s2)
.L8008af8c:
/* 0x8008af8c */ sll	$zero,$zero,0x0
.L8008af90:
/* 0x8008af90 */ sll	$a0,$a0,0xc
.L8008af94:
/* 0x8008af94 */ div	$zero,$v0,$a0
.L8008af98:
/* 0x8008af98 */ mfhi	$v1
.L8008af9c:
/* 0x8008af9c */ sll	$zero,$zero,0x0
.L8008afa0:
/* 0x8008afa0 */ subu	$v1,$a0,$v1
.L8008afa4:
/* 0x8008afa4 */ div	$zero,$v1,$a0
.L8008afa8:
/* 0x8008afa8 */ mfhi	$v0
.L8008afac:
/* 0x8008afac */ sll	$zero,$zero,0x0
.L8008afb0:
/* 0x8008afb0 */ sra	$v0,$v0,0xc
.L8008afb4:
/* 0x8008afb4 */ j	0x8008afdc
.L8008afb8:
/* 0x8008afb8 */ sll	$v0,$v0,0x1
.L8008afbc:
/* 0x8008afbc */ lw	$v0,4($s2)
.L8008afc0:
/* 0x8008afc0 */ sll	$zero,$zero,0x0
.L8008afc4:
/* 0x8008afc4 */ sll	$v0,$v0,0xc
.L8008afc8:
/* 0x8008afc8 */ div	$zero,$v1,$v0
.L8008afcc:
/* 0x8008afcc */ mfhi	$v1
.L8008afd0:
/* 0x8008afd0 */ sll	$zero,$zero,0x0
.L8008afd4:
/* 0x8008afd4 */ sra	$v1,$v1,0xc
.L8008afd8:
/* 0x8008afd8 */ sll	$v0,$v1,0x1
.L8008afdc:
/* 0x8008afdc */ addu	$v0,$s2,$v0
.L8008afe0:
/* 0x8008afe0 */ lh	$v0,22($v0)
.L8008afe4:
/* 0x8008afe4 */ sll	$zero,$zero,0x0
.L8008afe8:
/* 0x8008afe8 */ bne	$a2,$v0,.L8008b0cc
.L8008afec:
/* 0x8008afec */ mult	$s7,$a1
.L8008aff0:
/* 0x8008aff0 */ mflo	$v0
.L8008aff4:
/* 0x8008aff4 */ bgez	$v0,.L8008b004
.L8008aff8:
/* 0x8008aff8 */ sra	$s0,$v0,0xc
.L8008affc:
/* 0x8008affc */ addiu	$v0,$v0,4095
.L8008b000:
/* 0x8008b000 */ sra	$s0,$v0,0xc
.L8008b004:
/* 0x8008b004 */ slti	$v0,$a2,200
.L8008b008:
/* 0x8008b008 */ bne	$v0,$zero,.L8008b030
.L8008b00c:
/* 0x8008b00c */ addu	$a0,$s8,$zero
.L8008b010:
/* 0x8008b010 */ sw	$s5,16($sp)
.L8008b014:
/* 0x8008b014 */ addu	$a0,$s2,$zero
.L8008b018:
/* 0x8008b018 */ addu	$a1,$s8,$zero
.L8008b01c:
/* 0x8008b01c */ addu	$a2,$s1,$zero
.L8008b020:
/* 0x8008b020 */ jal	0x80087490
.L8008b024:
/* 0x8008b024 */ addu	$a3,$s0,$zero
.L8008b028:
/* 0x8008b028 */ j	0x8008b0c0
.L8008b02c:
/* 0x8008b02c */ addu	$s1,$v0,$zero
.L8008b030:
/* 0x8008b030 */ addu	$a1,$s1,$zero
.L8008b034:
/* 0x8008b034 */ addiu	$a2,$zero,3200
.L8008b038:
/* 0x8008b038 */ sll	$a3,$s3,0x2
.L8008b03c:
/* 0x8008b03c */ addu	$a3,$a3,$s3
.L8008b040:
/* 0x8008b040 */ sll	$a3,$a3,0x3
.L8008b044:
/* 0x8008b044 */ addiu	$a3,$a3,256
.L8008b048:
/* 0x8008b048 */ lw	$t0,88($sp)
.L8008b04c:
/* 0x8008b04c */ addiu	$v0,$zero,127
.L8008b050:
/* 0x8008b050 */ sw	$v0,16($sp)
.L8008b054:
/* 0x8008b054 */ sw	$zero,24($sp)
.L8008b058:
/* 0x8008b058 */ sw	$s5,28($sp)
.L8008b05c:
/* 0x8008b05c */ jal	0x80048144
.L8008b060:
/* 0x8008b060 */ sw	$t0,20($sp)
.L8008b064:
/* 0x8008b064 */ addu	$a0,$s8,$zero
.L8008b068:
/* 0x8008b068 */ addu	$a1,$s1,$zero
.L8008b06c:
/* 0x8008b06c */ addiu	$a2,$zero,912
.L8008b070:
/* 0x8008b070 */ andi	$a3,$s3,0xf
.L8008b074:
/* 0x8008b074 */ jal	0x80049208
.L8008b078:
/* 0x8008b078 */ ori	$a3,$a3,0x1f0
.L8008b07c:
/* 0x8008b07c */ addu	$a0,$s8,$zero
.L8008b080:
/* 0x8008b080 */ addu	$a1,$s1,$zero
.L8008b084:
/* 0x8008b084 */ addiu	$a2,$zero,-287
.L8008b088:
/* 0x8008b088 */ addiu	$a3,$zero,-132
.L8008b08c:
/* 0x8008b08c */ lw	$t0,88($sp)
.L8008b090:
/* 0x8008b090 */ addiu	$v0,$zero,254
.L8008b094:
/* 0x8008b094 */ sw	$v0,16($sp)
.L8008b098:
/* 0x8008b098 */ sll	$v0,$t0,0x1
.L8008b09c:
/* 0x8008b09c */ jal	0x80049364
.L8008b0a0:
/* 0x8008b0a0 */ sw	$v0,20($sp)
.L8008b0a4:
/* 0x8008b0a4 */ addu	$a0,$s8,$zero
.L8008b0a8:
/* 0x8008b0a8 */ addu	$a1,$s1,$zero
.L8008b0ac:
/* 0x8008b0ac */ addu	$a2,$s0,$zero
.L8008b0b0:
/* 0x8008b0b0 */ addu	$a3,$a2,$zero
.L8008b0b4:
/* 0x8008b0b4 */ jal	0x800490f8
.L8008b0b8:
/* 0x8008b0b8 */ sw	$a2,16($sp)
.L8008b0bc:
/* 0x8008b0bc */ addiu	$s1,$s1,1
.L8008b0c0:
/* 0x8008b0c0 */ beq	$s7,$zero,.L8008b0cc
.L8008b0c4:
/* 0x8008b0c4 */ sll	$zero,$zero,0x0
.L8008b0c8:
/* 0x8008b0c8 */ addiu	$s5,$zero,-1
.L8008b0cc:
/* 0x8008b0cc */ addiu	$s4,$s4,1
.L8008b0d0:
/* 0x8008b0d0 */ slti	$v0,$s4,5
.L8008b0d4:
/* 0x8008b0d4 */ bne	$v0,$zero,.L8008aea8
.L8008b0d8:
/* 0x8008b0d8 */ sll	$v0,$s4,0x2
.L8008b0dc:
/* 0x8008b0dc */ lw	$t0,152($sp)
.L8008b0e0:
/* 0x8008b0e0 */ sll	$zero,$zero,0x0
.L8008b0e4:
/* 0x8008b0e4 */ slt	$v0,$s6,$t0
.L8008b0e8:
/* 0x8008b0e8 */ beq	$v0,$zero,.L8008b140
.L8008b0ec:
/* 0x8008b0ec */ addu	$v0,$s1,$zero
.L8008b0f0:
/* 0x8008b0f0 */ jal	0x80098880
.L8008b0f4:
/* 0x8008b0f4 */ addiu	$a0,$zero,91
.L8008b0f8:
/* 0x8008b0f8 */ addiu	$a1,$zero,255
.L8008b0fc:
/* 0x8008b0fc */ addiu	$a2,$zero,128
.L8008b100:
/* 0x8008b100 */ addiu	$v1,$zero,-132
.L8008b104:
/* 0x8008b104 */ sw	$v0,20($sp)
.L8008b108:
/* 0x8008b108 */ addiu	$v0,$zero,33
.L8008b10c:
/* 0x8008b10c */ sw	$v0,24($sp)
.L8008b110:
/* 0x8008b110 */ addiu	$v0,$zero,108
.L8008b114:
/* 0x8008b114 */ sw	$v0,28($sp)
.L8008b118:
/* 0x8008b118 */ addiu	$v0,$zero,254
.L8008b11c:
/* 0x8008b11c */ sw	$v0,32($sp)
.L8008b120:
/* 0x8008b120 */ addiu	$v0,$zero,78
.L8008b124:
/* 0x8008b124 */ sw	$v1,16($sp)
.L8008b128:
/* 0x8008b128 */ sw	$v0,36($sp)
.L8008b12c:
/* 0x8008b12c */ lw	$a0,1892($s2)
.L8008b130:
/* 0x8008b130 */ jal	0x8004dab8
.L8008b134:
/* 0x8008b134 */ addiu	$a3,$zero,-287
.L8008b138:
/* 0x8008b138 */ sw	$v0,1892($s2)
.L8008b13c:
/* 0x8008b13c */ addu	$v0,$s1,$zero
.L8008b140:
/* 0x8008b140 */ lw	$ra,132($sp)
.L8008b144:
/* 0x8008b144 */ lw	$s8,128($sp)
.L8008b148:
/* 0x8008b148 */ lw	$s7,124($sp)
.L8008b14c:
/* 0x8008b14c */ lw	$s6,120($sp)
.L8008b150:
/* 0x8008b150 */ lw	$s5,116($sp)
.L8008b154:
/* 0x8008b154 */ lw	$s4,112($sp)
.L8008b158:
/* 0x8008b158 */ lw	$s3,108($sp)
.L8008b15c:
/* 0x8008b15c */ lw	$s2,104($sp)
.L8008b160:
/* 0x8008b160 */ lw	$s1,100($sp)
.L8008b164:
/* 0x8008b164 */ lw	$s0,96($sp)
.L8008b168:
/* 0x8008b168 */ jr	$ra
.L8008b16c:
/* 0x8008b16c */ addiu	$sp,$sp,136
.size FUN_8008ae04, .-FUN_8008ae04
