.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007a410
.globl FUN_8007a410
.type FUN_8007a410, @function
FUN_8007a410:
/* Runtime callback dispatcher and sixteen-entry table maintenance. */
/* 0x8007a410 */ addiu	$sp,$sp,-32
/* 0x8007a414 */ lui	$v1,0x800e
/* 0x8007a418 */ addiu	$v1,$v1,15224
/* 0x8007a41c */ sw	$ra,28($sp)
/* 0x8007a420 */ sw	$s0,24($sp)
/* 0x8007a424 */ lw	$v0,12($v1)
/* 0x8007a428 */ addu $s0,$zero,$zero
/* 0x8007a42c */ addiu	$v0,$v0,1
/* 0x8007a430 */ sw	$v0,12($v1)
.L8007a434:
/* 0x8007a434 */ lui	$v0,0x800e
.L8007a438:
/* 0x8007a438 */ addiu	$v0,$v0,15224
/* 0x8007a43c */ lw	$v1,12($v0)
/* 0x8007a440 */ nop
/* 0x8007a444 */ sll	$v1,$v1,0x1
/* 0x8007a448 */ addu	$v1,$v1,$v0
/* 0x8007a44c */ lh	$v1,16($v1)
/* 0x8007a450 */ nop
/* 0x8007a454 */ sltiu	$v0,$v1,6
/* 0x8007a458 */ beq $v0,$zero,.L8007a8cc
/* 0x8007a45c */ lui	$v0,0x8002
/* 0x8007a460 */ addiu	$v0,$v0,-10380
/* 0x8007a464 */ sll	$v1,$v1,0x2
/* 0x8007a468 */ addu	$v1,$v1,$v0
/* 0x8007a46c */ lw	$v0,0($v1)
/* 0x8007a470 */ nop
/* 0x8007a474 */ jr $v0
/* 0x8007a478 */ nop
/* 0x8007a47c */ jal	0x8002829c
/* 0x8007a480 */ nop
/* 0x8007a484 */ bne $v0,$zero,.L8007a518
/* 0x8007a488 */ lui	$v0,0x800e
/* 0x8007a48c */ addiu	$a1,$v0,15224
/* 0x8007a490 */ lw	$v1,12($a1)
/* 0x8007a494 */ nop
/* 0x8007a498 */ sll	$v0,$v1,0x1
/* 0x8007a49c */ addu	$v0,$v0,$a1
/* 0x8007a4a0 */ addu $a2,$v1,$zero
/* 0x8007a4a4 */ lh	$v1,16($v0)
/* 0x8007a4a8 */ addiu	$a0,$a2,1
/* 0x8007a4ac */ addiu	$v1,$v1,1
/* 0x8007a4b0 */ sh	$v1,16($v0)
/* 0x8007a4b4 */ slti	$v0,$a0,16
/* 0x8007a4b8 */ beq $v0,$zero,.L8007a4d8
/* 0x8007a4bc */ sll	$v0,$a0,0x1
/* 0x8007a4c0 */ addu	$a1,$v0,$a1
.L8007a4c4:
/* 0x8007a4c4 */ sh	$zero,16($a1)
/* 0x8007a4c8 */ addiu	$a0,$a0,1
/* 0x8007a4cc */ slti	$v0,$a0,16
/* 0x8007a4d0 */ bne $v0,$zero,.L8007a4c4
/* 0x8007a4d4 */ addiu	$a1,$a1,2
.L8007a4d8:
/* 0x8007a4d8 */ bne $v1,$zero,.L8007a438
/* 0x8007a4dc */ lui	$v0,0x800e
/* 0x8007a4e0 */ addu $a0,$a2,$zero
/* 0x8007a4e4 */ slti	$v0,$a0,16
/* 0x8007a4e8 */ beq $v0,$zero,.L8007a434
/* 0x8007a4ec */ lui	$v0,0x800e
/* 0x8007a4f0 */ addiu	$v0,$v0,15224
/* 0x8007a4f4 */ sll	$v1,$a0,0x1
/* 0x8007a4f8 */ addu	$v1,$v1,$v0
.L8007a4fc:
/* 0x8007a4fc */ sh	$zero,48($v1)
/* 0x8007a500 */ addiu	$a0,$a0,1
/* 0x8007a504 */ slti	$v0,$a0,16
/* 0x8007a508 */ bne $v0,$zero,.L8007a4fc
/* 0x8007a50c */ addiu	$v1,$v1,2
/* 0x8007a510 */ j	0x8007a438
/* 0x8007a514 */ lui	$v0,0x800e
.L8007a518:
/* 0x8007a518 */ jal	0x80025b18
/* 0x8007a51c */ addiu $a0,$zero,6
/* 0x8007a520 */ lui	$v0,0x800e
/* 0x8007a524 */ addiu	$a1,$v0,15224
/* 0x8007a528 */ lw	$v1,12($a1)
/* 0x8007a52c */ nop
/* 0x8007a530 */ sll	$v0,$v1,0x1
/* 0x8007a534 */ addu	$v0,$v0,$a1
/* 0x8007a538 */ addu $a2,$v1,$zero
/* 0x8007a53c */ lh	$v1,16($v0)
/* 0x8007a540 */ addiu	$a0,$a2,1
/* 0x8007a544 */ addiu	$v1,$v1,1
/* 0x8007a548 */ sh	$v1,16($v0)
/* 0x8007a54c */ slti	$v0,$a0,16
/* 0x8007a550 */ beq $v0,$zero,.L8007a570
/* 0x8007a554 */ sll	$v0,$a0,0x1
/* 0x8007a558 */ addu	$a1,$v0,$a1
.L8007a55c:
/* 0x8007a55c */ sh	$zero,16($a1)
/* 0x8007a560 */ addiu	$a0,$a0,1
/* 0x8007a564 */ slti	$v0,$a0,16
/* 0x8007a568 */ bne $v0,$zero,.L8007a55c
/* 0x8007a56c */ addiu	$a1,$a1,2
.L8007a570:
/* 0x8007a570 */ bne $v1,$zero,.L8007a8d0
/* 0x8007a574 */ lui	$a0,0x800e
/* 0x8007a578 */ addu $a0,$a2,$zero
/* 0x8007a57c */ slti	$v0,$a0,16
/* 0x8007a580 */ beq $v0,$zero,.L8007a8cc
/* 0x8007a584 */ lui	$v0,0x800e
/* 0x8007a588 */ addiu	$v0,$v0,15224
/* 0x8007a58c */ sll	$v1,$a0,0x1
/* 0x8007a590 */ addu	$v1,$v1,$v0
.L8007a594:
/* 0x8007a594 */ sh	$zero,48($v1)
/* 0x8007a598 */ addiu	$a0,$a0,1
/* 0x8007a59c */ slti	$v0,$a0,16
/* 0x8007a5a0 */ bne $v0,$zero,.L8007a594
/* 0x8007a5a4 */ addiu	$v1,$v1,2
/* 0x8007a5a8 */ j	0x8007a8d0
/* 0x8007a5ac */ lui	$a0,0x800e
/* 0x8007a5b0 */ jal	0x8002829c
/* 0x8007a5b4 */ nop
/* 0x8007a5b8 */ bne $v0,$zero,.L8007a8d0
/* 0x8007a5bc */ lui	$a0,0x800e
/* 0x8007a5c0 */ lui	$v0,0x800e
/* 0x8007a5c4 */ addiu	$a1,$v0,15224
/* 0x8007a5c8 */ lw	$v1,12($a1)
/* 0x8007a5cc */ nop
/* 0x8007a5d0 */ sll	$v0,$v1,0x1
/* 0x8007a5d4 */ addu	$v0,$v0,$a1
/* 0x8007a5d8 */ addu $a2,$v1,$zero
/* 0x8007a5dc */ lh	$v1,16($v0)
/* 0x8007a5e0 */ addiu	$a0,$a2,1
/* 0x8007a5e4 */ addiu	$v1,$v1,1
/* 0x8007a5e8 */ sh	$v1,16($v0)
/* 0x8007a5ec */ slti	$v0,$a0,16
/* 0x8007a5f0 */ beq $v0,$zero,.L8007a610
/* 0x8007a5f4 */ sll	$v0,$a0,0x1
/* 0x8007a5f8 */ addu	$a1,$v0,$a1
.L8007a5fc:
/* 0x8007a5fc */ sh	$zero,16($a1)
/* 0x8007a600 */ addiu	$a0,$a0,1
/* 0x8007a604 */ slti	$v0,$a0,16
/* 0x8007a608 */ bne $v0,$zero,.L8007a5fc
/* 0x8007a60c */ addiu	$a1,$a1,2
.L8007a610:
/* 0x8007a610 */ bne $v1,$zero,.L8007a438
/* 0x8007a614 */ lui	$v0,0x800e
/* 0x8007a618 */ addu $a0,$a2,$zero
/* 0x8007a61c */ slti	$v0,$a0,16
/* 0x8007a620 */ beq $v0,$zero,.L8007a434
/* 0x8007a624 */ lui	$v0,0x800e
/* 0x8007a628 */ addiu	$v0,$v0,15224
/* 0x8007a62c */ sll	$v1,$a0,0x1
/* 0x8007a630 */ addu	$v1,$v1,$v0
.L8007a634:
/* 0x8007a634 */ sh	$zero,48($v1)
/* 0x8007a638 */ addiu	$a0,$a0,1
/* 0x8007a63c */ slti	$v0,$a0,16
/* 0x8007a640 */ bne $v0,$zero,.L8007a634
/* 0x8007a644 */ addiu	$v1,$v1,2
/* 0x8007a648 */ j	0x8007a438
/* 0x8007a64c */ lui	$v0,0x800e
/* 0x8007a650 */ lui	$a0,0x800b
/* 0x8007a654 */ addiu	$a0,$a0,-10800
/* 0x8007a658 */ lui	$a1,0x8017
/* 0x8007a65c */ jal	0x80020d24
/* 0x8007a660 */ ori	$a1,$a1,0x4000
/* 0x8007a664 */ bne $v0,$zero,.L8007a8d0
/* 0x8007a668 */ lui	$a0,0x800e
/* 0x8007a66c */ lui	$v0,0x800e
/* 0x8007a670 */ addiu	$a1,$v0,15224
/* 0x8007a674 */ lw	$v1,12($a1)
/* 0x8007a678 */ nop
/* 0x8007a67c */ sll	$v0,$v1,0x1
/* 0x8007a680 */ addu	$v0,$v0,$a1
/* 0x8007a684 */ addu $a2,$v1,$zero
/* 0x8007a688 */ lh	$v1,16($v0)
/* 0x8007a68c */ addiu	$a0,$a2,1
/* 0x8007a690 */ addiu	$v1,$v1,1
/* 0x8007a694 */ sh	$v1,16($v0)
/* 0x8007a698 */ slti	$v0,$a0,16
/* 0x8007a69c */ beq $v0,$zero,.L8007a6bc
/* 0x8007a6a0 */ sll	$v0,$a0,0x1
/* 0x8007a6a4 */ addu	$a1,$v0,$a1
.L8007a6a8:
/* 0x8007a6a8 */ sh	$zero,16($a1)
/* 0x8007a6ac */ addiu	$a0,$a0,1
/* 0x8007a6b0 */ slti	$v0,$a0,16
/* 0x8007a6b4 */ bne $v0,$zero,.L8007a6a8
/* 0x8007a6b8 */ addiu	$a1,$a1,2
.L8007a6bc:
/* 0x8007a6bc */ bne $v1,$zero,.L8007a438
/* 0x8007a6c0 */ lui	$v0,0x800e
/* 0x8007a6c4 */ addu $a0,$a2,$zero
/* 0x8007a6c8 */ slti	$v0,$a0,16
/* 0x8007a6cc */ beq $v0,$zero,.L8007a434
/* 0x8007a6d0 */ lui	$v0,0x800e
/* 0x8007a6d4 */ addiu	$v0,$v0,15224
/* 0x8007a6d8 */ sll	$v1,$a0,0x1
/* 0x8007a6dc */ addu	$v1,$v1,$v0
.L8007a6e0:
/* 0x8007a6e0 */ sh	$zero,48($v1)
/* 0x8007a6e4 */ addiu	$a0,$a0,1
/* 0x8007a6e8 */ slti	$v0,$a0,16
/* 0x8007a6ec */ bne $v0,$zero,.L8007a6e0
/* 0x8007a6f0 */ addiu	$v1,$v1,2
/* 0x8007a6f4 */ j	0x8007a438
/* 0x8007a6f8 */ lui	$v0,0x800e
/* 0x8007a6fc */ lui	$v0,0x800b
/* 0x8007a700 */ lw	$v0,-14196($v0)
/* 0x8007a704 */ nop
/* 0x8007a708 */ bne $v0,$zero,.L8007a8d0
/* 0x8007a70c */ lui	$a0,0x800e
/* 0x8007a710 */ lui	$v0,0x800e
/* 0x8007a714 */ addiu	$a1,$v0,15224
/* 0x8007a718 */ lw	$v1,12($a1)
/* 0x8007a71c */ nop
/* 0x8007a720 */ sll	$v0,$v1,0x1
/* 0x8007a724 */ addu	$v0,$v0,$a1
/* 0x8007a728 */ addu $a2,$v1,$zero
/* 0x8007a72c */ lh	$v1,16($v0)
/* 0x8007a730 */ addiu	$a0,$a2,1
/* 0x8007a734 */ addiu	$v1,$v1,1
/* 0x8007a738 */ sh	$v1,16($v0)
/* 0x8007a73c */ slti	$v0,$a0,16
/* 0x8007a740 */ beq $v0,$zero,.L8007a760
/* 0x8007a744 */ sll	$v0,$a0,0x1
/* 0x8007a748 */ addu	$a1,$v0,$a1
.L8007a74c:
/* 0x8007a74c */ sh	$zero,16($a1)
/* 0x8007a750 */ addiu	$a0,$a0,1
/* 0x8007a754 */ slti	$v0,$a0,16
/* 0x8007a758 */ bne $v0,$zero,.L8007a74c
/* 0x8007a75c */ addiu	$a1,$a1,2
.L8007a760:
/* 0x8007a760 */ bne $v1,$zero,.L8007a438
/* 0x8007a764 */ lui	$v0,0x800e
/* 0x8007a768 */ addu $a0,$a2,$zero
/* 0x8007a76c */ slti	$v0,$a0,16
/* 0x8007a770 */ beq $v0,$zero,.L8007a434
/* 0x8007a774 */ lui	$v0,0x800e
/* 0x8007a778 */ addiu	$v0,$v0,15224
/* 0x8007a77c */ sll	$v1,$a0,0x1
/* 0x8007a780 */ addu	$v1,$v1,$v0
.L8007a784:
/* 0x8007a784 */ sh	$zero,48($v1)
/* 0x8007a788 */ addiu	$a0,$a0,1
/* 0x8007a78c */ slti	$v0,$a0,16
/* 0x8007a790 */ bne $v0,$zero,.L8007a784
/* 0x8007a794 */ addiu	$v1,$v1,2
/* 0x8007a798 */ j	0x8007a438
/* 0x8007a79c */ lui	$v0,0x800e
/* 0x8007a7a0 */ lui	$v0,0x800b
/* 0x8007a7a4 */ lw	$v0,-14100($v0)
/* 0x8007a7a8 */ lui	$a0,0x8017
/* 0x8007a7ac */ lw	$a1,144($v0)
/* 0x8007a7b0 */ jal	0x8002a9dc
/* 0x8007a7b4 */ ori	$a0,$a0,0x4000
/* 0x8007a7b8 */ addiu $a0,$zero,142
/* 0x8007a7bc */ addiu $a1,$zero,960
/* 0x8007a7c0 */ addu $a2,$zero,$zero
/* 0x8007a7c4 */ addiu $a3,$zero,1008
/* 0x8007a7c8 */ jal	0x8007bc1c
/* 0x8007a7cc */ sw	$zero,16($sp)
/* 0x8007a7d0 */ addiu $a0,$zero,143
/* 0x8007a7d4 */ addiu $a1,$zero,960
/* 0x8007a7d8 */ addiu $a2,$zero,128
/* 0x8007a7dc */ addiu $a3,$zero,1008
/* 0x8007a7e0 */ addiu $v0,$zero,16
/* 0x8007a7e4 */ jal	0x8007bc1c
/* 0x8007a7e8 */ sw	$v0,16($sp)
/* 0x8007a7ec */ addiu $a0,$zero,146
/* 0x8007a7f0 */ addiu $a1,$zero,960
/* 0x8007a7f4 */ addiu $a2,$zero,256
/* 0x8007a7f8 */ addiu $a3,$zero,1008
/* 0x8007a7fc */ addiu $v0,$zero,32
/* 0x8007a800 */ jal	0x8007bc1c
/* 0x8007a804 */ sw	$v0,16($sp)
/* 0x8007a808 */ addiu $a0,$zero,144
/* 0x8007a80c */ addiu $a1,$zero,960
/* 0x8007a810 */ addiu $a2,$zero,384
/* 0x8007a814 */ addiu $a3,$zero,1008
/* 0x8007a818 */ addiu $v0,$zero,48
/* 0x8007a81c */ jal	0x8007bc1c
/* 0x8007a820 */ sw	$v0,16($sp)
/* 0x8007a824 */ addiu $a0,$zero,145
/* 0x8007a828 */ addiu $a1,$zero,992
/* 0x8007a82c */ addu $a2,$zero,$zero
/* 0x8007a830 */ addiu $a3,$zero,1008
/* 0x8007a834 */ addiu $v0,$zero,64
/* 0x8007a838 */ jal	0x8007bc1c
/* 0x8007a83c */ sw	$v0,16($sp)
/* 0x8007a840 */ lui	$v0,0x800e
/* 0x8007a844 */ addiu	$a1,$v0,15224
/* 0x8007a848 */ lw	$v1,12($a1)
/* 0x8007a84c */ nop
/* 0x8007a850 */ sll	$v0,$v1,0x1
/* 0x8007a854 */ addu	$v0,$v0,$a1
/* 0x8007a858 */ addu $a2,$v1,$zero
/* 0x8007a85c */ lh	$v1,16($v0)
/* 0x8007a860 */ addiu	$a0,$a2,1
/* 0x8007a864 */ addiu	$v1,$v1,1
/* 0x8007a868 */ sh	$v1,16($v0)
/* 0x8007a86c */ slti	$v0,$a0,16
/* 0x8007a870 */ beq $v0,$zero,.L8007a890
/* 0x8007a874 */ sll	$v0,$a0,0x1
/* 0x8007a878 */ addu	$a1,$v0,$a1
.L8007a87c:
/* 0x8007a87c */ sh	$zero,16($a1)
/* 0x8007a880 */ addiu	$a0,$a0,1
/* 0x8007a884 */ slti	$v0,$a0,16
/* 0x8007a888 */ bne $v0,$zero,.L8007a87c
/* 0x8007a88c */ addiu	$a1,$a1,2
.L8007a890:
/* 0x8007a890 */ bne $v1,$zero,.L8007a8cc
/* 0x8007a894 */ addiu $s0,$zero,1
/* 0x8007a898 */ addu $a0,$a2,$zero
/* 0x8007a89c */ slti	$v0,$a0,16
/* 0x8007a8a0 */ beq $v0,$zero,.L8007a8cc
/* 0x8007a8a4 */ lui	$v0,0x800e
/* 0x8007a8a8 */ addiu	$v0,$v0,15224
/* 0x8007a8ac */ sll	$v1,$a0,0x1
/* 0x8007a8b0 */ addu	$v1,$v1,$v0
.L8007a8b4:
/* 0x8007a8b4 */ sh	$zero,48($v1)
/* 0x8007a8b8 */ addiu	$a0,$a0,1
/* 0x8007a8bc */ slti	$v0,$a0,16
/* 0x8007a8c0 */ bne $v0,$zero,.L8007a8b4
/* 0x8007a8c4 */ addiu	$v1,$v1,2
/* 0x8007a8c8 */ addiu $s0,$zero,1
.L8007a8cc:
/* 0x8007a8cc */ lui	$a0,0x800e
.L8007a8d0:
/* 0x8007a8d0 */ addiu	$a0,$a0,15224
/* 0x8007a8d4 */ lw	$v1,12($a0)
/* 0x8007a8d8 */ addu $v0,$s0,$zero
/* 0x8007a8dc */ addiu	$v1,$v1,-1
/* 0x8007a8e0 */ sw	$v1,12($a0)
/* 0x8007a8e4 */ lw	$ra,28($sp)
/* 0x8007a8e8 */ lw	$s0,24($sp)
/* 0x8007a8ec */ jr $ra
/* 0x8007a8f0 */ addiu	$sp,$sp,32
.size FUN_8007a410, .-FUN_8007a410



