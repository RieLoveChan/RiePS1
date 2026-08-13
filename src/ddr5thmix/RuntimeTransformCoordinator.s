.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007dd2c
.globl FUN_8007dd2c
.type FUN_8007dd2c, @function
FUN_8007dd2c:
/* Coordinate two sampled transform states and publish the selected interpolated result. */
/* 0x8007dd2c */ addiu	$sp,$sp,-240
/* 0x8007dd30 */ sw	$s4,216($sp)
/* 0x8007dd34 */ lw	$s4,256($sp)
/* 0x8007dd38 */ sw	$s3,212($sp)
/* 0x8007dd3c */ lw	$s3,264($sp)
/* 0x8007dd40 */ sw	$s8,232($sp)
/* 0x8007dd44 */ addu $s8,$a0,$zero
/* 0x8007dd48 */ sw	$s0,200($sp)
/* 0x8007dd4c */ addu $s0,$a2,$zero
/* 0x8007dd50 */ sw	$s2,208($sp)
/* 0x8007dd54 */ addu $s2,$a3,$zero
/* 0x8007dd58 */ sw	$s1,204($sp)
/* 0x8007dd5c */ lw	$s1,260($sp)
/* 0x8007dd60 */ addiu $v0,$zero,10
/* 0x8007dd64 */ sw	$ra,236($sp)
/* 0x8007dd68 */ sw	$s7,228($sp)
/* 0x8007dd6c */ sw	$s6,224($sp)
/* 0x8007dd70 */ sw	$s5,220($sp)
/* 0x8007dd74 */ bne	$s1,$v0,.L8007dd8c
/* 0x8007dd78 */ sw	$a1,244($sp)
/* 0x8007dd7c */ lui	$v1,0x8011
/* 0x8007dd80 */ addiu $v0,$zero,1
/* 0x8007dd84 */ j	0x8007dd94
/* 0x8007dd88 */ sw	$v0,9920($v1)
.L8007dd8c:
/* 0x8007dd8c */ lui	$v0,0x8011
/* 0x8007dd90 */ sw	$zero,9920($v0)
/* 0x8007dd94 */ bgez	$s3,.L8007dda4
/* 0x8007dd98 */ slti	$v0,$s3,4097
/* 0x8007dd9c */ addu $s3,$zero,$zero
/* 0x8007dda0 */ slti	$v0,$s3,4097
.L8007dda4:
/* 0x8007dda4 */ bnez	$v0,.L8007ddb0
/* 0x8007dda8 */ nop
/* 0x8007ddac */ addiu $s3,$zero,4096
.L8007ddb0:
/* 0x8007ddb0 */ lw	$t0,244($sp)
/* 0x8007ddb4 */ nop
/* 0x8007ddb8 */ lhu	$v1,6($t0)
/* 0x8007ddbc */ nop
/* 0x8007ddc0 */ slt	$v0,$v1,$s0
/* 0x8007ddc4 */ beqz	$v0,.L8007ddd4
/* 0x8007ddc8 */ addiu	$v0,$v1,1
/* 0x8007ddcc */ div	$zero,$s0,$v0
/* 0x8007ddd0 */ mfhi	$s0
.L8007ddd4:
/* 0x8007ddd4 */ lhu	$v1,6($s2)
/* 0x8007ddd8 */ nop
/* 0x8007dddc */ slt	$v0,$v1,$s4
/* 0x8007dde0 */ beqz	$v0,.L8007ddf0
/* 0x8007dde4 */ addiu	$v0,$v1,1
/* 0x8007dde8 */ div	$zero,$s4,$v0
/* 0x8007ddec */ mfhi	$s4
.L8007ddf0:
/* 0x8007ddf0 */ lw	$t0,244($sp)
/* 0x8007ddf4 */ nop
/* 0x8007ddf8 */ lhu	$v0,4($t0)
/* 0x8007ddfc */ nop
/* 0x8007de00 */ slt	$v0,$s1,$v0
/* 0x8007de04 */ beqz	$v0,.L8007de24
/* 0x8007de08 */ addiu	$a0,$sp,192
/* 0x8007de0c */ lhu	$v0,4($s2)
/* 0x8007de10 */ nop
/* 0x8007de14 */ slt	$v0,$s1,$v0
/* 0x8007de18 */ bnez	$v0,.L8007de40
/* 0x8007de1c */ addiu	$a1,$sp,32
/* 0x8007de20 */ addiu	$a0,$sp,192
.L8007de24:
/* 0x8007de24 */ addiu	$a1,$s8,4
/* 0x8007de28 */ sh	$zero,196($sp)
/* 0x8007de2c */ sh	$zero,194($sp)
/* 0x8007de30 */ jal	0x8005391c
/* 0x8007de34 */ sh	$zero,192($sp)
/* 0x8007de38 */ j	0x8007df8c
/* 0x8007de3c */ addu $v0,$zero,$zero
.L8007de40:
/* 0x8007de40 */ lw	$a0,244($sp)
/* 0x8007de44 */ lw	$v0,24($s8)
/* 0x8007de48 */ nop
/* 0x8007de4c */ sw	$v0,136($sp)
/* 0x8007de50 */ sw	$v0,56($sp)
/* 0x8007de54 */ lw	$v0,28($s8)
/* 0x8007de58 */ addu $a2,$s1,$zero
/* 0x8007de5c */ sw	$v0,140($sp)
/* 0x8007de60 */ sw	$v0,60($sp)
/* 0x8007de64 */ lw	$v0,32($s8)
/* 0x8007de68 */ addu $a3,$s0,$zero
/* 0x8007de6c */ sw	$v0,144($sp)
/* 0x8007de70 */ jal	0x8007d454
/* 0x8007de74 */ sw	$v0,64($sp)
/* 0x8007de78 */ addu $s6,$v0,$zero
/* 0x8007de7c */ addu $a0,$s2,$zero
/* 0x8007de80 */ addiu	$s7,$sp,112
/* 0x8007de84 */ addu $a1,$s7,$zero
/* 0x8007de88 */ addu $a2,$s1,$zero
/* 0x8007de8c */ jal	0x8007d454
/* 0x8007de90 */ addu $a3,$s4,$zero
/* 0x8007de94 */ addu $s5,$v0,$zero
/* 0x8007de98 */ addiu $v0,$zero,15
/* 0x8007de9c */ bne	$s1,$v0,.L8007deac
/* 0x8007dea0 */ nop
/* 0x8007dea4 */ addiu	$s6,$s6,1
/* 0x8007dea8 */ addiu	$s5,$s5,1
.L8007deac:
/* 0x8007deac */ sll	$s1,$s1,0x2
/* 0x8007deb0 */ addu $a1,$s0,$zero
/* 0x8007deb4 */ lw	$t0,244($sp)
/* 0x8007deb8 */ lw	$v1,8($s2)
/* 0x8007debc */ lw	$v0,8($t0)
/* 0x8007dec0 */ addu	$v1,$s1,$v1
/* 0x8007dec4 */ addu	$v0,$s1,$v0
/* 0x8007dec8 */ lw	$v0,4($v0)
/* 0x8007decc */ lw	$v1,4($v1)
/* 0x8007ded0 */ lw	$a0,8($v0)
/* 0x8007ded4 */ lw	$s2,8($v1)
/* 0x8007ded8 */ lw	$v0,0($a0)
/* 0x8007dedc */ lw	$v1,0($s2)
/* 0x8007dee0 */ lbu	$v0,0($v0)
/* 0x8007dee4 */ lbu	$s0,0($v1)
/* 0x8007dee8 */ sltiu	$v0,$v0,1
/* 0x8007deec */ sll	$v0,$v0,0x2
/* 0x8007def0 */ addu	$v0,$v0,$a0
/* 0x8007def4 */ lw	$a0,0($v0)
/* 0x8007def8 */ sltiu	$s0,$s0,1
/* 0x8007defc */ jal	0x8007ce50
/* 0x8007df00 */ addiu	$a0,$a0,4
/* 0x8007df04 */ sll	$s0,$s0,0x2
/* 0x8007df08 */ addu	$s0,$s0,$s2
/* 0x8007df0c */ addu $a1,$s4,$zero
/* 0x8007df10 */ lw	$a0,0($s0)
/* 0x8007df14 */ addu $s0,$v0,$zero
/* 0x8007df18 */ jal	0x8007ce50
/* 0x8007df1c */ addiu	$a0,$a0,4
/* 0x8007df20 */ addu $a0,$s8,$zero
/* 0x8007df24 */ addiu	$a1,$sp,32
/* 0x8007df28 */ addu $a2,$s7,$zero
/* 0x8007df2c */ lw	$t0,244($sp)
/* 0x8007df30 */ sll	$s0,$s0,0x10
/* 0x8007df34 */ lw	$v1,8($t0)
/* 0x8007df38 */ sra	$s0,$s0,0x10
/* 0x8007df3c */ addu	$s1,$s1,$v1
/* 0x8007df40 */ lw	$v1,4($s1)
/* 0x8007df44 */ sll	$v0,$v0,0x10
/* 0x8007df48 */ lbu	$a3,2($v1)
/* 0x8007df4c */ sra	$v0,$v0,0x10
/* 0x8007df50 */ sw	$v0,20($sp)
/* 0x8007df54 */ sll	$v0,$s3,0x10
/* 0x8007df58 */ sra	$v0,$v0,0x10
/* 0x8007df5c */ sw	$s0,16($sp)
/* 0x8007df60 */ addiu $s0,$zero,4096
/* 0x8007df64 */ subu	$s0,$s0,$s3
/* 0x8007df68 */ sw	$v0,24($sp)
/* 0x8007df6c */ sll	$v0,$s0,0x10
/* 0x8007df70 */ sra	$v0,$v0,0x10
/* 0x8007df74 */ jal	0x8007d8a8
/* 0x8007df78 */ sw	$v0,28($sp)
/* 0x8007df7c */ slt	$s0,$s3,$s0
/* 0x8007df80 */ bnez	$s0,.L8007df8c
/* 0x8007df84 */ addu $v0,$s5,$zero
/* 0x8007df88 */ addu $v0,$s6,$zero
.L8007df8c:
/* 0x8007df8c */ lw	$ra,236($sp)
/* 0x8007df90 */ lw	$s8,232($sp)
/* 0x8007df94 */ lw	$s7,228($sp)
/* 0x8007df98 */ lw	$s6,224($sp)
/* 0x8007df9c */ lw	$s5,220($sp)
/* 0x8007dfa0 */ lw	$s4,216($sp)
/* 0x8007dfa4 */ lw	$s3,212($sp)
/* 0x8007dfa8 */ lw	$s2,208($sp)
/* 0x8007dfac */ lw	$s1,204($sp)
/* 0x8007dfb0 */ lw	$s0,200($sp)
/* 0x8007dfb4 */ jr	$ra
/* 0x8007dfb8 */ addiu	$sp,$sp,240
.size FUN_8007dd2c, .-FUN_8007dd2c

