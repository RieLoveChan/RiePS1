.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a6430
.globl FUN_800a6430
.type FUN_800a6430, @function
FUN_800a6430:
.L800a6430:
/* 0x800a6430 */ addiu	$sp,$sp,-80
.L800a6434:
/* 0x800a6434 */ lw	$v0,96($sp)
.L800a6438:
/* 0x800a6438 */ sw	$s4,56($sp)
.L800a643c:
/* 0x800a643c */ lw	$s4,104($sp)
.L800a6440:
/* 0x800a6440 */ sw	$s5,60($sp)
.L800a6444:
/* 0x800a6444 */ addu	$s5,$a2,$zero
.L800a6448:
/* 0x800a6448 */ sw	$s6,64($sp)
.L800a644c:
/* 0x800a644c */ addu	$s6,$zero,$zero
.L800a6450:
/* 0x800a6450 */ sw	$s1,44($sp)
.L800a6454:
/* 0x800a6454 */ sw	$a0,80($sp)
.L800a6458:
/* 0x800a6458 */ addu	$s1,$a0,$zero
.L800a645c:
/* 0x800a645c */ sw	$s2,48($sp)
.L800a6460:
/* 0x800a6460 */ addiu	$s2,$zero,1
.L800a6464:
/* 0x800a6464 */ sw	$s0,40($sp)
.L800a6468:
/* 0x800a6468 */ addu	$s0,$s6,$zero
.L800a646c:
/* 0x800a646c */ sw	$ra,76($sp)
.L800a6470:
/* 0x800a6470 */ sw	$s8,72($sp)
.L800a6474:
/* 0x800a6474 */ sw	$s7,68($sp)
.L800a6478:
/* 0x800a6478 */ sw	$s3,52($sp)
.L800a647c:
/* 0x800a647c */ sw	$a1,84($sp)
.L800a6480:
/* 0x800a6480 */ sw	$a3,92($sp)
.L800a6484:
/* 0x800a6484 */ sltu	$t2,$s6,$v0
.L800a6488:
/* 0x800a6488 */ addu	$s7,$a3,$v0
.L800a648c:
/* 0x800a648c */ addiu	$v1,$s7,-1
.L800a6490:
/* 0x800a6490 */ blez	$v1,.L800a64b4
.L800a6494:
/* 0x800a6494 */ sw	$t2,32($sp)
.L800a6498:
/* 0x800a6498 */ sll	$v0,$s2,0x2
.L800a649c:
/* 0x800a649c */ addu	$v0,$v0,$s2
.L800a64a0:
/* 0x800a64a0 */ sll	$s2,$v0,0x1
.L800a64a4:
/* 0x800a64a4 */ addiu	$s0,$s0,1
.L800a64a8:
/* 0x800a64a8 */ slt	$v0,$s0,$v1
.L800a64ac:
/* 0x800a64ac */ bne	$v0,$zero,.L800a649c
.L800a64b0:
/* 0x800a64b0 */ sll	$v0,$s2,0x2
.L800a64b4:
/* 0x800a64b4 */ lw	$t2,32($sp)
.L800a64b8:
/* 0x800a64b8 */ sll	$zero,$zero,0x0
.L800a64bc:
/* 0x800a64bc */ addu	$v0,$s7,$t2
.L800a64c0:
/* 0x800a64c0 */ blez	$v0,.L800a6688
.L800a64c4:
/* 0x800a64c4 */ addu	$s0,$zero,$zero
.L800a64c8:
/* 0x800a64c8 */ addiu	$s8,$zero,10
.L800a64cc:
/* 0x800a64cc */ lw	$t2,92($sp)
.L800a64d0:
/* 0x800a64d0 */ sll	$zero,$zero,0x0
.L800a64d4:
/* 0x800a64d4 */ bne	$s0,$t2,.L800a6514
.L800a64d8:
/* 0x800a64d8 */ lui	$v0,0x6666
.L800a64dc:
/* 0x800a64dc */ addu	$a0,$s1,$zero
.L800a64e0:
/* 0x800a64e0 */ lui	$a2,0x800e
.L800a64e4:
/* 0x800a64e4 */ lw	$a1,84($sp)
.L800a64e8:
/* 0x800a64e8 */ lw	$t2,100($sp)
.L800a64ec:
/* 0x800a64ec */ addiu	$a2,$a2,9040
.L800a64f0:
/* 0x800a64f0 */ sw	$s4,24($sp)
.L800a64f4:
/* 0x800a64f4 */ sw	$s8,28($sp)
.L800a64f8:
/* 0x800a64f8 */ sw	$t2,20($sp)
.L800a64fc:
/* 0x800a64fc */ lui	$t2,0x800e
.L800a6500:
/* 0x800a6500 */ addiu	$t2,$t2,9712
.L800a6504:
/* 0x800a6504 */ lh	$a3,112($t2)
.L800a6508:
/* 0x800a6508 */ lh	$v0,114($t2)
.L800a650c:
/* 0x800a650c */ j	.L800a65ac
.L800a6510:
/* 0x800a6510 */ addiu	$s1,$s1,8
.L800a6514:
/* 0x800a6514 */ div	$zero,$s5,$s2
.L800a6518:
/* 0x800a6518 */ mflo	$a3
.L800a651c:
/* 0x800a651c */ mfhi	$s5
.L800a6520:
/* 0x800a6520 */ ori	$v0,$v0,0x6667
.L800a6524:
/* 0x800a6524 */ sll	$zero,$zero,0x0
.L800a6528:
/* 0x800a6528 */ mult	$s2,$v0
.L800a652c:
/* 0x800a652c */ sra	$v0,$s2,0x1f
.L800a6530:
/* 0x800a6530 */ mfhi	$v1
.L800a6534:
/* 0x800a6534 */ sra	$v1,$v1,0x2
.L800a6538:
/* 0x800a6538 */ blez	$a3,.L800a6544
.L800a653c:
/* 0x800a653c */ subu	$s2,$v1,$v0
.L800a6540:
/* 0x800a6540 */ addiu	$s6,$zero,1
.L800a6544:
/* 0x800a6544 */ lw	$t2,92($sp)
.L800a6548:
/* 0x800a6548 */ sll	$zero,$zero,0x0
.L800a654c:
/* 0x800a654c */ slt	$v0,$s0,$t2
.L800a6550:
/* 0x800a6550 */ beq	$v0,$zero,.L800a65bc
.L800a6554:
/* 0x800a6554 */ sll	$zero,$zero,0x0
.L800a6558:
/* 0x800a6558 */ bne	$s6,$zero,.L800a656c
.L800a655c:
/* 0x800a655c */ addu	$v1,$s4,$zero
.L800a6560:
/* 0x800a6560 */ srl	$v0,$s4,0x1f
.L800a6564:
/* 0x800a6564 */ addu	$v0,$s4,$v0
.L800a6568:
/* 0x800a6568 */ sra	$v1,$v0,0x1
.L800a656c:
/* 0x800a656c */ addu	$a0,$s1,$zero
.L800a6570:
/* 0x800a6570 */ lui	$a2,0x800e
.L800a6574:
/* 0x800a6574 */ addiu	$a2,$a2,9040
.L800a6578:
/* 0x800a6578 */ addiu	$v0,$a3,16
.L800a657c:
/* 0x800a657c */ sll	$v0,$v0,0x3
.L800a6580:
/* 0x800a6580 */ lui	$t2,0x800e
.L800a6584:
/* 0x800a6584 */ addiu	$t2,$t2,9712
.L800a6588:
/* 0x800a6588 */ addu	$v0,$v0,$t2
.L800a658c:
/* 0x800a658c */ lw	$a1,84($sp)
.L800a6590:
/* 0x800a6590 */ lh	$a3,0($v0)
.L800a6594:
/* 0x800a6594 */ lh	$v0,2($v0)
.L800a6598:
/* 0x800a6598 */ lw	$t2,100($sp)
.L800a659c:
/* 0x800a659c */ addiu	$s1,$s1,16
.L800a65a0:
/* 0x800a65a0 */ sw	$v1,24($sp)
.L800a65a4:
/* 0x800a65a4 */ sw	$s8,28($sp)
.L800a65a8:
/* 0x800a65a8 */ sw	$t2,20($sp)
.L800a65ac:
/* 0x800a65ac */ jal	0x800ac2bc
.L800a65b0:
/* 0x800a65b0 */ sw	$v0,16($sp)
.L800a65b4:
/* 0x800a65b4 */ j	.L800a6670
.L800a65b8:
/* 0x800a65b8 */ sll	$zero,$zero,0x0
.L800a65bc:
/* 0x800a65bc */ bne	$s6,$zero,.L800a65d0
.L800a65c0:
/* 0x800a65c0 */ addu	$v1,$s4,$zero
.L800a65c4:
/* 0x800a65c4 */ srl	$v0,$v1,0x1f
.L800a65c8:
/* 0x800a65c8 */ addu	$v0,$v1,$v0
.L800a65cc:
/* 0x800a65cc */ sra	$v1,$v0,0x1
.L800a65d0:
/* 0x800a65d0 */ addiu	$t0,$zero,128
.L800a65d4:
/* 0x800a65d4 */ addiu	$a3,$a3,1
.L800a65d8:
/* 0x800a65d8 */ lui	$v0,0x800e
.L800a65dc:
/* 0x800a65dc */ addiu	$s3,$v0,9028
.L800a65e0:
/* 0x800a65e0 */ sltiu	$v0,$a3,12
.L800a65e4:
/* 0x800a65e4 */ bne	$v0,$zero,.L800a65f4
.L800a65e8:
/* 0x800a65e8 */ addu	$t1,$v1,$zero
.L800a65ec:
/* 0x800a65ec */ j	.L800a6668
.L800a65f0:
/* 0x800a65f0 */ addu	$v0,$zero,$zero
.L800a65f4:
/* 0x800a65f4 */ blez	$a3,.L800a661c
.L800a65f8:
/* 0x800a65f8 */ addu	$a0,$zero,$zero
.L800a65fc:
/* 0x800a65fc */ lui	$v1,0x800e
.L800a6600:
/* 0x800a6600 */ addiu	$v1,$v1,10472
.L800a6604:
/* 0x800a6604 */ lh	$v0,0($v1)
.L800a6608:
/* 0x800a6608 */ addiu	$a0,$a0,1
.L800a660c:
/* 0x800a660c */ addu	$t0,$t0,$v0
.L800a6610:
/* 0x800a6610 */ slt	$v0,$a0,$a3
.L800a6614:
/* 0x800a6614 */ bne	$v0,$zero,.L800a6604
.L800a6618:
/* 0x800a6618 */ addiu	$v1,$v1,2
.L800a661c:
/* 0x800a661c */ addu	$a0,$s1,$zero
.L800a6620:
/* 0x800a6620 */ lw	$t2,84($sp)
.L800a6624:
/* 0x800a6624 */ sll	$v0,$a3,0x1
.L800a6628:
/* 0x800a6628 */ addiu	$a1,$t2,2
.L800a662c:
/* 0x800a662c */ lui	$t2,0x800e
.L800a6630:
/* 0x800a6630 */ addiu	$t2,$t2,10472
.L800a6634:
/* 0x800a6634 */ addu	$v0,$v0,$t2
.L800a6638:
/* 0x800a6638 */ lhu	$v0,0($v0)
.L800a663c:
/* 0x800a663c */ addu	$a2,$s3,$zero
.L800a6640:
/* 0x800a6640 */ sb	$t0,6($s3)
.L800a6644:
/* 0x800a6644 */ lw	$t2,100($sp)
.L800a6648:
/* 0x800a6648 */ addu	$a3,$zero,$zero
.L800a664c:
/* 0x800a664c */ sw	$zero,16($sp)
.L800a6650:
/* 0x800a6650 */ sw	$t1,24($sp)
.L800a6654:
/* 0x800a6654 */ sw	$s8,28($sp)
.L800a6658:
/* 0x800a6658 */ sw	$t2,20($sp)
.L800a665c:
/* 0x800a665c */ jal	0x800ac2bc
.L800a6660:
/* 0x800a6660 */ sh	$v0,0($s3)
.L800a6664:
/* 0x800a6664 */ lhu	$v0,0($s3)
.L800a6668:
/* 0x800a6668 */ sll	$zero,$zero,0x0
.L800a666c:
/* 0x800a666c */ addu	$s1,$s1,$v0
.L800a6670:
/* 0x800a6670 */ lw	$t2,32($sp)
.L800a6674:
/* 0x800a6674 */ addiu	$s0,$s0,1
.L800a6678:
/* 0x800a6678 */ addu	$v0,$s7,$t2
.L800a667c:
/* 0x800a667c */ slt	$v0,$s0,$v0
.L800a6680:
/* 0x800a6680 */ bne	$v0,$zero,.L800a64cc
.L800a6684:
/* 0x800a6684 */ sll	$zero,$zero,0x0
.L800a6688:
/* 0x800a6688 */ lw	$t2,80($sp)
.L800a668c:
/* 0x800a668c */ lw	$ra,76($sp)
.L800a6690:
/* 0x800a6690 */ lw	$s8,72($sp)
.L800a6694:
/* 0x800a6694 */ lw	$s7,68($sp)
.L800a6698:
/* 0x800a6698 */ lw	$s6,64($sp)
.L800a669c:
/* 0x800a669c */ lw	$s5,60($sp)
.L800a66a0:
/* 0x800a66a0 */ lw	$s4,56($sp)
.L800a66a4:
/* 0x800a66a4 */ lw	$s3,52($sp)
.L800a66a8:
/* 0x800a66a8 */ lw	$s2,48($sp)
.L800a66ac:
/* 0x800a66ac */ lw	$s0,40($sp)
.L800a66b0:
/* 0x800a66b0 */ subu	$v0,$s1,$t2
.L800a66b4:
/* 0x800a66b4 */ lw	$s1,44($sp)
.L800a66b8:
/* 0x800a66b8 */ jr	$ra
.L800a66bc:
/* 0x800a66bc */ addiu	$sp,$sp,80
.size FUN_800a6430, .-FUN_800a6430
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a66c0
.globl FUN_800a66c0
.type FUN_800a66c0, @function
FUN_800a66c0:
.L800a66c0:
/* 0x800a66c0 */ addiu	$sp,$sp,-72
.L800a66c4:
/* 0x800a66c4 */ lw	$v0,88($sp)
.L800a66c8:
/* 0x800a66c8 */ sw	$s8,64($sp)
.L800a66cc:
/* 0x800a66cc */ lw	$s8,96($sp)
.L800a66d0:
/* 0x800a66d0 */ sw	$s4,48($sp)
.L800a66d4:
/* 0x800a66d4 */ addu	$s4,$a2,$zero
.L800a66d8:
/* 0x800a66d8 */ sw	$s3,44($sp)
.L800a66dc:
/* 0x800a66dc */ sw	$a0,72($sp)
.L800a66e0:
/* 0x800a66e0 */ addu	$s3,$a0,$zero
.L800a66e4:
/* 0x800a66e4 */ sw	$s1,36($sp)
.L800a66e8:
/* 0x800a66e8 */ addiu	$s1,$zero,1
.L800a66ec:
/* 0x800a66ec */ sw	$s0,32($sp)
.L800a66f0:
/* 0x800a66f0 */ addu	$s0,$zero,$zero
.L800a66f4:
/* 0x800a66f4 */ sw	$ra,68($sp)
.L800a66f8:
/* 0x800a66f8 */ sw	$s7,60($sp)
.L800a66fc:
/* 0x800a66fc */ sw	$s6,56($sp)
.L800a6700:
/* 0x800a6700 */ sw	$s5,52($sp)
.L800a6704:
/* 0x800a6704 */ sw	$s2,40($sp)
.L800a6708:
/* 0x800a6708 */ sw	$a1,76($sp)
.L800a670c:
/* 0x800a670c */ sw	$a3,84($sp)
.L800a6710:
/* 0x800a6710 */ addu	$s5,$a3,$v0
.L800a6714:
/* 0x800a6714 */ addiu	$v1,$s5,-1
.L800a6718:
/* 0x800a6718 */ blez	$v1,.L800a673c
.L800a671c:
/* 0x800a671c */ sltu	$s6,$s0,$v0
.L800a6720:
/* 0x800a6720 */ sll	$v0,$s1,0x2
.L800a6724:
/* 0x800a6724 */ addu	$v0,$v0,$s1
.L800a6728:
/* 0x800a6728 */ sll	$s1,$v0,0x1
.L800a672c:
/* 0x800a672c */ addiu	$s0,$s0,1
.L800a6730:
/* 0x800a6730 */ slt	$v0,$s0,$v1
.L800a6734:
/* 0x800a6734 */ bne	$v0,$zero,.L800a6724
.L800a6738:
/* 0x800a6738 */ sll	$v0,$s1,0x2
.L800a673c:
/* 0x800a673c */ addu	$v0,$s5,$s6
.L800a6740:
/* 0x800a6740 */ blez	$v0,.L800a6880
.L800a6744:
/* 0x800a6744 */ addu	$s0,$zero,$zero
.L800a6748:
/* 0x800a6748 */ lui	$v0,0x800e
.L800a674c:
/* 0x800a674c */ addiu	$s7,$v0,10472
.L800a6750:
/* 0x800a6750 */ lw	$t1,84($sp)
.L800a6754:
/* 0x800a6754 */ sll	$zero,$zero,0x0
.L800a6758:
/* 0x800a6758 */ bne	$s0,$t1,.L800a67b0
.L800a675c:
/* 0x800a675c */ lui	$v0,0x6666
.L800a6760:
/* 0x800a6760 */ addu	$a0,$s3,$zero
.L800a6764:
/* 0x800a6764 */ lui	$a2,0x800e
.L800a6768:
/* 0x800a6768 */ addiu	$a2,$a2,9040
.L800a676c:
/* 0x800a676c */ lw	$a1,76($sp)
.L800a6770:
/* 0x800a6770 */ lw	$t1,92($sp)
.L800a6774:
/* 0x800a6774 */ addiu	$v0,$zero,10
.L800a6778:
/* 0x800a6778 */ sw	$s8,24($sp)
.L800a677c:
/* 0x800a677c */ sw	$v0,28($sp)
.L800a6780:
/* 0x800a6780 */ sw	$t1,20($sp)
.L800a6784:
/* 0x800a6784 */ lui	$t1,0x800e
.L800a6788:
/* 0x800a6788 */ addiu	$t1,$t1,9712
.L800a678c:
/* 0x800a678c */ lh	$a3,112($t1)
.L800a6790:
/* 0x800a6790 */ lui	$t1,0x800e
.L800a6794:
/* 0x800a6794 */ addiu	$t1,$t1,9824
.L800a6798:
/* 0x800a6798 */ lh	$v0,2($t1)
.L800a679c:
/* 0x800a679c */ addiu	$s3,$s3,8
.L800a67a0:
/* 0x800a67a0 */ jal	0x800ac2bc
.L800a67a4:
/* 0x800a67a4 */ sw	$v0,16($sp)
.L800a67a8:
/* 0x800a67a8 */ j	.L800a6870
.L800a67ac:
/* 0x800a67ac */ addiu	$s0,$s0,1
.L800a67b0:
/* 0x800a67b0 */ div	$zero,$s4,$s1
.L800a67b4:
/* 0x800a67b4 */ mflo	$a0
.L800a67b8:
/* 0x800a67b8 */ mfhi	$s4
.L800a67bc:
/* 0x800a67bc */ ori	$v0,$v0,0x6667
.L800a67c0:
/* 0x800a67c0 */ sll	$zero,$zero,0x0
.L800a67c4:
/* 0x800a67c4 */ mult	$s1,$v0
.L800a67c8:
/* 0x800a67c8 */ sra	$v0,$s1,0x1f
.L800a67cc:
/* 0x800a67cc */ mfhi	$v1
.L800a67d0:
/* 0x800a67d0 */ sra	$v1,$v1,0x2
.L800a67d4:
/* 0x800a67d4 */ subu	$s1,$v1,$v0
.L800a67d8:
/* 0x800a67d8 */ lui	$v0,0x800e
.L800a67dc:
/* 0x800a67dc */ addiu	$s2,$v0,9028
.L800a67e0:
/* 0x800a67e0 */ addiu	$a3,$a0,1
.L800a67e4:
/* 0x800a67e4 */ sltiu	$v0,$a3,12
.L800a67e8:
/* 0x800a67e8 */ bne	$v0,$zero,.L800a67f8
.L800a67ec:
/* 0x800a67ec */ addiu	$t0,$zero,128
.L800a67f0:
/* 0x800a67f0 */ j	.L800a6864
.L800a67f4:
/* 0x800a67f4 */ addu	$v0,$zero,$zero
.L800a67f8:
/* 0x800a67f8 */ blez	$a3,.L800a681c
.L800a67fc:
/* 0x800a67fc */ addu	$a0,$zero,$zero
.L800a6800:
/* 0x800a6800 */ addu	$v1,$s7,$zero
.L800a6804:
/* 0x800a6804 */ lh	$v0,0($v1)
.L800a6808:
/* 0x800a6808 */ addiu	$a0,$a0,1
.L800a680c:
/* 0x800a680c */ addu	$t0,$t0,$v0
.L800a6810:
/* 0x800a6810 */ slt	$v0,$a0,$a3
.L800a6814:
/* 0x800a6814 */ bne	$v0,$zero,.L800a6804
.L800a6818:
/* 0x800a6818 */ addiu	$v1,$v1,2
.L800a681c:
/* 0x800a681c */ addu	$a0,$s3,$zero
.L800a6820:
/* 0x800a6820 */ addu	$a2,$s2,$zero
.L800a6824:
/* 0x800a6824 */ sll	$v0,$a3,0x1
.L800a6828:
/* 0x800a6828 */ addu	$v0,$v0,$s7
.L800a682c:
/* 0x800a682c */ lw	$t1,76($sp)
.L800a6830:
/* 0x800a6830 */ lhu	$v1,0($v0)
.L800a6834:
/* 0x800a6834 */ addu	$a3,$zero,$zero
.L800a6838:
/* 0x800a6838 */ sb	$t0,6($s2)
.L800a683c:
/* 0x800a683c */ addiu	$a1,$t1,2
.L800a6840:
/* 0x800a6840 */ lw	$t1,92($sp)
.L800a6844:
/* 0x800a6844 */ addiu	$v0,$zero,10
.L800a6848:
/* 0x800a6848 */ sw	$zero,16($sp)
.L800a684c:
/* 0x800a684c */ sw	$s8,24($sp)
.L800a6850:
/* 0x800a6850 */ sw	$v0,28($sp)
.L800a6854:
/* 0x800a6854 */ sw	$t1,20($sp)
.L800a6858:
/* 0x800a6858 */ jal	0x800ac2bc
.L800a685c:
/* 0x800a685c */ sh	$v1,0($s2)
.L800a6860:
/* 0x800a6860 */ lhu	$v0,0($s2)
.L800a6864:
/* 0x800a6864 */ sll	$zero,$zero,0x0
.L800a6868:
/* 0x800a6868 */ addu	$s3,$s3,$v0
.L800a686c:
/* 0x800a686c */ addiu	$s0,$s0,1
.L800a6870:
/* 0x800a6870 */ addu	$v0,$s5,$s6
.L800a6874:
/* 0x800a6874 */ slt	$v0,$s0,$v0
.L800a6878:
/* 0x800a6878 */ bne	$v0,$zero,.L800a6750
.L800a687c:
/* 0x800a687c */ sll	$zero,$zero,0x0
.L800a6880:
/* 0x800a6880 */ lw	$t1,72($sp)
.L800a6884:
/* 0x800a6884 */ lw	$ra,68($sp)
.L800a6888:
/* 0x800a6888 */ lw	$s8,64($sp)
.L800a688c:
/* 0x800a688c */ lw	$s7,60($sp)
.L800a6890:
/* 0x800a6890 */ lw	$s6,56($sp)
.L800a6894:
/* 0x800a6894 */ lw	$s5,52($sp)
.L800a6898:
/* 0x800a6898 */ lw	$s4,48($sp)
.L800a689c:
/* 0x800a689c */ lw	$s2,40($sp)
.L800a68a0:
/* 0x800a68a0 */ lw	$s1,36($sp)
.L800a68a4:
/* 0x800a68a4 */ lw	$s0,32($sp)
.L800a68a8:
/* 0x800a68a8 */ subu	$v0,$s3,$t1
.L800a68ac:
/* 0x800a68ac */ lw	$s3,44($sp)
.L800a68b0:
/* 0x800a68b0 */ jr	$ra
.L800a68b4:
/* 0x800a68b4 */ addiu	$sp,$sp,72
.size FUN_800a66c0, .-FUN_800a66c0
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a68b8
.globl FUN_800a68b8
.type FUN_800a68b8, @function
FUN_800a68b8:
.L800a68b8:
/* 0x800a68b8 */ addiu	$sp,$sp,-72
.L800a68bc:
/* 0x800a68bc */ lui	$v0,0x8012
.L800a68c0:
/* 0x800a68c0 */ sw	$s4,56($sp)
.L800a68c4:
/* 0x800a68c4 */ addiu	$s4,$v0,-30096
.L800a68c8:
/* 0x800a68c8 */ lui	$v0,0x800b
.L800a68cc:
/* 0x800a68cc */ lw	$v0,-14104($v0)
.L800a68d0:
/* 0x800a68d0 */ lui	$v1,0x8012
.L800a68d4:
/* 0x800a68d4 */ sw	$s6,64($sp)
.L800a68d8:
/* 0x800a68d8 */ addiu	$s6,$v1,-30112
.L800a68dc:
/* 0x800a68dc */ sw	$ra,68($sp)
.L800a68e0:
/* 0x800a68e0 */ sw	$s5,60($sp)
.L800a68e4:
/* 0x800a68e4 */ sw	$s3,52($sp)
.L800a68e8:
/* 0x800a68e8 */ sw	$s2,48($sp)
.L800a68ec:
/* 0x800a68ec */ sw	$s1,44($sp)
.L800a68f0:
/* 0x800a68f0 */ sw	$s0,40($sp)
.L800a68f4:
/* 0x800a68f4 */ lw	$v1,84($v0)
.L800a68f8:
/* 0x800a68f8 */ lw	$v0,100($v0)
.L800a68fc:
/* 0x800a68fc */ lbu	$a0,1($s4)
.L800a6900:
/* 0x800a6900 */ or	$s0,$v1,$v0
.L800a6904:
/* 0x800a6904 */ sltiu	$v0,$a0,6
.L800a6908:
/* 0x800a6908 */ beq	$v0,$zero,.L800a6ab4
.L800a690c:
/* 0x800a690c */ lui	$v0,0x8002
.L800a6910:
/* 0x800a6910 */ addiu	$v0,$v0,1564
.L800a6914:
/* 0x800a6914 */ sll	$v1,$a0,0x2
.L800a6918:
/* 0x800a6918 */ addu	$v1,$v1,$v0
.L800a691c:
/* 0x800a691c */ lw	$v0,0($v1)
.L800a6920:
/* 0x800a6920 */ sll	$zero,$zero,0x0
.L800a6924:
/* 0x800a6924 */ jr	$v0
.L800a6928:
/* 0x800a6928 */ sll	$zero,$zero,0x0
.L800a692c:
/* 0x800a692c */ lw	$v0,4($s4)
.L800a6930:
/* 0x800a6930 */ sll	$zero,$zero,0x0
.L800a6934:
/* 0x800a6934 */ bne	$v0,$zero,.L800a6950
.L800a6938:
/* 0x800a6938 */ slti	$v0,$v0,24
.L800a693c:
/* 0x800a693c */ jal	0x80028358
.L800a6940:
/* 0x800a6940 */ addiu	$a0,$zero,790
.L800a6944:
/* 0x800a6944 */ lw	$v0,4($s4)
.L800a6948:
/* 0x800a6948 */ sll	$zero,$zero,0x0
.L800a694c:
/* 0x800a694c */ slti	$v0,$v0,24
.L800a6950:
/* 0x800a6950 */ bne	$v0,$zero,.L800a6990
.L800a6954:
/* 0x800a6954 */ lui	$v0,0x8012
.L800a6958:
/* 0x800a6958 */ addiu	$v0,$zero,2
.L800a695c:
/* 0x800a695c */ sb	$v0,1($s4)
.L800a6960:
/* 0x800a6960 */ j	.L800a698c
.L800a6964:
/* 0x800a6964 */ sw	$zero,4($s4)
.L800a6968:
/* 0x800a6968 */ lw	$v0,4($s4)
.L800a696c:
/* 0x800a696c */ sll	$zero,$zero,0x0
.L800a6970:
/* 0x800a6970 */ slti	$v0,$v0,24
.L800a6974:
/* 0x800a6974 */ bne	$v0,$zero,.L800a6990
.L800a6978:
/* 0x800a6978 */ lui	$v0,0x8012
.L800a697c:
/* 0x800a697c */ lbu	$v0,1($s4)
.L800a6980:
/* 0x800a6980 */ sw	$zero,4($s4)
.L800a6984:
/* 0x800a6984 */ addiu	$v0,$v0,1
.L800a6988:
/* 0x800a6988 */ sb	$v0,1($s4)
.L800a698c:
/* 0x800a698c */ lui	$v0,0x8012
.L800a6990:
/* 0x800a6990 */ addiu	$a0,$v0,-30088
.L800a6994:
/* 0x800a6994 */ lw	$v1,8($a0)
.L800a6998:
/* 0x800a6998 */ sll	$zero,$zero,0x0
.L800a699c:
/* 0x800a699c */ slti	$v0,$v1,24
.L800a69a0:
/* 0x800a69a0 */ beq	$v0,$zero,.L800a6ab4
.L800a69a4:
/* 0x800a69a4 */ addiu	$v0,$v1,1
.L800a69a8:
/* 0x800a69a8 */ j	.L800a6ab4
.L800a69ac:
/* 0x800a69ac */ sw	$v0,8($a0)
.L800a69b0:
/* 0x800a69b0 */ lw	$v0,4($s4)
.L800a69b4:
/* 0x800a69b4 */ sll	$zero,$zero,0x0
.L800a69b8:
/* 0x800a69b8 */ slti	$v0,$v0,24
.L800a69bc:
/* 0x800a69bc */ bne	$v0,$zero,.L800a69f0
.L800a69c0:
/* 0x800a69c0 */ lui	$v0,0x8012
.L800a69c4:
/* 0x800a69c4 */ lbu	$v1,0($s4)
.L800a69c8:
/* 0x800a69c8 */ addiu	$v0,$zero,2
.L800a69cc:
/* 0x800a69cc */ bne	$v1,$v0,.L800a69d8
.L800a69d0:
/* 0x800a69d0 */ addiu	$a0,$zero,2
.L800a69d4:
/* 0x800a69d4 */ addiu	$a0,$zero,1
.L800a69d8:
/* 0x800a69d8 */ lbu	$v0,1($s4)
.L800a69dc:
/* 0x800a69dc */ sb	$a0,0($s4)
.L800a69e0:
/* 0x800a69e0 */ sw	$zero,4($s4)
.L800a69e4:
/* 0x800a69e4 */ addiu	$v0,$v0,1
.L800a69e8:
/* 0x800a69e8 */ sb	$v0,1($s4)
.L800a69ec:
/* 0x800a69ec */ lui	$v0,0x8012
.L800a69f0:
/* 0x800a69f0 */ addiu	$v1,$v0,-30088
.L800a69f4:
/* 0x800a69f4 */ lw	$v0,8($v1)
.L800a69f8:
/* 0x800a69f8 */ sll	$zero,$zero,0x0
.L800a69fc:
/* 0x800a69fc */ blez	$v0,.L800a6ab4
.L800a6a00:
/* 0x800a6a00 */ addiu	$v0,$v0,-1
.L800a6a04:
/* 0x800a6a04 */ j	.L800a6ab4
.L800a6a08:
/* 0x800a6a08 */ sw	$v0,8($v1)
.L800a6a0c:
/* 0x800a6a0c */ andi	$v0,$s0,0x100
.L800a6a10:
/* 0x800a6a10 */ beq	$v0,$zero,.L800a6a30
.L800a6a14:
/* 0x800a6a14 */ andi	$v0,$s0,0x20
.L800a6a18:
/* 0x800a6a18 */ jal	0x80026940
.L800a6a1c:
/* 0x800a6a1c */ addiu	$a0,$zero,787
.L800a6a20:
/* 0x800a6a20 */ addiu	$v0,$zero,1
.L800a6a24:
/* 0x800a6a24 */ sb	$v0,1($s4)
.L800a6a28:
/* 0x800a6a28 */ sw	$zero,4($s4)
.L800a6a2c:
/* 0x800a6a2c */ andi	$v0,$s0,0x20
.L800a6a30:
/* 0x800a6a30 */ beq	$v0,$zero,.L800a6ab8
.L800a6a34:
/* 0x800a6a34 */ lui	$v1,0x8012
.L800a6a38:
/* 0x800a6a38 */ lbu	$v0,1($s6)
.L800a6a3c:
/* 0x800a6a3c */ sll	$zero,$zero,0x0
.L800a6a40:
/* 0x800a6a40 */ beq	$v0,$zero,.L800a6a74
.L800a6a44:
/* 0x800a6a44 */ addiu	$v0,$zero,32767
.L800a6a48:
/* 0x800a6a48 */ jal	0x80026940
.L800a6a4c:
/* 0x800a6a4c */ addiu	$a0,$zero,795
.L800a6a50:
/* 0x800a6a50 */ andi	$v0,$s0,0x40
.L800a6a54:
/* 0x800a6a54 */ beq	$v0,$zero,.L800a6a64
.L800a6a58:
/* 0x800a6a58 */ sll	$zero,$zero,0x0
.L800a6a5c:
/* 0x800a6a5c */ j	.L800a6a68
.L800a6a60:
/* 0x800a6a60 */ addiu	$v0,$zero,2
.L800a6a64:
/* 0x800a6a64 */ addiu	$v0,$zero,1
.L800a6a68:
/* 0x800a6a68 */ sb	$v0,2($s4)
.L800a6a6c:
/* 0x800a6a6c */ j	.L800a6aac
.L800a6a70:
/* 0x800a6a70 */ addiu	$v0,$zero,4
.L800a6a74:
/* 0x800a6a74 */ j	.L800a6ab4
.L800a6a78:
/* 0x800a6a78 */ sw	$v0,12($s6)
.L800a6a7c:
/* 0x800a6a7c */ lui	$v0,0x8012
.L800a6a80:
/* 0x800a6a80 */ addiu	$v1,$v0,-30088
.L800a6a84:
/* 0x800a6a84 */ lw	$v0,8($v1)
.L800a6a88:
/* 0x800a6a88 */ sll	$zero,$zero,0x0
.L800a6a8c:
/* 0x800a6a8c */ blez	$v0,.L800a6a98
.L800a6a90:
/* 0x800a6a90 */ addiu	$v0,$v0,-1
.L800a6a94:
/* 0x800a6a94 */ sw	$v0,8($v1)
.L800a6a98:
/* 0x800a6a98 */ lw	$v1,4($s4)
.L800a6a9c:
/* 0x800a6a9c */ addiu	$v0,$zero,24
.L800a6aa0:
/* 0x800a6aa0 */ bne	$v1,$v0,.L800a6ab8
.L800a6aa4:
/* 0x800a6aa4 */ lui	$v1,0x8012
.L800a6aa8:
/* 0x800a6aa8 */ addiu	$v0,$zero,5
.L800a6aac:
/* 0x800a6aac */ sb	$v0,1($s4)
.L800a6ab0:
/* 0x800a6ab0 */ sw	$zero,4($s4)
.L800a6ab4:
/* 0x800a6ab4 */ lui	$v1,0x8012
.L800a6ab8:
/* 0x800a6ab8 */ lw	$v0,4($s4)
.L800a6abc:
/* 0x800a6abc */ lbu	$v1,-30095($v1)
.L800a6ac0:
/* 0x800a6ac0 */ addiu	$v0,$v0,1
.L800a6ac4:
/* 0x800a6ac4 */ beq	$v1,$zero,.L800a6ad8
.L800a6ac8:
/* 0x800a6ac8 */ sw	$v0,4($s4)
.L800a6acc:
/* 0x800a6acc */ addiu	$v0,$zero,4
.L800a6ad0:
/* 0x800a6ad0 */ bne	$v1,$v0,.L800a6b0c
.L800a6ad4:
/* 0x800a6ad4 */ lui	$v1,0x8012
.L800a6ad8:
/* 0x800a6ad8 */ lui	$v0,0x2aaa
.L800a6adc:
/* 0x800a6adc */ lui	$a0,0x8012
.L800a6ae0:
/* 0x800a6ae0 */ addiu	$a0,$a0,-30088
.L800a6ae4:
/* 0x800a6ae4 */ lw	$v1,8($a0)
.L800a6ae8:
/* 0x800a6ae8 */ ori	$v0,$v0,0xaaab
.L800a6aec:
/* 0x800a6aec */ sll	$v1,$v1,0x7
.L800a6af0:
/* 0x800a6af0 */ mult	$v1,$v0
.L800a6af4:
/* 0x800a6af4 */ sra	$v1,$v1,0x1f
.L800a6af8:
/* 0x800a6af8 */ mfhi	$t2
.L800a6afc:
/* 0x800a6afc */ sra	$v0,$t2,0x2
.L800a6b00:
/* 0x800a6b00 */ subu	$v0,$v0,$v1
.L800a6b04:
/* 0x800a6b04 */ j	.L800a6b14
.L800a6b08:
/* 0x800a6b08 */ sb	$v0,1($a0)
.L800a6b0c:
/* 0x800a6b0c */ addiu	$v0,$zero,128
.L800a6b10:
/* 0x800a6b10 */ sb	$v0,-30087($v1)
.L800a6b14:
/* 0x800a6b14 */ lbu	$v0,1($s4)
.L800a6b18:
/* 0x800a6b18 */ sll	$zero,$zero,0x0
.L800a6b1c:
/* 0x800a6b1c */ beq	$v0,$zero,.L800a6b74
.L800a6b20:
/* 0x800a6b20 */ lui	$v0,0x8012
.L800a6b24:
/* 0x800a6b24 */ lbu	$v1,-30096($v0)
.L800a6b28:
/* 0x800a6b28 */ addiu	$v0,$zero,1
.L800a6b2c:
/* 0x800a6b2c */ beq	$v1,$v0,.L800a6b74
.L800a6b30:
/* 0x800a6b30 */ slti	$v0,$v1,2
.L800a6b34:
/* 0x800a6b34 */ beq	$v0,$zero,.L800a6b4c
.L800a6b38:
/* 0x800a6b38 */ addiu	$v0,$zero,2
.L800a6b3c:
/* 0x800a6b3c */ beq	$v1,$zero,.L800a6b5c
.L800a6b40:
/* 0x800a6b40 */ sll	$zero,$zero,0x0
.L800a6b44:
/* 0x800a6b44 */ j	.L800a6b78
.L800a6b48:
/* 0x800a6b48 */ lui	$a0,0x8012
.L800a6b4c:
/* 0x800a6b4c */ beq	$v1,$v0,.L800a6b6c
.L800a6b50:
/* 0x800a6b50 */ sll	$zero,$zero,0x0
.L800a6b54:
/* 0x800a6b54 */ j	.L800a6b78
.L800a6b58:
/* 0x800a6b58 */ lui	$a0,0x8012
.L800a6b5c:
/* 0x800a6b5c */ jal	0x800aba94
.L800a6b60:
/* 0x800a6b60 */ sll	$zero,$zero,0x0
.L800a6b64:
/* 0x800a6b64 */ j	.L800a6b78
.L800a6b68:
/* 0x800a6b68 */ lui	$a0,0x8012
.L800a6b6c:
/* 0x800a6b6c */ jal	0x800a964c
.L800a6b70:
/* 0x800a6b70 */ addiu	$a0,$zero,1
.L800a6b74:
/* 0x800a6b74 */ lui	$a0,0x8012
.L800a6b78:
/* 0x800a6b78 */ jal	0x800a8bd0
.L800a6b7c:
/* 0x800a6b7c */ addiu	$a0,$a0,-30128
.L800a6b80:
/* 0x800a6b80 */ lui	$a0,0x8012
.L800a6b84:
/* 0x800a6b84 */ jal	0x800a8bbc
.L800a6b88:
/* 0x800a6b88 */ addiu	$a0,$a0,-30088
.L800a6b8c:
/* 0x800a6b8c */ addu	$a3,$zero,$zero
.L800a6b90:
/* 0x800a6b90 */ addu	$s3,$a3,$zero
.L800a6b94:
/* 0x800a6b94 */ addu	$t0,$a3,$zero
.L800a6b98:
/* 0x800a6b98 */ lbu	$v1,1($s4)
.L800a6b9c:
/* 0x800a6b9c */ addiu	$v0,$zero,2
.L800a6ba0:
/* 0x800a6ba0 */ beq	$v1,$v0,.L800a6be0
.L800a6ba4:
/* 0x800a6ba4 */ addu	$t1,$a3,$zero
.L800a6ba8:
/* 0x800a6ba8 */ slti	$v0,$v1,3
.L800a6bac:
/* 0x800a6bac */ beq	$v0,$zero,.L800a6bc4
.L800a6bb0:
/* 0x800a6bb0 */ addiu	$v0,$zero,1
.L800a6bb4:
/* 0x800a6bb4 */ beq	$v1,$v0,.L800a6c34
.L800a6bb8:
/* 0x800a6bb8 */ sll	$zero,$zero,0x0
.L800a6bbc:
/* 0x800a6bbc */ j	.L800a6ccc
.L800a6bc0:
/* 0x800a6bc0 */ addiu	$a0,$zero,16
.L800a6bc4:
/* 0x800a6bc4 */ addiu	$v0,$zero,4
.L800a6bc8:
/* 0x800a6bc8 */ beq	$v1,$v0,.L800a6c7c
.L800a6bcc:
/* 0x800a6bcc */ addiu	$v0,$zero,5
.L800a6bd0:
/* 0x800a6bd0 */ beq	$v1,$v0,.L800a6cc4
.L800a6bd4:
/* 0x800a6bd4 */ addiu	$t0,$zero,128
.L800a6bd8:
/* 0x800a6bd8 */ j	.L800a6ccc
.L800a6bdc:
/* 0x800a6bdc */ addiu	$a0,$zero,16
.L800a6be0:
/* 0x800a6be0 */ lui	$a1,0x2aaa
.L800a6be4:
/* 0x800a6be4 */ ori	$a1,$a1,0xaaab
.L800a6be8:
/* 0x800a6be8 */ lw	$a0,4($s4)
.L800a6bec:
/* 0x800a6bec */ addiu	$v1,$zero,24
.L800a6bf0:
/* 0x800a6bf0 */ subu	$v1,$v1,$a0
.L800a6bf4:
/* 0x800a6bf4 */ sll	$v1,$v1,0x7
.L800a6bf8:
/* 0x800a6bf8 */ mult	$v1,$a1
.L800a6bfc:
/* 0x800a6bfc */ sll	$v0,$a0,0x2
.L800a6c00:
/* 0x800a6c00 */ mfhi	$a2
.L800a6c04:
/* 0x800a6c04 */ addu	$v0,$v0,$a0
.L800a6c08:
/* 0x800a6c08 */ sll	$v0,$v0,0x7
.L800a6c0c:
/* 0x800a6c0c */ mult	$v0,$a1
.L800a6c10:
/* 0x800a6c10 */ sra	$v1,$v1,0x1f
.L800a6c14:
/* 0x800a6c14 */ sra	$a0,$a2,0x2
.L800a6c18:
/* 0x800a6c18 */ subu	$s3,$a0,$v1
.L800a6c1c:
/* 0x800a6c1c */ sra	$v0,$v0,0x1f
.L800a6c20:
/* 0x800a6c20 */ mfhi	$t3
.L800a6c24:
/* 0x800a6c24 */ sra	$v1,$t3,0x2
.L800a6c28:
/* 0x800a6c28 */ subu	$v1,$v1,$v0
.L800a6c2c:
/* 0x800a6c2c */ j	.L800a6cc8
.L800a6c30:
/* 0x800a6c30 */ addiu	$a3,$v1,-640
.L800a6c34:
/* 0x800a6c34 */ lui	$a1,0x2aaa
.L800a6c38:
/* 0x800a6c38 */ lw	$v1,4($s4)
.L800a6c3c:
/* 0x800a6c3c */ ori	$a1,$a1,0xaaab
.L800a6c40:
/* 0x800a6c40 */ sll	$a0,$v1,0x7
.L800a6c44:
/* 0x800a6c44 */ mult	$a0,$a1
.L800a6c48:
/* 0x800a6c48 */ sll	$v0,$v1,0x2
.L800a6c4c:
/* 0x800a6c4c */ mfhi	$a2
.L800a6c50:
/* 0x800a6c50 */ addu	$v0,$v0,$v1
.L800a6c54:
/* 0x800a6c54 */ sll	$v0,$v0,0x7
.L800a6c58:
/* 0x800a6c58 */ mult	$v0,$a1
.L800a6c5c:
/* 0x800a6c5c */ sra	$a0,$a0,0x1f
.L800a6c60:
/* 0x800a6c60 */ sra	$v1,$a2,0x2
.L800a6c64:
/* 0x800a6c64 */ subu	$s3,$v1,$a0
.L800a6c68:
/* 0x800a6c68 */ sra	$v0,$v0,0x1f
.L800a6c6c:
/* 0x800a6c6c */ mfhi	$t3
.L800a6c70:
/* 0x800a6c70 */ sra	$v1,$t3,0x2
.L800a6c74:
/* 0x800a6c74 */ j	.L800a6cc8
.L800a6c78:
/* 0x800a6c78 */ subu	$a3,$v1,$v0
.L800a6c7c:
/* 0x800a6c7c */ lui	$a1,0x2aaa
.L800a6c80:
/* 0x800a6c80 */ lw	$v1,4($s4)
.L800a6c84:
/* 0x800a6c84 */ ori	$a1,$a1,0xaaab
.L800a6c88:
/* 0x800a6c88 */ sll	$a0,$v1,0x7
.L800a6c8c:
/* 0x800a6c8c */ mult	$a0,$a1
.L800a6c90:
/* 0x800a6c90 */ sll	$v0,$v1,0x2
.L800a6c94:
/* 0x800a6c94 */ mfhi	$a2
.L800a6c98:
/* 0x800a6c98 */ addu	$v0,$v0,$v1
.L800a6c9c:
/* 0x800a6c9c */ sll	$v0,$v0,0x7
.L800a6ca0:
/* 0x800a6ca0 */ mult	$v0,$a1
.L800a6ca4:
/* 0x800a6ca4 */ sra	$a0,$a0,0x1f
.L800a6ca8:
/* 0x800a6ca8 */ sra	$v1,$a2,0x2
.L800a6cac:
/* 0x800a6cac */ subu	$t0,$v1,$a0
.L800a6cb0:
/* 0x800a6cb0 */ sra	$v0,$v0,0x1f
.L800a6cb4:
/* 0x800a6cb4 */ mfhi	$t1
.L800a6cb8:
/* 0x800a6cb8 */ sra	$v1,$t1,0x2
.L800a6cbc:
/* 0x800a6cbc */ j	.L800a6cc8
.L800a6cc0:
/* 0x800a6cc0 */ subu	$t1,$v1,$v0
.L800a6cc4:
/* 0x800a6cc4 */ addiu	$t1,$zero,640
.L800a6cc8:
/* 0x800a6cc8 */ addiu	$a0,$zero,16
.L800a6ccc:
/* 0x800a6ccc */ addiu	$a1,$zero,-124
.L800a6cd0:
/* 0x800a6cd0 */ lui	$s2,0x800e
.L800a6cd4:
/* 0x800a6cd4 */ addiu	$s1,$s2,9160
.L800a6cd8:
/* 0x800a6cd8 */ addiu	$a2,$s1,-12
.L800a6cdc:
/* 0x800a6cdc */ lui	$v0,0x8012
.L800a6ce0:
/* 0x800a6ce0 */ addiu	$s5,$v0,-30088
.L800a6ce4:
/* 0x800a6ce4 */ addu	$a3,$zero,$zero
.L800a6ce8:
/* 0x800a6ce8 */ lbu	$s3,1($s5)
.L800a6cec:
/* 0x800a6cec */ addiu	$s0,$zero,10
.L800a6cf0:
/* 0x800a6cf0 */ sw	$zero,16($sp)
.L800a6cf4:
/* 0x800a6cf4 */ sw	$zero,20($sp)
.L800a6cf8:
/* 0x800a6cf8 */ sw	$s0,28($sp)
.L800a6cfc:
/* 0x800a6cfc */ jal	0x800ac2bc
.L800a6d00:
/* 0x800a6d00 */ sw	$s3,24($sp)
.L800a6d04:
/* 0x800a6d04 */ addiu	$a1,$zero,-124
.L800a6d08:
/* 0x800a6d08 */ addu	$a2,$s1,$zero
.L800a6d0c:
/* 0x800a6d0c */ addu	$a3,$zero,$zero
.L800a6d10:
/* 0x800a6d10 */ lhu	$v0,9160($s2)
.L800a6d14:
/* 0x800a6d14 */ addiu	$a0,$zero,-16
.L800a6d18:
/* 0x800a6d18 */ sw	$zero,16($sp)
.L800a6d1c:
/* 0x800a6d1c */ sw	$zero,20($sp)
.L800a6d20:
/* 0x800a6d20 */ sw	$s3,24($sp)
.L800a6d24:
/* 0x800a6d24 */ sw	$s0,28($sp)
.L800a6d28:
/* 0x800a6d28 */ jal	0x800ac2bc
.L800a6d2c:
/* 0x800a6d2c */ subu	$a0,$a0,$v0
.L800a6d30:
/* 0x800a6d30 */ lbu	$a0,0($s4)
.L800a6d34:
/* 0x800a6d34 */ jal	0x800a8254
.L800a6d38:
/* 0x800a6d38 */ addu	$a1,$s3,$zero
.L800a6d3c:
/* 0x800a6d3c */ lui	$v0,0x8012
.L800a6d40:
/* 0x800a6d40 */ lbu	$v1,-30096($v0)
.L800a6d44:
/* 0x800a6d44 */ addiu	$v0,$zero,1
.L800a6d48:
/* 0x800a6d48 */ beq	$v1,$v0,.L800a6d88
.L800a6d4c:
/* 0x800a6d4c */ slti	$v0,$v1,2
.L800a6d50:
/* 0x800a6d50 */ beq	$v0,$zero,.L800a6d68
.L800a6d54:
/* 0x800a6d54 */ addiu	$v0,$zero,2
.L800a6d58:
/* 0x800a6d58 */ beq	$v1,$zero,.L800a6d78
.L800a6d5c:
/* 0x800a6d5c */ lui	$a0,0x8012
.L800a6d60:
/* 0x800a6d60 */ j	.L800a6dcc
.L800a6d64:
/* 0x800a6d64 */ sll	$zero,$zero,0x0
.L800a6d68:
/* 0x800a6d68 */ beq	$v1,$v0,.L800a6da0
.L800a6d6c:
/* 0x800a6d6c */ lui	$v1,0x2aaa
.L800a6d70:
/* 0x800a6d70 */ j	.L800a6dcc
.L800a6d74:
/* 0x800a6d74 */ lui	$a0,0x8012
.L800a6d78:
/* 0x800a6d78 */ jal	0x800ab768
.L800a6d7c:
/* 0x800a6d7c */ sll	$zero,$zero,0x0
.L800a6d80:
/* 0x800a6d80 */ j	.L800a6dcc
.L800a6d84:
/* 0x800a6d84 */ lui	$a0,0x8012
.L800a6d88:
/* 0x800a6d88 */ lw	$a0,8($s5)
.L800a6d8c:
/* 0x800a6d8c */ lbu	$a1,1($s5)
.L800a6d90:
/* 0x800a6d90 */ jal	0x800abae8
.L800a6d94:
/* 0x800a6d94 */ sll	$zero,$zero,0x0
.L800a6d98:
/* 0x800a6d98 */ j	.L800a6dcc
.L800a6d9c:
/* 0x800a6d9c */ lui	$a0,0x8012
.L800a6da0:
/* 0x800a6da0 */ lw	$v0,8($s5)
.L800a6da4:
/* 0x800a6da4 */ ori	$v1,$v1,0xaaab
.L800a6da8:
/* 0x800a6da8 */ sll	$v0,$v0,0x7
.L800a6dac:
/* 0x800a6dac */ mult	$v0,$v1
.L800a6db0:
/* 0x800a6db0 */ sra	$v0,$v0,0x1f
.L800a6db4:
/* 0x800a6db4 */ mfhi	$t2
.L800a6db8:
/* 0x800a6db8 */ sra	$a0,$t2,0x2
.L800a6dbc:
/* 0x800a6dbc */ subu	$a0,$a0,$v0
.L800a6dc0:
/* 0x800a6dc0 */ jal	0x800a9eb8
.L800a6dc4:
/* 0x800a6dc4 */ andi	$a0,$a0,0xff
.L800a6dc8:
/* 0x800a6dc8 */ lui	$a0,0x8012
.L800a6dcc:
/* 0x800a6dcc */ jal	0x800a6f78
.L800a6dd0:
/* 0x800a6dd0 */ addiu	$a0,$a0,-30128
.L800a6dd4:
/* 0x800a6dd4 */ lui	$a0,0x8012
.L800a6dd8:
/* 0x800a6dd8 */ addiu	$a0,$a0,-30088
.L800a6ddc:
/* 0x800a6ddc */ jal	0x800a71d8
.L800a6de0:
/* 0x800a6de0 */ addu	$a1,$zero,$zero
.L800a6de4:
/* 0x800a6de4 */ lbu	$v0,1($s6)
.L800a6de8:
/* 0x800a6de8 */ sll	$zero,$zero,0x0
.L800a6dec:
/* 0x800a6dec */ bne	$v0,$zero,.L800a6e74
.L800a6df0:
/* 0x800a6df0 */ sll	$zero,$zero,0x0
.L800a6df4:
/* 0x800a6df4 */ lbu	$v0,0($s6)
.L800a6df8:
/* 0x800a6df8 */ sll	$zero,$zero,0x0
.L800a6dfc:
/* 0x800a6dfc */ beq	$v0,$zero,.L800a6e24
.L800a6e00:
/* 0x800a6e00 */ sll	$zero,$zero,0x0
.L800a6e04:
/* 0x800a6e04 */ lw	$v0,4($s6)
.L800a6e08:
/* 0x800a6e08 */ sll	$zero,$zero,0x0
.L800a6e0c:
/* 0x800a6e0c */ slti	$v0,$v0,3
.L800a6e10:
/* 0x800a6e10 */ bne	$v0,$zero,.L800a6e24
.L800a6e14:
/* 0x800a6e14 */ sll	$zero,$zero,0x0
.L800a6e18:
/* 0x800a6e18 */ jal	0x80028358
.L800a6e1c:
/* 0x800a6e1c */ addiu	$a0,$zero,785
.L800a6e20:
/* 0x800a6e20 */ sw	$zero,4($s6)
.L800a6e24:
/* 0x800a6e24 */ lw	$v0,4($s6)
.L800a6e28:
/* 0x800a6e28 */ sb	$zero,0($s6)
.L800a6e2c:
/* 0x800a6e2c */ lbu	$v1,1($s4)
.L800a6e30:
/* 0x800a6e30 */ addiu	$v0,$v0,1
.L800a6e34:
/* 0x800a6e34 */ beq	$v1,$zero,.L800a6e70
.L800a6e38:
/* 0x800a6e38 */ sw	$v0,4($s6)
.L800a6e3c:
/* 0x800a6e3c */ lw	$v1,12($s6)
.L800a6e40:
/* 0x800a6e40 */ sll	$zero,$zero,0x0
.L800a6e44:
/* 0x800a6e44 */ slti	$v0,$v1,32767
.L800a6e48:
/* 0x800a6e48 */ beq	$v0,$zero,.L800a6e54
.L800a6e4c:
/* 0x800a6e4c */ addiu	$v0,$v1,2
.L800a6e50:
/* 0x800a6e50 */ sw	$v0,12($s6)
.L800a6e54:
/* 0x800a6e54 */ lw	$v0,8($s6)
.L800a6e58:
/* 0x800a6e58 */ sll	$zero,$zero,0x0
.L800a6e5c:
/* 0x800a6e5c */ bne	$v0,$zero,.L800a6e70
.L800a6e60:
/* 0x800a6e60 */ addiu	$v0,$zero,32767
.L800a6e64:
/* 0x800a6e64 */ sw	$v0,12($s6)
.L800a6e68:
/* 0x800a6e68 */ addiu	$v0,$zero,1
.L800a6e6c:
/* 0x800a6e6c */ sb	$v0,1($s6)
.L800a6e70:
/* 0x800a6e70 */ sw	$zero,8($s6)
.L800a6e74:
/* 0x800a6e74 */ lbu	$v0,1($s4)
.L800a6e78:
/* 0x800a6e78 */ lw	$ra,68($sp)
.L800a6e7c:
/* 0x800a6e7c */ lw	$s6,64($sp)
.L800a6e80:
/* 0x800a6e80 */ lw	$s5,60($sp)
.L800a6e84:
/* 0x800a6e84 */ lw	$s4,56($sp)
.L800a6e88:
/* 0x800a6e88 */ lw	$s3,52($sp)
.L800a6e8c:
/* 0x800a6e8c */ lw	$s2,48($sp)
.L800a6e90:
/* 0x800a6e90 */ lw	$s1,44($sp)
.L800a6e94:
/* 0x800a6e94 */ lw	$s0,40($sp)
.L800a6e98:
/* 0x800a6e98 */ xori	$v0,$v0,0x5
.L800a6e9c:
/* 0x800a6e9c */ sltiu	$v0,$v0,1
.L800a6ea0:
/* 0x800a6ea0 */ jr	$ra
.L800a6ea4:
/* 0x800a6ea4 */ addiu	$sp,$sp,72
.size FUN_800a68b8, .-FUN_800a68b8
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a6ea8
.globl FUN_800a6ea8
.type FUN_800a6ea8, @function
FUN_800a6ea8:
.L800a6ea8:
/* 0x800a6ea8 */ addiu	$sp,$sp,-32
.L800a6eac:
/* 0x800a6eac */ sw	$ra,24($sp)
.L800a6eb0:
/* 0x800a6eb0 */ addu	$a1,$zero,$zero
.L800a6eb4:
/* 0x800a6eb4 */ addiu	$a3,$zero,7
.L800a6eb8:
/* 0x800a6eb8 */ ori	$a2,$zero,0x9284
.L800a6ebc:
/* 0x800a6ebc */ lui	$v0,0x800f
.L800a6ec0:
/* 0x800a6ec0 */ addiu	$v0,$v0,10536
.L800a6ec4:
/* 0x800a6ec4 */ addiu	$v1,$v0,84
.L800a6ec8:
/* 0x800a6ec8 */ addiu	$a0,$v0,-32
.L800a6ecc:
/* 0x800a6ecc */ lbu	$v0,146($a0)
.L800a6ed0:
/* 0x800a6ed0 */ sll	$zero,$zero,0x0
.L800a6ed4:
/* 0x800a6ed4 */ beq	$v0,$a3,.L800a6f10
.L800a6ed8:
/* 0x800a6ed8 */ sll	$zero,$zero,0x0
.L800a6edc:
/* 0x800a6edc */ beq	$v0,$zero,.L800a6f14
.L800a6ee0:
/* 0x800a6ee0 */ ori	$v0,$zero,0x9284
.L800a6ee4:
/* 0x800a6ee4 */ lw	$v0,-12($v1)
.L800a6ee8:
/* 0x800a6ee8 */ sll	$zero,$zero,0x0
.L800a6eec:
/* 0x800a6eec */ bltz	$v0,.L800a6efc
.L800a6ef0:
/* 0x800a6ef0 */ sll	$zero,$zero,0x0
.L800a6ef4:
/* 0x800a6ef4 */ j	.L800a6f10
.L800a6ef8:
/* 0x800a6ef8 */ sw	$v0,-4($v1)
.L800a6efc:
/* 0x800a6efc */ lw	$v0,-8($v1)
.L800a6f00:
/* 0x800a6f00 */ sll	$zero,$zero,0x0
.L800a6f04:
/* 0x800a6f04 */ bltz	$v0,.L800a6f10
.L800a6f08:
/* 0x800a6f08 */ sll	$zero,$zero,0x0
.L800a6f0c:
/* 0x800a6f0c */ sw	$v0,0($v1)
.L800a6f10:
/* 0x800a6f10 */ ori	$v0,$zero,0x9284
.L800a6f14:
/* 0x800a6f14 */ addu	$a0,$a0,$v0
.L800a6f18:
/* 0x800a6f18 */ addiu	$a1,$a1,1
.L800a6f1c:
/* 0x800a6f1c */ slti	$v0,$a1,2
.L800a6f20:
/* 0x800a6f20 */ bne	$v0,$zero,.L800a6ecc
.L800a6f24:
/* 0x800a6f24 */ addu	$v1,$v1,$a2
.L800a6f28:
/* 0x800a6f28 */ jal	0x800aba9c
.L800a6f2c:
/* 0x800a6f2c */ sll	$zero,$zero,0x0
.L800a6f30:
/* 0x800a6f30 */ addiu	$v0,$zero,640
.L800a6f34:
/* 0x800a6f34 */ sh	$v0,16($sp)
.L800a6f38:
/* 0x800a6f38 */ addiu	$v0,$zero,384
.L800a6f3c:
/* 0x800a6f3c */ sh	$v0,20($sp)
.L800a6f40:
/* 0x800a6f40 */ addiu	$v0,$zero,512
.L800a6f44:
/* 0x800a6f44 */ addiu	$a0,$sp,16
.L800a6f48:
/* 0x800a6f48 */ addu	$a1,$zero,$zero
.L800a6f4c:
/* 0x800a6f4c */ addu	$a2,$a1,$zero
.L800a6f50:
/* 0x800a6f50 */ addu	$a3,$a1,$zero
.L800a6f54:
/* 0x800a6f54 */ sh	$zero,18($sp)
.L800a6f58:
/* 0x800a6f58 */ jal	0x80038778
.L800a6f5c:
/* 0x800a6f5c */ sh	$v0,22($sp)
.L800a6f60:
/* 0x800a6f60 */ lui	$v1,0x8011
.L800a6f64:
/* 0x800a6f64 */ lw	$ra,24($sp)
.L800a6f68:
/* 0x800a6f68 */ addiu	$v0,$zero,1
.L800a6f6c:
/* 0x800a6f6c */ sb	$v0,27685($v1)
.L800a6f70:
/* 0x800a6f70 */ jr	$ra
.L800a6f74:
/* 0x800a6f74 */ addiu	$sp,$sp,32
.size FUN_800a6ea8, .-FUN_800a6ea8
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a6f78
.globl FUN_800a6f78
.type FUN_800a6f78, @function
FUN_800a6f78:
.L800a6f78:
/* 0x800a6f78 */ addiu	$sp,$sp,-80
.L800a6f7c:
/* 0x800a6f7c */ lui	$v0,0x8012
.L800a6f80:
/* 0x800a6f80 */ sw	$s5,60($sp)
.L800a6f84:
/* 0x800a6f84 */ addu	$s5,$zero,$zero
.L800a6f88:
/* 0x800a6f88 */ sw	$s2,48($sp)
.L800a6f8c:
/* 0x800a6f8c */ lbu	$s2,-30087($v0)
.L800a6f90:
/* 0x800a6f90 */ lui	$v0,0x800f
.L800a6f94:
/* 0x800a6f94 */ sw	$s3,52($sp)
.L800a6f98:
/* 0x800a6f98 */ addiu	$s3,$v0,10536
.L800a6f9c:
/* 0x800a6f9c */ sw	$s8,72($sp)
.L800a6fa0:
/* 0x800a6fa0 */ lui	$s8,0x800e
.L800a6fa4:
/* 0x800a6fa4 */ sw	$s7,68($sp)
.L800a6fa8:
/* 0x800a6fa8 */ addu	$s7,$s5,$zero
.L800a6fac:
/* 0x800a6fac */ sw	$s6,64($sp)
.L800a6fb0:
/* 0x800a6fb0 */ addiu	$s6,$zero,-5
.L800a6fb4:
/* 0x800a6fb4 */ sw	$s4,56($sp)
.L800a6fb8:
/* 0x800a6fb8 */ addu	$s4,$s5,$zero
.L800a6fbc:
/* 0x800a6fbc */ addiu	$t0,$s3,-32
.L800a6fc0:
/* 0x800a6fc0 */ sw	$ra,76($sp)
.L800a6fc4:
/* 0x800a6fc4 */ sw	$s1,44($sp)
.L800a6fc8:
/* 0x800a6fc8 */ sw	$s0,40($sp)
.L800a6fcc:
/* 0x800a6fcc */ sw	$t0,32($sp)
.L800a6fd0:
/* 0x800a6fd0 */ lw	$t0,32($sp)
.L800a6fd4:
/* 0x800a6fd4 */ sll	$zero,$zero,0x0
.L800a6fd8:
/* 0x800a6fd8 */ lbu	$v1,146($t0)
.L800a6fdc:
/* 0x800a6fdc */ addiu	$v0,$zero,7
.L800a6fe0:
/* 0x800a6fe0 */ beq	$v1,$v0,.L800a717c
.L800a6fe4:
/* 0x800a6fe4 */ sll	$zero,$zero,0x0
.L800a6fe8:
/* 0x800a6fe8 */ beq	$v1,$zero,.L800a717c
.L800a6fec:
/* 0x800a6fec */ lui	$t0,0x800e
.L800a6ff0:
/* 0x800a6ff0 */ lw	$v0,72($s3)
.L800a6ff4:
/* 0x800a6ff4 */ sll	$zero,$zero,0x0
.L800a6ff8:
/* 0x800a6ff8 */ bltz	$v0,.L800a7064
.L800a6ffc:
/* 0x800a6ffc */ addiu	$s1,$t0,9232
.L800a7000:
/* 0x800a7000 */ addiu	$a1,$zero,-152
.L800a7004:
/* 0x800a7004 */ lhu	$v0,9232($t0)
.L800a7008:
/* 0x800a7008 */ addu	$a3,$s2,$zero
.L800a700c:
/* 0x800a700c */ sw	$zero,16($sp)
.L800a7010:
/* 0x800a7010 */ lw	$a2,72($s3)
.L800a7014:
/* 0x800a7014 */ srl	$v0,$v0,0x1
.L800a7018:
/* 0x800a7018 */ addiu	$v0,$v0,120
.L800a701c:
/* 0x800a701c */ subu	$v0,$s4,$v0
.L800a7020:
/* 0x800a7020 */ subu	$s0,$v0,$s6
.L800a7024:
/* 0x800a7024 */ jal	0x800a86ac
.L800a7028:
/* 0x800a7028 */ addiu	$a0,$s0,12
.L800a702c:
/* 0x800a702c */ addu	$a0,$s0,$zero
.L800a7030:
/* 0x800a7030 */ addiu	$a1,$zero,-160
.L800a7034:
/* 0x800a7034 */ addu	$a2,$s1,$zero
.L800a7038:
/* 0x800a7038 */ addu	$a3,$zero,$zero
.L800a703c:
/* 0x800a703c */ addiu	$v0,$zero,1
.L800a7040:
/* 0x800a7040 */ addiu	$t0,$zero,10
.L800a7044:
/* 0x800a7044 */ sw	$v0,16($sp)
.L800a7048:
/* 0x800a7048 */ sw	$zero,20($sp)
.L800a704c:
/* 0x800a704c */ sw	$s2,24($sp)
.L800a7050:
/* 0x800a7050 */ jal	0x800ac2bc
.L800a7054:
/* 0x800a7054 */ sw	$t0,28($sp)
.L800a7058:
/* 0x800a7058 */ lw	$v0,72($s3)
.L800a705c:
/* 0x800a705c */ j	.L800a70d0
.L800a7060:
/* 0x800a7060 */ sll	$zero,$zero,0x0
.L800a7064:
/* 0x800a7064 */ lw	$v0,76($s3)
.L800a7068:
/* 0x800a7068 */ sll	$zero,$zero,0x0
.L800a706c:
/* 0x800a706c */ bltz	$v0,.L800a717c
.L800a7070:
/* 0x800a7070 */ addiu	$a1,$zero,-152
.L800a7074:
/* 0x800a7074 */ addu	$a3,$s2,$zero
.L800a7078:
/* 0x800a7078 */ addiu	$v0,$zero,2
.L800a707c:
/* 0x800a707c */ lui	$t0,0x800e
.L800a7080:
/* 0x800a7080 */ sw	$v0,16($sp)
.L800a7084:
/* 0x800a7084 */ lhu	$v0,9232($t0)
.L800a7088:
/* 0x800a7088 */ lw	$a2,76($s3)
.L800a708c:
/* 0x800a708c */ srl	$v0,$v0,0x1
.L800a7090:
/* 0x800a7090 */ addiu	$v0,$v0,120
.L800a7094:
/* 0x800a7094 */ subu	$v0,$s4,$v0
.L800a7098:
/* 0x800a7098 */ subu	$s0,$v0,$s6
.L800a709c:
/* 0x800a709c */ jal	0x800a8c10
.L800a70a0:
/* 0x800a70a0 */ addiu	$a0,$s0,12
.L800a70a4:
/* 0x800a70a4 */ addu	$a0,$s0,$zero
.L800a70a8:
/* 0x800a70a8 */ addiu	$a1,$zero,-160
.L800a70ac:
/* 0x800a70ac */ addu	$a2,$s1,$zero
.L800a70b0:
/* 0x800a70b0 */ addu	$a3,$zero,$zero
.L800a70b4:
/* 0x800a70b4 */ addiu	$t0,$zero,10
.L800a70b8:
/* 0x800a70b8 */ sw	$zero,16($sp)
.L800a70bc:
/* 0x800a70bc */ sw	$zero,20($sp)
.L800a70c0:
/* 0x800a70c0 */ sw	$s2,24($sp)
.L800a70c4:
/* 0x800a70c4 */ jal	0x800ac2bc
.L800a70c8:
/* 0x800a70c8 */ sw	$t0,28($sp)
.L800a70cc:
/* 0x800a70cc */ lw	$v0,76($s3)
.L800a70d0:
/* 0x800a70d0 */ sll	$zero,$zero,0x0
.L800a70d4:
/* 0x800a70d4 */ bne	$v0,$zero,.L800a7148
.L800a70d8:
/* 0x800a70d8 */ addiu	$a1,$zero,-188
.L800a70dc:
/* 0x800a70dc */ addiu	$s1,$s8,9688
.L800a70e0:
/* 0x800a70e0 */ addiu	$a1,$zero,-187
.L800a70e4:
/* 0x800a70e4 */ addu	$a2,$s1,$zero
.L800a70e8:
/* 0x800a70e8 */ addu	$a3,$zero,$zero
.L800a70ec:
/* 0x800a70ec */ lhu	$v0,9688($s8)
.L800a70f0:
/* 0x800a70f0 */ addiu	$t0,$zero,9
.L800a70f4:
/* 0x800a70f4 */ sw	$zero,16($sp)
.L800a70f8:
/* 0x800a70f8 */ sw	$zero,20($sp)
.L800a70fc:
/* 0x800a70fc */ sw	$s2,24($sp)
.L800a7100:
/* 0x800a7100 */ sw	$t0,28($sp)
.L800a7104:
/* 0x800a7104 */ srl	$v0,$v0,0x1
.L800a7108:
/* 0x800a7108 */ addiu	$v0,$v0,130
.L800a710c:
/* 0x800a710c */ subu	$s0,$s7,$v0
.L800a7110:
/* 0x800a7110 */ jal	0x800ac2bc
.L800a7114:
/* 0x800a7114 */ addu	$a0,$s0,$zero
.L800a7118:
/* 0x800a7118 */ addiu	$a1,$zero,-187
.L800a711c:
/* 0x800a711c */ addiu	$a2,$s1,12
.L800a7120:
/* 0x800a7120 */ addu	$a3,$zero,$zero
.L800a7124:
/* 0x800a7124 */ lhu	$a0,9688($s8)
.L800a7128:
/* 0x800a7128 */ addiu	$t0,$zero,9
.L800a712c:
/* 0x800a712c */ sw	$zero,16($sp)
.L800a7130:
/* 0x800a7130 */ sw	$zero,20($sp)
.L800a7134:
/* 0x800a7134 */ sw	$s2,24($sp)
.L800a7138:
/* 0x800a7138 */ sw	$t0,28($sp)
.L800a713c:
/* 0x800a713c */ jal	0x800ac2bc
.L800a7140:
/* 0x800a7140 */ addu	$a0,$s0,$a0
.L800a7144:
/* 0x800a7144 */ addiu	$a1,$zero,-188
.L800a7148:
/* 0x800a7148 */ lui	$v0,0x800e
.L800a714c:
/* 0x800a714c */ addiu	$a2,$v0,9220
.L800a7150:
/* 0x800a7150 */ addu	$a3,$zero,$zero
.L800a7154:
/* 0x800a7154 */ lhu	$a0,9220($v0)
.L800a7158:
/* 0x800a7158 */ addiu	$t0,$zero,10
.L800a715c:
/* 0x800a715c */ sw	$s5,16($sp)
.L800a7160:
/* 0x800a7160 */ sw	$zero,20($sp)
.L800a7164:
/* 0x800a7164 */ sw	$s2,24($sp)
.L800a7168:
/* 0x800a7168 */ sw	$t0,28($sp)
.L800a716c:
/* 0x800a716c */ srl	$a0,$a0,0x1
.L800a7170:
/* 0x800a7170 */ addiu	$a0,$a0,120
.L800a7174:
/* 0x800a7174 */ jal	0x800ac2bc
.L800a7178:
/* 0x800a7178 */ subu	$a0,$s4,$a0
.L800a717c:
/* 0x800a717c */ addiu	$s7,$s7,226
.L800a7180:
/* 0x800a7180 */ addiu	$s6,$s6,12
.L800a7184:
/* 0x800a7184 */ addiu	$s4,$s4,240
.L800a7188:
/* 0x800a7188 */ ori	$v0,$zero,0x9284
.L800a718c:
/* 0x800a718c */ addiu	$s5,$s5,1
.L800a7190:
/* 0x800a7190 */ lw	$t0,32($sp)
.L800a7194:
/* 0x800a7194 */ addu	$s3,$s3,$v0
.L800a7198:
/* 0x800a7198 */ addu	$t0,$t0,$v0
.L800a719c:
/* 0x800a719c */ slti	$v0,$s5,2
.L800a71a0:
/* 0x800a71a0 */ bne	$v0,$zero,.L800a6fd0
.L800a71a4:
/* 0x800a71a4 */ sw	$t0,32($sp)
.L800a71a8:
/* 0x800a71a8 */ lw	$ra,76($sp)
.L800a71ac:
/* 0x800a71ac */ lw	$s8,72($sp)
.L800a71b0:
/* 0x800a71b0 */ lw	$s7,68($sp)
.L800a71b4:
/* 0x800a71b4 */ lw	$s6,64($sp)
.L800a71b8:
/* 0x800a71b8 */ lw	$s5,60($sp)
.L800a71bc:
/* 0x800a71bc */ lw	$s4,56($sp)
.L800a71c0:
/* 0x800a71c0 */ lw	$s3,52($sp)
.L800a71c4:
/* 0x800a71c4 */ lw	$s2,48($sp)
.L800a71c8:
/* 0x800a71c8 */ lw	$s1,44($sp)
.L800a71cc:
/* 0x800a71cc */ lw	$s0,40($sp)
.L800a71d0:
/* 0x800a71d0 */ jr	$ra
.L800a71d4:
/* 0x800a71d4 */ addiu	$sp,$sp,80
.size FUN_800a6f78, .-FUN_800a6f78
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a71d8
.globl FUN_800a71d8
.type FUN_800a71d8, @function
FUN_800a71d8:
.L800a71d8:
/* 0x800a71d8 */ addiu	$sp,$sp,-120
.L800a71dc:
/* 0x800a71dc */ lui	$v0,0x2aaa
.L800a71e0:
/* 0x800a71e0 */ sw	$s0,80($sp)
.L800a71e4:
/* 0x800a71e4 */ lui	$s0,0x8012
.L800a71e8:
/* 0x800a71e8 */ addiu	$s0,$s0,-30088
.L800a71ec:
/* 0x800a71ec */ sw	$ra,116($sp)
.L800a71f0:
/* 0x800a71f0 */ sw	$s8,112($sp)
.L800a71f4:
/* 0x800a71f4 */ sw	$s7,108($sp)
.L800a71f8:
/* 0x800a71f8 */ sw	$s6,104($sp)
.L800a71fc:
/* 0x800a71fc */ sw	$s5,100($sp)
.L800a7200:
/* 0x800a7200 */ sw	$s4,96($sp)
.L800a7204:
/* 0x800a7204 */ sw	$s3,92($sp)
.L800a7208:
/* 0x800a7208 */ sw	$s2,88($sp)
.L800a720c:
/* 0x800a720c */ sw	$s1,84($sp)
.L800a7210:
/* 0x800a7210 */ sw	$a1,124($sp)
.L800a7214:
/* 0x800a7214 */ lw	$a0,8($s0)
.L800a7218:
/* 0x800a7218 */ ori	$v0,$v0,0xaaab
.L800a721c:
/* 0x800a721c */ sll	$a0,$a0,0xa
.L800a7220:
/* 0x800a7220 */ mult	$a0,$v0
.L800a7224:
/* 0x800a7224 */ sra	$a0,$a0,0x1f
.L800a7228:
/* 0x800a7228 */ mfhi	$t2
.L800a722c:
/* 0x800a722c */ sra	$v0,$t2,0x2
.L800a7230:
/* 0x800a7230 */ jal	0x8004964c
.L800a7234:
/* 0x800a7234 */ subu	$a0,$v0,$a0
.L800a7238:
/* 0x800a7238 */ lui	$v1,0x800e
.L800a723c:
/* 0x800a723c */ addiu	$s3,$v1,9112
.L800a7240:
/* 0x800a7240 */ lui	$v1,0x8012
.L800a7244:
/* 0x800a7244 */ addiu	$s5,$v1,-30096
.L800a7248:
/* 0x800a7248 */ addu	$s2,$v0,$zero
.L800a724c:
/* 0x800a724c */ sll	$v0,$s2,0x1
.L800a7250:
/* 0x800a7250 */ addu	$v0,$v0,$s2
.L800a7254:
/* 0x800a7254 */ sll	$v0,$v0,0x4
.L800a7258:
/* 0x800a7258 */ sra	$v0,$v0,0xc
.L800a725c:
/* 0x800a725c */ lbu	$v1,-30096($v1)
.L800a7260:
/* 0x800a7260 */ lbu	$s0,1($s0)
.L800a7264:
/* 0x800a7264 */ lw	$t2,124($sp)
.L800a7268:
/* 0x800a7268 */ xori	$v1,$v1,0x1
.L800a726c:
/* 0x800a726c */ sltu	$t0,$zero,$v1
.L800a7270:
/* 0x800a7270 */ addu	$t1,$t0,$zero
.L800a7274:
/* 0x800a7274 */ addiu	$v1,$zero,48
.L800a7278:
/* 0x800a7278 */ subu	$v1,$v1,$v0
.L800a727c:
/* 0x800a727c */ addu	$s4,$v1,$zero
.L800a7280:
/* 0x800a7280 */ bne	$t2,$zero,.L800a72bc
.L800a7284:
/* 0x800a7284 */ sb	$s0,48($sp)
.L800a7288:
/* 0x800a7288 */ addiu	$a0,$zero,64
.L800a728c:
/* 0x800a728c */ sll	$a1,$v1,0x10
.L800a7290:
/* 0x800a7290 */ sra	$a1,$a1,0x10
.L800a7294:
/* 0x800a7294 */ addiu	$v0,$zero,-216
.L800a7298:
/* 0x800a7298 */ subu	$a1,$v0,$a1
.L800a729c:
/* 0x800a729c */ addu	$a2,$s3,$zero
.L800a72a0:
/* 0x800a72a0 */ addu	$a3,$zero,$zero
.L800a72a4:
/* 0x800a72a4 */ andi	$v0,$s0,0xff
.L800a72a8:
/* 0x800a72a8 */ sw	$v0,24($sp)
.L800a72ac:
/* 0x800a72ac */ addiu	$v0,$zero,16
.L800a72b0:
/* 0x800a72b0 */ sw	$t0,16($sp)
.L800a72b4:
/* 0x800a72b4 */ j	.L800a72ec
.L800a72b8:
/* 0x800a72b8 */ sw	$zero,20($sp)
.L800a72bc:
/* 0x800a72bc */ addiu	$a0,$zero,-16
.L800a72c0:
/* 0x800a72c0 */ sll	$a1,$v1,0x10
.L800a72c4:
/* 0x800a72c4 */ sra	$a1,$a1,0x10
.L800a72c8:
/* 0x800a72c8 */ addiu	$v0,$zero,-216
.L800a72cc:
/* 0x800a72cc */ subu	$a1,$v0,$a1
.L800a72d0:
/* 0x800a72d0 */ addu	$a2,$s3,$zero
.L800a72d4:
/* 0x800a72d4 */ lbu	$v0,48($sp)
.L800a72d8:
/* 0x800a72d8 */ addu	$a3,$zero,$zero
.L800a72dc:
/* 0x800a72dc */ sw	$t1,16($sp)
.L800a72e0:
/* 0x800a72e0 */ sw	$zero,20($sp)
.L800a72e4:
/* 0x800a72e4 */ sw	$v0,24($sp)
.L800a72e8:
/* 0x800a72e8 */ addiu	$v0,$zero,16
.L800a72ec:
/* 0x800a72ec */ jal	0x800ac2bc
.L800a72f0:
/* 0x800a72f0 */ sw	$v0,28($sp)
.L800a72f4:
/* 0x800a72f4 */ addu	$s7,$zero,$zero
.L800a72f8:
/* 0x800a72f8 */ lui	$v0,0x800e
.L800a72fc:
/* 0x800a72fc */ addiu	$s3,$v0,9448
.L800a7300:
/* 0x800a7300 */ addiu	$t2,$zero,-320
.L800a7304:
/* 0x800a7304 */ sh	$t2,32($sp)
.L800a7308:
/* 0x800a7308 */ sll	$v0,$s4,0x10
.L800a730c:
/* 0x800a730c */ sra	$s1,$v0,0x10
.L800a7310:
/* 0x800a7310 */ addiu	$a1,$zero,-240
.L800a7314:
/* 0x800a7314 */ subu	$a1,$a1,$s1
.L800a7318:
/* 0x800a7318 */ addu	$a2,$s3,$zero
.L800a731c:
/* 0x800a731c */ addu	$a3,$zero,$zero
.L800a7320:
/* 0x800a7320 */ lhu	$t2,32($sp)
.L800a7324:
/* 0x800a7324 */ lbu	$s0,48($sp)
.L800a7328:
/* 0x800a7328 */ addiu	$v0,$zero,16
.L800a732c:
/* 0x800a732c */ sw	$zero,16($sp)
.L800a7330:
/* 0x800a7330 */ sw	$zero,20($sp)
.L800a7334:
/* 0x800a7334 */ sw	$v0,28($sp)
.L800a7338:
/* 0x800a7338 */ sll	$a0,$t2,0x10
.L800a733c:
/* 0x800a733c */ sra	$a0,$a0,0x10
.L800a7340:
/* 0x800a7340 */ jal	0x800ac2bc
.L800a7344:
/* 0x800a7344 */ sw	$s0,24($sp)
.L800a7348:
/* 0x800a7348 */ addiu	$s7,$s7,1
.L800a734c:
/* 0x800a734c */ lhu	$v0,0($s3)
.L800a7350:
/* 0x800a7350 */ lhu	$t2,32($sp)
.L800a7354:
/* 0x800a7354 */ addiu	$s3,$s3,12
.L800a7358:
/* 0x800a7358 */ addu	$t2,$t2,$v0
.L800a735c:
/* 0x800a735c */ slti	$v0,$s7,3
.L800a7360:
/* 0x800a7360 */ bne	$v0,$zero,.L800a7310
.L800a7364:
/* 0x800a7364 */ sh	$t2,32($sp)
.L800a7368:
/* 0x800a7368 */ addu	$s7,$zero,$zero
.L800a736c:
/* 0x800a736c */ lui	$v0,0x800e
.L800a7370:
/* 0x800a7370 */ addiu	$v0,$v0,9448
.L800a7374:
/* 0x800a7374 */ addiu	$s3,$v0,36
.L800a7378:
/* 0x800a7378 */ addiu	$t2,$zero,-320
.L800a737c:
/* 0x800a737c */ sh	$t2,32($sp)
.L800a7380:
/* 0x800a7380 */ sll	$v0,$s4,0x10
.L800a7384:
/* 0x800a7384 */ sra	$s1,$v0,0x10
.L800a7388:
/* 0x800a7388 */ addiu	$a1,$s1,192
.L800a738c:
/* 0x800a738c */ addu	$a2,$s3,$zero
.L800a7390:
/* 0x800a7390 */ addu	$a3,$zero,$zero
.L800a7394:
/* 0x800a7394 */ lhu	$t2,32($sp)
.L800a7398:
/* 0x800a7398 */ addiu	$s4,$zero,16
.L800a739c:
/* 0x800a739c */ sw	$zero,16($sp)
.L800a73a0:
/* 0x800a73a0 */ sw	$zero,20($sp)
.L800a73a4:
/* 0x800a73a4 */ sw	$s0,24($sp)
.L800a73a8:
/* 0x800a73a8 */ sw	$s4,28($sp)
.L800a73ac:
/* 0x800a73ac */ sll	$a0,$t2,0x10
.L800a73b0:
/* 0x800a73b0 */ jal	0x800ac2bc
.L800a73b4:
/* 0x800a73b4 */ sra	$a0,$a0,0x10
.L800a73b8:
/* 0x800a73b8 */ addiu	$s7,$s7,1
.L800a73bc:
/* 0x800a73bc */ lhu	$v0,0($s3)
.L800a73c0:
/* 0x800a73c0 */ lhu	$t2,32($sp)
.L800a73c4:
/* 0x800a73c4 */ addiu	$s3,$s3,12
.L800a73c8:
/* 0x800a73c8 */ addu	$t2,$t2,$v0
.L800a73cc:
/* 0x800a73cc */ slti	$v0,$s7,3
.L800a73d0:
/* 0x800a73d0 */ bne	$v0,$zero,.L800a7388
.L800a73d4:
/* 0x800a73d4 */ sh	$t2,32($sp)
.L800a73d8:
/* 0x800a73d8 */ lbu	$v1,0($s5)
.L800a73dc:
/* 0x800a73dc */ addiu	$v0,$zero,1
.L800a73e0:
/* 0x800a73e0 */ bne	$v1,$v0,.L800a7464
.L800a73e4:
/* 0x800a73e4 */ lui	$v0,0x800e
.L800a73e8:
/* 0x800a73e8 */ addiu	$s3,$v0,9664
.L800a73ec:
/* 0x800a73ec */ sll	$v0,$s2,0x3
.L800a73f0:
/* 0x800a73f0 */ addu	$v0,$v0,$s2
.L800a73f4:
/* 0x800a73f4 */ sll	$v0,$v0,0x2
.L800a73f8:
/* 0x800a73f8 */ subu	$v0,$v0,$s2
.L800a73fc:
/* 0x800a73fc */ sll	$v0,$v0,0x2
.L800a7400:
/* 0x800a7400 */ sra	$v0,$v0,0xc
.L800a7404:
/* 0x800a7404 */ addiu	$s0,$zero,140
.L800a7408:
/* 0x800a7408 */ subu	$s0,$s0,$v0
.L800a740c:
/* 0x800a740c */ sllv	$s0,$s0,$s4
.L800a7410:
/* 0x800a7410 */ srav	$s0,$s0,$s4
.L800a7414:
/* 0x800a7414 */ addiu	$a0,$zero,-320
.L800a7418:
/* 0x800a7418 */ subu	$a0,$a0,$s0
.L800a741c:
/* 0x800a741c */ addiu	$a1,$zero,150
.L800a7420:
/* 0x800a7420 */ addu	$a2,$s3,$zero
.L800a7424:
/* 0x800a7424 */ lbu	$s1,48($sp)
.L800a7428:
/* 0x800a7428 */ addu	$a3,$zero,$zero
.L800a742c:
/* 0x800a742c */ sw	$zero,16($sp)
.L800a7430:
/* 0x800a7430 */ sw	$zero,20($sp)
.L800a7434:
/* 0x800a7434 */ sw	$s4,28($sp)
.L800a7438:
/* 0x800a7438 */ jal	0x800ac2bc
.L800a743c:
/* 0x800a743c */ sw	$s1,24($sp)
.L800a7440:
/* 0x800a7440 */ addiu	$a0,$s0,180
.L800a7444:
/* 0x800a7444 */ addiu	$a1,$zero,150
.L800a7448:
/* 0x800a7448 */ addiu	$a2,$s3,12
.L800a744c:
/* 0x800a744c */ addu	$a3,$zero,$zero
.L800a7450:
/* 0x800a7450 */ sw	$zero,16($sp)
.L800a7454:
/* 0x800a7454 */ sw	$zero,20($sp)
.L800a7458:
/* 0x800a7458 */ sw	$s1,24($sp)
.L800a745c:
/* 0x800a745c */ jal	0x800ac2bc
.L800a7460:
/* 0x800a7460 */ sw	$s4,28($sp)
.L800a7464:
/* 0x800a7464 */ lw	$t2,124($sp)
.L800a7468:
/* 0x800a7468 */ sll	$zero,$zero,0x0
.L800a746c:
/* 0x800a746c */ bne	$t2,$zero,.L800a7490
.L800a7470:
/* 0x800a7470 */ sll	$v0,$s2,0x4
.L800a7474:
/* 0x800a7474 */ lui	$v0,0x8012
.L800a7478:
/* 0x800a7478 */ lbu	$v0,-30095($v0)
.L800a747c:
/* 0x800a747c */ sll	$zero,$zero,0x0
.L800a7480:
/* 0x800a7480 */ beq	$v0,$zero,.L800a7490
.L800a7484:
/* 0x800a7484 */ sll	$v0,$s2,0x4
.L800a7488:
/* 0x800a7488 */ j	.L800a74a8
.L800a748c:
/* 0x800a748c */ sh	$zero,40($sp)
.L800a7490:
/* 0x800a7490 */ subu	$v0,$v0,$s2
.L800a7494:
/* 0x800a7494 */ sll	$v0,$v0,0x3
.L800a7498:
/* 0x800a7498 */ sra	$v0,$v0,0xc
.L800a749c:
/* 0x800a749c */ addiu	$v1,$zero,120
.L800a74a0:
/* 0x800a74a0 */ subu	$v1,$v1,$v0
.L800a74a4:
/* 0x800a74a4 */ sh	$v1,40($sp)
.L800a74a8:
/* 0x800a74a8 */ addu	$s7,$zero,$zero
.L800a74ac:
/* 0x800a74ac */ lui	$v0,0x800f
.L800a74b0:
/* 0x800a74b0 */ lbu	$t2,48($sp)
.L800a74b4:
/* 0x800a74b4 */ addiu	$v0,$v0,10504
.L800a74b8:
/* 0x800a74b8 */ sw	$zero,72($sp)
.L800a74bc:
/* 0x800a74bc */ sw	$v0,76($sp)
.L800a74c0:
/* 0x800a74c0 */ sw	$t2,52($sp)
.L800a74c4:
/* 0x800a74c4 */ lw	$t2,124($sp)
.L800a74c8:
/* 0x800a74c8 */ sll	$zero,$zero,0x0
.L800a74cc:
/* 0x800a74cc */ bne	$t2,$zero,.L800a74f4
.L800a74d0:
/* 0x800a74d0 */ sll	$s0,$s7,0x4
.L800a74d4:
/* 0x800a74d4 */ lw	$t2,76($sp)
.L800a74d8:
/* 0x800a74d8 */ sll	$zero,$zero,0x0
.L800a74dc:
/* 0x800a74dc */ lbu	$v1,146($t2)
.L800a74e0:
/* 0x800a74e0 */ addiu	$v0,$zero,7
.L800a74e4:
/* 0x800a74e4 */ beq	$v1,$v0,.L800a7850
.L800a74e8:
/* 0x800a74e8 */ sll	$zero,$zero,0x0
.L800a74ec:
/* 0x800a74ec */ beq	$v1,$zero,.L800a7850
.L800a74f0:
/* 0x800a74f0 */ sll	$zero,$zero,0x0
.L800a74f4:
/* 0x800a74f4 */ subu	$s0,$s0,$s7
.L800a74f8:
/* 0x800a74f8 */ sll	$s0,$s0,0x5
.L800a74fc:
/* 0x800a74fc */ addiu	$a1,$zero,-185
.L800a7500:
/* 0x800a7500 */ lhu	$t2,40($sp)
.L800a7504:
/* 0x800a7504 */ addu	$a3,$zero,$zero
.L800a7508:
/* 0x800a7508 */ sw	$zero,16($sp)
.L800a750c:
/* 0x800a750c */ sw	$zero,20($sp)
.L800a7510:
/* 0x800a7510 */ addiu	$v0,$t2,240
.L800a7514:
/* 0x800a7514 */ subu	$s0,$s0,$v0
.L800a7518:
/* 0x800a7518 */ lui	$v0,0x800e
.L800a751c:
/* 0x800a751c */ addiu	$s3,$v0,9568
.L800a7520:
/* 0x800a7520 */ sh	$s0,32($sp)
.L800a7524:
/* 0x800a7524 */ sll	$s0,$s0,0x10
.L800a7528:
/* 0x800a7528 */ sra	$s0,$s0,0x10
.L800a752c:
/* 0x800a752c */ addiu	$s1,$s0,-47
.L800a7530:
/* 0x800a7530 */ addu	$a0,$s1,$zero
.L800a7534:
/* 0x800a7534 */ lw	$t2,52($sp)
.L800a7538:
/* 0x800a7538 */ addu	$a2,$s3,$zero
.L800a753c:
/* 0x800a753c */ sw	$t2,24($sp)
.L800a7540:
/* 0x800a7540 */ addiu	$t2,$zero,16
.L800a7544:
/* 0x800a7544 */ jal	0x800ac2bc
.L800a7548:
/* 0x800a7548 */ sw	$t2,28($sp)
.L800a754c:
/* 0x800a754c */ addiu	$s3,$s3,12
.L800a7550:
/* 0x800a7550 */ addiu	$a1,$zero,-185
.L800a7554:
/* 0x800a7554 */ addu	$a2,$s3,$zero
.L800a7558:
/* 0x800a7558 */ addu	$a3,$zero,$zero
.L800a755c:
/* 0x800a755c */ lhu	$a0,0($s3)
.L800a7560:
/* 0x800a7560 */ addiu	$s3,$s3,12
.L800a7564:
/* 0x800a7564 */ addu	$s5,$a3,$zero
.L800a7568:
/* 0x800a7568 */ addiu	$s8,$zero,36
.L800a756c:
/* 0x800a756c */ lw	$t2,52($sp)
.L800a7570:
/* 0x800a7570 */ addiu	$s0,$s0,47
.L800a7574:
/* 0x800a7574 */ sw	$s1,56($sp)
.L800a7578:
/* 0x800a7578 */ sw	$zero,16($sp)
.L800a757c:
/* 0x800a757c */ sw	$zero,20($sp)
.L800a7580:
/* 0x800a7580 */ sw	$t2,24($sp)
.L800a7584:
/* 0x800a7584 */ addiu	$t2,$zero,16
.L800a7588:
/* 0x800a7588 */ subu	$a0,$s0,$a0
.L800a758c:
/* 0x800a758c */ jal	0x800ac2bc
.L800a7590:
/* 0x800a7590 */ sw	$t2,28($sp)
.L800a7594:
/* 0x800a7594 */ addu	$a2,$s3,$zero
.L800a7598:
/* 0x800a7598 */ addu	$a3,$zero,$zero
.L800a759c:
/* 0x800a759c */ lhu	$a1,2($s3)
.L800a75a0:
/* 0x800a75a0 */ addiu	$s3,$s3,12
.L800a75a4:
/* 0x800a75a4 */ lw	$a0,56($sp)
.L800a75a8:
/* 0x800a75a8 */ lw	$t2,52($sp)
.L800a75ac:
/* 0x800a75ac */ addiu	$s1,$zero,-115
.L800a75b0:
/* 0x800a75b0 */ sw	$zero,16($sp)
.L800a75b4:
/* 0x800a75b4 */ sw	$zero,20($sp)
.L800a75b8:
/* 0x800a75b8 */ sw	$t2,24($sp)
.L800a75bc:
/* 0x800a75bc */ addiu	$t2,$zero,16
.L800a75c0:
/* 0x800a75c0 */ subu	$a1,$s1,$a1
.L800a75c4:
/* 0x800a75c4 */ jal	0x800ac2bc
.L800a75c8:
/* 0x800a75c8 */ sw	$t2,28($sp)
.L800a75cc:
/* 0x800a75cc */ addu	$a2,$s3,$zero
.L800a75d0:
/* 0x800a75d0 */ lhu	$a0,0($a2)
.L800a75d4:
/* 0x800a75d4 */ lhu	$a1,2($a2)
.L800a75d8:
/* 0x800a75d8 */ lw	$t2,52($sp)
.L800a75dc:
/* 0x800a75dc */ addu	$a3,$zero,$zero
.L800a75e0:
/* 0x800a75e0 */ sw	$zero,16($sp)
.L800a75e4:
/* 0x800a75e4 */ sw	$zero,20($sp)
.L800a75e8:
/* 0x800a75e8 */ sw	$t2,24($sp)
.L800a75ec:
/* 0x800a75ec */ addiu	$t2,$zero,16
.L800a75f0:
/* 0x800a75f0 */ subu	$a0,$s0,$a0
.L800a75f4:
/* 0x800a75f4 */ subu	$a1,$s1,$a1
.L800a75f8:
/* 0x800a75f8 */ jal	0x800ac2bc
.L800a75fc:
/* 0x800a75fc */ sw	$t2,28($sp)
.L800a7600:
/* 0x800a7600 */ lui	$v0,0x800e
.L800a7604:
/* 0x800a7604 */ addiu	$s3,$v0,9616
.L800a7608:
/* 0x800a7608 */ addu	$a2,$s3,$zero
.L800a760c:
/* 0x800a760c */ lw	$t2,56($sp)
.L800a7610:
/* 0x800a7610 */ addu	$a3,$zero,$zero
.L800a7614:
/* 0x800a7614 */ sw	$zero,16($sp)
.L800a7618:
/* 0x800a7618 */ sw	$zero,20($sp)
.L800a761c:
/* 0x800a761c */ addu	$s2,$t2,$s8
.L800a7620:
/* 0x800a7620 */ addu	$a0,$s2,$zero
.L800a7624:
/* 0x800a7624 */ addiu	$t2,$zero,-150
.L800a7628:
/* 0x800a7628 */ sll	$s0,$t2,0x10
.L800a762c:
/* 0x800a762c */ sra	$s0,$s0,0x10
.L800a7630:
/* 0x800a7630 */ addiu	$t2,$zero,70
.L800a7634:
/* 0x800a7634 */ sll	$s4,$t2,0x10
.L800a7638:
/* 0x800a7638 */ sra	$s6,$s4,0x10
.L800a763c:
/* 0x800a763c */ srl	$s1,$s6,0x1
.L800a7640:
/* 0x800a7640 */ lw	$t2,52($sp)
.L800a7644:
/* 0x800a7644 */ subu	$a1,$s0,$s1
.L800a7648:
/* 0x800a7648 */ sw	$t2,24($sp)
.L800a764c:
/* 0x800a764c */ addiu	$t2,$zero,16
.L800a7650:
/* 0x800a7650 */ jal	0x800ac2bc
.L800a7654:
/* 0x800a7654 */ sw	$t2,28($sp)
.L800a7658:
/* 0x800a7658 */ addu	$a0,$s2,$zero
.L800a765c:
/* 0x800a765c */ addu	$s0,$s0,$s1
.L800a7660:
/* 0x800a7660 */ addiu	$a1,$s0,-20
.L800a7664:
/* 0x800a7664 */ addiu	$a2,$s3,12
.L800a7668:
/* 0x800a7668 */ lw	$t2,52($sp)
.L800a766c:
/* 0x800a766c */ addu	$a3,$zero,$zero
.L800a7670:
/* 0x800a7670 */ sw	$zero,16($sp)
.L800a7674:
/* 0x800a7674 */ sw	$zero,20($sp)
.L800a7678:
/* 0x800a7678 */ sw	$t2,24($sp)
.L800a767c:
/* 0x800a767c */ addiu	$t2,$zero,16
.L800a7680:
/* 0x800a7680 */ jal	0x800ac2bc
.L800a7684:
/* 0x800a7684 */ sw	$t2,28($sp)
.L800a7688:
/* 0x800a7688 */ addiu	$s5,$s5,1
.L800a768c:
/* 0x800a768c */ addiu	$t2,$zero,22
.L800a7690:
/* 0x800a7690 */ srl	$v0,$t2,0x1
.L800a7694:
/* 0x800a7694 */ slt	$v0,$s5,$v0
.L800a7698:
/* 0x800a7698 */ bne	$v0,$zero,.L800a7600
.L800a769c:
/* 0x800a769c */ addiu	$s8,$s8,2
.L800a76a0:
/* 0x800a76a0 */ addiu	$v0,$s6,-40
.L800a76a4:
/* 0x800a76a4 */ blez	$v0,.L800a7764
.L800a76a8:
/* 0x800a76a8 */ addu	$s5,$zero,$zero
.L800a76ac:
/* 0x800a76ac */ lhu	$t2,32($sp)
.L800a76b0:
/* 0x800a76b0 */ addiu	$s2,$zero,20
.L800a76b4:
/* 0x800a76b4 */ sll	$v0,$t2,0x10
.L800a76b8:
/* 0x800a76b8 */ sra	$s8,$v0,0x10
.L800a76bc:
/* 0x800a76bc */ addiu	$t2,$zero,94
.L800a76c0:
/* 0x800a76c0 */ srl	$s6,$t2,0x1
.L800a76c4:
/* 0x800a76c4 */ addu	$t2,$s8,$s6
.L800a76c8:
/* 0x800a76c8 */ sw	$t2,64($sp)
.L800a76cc:
/* 0x800a76cc */ lui	$v0,0x800e
.L800a76d0:
/* 0x800a76d0 */ addiu	$s3,$v0,9640
.L800a76d4:
/* 0x800a76d4 */ subu	$a0,$s8,$s6
.L800a76d8:
/* 0x800a76d8 */ addiu	$t2,$zero,-150
.L800a76dc:
/* 0x800a76dc */ sll	$s0,$t2,0x10
.L800a76e0:
/* 0x800a76e0 */ sra	$s0,$s0,0x10
.L800a76e4:
/* 0x800a76e4 */ sra	$s1,$s4,0x10
.L800a76e8:
/* 0x800a76e8 */ srl	$v0,$s1,0x1
.L800a76ec:
/* 0x800a76ec */ subu	$s0,$s0,$v0
.L800a76f0:
/* 0x800a76f0 */ addu	$s0,$s0,$s2
.L800a76f4:
/* 0x800a76f4 */ addu	$a1,$s0,$zero
.L800a76f8:
/* 0x800a76f8 */ addu	$a2,$s3,$zero
.L800a76fc:
/* 0x800a76fc */ lw	$t2,52($sp)
.L800a7700:
/* 0x800a7700 */ addu	$a3,$zero,$zero
.L800a7704:
/* 0x800a7704 */ sw	$zero,16($sp)
.L800a7708:
/* 0x800a7708 */ sw	$zero,20($sp)
.L800a770c:
/* 0x800a770c */ sw	$t2,24($sp)
.L800a7710:
/* 0x800a7710 */ addiu	$t2,$zero,16
.L800a7714:
/* 0x800a7714 */ jal	0x800ac2bc
.L800a7718:
/* 0x800a7718 */ sw	$t2,28($sp)
.L800a771c:
/* 0x800a771c */ addu	$a1,$s0,$zero
.L800a7720:
/* 0x800a7720 */ lw	$t2,64($sp)
.L800a7724:
/* 0x800a7724 */ addiu	$a2,$s3,12
.L800a7728:
/* 0x800a7728 */ addiu	$a0,$t2,-36
.L800a772c:
/* 0x800a772c */ lw	$t2,52($sp)
.L800a7730:
/* 0x800a7730 */ addu	$a3,$zero,$zero
.L800a7734:
/* 0x800a7734 */ sw	$zero,16($sp)
.L800a7738:
/* 0x800a7738 */ sw	$zero,20($sp)
.L800a773c:
/* 0x800a773c */ sw	$t2,24($sp)
.L800a7740:
/* 0x800a7740 */ addiu	$t2,$zero,16
.L800a7744:
/* 0x800a7744 */ jal	0x800ac2bc
.L800a7748:
/* 0x800a7748 */ sw	$t2,28($sp)
.L800a774c:
/* 0x800a774c */ addiu	$s5,$s5,1
.L800a7750:
/* 0x800a7750 */ addiu	$s1,$s1,-40
.L800a7754:
/* 0x800a7754 */ sra	$s1,$s1,0x1
.L800a7758:
/* 0x800a7758 */ slt	$s1,$s5,$s1
.L800a775c:
/* 0x800a775c */ bne	$s1,$zero,.L800a76cc
.L800a7760:
/* 0x800a7760 */ addiu	$s2,$s2,2
.L800a7764:
/* 0x800a7764 */ lui	$v0,0x800e
.L800a7768:
/* 0x800a7768 */ lw	$v0,2840($v0)
.L800a776c:
/* 0x800a776c */ sll	$zero,$zero,0x0
.L800a7770:
/* 0x800a7770 */ addu	$v0,$v0,$s7
.L800a7774:
/* 0x800a7774 */ lbu	$v0,82($v0)
.L800a7778:
/* 0x800a7778 */ sll	$zero,$zero,0x0
.L800a777c:
/* 0x800a777c */ srl	$t0,$v0,0x1
.L800a7780:
/* 0x800a7780 */ sltiu	$v0,$t0,7
.L800a7784:
/* 0x800a7784 */ bne	$v0,$zero,.L800a77dc
.L800a7788:
/* 0x800a7788 */ lui	$v1,0x800e
.L800a778c:
/* 0x800a778c */ lui	$v0,0x800e
.L800a7790:
/* 0x800a7790 */ addiu	$v0,$v0,9544
.L800a7794:
/* 0x800a7794 */ lw	$t2,72($sp)
.L800a7798:
/* 0x800a7798 */ addiu	$a1,$zero,-180
.L800a779c:
/* 0x800a779c */ addu	$s3,$t2,$v0
.L800a77a0:
/* 0x800a77a0 */ addu	$a2,$s3,$zero
.L800a77a4:
/* 0x800a77a4 */ lhu	$v0,0($a2)
.L800a77a8:
/* 0x800a77a8 */ lw	$t2,52($sp)
.L800a77ac:
/* 0x800a77ac */ addu	$a3,$zero,$zero
.L800a77b0:
/* 0x800a77b0 */ sw	$zero,16($sp)
.L800a77b4:
/* 0x800a77b4 */ sw	$zero,20($sp)
.L800a77b8:
/* 0x800a77b8 */ sw	$t2,24($sp)
.L800a77bc:
/* 0x800a77bc */ addiu	$t2,$zero,16
.L800a77c0:
/* 0x800a77c0 */ sw	$t2,28($sp)
.L800a77c4:
/* 0x800a77c4 */ lhu	$t2,32($sp)
.L800a77c8:
/* 0x800a77c8 */ srl	$v0,$v0,0x1
.L800a77cc:
/* 0x800a77cc */ sll	$a0,$t2,0x10
.L800a77d0:
/* 0x800a77d0 */ sra	$a0,$a0,0x10
.L800a77d4:
/* 0x800a77d4 */ j	.L800a7848
.L800a77d8:
/* 0x800a77d8 */ subu	$a0,$a0,$v0
.L800a77dc:
/* 0x800a77dc */ addiu	$v1,$v1,9520
.L800a77e0:
/* 0x800a77e0 */ lui	$v0,0xaaaa
.L800a77e4:
/* 0x800a77e4 */ ori	$v0,$v0,0xaaab
.L800a77e8:
/* 0x800a77e8 */ addiu	$a1,$zero,-180
.L800a77ec:
/* 0x800a77ec */ lw	$t2,72($sp)
.L800a77f0:
/* 0x800a77f0 */ multu	$t0,$v0
.L800a77f4:
/* 0x800a77f4 */ addu	$s3,$t2,$v1
.L800a77f8:
/* 0x800a77f8 */ lhu	$v0,0($s3)
.L800a77fc:
/* 0x800a77fc */ lw	$t2,52($sp)
.L800a7800:
/* 0x800a7800 */ addu	$a2,$s3,$zero
.L800a7804:
/* 0x800a7804 */ sw	$t0,20($sp)
.L800a7808:
/* 0x800a7808 */ sw	$t2,24($sp)
.L800a780c:
/* 0x800a780c */ addiu	$t2,$zero,16
.L800a7810:
/* 0x800a7810 */ sw	$t2,28($sp)
.L800a7814:
/* 0x800a7814 */ lhu	$t2,32($sp)
.L800a7818:
/* 0x800a7818 */ srl	$v0,$v0,0x1
.L800a781c:
/* 0x800a781c */ sll	$a0,$t2,0x10
.L800a7820:
/* 0x800a7820 */ sra	$a0,$a0,0x10
.L800a7824:
/* 0x800a7824 */ subu	$a0,$a0,$v0
.L800a7828:
/* 0x800a7828 */ mfhi	$t2
.L800a782c:
/* 0x800a782c */ srl	$v0,$t2,0x1
.L800a7830:
/* 0x800a7830 */ sll	$a3,$v0,0x1
.L800a7834:
/* 0x800a7834 */ addu	$a3,$a3,$v0
.L800a7838:
/* 0x800a7838 */ subu	$a3,$t0,$a3
.L800a783c:
/* 0x800a783c */ andi	$a3,$a3,0xff
.L800a7840:
/* 0x800a7840 */ andi	$v0,$v0,0xff
.L800a7844:
/* 0x800a7844 */ sw	$v0,16($sp)
.L800a7848:
/* 0x800a7848 */ jal	0x800ac2bc
.L800a784c:
/* 0x800a784c */ sll	$zero,$zero,0x0
.L800a7850:
/* 0x800a7850 */ lw	$t2,72($sp)
.L800a7854:
/* 0x800a7854 */ sll	$zero,$zero,0x0
.L800a7858:
/* 0x800a7858 */ addiu	$t2,$t2,12
.L800a785c:
/* 0x800a785c */ sw	$t2,72($sp)
.L800a7860:
/* 0x800a7860 */ lw	$t2,76($sp)
.L800a7864:
/* 0x800a7864 */ ori	$v0,$zero,0x9284
.L800a7868:
/* 0x800a7868 */ addu	$t2,$t2,$v0
.L800a786c:
/* 0x800a786c */ sw	$t2,76($sp)
.L800a7870:
/* 0x800a7870 */ lhu	$t2,40($sp)
.L800a7874:
/* 0x800a7874 */ addiu	$s7,$s7,1
.L800a7878:
/* 0x800a7878 */ sll	$v0,$t2,0x10
.L800a787c:
/* 0x800a787c */ sra	$v0,$v0,0x10
.L800a7880:
/* 0x800a7880 */ negu	$v0,$v0
.L800a7884:
/* 0x800a7884 */ sh	$v0,40($sp)
.L800a7888:
/* 0x800a7888 */ slti	$v0,$s7,2
.L800a788c:
/* 0x800a788c */ bne	$v0,$zero,.L800a74c4
.L800a7890:
/* 0x800a7890 */ lui	$v0,0x800e
.L800a7894:
/* 0x800a7894 */ addu	$s7,$zero,$zero
.L800a7898:
/* 0x800a7898 */ addiu	$s3,$v0,9376
.L800a789c:
/* 0x800a789c */ lui	$s0,0x5555
.L800a78a0:
/* 0x800a78a0 */ ori	$s0,$s0,0x5556
.L800a78a4:
/* 0x800a78a4 */ lbu	$s1,48($sp)
.L800a78a8:
/* 0x800a78a8 */ mult	$s7,$s0
.L800a78ac:
/* 0x800a78ac */ addu	$a2,$s3,$zero
.L800a78b0:
/* 0x800a78b0 */ addu	$a3,$zero,$zero
.L800a78b4:
/* 0x800a78b4 */ addiu	$s3,$s3,12
.L800a78b8:
/* 0x800a78b8 */ addiu	$v0,$zero,16
.L800a78bc:
/* 0x800a78bc */ sra	$a1,$s7,0x1f
.L800a78c0:
/* 0x800a78c0 */ sw	$zero,16($sp)
.L800a78c4:
/* 0x800a78c4 */ sw	$zero,20($sp)
.L800a78c8:
/* 0x800a78c8 */ sw	$s1,24($sp)
.L800a78cc:
/* 0x800a78cc */ sw	$v0,28($sp)
.L800a78d0:
/* 0x800a78d0 */ mfhi	$t2
.L800a78d4:
/* 0x800a78d4 */ subu	$a1,$t2,$a1
.L800a78d8:
/* 0x800a78d8 */ sll	$a0,$a1,0x1
.L800a78dc:
/* 0x800a78dc */ addu	$a0,$a0,$a1
.L800a78e0:
/* 0x800a78e0 */ subu	$a0,$s7,$a0
.L800a78e4:
/* 0x800a78e4 */ sll	$a0,$a0,0x8
.L800a78e8:
/* 0x800a78e8 */ addiu	$a0,$a0,-320
.L800a78ec:
/* 0x800a78ec */ sll	$a1,$a1,0x8
.L800a78f0:
/* 0x800a78f0 */ jal	0x800ac2bc
.L800a78f4:
/* 0x800a78f4 */ addiu	$a1,$a1,-240
.L800a78f8:
/* 0x800a78f8 */ addiu	$s7,$s7,1
.L800a78fc:
/* 0x800a78fc */ slti	$v0,$s7,6
.L800a7900:
/* 0x800a7900 */ bne	$v0,$zero,.L800a78ac
.L800a7904:
/* 0x800a7904 */ mult	$s7,$s0
.L800a7908:
/* 0x800a7908 */ lw	$ra,116($sp)
.L800a790c:
/* 0x800a790c */ lw	$s8,112($sp)
.L800a7910:
/* 0x800a7910 */ lw	$s7,108($sp)
.L800a7914:
/* 0x800a7914 */ lw	$s6,104($sp)
.L800a7918:
/* 0x800a7918 */ lw	$s5,100($sp)
.L800a791c:
/* 0x800a791c */ lw	$s4,96($sp)
.L800a7920:
/* 0x800a7920 */ lw	$s3,92($sp)
.L800a7924:
/* 0x800a7924 */ lw	$s2,88($sp)
.L800a7928:
/* 0x800a7928 */ lw	$s1,84($sp)
.L800a792c:
/* 0x800a792c */ lw	$s0,80($sp)
.L800a7930:
/* 0x800a7930 */ jr	$ra
.L800a7934:
/* 0x800a7934 */ addiu	$sp,$sp,120
.size FUN_800a71d8, .-FUN_800a71d8
.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a7938
.globl FUN_800a7938
.type FUN_800a7938, @function
FUN_800a7938:
.L800a7938:
/* 0x800a7938 */ lui	$v0,0x800e
.L800a793c:
/* 0x800a793c */ lw	$v1,10496($v0)
.L800a7940:
/* 0x800a7940 */ addiu	$sp,$sp,-24
.L800a7944:
/* 0x800a7944 */ sltiu	$v0,$v1,6
.L800a7948:
/* 0x800a7948 */ beq	$v0,$zero,.L800a7a3c
.L800a794c:
/* 0x800a794c */ sw	$ra,16($sp)
.L800a7950:
/* 0x800a7950 */ lui	$v0,0x8002
.L800a7954:
/* 0x800a7954 */ addiu	$v0,$v0,1588
.L800a7958:
/* 0x800a7958 */ sll	$v1,$v1,0x2
.L800a795c:
/* 0x800a795c */ addu	$v1,$v1,$v0
.L800a7960:
/* 0x800a7960 */ lw	$v0,0($v1)
.L800a7964:
/* 0x800a7964 */ sll	$zero,$zero,0x0
.L800a7968:
/* 0x800a7968 */ jr	$v0
.L800a796c:
/* 0x800a796c */ sll	$zero,$zero,0x0
.L800a7970:
/* 0x800a7970 */ jal	0x8002829c
.L800a7974:
/* 0x800a7974 */ sll	$zero,$zero,0x0
.L800a7978:
/* 0x800a7978 */ beq	$v0,$zero,.L800a7998
.L800a797c:
/* 0x800a797c */ lui	$v1,0x800e
.L800a7980:
/* 0x800a7980 */ jal	0x80025b18
.L800a7984:
/* 0x800a7984 */ addiu	$a0,$zero,6
.L800a7988:
/* 0x800a7988 */ lui	$v1,0x800e
.L800a798c:
/* 0x800a798c */ addiu	$v0,$zero,1
.L800a7990:
/* 0x800a7990 */ j	.L800a7a3c
.L800a7994:
/* 0x800a7994 */ sw	$v0,10496($v1)
.L800a7998:
/* 0x800a7998 */ addiu	$v0,$zero,2
.L800a799c:
/* 0x800a799c */ j	.L800a7a3c
.L800a79a0:
/* 0x800a79a0 */ sw	$v0,10496($v1)
.L800a79a4:
/* 0x800a79a4 */ jal	0x8002829c
.L800a79a8:
/* 0x800a79a8 */ sll	$zero,$zero,0x0
.L800a79ac:
/* 0x800a79ac */ bne	$v0,$zero,.L800a7a40
.L800a79b0:
/* 0x800a79b0 */ addu	$v0,$zero,$zero
.L800a79b4:
/* 0x800a79b4 */ j	.L800a7a18
.L800a79b8:
/* 0x800a79b8 */ lui	$v1,0x800e
.L800a79bc:
/* 0x800a79bc */ lui	$a0,0x800b
.L800a79c0:
/* 0x800a79c0 */ addiu	$a0,$a0,-11232
.L800a79c4:
/* 0x800a79c4 */ lui	$a1,0x8017
.L800a79c8:
/* 0x800a79c8 */ jal	0x80020d24
.L800a79cc:
/* 0x800a79cc */ ori	$a1,$a1,0x4000
.L800a79d0:
/* 0x800a79d0 */ bne	$v0,$zero,.L800a7a40
.L800a79d4:
/* 0x800a79d4 */ addu	$v0,$zero,$zero
.L800a79d8:
/* 0x800a79d8 */ j	.L800a7a18
.L800a79dc:
/* 0x800a79dc */ lui	$v1,0x800e
.L800a79e0:
/* 0x800a79e0 */ lui	$v0,0x800b
.L800a79e4:
/* 0x800a79e4 */ lw	$v0,-14196($v0)
.L800a79e8:
/* 0x800a79e8 */ sll	$zero,$zero,0x0
.L800a79ec:
/* 0x800a79ec */ bne	$v0,$zero,.L800a7a40
.L800a79f0:
/* 0x800a79f0 */ addu	$v0,$zero,$zero
.L800a79f4:
/* 0x800a79f4 */ j	.L800a7a18
.L800a79f8:
/* 0x800a79f8 */ lui	$v1,0x800e
.L800a79fc:
/* 0x800a79fc */ lui	$v0,0x800b
.L800a7a00:
/* 0x800a7a00 */ lw	$v0,-14100($v0)
.L800a7a04:
/* 0x800a7a04 */ lui	$a0,0x8017
.L800a7a08:
/* 0x800a7a08 */ lw	$a1,144($v0)
.L800a7a0c:
/* 0x800a7a0c */ jal	0x8002a9dc
.L800a7a10:
/* 0x800a7a10 */ ori	$a0,$a0,0x4000
.L800a7a14:
/* 0x800a7a14 */ lui	$v1,0x800e
.L800a7a18:
/* 0x800a7a18 */ lw	$v0,10496($v1)
.L800a7a1c:
/* 0x800a7a1c */ sll	$zero,$zero,0x0
.L800a7a20:
/* 0x800a7a20 */ addiu	$v0,$v0,1
.L800a7a24:
/* 0x800a7a24 */ j	.L800a7a3c
.L800a7a28:
/* 0x800a7a28 */ sw	$v0,10496($v1)
.L800a7a2c:
/* 0x800a7a2c */ lui	$v0,0x800e
.L800a7a30:
/* 0x800a7a30 */ sw	$zero,10496($v0)
.L800a7a34:
/* 0x800a7a34 */ j	.L800a7a40
.L800a7a38:
/* 0x800a7a38 */ addiu	$v0,$zero,1
.L800a7a3c:
/* 0x800a7a3c */ addu	$v0,$zero,$zero
.L800a7a40:
/* 0x800a7a40 */ lw	$ra,16($sp)
.L800a7a44:
/* 0x800a7a44 */ sll	$zero,$zero,0x0
.L800a7a48:
/* 0x800a7a48 */ jr	$ra
.L800a7a4c:
/* 0x800a7a4c */ addiu	$sp,$sp,24
.size FUN_800a7938, .-FUN_800a7938
