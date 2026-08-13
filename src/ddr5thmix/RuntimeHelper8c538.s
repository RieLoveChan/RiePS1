.set noreorder
.set noat
.set nomacro

.section .text.FUN_8008c538
.globl FUN_8008c538
.type FUN_8008c538, @function
FUN_8008c538:
/* Runtime resource and state helper. */
.L8008c538:
/* 0x8008c538 */ addiu	$sp,$sp,-72
.L8008c53c:
/* 0x8008c53c */ sw	$s4,48($sp)
.L8008c540:
/* 0x8008c540 */ addu	$s4,$a0,$zero
.L8008c544:
/* 0x8008c544 */ sw	$s5,52($sp)
.L8008c548:
/* 0x8008c548 */ addu	$s5,$a1,$zero
.L8008c54c:
/* 0x8008c54c */ sw	$s1,36($sp)
.L8008c550:
/* 0x8008c550 */ sw	$ra,68($sp)
.L8008c554:
/* 0x8008c554 */ sw	$s8,64($sp)
.L8008c558:
/* 0x8008c558 */ sw	$s7,60($sp)
.L8008c55c:
/* 0x8008c55c */ sw	$s6,56($sp)
.L8008c560:
/* 0x8008c560 */ sw	$s3,44($sp)
.L8008c564:
/* 0x8008c564 */ sw	$s2,40($sp)
.L8008c568:
/* 0x8008c568 */ sw	$s0,32($sp)
.L8008c56c:
/* 0x8008c56c */ sw	$a3,84($sp)
.L8008c570:
/* 0x8008c570 */ lbu	$v0,1968($s4)
.L8008c574:
/* 0x8008c574 */ lw	$s6,88($sp)
.L8008c578:
/* 0x8008c578 */ beq	$v0,$zero,.L8008c598
.L8008c57c:
/* 0x8008c57c */ addu	$s1,$a2,$zero
.L8008c580:
/* 0x8008c580 */ lui	$v0,0x800f
.L8008c584:
/* 0x8008c584 */ lw	$v0,10508($v0)
.L8008c588:
/* 0x8008c588 */ sll	$zero,$zero,0x0
.L8008c58c:
/* 0x8008c58c */ lb	$a0,3($v0)
.L8008c590:
/* 0x8008c590 */ j	0x8008c628
.L8008c594:
/* 0x8008c594 */ addiu	$a1,$zero,1024
.L8008c598:
/* 0x8008c598 */ lw	$v1,1868($s4)
.L8008c59c:
/* 0x8008c59c */ sll	$zero,$zero,0x0
.L8008c5a0:
/* 0x8008c5a0 */ sra	$v0,$v1,0x1
.L8008c5a4:
/* 0x8008c5a4 */ andi	$a1,$v0,0x7ff
.L8008c5a8:
/* 0x8008c5a8 */ slti	$v0,$a1,1025
.L8008c5ac:
/* 0x8008c5ac */ bne	$v0,$zero,.L8008c5c0
.L8008c5b0:
/* 0x8008c5b0 */ addiu	$v0,$zero,1024
.L8008c5b4:
/* 0x8008c5b4 */ addiu	$v0,$zero,2048
.L8008c5b8:
/* 0x8008c5b8 */ subu	$a1,$v0,$a1
.L8008c5bc:
/* 0x8008c5bc */ addiu	$v0,$zero,1024
.L8008c5c0:
/* 0x8008c5c0 */ addiu	$a0,$v1,2048
.L8008c5c4:
/* 0x8008c5c4 */ bgez	$a0,.L8008c600
.L8008c5c8:
/* 0x8008c5c8 */ subu	$a1,$v0,$a1
.L8008c5cc:
/* 0x8008c5cc */ lw	$v1,4($s4)
.L8008c5d0:
/* 0x8008c5d0 */ negu	$v0,$a0
.L8008c5d4:
/* 0x8008c5d4 */ sll	$v1,$v1,0xc
.L8008c5d8:
/* 0x8008c5d8 */ div	$zero,$v0,$v1
.L8008c5dc:
/* 0x8008c5dc */ mfhi	$a0
.L8008c5e0:
/* 0x8008c5e0 */ sll	$zero,$zero,0x0
.L8008c5e4:
/* 0x8008c5e4 */ subu	$a0,$v1,$a0
.L8008c5e8:
/* 0x8008c5e8 */ div	$zero,$a0,$v1
.L8008c5ec:
/* 0x8008c5ec */ mfhi	$v0
.L8008c5f0:
/* 0x8008c5f0 */ sll	$zero,$zero,0x0
.L8008c5f4:
/* 0x8008c5f4 */ sra	$v0,$v0,0xc
.L8008c5f8:
/* 0x8008c5f8 */ j	0x8008c620
.L8008c5fc:
/* 0x8008c5fc */ sll	$v0,$v0,0x1
.L8008c600:
/* 0x8008c600 */ lw	$v0,4($s4)
.L8008c604:
/* 0x8008c604 */ sll	$zero,$zero,0x0
.L8008c608:
/* 0x8008c608 */ sll	$v0,$v0,0xc
.L8008c60c:
/* 0x8008c60c */ div	$zero,$a0,$v0
.L8008c610:
/* 0x8008c610 */ mfhi	$v1
.L8008c614:
/* 0x8008c614 */ sll	$zero,$zero,0x0
.L8008c618:
/* 0x8008c618 */ sra	$v1,$v1,0xc
.L8008c61c:
/* 0x8008c61c */ sll	$v0,$v1,0x1
.L8008c620:
/* 0x8008c620 */ addu	$v0,$s4,$v0
.L8008c624:
/* 0x8008c624 */ lh	$a0,22($v0)
.L8008c628:
/* 0x8008c628 */ sll	$zero,$zero,0x0
.L8008c62c:
/* 0x8008c62c */ slti	$v0,$a0,160
.L8008c630:
/* 0x8008c630 */ beq	$v0,$zero,.L8008c76c
.L8008c634:
/* 0x8008c634 */ addu	$s2,$a1,$zero
.L8008c638:
/* 0x8008c638 */ lw	$s0,84($sp)
.L8008c63c:
/* 0x8008c63c */ jal	0x8007ee38
.L8008c640:
/* 0x8008c640 */ addu	$s3,$s1,$zero
.L8008c644:
/* 0x8008c644 */ lb	$a1,2($v0)
.L8008c648:
/* 0x8008c648 */ bgez	$s0,.L8008c654
.L8008c64c:
/* 0x8008c64c */ addiu	$s8,$zero,-1
.L8008c650:
/* 0x8008c650 */ addu	$s0,$zero,$zero
.L8008c654:
/* 0x8008c654 */ slt	$v0,$s0,$s6
.L8008c658:
/* 0x8008c658 */ beq	$v0,$zero,.L8008c668
.L8008c65c:
/* 0x8008c65c */ sll	$v0,$s0,0xa
.L8008c660:
/* 0x8008c660 */ div	$zero,$v0,$s6
.L8008c664:
/* 0x8008c664 */ mflo	$s2
.L8008c668:
/* 0x8008c668 */ sll	$zero,$zero,0x0
.L8008c66c:
/* 0x8008c66c */ sll	$v0,$s2,0x7
.L8008c670:
/* 0x8008c670 */ lui	$v1,0x800e
.L8008c674:
/* 0x8008c674 */ lw	$v1,-25932($v1)
.L8008c678:
/* 0x8008c678 */ sll	$zero,$zero,0x0
.L8008c67c:
/* 0x8008c67c */ bne	$v1,$zero,.L8008c690
.L8008c680:
/* 0x8008c680 */ sra	$s7,$v0,0xa
.L8008c684:
/* 0x8008c684 */ addiu	$v0,$zero,-3
.L8008c688:
/* 0x8008c688 */ bne	$a1,$v0,.L8008c698
.L8008c68c:
/* 0x8008c68c */ sll	$zero,$zero,0x0
.L8008c690:
/* 0x8008c690 */ j	0x8008c768
.L8008c694:
/* 0x8008c694 */ addu	$a2,$s1,$zero
.L8008c698:
/* 0x8008c698 */ beq	$a1,$zero,.L8008c6bc
.L8008c69c:
/* 0x8008c69c */ addiu	$a0,$zero,46
.L8008c6a0:
/* 0x8008c6a0 */ addiu	$v0,$zero,-4
.L8008c6a4:
/* 0x8008c6a4 */ beq	$a1,$v0,.L8008c6bc
.L8008c6a8:
/* 0x8008c6a8 */ addiu	$a0,$zero,47
.L8008c6ac:
/* 0x8008c6ac */ addu	$a0,$a1,$zero
.L8008c6b0:
/* 0x8008c6b0 */ bne	$a0,$s8,.L8008c6bc
.L8008c6b4:
/* 0x8008c6b4 */ sll	$zero,$zero,0x0
.L8008c6b8:
/* 0x8008c6b8 */ addiu	$a0,$zero,48
.L8008c6bc:
/* 0x8008c6bc */ jal	0x8007bb5c
.L8008c6c0:
/* 0x8008c6c0 */ addiu	$s1,$zero,64
.L8008c6c4:
/* 0x8008c6c4 */ jal	0x80098880
.L8008c6c8:
/* 0x8008c6c8 */ addiu	$a0,$zero,69
.L8008c6cc:
/* 0x8008c6cc */ addu	$a0,$s5,$zero
.L8008c6d0:
/* 0x8008c6d0 */ addu	$s0,$v0,$zero
.L8008c6d4:
/* 0x8008c6d4 */ lh	$a2,2($s0)
.L8008c6d8:
/* 0x8008c6d8 */ lh	$a3,4($s0)
.L8008c6dc:
/* 0x8008c6dc */ addiu	$v0,$zero,40
.L8008c6e0:
/* 0x8008c6e0 */ sw	$s1,16($sp)
.L8008c6e4:
/* 0x8008c6e4 */ sw	$v0,20($sp)
.L8008c6e8:
/* 0x8008c6e8 */ lh	$v0,10($s0)
.L8008c6ec:
/* 0x8008c6ec */ addu	$a1,$s3,$zero
.L8008c6f0:
/* 0x8008c6f0 */ sw	$s8,28($sp)
.L8008c6f4:
/* 0x8008c6f4 */ jal	0x80048144
.L8008c6f8:
/* 0x8008c6f8 */ sw	$v0,24($sp)
.L8008c6fc:
/* 0x8008c6fc */ addu	$a0,$s5,$zero
.L8008c700:
/* 0x8008c700 */ lh	$a2,14($s0)
.L8008c704:
/* 0x8008c704 */ lh	$a3,16($s0)
.L8008c708:
/* 0x8008c708 */ jal	0x80049208
.L8008c70c:
/* 0x8008c70c */ addu	$a1,$s3,$zero
.L8008c710:
/* 0x8008c710 */ addu	$a0,$s5,$zero
.L8008c714:
/* 0x8008c714 */ addu	$a1,$s3,$zero
.L8008c718:
/* 0x8008c718 */ addiu	$a2,$zero,-99
.L8008c71c:
/* 0x8008c71c */ sll	$v0,$s2,0x2
.L8008c720:
/* 0x8008c720 */ addu	$v0,$v0,$s2
.L8008c724:
/* 0x8008c724 */ sll	$a3,$v0,0x2
.L8008c728:
/* 0x8008c728 */ sra	$a3,$a3,0xa
.L8008c72c:
/* 0x8008c72c */ addiu	$a3,$a3,-20
.L8008c730:
/* 0x8008c730 */ addiu	$v1,$zero,-128
.L8008c734:
/* 0x8008c734 */ subu	$a3,$v1,$a3
.L8008c738:
/* 0x8008c738 */ sll	$v0,$v0,0x3
.L8008c73c:
/* 0x8008c73c */ sra	$v0,$v0,0xa
.L8008c740:
/* 0x8008c740 */ sw	$s1,16($sp)
.L8008c744:
/* 0x8008c744 */ jal	0x80049364
.L8008c748:
/* 0x8008c748 */ sw	$v0,20($sp)
.L8008c74c:
/* 0x8008c74c */ addu	$a0,$s5,$zero
.L8008c750:
/* 0x8008c750 */ addu	$a1,$s3,$zero
.L8008c754:
/* 0x8008c754 */ addu	$a2,$s7,$zero
.L8008c758:
/* 0x8008c758 */ addu	$a3,$a2,$zero
.L8008c75c:
/* 0x8008c75c */ jal	0x800490f8
.L8008c760:
/* 0x8008c760 */ sw	$a2,16($sp)
.L8008c764:
/* 0x8008c764 */ addiu	$a2,$s3,1
.L8008c768:
/* 0x8008c768 */ addu	$s1,$a2,$zero
.L8008c76c:
/* 0x8008c76c */ addu	$a0,$s4,$zero
.L8008c770:
/* 0x8008c770 */ addu	$a1,$s5,$zero
.L8008c774:
/* 0x8008c774 */ lw	$a3,84($sp)
.L8008c778:
/* 0x8008c778 */ addu	$a2,$s1,$zero
.L8008c77c:
/* 0x8008c77c */ jal	0x8008ae04
.L8008c780:
/* 0x8008c780 */ sw	$s6,16($sp)
.L8008c784:
/* 0x8008c784 */ lw	$ra,68($sp)
.L8008c788:
/* 0x8008c788 */ lw	$s8,64($sp)
.L8008c78c:
/* 0x8008c78c */ lw	$s7,60($sp)
.L8008c790:
/* 0x8008c790 */ lw	$s6,56($sp)
.L8008c794:
/* 0x8008c794 */ lw	$s5,52($sp)
.L8008c798:
/* 0x8008c798 */ lw	$s4,48($sp)
.L8008c79c:
/* 0x8008c79c */ lw	$s3,44($sp)
.L8008c7a0:
/* 0x8008c7a0 */ lw	$s2,40($sp)
.L8008c7a4:
/* 0x8008c7a4 */ lw	$s1,36($sp)
.L8008c7a8:
/* 0x8008c7a8 */ lw	$s0,32($sp)
.L8008c7ac:
/* 0x8008c7ac */ jr	$ra
.L8008c7b0:
/* 0x8008c7b0 */ addiu	$sp,$sp,72
.size FUN_8008c538, .-FUN_8008c538
