.set noreorder
.set noat
.set nomacro

.section .text.FUN_8004d010
.globl FUN_8004d010
.type FUN_8004d010, @function
FUN_8004d010:
.L8004d010:
/* 0x8004d010 */ addiu	$sp,$sp,-24
.L8004d014:
/* 0x8004d014 */ sw	$ra,16($sp)
.L8004d018:
/* 0x8004d018 */ jal	0x8002a8b0
.L8004d01c:
/* 0x8004d01c */ sll	$zero,$zero,0x0
.L8004d020:
/* 0x8004d020 */ lui	$a0,0x8002
.L8004d024:
/* 0x8004d024 */ jal	0x800985c8
.L8004d028:
/* 0x8004d028 */ addiu	$a0,$a0,-16852
.L8004d02c:
/* 0x8004d02c */ addu	$a0,$v0,$zero
.L8004d030:
/* 0x8004d030 */ addiu	$a1,$zero,-1
.L8004d034:
/* 0x8004d034 */ jal	0x8002a8b0
.L8004d038:
/* 0x8004d038 */ addu	$a2,$a1,$zero
.L8004d03c:
/* 0x8004d03c */ lui	$a0,0x8002
.L8004d040:
/* 0x8004d040 */ jal	0x800985c8
.L8004d044:
/* 0x8004d044 */ addiu	$a0,$a0,-16840
.L8004d048:
/* 0x8004d048 */ addu	$a0,$v0,$zero
.L8004d04c:
/* 0x8004d04c */ addiu	$a1,$zero,-1
.L8004d050:
/* 0x8004d050 */ jal	0x8002a8b0
.L8004d054:
/* 0x8004d054 */ addu	$a2,$a1,$zero
.L8004d058:
/* 0x8004d058 */ addiu	$a0,$zero,112
.L8004d05c:
/* 0x8004d05c */ addiu	$a1,$zero,-1
.L8004d060:
/* 0x8004d060 */ jal	0x8002a8b0
.L8004d064:
/* 0x8004d064 */ addu	$a2,$a1,$zero
.L8004d068:
/* 0x8004d068 */ lw	$ra,16($sp)
.L8004d06c:
/* 0x8004d06c */ sll	$zero,$zero,0x0
.L8004d070:
/* 0x8004d070 */ jr	$ra
.L8004d074:
/* 0x8004d074 */ addiu	$sp,$sp,24
.size FUN_8004d010, .-FUN_8004d010
