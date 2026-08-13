.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007f334
.globl FUN_8007f334
.type FUN_8007f334, @function
FUN_8007f334:
/* Runtime callback helper and subordinate state update. */
/* 0x8007f334 */ lui	$v0,0x800e
/* 0x8007f338 */ lw	$v0,-1680($v0)
/* 0x8007f33c */ addiu	$sp,$sp,-32
/* 0x8007f340 */ sw	$ra,24($sp)
/* 0x8007f344 */ sw	$s1,20($sp)
/* 0x8007f348 */ bgez	$v0,.L8007f354
/* 0x8007f34c */ addu $s1,$v0,$zero
/* 0x8007f350 */ negu	$s1,$s1
.L8007f354:
/* 0x8007f354 */ beq $s1,$zero,.L8007f470
/* 0x8007f358 */ sw	$s0,16($sp)
/* 0x8007f35c */ blez	$v0,.L8007f398
/* 0x8007f360 */ lui	$v1,0x8888
/* 0x8007f364 */ ori	$v1,$v1,0x8889
/* 0x8007f368 */ sll	$v0,$s1,0x7
/* 0x8007f36c */ subu	$v0,$v0,$s1
/* 0x8007f370 */ sll	$v0,$v0,0x1
/* 0x8007f374 */ mult	$v0,$v1
/* 0x8007f378 */ mfhi	$a1
/* 0x8007f37c */ addu	$v1,$a1,$v0
/* 0x8007f380 */ sra	$v1,$v1,0x4
/* 0x8007f384 */ sra	$v0,$v0,0x1f
/* 0x8007f388 */ subu	$v1,$v1,$v0
/* 0x8007f38c */ addiu $v0,$zero,254
/* 0x8007f390 */ j	0x8007f3c0
/* 0x8007f394 */ subu	$s0,$v0,$v1
.L8007f398:
/* 0x8007f398 */ ori	$v1,$v1,0x8889
/* 0x8007f39c */ sll	$v0,$s1,0x7
/* 0x8007f3a0 */ subu	$v0,$v0,$s1
/* 0x8007f3a4 */ sll	$v0,$v0,0x1
/* 0x8007f3a8 */ mult	$v0,$v1
/* 0x8007f3ac */ mfhi	$a1
/* 0x8007f3b0 */ addu	$v1,$a1,$v0
/* 0x8007f3b4 */ sra	$v1,$v1,0x4
/* 0x8007f3b8 */ sra	$v0,$v0,0x1f
/* 0x8007f3bc */ subu	$s0,$v1,$v0
.L8007f3c0:
/* 0x8007f3c0 */ bgez	$s0,.L8007f3d0
/* 0x8007f3c4 */ slti	$v0,$s0,255
/* 0x8007f3c8 */ addu $s0,$zero,$zero
/* 0x8007f3cc */ slti	$v0,$s0,255
.L8007f3d0:
/* 0x8007f3d0 */ bne $v0,$zero,.L8007f3dc
/* 0x8007f3d4 */ slti	$v0,$s1,37
/* 0x8007f3d8 */ addiu $s0,$zero,254
.L8007f3dc:
/* 0x8007f3dc */ bne $v0,$zero,.L8007f3f8
/* 0x8007f3e0 */ slti	$v0,$s1,43
/* 0x8007f3e4 */ bne $s0,$zero,.L8007f3f8
/* 0x8007f3e8 */ nop
/* 0x8007f3ec */ jal	0x8002a8b0
/* 0x8007f3f0 */ nop
/* 0x8007f3f4 */ slti	$v0,$s1,43
.L8007f3f8:
/* 0x8007f3f8 */ bne $v0,$zero,.L8007f40c
/* 0x8007f3fc */ andi	$a0,$s0,0xff
/* 0x8007f400 */ lui	$v0,0x800e
/* 0x8007f404 */ sw	$zero,-1680($v0)
/* 0x8007f408 */ addiu $a0,$zero,254
.L8007f40c:
/* 0x8007f40c */ jal	0x8002a8b0
/* 0x8007f410 */ nop
/* 0x8007f414 */ lui	$v0,0x8011
/* 0x8007f418 */ lw	$v0,27688($v0)
/* 0x8007f41c */ nop
/* 0x8007f420 */ andi	$v0,$v0,0xf
/* 0x8007f424 */ beq $v0,$zero,.L8007f440
/* 0x8007f428 */ lui	$v0,0x800f
/* 0x8007f42c */ lw	$v0,10488($v0)
/* 0x8007f430 */ nop
/* 0x8007f434 */ andi	$v0,$v0,0x1
/* 0x8007f438 */ beq $v0,$zero,.L8007f474
/* 0x8007f43c */ lui	$s1,0x800e
.L8007f440:
/* 0x8007f440 */ lui	$v1,0x800e
/* 0x8007f444 */ lw	$v0,-1680($v1)
/* 0x8007f448 */ nop
/* 0x8007f44c */ blez	$v0,.L8007f458
/* 0x8007f450 */ addiu	$v0,$v0,1
/* 0x8007f454 */ sw	$v0,-1680($v1)
.L8007f458:
/* 0x8007f458 */ lw	$v0,-1680($v1)
/* 0x8007f45c */ nop
/* 0x8007f460 */ bgez	$v0,.L8007f474
/* 0x8007f464 */ lui	$s1,0x800e
/* 0x8007f468 */ addiu	$v0,$v0,-1
/* 0x8007f46c */ sw	$v0,-1680($v1)
.L8007f470:
/* 0x8007f470 */ lui	$s1,0x800e
.L8007f474:
/* 0x8007f474 */ lw	$v0,-1676($s1)
/* 0x8007f478 */ addiu $s0,$zero,-1
/* 0x8007f47c */ beq	$v0,$s0,.L8007f4bc
/* 0x8007f480 */ nop
/* 0x8007f484 */ jal	0x8007f06c
/* 0x8007f488 */ nop
/* 0x8007f48c */ beq	$v0,$s0,.L8007f4bc
/* 0x8007f490 */ nop
/* 0x8007f494 */ jal	0x8007f06c
/* 0x8007f498 */ nop
/* 0x8007f49c */ lw	$v1,-1676($s1)
/* 0x8007f4a0 */ nop
/* 0x8007f4a4 */ beq	$v1,$v0,.L8007f4bc
/* 0x8007f4a8 */ addiu $a0,$zero,254
/* 0x8007f4ac */ lui	$v0,0x800e
/* 0x8007f4b0 */ sw	$zero,-1680($v0)
/* 0x8007f4b4 */ jal	0x8002a8b0
/* 0x8007f4b8 */ sw	$s0,-1676($s1)
.L8007f4bc:
/* 0x8007f4bc */ lw	$ra,24($sp)
/* 0x8007f4c0 */ lw	$s1,20($sp)
/* 0x8007f4c4 */ lw	$s0,16($sp)
/* 0x8007f4c8 */ addu $v0,$zero,$zero
/* 0x8007f4cc */ jr $ra
/* 0x8007f4d0 */ addiu	$sp,$sp,32
.size FUN_8007f334, .-FUN_8007f334



