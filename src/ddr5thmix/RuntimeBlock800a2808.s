.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a2808
.globl FUN_800a2808
.type FUN_800a2808, @function
FUN_800a2808:
.L800a2808:
/* 0x800a2808 */ addiu	$sp,$sp,-296
.L800a280c:
/* 0x800a280c */ lui	$v0,0x800e
.L800a2810:
/* 0x800a2810 */ lw	$v0,2840($v0)
.L800a2814:
/* 0x800a2814 */ addiu	$a0,$zero,303
.L800a2818:
/* 0x800a2818 */ sw	$s1,260($sp)
.L800a281c:
/* 0x800a281c */ addu	$s1,$zero,$zero
.L800a2820:
/* 0x800a2820 */ sw	$s8,288($sp)
.L800a2824:
/* 0x800a2824 */ addiu	$s8,$zero,223
.L800a2828:
/* 0x800a2828 */ sw	$ra,292($sp)
.L800a282c:
/* 0x800a282c */ sw	$s7,284($sp)
.L800a2830:
/* 0x800a2830 */ sw	$s6,280($sp)
.L800a2834:
/* 0x800a2834 */ sw	$s5,276($sp)
.L800a2838:
/* 0x800a2838 */ sw	$s4,272($sp)
.L800a283c:
/* 0x800a283c */ sw	$s3,268($sp)
.L800a2840:
/* 0x800a2840 */ sw	$s2,264($sp)
.L800a2844:
/* 0x800a2844 */ sw	$s0,256($sp)
.L800a2848:
/* 0x800a2848 */ jal	0x8007f0a4
.L800a284c:
/* 0x800a284c */ addiu	$s7,$v0,4560
.L800a2850:
/* 0x800a2850 */ jal	0x8007ef38
.L800a2854:
/* 0x800a2854 */ addu	$a0,$v0,$zero
.L800a2858:
/* 0x800a2858 */ bne	$v0,$zero,.L800a2864
.L800a285c:
/* 0x800a285c */ sll	$zero,$zero,0x0
.L800a2860:
/* 0x800a2860 */ addiu	$s8,$zero,228
.L800a2864:
/* 0x800a2864 */ lbu	$v0,230($s7)
.L800a2868:
/* 0x800a2868 */ addiu	$v1,$zero,3
.L800a286c:
/* 0x800a286c */ addiu	$v0,$v0,1
.L800a2870:
/* 0x800a2870 */ sb	$v0,230($s7)
.L800a2874:
/* 0x800a2874 */ andi	$v0,$v0,0xff
.L800a2878:
/* 0x800a2878 */ bne	$v0,$v1,.L800a2b4c
.L800a287c:
/* 0x800a287c */ andi	$v0,$s1,0xff
.L800a2880:
/* 0x800a2880 */ jal	0x8004d628
.L800a2884:
/* 0x800a2884 */ sb	$zero,230($s7)
.L800a2888:
/* 0x800a2888 */ lui	$v1,0x6666
.L800a288c:
/* 0x800a288c */ ori	$v1,$v1,0x6667
.L800a2890:
/* 0x800a2890 */ mult	$v0,$v1
.L800a2894:
/* 0x800a2894 */ sra	$v1,$v0,0x1f
.L800a2898:
/* 0x800a2898 */ mfhi	$a3
.L800a289c:
/* 0x800a289c */ sra	$a0,$a3,0x2
.L800a28a0:
/* 0x800a28a0 */ subu	$a0,$a0,$v1
.L800a28a4:
/* 0x800a28a4 */ sll	$v1,$a0,0x2
.L800a28a8:
/* 0x800a28a8 */ addu	$v1,$v1,$a0
.L800a28ac:
/* 0x800a28ac */ sll	$v1,$v1,0x1
.L800a28b0:
/* 0x800a28b0 */ subu	$v0,$v0,$v1
.L800a28b4:
/* 0x800a28b4 */ andi	$v1,$v0,0xff
.L800a28b8:
/* 0x800a28b8 */ sltiu	$v0,$v1,7
.L800a28bc:
/* 0x800a28bc */ bne	$v0,$zero,.L800a28d4
.L800a28c0:
/* 0x800a28c0 */ addiu	$s6,$zero,1
.L800a28c4:
/* 0x800a28c4 */ sltiu	$v0,$v1,9
.L800a28c8:
/* 0x800a28c8 */ beq	$v0,$zero,.L800a28d4
.L800a28cc:
/* 0x800a28cc */ addiu	$s6,$zero,3
.L800a28d0:
/* 0x800a28d0 */ addiu	$s6,$zero,2
.L800a28d4:
/* 0x800a28d4 */ beq	$s6,$zero,.L800a2b48
.L800a28d8:
/* 0x800a28d8 */ addu	$s5,$zero,$zero
.L800a28dc:
/* 0x800a28dc */ andi	$s4,$s8,0xff
.L800a28e0:
/* 0x800a28e0 */ sltu	$a3,$zero,$s4
.L800a28e4:
/* 0x800a28e4 */ sw	$a3,248($sp)
.L800a28e8:
/* 0x800a28e8 */ addiu	$s2,$sp,16
.L800a28ec:
/* 0x800a28ec */ lui	$s3,0x800e
.L800a28f0:
/* 0x800a28f0 */ lw	$a3,248($sp)
.L800a28f4:
/* 0x800a28f4 */ sll	$zero,$zero,0x0
.L800a28f8:
/* 0x800a28f8 */ beq	$a3,$zero,.L800a2920
.L800a28fc:
/* 0x800a28fc */ addu	$v1,$zero,$zero
.L800a2900:
/* 0x800a2900 */ andi	$v0,$v1,0xff
.L800a2904:
/* 0x800a2904 */ addu	$v0,$s2,$v0
.L800a2908:
/* 0x800a2908 */ sb	$zero,0($v0)
.L800a290c:
/* 0x800a290c */ addiu	$v1,$v1,1
.L800a2910:
/* 0x800a2910 */ andi	$v0,$v1,0xff
.L800a2914:
/* 0x800a2914 */ sltu	$v0,$v0,$s4
.L800a2918:
/* 0x800a2918 */ bne	$v0,$zero,.L800a2904
.L800a291c:
/* 0x800a291c */ andi	$v0,$v1,0xff
.L800a2920:
/* 0x800a2920 */ addu	$a0,$zero,$zero
.L800a2924:
/* 0x800a2924 */ lw	$v0,2840($s3)
.L800a2928:
/* 0x800a2928 */ addu	$v1,$a0,$zero
.L800a292c:
/* 0x800a292c */ addiu	$a1,$v0,4560
.L800a2930:
/* 0x800a2930 */ andi	$v0,$v1,0xff
.L800a2934:
/* 0x800a2934 */ addu	$v0,$a1,$v0
.L800a2938:
/* 0x800a2938 */ lbu	$v0,0($v0)
.L800a293c:
/* 0x800a293c */ sll	$zero,$zero,0x0
.L800a2940:
/* 0x800a2940 */ andi	$v0,$v0,0x1
.L800a2944:
/* 0x800a2944 */ bne	$v0,$zero,.L800a2950
.L800a2948:
/* 0x800a2948 */ sll	$zero,$zero,0x0
.L800a294c:
/* 0x800a294c */ addiu	$a0,$a0,1
.L800a2950:
/* 0x800a2950 */ addiu	$v1,$v1,1
.L800a2954:
/* 0x800a2954 */ andi	$v0,$v1,0xff
.L800a2958:
/* 0x800a2958 */ sltiu	$v0,$v0,228
.L800a295c:
/* 0x800a295c */ bne	$v0,$zero,.L800a2934
.L800a2960:
/* 0x800a2960 */ andi	$v0,$v1,0xff
.L800a2964:
/* 0x800a2964 */ addu	$s1,$zero,$zero
.L800a2968:
/* 0x800a2968 */ addu	$v1,$s1,$zero
.L800a296c:
/* 0x800a296c */ beq	$s4,$zero,.L800a29ec
.L800a2970:
/* 0x800a2970 */ andi	$v0,$a0,0xff
.L800a2974:
/* 0x800a2974 */ slti	$a2,$v0,115
.L800a2978:
/* 0x800a2978 */ andi	$a1,$s8,0xff
.L800a297c:
/* 0x800a297c */ andi	$a0,$v1,0xff
.L800a2980:
/* 0x800a2980 */ addu	$v0,$s7,$a0
.L800a2984:
/* 0x800a2984 */ lbu	$v0,0($v0)
.L800a2988:
/* 0x800a2988 */ sll	$zero,$zero,0x0
.L800a298c:
/* 0x800a298c */ andi	$v0,$v0,0x1
.L800a2990:
/* 0x800a2990 */ bne	$v0,$zero,.L800a29d8
.L800a2994:
/* 0x800a2994 */ sll	$zero,$zero,0x0
.L800a2998:
/* 0x800a2998 */ bne	$a2,$zero,.L800a29c8
.L800a299c:
/* 0x800a299c */ addiu	$v0,$v1,-9
.L800a29a0:
/* 0x800a29a0 */ andi	$v0,$v0,0xff
.L800a29a4:
/* 0x800a29a4 */ sltiu	$v0,$v0,5
.L800a29a8:
/* 0x800a29a8 */ bne	$v0,$zero,.L800a29d8
.L800a29ac:
/* 0x800a29ac */ addiu	$v0,$v1,-18
.L800a29b0:
/* 0x800a29b0 */ andi	$v0,$v0,0xff
.L800a29b4:
/* 0x800a29b4 */ sltiu	$v0,$v0,2
.L800a29b8:
/* 0x800a29b8 */ bne	$v0,$zero,.L800a29d8
.L800a29bc:
/* 0x800a29bc */ addiu	$a3,$zero,16
.L800a29c0:
/* 0x800a29c0 */ beq	$a0,$a3,.L800a29d8
.L800a29c4:
/* 0x800a29c4 */ sll	$zero,$zero,0x0
.L800a29c8:
/* 0x800a29c8 */ addiu	$s1,$s1,1
.L800a29cc:
/* 0x800a29cc */ andi	$v0,$s1,0xff
.L800a29d0:
/* 0x800a29d0 */ addu	$v0,$s2,$v0
.L800a29d4:
/* 0x800a29d4 */ sb	$v1,0($v0)
.L800a29d8:
/* 0x800a29d8 */ addiu	$v1,$v1,1
.L800a29dc:
/* 0x800a29dc */ andi	$v0,$v1,0xff
.L800a29e0:
/* 0x800a29e0 */ sltu	$v0,$v0,$a1
.L800a29e4:
/* 0x800a29e4 */ bne	$v0,$zero,.L800a2980
.L800a29e8:
/* 0x800a29e8 */ andi	$a0,$v1,0xff
.L800a29ec:
/* 0x800a29ec */ andi	$s0,$s1,0xff
.L800a29f0:
/* 0x800a29f0 */ beq	$s0,$zero,.L800a2b34
.L800a29f4:
/* 0x800a29f4 */ addiu	$v0,$zero,1
.L800a29f8:
/* 0x800a29f8 */ bne	$s0,$v0,.L800a2a74
.L800a29fc:
/* 0x800a29fc */ sltiu	$v0,$s0,2
.L800a2a00:
/* 0x800a2a00 */ lw	$v0,2840($s3)
.L800a2a04:
/* 0x800a2a04 */ lbu	$v1,17($sp)
.L800a2a08:
/* 0x800a2a08 */ addiu	$v0,$v0,4560
.L800a2a0c:
/* 0x800a2a0c */ addu	$a0,$v0,$v1
.L800a2a10:
/* 0x800a2a10 */ lbu	$v1,0($a0)
.L800a2a14:
/* 0x800a2a14 */ sll	$zero,$zero,0x0
.L800a2a18:
/* 0x800a2a18 */ andi	$v0,$v1,0x1
.L800a2a1c:
/* 0x800a2a1c */ bne	$v0,$zero,.L800a2a28
.L800a2a20:
/* 0x800a2a20 */ ori	$v0,$v1,0x3
.L800a2a24:
/* 0x800a2a24 */ sb	$v0,0($a0)
.L800a2a28:
/* 0x800a2a28 */ addu	$a0,$zero,$zero
.L800a2a2c:
/* 0x800a2a2c */ lw	$v0,2840($s3)
.L800a2a30:
/* 0x800a2a30 */ addu	$v1,$a0,$zero
.L800a2a34:
/* 0x800a2a34 */ addiu	$a1,$v0,4560
.L800a2a38:
/* 0x800a2a38 */ andi	$v0,$v1,0xff
.L800a2a3c:
/* 0x800a2a3c */ addu	$v0,$a1,$v0
.L800a2a40:
/* 0x800a2a40 */ lbu	$v0,0($v0)
.L800a2a44:
/* 0x800a2a44 */ sll	$zero,$zero,0x0
.L800a2a48:
/* 0x800a2a48 */ andi	$v0,$v0,0x1
.L800a2a4c:
/* 0x800a2a4c */ bne	$v0,$zero,.L800a2a58
.L800a2a50:
/* 0x800a2a50 */ sll	$zero,$zero,0x0
.L800a2a54:
/* 0x800a2a54 */ addiu	$a0,$a0,1
.L800a2a58:
/* 0x800a2a58 */ addiu	$v1,$v1,1
.L800a2a5c:
/* 0x800a2a5c */ andi	$v0,$v1,0xff
.L800a2a60:
/* 0x800a2a60 */ sltiu	$v0,$v0,228
.L800a2a64:
/* 0x800a2a64 */ bne	$v0,$zero,.L800a2a3c
.L800a2a68:
/* 0x800a2a68 */ andi	$v0,$v1,0xff
.L800a2a6c:
/* 0x800a2a6c */ j	.L800a2b24
.L800a2a70:
/* 0x800a2a70 */ andi	$v0,$a0,0xff
.L800a2a74:
/* 0x800a2a74 */ bne	$v0,$zero,.L800a2b34
.L800a2a78:
/* 0x800a2a78 */ sll	$zero,$zero,0x0
.L800a2a7c:
/* 0x800a2a7c */ jal	0x8004d628
.L800a2a80:
/* 0x800a2a80 */ sll	$zero,$zero,0x0
.L800a2a84:
/* 0x800a2a84 */ div	$zero,$v0,$s0
.L800a2a88:
/* 0x800a2a88 */ bne	$s0,$zero,.L800a2a94
.L800a2a8c:
/* 0x800a2a8c */ sll	$zero,$zero,0x0
.L800a2a90:
/* 0x800a2a90 */ break	0x7
.L800a2a94:
/* 0x800a2a94 */ addiu	$at,$zero,-1
.L800a2a98:
/* 0x800a2a98 */ bne	$s0,$at,.L800a2aac
.L800a2a9c:
/* 0x800a2a9c */ lui	$at,0x8000
.L800a2aa0:
/* 0x800a2aa0 */ bne	$v0,$at,.L800a2aac
.L800a2aa4:
/* 0x800a2aa4 */ sll	$zero,$zero,0x0
.L800a2aa8:
/* 0x800a2aa8 */ break	0x6
.L800a2aac:
/* 0x800a2aac */ mfhi	$v1
.L800a2ab0:
/* 0x800a2ab0 */ lw	$v0,2840($s3)
.L800a2ab4:
/* 0x800a2ab4 */ addu	$v1,$v1,$s2
.L800a2ab8:
/* 0x800a2ab8 */ lbu	$v1,1($v1)
.L800a2abc:
/* 0x800a2abc */ addiu	$v0,$v0,4560
.L800a2ac0:
/* 0x800a2ac0 */ addu	$a0,$v0,$v1
.L800a2ac4:
/* 0x800a2ac4 */ lbu	$v1,0($a0)
.L800a2ac8:
/* 0x800a2ac8 */ sll	$zero,$zero,0x0
.L800a2acc:
/* 0x800a2acc */ andi	$v0,$v1,0x1
.L800a2ad0:
/* 0x800a2ad0 */ bne	$v0,$zero,.L800a2adc
.L800a2ad4:
/* 0x800a2ad4 */ ori	$v0,$v1,0x3
.L800a2ad8:
/* 0x800a2ad8 */ sb	$v0,0($a0)
.L800a2adc:
/* 0x800a2adc */ addu	$a0,$zero,$zero
.L800a2ae0:
/* 0x800a2ae0 */ lw	$v0,2840($s3)
.L800a2ae4:
/* 0x800a2ae4 */ addu	$v1,$a0,$zero
.L800a2ae8:
/* 0x800a2ae8 */ addiu	$a1,$v0,4560
.L800a2aec:
/* 0x800a2aec */ andi	$v0,$v1,0xff
.L800a2af0:
/* 0x800a2af0 */ addu	$v0,$a1,$v0
.L800a2af4:
/* 0x800a2af4 */ lbu	$v0,0($v0)
.L800a2af8:
/* 0x800a2af8 */ sll	$zero,$zero,0x0
.L800a2afc:
/* 0x800a2afc */ andi	$v0,$v0,0x1
.L800a2b00:
/* 0x800a2b00 */ bne	$v0,$zero,.L800a2b0c
.L800a2b04:
/* 0x800a2b04 */ sll	$zero,$zero,0x0
.L800a2b08:
/* 0x800a2b08 */ addiu	$a0,$a0,1
.L800a2b0c:
/* 0x800a2b0c */ addiu	$v1,$v1,1
.L800a2b10:
/* 0x800a2b10 */ andi	$v0,$v1,0xff
.L800a2b14:
/* 0x800a2b14 */ sltiu	$v0,$v0,228
.L800a2b18:
/* 0x800a2b18 */ bne	$v0,$zero,.L800a2af0
.L800a2b1c:
/* 0x800a2b1c */ andi	$v0,$v1,0xff
.L800a2b20:
/* 0x800a2b20 */ andi	$v0,$a0,0xff
.L800a2b24:
/* 0x800a2b24 */ bne	$v0,$zero,.L800a2b34
.L800a2b28:
/* 0x800a2b28 */ addiu	$a0,$zero,3
.L800a2b2c:
/* 0x800a2b2c */ jal	0x8009d274
.L800a2b30:
/* 0x800a2b30 */ ori	$a1,$zero,0xffff
.L800a2b34:
/* 0x800a2b34 */ addiu	$s5,$s5,1
.L800a2b38:
/* 0x800a2b38 */ andi	$v0,$s5,0xff
.L800a2b3c:
/* 0x800a2b3c */ sltu	$v0,$v0,$s6
.L800a2b40:
/* 0x800a2b40 */ bne	$v0,$zero,.L800a28f0
.L800a2b44:
/* 0x800a2b44 */ sll	$zero,$zero,0x0
.L800a2b48:
/* 0x800a2b48 */ andi	$v0,$s1,0xff
.L800a2b4c:
/* 0x800a2b4c */ lw	$ra,292($sp)
.L800a2b50:
/* 0x800a2b50 */ lw	$s8,288($sp)
.L800a2b54:
/* 0x800a2b54 */ lw	$s7,284($sp)
.L800a2b58:
/* 0x800a2b58 */ lw	$s6,280($sp)
.L800a2b5c:
/* 0x800a2b5c */ lw	$s5,276($sp)
.L800a2b60:
/* 0x800a2b60 */ lw	$s4,272($sp)
.L800a2b64:
/* 0x800a2b64 */ lw	$s3,268($sp)
.L800a2b68:
/* 0x800a2b68 */ lw	$s2,264($sp)
.L800a2b6c:
/* 0x800a2b6c */ lw	$s1,260($sp)
.L800a2b70:
/* 0x800a2b70 */ lw	$s0,256($sp)
.L800a2b74:
/* 0x800a2b74 */ jr	$ra
.L800a2b78:
/* 0x800a2b78 */ addiu	$sp,$sp,296
.size FUN_800a2808, .-FUN_800a2808
