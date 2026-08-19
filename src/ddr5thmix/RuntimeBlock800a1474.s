.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a1474
.globl FUN_800a1474
.type FUN_800a1474, @function
FUN_800a1474:
.L800a1474:
/* 0x800a1474 */ addiu	$sp,$sp,-32
.L800a1478:
/* 0x800a1478 */ sw	$s0,16($sp)
.L800a147c:
/* 0x800a147c */ lui	$s0,0x800e
.L800a1480:
/* 0x800a1480 */ lbu	$v1,5528($s0)
.L800a1484:
/* 0x800a1484 */ addu	$a1,$a0,$zero
.L800a1488:
/* 0x800a1488 */ sw	$s2,24($sp)
.L800a148c:
/* 0x800a148c */ addu	$s2,$zero,$zero
.L800a1490:
/* 0x800a1490 */ sw	$s1,20($sp)
.L800a1494:
/* 0x800a1494 */ addiu	$s1,$zero,1
.L800a1498:
/* 0x800a1498 */ beq	$v1,$s1,.L800a14ec
.L800a149c:
/* 0x800a149c */ sw	$ra,28($sp)
.L800a14a0:
/* 0x800a14a0 */ slti	$v0,$v1,2
.L800a14a4:
/* 0x800a14a4 */ beq	$v0,$zero,.L800a14bc
.L800a14a8:
/* 0x800a14a8 */ addiu	$v0,$zero,2
.L800a14ac:
/* 0x800a14ac */ beq	$v1,$zero,.L800a14d4
.L800a14b0:
/* 0x800a14b0 */ addu	$v0,$s2,$zero
.L800a14b4:
/* 0x800a14b4 */ j	.L800a1530
.L800a14b8:
/* 0x800a14b8 */ sll	$zero,$zero,0x0
.L800a14bc:
/* 0x800a14bc */ beq	$v1,$v0,.L800a150c
.L800a14c0:
/* 0x800a14c0 */ addiu	$v0,$zero,255
.L800a14c4:
/* 0x800a14c4 */ beq	$v1,$v0,.L800a1528
.L800a14c8:
/* 0x800a14c8 */ addu	$v0,$s2,$zero
.L800a14cc:
/* 0x800a14cc */ j	.L800a1530
.L800a14d0:
/* 0x800a14d0 */ sll	$zero,$zero,0x0
.L800a14d4:
/* 0x800a14d4 */ jal	0x80021010
.L800a14d8:
/* 0x800a14d8 */ sll	$zero,$zero,0x0
.L800a14dc:
/* 0x800a14dc */ bne	$v0,$zero,.L800a1530
.L800a14e0:
/* 0x800a14e0 */ addu	$v0,$s2,$zero
.L800a14e4:
/* 0x800a14e4 */ j	.L800a1530
.L800a14e8:
/* 0x800a14e8 */ sb	$s1,5528($s0)
.L800a14ec:
/* 0x800a14ec */ lui	$a0,0x800b
.L800a14f0:
/* 0x800a14f0 */ jal	0x80020d24
.L800a14f4:
/* 0x800a14f4 */ addiu	$a0,$a0,-13232
.L800a14f8:
/* 0x800a14f8 */ bne	$v0,$zero,.L800a1530
.L800a14fc:
/* 0x800a14fc */ addu	$v0,$s2,$zero
.L800a1500:
/* 0x800a1500 */ addiu	$v0,$zero,2
.L800a1504:
/* 0x800a1504 */ j	.L800a152c
.L800a1508:
/* 0x800a1508 */ sb	$v0,5528($s0)
.L800a150c:
/* 0x800a150c */ jal	0x80021010
.L800a1510:
/* 0x800a1510 */ sll	$zero,$zero,0x0
.L800a1514:
/* 0x800a1514 */ bne	$v0,$zero,.L800a1530
.L800a1518:
/* 0x800a1518 */ addu	$v0,$s2,$zero
.L800a151c:
/* 0x800a151c */ addiu	$v0,$zero,255
.L800a1520:
/* 0x800a1520 */ j	.L800a152c
.L800a1524:
/* 0x800a1524 */ sb	$v0,5528($s0)
.L800a1528:
/* 0x800a1528 */ addiu	$s2,$zero,1
.L800a152c:
/* 0x800a152c */ addu	$v0,$s2,$zero
.L800a1530:
/* 0x800a1530 */ lw	$ra,28($sp)
.L800a1534:
/* 0x800a1534 */ lw	$s2,24($sp)
.L800a1538:
/* 0x800a1538 */ lw	$s1,20($sp)
.L800a153c:
/* 0x800a153c */ lw	$s0,16($sp)
.L800a1540:
/* 0x800a1540 */ jr	$ra
.L800a1544:
/* 0x800a1544 */ addiu	$sp,$sp,32
.size FUN_800a1474, .-FUN_800a1474
