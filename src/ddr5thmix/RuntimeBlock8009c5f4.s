.set noreorder
.set noat
.set nomacro

.section .text.FUN_8009c5f4
.globl FUN_8009c5f4
.type FUN_8009c5f4, @function
FUN_8009c5f4:
.L8009c5f4:
/* 0x8009c5f4 */ lui	$a3,0x800b
.L8009c5f8:
/* 0x8009c5f8 */ lw	$v1,-14104($a3)
.L8009c5fc:
/* 0x8009c5fc */ sll	$zero,$zero,0x0
.L8009c600:
/* 0x8009c600 */ lbu	$a2,243($v1)
.L8009c604:
/* 0x8009c604 */ addiu	$v0,$zero,1
.L8009c608:
/* 0x8009c608 */ bne	$a2,$v0,.L8009d118
.L8009c60c:
/* 0x8009c60c */ addiu	$sp,$sp,-8
.L8009c610:
/* 0x8009c610 */ sw	$a0,0($sp)
.L8009c614:
/* 0x8009c614 */ sw	$a1,4($sp)
.L8009c618:
/* 0x8009c618 */ lbu	$v0,258($v1)
.L8009c61c:
/* 0x8009c61c */ sll	$zero,$zero,0x0
.L8009c620:
/* 0x8009c620 */ bne	$v0,$a2,.L8009c984
.L8009c624:
/* 0x8009c624 */ addu	$t0,$zero,$zero
.L8009c628:
/* 0x8009c628 */ addiu	$t1,$a3,-14104
.L8009c62c:
/* 0x8009c62c */ andi	$a2,$t0,0xff
.L8009c630:
/* 0x8009c630 */ lw	$v0,-14104($a3)
.L8009c634:
/* 0x8009c634 */ sll	$a1,$a2,0x4
.L8009c638:
/* 0x8009c638 */ addu	$v0,$v0,$a1
.L8009c63c:
/* 0x8009c63c */ lw	$v0,80($v0)
.L8009c640:
/* 0x8009c640 */ sll	$zero,$zero,0x0
.L8009c644:
/* 0x8009c644 */ andi	$v0,$v0,0x100
.L8009c648:
/* 0x8009c648 */ beq	$v0,$zero,.L8009c66c
.L8009c64c:
/* 0x8009c64c */ sll	$v0,$a2,0x2
.L8009c650:
/* 0x8009c650 */ addu	$v0,$sp,$v0
.L8009c654:
/* 0x8009c654 */ lw	$v1,0($v0)
.L8009c658:
/* 0x8009c658 */ sll	$zero,$zero,0x0
.L8009c65c:
/* 0x8009c65c */ lw	$v0,0($v1)
.L8009c660:
/* 0x8009c660 */ sll	$zero,$zero,0x0
.L8009c664:
/* 0x8009c664 */ ori	$v0,$v0,0x100
.L8009c668:
/* 0x8009c668 */ sw	$v0,0($v1)
.L8009c66c:
/* 0x8009c66c */ lw	$v0,-14104($a3)
.L8009c670:
/* 0x8009c670 */ sll	$zero,$zero,0x0
.L8009c674:
/* 0x8009c674 */ addu	$v0,$v0,$a1
.L8009c678:
/* 0x8009c678 */ lw	$v0,80($v0)
.L8009c67c:
/* 0x8009c67c */ sll	$zero,$zero,0x0
.L8009c680:
/* 0x8009c680 */ andi	$v0,$v0,0x800
.L8009c684:
/* 0x8009c684 */ beq	$v0,$zero,.L8009c6a8
.L8009c688:
/* 0x8009c688 */ sll	$v0,$a2,0x2
.L8009c68c:
/* 0x8009c68c */ addu	$v0,$sp,$v0
.L8009c690:
/* 0x8009c690 */ lw	$v1,0($v0)
.L8009c694:
/* 0x8009c694 */ sll	$zero,$zero,0x0
.L8009c698:
/* 0x8009c698 */ lw	$v0,0($v1)
.L8009c69c:
/* 0x8009c69c */ sll	$zero,$zero,0x0
.L8009c6a0:
/* 0x8009c6a0 */ ori	$v0,$v0,0x800
.L8009c6a4:
/* 0x8009c6a4 */ sw	$v0,0($v1)
.L8009c6a8:
/* 0x8009c6a8 */ lw	$v0,-14104($a3)
.L8009c6ac:
/* 0x8009c6ac */ sll	$zero,$zero,0x0
.L8009c6b0:
/* 0x8009c6b0 */ addu	$v0,$v0,$a1
.L8009c6b4:
/* 0x8009c6b4 */ lw	$v0,80($v0)
.L8009c6b8:
/* 0x8009c6b8 */ sll	$zero,$zero,0x0
.L8009c6bc:
/* 0x8009c6bc */ andi	$v0,$v0,0x1000
.L8009c6c0:
/* 0x8009c6c0 */ beq	$v0,$zero,.L8009c6e4
.L8009c6c4:
/* 0x8009c6c4 */ sll	$v0,$a2,0x2
.L8009c6c8:
/* 0x8009c6c8 */ addu	$v0,$sp,$v0
.L8009c6cc:
/* 0x8009c6cc */ lw	$v1,0($v0)
.L8009c6d0:
/* 0x8009c6d0 */ sll	$zero,$zero,0x0
.L8009c6d4:
/* 0x8009c6d4 */ lw	$v0,0($v1)
.L8009c6d8:
/* 0x8009c6d8 */ sll	$zero,$zero,0x0
.L8009c6dc:
/* 0x8009c6dc */ ori	$v0,$v0,0x1000
.L8009c6e0:
/* 0x8009c6e0 */ sw	$v0,0($v1)
.L8009c6e4:
/* 0x8009c6e4 */ lw	$v0,-14104($a3)
.L8009c6e8:
/* 0x8009c6e8 */ sll	$zero,$zero,0x0
.L8009c6ec:
/* 0x8009c6ec */ addu	$v0,$v0,$a1
.L8009c6f0:
/* 0x8009c6f0 */ lw	$v0,80($v0)
.L8009c6f4:
/* 0x8009c6f4 */ sll	$zero,$zero,0x0
.L8009c6f8:
/* 0x8009c6f8 */ andi	$v0,$v0,0x2000
.L8009c6fc:
/* 0x8009c6fc */ beq	$v0,$zero,.L8009c720
.L8009c700:
/* 0x8009c700 */ sll	$v0,$a2,0x2
.L8009c704:
/* 0x8009c704 */ addu	$v0,$sp,$v0
.L8009c708:
/* 0x8009c708 */ lw	$v1,0($v0)
.L8009c70c:
/* 0x8009c70c */ sll	$zero,$zero,0x0
.L8009c710:
/* 0x8009c710 */ lw	$v0,0($v1)
.L8009c714:
/* 0x8009c714 */ sll	$zero,$zero,0x0
.L8009c718:
/* 0x8009c718 */ ori	$v0,$v0,0x2000
.L8009c71c:
/* 0x8009c71c */ sw	$v0,0($v1)
.L8009c720:
/* 0x8009c720 */ lw	$v0,-14104($a3)
.L8009c724:
/* 0x8009c724 */ sll	$zero,$zero,0x0
.L8009c728:
/* 0x8009c728 */ addu	$v0,$v0,$a1
.L8009c72c:
/* 0x8009c72c */ lw	$v0,80($v0)
.L8009c730:
/* 0x8009c730 */ sll	$zero,$zero,0x0
.L8009c734:
/* 0x8009c734 */ andi	$v0,$v0,0x4000
.L8009c738:
/* 0x8009c738 */ beq	$v0,$zero,.L8009c75c
.L8009c73c:
/* 0x8009c73c */ sll	$v0,$a2,0x2
.L8009c740:
/* 0x8009c740 */ addu	$v0,$sp,$v0
.L8009c744:
/* 0x8009c744 */ lw	$v1,0($v0)
.L8009c748:
/* 0x8009c748 */ sll	$zero,$zero,0x0
.L8009c74c:
/* 0x8009c74c */ lw	$v0,0($v1)
.L8009c750:
/* 0x8009c750 */ sll	$zero,$zero,0x0
.L8009c754:
/* 0x8009c754 */ ori	$v0,$v0,0x4000
.L8009c758:
/* 0x8009c758 */ sw	$v0,0($v1)
.L8009c75c:
/* 0x8009c75c */ lw	$v0,-14104($a3)
.L8009c760:
/* 0x8009c760 */ sll	$zero,$zero,0x0
.L8009c764:
/* 0x8009c764 */ addu	$v0,$v0,$a1
.L8009c768:
/* 0x8009c768 */ lw	$v0,80($v0)
.L8009c76c:
/* 0x8009c76c */ sll	$zero,$zero,0x0
.L8009c770:
/* 0x8009c770 */ andi	$v0,$v0,0x8000
.L8009c774:
/* 0x8009c774 */ beq	$v0,$zero,.L8009c798
.L8009c778:
/* 0x8009c778 */ sll	$v0,$a2,0x2
.L8009c77c:
/* 0x8009c77c */ addu	$v0,$sp,$v0
.L8009c780:
/* 0x8009c780 */ lw	$v1,0($v0)
.L8009c784:
/* 0x8009c784 */ sll	$zero,$zero,0x0
.L8009c788:
/* 0x8009c788 */ lw	$v0,0($v1)
.L8009c78c:
/* 0x8009c78c */ sll	$zero,$zero,0x0
.L8009c790:
/* 0x8009c790 */ ori	$v0,$v0,0x8000
.L8009c794:
/* 0x8009c794 */ sw	$v0,0($v1)
.L8009c798:
/* 0x8009c798 */ lw	$a0,-14104($a3)
.L8009c79c:
/* 0x8009c79c */ sll	$zero,$zero,0x0
.L8009c7a0:
/* 0x8009c7a0 */ lbu	$v1,259($a0)
.L8009c7a4:
/* 0x8009c7a4 */ addiu	$v0,$zero,1
.L8009c7a8:
/* 0x8009c7a8 */ bne	$v1,$v0,.L8009c808
.L8009c7ac:
/* 0x8009c7ac */ addu	$v0,$a0,$a1
.L8009c7b0:
/* 0x8009c7b0 */ lw	$v0,80($v0)
.L8009c7b4:
/* 0x8009c7b4 */ sll	$zero,$zero,0x0
.L8009c7b8:
/* 0x8009c7b8 */ andi	$v0,$v0,0x40
.L8009c7bc:
/* 0x8009c7bc */ beq	$v0,$zero,.L8009c7e0
.L8009c7c0:
/* 0x8009c7c0 */ sll	$v0,$a2,0x2
.L8009c7c4:
/* 0x8009c7c4 */ addu	$v0,$sp,$v0
.L8009c7c8:
/* 0x8009c7c8 */ lw	$v1,0($v0)
.L8009c7cc:
/* 0x8009c7cc */ sll	$zero,$zero,0x0
.L8009c7d0:
/* 0x8009c7d0 */ lw	$v0,0($v1)
.L8009c7d4:
/* 0x8009c7d4 */ sll	$zero,$zero,0x0
.L8009c7d8:
/* 0x8009c7d8 */ ori	$v0,$v0,0x4
.L8009c7dc:
/* 0x8009c7dc */ sw	$v0,0($v1)
.L8009c7e0:
/* 0x8009c7e0 */ lw	$v0,-14104($a3)
.L8009c7e4:
/* 0x8009c7e4 */ sll	$zero,$zero,0x0
.L8009c7e8:
/* 0x8009c7e8 */ addu	$v0,$v0,$a1
.L8009c7ec:
/* 0x8009c7ec */ lw	$v0,80($v0)
.L8009c7f0:
/* 0x8009c7f0 */ sll	$zero,$zero,0x0
.L8009c7f4:
/* 0x8009c7f4 */ andi	$v0,$v0,0x20
.L8009c7f8:
/* 0x8009c7f8 */ beq	$v0,$zero,.L8009c968
.L8009c7fc:
/* 0x8009c7fc */ sll	$v0,$a2,0x2
.L8009c800:
/* 0x8009c800 */ j	.L8009c950
.L8009c804:
/* 0x8009c804 */ addu	$v0,$sp,$v0
.L8009c808:
/* 0x8009c808 */ lw	$v0,80($v0)
.L8009c80c:
/* 0x8009c80c */ sll	$zero,$zero,0x0
.L8009c810:
/* 0x8009c810 */ andi	$v0,$v0,0x10
.L8009c814:
/* 0x8009c814 */ beq	$v0,$zero,.L8009c838
.L8009c818:
/* 0x8009c818 */ sll	$v0,$a2,0x2
.L8009c81c:
/* 0x8009c81c */ addu	$v0,$sp,$v0
.L8009c820:
/* 0x8009c820 */ lw	$v1,0($v0)
.L8009c824:
/* 0x8009c824 */ sll	$zero,$zero,0x0
.L8009c828:
/* 0x8009c828 */ lw	$v0,0($v1)
.L8009c82c:
/* 0x8009c82c */ sll	$zero,$zero,0x0
.L8009c830:
/* 0x8009c830 */ ori	$v0,$v0,0x1000
.L8009c834:
/* 0x8009c834 */ sw	$v0,0($v1)
.L8009c838:
/* 0x8009c838 */ lw	$v0,-14104($a3)
.L8009c83c:
/* 0x8009c83c */ sll	$zero,$zero,0x0
.L8009c840:
/* 0x8009c840 */ addu	$v0,$v0,$a1
.L8009c844:
/* 0x8009c844 */ lw	$v0,80($v0)
.L8009c848:
/* 0x8009c848 */ sll	$zero,$zero,0x0
.L8009c84c:
/* 0x8009c84c */ andi	$v0,$v0,0x20
.L8009c850:
/* 0x8009c850 */ beq	$v0,$zero,.L8009c874
.L8009c854:
/* 0x8009c854 */ sll	$v0,$a2,0x2
.L8009c858:
/* 0x8009c858 */ addu	$v0,$sp,$v0
.L8009c85c:
/* 0x8009c85c */ lw	$v1,0($v0)
.L8009c860:
/* 0x8009c860 */ sll	$zero,$zero,0x0
.L8009c864:
/* 0x8009c864 */ lw	$v0,0($v1)
.L8009c868:
/* 0x8009c868 */ sll	$zero,$zero,0x0
.L8009c86c:
/* 0x8009c86c */ ori	$v0,$v0,0x2000
.L8009c870:
/* 0x8009c870 */ sw	$v0,0($v1)
.L8009c874:
/* 0x8009c874 */ lw	$v0,-14104($a3)
.L8009c878:
/* 0x8009c878 */ sll	$zero,$zero,0x0
.L8009c87c:
/* 0x8009c87c */ addu	$v0,$v0,$a1
.L8009c880:
/* 0x8009c880 */ lw	$v0,80($v0)
.L8009c884:
/* 0x8009c884 */ sll	$zero,$zero,0x0
.L8009c888:
/* 0x8009c888 */ andi	$v0,$v0,0x40
.L8009c88c:
/* 0x8009c88c */ beq	$v0,$zero,.L8009c8b0
.L8009c890:
/* 0x8009c890 */ sll	$v0,$a2,0x2
.L8009c894:
/* 0x8009c894 */ addu	$v0,$sp,$v0
.L8009c898:
/* 0x8009c898 */ lw	$v1,0($v0)
.L8009c89c:
/* 0x8009c89c */ sll	$zero,$zero,0x0
.L8009c8a0:
/* 0x8009c8a0 */ lw	$v0,0($v1)
.L8009c8a4:
/* 0x8009c8a4 */ sll	$zero,$zero,0x0
.L8009c8a8:
/* 0x8009c8a8 */ ori	$v0,$v0,0x4000
.L8009c8ac:
/* 0x8009c8ac */ sw	$v0,0($v1)
.L8009c8b0:
/* 0x8009c8b0 */ andi	$a0,$t0,0xff
.L8009c8b4:
/* 0x8009c8b4 */ lw	$v0,0($t1)
.L8009c8b8:
/* 0x8009c8b8 */ sll	$a1,$a0,0x4
.L8009c8bc:
/* 0x8009c8bc */ addu	$v0,$v0,$a1
.L8009c8c0:
/* 0x8009c8c0 */ lw	$v0,80($v0)
.L8009c8c4:
/* 0x8009c8c4 */ sll	$zero,$zero,0x0
.L8009c8c8:
/* 0x8009c8c8 */ andi	$v0,$v0,0x80
.L8009c8cc:
/* 0x8009c8cc */ beq	$v0,$zero,.L8009c8f0
.L8009c8d0:
/* 0x8009c8d0 */ sll	$v0,$a0,0x2
.L8009c8d4:
/* 0x8009c8d4 */ addu	$v0,$sp,$v0
.L8009c8d8:
/* 0x8009c8d8 */ lw	$v1,0($v0)
.L8009c8dc:
/* 0x8009c8dc */ sll	$zero,$zero,0x0
.L8009c8e0:
/* 0x8009c8e0 */ lw	$v0,0($v1)
.L8009c8e4:
/* 0x8009c8e4 */ sll	$zero,$zero,0x0
.L8009c8e8:
/* 0x8009c8e8 */ ori	$v0,$v0,0x8000
.L8009c8ec:
/* 0x8009c8ec */ sw	$v0,0($v1)
.L8009c8f0:
/* 0x8009c8f0 */ lw	$v0,0($t1)
.L8009c8f4:
/* 0x8009c8f4 */ sll	$zero,$zero,0x0
.L8009c8f8:
/* 0x8009c8f8 */ addu	$v0,$v0,$a1
.L8009c8fc:
/* 0x8009c8fc */ lw	$v0,80($v0)
.L8009c900:
/* 0x8009c900 */ sll	$zero,$zero,0x0
.L8009c904:
/* 0x8009c904 */ andi	$v0,$v0,0x5
.L8009c908:
/* 0x8009c908 */ beq	$v0,$zero,.L8009c92c
.L8009c90c:
/* 0x8009c90c */ sll	$v0,$a0,0x2
.L8009c910:
/* 0x8009c910 */ addu	$v0,$sp,$v0
.L8009c914:
/* 0x8009c914 */ lw	$v1,0($v0)
.L8009c918:
/* 0x8009c918 */ sll	$zero,$zero,0x0
.L8009c91c:
/* 0x8009c91c */ lw	$v0,0($v1)
.L8009c920:
/* 0x8009c920 */ sll	$zero,$zero,0x0
.L8009c924:
/* 0x8009c924 */ ori	$v0,$v0,0x4
.L8009c928:
/* 0x8009c928 */ sw	$v0,0($v1)
.L8009c92c:
/* 0x8009c92c */ lw	$v0,0($t1)
.L8009c930:
/* 0x8009c930 */ sll	$zero,$zero,0x0
.L8009c934:
/* 0x8009c934 */ addu	$v0,$v0,$a1
.L8009c938:
/* 0x8009c938 */ lw	$v0,80($v0)
.L8009c93c:
/* 0x8009c93c */ sll	$zero,$zero,0x0
.L8009c940:
/* 0x8009c940 */ andi	$v0,$v0,0xa
.L8009c944:
/* 0x8009c944 */ beq	$v0,$zero,.L8009c968
.L8009c948:
/* 0x8009c948 */ sll	$v0,$a0,0x2
.L8009c94c:
/* 0x8009c94c */ addu	$v0,$sp,$v0
.L8009c950:
/* 0x8009c950 */ lw	$v1,0($v0)
.L8009c954:
/* 0x8009c954 */ sll	$zero,$zero,0x0
.L8009c958:
/* 0x8009c958 */ lw	$v0,0($v1)
.L8009c95c:
/* 0x8009c95c */ sll	$zero,$zero,0x0
.L8009c960:
/* 0x8009c960 */ ori	$v0,$v0,0x8
.L8009c964:
/* 0x8009c964 */ sw	$v0,0($v1)
.L8009c968:
/* 0x8009c968 */ addiu	$t0,$t0,1
.L8009c96c:
/* 0x8009c96c */ andi	$v0,$t0,0xff
.L8009c970:
/* 0x8009c970 */ sltiu	$v0,$v0,2
.L8009c974:
/* 0x8009c974 */ beq	$v0,$zero,.L8009d118
.L8009c978:
/* 0x8009c978 */ sll	$zero,$zero,0x0
.L8009c97c:
/* 0x8009c97c */ j	.L8009c630
.L8009c980:
/* 0x8009c980 */ andi	$a2,$t0,0xff
.L8009c984:
/* 0x8009c984 */ lbu	$v0,242($v1)
.L8009c988:
/* 0x8009c988 */ sll	$zero,$zero,0x0
.L8009c98c:
/* 0x8009c98c */ bne	$v0,$a2,.L8009ce84
.L8009c990:
/* 0x8009c990 */ addu	$a2,$a3,$zero
.L8009c994:
/* 0x8009c994 */ addu	$t0,$zero,$zero
.L8009c998:
/* 0x8009c998 */ lui	$t3,0x800e
.L8009c99c:
/* 0x8009c99c */ addu	$t1,$a3,$zero
.L8009c9a0:
/* 0x8009c9a0 */ lui	$v0,0x800e
.L8009c9a4:
/* 0x8009c9a4 */ addiu	$t2,$v0,3532
.L8009c9a8:
/* 0x8009c9a8 */ andi	$a1,$t0,0xff
.L8009c9ac:
/* 0x8009c9ac */ sll	$a0,$a1,0x1
.L8009c9b0:
/* 0x8009c9b0 */ addu	$a0,$a0,$a1
.L8009c9b4:
/* 0x8009c9b4 */ lw	$v0,2840($t3)
.L8009c9b8:
/* 0x8009c9b8 */ sll	$a0,$a0,0x3
.L8009c9bc:
/* 0x8009c9bc */ lbu	$v1,117($v0)
.L8009c9c0:
/* 0x8009c9c0 */ lui	$v0,0x800e
.L8009c9c4:
/* 0x8009c9c4 */ addiu	$v0,$v0,3484
.L8009c9c8:
/* 0x8009c9c8 */ sll	$v1,$v1,0x3
.L8009c9cc:
/* 0x8009c9cc */ addu	$v1,$v1,$v0
.L8009c9d0:
/* 0x8009c9d0 */ lw	$v0,-14104($t1)
.L8009c9d4:
/* 0x8009c9d4 */ sll	$a2,$a1,0x4
.L8009c9d8:
/* 0x8009c9d8 */ addu	$v0,$v0,$a2
.L8009c9dc:
/* 0x8009c9dc */ lw	$v0,80($v0)
.L8009c9e0:
/* 0x8009c9e0 */ sll	$zero,$zero,0x0
.L8009c9e4:
/* 0x8009c9e4 */ andi	$v0,$v0,0x100
.L8009c9e8:
/* 0x8009c9e8 */ beq	$v0,$zero,.L8009ca10
.L8009c9ec:
/* 0x8009c9ec */ addu	$a3,$a0,$v1
.L8009c9f0:
/* 0x8009c9f0 */ sll	$v0,$a1,0x2
.L8009c9f4:
/* 0x8009c9f4 */ addu	$v0,$sp,$v0
.L8009c9f8:
/* 0x8009c9f8 */ lw	$v1,0($v0)
.L8009c9fc:
/* 0x8009c9fc */ sll	$zero,$zero,0x0
.L8009ca00:
/* 0x8009ca00 */ lw	$v0,0($v1)
.L8009ca04:
/* 0x8009ca04 */ sll	$zero,$zero,0x0
.L8009ca08:
/* 0x8009ca08 */ ori	$v0,$v0,0x100
.L8009ca0c:
/* 0x8009ca0c */ sw	$v0,0($v1)
.L8009ca10:
/* 0x8009ca10 */ lw	$v0,-14104($t1)
.L8009ca14:
/* 0x8009ca14 */ sll	$zero,$zero,0x0
.L8009ca18:
/* 0x8009ca18 */ addu	$v0,$v0,$a2
.L8009ca1c:
/* 0x8009ca1c */ lw	$v0,80($v0)
.L8009ca20:
/* 0x8009ca20 */ sll	$zero,$zero,0x0
.L8009ca24:
/* 0x8009ca24 */ andi	$v0,$v0,0x800
.L8009ca28:
/* 0x8009ca28 */ beq	$v0,$zero,.L8009ca4c
.L8009ca2c:
/* 0x8009ca2c */ sll	$v0,$a1,0x2
.L8009ca30:
/* 0x8009ca30 */ addu	$v0,$sp,$v0
.L8009ca34:
/* 0x8009ca34 */ lw	$v1,0($v0)
.L8009ca38:
/* 0x8009ca38 */ sll	$zero,$zero,0x0
.L8009ca3c:
/* 0x8009ca3c */ lw	$v0,0($v1)
.L8009ca40:
/* 0x8009ca40 */ sll	$zero,$zero,0x0
.L8009ca44:
/* 0x8009ca44 */ ori	$v0,$v0,0x800
.L8009ca48:
/* 0x8009ca48 */ sw	$v0,0($v1)
.L8009ca4c:
/* 0x8009ca4c */ lw	$v1,2840($t3)
.L8009ca50:
/* 0x8009ca50 */ sll	$zero,$zero,0x0
.L8009ca54:
/* 0x8009ca54 */ addu	$v0,$a1,$v1
.L8009ca58:
/* 0x8009ca58 */ lbu	$v0,118($v0)
.L8009ca5c:
/* 0x8009ca5c */ sll	$zero,$zero,0x0
.L8009ca60:
/* 0x8009ca60 */ beq	$v0,$zero,.L8009ccf4
.L8009ca64:
/* 0x8009ca64 */ lui	$v0,0x800e
.L8009ca68:
/* 0x8009ca68 */ addiu	$v0,$v0,3452
.L8009ca6c:
/* 0x8009ca6c */ lbu	$a0,116($v1)
.L8009ca70:
/* 0x8009ca70 */ lw	$v1,-14104($t1)
.L8009ca74:
/* 0x8009ca74 */ sll	$a0,$a0,0x2
.L8009ca78:
/* 0x8009ca78 */ addu	$a0,$a0,$v0
.L8009ca7c:
/* 0x8009ca7c */ addu	$v1,$v1,$a2
.L8009ca80:
/* 0x8009ca80 */ lw	$v0,80($v1)
.L8009ca84:
/* 0x8009ca84 */ sll	$zero,$zero,0x0
.L8009ca88:
/* 0x8009ca88 */ andi	$v0,$v0,0x1
.L8009ca8c:
/* 0x8009ca8c */ beq	$v0,$zero,.L8009cab8
.L8009ca90:
/* 0x8009ca90 */ addu	$a1,$a2,$a0
.L8009ca94:
/* 0x8009ca94 */ lbu	$v0,0($a1)
.L8009ca98:
/* 0x8009ca98 */ lw	$a0,0($sp)
.L8009ca9c:
/* 0x8009ca9c */ sll	$v0,$v0,0x1
.L8009caa0:
/* 0x8009caa0 */ addu	$v0,$v0,$t2
.L8009caa4:
/* 0x8009caa4 */ lhu	$v1,0($v0)
.L8009caa8:
/* 0x8009caa8 */ lw	$v0,0($a0)
.L8009caac:
/* 0x8009caac */ sll	$zero,$zero,0x0
.L8009cab0:
/* 0x8009cab0 */ or	$v0,$v0,$v1
.L8009cab4:
/* 0x8009cab4 */ sw	$v0,0($a0)
.L8009cab8:
/* 0x8009cab8 */ lw	$v0,-14104($t1)
.L8009cabc:
/* 0x8009cabc */ sll	$zero,$zero,0x0
.L8009cac0:
/* 0x8009cac0 */ addu	$v0,$v0,$a2
.L8009cac4:
/* 0x8009cac4 */ lw	$v0,80($v0)
.L8009cac8:
/* 0x8009cac8 */ sll	$zero,$zero,0x0
.L8009cacc:
/* 0x8009cacc */ andi	$v0,$v0,0x2
.L8009cad0:
/* 0x8009cad0 */ beq	$v0,$zero,.L8009cafc
.L8009cad4:
/* 0x8009cad4 */ sll	$zero,$zero,0x0
.L8009cad8:
/* 0x8009cad8 */ lbu	$v0,1($a1)
.L8009cadc:
/* 0x8009cadc */ lw	$a0,0($sp)
.L8009cae0:
/* 0x8009cae0 */ sll	$v0,$v0,0x1
.L8009cae4:
/* 0x8009cae4 */ addu	$v0,$v0,$t2
.L8009cae8:
/* 0x8009cae8 */ lhu	$v1,0($v0)
.L8009caec:
/* 0x8009caec */ lw	$v0,0($a0)
.L8009caf0:
/* 0x8009caf0 */ sll	$zero,$zero,0x0
.L8009caf4:
/* 0x8009caf4 */ or	$v0,$v0,$v1
.L8009caf8:
/* 0x8009caf8 */ sw	$v0,0($a0)
.L8009cafc:
/* 0x8009cafc */ lw	$v0,-14104($t1)
.L8009cb00:
/* 0x8009cb00 */ sll	$zero,$zero,0x0
.L8009cb04:
/* 0x8009cb04 */ addu	$v0,$v0,$a2
.L8009cb08:
/* 0x8009cb08 */ lw	$v0,80($v0)
.L8009cb0c:
/* 0x8009cb0c */ sll	$zero,$zero,0x0
.L8009cb10:
/* 0x8009cb10 */ andi	$v0,$v0,0x4
.L8009cb14:
/* 0x8009cb14 */ beq	$v0,$zero,.L8009cb40
.L8009cb18:
/* 0x8009cb18 */ sll	$zero,$zero,0x0
.L8009cb1c:
/* 0x8009cb1c */ lbu	$v0,2($a1)
.L8009cb20:
/* 0x8009cb20 */ lw	$a0,0($sp)
.L8009cb24:
/* 0x8009cb24 */ sll	$v0,$v0,0x1
.L8009cb28:
/* 0x8009cb28 */ addu	$v0,$v0,$t2
.L8009cb2c:
/* 0x8009cb2c */ lhu	$v1,0($v0)
.L8009cb30:
/* 0x8009cb30 */ lw	$v0,0($a0)
.L8009cb34:
/* 0x8009cb34 */ sll	$zero,$zero,0x0
.L8009cb38:
/* 0x8009cb38 */ or	$v0,$v0,$v1
.L8009cb3c:
/* 0x8009cb3c */ sw	$v0,0($a0)
.L8009cb40:
/* 0x8009cb40 */ lw	$v0,-14104($t1)
.L8009cb44:
/* 0x8009cb44 */ sll	$zero,$zero,0x0
.L8009cb48:
/* 0x8009cb48 */ addu	$v0,$v0,$a2
.L8009cb4c:
/* 0x8009cb4c */ lw	$v0,80($v0)
.L8009cb50:
/* 0x8009cb50 */ sll	$zero,$zero,0x0
.L8009cb54:
/* 0x8009cb54 */ andi	$v0,$v0,0x8
.L8009cb58:
/* 0x8009cb58 */ beq	$v0,$zero,.L8009cb84
.L8009cb5c:
/* 0x8009cb5c */ sll	$zero,$zero,0x0
.L8009cb60:
/* 0x8009cb60 */ lbu	$v0,3($a1)
.L8009cb64:
/* 0x8009cb64 */ lw	$a0,0($sp)
.L8009cb68:
/* 0x8009cb68 */ sll	$v0,$v0,0x1
.L8009cb6c:
/* 0x8009cb6c */ addu	$v0,$v0,$t2
.L8009cb70:
/* 0x8009cb70 */ lhu	$v1,0($v0)
.L8009cb74:
/* 0x8009cb74 */ lw	$v0,0($a0)
.L8009cb78:
/* 0x8009cb78 */ sll	$zero,$zero,0x0
.L8009cb7c:
/* 0x8009cb7c */ or	$v0,$v0,$v1
.L8009cb80:
/* 0x8009cb80 */ sw	$v0,0($a0)
.L8009cb84:
/* 0x8009cb84 */ lw	$v0,-14104($t1)
.L8009cb88:
/* 0x8009cb88 */ sll	$zero,$zero,0x0
.L8009cb8c:
/* 0x8009cb8c */ addu	$v0,$v0,$a2
.L8009cb90:
/* 0x8009cb90 */ lw	$v0,80($v0)
.L8009cb94:
/* 0x8009cb94 */ sll	$zero,$zero,0x0
.L8009cb98:
/* 0x8009cb98 */ andi	$v0,$v0,0x10
.L8009cb9c:
/* 0x8009cb9c */ beq	$v0,$zero,.L8009cbe0
.L8009cba0:
/* 0x8009cba0 */ sll	$zero,$zero,0x0
.L8009cba4:
/* 0x8009cba4 */ lbu	$v1,4($a3)
.L8009cba8:
/* 0x8009cba8 */ sll	$zero,$zero,0x0
.L8009cbac:
/* 0x8009cbac */ andi	$v0,$v1,0xf0
.L8009cbb0:
/* 0x8009cbb0 */ sltu	$v0,$zero,$v0
.L8009cbb4:
/* 0x8009cbb4 */ sll	$v0,$v0,0x2
.L8009cbb8:
/* 0x8009cbb8 */ addu	$v0,$sp,$v0
.L8009cbbc:
/* 0x8009cbbc */ andi	$v1,$v1,0xf
.L8009cbc0:
/* 0x8009cbc0 */ sll	$v1,$v1,0x1
.L8009cbc4:
/* 0x8009cbc4 */ addu	$v1,$v1,$t2
.L8009cbc8:
/* 0x8009cbc8 */ lw	$a0,0($v0)
.L8009cbcc:
/* 0x8009cbcc */ lhu	$v1,0($v1)
.L8009cbd0:
/* 0x8009cbd0 */ lw	$v0,0($a0)
.L8009cbd4:
/* 0x8009cbd4 */ sll	$zero,$zero,0x0
.L8009cbd8:
/* 0x8009cbd8 */ or	$v0,$v0,$v1
.L8009cbdc:
/* 0x8009cbdc */ sw	$v0,0($a0)
.L8009cbe0:
/* 0x8009cbe0 */ lw	$v0,-14104($t1)
.L8009cbe4:
/* 0x8009cbe4 */ sll	$zero,$zero,0x0
.L8009cbe8:
/* 0x8009cbe8 */ addu	$v0,$v0,$a2
.L8009cbec:
/* 0x8009cbec */ lw	$v0,80($v0)
.L8009cbf0:
/* 0x8009cbf0 */ sll	$zero,$zero,0x0
.L8009cbf4:
/* 0x8009cbf4 */ andi	$v0,$v0,0x20
.L8009cbf8:
/* 0x8009cbf8 */ beq	$v0,$zero,.L8009cc3c
.L8009cbfc:
/* 0x8009cbfc */ sll	$zero,$zero,0x0
.L8009cc00:
/* 0x8009cc00 */ lbu	$v1,5($a3)
.L8009cc04:
/* 0x8009cc04 */ sll	$zero,$zero,0x0
.L8009cc08:
/* 0x8009cc08 */ andi	$v0,$v1,0xf0
.L8009cc0c:
/* 0x8009cc0c */ sltu	$v0,$zero,$v0
.L8009cc10:
/* 0x8009cc10 */ sll	$v0,$v0,0x2
.L8009cc14:
/* 0x8009cc14 */ addu	$v0,$sp,$v0
.L8009cc18:
/* 0x8009cc18 */ andi	$v1,$v1,0xf
.L8009cc1c:
/* 0x8009cc1c */ sll	$v1,$v1,0x1
.L8009cc20:
/* 0x8009cc20 */ addu	$v1,$v1,$t2
.L8009cc24:
/* 0x8009cc24 */ lw	$a0,0($v0)
.L8009cc28:
/* 0x8009cc28 */ lhu	$v1,0($v1)
.L8009cc2c:
/* 0x8009cc2c */ lw	$v0,0($a0)
.L8009cc30:
/* 0x8009cc30 */ sll	$zero,$zero,0x0
.L8009cc34:
/* 0x8009cc34 */ or	$v0,$v0,$v1
.L8009cc38:
/* 0x8009cc38 */ sw	$v0,0($a0)
.L8009cc3c:
/* 0x8009cc3c */ lw	$v0,-14104($t1)
.L8009cc40:
/* 0x8009cc40 */ sll	$zero,$zero,0x0
.L8009cc44:
/* 0x8009cc44 */ addu	$v0,$v0,$a2
.L8009cc48:
/* 0x8009cc48 */ lw	$v0,80($v0)
.L8009cc4c:
/* 0x8009cc4c */ sll	$zero,$zero,0x0
.L8009cc50:
/* 0x8009cc50 */ andi	$v0,$v0,0x40
.L8009cc54:
/* 0x8009cc54 */ beq	$v0,$zero,.L8009cc98
.L8009cc58:
/* 0x8009cc58 */ sll	$zero,$zero,0x0
.L8009cc5c:
/* 0x8009cc5c */ lbu	$v1,6($a3)
.L8009cc60:
/* 0x8009cc60 */ sll	$zero,$zero,0x0
.L8009cc64:
/* 0x8009cc64 */ andi	$v0,$v1,0xf0
.L8009cc68:
/* 0x8009cc68 */ sltu	$v0,$zero,$v0
.L8009cc6c:
/* 0x8009cc6c */ sll	$v0,$v0,0x2
.L8009cc70:
/* 0x8009cc70 */ addu	$v0,$sp,$v0
.L8009cc74:
/* 0x8009cc74 */ andi	$v1,$v1,0xf
.L8009cc78:
/* 0x8009cc78 */ sll	$v1,$v1,0x1
.L8009cc7c:
/* 0x8009cc7c */ addu	$v1,$v1,$t2
.L8009cc80:
/* 0x8009cc80 */ lw	$a0,0($v0)
.L8009cc84:
/* 0x8009cc84 */ lhu	$v1,0($v1)
.L8009cc88:
/* 0x8009cc88 */ lw	$v0,0($a0)
.L8009cc8c:
/* 0x8009cc8c */ sll	$zero,$zero,0x0
.L8009cc90:
/* 0x8009cc90 */ or	$v0,$v0,$v1
.L8009cc94:
/* 0x8009cc94 */ sw	$v0,0($a0)
.L8009cc98:
/* 0x8009cc98 */ lw	$v0,-14104($t1)
.L8009cc9c:
/* 0x8009cc9c */ sll	$zero,$zero,0x0
.L8009cca0:
/* 0x8009cca0 */ addu	$v0,$v0,$a2
.L8009cca4:
/* 0x8009cca4 */ lw	$v0,80($v0)
.L8009cca8:
/* 0x8009cca8 */ sll	$zero,$zero,0x0
.L8009ccac:
/* 0x8009ccac */ andi	$v0,$v0,0x80
.L8009ccb0:
/* 0x8009ccb0 */ beq	$v0,$zero,.L8009ccf8
.L8009ccb4:
/* 0x8009ccb4 */ andi	$v1,$t0,0xff
.L8009ccb8:
/* 0x8009ccb8 */ lbu	$v1,7($a3)
.L8009ccbc:
/* 0x8009ccbc */ sll	$zero,$zero,0x0
.L8009ccc0:
/* 0x8009ccc0 */ andi	$v0,$v1,0xf0
.L8009ccc4:
/* 0x8009ccc4 */ sltu	$v0,$zero,$v0
.L8009ccc8:
/* 0x8009ccc8 */ sll	$v0,$v0,0x2
.L8009cccc:
/* 0x8009cccc */ addu	$v0,$sp,$v0
.L8009ccd0:
/* 0x8009ccd0 */ andi	$v1,$v1,0xf
.L8009ccd4:
/* 0x8009ccd4 */ sll	$v1,$v1,0x1
.L8009ccd8:
/* 0x8009ccd8 */ addu	$v1,$v1,$t2
.L8009ccdc:
/* 0x8009ccdc */ lw	$a0,0($v0)
.L8009cce0:
/* 0x8009cce0 */ lhu	$v1,0($v1)
.L8009cce4:
/* 0x8009cce4 */ lw	$v0,0($a0)
.L8009cce8:
/* 0x8009cce8 */ sll	$zero,$zero,0x0
.L8009ccec:
/* 0x8009ccec */ or	$v0,$v0,$v1
.L8009ccf0:
/* 0x8009ccf0 */ sw	$v0,0($a0)
.L8009ccf4:
/* 0x8009ccf4 */ andi	$v1,$t0,0xff
.L8009ccf8:
/* 0x8009ccf8 */ lw	$v0,-14104($t1)
.L8009ccfc:
/* 0x8009ccfc */ sll	$a1,$v1,0x4
.L8009cd00:
/* 0x8009cd00 */ addu	$v0,$v0,$a1
.L8009cd04:
/* 0x8009cd04 */ lw	$v0,80($v0)
.L8009cd08:
/* 0x8009cd08 */ sll	$zero,$zero,0x0
.L8009cd0c:
/* 0x8009cd0c */ andi	$v0,$v0,0x1000
.L8009cd10:
/* 0x8009cd10 */ beq	$v0,$zero,.L8009cd54
.L8009cd14:
/* 0x8009cd14 */ sll	$zero,$zero,0x0
.L8009cd18:
/* 0x8009cd18 */ lbu	$v1,0($a3)
.L8009cd1c:
/* 0x8009cd1c */ sll	$zero,$zero,0x0
.L8009cd20:
/* 0x8009cd20 */ andi	$v0,$v1,0xf0
.L8009cd24:
/* 0x8009cd24 */ sltu	$v0,$zero,$v0
.L8009cd28:
/* 0x8009cd28 */ sll	$v0,$v0,0x2
.L8009cd2c:
/* 0x8009cd2c */ addu	$v0,$sp,$v0
.L8009cd30:
/* 0x8009cd30 */ andi	$v1,$v1,0xf
.L8009cd34:
/* 0x8009cd34 */ sll	$v1,$v1,0x1
.L8009cd38:
/* 0x8009cd38 */ addu	$v1,$v1,$t2
.L8009cd3c:
/* 0x8009cd3c */ lw	$a0,0($v0)
.L8009cd40:
/* 0x8009cd40 */ lhu	$v1,0($v1)
.L8009cd44:
/* 0x8009cd44 */ lw	$v0,0($a0)
.L8009cd48:
/* 0x8009cd48 */ sll	$zero,$zero,0x0
.L8009cd4c:
/* 0x8009cd4c */ or	$v0,$v0,$v1
.L8009cd50:
/* 0x8009cd50 */ sw	$v0,0($a0)
.L8009cd54:
/* 0x8009cd54 */ lw	$v0,-14104($t1)
.L8009cd58:
/* 0x8009cd58 */ sll	$zero,$zero,0x0
.L8009cd5c:
/* 0x8009cd5c */ addu	$v0,$v0,$a1
.L8009cd60:
/* 0x8009cd60 */ lw	$v0,80($v0)
.L8009cd64:
/* 0x8009cd64 */ sll	$zero,$zero,0x0
.L8009cd68:
/* 0x8009cd68 */ andi	$v0,$v0,0x2000
.L8009cd6c:
/* 0x8009cd6c */ beq	$v0,$zero,.L8009cdb0
.L8009cd70:
/* 0x8009cd70 */ sll	$zero,$zero,0x0
.L8009cd74:
/* 0x8009cd74 */ lbu	$v1,1($a3)
.L8009cd78:
/* 0x8009cd78 */ sll	$zero,$zero,0x0
.L8009cd7c:
/* 0x8009cd7c */ andi	$v0,$v1,0xf0
.L8009cd80:
/* 0x8009cd80 */ sltu	$v0,$zero,$v0
.L8009cd84:
/* 0x8009cd84 */ sll	$v0,$v0,0x2
.L8009cd88:
/* 0x8009cd88 */ addu	$v0,$sp,$v0
.L8009cd8c:
/* 0x8009cd8c */ andi	$v1,$v1,0xf
.L8009cd90:
/* 0x8009cd90 */ sll	$v1,$v1,0x1
.L8009cd94:
/* 0x8009cd94 */ addu	$v1,$v1,$t2
.L8009cd98:
/* 0x8009cd98 */ lw	$a0,0($v0)
.L8009cd9c:
/* 0x8009cd9c */ lhu	$v1,0($v1)
.L8009cda0:
/* 0x8009cda0 */ lw	$v0,0($a0)
.L8009cda4:
/* 0x8009cda4 */ sll	$zero,$zero,0x0
.L8009cda8:
/* 0x8009cda8 */ or	$v0,$v0,$v1
.L8009cdac:
/* 0x8009cdac */ sw	$v0,0($a0)
.L8009cdb0:
/* 0x8009cdb0 */ lw	$v0,-14104($t1)
.L8009cdb4:
/* 0x8009cdb4 */ sll	$zero,$zero,0x0
.L8009cdb8:
/* 0x8009cdb8 */ addu	$v0,$v0,$a1
.L8009cdbc:
/* 0x8009cdbc */ lw	$v0,80($v0)
.L8009cdc0:
/* 0x8009cdc0 */ sll	$zero,$zero,0x0
.L8009cdc4:
/* 0x8009cdc4 */ andi	$v0,$v0,0x4000
.L8009cdc8:
/* 0x8009cdc8 */ beq	$v0,$zero,.L8009ce0c
.L8009cdcc:
/* 0x8009cdcc */ sll	$zero,$zero,0x0
.L8009cdd0:
/* 0x8009cdd0 */ lbu	$v1,2($a3)
.L8009cdd4:
/* 0x8009cdd4 */ sll	$zero,$zero,0x0
.L8009cdd8:
/* 0x8009cdd8 */ andi	$v0,$v1,0xf0
.L8009cddc:
/* 0x8009cddc */ sltu	$v0,$zero,$v0
.L8009cde0:
/* 0x8009cde0 */ sll	$v0,$v0,0x2
.L8009cde4:
/* 0x8009cde4 */ addu	$v0,$sp,$v0
.L8009cde8:
/* 0x8009cde8 */ andi	$v1,$v1,0xf
.L8009cdec:
/* 0x8009cdec */ sll	$v1,$v1,0x1
.L8009cdf0:
/* 0x8009cdf0 */ addu	$v1,$v1,$t2
.L8009cdf4:
/* 0x8009cdf4 */ lw	$a0,0($v0)
.L8009cdf8:
/* 0x8009cdf8 */ lhu	$v1,0($v1)
.L8009cdfc:
/* 0x8009cdfc */ lw	$v0,0($a0)
.L8009ce00:
/* 0x8009ce00 */ sll	$zero,$zero,0x0
.L8009ce04:
/* 0x8009ce04 */ or	$v0,$v0,$v1
.L8009ce08:
/* 0x8009ce08 */ sw	$v0,0($a0)
.L8009ce0c:
/* 0x8009ce0c */ lw	$v0,-14104($t1)
.L8009ce10:
/* 0x8009ce10 */ sll	$zero,$zero,0x0
.L8009ce14:
/* 0x8009ce14 */ addu	$v0,$v0,$a1
.L8009ce18:
/* 0x8009ce18 */ lw	$v0,80($v0)
.L8009ce1c:
/* 0x8009ce1c */ sll	$zero,$zero,0x0
.L8009ce20:
/* 0x8009ce20 */ andi	$v0,$v0,0x8000
.L8009ce24:
/* 0x8009ce24 */ beq	$v0,$zero,.L8009ce68
.L8009ce28:
/* 0x8009ce28 */ sll	$zero,$zero,0x0
.L8009ce2c:
/* 0x8009ce2c */ lbu	$v1,3($a3)
.L8009ce30:
/* 0x8009ce30 */ sll	$zero,$zero,0x0
.L8009ce34:
/* 0x8009ce34 */ andi	$v0,$v1,0xf0
.L8009ce38:
/* 0x8009ce38 */ sltu	$v0,$zero,$v0
.L8009ce3c:
/* 0x8009ce3c */ sll	$v0,$v0,0x2
.L8009ce40:
/* 0x8009ce40 */ addu	$v0,$sp,$v0
.L8009ce44:
/* 0x8009ce44 */ andi	$v1,$v1,0xf
.L8009ce48:
/* 0x8009ce48 */ sll	$v1,$v1,0x1
.L8009ce4c:
/* 0x8009ce4c */ addu	$v1,$v1,$t2
.L8009ce50:
/* 0x8009ce50 */ lw	$a0,0($v0)
.L8009ce54:
/* 0x8009ce54 */ lhu	$v1,0($v1)
.L8009ce58:
/* 0x8009ce58 */ lw	$v0,0($a0)
.L8009ce5c:
/* 0x8009ce5c */ sll	$zero,$zero,0x0
.L8009ce60:
/* 0x8009ce60 */ or	$v0,$v0,$v1
.L8009ce64:
/* 0x8009ce64 */ sw	$v0,0($a0)
.L8009ce68:
/* 0x8009ce68 */ addiu	$t0,$t0,1
.L8009ce6c:
/* 0x8009ce6c */ andi	$v0,$t0,0xff
.L8009ce70:
/* 0x8009ce70 */ sltiu	$v0,$v0,2
.L8009ce74:
/* 0x8009ce74 */ bne	$v0,$zero,.L8009c9ac
.L8009ce78:
/* 0x8009ce78 */ andi	$a1,$t0,0xff
.L8009ce7c:
/* 0x8009ce7c */ j	.L8009d118
.L8009ce80:
/* 0x8009ce80 */ sll	$zero,$zero,0x0
.L8009ce84:
/* 0x8009ce84 */ andi	$a0,$t0,0xff
.L8009ce88:
/* 0x8009ce88 */ lw	$v0,-14104($a2)
.L8009ce8c:
/* 0x8009ce8c */ sll	$a1,$a0,0x4
.L8009ce90:
/* 0x8009ce90 */ addu	$v0,$v0,$a1
.L8009ce94:
/* 0x8009ce94 */ lw	$v0,80($v0)
.L8009ce98:
/* 0x8009ce98 */ sll	$zero,$zero,0x0
.L8009ce9c:
/* 0x8009ce9c */ andi	$v0,$v0,0x100
.L8009cea0:
/* 0x8009cea0 */ beq	$v0,$zero,.L8009cec4
.L8009cea4:
/* 0x8009cea4 */ sll	$v0,$a0,0x2
.L8009cea8:
/* 0x8009cea8 */ addu	$v0,$sp,$v0
.L8009ceac:
/* 0x8009ceac */ lw	$v1,0($v0)
.L8009ceb0:
/* 0x8009ceb0 */ sll	$zero,$zero,0x0
.L8009ceb4:
/* 0x8009ceb4 */ lw	$v0,0($v1)
.L8009ceb8:
/* 0x8009ceb8 */ sll	$zero,$zero,0x0
.L8009cebc:
/* 0x8009cebc */ ori	$v0,$v0,0x100
.L8009cec0:
/* 0x8009cec0 */ sw	$v0,0($v1)
.L8009cec4:
/* 0x8009cec4 */ lw	$v0,-14104($a2)
.L8009cec8:
/* 0x8009cec8 */ sll	$zero,$zero,0x0
.L8009cecc:
/* 0x8009cecc */ addu	$v0,$v0,$a1
.L8009ced0:
/* 0x8009ced0 */ lw	$v0,80($v0)
.L8009ced4:
/* 0x8009ced4 */ sll	$zero,$zero,0x0
.L8009ced8:
/* 0x8009ced8 */ andi	$v0,$v0,0x800
.L8009cedc:
/* 0x8009cedc */ beq	$v0,$zero,.L8009cf00
.L8009cee0:
/* 0x8009cee0 */ sll	$v0,$a0,0x2
.L8009cee4:
/* 0x8009cee4 */ addu	$v0,$sp,$v0
.L8009cee8:
/* 0x8009cee8 */ lw	$v1,0($v0)
.L8009ceec:
/* 0x8009ceec */ sll	$zero,$zero,0x0
.L8009cef0:
/* 0x8009cef0 */ lw	$v0,0($v1)
.L8009cef4:
/* 0x8009cef4 */ sll	$zero,$zero,0x0
.L8009cef8:
/* 0x8009cef8 */ ori	$v0,$v0,0x800
.L8009cefc:
/* 0x8009cefc */ sw	$v0,0($v1)
.L8009cf00:
/* 0x8009cf00 */ lui	$v0,0x800e
.L8009cf04:
/* 0x8009cf04 */ lw	$v0,2840($v0)
.L8009cf08:
/* 0x8009cf08 */ sll	$zero,$zero,0x0
.L8009cf0c:
/* 0x8009cf0c */ addu	$v0,$a0,$v0
.L8009cf10:
/* 0x8009cf10 */ lbu	$v0,118($v0)
.L8009cf14:
/* 0x8009cf14 */ sll	$zero,$zero,0x0
.L8009cf18:
/* 0x8009cf18 */ beq	$v0,$zero,.L8009d010
.L8009cf1c:
/* 0x8009cf1c */ sll	$zero,$zero,0x0
.L8009cf20:
/* 0x8009cf20 */ lw	$v0,-14104($a2)
.L8009cf24:
/* 0x8009cf24 */ sll	$zero,$zero,0x0
.L8009cf28:
/* 0x8009cf28 */ addu	$v0,$v0,$a1
.L8009cf2c:
/* 0x8009cf2c */ lw	$v0,80($v0)
.L8009cf30:
/* 0x8009cf30 */ sll	$zero,$zero,0x0
.L8009cf34:
/* 0x8009cf34 */ andi	$v0,$v0,0x10
.L8009cf38:
/* 0x8009cf38 */ beq	$v0,$zero,.L8009cf5c
.L8009cf3c:
/* 0x8009cf3c */ sll	$v0,$a0,0x2
.L8009cf40:
/* 0x8009cf40 */ addu	$v0,$sp,$v0
.L8009cf44:
/* 0x8009cf44 */ lw	$v1,0($v0)
.L8009cf48:
/* 0x8009cf48 */ sll	$zero,$zero,0x0
.L8009cf4c:
/* 0x8009cf4c */ lw	$v0,0($v1)
.L8009cf50:
/* 0x8009cf50 */ sll	$zero,$zero,0x0
.L8009cf54:
/* 0x8009cf54 */ ori	$v0,$v0,0x1000
.L8009cf58:
/* 0x8009cf58 */ sw	$v0,0($v1)
.L8009cf5c:
/* 0x8009cf5c */ lw	$v0,-14104($a2)
.L8009cf60:
/* 0x8009cf60 */ sll	$zero,$zero,0x0
.L8009cf64:
/* 0x8009cf64 */ addu	$v0,$v0,$a1
.L8009cf68:
/* 0x8009cf68 */ lw	$v0,80($v0)
.L8009cf6c:
/* 0x8009cf6c */ sll	$zero,$zero,0x0
.L8009cf70:
/* 0x8009cf70 */ andi	$v0,$v0,0x20
.L8009cf74:
/* 0x8009cf74 */ beq	$v0,$zero,.L8009cf98
.L8009cf78:
/* 0x8009cf78 */ sll	$v0,$a0,0x2
.L8009cf7c:
/* 0x8009cf7c */ addu	$v0,$sp,$v0
.L8009cf80:
/* 0x8009cf80 */ lw	$v1,0($v0)
.L8009cf84:
/* 0x8009cf84 */ sll	$zero,$zero,0x0
.L8009cf88:
/* 0x8009cf88 */ lw	$v0,0($v1)
.L8009cf8c:
/* 0x8009cf8c */ sll	$zero,$zero,0x0
.L8009cf90:
/* 0x8009cf90 */ ori	$v0,$v0,0x2000
.L8009cf94:
/* 0x8009cf94 */ sw	$v0,0($v1)
.L8009cf98:
/* 0x8009cf98 */ lw	$v0,-14104($a2)
.L8009cf9c:
/* 0x8009cf9c */ sll	$zero,$zero,0x0
.L8009cfa0:
/* 0x8009cfa0 */ addu	$v0,$v0,$a1
.L8009cfa4:
/* 0x8009cfa4 */ lw	$v0,80($v0)
.L8009cfa8:
/* 0x8009cfa8 */ sll	$zero,$zero,0x0
.L8009cfac:
/* 0x8009cfac */ andi	$v0,$v0,0x40
.L8009cfb0:
/* 0x8009cfb0 */ beq	$v0,$zero,.L8009cfd4
.L8009cfb4:
/* 0x8009cfb4 */ sll	$v0,$a0,0x2
.L8009cfb8:
/* 0x8009cfb8 */ addu	$v0,$sp,$v0
.L8009cfbc:
/* 0x8009cfbc */ lw	$v1,0($v0)
.L8009cfc0:
/* 0x8009cfc0 */ sll	$zero,$zero,0x0
.L8009cfc4:
/* 0x8009cfc4 */ lw	$v0,0($v1)
.L8009cfc8:
/* 0x8009cfc8 */ sll	$zero,$zero,0x0
.L8009cfcc:
/* 0x8009cfcc */ ori	$v0,$v0,0x4000
.L8009cfd0:
/* 0x8009cfd0 */ sw	$v0,0($v1)
.L8009cfd4:
/* 0x8009cfd4 */ lw	$v0,-14104($a2)
.L8009cfd8:
/* 0x8009cfd8 */ sll	$zero,$zero,0x0
.L8009cfdc:
/* 0x8009cfdc */ addu	$v0,$v0,$a1
.L8009cfe0:
/* 0x8009cfe0 */ lw	$v0,80($v0)
.L8009cfe4:
/* 0x8009cfe4 */ sll	$zero,$zero,0x0
.L8009cfe8:
/* 0x8009cfe8 */ andi	$v0,$v0,0x80
.L8009cfec:
/* 0x8009cfec */ beq	$v0,$zero,.L8009d010
.L8009cff0:
/* 0x8009cff0 */ sll	$v0,$a0,0x2
.L8009cff4:
/* 0x8009cff4 */ addu	$v0,$sp,$v0
.L8009cff8:
/* 0x8009cff8 */ lw	$v1,0($v0)
.L8009cffc:
/* 0x8009cffc */ sll	$zero,$zero,0x0
.L8009d000:
/* 0x8009d000 */ lw	$v0,0($v1)
.L8009d004:
/* 0x8009d004 */ sll	$zero,$zero,0x0
.L8009d008:
/* 0x8009d008 */ ori	$v0,$v0,0x8000
.L8009d00c:
/* 0x8009d00c */ sw	$v0,0($v1)
.L8009d010:
/* 0x8009d010 */ andi	$a0,$t0,0xff
.L8009d014:
/* 0x8009d014 */ lw	$v0,-14104($a2)
.L8009d018:
/* 0x8009d018 */ sll	$a1,$a0,0x4
.L8009d01c:
/* 0x8009d01c */ addu	$v0,$v0,$a1
.L8009d020:
/* 0x8009d020 */ lw	$v0,80($v0)
.L8009d024:
/* 0x8009d024 */ sll	$zero,$zero,0x0
.L8009d028:
/* 0x8009d028 */ andi	$v0,$v0,0x1000
.L8009d02c:
/* 0x8009d02c */ beq	$v0,$zero,.L8009d050
.L8009d030:
/* 0x8009d030 */ sll	$v0,$a0,0x2
.L8009d034:
/* 0x8009d034 */ addu	$v0,$sp,$v0
.L8009d038:
/* 0x8009d038 */ lw	$v1,0($v0)
.L8009d03c:
/* 0x8009d03c */ sll	$zero,$zero,0x0
.L8009d040:
/* 0x8009d040 */ lw	$v0,0($v1)
.L8009d044:
/* 0x8009d044 */ sll	$zero,$zero,0x0
.L8009d048:
/* 0x8009d048 */ ori	$v0,$v0,0x1000
.L8009d04c:
/* 0x8009d04c */ sw	$v0,0($v1)
.L8009d050:
/* 0x8009d050 */ lw	$v0,-14104($a2)
.L8009d054:
/* 0x8009d054 */ sll	$zero,$zero,0x0
.L8009d058:
/* 0x8009d058 */ addu	$v0,$v0,$a1
.L8009d05c:
/* 0x8009d05c */ lw	$v0,80($v0)
.L8009d060:
/* 0x8009d060 */ sll	$zero,$zero,0x0
.L8009d064:
/* 0x8009d064 */ andi	$v0,$v0,0x2000
.L8009d068:
/* 0x8009d068 */ beq	$v0,$zero,.L8009d08c
.L8009d06c:
/* 0x8009d06c */ sll	$v0,$a0,0x2
.L8009d070:
/* 0x8009d070 */ addu	$v0,$sp,$v0
.L8009d074:
/* 0x8009d074 */ lw	$v1,0($v0)
.L8009d078:
/* 0x8009d078 */ sll	$zero,$zero,0x0
.L8009d07c:
/* 0x8009d07c */ lw	$v0,0($v1)
.L8009d080:
/* 0x8009d080 */ sll	$zero,$zero,0x0
.L8009d084:
/* 0x8009d084 */ ori	$v0,$v0,0x2000
.L8009d088:
/* 0x8009d088 */ sw	$v0,0($v1)
.L8009d08c:
/* 0x8009d08c */ lw	$v0,-14104($a2)
.L8009d090:
/* 0x8009d090 */ sll	$zero,$zero,0x0
.L8009d094:
/* 0x8009d094 */ addu	$v0,$v0,$a1
.L8009d098:
/* 0x8009d098 */ lw	$v0,80($v0)
.L8009d09c:
/* 0x8009d09c */ sll	$zero,$zero,0x0
.L8009d0a0:
/* 0x8009d0a0 */ andi	$v0,$v0,0x4000
.L8009d0a4:
/* 0x8009d0a4 */ beq	$v0,$zero,.L8009d0c8
.L8009d0a8:
/* 0x8009d0a8 */ sll	$v0,$a0,0x2
.L8009d0ac:
/* 0x8009d0ac */ addu	$v0,$sp,$v0
.L8009d0b0:
/* 0x8009d0b0 */ lw	$v1,0($v0)
.L8009d0b4:
/* 0x8009d0b4 */ sll	$zero,$zero,0x0
.L8009d0b8:
/* 0x8009d0b8 */ lw	$v0,0($v1)
.L8009d0bc:
/* 0x8009d0bc */ sll	$zero,$zero,0x0
.L8009d0c0:
/* 0x8009d0c0 */ ori	$v0,$v0,0x4000
.L8009d0c4:
/* 0x8009d0c4 */ sw	$v0,0($v1)
.L8009d0c8:
/* 0x8009d0c8 */ lw	$v0,-14104($a2)
.L8009d0cc:
/* 0x8009d0cc */ sll	$zero,$zero,0x0
.L8009d0d0:
/* 0x8009d0d0 */ addu	$v0,$v0,$a1
.L8009d0d4:
/* 0x8009d0d4 */ lw	$v0,80($v0)
.L8009d0d8:
/* 0x8009d0d8 */ sll	$zero,$zero,0x0
.L8009d0dc:
/* 0x8009d0dc */ andi	$v0,$v0,0x8000
.L8009d0e0:
/* 0x8009d0e0 */ beq	$v0,$zero,.L8009d104
.L8009d0e4:
/* 0x8009d0e4 */ sll	$v0,$a0,0x2
.L8009d0e8:
/* 0x8009d0e8 */ addu	$v0,$sp,$v0
.L8009d0ec:
/* 0x8009d0ec */ lw	$v1,0($v0)
.L8009d0f0:
/* 0x8009d0f0 */ sll	$zero,$zero,0x0
.L8009d0f4:
/* 0x8009d0f4 */ lw	$v0,0($v1)
.L8009d0f8:
/* 0x8009d0f8 */ sll	$zero,$zero,0x0
.L8009d0fc:
/* 0x8009d0fc */ ori	$v0,$v0,0x8000
.L8009d100:
/* 0x8009d100 */ sw	$v0,0($v1)
.L8009d104:
/* 0x8009d104 */ addiu	$t0,$t0,1
.L8009d108:
/* 0x8009d108 */ andi	$v0,$t0,0xff
.L8009d10c:
/* 0x8009d10c */ sltiu	$v0,$v0,2
.L8009d110:
/* 0x8009d110 */ bne	$v0,$zero,.L8009ce84
.L8009d114:
/* 0x8009d114 */ sll	$zero,$zero,0x0
.L8009d118:
/* 0x8009d118 */ jr	$ra
.L8009d11c:
/* 0x8009d11c */ addiu	$sp,$sp,8
.size FUN_8009c5f4, .-FUN_8009c5f4
.set noreorder
.set noat
.set nomacro

