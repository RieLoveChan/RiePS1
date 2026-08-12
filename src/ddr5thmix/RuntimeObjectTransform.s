.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007cf38
.globl FUN_8007cf38
.type FUN_8007cf38, @function
FUN_8007cf38:
/* Runtime object transform and frame synthesis; table and record semantics remain structural. */
/* 0x8007cf38 */ addiu	$sp,$sp,-184
/* 0x8007cf3c */ sw	$s6,168($sp)
/* 0x8007cf40 */ addu $s6,$a0,$zero
/* 0x8007cf44 */ sw	$s8,176($sp)
/* 0x8007cf48 */ addu $s8,$a1,$zero
/* 0x8007cf4c */ sw	$s0,144($sp)
/* 0x8007cf50 */ addu $s0,$a3,$zero
/* 0x8007cf54 */ sw	$s7,172($sp)
/* 0x8007cf58 */ sw	$ra,180($sp)
/* 0x8007cf5c */ sw	$s5,164($sp)
/* 0x8007cf60 */ sw	$s4,160($sp)
/* 0x8007cf64 */ sw	$s3,156($sp)
/* 0x8007cf68 */ sw	$s2,152($sp)
/* 0x8007cf6c */ sw	$s1,148($sp)
/* 0x8007cf70 */ lhu	$v0,4($s6)
/* 0x8007cf74 */ addiu	$s4,$a2,1
/* 0x8007cf78 */ slt	$v0,$s4,$v0
/* 0x8007cf7c */ bnez	$v0,.L8007cfa4
/* 0x8007cf80 */ addu $s7,$zero,$zero
/* 0x8007cf84 */ addiu	$a0,$sp,16
/* 0x8007cf88 */ addiu	$a1,$s8,4
/* 0x8007cf8c */ sh	$zero,20($sp)
/* 0x8007cf90 */ sh	$zero,18($sp)
/* 0x8007cf94 */ jal	0x8005391c
/* 0x8007cf98 */ sh	$zero,16($sp)
/* 0x8007cf9c */ j	0x8007d424
/* 0x8007cfa0 */ addu $v0,$s7,$zero
.L8007cfa4:
/* 0x8007cfa4 */ lhu	$v1,6($s6)
/* 0x8007cfa8 */ nop
/* 0x8007cfac */ slt	$v0,$v1,$s0
/* 0x8007cfb0 */ beqz	$v0,.L8007cfc0
/* 0x8007cfb4 */ addiu	$v0,$v1,1
/* 0x8007cfb8 */ div	$zero,$s0,$v0
/* 0x8007cfbc */ mfhi	$s0
.L8007cfc0:
/* 0x8007cfc0 */ lw	$v0,8($s6)
/* 0x8007cfc4 */ sll	$v1,$s4,0x2
/* 0x8007cfc8 */ addu	$v1,$v1,$v0
/* 0x8007cfcc */ lw	$v0,0($v1)
/* 0x8007cfd0 */ nop
/* 0x8007cfd4 */ lw	$s2,8($v0)
/* 0x8007cfd8 */ nop
/* 0x8007cfdc */ lw	$a0,0($s2)
/* 0x8007cfe0 */ addu $s3,$zero,$zero
/* 0x8007cfe4 */ lbu	$v1,0($a0)
/* 0x8007cfe8 */ nop
/* 0x8007cfec */ bnez	$v1,.L8007d038
/* 0x8007cff0 */ addiu $s5,$zero,2
/* 0x8007cff4 */ addu $s5,$s3,$zero
/* 0x8007cff8 */ addiu	$a0,$a0,4
/* 0x8007cffc */ jal	0x8007ce50
/* 0x8007d000 */ addu $a1,$s0,$zero
/* 0x8007d004 */ addu $a1,$s0,$zero
/* 0x8007d008 */ sh	$v0,40($sp)
/* 0x8007d00c */ lw	$a0,4($s2)
/* 0x8007d010 */ addiu $s3,$zero,3
/* 0x8007d014 */ jal	0x8007ce50
/* 0x8007d018 */ addiu	$a0,$a0,4
/* 0x8007d01c */ sh	$v0,42($sp)
/* 0x8007d020 */ lw	$a0,8($s2)
/* 0x8007d024 */ addu $a1,$s0,$zero
/* 0x8007d028 */ jal	0x8007ce50
/* 0x8007d02c */ addiu	$a0,$a0,4
/* 0x8007d030 */ j	0x8007d094
/* 0x8007d034 */ sh	$v0,44($sp)
.L8007d038:
/* 0x8007d038 */ addiu $v0,$zero,1
/* 0x8007d03c */ bne	$v1,$v0,.L8007d094
/* 0x8007d040 */ addiu	$a0,$a0,4
/* 0x8007d044 */ addu $s5,$v0,$zero
/* 0x8007d048 */ jal	0x8007ce50
/* 0x8007d04c */ addu $a1,$s0,$zero
/* 0x8007d050 */ addu $a1,$s0,$zero
/* 0x8007d054 */ sh	$v0,42($sp)
/* 0x8007d058 */ lw	$a0,4($s2)
/* 0x8007d05c */ addiu $s3,$zero,4
/* 0x8007d060 */ jal	0x8007ce50
/* 0x8007d064 */ addu	$a0,$a0,$s3
/* 0x8007d068 */ sh	$v0,48($sp)
/* 0x8007d06c */ lw	$a0,8($s2)
/* 0x8007d070 */ addu $a1,$s0,$zero
/* 0x8007d074 */ jal	0x8007ce50
/* 0x8007d078 */ addu	$a0,$a0,$s3
/* 0x8007d07c */ sh	$v0,50($sp)
/* 0x8007d080 */ lw	$a0,12($s2)
/* 0x8007d084 */ addu $a1,$s0,$zero
/* 0x8007d088 */ jal	0x8007ce50
/* 0x8007d08c */ addu	$a0,$a0,$s3
/* 0x8007d090 */ sh	$v0,52($sp)
.L8007d094:
/* 0x8007d094 */ sll	$v0,$s3,0x2
/* 0x8007d098 */ addu	$s1,$v0,$s2
/* 0x8007d09c */ lw	$a0,0($s1)
/* 0x8007d0a0 */ nop
/* 0x8007d0a4 */ lbu	$v1,0($a0)
/* 0x8007d0a8 */ addiu $v0,$zero,6
/* 0x8007d0ac */ bne	$v1,$v0,.L8007d10c
/* 0x8007d0b0 */ sll	$v0,$s3,0x2
/* 0x8007d0b4 */ addiu	$a0,$a0,4
/* 0x8007d0b8 */ jal	0x8007ce50
/* 0x8007d0bc */ addu $a1,$s0,$zero
/* 0x8007d0c0 */ addu $a1,$s0,$zero
/* 0x8007d0c4 */ sll	$v0,$v0,0x10
/* 0x8007d0c8 */ sra	$v0,$v0,0x10
/* 0x8007d0cc */ sw	$v0,24($sp)
/* 0x8007d0d0 */ lw	$a0,4($s1)
/* 0x8007d0d4 */ addiu	$s3,$s3,3
/* 0x8007d0d8 */ jal	0x8007ce50
/* 0x8007d0dc */ addiu	$a0,$a0,4
/* 0x8007d0e0 */ sll	$v0,$v0,0x10
/* 0x8007d0e4 */ sra	$v0,$v0,0x10
/* 0x8007d0e8 */ sw	$v0,28($sp)
/* 0x8007d0ec */ lw	$a0,8($s1)
/* 0x8007d0f0 */ addu $a1,$s0,$zero
/* 0x8007d0f4 */ jal	0x8007ce50
/* 0x8007d0f8 */ addiu	$a0,$a0,4
/* 0x8007d0fc */ sll	$v0,$v0,0x10
/* 0x8007d100 */ sra	$v0,$v0,0x10
/* 0x8007d104 */ sw	$v0,32($sp)
/* 0x8007d108 */ sll	$v0,$s3,0x2
.L8007d10c:
/* 0x8007d10c */ addu	$v0,$v0,$s2
/* 0x8007d110 */ lw	$a0,0($v0)
/* 0x8007d114 */ nop
/* 0x8007d118 */ lbu	$v1,0($a0)
/* 0x8007d11c */ addiu $v0,$zero,10
/* 0x8007d120 */ bne	$v1,$v0,.L8007d17c
/* 0x8007d124 */ sra	$v0,$s0,0x8
/* 0x8007d128 */ sll	$v0,$v0,0x1
/* 0x8007d12c */ addu	$v0,$a0,$v0
/* 0x8007d130 */ lhu	$v1,6($v0)
/* 0x8007d134 */ addiu	$a0,$a0,4
/* 0x8007d138 */ addu	$v1,$a0,$v1
/* 0x8007d13c */ lhu	$v0,4($v1)
/* 0x8007d140 */ nop
/* 0x8007d144 */ slt	$v0,$v0,$s0
/* 0x8007d148 */ beqz	$v0,.L8007d16c
/* 0x8007d14c */ addiu	$v1,$v1,4
/* 0x8007d150 */ addiu	$v1,$v1,4
.L8007d154:
/* 0x8007d154 */ lhu	$v0,0($v1)
/* 0x8007d158 */ nop
/* 0x8007d15c */ slt	$v0,$v0,$s0
/* 0x8007d160 */ bnez	$v0,.L8007d154
/* 0x8007d164 */ addiu	$v1,$v1,4
/* 0x8007d168 */ addiu	$v1,$v1,-4
.L8007d16c:
/* 0x8007d16c */ lh	$v1,-2($v1)
/* 0x8007d170 */ lhu	$v0,0($a0)
/* 0x8007d174 */ nop
/* 0x8007d178 */ srav	$s7,$v1,$v0
.L8007d17c:
/* 0x8007d17c */ addu $v1,$s5,$zero
/* 0x8007d180 */ bnez	$v1,.L8007d204
/* 0x8007d184 */ addiu $v0,$zero,1
/* 0x8007d188 */ lw	$v1,8($s6)
/* 0x8007d18c */ sll	$v0,$s4,0x2
/* 0x8007d190 */ addu	$v0,$v0,$v1
/* 0x8007d194 */ lw	$v0,0($v0)
/* 0x8007d198 */ nop
/* 0x8007d19c */ lbu	$v0,2($v0)
/* 0x8007d1a0 */ nop
/* 0x8007d1a4 */ beqz	$v0,.L8007d1b0
/* 0x8007d1a8 */ addu $s2,$zero,$zero
/* 0x8007d1ac */ addiu	$s2,$sp,24
.L8007d1b0:
/* 0x8007d1b0 */ beqz	$s2,.L8007d1dc
/* 0x8007d1b4 */ addiu	$s1,$s8,4
/* 0x8007d1b8 */ lw	$v0,0($s2)
/* 0x8007d1bc */ nop
/* 0x8007d1c0 */ sw	$v0,20($s1)
/* 0x8007d1c4 */ lw	$v0,4($s2)
/* 0x8007d1c8 */ nop
/* 0x8007d1cc */ sw	$v0,24($s1)
/* 0x8007d1d0 */ lw	$v0,8($s2)
/* 0x8007d1d4 */ nop
/* 0x8007d1d8 */ sw	$v0,28($s1)
.L8007d1dc:
/* 0x8007d1dc */ addiu	$a0,$sp,40
/* 0x8007d1e0 */ lh	$s0,40($sp)
/* 0x8007d1e4 */ addu $a1,$s1,$zero
/* 0x8007d1e8 */ jal	0x8007e1e8
/* 0x8007d1ec */ sh	$zero,40($sp)
/* 0x8007d1f0 */ addu $a1,$s1,$zero
/* 0x8007d1f4 */ jal	0x8007e478
/* 0x8007d1f8 */ addu $a0,$s0,$zero
/* 0x8007d1fc */ j	0x8007d418
/* 0x8007d200 */ addiu $v0,$zero,16
.L8007d204:
/* 0x8007d204 */ bne	$v1,$v0,.L8007d400
/* 0x8007d208 */ addiu	$a0,$sp,40
/* 0x8007d20c */ lw	$v1,8($s6)
/* 0x8007d210 */ sll	$v0,$s4,0x2
/* 0x8007d214 */ addu	$v0,$v0,$v1
/* 0x8007d218 */ lw	$v0,0($v0)
/* 0x8007d21c */ nop
/* 0x8007d220 */ lbu	$v0,2($v0)
/* 0x8007d224 */ nop
/* 0x8007d228 */ beqz	$v0,.L8007d234
/* 0x8007d22c */ addu $s2,$zero,$zero
/* 0x8007d230 */ addiu	$s2,$sp,24
.L8007d234:
/* 0x8007d234 */ addiu	$a0,$sp,48
/* 0x8007d238 */ addiu	$s0,$sp,56
/* 0x8007d23c */ addu $a1,$s0,$zero
/* 0x8007d240 */ lhu	$s5,42($sp)
/* 0x8007d244 */ jal	0x80060f80
/* 0x8007d248 */ addiu	$s1,$s8,4
/* 0x8007d24c */ lhu	$a0,56($sp)
/* 0x8007d250 */ lhu	$v1,58($sp)
/* 0x8007d254 */ lhu	$a1,60($sp)
/* 0x8007d258 */ addiu $v0,$zero,4096
/* 0x8007d25c */ sh	$zero,66($sp)
/* 0x8007d260 */ sh	$zero,64($sp)
/* 0x8007d264 */ addu $s3,$a0,$zero
/* 0x8007d268 */ sh	$v1,80($sp)
/* 0x8007d26c */ sll	$v1,$v1,0x10
/* 0x8007d270 */ sh	$a0,74($sp)
/* 0x8007d274 */ sh	$a1,86($sp)
/* 0x8007d278 */ sh	$v0,12($s0)
/* 0x8007d27c */ bnez	$v1,.L8007d290
/* 0x8007d280 */ sh	$zero,56($sp)
/* 0x8007d284 */ sll	$v0,$a1,0x10
/* 0x8007d288 */ beqz	$v0,.L8007d2b0
/* 0x8007d28c */ nop
.L8007d290:
/* 0x8007d290 */ addu $a0,$s0,$zero
/* 0x8007d294 */ jal	0x80060f80
/* 0x8007d298 */ addiu	$a1,$sp,64
/* 0x8007d29c */ lhu	$v0,68($sp)
/* 0x8007d2a0 */ lhu	$v1,66($sp)
/* 0x8007d2a4 */ subu $v0,$zero,$v0
/* 0x8007d2a8 */ sh	$v1,68($sp)
/* 0x8007d2ac */ sh	$v0,66($sp)
.L8007d2b0:
/* 0x8007d2b0 */ lhu	$v0,66($sp)
/* 0x8007d2b4 */ lhu	$v1,68($sp)
/* 0x8007d2b8 */ sh	$zero,76($sp)
/* 0x8007d2bc */ sh	$s3,56($sp)
/* 0x8007d2c0 */ sh	$v1,88($sp)
/* 0x8007d2c4 */ addiu	$v1,$sp,112
/* 0x8007d2c8 */ sh	$v0,82($sp)
/* 0x8007d2cc */ cfc2	$t4,$0
/* 0x8007d2d0 */ cfc2	$t5,$1
/* 0x8007d2d4 */ sw	$t4,0($v1)
/* 0x8007d2d8 */ sw	$t5,4($v1)
/* 0x8007d2dc */ cfc2	$t4,$2
/* 0x8007d2e0 */ cfc2	$t5,$3
/* 0x8007d2e4 */ cfc2	$t6,$4
/* 0x8007d2e8 */ sw	$t4,8($v1)
/* 0x8007d2ec */ sw	$t5,12($v1)
/* 0x8007d2f0 */ sw	$t6,16($v1)
/* 0x8007d2f4 */ cfc2	$t4,$5
/* 0x8007d2f8 */ cfc2	$t5,$6
/* 0x8007d2fc */ cfc2	$t6,$7
/* 0x8007d300 */ sw	$t4,20($v1)
/* 0x8007d304 */ sw	$t5,24($v1)
/* 0x8007d308 */ sw	$t6,28($v1)
/* 0x8007d30c */ lh	$t4,0($s0)
/* 0x8007d310 */ lh	$t5,2($s0)
/* 0x8007d314 */ ctc2	$t4,$0
/* 0x8007d318 */ lh	$t6,4($s0)
/* 0x8007d31c */ ctc2	$t5,$2
/* 0x8007d320 */ ctc2	$t6,$4
/* 0x8007d324 */ addiu	$v0,$sp,64
/* 0x8007d328 */ lh	$t4,0($v0)
/* 0x8007d32c */ lh	$t5,2($v0)
/* 0x8007d330 */ lh	$t6,4($v0)
/* 0x8007d334 */ mtc2	$t4,$9
/* 0x8007d338 */ mtc2	$t5,$10
/* 0x8007d33c */ mtc2	$t6,$11
/* 0x8007d340 */ nop
/* 0x8007d344 */ nop
/* 0x8007d348 */ c2	0x178000c
/* 0x8007d34c */ addiu	$s0,$sp,104
/* 0x8007d350 */ mfc2	$t4,$9
/* 0x8007d354 */ mfc2	$t5,$10
/* 0x8007d358 */ mfc2	$t6,$11
/* 0x8007d35c */ sh	$t4,0($s0)
/* 0x8007d360 */ sh	$t5,2($s0)
/* 0x8007d364 */ sh	$t6,4($s0)
/* 0x8007d368 */ lw	$t4,0($v1)
/* 0x8007d36c */ lw	$t5,4($v1)
/* 0x8007d370 */ ctc2	$t4,$0
/* 0x8007d374 */ ctc2	$t5,$1
/* 0x8007d378 */ lw	$t4,8($v1)
/* 0x8007d37c */ lw	$t5,12($v1)
/* 0x8007d380 */ lw	$t6,16($v1)
/* 0x8007d384 */ ctc2	$t4,$2
/* 0x8007d388 */ ctc2	$t5,$3
/* 0x8007d38c */ ctc2	$t6,$4
/* 0x8007d390 */ addiu	$a0,$sp,72
/* 0x8007d394 */ lhu	$v0,104($sp)
/* 0x8007d398 */ lhu	$v1,106($sp)
/* 0x8007d39c */ lhu	$a2,108($sp)
/* 0x8007d3a0 */ addu $a1,$s0,$zero
/* 0x8007d3a4 */ sh	$v0,72($sp)
/* 0x8007d3a8 */ sh	$v1,78($sp)
/* 0x8007d3ac */ jal	0x800553c8
/* 0x8007d3b0 */ sh	$a2,84($sp)
/* 0x8007d3b4 */ sll	$a0,$s5,0x10
/* 0x8007d3b8 */ sra	$a0,$a0,0x10
/* 0x8007d3bc */ subu $a0,$zero,$a0
/* 0x8007d3c0 */ jal	0x8007e618
/* 0x8007d3c4 */ addu $a1,$s0,$zero
/* 0x8007d3c8 */ addu $a0,$s0,$zero
/* 0x8007d3cc */ jal	0x800553c8
/* 0x8007d3d0 */ addu $a1,$s1,$zero
/* 0x8007d3d4 */ beqz	$s2,.L8007d418
/* 0x8007d3d8 */ addiu $v0,$zero,16
/* 0x8007d3dc */ lw	$v0,0($s2)
/* 0x8007d3e0 */ nop
/* 0x8007d3e4 */ sw	$v0,20($s1)
/* 0x8007d3e8 */ lw	$v0,4($s2)
/* 0x8007d3ec */ nop
/* 0x8007d3f0 */ sw	$v0,24($s1)
/* 0x8007d3f4 */ lw	$v0,8($s2)
/* 0x8007d3f8 */ j	0x8007d414
/* 0x8007d3fc */ sw	$v0,28($s1)
.L8007d400:
/* 0x8007d400 */ addiu	$a1,$s8,4
/* 0x8007d404 */ sh	$zero,44($sp)
/* 0x8007d408 */ sh	$zero,42($sp)
/* 0x8007d40c */ jal	0x8005391c
/* 0x8007d410 */ sh	$zero,40($sp)
/* 0x8007d414 */ addiu $v0,$zero,16
.L8007d418:
/* 0x8007d418 */ bne	$s4,$v0,.L8007d424
/* 0x8007d41c */ addu $v0,$s7,$zero
/* 0x8007d420 */ addiu	$v0,$s7,1
.L8007d424:
/* 0x8007d424 */ lw	$ra,180($sp)
/* 0x8007d428 */ lw	$s8,176($sp)
/* 0x8007d42c */ lw	$s7,172($sp)
/* 0x8007d430 */ lw	$s6,168($sp)
/* 0x8007d434 */ lw	$s5,164($sp)
/* 0x8007d438 */ lw	$s4,160($sp)
/* 0x8007d43c */ lw	$s3,156($sp)
/* 0x8007d440 */ lw	$s2,152($sp)
/* 0x8007d444 */ lw	$s1,148($sp)
/* 0x8007d448 */ lw	$s0,144($sp)
/* 0x8007d44c */ jr	$ra
/* 0x8007d450 */ addiu $sp,$sp,0xb8
.size FUN_8007cf38, .-FUN_8007cf38

