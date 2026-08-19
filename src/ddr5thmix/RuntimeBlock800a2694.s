.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a2694
.globl FUN_800a2694
.type FUN_800a2694, @function
FUN_800a2694:
.L800a2694:
/* 0x800a2694 */ addiu	$sp,$sp,-48
.L800a2698:
/* 0x800a2698 */ sw	$s2,40($sp)
.L800a269c:
/* 0x800a269c */ addu	$s2,$a1,$zero
.L800a26a0:
/* 0x800a26a0 */ sltiu	$v0,$a0,3
.L800a26a4:
/* 0x800a26a4 */ sw	$ra,44($sp)
.L800a26a8:
/* 0x800a26a8 */ sw	$s1,36($sp)
.L800a26ac:
/* 0x800a26ac */ beq	$v0,$zero,.L800a275c
.L800a26b0:
/* 0x800a26b0 */ sw	$s0,32($sp)
.L800a26b4:
/* 0x800a26b4 */ lui	$v0,0x800e
.L800a26b8:
/* 0x800a26b8 */ addiu	$v0,$v0,5616
.L800a26bc:
/* 0x800a26bc */ sll	$s1,$a0,0x2
.L800a26c0:
/* 0x800a26c0 */ addu	$v0,$s1,$v0
.L800a26c4:
/* 0x800a26c4 */ lw	$a1,0($v0)
.L800a26c8:
/* 0x800a26c8 */ sll	$v1,$a0,0x4
.L800a26cc:
/* 0x800a26cc */ lui	$v0,0x800e
.L800a26d0:
/* 0x800a26d0 */ addiu	$v0,$v0,5568
.L800a26d4:
/* 0x800a26d4 */ beq	$a1,$zero,.L800a2714
.L800a26d8:
/* 0x800a26d8 */ addu	$s0,$v1,$v0
.L800a26dc:
/* 0x800a26dc */ addu	$a0,$a1,$zero
.L800a26e0:
/* 0x800a26e0 */ jal	0x8002a8b8
.L800a26e4:
/* 0x800a26e4 */ addu	$a1,$s2,$zero
.L800a26e8:
/* 0x800a26e8 */ addu	$a0,$s2,$zero
.L800a26ec:
/* 0x800a26ec */ addiu	$v0,$zero,-32768
.L800a26f0:
/* 0x800a26f0 */ lhu	$a1,0($s0)
.L800a26f4:
/* 0x800a26f4 */ lh	$a2,2($s0)
.L800a26f8:
/* 0x800a26f8 */ lh	$a3,4($s0)
.L800a26fc:
/* 0x800a26fc */ or	$a1,$a1,$v0
.L800a2700:
/* 0x800a2700 */ sll	$a1,$a1,0x10
.L800a2704:
/* 0x800a2704 */ lh	$v0,6($s0)
.L800a2708:
/* 0x800a2708 */ sra	$a1,$a1,0x10
.L800a270c:
/* 0x800a270c */ jal	0x800223a8
.L800a2710:
/* 0x800a2710 */ sw	$v0,16($sp)
.L800a2714:
/* 0x800a2714 */ lui	$v0,0x800e
.L800a2718:
/* 0x800a2718 */ addiu	$v0,$v0,5628
.L800a271c:
/* 0x800a271c */ addu	$v0,$s1,$v0
.L800a2720:
/* 0x800a2720 */ lw	$a1,0($v0)
.L800a2724:
/* 0x800a2724 */ sll	$zero,$zero,0x0
.L800a2728:
/* 0x800a2728 */ beq	$a1,$zero,.L800a275c
.L800a272c:
/* 0x800a272c */ sll	$zero,$zero,0x0
.L800a2730:
/* 0x800a2730 */ lhu	$v0,4($s0)
.L800a2734:
/* 0x800a2734 */ addiu	$a0,$sp,24
.L800a2738:
/* 0x800a2738 */ sh	$v0,24($sp)
.L800a273c:
/* 0x800a273c */ lhu	$v1,6($s0)
.L800a2740:
/* 0x800a2740 */ addiu	$v0,$zero,16
.L800a2744:
/* 0x800a2744 */ sh	$v0,28($sp)
.L800a2748:
/* 0x800a2748 */ sh	$v0,30($sp)
.L800a274c:
/* 0x800a274c */ jal	0x80038810
.L800a2750:
/* 0x800a2750 */ sh	$v1,26($sp)
.L800a2754:
/* 0x800a2754 */ jal	0x80038564
.L800a2758:
/* 0x800a2758 */ addu	$a0,$zero,$zero
.L800a275c:
/* 0x800a275c */ lw	$ra,44($sp)
.L800a2760:
/* 0x800a2760 */ lw	$s2,40($sp)
.L800a2764:
/* 0x800a2764 */ lw	$s1,36($sp)
.L800a2768:
/* 0x800a2768 */ lw	$s0,32($sp)
.L800a276c:
/* 0x800a276c */ jr	$ra
.L800a2770:
/* 0x800a2770 */ addiu	$sp,$sp,48
.size FUN_800a2694, .-FUN_800a2694