.section .text.FUN_8009d120
.globl FUN_8009d120
.type FUN_8009d120, @function
FUN_8009d120:
.L8009d120:
/* 0x8009d120 */ addiu	$sp,$sp,-24
.L8009d124:
/* 0x8009d124 */ addu	$t0,$a2,$zero
.L8009d128:
/* 0x8009d128 */ addu	$a2,$zero,$zero
.L8009d12c:
/* 0x8009d12c */ lui	$v0,0x800e
.L8009d130:
/* 0x8009d130 */ lw	$a3,2840($v0)
.L8009d134:
/* 0x8009d134 */ andi	$a0,$a0,0x1
.L8009d138:
/* 0x8009d138 */ sw	$ra,16($sp)
.L8009d13c:
/* 0x8009d13c */ lbu	$v1,120($a3)
.L8009d140:
/* 0x8009d140 */ sll	$zero,$zero,0x0
.L8009d144:
/* 0x8009d144 */ beq	$v1,$zero,.L8009d208
.L8009d148:
/* 0x8009d148 */ andi	$a1,$a1,0x3
.L8009d14c:
/* 0x8009d14c */ lui	$v0,0x800e
.L8009d150:
/* 0x8009d150 */ addiu	$v0,$v0,3448
.L8009d154:
/* 0x8009d154 */ andi	$a1,$a1,0xff
.L8009d158:
/* 0x8009d158 */ addu	$v0,$a1,$v0
.L8009d15c:
/* 0x8009d15c */ lbu	$v0,0($v0)
.L8009d160:
/* 0x8009d160 */ sll	$zero,$zero,0x0
.L8009d164:
/* 0x8009d164 */ bne	$v1,$v0,.L8009d208
.L8009d168:
/* 0x8009d168 */ lui	$v0,0x800b
.L8009d16c:
/* 0x8009d16c */ lw	$v0,-14104($v0)
.L8009d170:
/* 0x8009d170 */ sll	$zero,$zero,0x0
.L8009d174:
/* 0x8009d174 */ lbu	$v1,242($v0)
.L8009d178:
/* 0x8009d178 */ addiu	$v0,$zero,1
.L8009d17c:
/* 0x8009d17c */ bne	$v1,$v0,.L8009d194
.L8009d180:
/* 0x8009d180 */ addiu	$v0,$zero,2
.L8009d184:
/* 0x8009d184 */ lbu	$v0,121($a3)
.L8009d188:
/* 0x8009d188 */ sll	$zero,$zero,0x0
.L8009d18c:
/* 0x8009d18c */ beq	$v0,$zero,.L8009d208
.L8009d190:
/* 0x8009d190 */ addiu	$v0,$zero,2
.L8009d194:
/* 0x8009d194 */ beq	$a1,$v0,.L8009d1d0
.L8009d198:
/* 0x8009d198 */ slti	$v0,$a1,3
.L8009d19c:
/* 0x8009d19c */ bne	$v0,$zero,.L8009d1b4
.L8009d1a0:
/* 0x8009d1a0 */ addiu	$v0,$zero,3
.L8009d1a4:
/* 0x8009d1a4 */ beq	$a1,$v0,.L8009d1d8
.L8009d1a8:
/* 0x8009d1a8 */ lui	$v0,0x800e
.L8009d1ac:
/* 0x8009d1ac */ j	.L8009d1e4
.L8009d1b0:
/* 0x8009d1b0 */ addiu	$v0,$v0,16504
.L8009d1b4:
/* 0x8009d1b4 */ bltz	$a1,.L8009d1dc
.L8009d1b8:
/* 0x8009d1b8 */ andi	$v0,$t0,0xff
.L8009d1bc:
/* 0x8009d1bc */ sltiu	$v0,$v0,2
.L8009d1c0:
/* 0x8009d1c0 */ beq	$v0,$zero,.L8009d1dc
.L8009d1c4:
/* 0x8009d1c4 */ addiu	$a2,$zero,255
.L8009d1c8:
/* 0x8009d1c8 */ j	.L8009d1dc
.L8009d1cc:
/* 0x8009d1cc */ addiu	$a2,$zero,168
.L8009d1d0:
/* 0x8009d1d0 */ j	.L8009d1dc
.L8009d1d4:
/* 0x8009d1d4 */ addiu	$a2,$zero,255
.L8009d1d8:
/* 0x8009d1d8 */ addiu	$a2,$zero,168
.L8009d1dc:
/* 0x8009d1dc */ lui	$v0,0x800e
.L8009d1e0:
/* 0x8009d1e0 */ addiu	$v0,$v0,16504
.L8009d1e4:
/* 0x8009d1e4 */ sll	$v1,$a0,0x4
.L8009d1e8:
/* 0x8009d1e8 */ addu	$v1,$v1,$v0
.L8009d1ec:
/* 0x8009d1ec */ lw	$v0,0($v1)
.L8009d1f0:
/* 0x8009d1f0 */ sll	$zero,$zero,0x0
.L8009d1f4:
/* 0x8009d1f4 */ beq	$v0,$zero,.L8009d208
.L8009d1f8:
/* 0x8009d1f8 */ sll	$a0,$a0,0x4
.L8009d1fc:
/* 0x8009d1fc */ addiu	$a1,$zero,1
.L8009d200:
/* 0x8009d200 */ jal	0x8002d930
.L8009d204:
/* 0x8009d204 */ addiu	$a3,$zero,10
.L8009d208:
/* 0x8009d208 */ lw	$ra,16($sp)
.L8009d20c:
/* 0x8009d20c */ sll	$zero,$zero,0x0
.L8009d210:
/* 0x8009d210 */ jr	$ra
.L8009d214:
/* 0x8009d214 */ addiu	$sp,$sp,24
.size FUN_8009d120, .-FUN_8009d120
