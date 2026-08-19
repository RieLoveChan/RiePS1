.set noreorder
.set noat
.set nomacro

.section .text.FUN_8004b554
.globl FUN_8004b554
.type FUN_8004b554, @function
FUN_8004b554:
.L8004b554:
/* 0x8004b554 */ lui	$v0,0x800f
.L8004b558:
/* 0x8004b558 */ lhu	$v1,10504($v0)
.L8004b55c:
/* 0x8004b55c */ addiu	$sp,$sp,-40
.L8004b560:
/* 0x8004b560 */ sw	$s0,32($sp)
.L8004b564:
/* 0x8004b564 */ sw	$ra,36($sp)
.L8004b568:
/* 0x8004b568 */ jal	0x80049b84
.L8004b56c:
/* 0x8004b56c */ addu	$s0,$a0,$zero
.L8004b570:
/* 0x8004b570 */ sw	$v0,16($sp)
.L8004b574:
/* 0x8004b574 */ jal	0x80049b84
.L8004b578:
/* 0x8004b578 */ sll	$zero,$zero,0x0
.L8004b57c:
/* 0x8004b57c */ lw	$v1,16($sp)
.L8004b580:
/* 0x8004b580 */ sll	$zero,$zero,0x0
.L8004b584:
/* 0x8004b584 */ mult	$v1,$v0
.L8004b588:
/* 0x8004b588 */ lui	$v0,0x800e
.L8004b58c:
/* 0x8004b58c */ addiu	$v1,$v0,15192
.L8004b590:
/* 0x8004b590 */ lw	$v0,8($v1)
.L8004b594:
/* 0x8004b594 */ sll	$zero,$zero,0x0
.L8004b598:
/* 0x8004b598 */ andi	$v0,$v0,0x820
.L8004b59c:
/* 0x8004b59c */ mflo	$t0
.L8004b5a0:
/* 0x8004b5a0 */ sw	$t0,16($sp)
.L8004b5a4:
/* 0x8004b5a4 */ bne	$v0,$zero,.L8004b5c0
.L8004b5a8:
/* 0x8004b5a8 */ lui	$v0,0x8011
.L8004b5ac:
/* 0x8004b5ac */ lw	$v0,24($v1)
.L8004b5b0:
/* 0x8004b5b0 */ sll	$zero,$zero,0x0
.L8004b5b4:
/* 0x8004b5b4 */ andi	$v0,$v0,0x820
.L8004b5b8:
/* 0x8004b5b8 */ beq	$v0,$zero,.L8004b638
.L8004b5bc:
/* 0x8004b5bc */ lui	$v0,0x8011
.L8004b5c0:
/* 0x8004b5c0 */ addiu	$a0,$v0,27296
.L8004b5c4:
/* 0x8004b5c4 */ lw	$v1,392($a0)
.L8004b5c8:
/* 0x8004b5c8 */ sll	$zero,$zero,0x0
.L8004b5cc:
/* 0x8004b5cc */ andi	$v0,$v1,0xf0
.L8004b5d0:
/* 0x8004b5d0 */ bne	$v0,$zero,.L8004b5ec
.L8004b5d4:
/* 0x8004b5d4 */ addu	$a1,$zero,$zero
.L8004b5d8:
/* 0x8004b5d8 */ addiu	$v0,$zero,-241
.L8004b5dc:
/* 0x8004b5dc */ and	$v0,$v1,$v0
.L8004b5e0:
/* 0x8004b5e0 */ ori	$v0,$v0,0x20
.L8004b5e4:
/* 0x8004b5e4 */ j	.L8004b61c
.L8004b5e8:
/* 0x8004b5e8 */ sw	$v0,392($a0)
.L8004b5ec:
/* 0x8004b5ec */ addiu	$a0,$sp,24
.L8004b5f0:
/* 0x8004b5f0 */ addiu	$v0,$zero,640
.L8004b5f4:
/* 0x8004b5f4 */ sh	$v0,28($sp)
.L8004b5f8:
/* 0x8004b5f8 */ addiu	$v0,$zero,480
.L8004b5fc:
/* 0x8004b5fc */ addu	$a2,$a1,$zero
.L8004b600:
/* 0x8004b600 */ addu	$a3,$a1,$zero
.L8004b604:
/* 0x8004b604 */ sh	$zero,24($sp)
.L8004b608:
/* 0x8004b608 */ sh	$zero,26($sp)
.L8004b60c:
/* 0x8004b60c */ jal	0x80038778
.L8004b610:
/* 0x8004b610 */ sh	$v0,30($sp)
.L8004b614:
/* 0x8004b614 */ jal	0x80038564
.L8004b618:
/* 0x8004b618 */ addu	$a0,$zero,$zero
.L8004b61c:
/* 0x8004b61c */ lui	$v1,0x8011
.L8004b620:
/* 0x8004b620 */ addiu	$v0,$zero,1
.L8004b624:
/* 0x8004b624 */ sb	$v0,27685($v1)
.L8004b628:
/* 0x8004b628 */ jal	0x80028358
.L8004b62c:
/* 0x8004b62c */ addiu	$a0,$zero,781
.L8004b630:
/* 0x8004b630 */ j	.L8004b644
.L8004b634:
/* 0x8004b634 */ addiu	$v0,$zero,1
.L8004b638:
/* 0x8004b638 */ jal	0x80053f68
.L8004b63c:
/* 0x8004b63c */ addiu	$a0,$s0,4
.L8004b640:
/* 0x8004b640 */ addu	$v0,$zero,$zero
.L8004b644:
/* 0x8004b644 */ lw	$ra,36($sp)
.L8004b648:
/* 0x8004b648 */ lw	$s0,32($sp)
.L8004b64c:
/* 0x8004b64c */ jr	$ra
.L8004b650:
/* 0x8004b650 */ addiu	$sp,$sp,40
.size FUN_8004b554, .-FUN_8004b554
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8004b654
.globl FUN_8004b654
.type FUN_8004b654, @function
FUN_8004b654:
.L8004b654:
/* 0x8004b654 */ lui	$v0,0x800f
.L8004b658:
/* 0x8004b658 */ lw	$v1,10492($v0)
.L8004b65c:
/* 0x8004b65c */ addiu	$sp,$sp,-40
.L8004b660:
/* 0x8004b660 */ sw	$ra,32($sp)
.L8004b664:
/* 0x8004b664 */ sw	$s1,28($sp)
.L8004b668:
/* 0x8004b668 */ bne	$v1,$zero,.L8004b6b4
.L8004b66c:
/* 0x8004b66c */ sw	$s0,24($sp)
.L8004b670:
/* 0x8004b670 */ lui	$v0,0x8002
.L8004b674:
/* 0x8004b674 */ addiu	$t3,$v0,-17004
.L8004b678:
/* 0x8004b678 */ lwl	$t0,3($t3)
.L8004b67c:
/* 0x8004b67c */ lwr	$t0,0($t3)
.L8004b680:
/* 0x8004b680 */ lwl	$t1,7($t3)
.L8004b684:
/* 0x8004b684 */ lwr	$t1,4($t3)
.L8004b688:
/* 0x8004b688 */ swl	$t0,19($sp)
.L8004b68c:
/* 0x8004b68c */ swr	$t0,16($sp)
.L8004b690:
/* 0x8004b690 */ swl	$t1,23($sp)
.L8004b694:
/* 0x8004b694 */ swr	$t1,20($sp)
.L8004b698:
/* 0x8004b698 */ addiu	$a0,$sp,16
.L8004b69c:
/* 0x8004b69c */ addu	$a1,$zero,$zero
.L8004b6a0:
/* 0x8004b6a0 */ addu	$a2,$a1,$zero
.L8004b6a4:
/* 0x8004b6a4 */ jal	0x80038778
.L8004b6a8:
/* 0x8004b6a8 */ addu	$a3,$a1,$zero
.L8004b6ac:
/* 0x8004b6ac */ j	.L8004b7ec
.L8004b6b0:
/* 0x8004b6b0 */ addiu	$v0,$zero,1
.L8004b6b4:
/* 0x8004b6b4 */ addiu	$v0,$zero,1
.L8004b6b8:
/* 0x8004b6b8 */ bne	$v1,$v0,.L8004b6d8
.L8004b6bc:
/* 0x8004b6bc */ lui	$v0,0x8011
.L8004b6c0:
/* 0x8004b6c0 */ addiu	$v0,$v0,27296
.L8004b6c4:
/* 0x8004b6c4 */ lw	$v1,392($v0)
.L8004b6c8:
/* 0x8004b6c8 */ addiu	$a0,$zero,-241
.L8004b6cc:
/* 0x8004b6cc */ and	$v1,$v1,$a0
.L8004b6d0:
/* 0x8004b6d0 */ ori	$v1,$v1,0x20
.L8004b6d4:
/* 0x8004b6d4 */ sw	$v1,392($v0)
.L8004b6d8:
/* 0x8004b6d8 */ jal	0x80050e5c
.L8004b6dc:
/* 0x8004b6dc */ sll	$zero,$zero,0x0
.L8004b6e0:
/* 0x8004b6e0 */ lui	$v1,0x800f
.L8004b6e4:
/* 0x8004b6e4 */ sb	$zero,10527($v1)
.L8004b6e8:
/* 0x8004b6e8 */ addiu	$v1,$v0,-1
.L8004b6ec:
/* 0x8004b6ec */ sltiu	$v0,$v1,13
.L8004b6f0:
/* 0x8004b6f0 */ beq	$v0,$zero,.L8004b7e4
.L8004b6f4:
/* 0x8004b6f4 */ lui	$v0,0x8002
.L8004b6f8:
/* 0x8004b6f8 */ addiu	$v0,$v0,-16996
.L8004b6fc:
/* 0x8004b6fc */ sll	$v1,$v1,0x2
.L8004b700:
/* 0x8004b700 */ addu	$v1,$v1,$v0
.L8004b704:
/* 0x8004b704 */ lw	$v0,0($v1)
.L8004b708:
/* 0x8004b708 */ sll	$zero,$zero,0x0
.L8004b70c:
/* 0x8004b70c */ jr	$v0
.L8004b710:
/* 0x8004b710 */ sll	$zero,$zero,0x0
.L8004b714:
/* 0x8004b714 */ lui	$v0,0x800b
.L8004b718:
/* 0x8004b718 */ addiu	$s1,$zero,2
.L8004b71c:
/* 0x8004b71c */ lui	$s0,0x800f
.L8004b720:
/* 0x8004b720 */ lw	$v0,-14104($v0)
.L8004b724:
/* 0x8004b724 */ addiu	$s0,$s0,10504
.L8004b728:
/* 0x8004b728 */ sb	$zero,258($v0)
.L8004b72c:
/* 0x8004b72c */ lui	$v0,0x1
.L8004b730:
/* 0x8004b730 */ addu	$v0,$s0,$v0
.L8004b734:
/* 0x8004b734 */ jal	0x800a0008
.L8004b738:
/* 0x8004b738 */ sb	$zero,10107($v0)
.L8004b73c:
/* 0x8004b73c */ j	.L8004b7e8
.L8004b740:
/* 0x8004b740 */ sb	$v0,23($s0)
.L8004b744:
/* 0x8004b744 */ lui	$v0,0x800b
.L8004b748:
/* 0x8004b748 */ lui	$a0,0x800f
.L8004b74c:
/* 0x8004b74c */ addiu	$a0,$a0,10504
.L8004b750:
/* 0x8004b750 */ lui	$v1,0x1
.L8004b754:
/* 0x8004b754 */ lw	$v0,-14104($v0)
.L8004b758:
/* 0x8004b758 */ addu	$v1,$a0,$v1
.L8004b75c:
/* 0x8004b75c */ sb	$zero,258($v0)
.L8004b760:
/* 0x8004b760 */ lui	$v0,0x800e
.L8004b764:
/* 0x8004b764 */ lw	$a1,2840($v0)
.L8004b768:
/* 0x8004b768 */ addiu	$v0,$zero,1
.L8004b76c:
/* 0x8004b76c */ sb	$v0,10107($v1)
.L8004b770:
/* 0x8004b770 */ sb	$v0,23($a0)
.L8004b774:
/* 0x8004b774 */ lbu	$v0,113($a1)
.L8004b778:
/* 0x8004b778 */ addiu	$s1,$zero,2
.L8004b77c:
/* 0x8004b77c */ bne	$v0,$s1,.L8004b7ec
.L8004b780:
/* 0x8004b780 */ addu	$v0,$s1,$zero
.L8004b784:
/* 0x8004b784 */ jal	0x80026940
.L8004b788:
/* 0x8004b788 */ addiu	$a0,$zero,274
.L8004b78c:
/* 0x8004b78c */ j	.L8004b7ec
.L8004b790:
/* 0x8004b790 */ addu	$v0,$s1,$zero
.L8004b794:
/* 0x8004b794 */ j	.L8004b7e8
.L8004b798:
/* 0x8004b798 */ addiu	$s1,$zero,3
.L8004b79c:
/* 0x8004b79c */ j	.L8004b7e8
.L8004b7a0:
/* 0x8004b7a0 */ addiu	$s1,$zero,4
.L8004b7a4:
/* 0x8004b7a4 */ j	.L8004b7e8
.L8004b7a8:
/* 0x8004b7a8 */ addiu	$s1,$zero,5
.L8004b7ac:
/* 0x8004b7ac */ j	.L8004b7e8
.L8004b7b0:
/* 0x8004b7b0 */ addiu	$s1,$zero,12
.L8004b7b4:
/* 0x8004b7b4 */ j	.L8004b7e8
.L8004b7b8:
/* 0x8004b7b8 */ addiu	$s1,$zero,6
.L8004b7bc:
/* 0x8004b7bc */ j	.L8004b7e8
.L8004b7c0:
/* 0x8004b7c0 */ addiu	$s1,$zero,7
.L8004b7c4:
/* 0x8004b7c4 */ j	.L8004b7e8
.L8004b7c8:
/* 0x8004b7c8 */ addiu	$s1,$zero,8
.L8004b7cc:
/* 0x8004b7cc */ j	.L8004b7e8
.L8004b7d0:
/* 0x8004b7d0 */ addiu	$s1,$zero,9
.L8004b7d4:
/* 0x8004b7d4 */ j	.L8004b7e8
.L8004b7d8:
/* 0x8004b7d8 */ addiu	$s1,$zero,13
.L8004b7dc:
/* 0x8004b7dc */ j	.L8004b7e8
.L8004b7e0:
/* 0x8004b7e0 */ addu	$s1,$zero,$zero
.L8004b7e4:
/* 0x8004b7e4 */ addiu	$s1,$zero,1
.L8004b7e8:
/* 0x8004b7e8 */ addu	$v0,$s1,$zero
.L8004b7ec:
/* 0x8004b7ec */ lw	$ra,32($sp)
.L8004b7f0:
/* 0x8004b7f0 */ lw	$s1,28($sp)
.L8004b7f4:
/* 0x8004b7f4 */ lw	$s0,24($sp)
.L8004b7f8:
/* 0x8004b7f8 */ jr	$ra
.L8004b7fc:
/* 0x8004b7fc */ addiu	$sp,$sp,40
.size FUN_8004b654, .-FUN_8004b654
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8004ba34
.globl FUN_8004ba34
.type FUN_8004ba34, @function
FUN_8004ba34:
.L8004ba34:
/* 0x8004ba34 */ addiu	$sp,$sp,-32
.L8004ba38:
/* 0x8004ba38 */ sw	$s1,20($sp)
.L8004ba3c:
/* 0x8004ba3c */ addu	$s1,$a0,$zero
.L8004ba40:
/* 0x8004ba40 */ sw	$ra,24($sp)
.L8004ba44:
/* 0x8004ba44 */ jal	0x8002a8b0
.L8004ba48:
/* 0x8004ba48 */ sw	$s0,16($sp)
.L8004ba4c:
/* 0x8004ba4c */ jal	0x8002a8b0
.L8004ba50:
/* 0x8004ba50 */ addiu	$a0,$zero,254
.L8004ba54:
/* 0x8004ba54 */ addu	$v1,$zero,$zero
.L8004ba58:
/* 0x8004ba58 */ lui	$v0,0x8011
.L8004ba5c:
/* 0x8004ba5c */ addiu	$a2,$v0,-10336
.L8004ba60:
/* 0x8004ba60 */ lui	$v0,0x8011
.L8004ba64:
/* 0x8004ba64 */ addiu	$a1,$v0,-10344
.L8004ba68:
/* 0x8004ba68 */ lui	$v0,0x8011
.L8004ba6c:
/* 0x8004ba6c */ addiu	$a0,$v0,-10352
.L8004ba70:
/* 0x8004ba70 */ sw	$zero,0($a0)
.L8004ba74:
/* 0x8004ba74 */ sw	$zero,0($a1)
.L8004ba78:
/* 0x8004ba78 */ sw	$zero,0($a2)
.L8004ba7c:
/* 0x8004ba7c */ addiu	$a2,$a2,4
.L8004ba80:
/* 0x8004ba80 */ addiu	$a1,$a1,4
.L8004ba84:
/* 0x8004ba84 */ addiu	$v1,$v1,1
.L8004ba88:
/* 0x8004ba88 */ slti	$v0,$v1,2
.L8004ba8c:
/* 0x8004ba8c */ bne	$v0,$zero,.L8004ba70
.L8004ba90:
/* 0x8004ba90 */ addiu	$a0,$a0,4
.L8004ba94:
/* 0x8004ba94 */ addu	$v1,$zero,$zero
.L8004ba98:
/* 0x8004ba98 */ lui	$v0,0x800f
.L8004ba9c:
/* 0x8004ba9c */ addiu	$a1,$v0,10504
.L8004baa0:
/* 0x8004baa0 */ lui	$a0,0x1
.L8004baa4:
/* 0x8004baa4 */ addu	$v0,$v1,$a1
.L8004baa8:
/* 0x8004baa8 */ addu	$v0,$v0,$a0
.L8004baac:
/* 0x8004baac */ sb	$zero,9512($v0)
.L8004bab0:
/* 0x8004bab0 */ addiu	$v1,$v1,1
.L8004bab4:
/* 0x8004bab4 */ slti	$v0,$v1,160
.L8004bab8:
/* 0x8004bab8 */ bne	$v0,$zero,.L8004baa8
.L8004babc:
/* 0x8004babc */ addu	$v0,$v1,$a1
.L8004bac0:
/* 0x8004bac0 */ lui	$s0,0x800f
.L8004bac4:
/* 0x8004bac4 */ addiu	$s0,$s0,10504
.L8004bac8:
/* 0x8004bac8 */ jal	0x8002a8b0
.L8004bacc:
/* 0x8004bacc */ sb	$zero,23($s0)
.L8004bad0:
/* 0x8004bad0 */ jal	0x8002a8b0
.L8004bad4:
/* 0x8004bad4 */ sll	$zero,$zero,0x0
.L8004bad8:
/* 0x8004bad8 */ addu	$a0,$zero,$zero
.L8004badc:
/* 0x8004badc */ addiu	$a2,$zero,17
.L8004bae0:
/* 0x8004bae0 */ addiu	$a1,$zero,1
.L8004bae4:
/* 0x8004bae4 */ addiu	$t0,$zero,-1
.L8004bae8:
/* 0x8004bae8 */ addiu	$a3,$zero,-4
.L8004baec:
/* 0x8004baec */ addu	$v0,$t0,$zero
.L8004baf0:
/* 0x8004baf0 */ sh	$zero,18($s0)
.L8004baf4:
/* 0x8004baf4 */ sb	$zero,20($s0)
.L8004baf8:
/* 0x8004baf8 */ sh	$v0,12($s0)
.L8004bafc:
/* 0x8004bafc */ sh	$v0,28($s0)
.L8004bb00:
/* 0x8004bb00 */ sb	$zero,8($s0)
.L8004bb04:
/* 0x8004bb04 */ sb	$zero,9($s0)
.L8004bb08:
/* 0x8004bb08 */ sb	$zero,10($s0)
.L8004bb0c:
/* 0x8004bb0c */ sb	$zero,11($s0)
.L8004bb10:
/* 0x8004bb10 */ addiu	$a0,$a0,1
.L8004bb14:
/* 0x8004bb14 */ lw	$v1,152($s0)
.L8004bb18:
/* 0x8004bb18 */ addiu	$v0,$zero,-5
.L8004bb1c:
/* 0x8004bb1c */ sb	$zero,36($s0)
.L8004bb20:
/* 0x8004bb20 */ sb	$a2,37($s0)
.L8004bb24:
/* 0x8004bb24 */ sb	$zero,38($s0)
.L8004bb28:
/* 0x8004bb28 */ sb	$a2,39($s0)
.L8004bb2c:
/* 0x8004bb2c */ sb	$zero,43($s0)
.L8004bb30:
/* 0x8004bb30 */ sb	$zero,44($s0)
.L8004bb34:
/* 0x8004bb34 */ sb	$zero,45($s0)
.L8004bb38:
/* 0x8004bb38 */ sb	$a1,144($s0)
.L8004bb3c:
/* 0x8004bb3c */ sb	$a1,145($s0)
.L8004bb40:
/* 0x8004bb40 */ sb	$zero,146($s0)
.L8004bb44:
/* 0x8004bb44 */ sb	$zero,147($s0)
.L8004bb48:
/* 0x8004bb48 */ sb	$zero,148($s0)
.L8004bb4c:
/* 0x8004bb4c */ sh	$t0,150($s0)
.L8004bb50:
/* 0x8004bb50 */ and	$v1,$v1,$a3
.L8004bb54:
/* 0x8004bb54 */ and	$v1,$v1,$v0
.L8004bb58:
/* 0x8004bb58 */ addiu	$v0,$zero,-9
.L8004bb5c:
/* 0x8004bb5c */ and	$v1,$v1,$v0
.L8004bb60:
/* 0x8004bb60 */ ori	$v0,$zero,0x9284
.L8004bb64:
/* 0x8004bb64 */ sw	$v1,152($s0)
.L8004bb68:
/* 0x8004bb68 */ addu	$s0,$s0,$v0
.L8004bb6c:
/* 0x8004bb6c */ slti	$v0,$a0,2
.L8004bb70:
/* 0x8004bb70 */ bne	$v0,$zero,.L8004bb14
.L8004bb74:
/* 0x8004bb74 */ addiu	$a0,$a0,1
.L8004bb78:
/* 0x8004bb78 */ addu	$a0,$s1,$zero
.L8004bb7c:
/* 0x8004bb7c */ lui	$v1,0x800f
.L8004bb80:
/* 0x8004bb80 */ addiu	$v0,$zero,29
.L8004bb84:
/* 0x8004bb84 */ sh	$v0,10504($v1)
.L8004bb88:
/* 0x8004bb88 */ lui	$v0,0x800e
.L8004bb8c:
/* 0x8004bb8c */ sw	$zero,0($a0)
.L8004bb90:
/* 0x8004bb90 */ lw	$v0,-25912($v0)
.L8004bb94:
/* 0x8004bb94 */ sll	$zero,$zero,0x0
.L8004bb98:
/* 0x8004bb98 */ jalr	$v0
.L8004bb9c:
/* 0x8004bb9c */ addu	$a1,$zero,$zero
.L8004bba0:
/* 0x8004bba0 */ lw	$ra,24($sp)
.L8004bba4:
/* 0x8004bba4 */ lw	$s1,20($sp)
.L8004bba8:
/* 0x8004bba8 */ lw	$s0,16($sp)
.L8004bbac:
/* 0x8004bbac */ jr	$ra
.L8004bbb0:
/* 0x8004bbb0 */ addiu	$sp,$sp,32
.size FUN_8004ba34, .-FUN_8004ba34
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8004bbb4
.globl FUN_8004bbb4
.type FUN_8004bbb4, @function
FUN_8004bbb4:
.L8004bbb4:
/* 0x8004bbb4 */ addiu	$sp,$sp,-32
.L8004bbb8:
/* 0x8004bbb8 */ sw	$s1,20($sp)
.L8004bbbc:
/* 0x8004bbbc */ addu	$s1,$a0,$zero
.L8004bbc0:
/* 0x8004bbc0 */ sw	$ra,28($sp)
.L8004bbc4:
/* 0x8004bbc4 */ sw	$s2,24($sp)
.L8004bbc8:
/* 0x8004bbc8 */ jal	0x8002a8b0
.L8004bbcc:
/* 0x8004bbcc */ sw	$s0,16($sp)
.L8004bbd0:
/* 0x8004bbd0 */ lui	$v0,0x800e
.L8004bbd4:
/* 0x8004bbd4 */ lw	$v1,0($s1)
.L8004bbd8:
/* 0x8004bbd8 */ addiu	$s2,$v0,-25912
.L8004bbdc:
/* 0x8004bbdc */ sll	$v1,$v1,0x2
.L8004bbe0:
/* 0x8004bbe0 */ addu	$v1,$v1,$s2
.L8004bbe4:
/* 0x8004bbe4 */ lw	$v0,56($v1)
.L8004bbe8:
/* 0x8004bbe8 */ sll	$zero,$zero,0x0
.L8004bbec:
/* 0x8004bbec */ jalr	$v0
.L8004bbf0:
/* 0x8004bbf0 */ addu	$a0,$s1,$zero
.L8004bbf4:
/* 0x8004bbf4 */ lw	$v1,0($s1)
.L8004bbf8:
/* 0x8004bbf8 */ addu	$s0,$v0,$zero
.L8004bbfc:
/* 0x8004bbfc */ beq	$s0,$v1,.L8004bc3c
.L8004bc00:
/* 0x8004bc00 */ sll	$v0,$v1,0x2
.L8004bc04:
/* 0x8004bc04 */ addu	$a0,$s1,$zero
.L8004bc08:
/* 0x8004bc08 */ addu	$v0,$v0,$s2
.L8004bc0c:
/* 0x8004bc0c */ lw	$v0,112($v0)
.L8004bc10:
/* 0x8004bc10 */ sll	$zero,$zero,0x0
.L8004bc14:
/* 0x8004bc14 */ jalr	$v0
.L8004bc18:
/* 0x8004bc18 */ addu	$a1,$s0,$zero
.L8004bc1c:
/* 0x8004bc1c */ sll	$v0,$s0,0x2
.L8004bc20:
/* 0x8004bc20 */ addu	$v0,$v0,$s2
.L8004bc24:
/* 0x8004bc24 */ lw	$a1,0($s1)
.L8004bc28:
/* 0x8004bc28 */ lw	$v0,0($v0)
.L8004bc2c:
/* 0x8004bc2c */ sll	$zero,$zero,0x0
.L8004bc30:
/* 0x8004bc30 */ jalr	$v0
.L8004bc34:
/* 0x8004bc34 */ addu	$a0,$s1,$zero
.L8004bc38:
/* 0x8004bc38 */ sw	$s0,0($s1)
.L8004bc3c:
/* 0x8004bc3c */ lw	$ra,28($sp)
.L8004bc40:
/* 0x8004bc40 */ lw	$s2,24($sp)
.L8004bc44:
/* 0x8004bc44 */ lw	$s1,20($sp)
.L8004bc48:
/* 0x8004bc48 */ lw	$s0,16($sp)
.L8004bc4c:
/* 0x8004bc4c */ jr	$ra
.L8004bc50:
/* 0x8004bc50 */ addiu	$sp,$sp,32
.size FUN_8004bbb4, .-FUN_8004bbb4
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8004bc54
.globl FUN_8004bc54
.type FUN_8004bc54, @function
FUN_8004bc54:
.L8004bc54:
/* 0x8004bc54 */ addiu	$sp,$sp,-24
.L8004bc58:
/* 0x8004bc58 */ sw	$s0,16($sp)
.L8004bc5c:
/* 0x8004bc5c */ addu	$s0,$a0,$zero
.L8004bc60:
/* 0x8004bc60 */ lui	$v1,0x800f
.L8004bc64:
/* 0x8004bc64 */ addiu	$v0,$zero,1
.L8004bc68:
/* 0x8004bc68 */ sw	$ra,20($sp)
.L8004bc6c:
/* 0x8004bc6c */ jal	0x8002a8b0
.L8004bc70:
/* 0x8004bc70 */ sb	$v0,10497($v1)
.L8004bc74:
/* 0x8004bc74 */ lui	$v1,0x800e
.L8004bc78:
/* 0x8004bc78 */ lw	$a1,0($s0)
.L8004bc7c:
/* 0x8004bc7c */ addiu	$v1,$v1,-25912
.L8004bc80:
/* 0x8004bc80 */ sll	$v0,$a1,0x2
.L8004bc84:
/* 0x8004bc84 */ addu	$v0,$v0,$v1
.L8004bc88:
/* 0x8004bc88 */ lw	$v0,112($v0)
.L8004bc8c:
/* 0x8004bc8c */ sll	$zero,$zero,0x0
.L8004bc90:
/* 0x8004bc90 */ jalr	$v0
.L8004bc94:
/* 0x8004bc94 */ addu	$a0,$s0,$zero
.L8004bc98:
/* 0x8004bc98 */ lui	$v0,0x800f
.L8004bc9c:
/* 0x8004bc9c */ lui	$v1,0x8011
.L8004bca0:
/* 0x8004bca0 */ addiu	$v1,$v1,27296
.L8004bca4:
/* 0x8004bca4 */ sb	$zero,10527($v0)
.L8004bca8:
/* 0x8004bca8 */ lw	$v0,392($v1)
.L8004bcac:
/* 0x8004bcac */ addiu	$a0,$zero,-241
.L8004bcb0:
/* 0x8004bcb0 */ and	$v0,$v0,$a0
.L8004bcb4:
/* 0x8004bcb4 */ sw	$v0,392($v1)
.L8004bcb8:
/* 0x8004bcb8 */ lw	$ra,20($sp)
.L8004bcbc:
/* 0x8004bcbc */ lw	$s0,16($sp)
.L8004bcc0:
/* 0x8004bcc0 */ jr	$ra
.L8004bcc4:
/* 0x8004bcc4 */ addiu	$sp,$sp,24
.size FUN_8004bc54, .-FUN_8004bc54
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8004bcc8
.globl FUN_8004bcc8
.type FUN_8004bcc8, @function
FUN_8004bcc8:
.L8004bcc8:
/* 0x8004bcc8 */ addiu	$sp,$sp,-24
.L8004bccc:
/* 0x8004bccc */ lui	$v0,0x3fff
.L8004bcd0:
/* 0x8004bcd0 */ lui	$v1,0x800f
.L8004bcd4:
/* 0x8004bcd4 */ addiu	$a1,$v1,10376
.L8004bcd8:
/* 0x8004bcd8 */ sw	$ra,16($sp)
.L8004bcdc:
/* 0x8004bcdc */ lw	$v1,112($a1)
.L8004bce0:
/* 0x8004bce0 */ ori	$v0,$v0,0xffff
.L8004bce4:
/* 0x8004bce4 */ sltu	$v0,$v0,$v1
.L8004bce8:
/* 0x8004bce8 */ beq	$v0,$zero,.L8004bcf4
.L8004bcec:
/* 0x8004bcec */ sll	$zero,$zero,0x0
.L8004bcf0:
/* 0x8004bcf0 */ sw	$zero,112($a1)
.L8004bcf4:
/* 0x8004bcf4 */ jal	0x80053ed8
.L8004bcf8:
/* 0x8004bcf8 */ addiu	$a0,$a0,4
.L8004bcfc:
/* 0x8004bcfc */ lw	$ra,16($sp)
.L8004bd00:
/* 0x8004bd00 */ sll	$zero,$zero,0x0
.L8004bd04:
/* 0x8004bd04 */ jr	$ra
.L8004bd08:
/* 0x8004bd08 */ addiu	$sp,$sp,24
.size FUN_8004bcc8, .-FUN_8004bcc8
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8004bd0c
.globl FUN_8004bd0c
.type FUN_8004bd0c, @function
FUN_8004bd0c:
.L8004bd0c:
/* 0x8004bd0c */ addiu	$sp,$sp,-24
.L8004bd10:
/* 0x8004bd10 */ sw	$ra,16($sp)
.L8004bd14:
/* 0x8004bd14 */ jal	0x80054010
.L8004bd18:
/* 0x8004bd18 */ addiu	$a0,$a0,4
.L8004bd1c:
/* 0x8004bd1c */ lw	$ra,16($sp)
.L8004bd20:
/* 0x8004bd20 */ sll	$zero,$zero,0x0
.L8004bd24:
/* 0x8004bd24 */ jr	$ra
.L8004bd28:
/* 0x8004bd28 */ addiu	$sp,$sp,24
.size FUN_8004bd0c, .-FUN_8004bd0c
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8004bd2c
.globl FUN_8004bd2c
.type FUN_8004bd2c, @function
FUN_8004bd2c:
.L8004bd2c:
/* 0x8004bd2c */ addiu	$sp,$sp,-24
.L8004bd30:
/* 0x8004bd30 */ addu	$a1,$a0,$zero
.L8004bd34:
/* 0x8004bd34 */ lui	$v1,0x800f
.L8004bd38:
/* 0x8004bd38 */ addiu	$v0,$zero,28
.L8004bd3c:
/* 0x8004bd3c */ sh	$v0,10504($v1)
.L8004bd40:
/* 0x8004bd40 */ lui	$v0,0x800f
.L8004bd44:
/* 0x8004bd44 */ sw	$zero,10492($v0)
.L8004bd48:
/* 0x8004bd48 */ lui	$v0,0x800e
.L8004bd4c:
/* 0x8004bd4c */ lw	$a0,2840($v0)
.L8004bd50:
/* 0x8004bd50 */ lui	$v1,0x800e
.L8004bd54:
/* 0x8004bd54 */ sw	$ra,16($sp)
.L8004bd58:
/* 0x8004bd58 */ lbu	$v0,148($a0)
.L8004bd5c:
/* 0x8004bd5c */ addiu	$v1,$v1,15224
.L8004bd60:
/* 0x8004bd60 */ sb	$v0,84($v1)
.L8004bd64:
/* 0x8004bd64 */ lbu	$v0,152($a0)
.L8004bd68:
/* 0x8004bd68 */ addiu	$a0,$zero,1
.L8004bd6c:
/* 0x8004bd6c */ xor	$v0,$v0,$a0
.L8004bd70:
/* 0x8004bd70 */ sb	$v0,85($v1)
.L8004bd74:
/* 0x8004bd74 */ sw	$zero,12($a1)
.L8004bd78:
/* 0x8004bd78 */ sw	$zero,16($a1)
.L8004bd7c:
/* 0x8004bd7c */ sw	$zero,20($a1)
.L8004bd80:
/* 0x8004bd80 */ jal	0x8002a8b0
.L8004bd84:
/* 0x8004bd84 */ sw	$zero,24($a1)
.L8004bd88:
/* 0x8004bd88 */ jal	0x8004d010
.L8004bd8c:
/* 0x8004bd8c */ sll	$zero,$zero,0x0
.L8004bd90:
/* 0x8004bd90 */ addiu	$a0,$zero,6
.L8004bd94:
/* 0x8004bd94 */ jal	0x8007b778
.L8004bd98:
/* 0x8004bd98 */ addu	$a1,$zero,$zero
.L8004bd9c:
/* 0x8004bd9c */ jal	0x800535b0
.L8004bda0:
/* 0x8004bda0 */ sll	$zero,$zero,0x0
.L8004bda4:
/* 0x8004bda4 */ lw	$ra,16($sp)
.L8004bda8:
/* 0x8004bda8 */ sll	$zero,$zero,0x0
.L8004bdac:
/* 0x8004bdac */ jr	$ra
.L8004bdb0:
/* 0x8004bdb0 */ addiu	$sp,$sp,24
.size FUN_8004bd2c, .-FUN_8004bd2c
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8004bdb4
.globl FUN_8004bdb4
.type FUN_8004bdb4, @function
FUN_8004bdb4:
.L8004bdb4:
/* 0x8004bdb4 */ addiu	$sp,$sp,-24
.L8004bdb8:
/* 0x8004bdb8 */ sw	$ra,16($sp)
.L8004bdbc:
/* 0x8004bdbc */ jal	0x8002a8b0
.L8004bdc0:
/* 0x8004bdc0 */ addiu	$a0,$zero,1
.L8004bdc4:
/* 0x8004bdc4 */ jal	0x8002a8b0
.L8004bdc8:
/* 0x8004bdc8 */ addu	$a0,$zero,$zero
.L8004bdcc:
/* 0x8004bdcc */ jal	0x8002a8b0
.L8004bdd0:
/* 0x8004bdd0 */ sll	$zero,$zero,0x0
.L8004bdd4:
/* 0x8004bdd4 */ jal	0x8004d078
.L8004bdd8:
/* 0x8004bdd8 */ sll	$zero,$zero,0x0
.L8004bddc:
/* 0x8004bddc */ lw	$ra,16($sp)
.L8004bde0:
/* 0x8004bde0 */ sll	$zero,$zero,0x0
.L8004bde4:
/* 0x8004bde4 */ jr	$ra
.L8004bde8:
/* 0x8004bde8 */ addiu	$sp,$sp,24
.size FUN_8004bdb4, .-FUN_8004bdb4
