.set noreorder
.set noat
.set nomacro

.section .text.FUN_8009df68
.globl FUN_8009df68
.type FUN_8009df68, @function
FUN_8009df68:
.L8009df68:
/* 0x8009df68 */ addiu	$sp,$sp,-48
.L8009df6c:
/* 0x8009df6c */ sw	$s1,36($sp)
.L8009df70:
/* 0x8009df70 */ lui	$s1,0x800e
.L8009df74:
/* 0x8009df74 */ lw	$v1,3624($s1)
.L8009df78:
/* 0x8009df78 */ sw	$ra,44($sp)
.L8009df7c:
/* 0x8009df7c */ sw	$s2,40($sp)
.L8009df80:
/* 0x8009df80 */ sw	$s0,32($sp)
.L8009df84:
/* 0x8009df84 */ lbu	$s0,0($v1)
.L8009df88:
/* 0x8009df88 */ sll	$zero,$zero,0x0
.L8009df8c:
/* 0x8009df8c */ slti	$v0,$s0,242
.L8009df90:
/* 0x8009df90 */ beq	$v0,$zero,.L8009dfbc
.L8009df94:
/* 0x8009df94 */ addu	$s2,$zero,$zero
.L8009df98:
/* 0x8009df98 */ slti	$v0,$s0,240
.L8009df9c:
/* 0x8009df9c */ beq	$v0,$zero,.L8009e088
.L8009dfa0:
/* 0x8009dfa0 */ addiu	$v0,$zero,255
.L8009dfa4:
/* 0x8009dfa4 */ beq	$s0,$zero,.L8009dfd0
.L8009dfa8:
/* 0x8009dfa8 */ addiu	$v0,$zero,1
.L8009dfac:
/* 0x8009dfac */ beq	$s0,$v0,.L8009e00c
.L8009dfb0:
/* 0x8009dfb0 */ addu	$v0,$s2,$zero
.L8009dfb4:
/* 0x8009dfb4 */ j	.L8009e098
.L8009dfb8:
/* 0x8009dfb8 */ sll	$zero,$zero,0x0
.L8009dfbc:
/* 0x8009dfbc */ addiu	$v0,$zero,255
.L8009dfc0:
/* 0x8009dfc0 */ beq	$s0,$v0,.L8009e090
.L8009dfc4:
/* 0x8009dfc4 */ addu	$v0,$s2,$zero
.L8009dfc8:
/* 0x8009dfc8 */ j	.L8009e098
.L8009dfcc:
/* 0x8009dfcc */ sll	$zero,$zero,0x0
.L8009dfd0:
/* 0x8009dfd0 */ addiu	$v0,$zero,1
.L8009dfd4:
/* 0x8009dfd4 */ sb	$v0,0($v1)
.L8009dfd8:
/* 0x8009dfd8 */ lui	$v0,0x800e
.L8009dfdc:
/* 0x8009dfdc */ addiu	$a2,$zero,4
.L8009dfe0:
/* 0x8009dfe0 */ lw	$a1,2844($v0)
.L8009dfe4:
/* 0x8009dfe4 */ addiu	$a3,$zero,20
.L8009dfe8:
/* 0x8009dfe8 */ lbu	$a0,12($a1)
.L8009dfec:
/* 0x8009dfec */ lw	$v0,120($a1)
.L8009dff0:
/* 0x8009dff0 */ addiu	$a1,$a1,24
.L8009dff4:
/* 0x8009dff4 */ sw	$zero,20($sp)
.L8009dff8:
/* 0x8009dff8 */ sw	$zero,24($sp)
.L8009dffc:
/* 0x8009dffc */ jal	0x8009b6e0
.L8009e000:
/* 0x8009e000 */ sw	$v0,16($sp)
.L8009e004:
/* 0x8009e004 */ j	.L8009e098
.L8009e008:
/* 0x8009e008 */ addu	$v0,$s2,$zero
.L8009e00c:
/* 0x8009e00c */ jal	0x8009a72c
.L8009e010:
/* 0x8009e010 */ sll	$zero,$zero,0x0
.L8009e014:
/* 0x8009e014 */ addu	$v1,$v0,$zero
.L8009e018:
/* 0x8009e018 */ beq	$v1,$s0,.L8009e03c
.L8009e01c:
/* 0x8009e01c */ slti	$v0,$v1,2
.L8009e020:
/* 0x8009e020 */ bne	$v0,$zero,.L8009e098
.L8009e024:
/* 0x8009e024 */ addu	$v0,$s2,$zero
.L8009e028:
/* 0x8009e028 */ addiu	$v0,$zero,2
.L8009e02c:
/* 0x8009e02c */ beq	$v1,$v0,.L8009e070
.L8009e030:
/* 0x8009e030 */ addu	$v0,$s2,$zero
.L8009e034:
/* 0x8009e034 */ j	.L8009e098
.L8009e038:
/* 0x8009e038 */ sll	$zero,$zero,0x0
.L8009e03c:
/* 0x8009e03c */ lw	$v1,3624($s1)
.L8009e040:
/* 0x8009e040 */ addiu	$v0,$zero,240
.L8009e044:
/* 0x8009e044 */ sb	$v0,0($v1)
.L8009e048:
/* 0x8009e048 */ lui	$v0,0x800e
.L8009e04c:
/* 0x8009e04c */ lw	$v1,2844($v0)
.L8009e050:
/* 0x8009e050 */ lui	$v0,0x800e
.L8009e054:
/* 0x8009e054 */ lbu	$v1,12($v1)
.L8009e058:
/* 0x8009e058 */ addiu	$v0,$v0,16486
.L8009e05c:
/* 0x8009e05c */ addu	$v1,$v1,$v0
.L8009e060:
/* 0x8009e060 */ sb	$zero,0($v1)
.L8009e064:
/* 0x8009e064 */ lw	$v0,3624($s1)
.L8009e068:
/* 0x8009e068 */ j	.L8009e094
.L8009e06c:
/* 0x8009e06c */ sb	$zero,1($v0)
.L8009e070:
/* 0x8009e070 */ lw	$v0,3624($s1)
.L8009e074:
/* 0x8009e074 */ addiu	$v1,$zero,241
.L8009e078:
/* 0x8009e078 */ sb	$v1,0($v0)
.L8009e07c:
/* 0x8009e07c */ lw	$v0,3624($s1)
.L8009e080:
/* 0x8009e080 */ j	.L8009e094
.L8009e084:
/* 0x8009e084 */ sb	$s0,1($v0)
.L8009e088:
/* 0x8009e088 */ j	.L8009e094
.L8009e08c:
/* 0x8009e08c */ sb	$v0,0($v1)
.L8009e090:
/* 0x8009e090 */ addiu	$s2,$zero,1
.L8009e094:
/* 0x8009e094 */ addu	$v0,$s2,$zero
.L8009e098:
/* 0x8009e098 */ lw	$ra,44($sp)
.L8009e09c:
/* 0x8009e09c */ lw	$s2,40($sp)
.L8009e0a0:
/* 0x8009e0a0 */ lw	$s1,36($sp)
.L8009e0a4:
/* 0x8009e0a4 */ lw	$s0,32($sp)
.L8009e0a8:
/* 0x8009e0a8 */ jr	$ra
.L8009e0ac:
/* 0x8009e0ac */ addiu	$sp,$sp,48
.size FUN_8009df68, .-FUN_8009df68
