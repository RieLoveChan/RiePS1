# DDR 5th Mix music/resource state dispatcher reconstruction.
# Semantic MIPS recovered from the hash-gated SLPM_868.97 revision; no reference bytes are embedded.
.set noreorder
.set noat
.set nomacro
.section .text.FUN_8007a8f4, "ax", @progbits
.globl FUN_8007a8f4
.type FUN_8007a8f4, @function
.ent FUN_8007a8f4
FUN_8007a8f4:
.L8007a8f4:
    addiu	$sp,$sp,-0x30
.L8007a8f8:
    lui	$v1,0x800e
.L8007a8fc:
    addiu	$v1,$v1,0x3b78
.L8007a900:
    sw	$ra,0x28($sp)
.L8007a904:
    sw	$s3,0x24($sp)
.L8007a908:
    sw	$s2,0x20($sp)
.L8007a90c:
    sw	$s1,0x1c($sp)
.L8007a910:
    sw	$s0,0x18($sp)
.L8007a914:
    lw	$v0,0xc($v1)
.L8007a918:
    addu	$s3,$zero,$zero
.L8007a91c:
    addiu	$v0,$v0,0x1
.L8007a920:
    sw	$v0,0xc($v1)
.L8007a924:
    lui	$v0,0x800e
.L8007a928:
    addiu	$v0,$v0,0x3b78
.L8007a92c:
    lw	$v1,0xc($v0)
.L8007a930:
    nop
.L8007a934:
    sll	$v1,$v1,0x1
.L8007a938:
    addu	$v1,$v1,$v0
.L8007a93c:
    lh	$v1,0x10($v1)
.L8007a940:
    nop
.L8007a944:
    sltiu	$v0,$v1,0xb
.L8007a948:
    beq	$v0,$zero,.L8007b22c
.L8007a94c:
    lui	$v0,0x8002
.L8007a950:
    addiu	$v0,$v0,-0x2874
.L8007a954:
    sll	$v1,$v1,0x2
.L8007a958:
    addu	$v1,$v1,$v0
.L8007a95c:
    lw	$v0,0x0($v1)
.L8007a960:
    nop
.L8007a964:
    jr	$v0
.L8007a968:
    nop
.L8007a96c:
    jal	0x8002829c
.L8007a970:
    nop
.L8007a974:
    bne	$v0,$zero,.L8007aa08
.L8007a978:
    lui	$v0,0x800e
.L8007a97c:
    addiu	$a1,$v0,0x3b78
.L8007a980:
    lw	$v1,0xc($a1)
.L8007a984:
    nop
.L8007a988:
    sll	$v0,$v1,0x1
.L8007a98c:
    addu	$v0,$v0,$a1
.L8007a990:
    addu	$a2,$v1,$zero
.L8007a994:
    lh	$v1,0x10($v0)
.L8007a998:
    addiu	$a0,$a2,0x1
.L8007a99c:
    addiu	$v1,$v1,0x1
.L8007a9a0:
    sh	$v1,0x10($v0)
.L8007a9a4:
    slti	$v0,$a0,0x10
.L8007a9a8:
    beq	$v0,$zero,.L8007a9c8
.L8007a9ac:
    sll	$v0,$a0,0x1
.L8007a9b0:
    addu	$a1,$v0,$a1
.L8007a9b4:
    sh	$zero,0x10($a1)
.L8007a9b8:
    addiu	$a0,$a0,0x1
.L8007a9bc:
    slti	$v0,$a0,0x10
.L8007a9c0:
    bne	$v0,$zero,.L8007a9b4
.L8007a9c4:
    addiu	$a1,$a1,0x2
.L8007a9c8:
    bne	$v1,$zero,.L8007a928
.L8007a9cc:
    lui	$v0,0x800e
.L8007a9d0:
    addu	$a0,$a2,$zero
.L8007a9d4:
    slti	$v0,$a0,0x10
.L8007a9d8:
    beq	$v0,$zero,.L8007a924
.L8007a9dc:
    lui	$v0,0x800e
.L8007a9e0:
    addiu	$v0,$v0,0x3b78
.L8007a9e4:
    sll	$v1,$a0,0x1
.L8007a9e8:
    addu	$v1,$v1,$v0
.L8007a9ec:
    sh	$zero,0x30($v1)
.L8007a9f0:
    addiu	$a0,$a0,0x1
.L8007a9f4:
    slti	$v0,$a0,0x10
.L8007a9f8:
    bne	$v0,$zero,.L8007a9ec
.L8007a9fc:
    addiu	$v1,$v1,0x2
.L8007aa00:
    j	0x8007a928
.L8007aa04:
    lui	$v0,0x800e
.L8007aa08:
    jal	0x80025b18
.L8007aa0c:
    addiu	$a0,$zero,0x6
.L8007aa10:
    lui	$v0,0x800e
.L8007aa14:
    addiu	$a1,$v0,0x3b78
.L8007aa18:
    lw	$v1,0xc($a1)
.L8007aa1c:
    nop
.L8007aa20:
    sll	$v0,$v1,0x1
.L8007aa24:
    addu	$v0,$v0,$a1
.L8007aa28:
    addu	$a2,$v1,$zero
.L8007aa2c:
    lh	$v1,0x10($v0)
.L8007aa30:
    addiu	$a0,$a2,0x1
.L8007aa34:
    addiu	$v1,$v1,0x1
.L8007aa38:
    sh	$v1,0x10($v0)
.L8007aa3c:
    slti	$v0,$a0,0x10
.L8007aa40:
    beq	$v0,$zero,.L8007aa60
.L8007aa44:
    sll	$v0,$a0,0x1
.L8007aa48:
    addu	$a1,$v0,$a1
.L8007aa4c:
    sh	$zero,0x10($a1)
.L8007aa50:
    addiu	$a0,$a0,0x1
.L8007aa54:
    slti	$v0,$a0,0x10
.L8007aa58:
    bne	$v0,$zero,.L8007aa4c
.L8007aa5c:
    addiu	$a1,$a1,0x2
.L8007aa60:
    bne	$v1,$zero,.L8007b230
.L8007aa64:
    lui	$a0,0x800e
.L8007aa68:
    addu	$a0,$a2,$zero
.L8007aa6c:
    slti	$v0,$a0,0x10
.L8007aa70:
    beq	$v0,$zero,.L8007b22c
.L8007aa74:
    lui	$v0,0x800e
.L8007aa78:
    addiu	$v0,$v0,0x3b78
.L8007aa7c:
    sll	$v1,$a0,0x1
.L8007aa80:
    addu	$v1,$v1,$v0
.L8007aa84:
    sh	$zero,0x30($v1)
.L8007aa88:
    addiu	$a0,$a0,0x1
.L8007aa8c:
    slti	$v0,$a0,0x10
.L8007aa90:
    bne	$v0,$zero,.L8007aa84
.L8007aa94:
    addiu	$v1,$v1,0x2
.L8007aa98:
    j	0x8007b230
.L8007aa9c:
    lui	$a0,0x800e
.L8007aaa0:
    jal	0x8002829c
.L8007aaa4:
    nop
.L8007aaa8:
    bne	$v0,$zero,.L8007b230
.L8007aaac:
    lui	$a0,0x800e
.L8007aab0:
    lui	$v0,0x800e
.L8007aab4:
    addiu	$a1,$v0,0x3b78
.L8007aab8:
    lw	$v1,0xc($a1)
.L8007aabc:
    nop
.L8007aac0:
    sll	$v0,$v1,0x1
.L8007aac4:
    addu	$v0,$v0,$a1
.L8007aac8:
    addu	$a2,$v1,$zero
.L8007aacc:
    lh	$v1,0x10($v0)
.L8007aad0:
    addiu	$a0,$a2,0x1
.L8007aad4:
    addiu	$v1,$v1,0x1
.L8007aad8:
    sh	$v1,0x10($v0)
.L8007aadc:
    slti	$v0,$a0,0x10
.L8007aae0:
    beq	$v0,$zero,.L8007ab00
.L8007aae4:
    sll	$v0,$a0,0x1
.L8007aae8:
    addu	$a1,$v0,$a1
.L8007aaec:
    sh	$zero,0x10($a1)
.L8007aaf0:
    addiu	$a0,$a0,0x1
.L8007aaf4:
    slti	$v0,$a0,0x10
.L8007aaf8:
    bne	$v0,$zero,.L8007aaec
.L8007aafc:
    addiu	$a1,$a1,0x2
.L8007ab00:
    bne	$v1,$zero,.L8007a928
.L8007ab04:
    lui	$v0,0x800e
.L8007ab08:
    addu	$a0,$a2,$zero
.L8007ab0c:
    slti	$v0,$a0,0x10
.L8007ab10:
    beq	$v0,$zero,.L8007a924
.L8007ab14:
    lui	$v0,0x800e
.L8007ab18:
    addiu	$v0,$v0,0x3b78
.L8007ab1c:
    sll	$v1,$a0,0x1
.L8007ab20:
    addu	$v1,$v1,$v0
.L8007ab24:
    sh	$zero,0x30($v1)
.L8007ab28:
    addiu	$a0,$a0,0x1
.L8007ab2c:
    slti	$v0,$a0,0x10
.L8007ab30:
    bne	$v0,$zero,.L8007ab24
.L8007ab34:
    addiu	$v1,$v1,0x2
.L8007ab38:
    j	0x8007a928
.L8007ab3c:
    lui	$v0,0x800e
.L8007ab40:
    jal	0x8007bea4
.L8007ab44:
    nop
.L8007ab48:
    bne	$v0,$zero,.L8007ab68
.L8007ab4c:
    lui	$v0,0x800f
.L8007ab50:
    lui	$s0,0x800e
.L8007ab54:
    lw	$a0,0x290c($v0)
.L8007ab58:
    jal	0x8007f14c
.L8007ab5c:
    addiu	$s0,$s0,-0xeb4
.L8007ab60:
    j	0x8007ab78
.L8007ab64:
    sll	$v0,$v0,0x2
.L8007ab68:
    lui	$s0,0x800d
.L8007ab6c:
    jal	0x8007bec4
.L8007ab70:
    addiu	$s0,$s0,0x67d4
.L8007ab74:
    sll	$v0,$v0,0x2
.L8007ab78:
    addu	$v0,$v0,$s0
.L8007ab7c:
    lw	$a0,0x0($v0)
.L8007ab80:
    lui	$a1,0x8017
.L8007ab84:
    jal	0x80020d24
.L8007ab88:
    ori	$a1,$a1,0x4000
.L8007ab8c:
    bne	$v0,$zero,.L8007b230
.L8007ab90:
    lui	$a0,0x800e
.L8007ab94:
    lui	$v0,0x800e
.L8007ab98:
    addiu	$a1,$v0,0x3b78
.L8007ab9c:
    lw	$v1,0xc($a1)
.L8007aba0:
    nop
.L8007aba4:
    sll	$v0,$v1,0x1
.L8007aba8:
    addu	$v0,$v0,$a1
.L8007abac:
    addu	$a2,$v1,$zero
.L8007abb0:
    lh	$v1,0x10($v0)
.L8007abb4:
    addiu	$a0,$a2,0x1
.L8007abb8:
    addiu	$v1,$v1,0x1
.L8007abbc:
    sh	$v1,0x10($v0)
.L8007abc0:
    slti	$v0,$a0,0x10
.L8007abc4:
    beq	$v0,$zero,.L8007abe4
.L8007abc8:
    sll	$v0,$a0,0x1
.L8007abcc:
    addu	$a1,$v0,$a1
.L8007abd0:
    sh	$zero,0x10($a1)
.L8007abd4:
    addiu	$a0,$a0,0x1
.L8007abd8:
    slti	$v0,$a0,0x10
.L8007abdc:
    bne	$v0,$zero,.L8007abd0
.L8007abe0:
    addiu	$a1,$a1,0x2
.L8007abe4:
    bne	$v1,$zero,.L8007a928
.L8007abe8:
    lui	$v0,0x800e
.L8007abec:
    addu	$a0,$a2,$zero
.L8007abf0:
    slti	$v0,$a0,0x10
.L8007abf4:
    beq	$v0,$zero,.L8007a924
.L8007abf8:
    lui	$v0,0x800e
.L8007abfc:
    addiu	$v0,$v0,0x3b78
.L8007ac00:
    sll	$v1,$a0,0x1
.L8007ac04:
    addu	$v1,$v1,$v0
.L8007ac08:
    sh	$zero,0x30($v1)
.L8007ac0c:
    addiu	$a0,$a0,0x1
.L8007ac10:
    slti	$v0,$a0,0x10
.L8007ac14:
    bne	$v0,$zero,.L8007ac08
.L8007ac18:
    addiu	$v1,$v1,0x2
.L8007ac1c:
    j	0x8007a928
.L8007ac20:
    lui	$v0,0x800e
.L8007ac24:
    lui	$v0,0x800b
.L8007ac28:
    lw	$v0,-0x3774($v0)
.L8007ac2c:
    nop
.L8007ac30:
    bne	$v0,$zero,.L8007b230
.L8007ac34:
    lui	$a0,0x800e
.L8007ac38:
    lui	$v0,0x800e
.L8007ac3c:
    addiu	$a1,$v0,0x3b78
.L8007ac40:
    lw	$v1,0xc($a1)
.L8007ac44:
    nop
.L8007ac48:
    sll	$v0,$v1,0x1
.L8007ac4c:
    addu	$v0,$v0,$a1
.L8007ac50:
    addu	$a2,$v1,$zero
.L8007ac54:
    lh	$v1,0x10($v0)
.L8007ac58:
    addiu	$a0,$a2,0x1
.L8007ac5c:
    addiu	$v1,$v1,0x1
.L8007ac60:
    sh	$v1,0x10($v0)
.L8007ac64:
    slti	$v0,$a0,0x10
.L8007ac68:
    beq	$v0,$zero,.L8007ac88
.L8007ac6c:
    sll	$v0,$a0,0x1
.L8007ac70:
    addu	$a1,$v0,$a1
.L8007ac74:
    sh	$zero,0x10($a1)
.L8007ac78:
    addiu	$a0,$a0,0x1
.L8007ac7c:
    slti	$v0,$a0,0x10
.L8007ac80:
    bne	$v0,$zero,.L8007ac74
.L8007ac84:
    addiu	$a1,$a1,0x2
.L8007ac88:
    bne	$v1,$zero,.L8007a928
.L8007ac8c:
    lui	$v0,0x800e
.L8007ac90:
    addu	$a0,$a2,$zero
.L8007ac94:
    slti	$v0,$a0,0x10
.L8007ac98:
    beq	$v0,$zero,.L8007a924
.L8007ac9c:
    lui	$v0,0x800e
.L8007aca0:
    addiu	$v0,$v0,0x3b78
.L8007aca4:
    sll	$v1,$a0,0x1
.L8007aca8:
    addu	$v1,$v1,$v0
.L8007acac:
    sh	$zero,0x30($v1)
.L8007acb0:
    addiu	$a0,$a0,0x1
.L8007acb4:
    slti	$v0,$a0,0x10
.L8007acb8:
    bne	$v0,$zero,.L8007acac
.L8007acbc:
    addiu	$v1,$v1,0x2
.L8007acc0:
    j	0x8007a928
.L8007acc4:
    lui	$v0,0x800e
.L8007acc8:
    lui	$v0,0x800e
.L8007accc:
    lbu	$v0,0x3bcb($v0)
.L8007acd0:
    nop
.L8007acd4:
    beq	$v0,$zero,.L8007b230
.L8007acd8:
    lui	$a0,0x800e
.L8007acdc:
    jal	0x80096670
.L8007ace0:
    nop
.L8007ace4:
    beq	$v0,$zero,.L8007b22c
.L8007ace8:
    lui	$v1,0x8017
.L8007acec:
    ori	$v1,$v1,0x4000
.L8007acf0:
    lui	$a0,0x8017
.L8007acf4:
    lw	$a0,0x4004($a0)
.L8007acf8:
    lui	$v0,0x8017
.L8007acfc:
    lw	$v0,0x4008($v0)
.L8007ad00:
    addu	$a0,$a0,$v1
.L8007ad04:
    jal	0x8006c9c8
.L8007ad08:
    addu	$s2,$v0,$v1
.L8007ad0c:
    lui	$v0,0x800f
.L8007ad10:
    lui	$s0,0x800c
.L8007ad14:
    lw	$a0,0x290c($v0)
.L8007ad18:
    jal	0x800999e4
.L8007ad1c:
    addiu	$s0,$s0,-0x2728
.L8007ad20:
    sll	$v0,$v0,0x2
.L8007ad24:
    addu	$v0,$v0,$s0
.L8007ad28:
    lui	$s1,0x800b
.L8007ad2c:
    lw	$v1,-0x3714($s1)
.L8007ad30:
    lw	$a0,0x0($v0)
.L8007ad34:
    lw	$a1,0x90($v1)
.L8007ad38:
    jal	0x8002a8b8
.L8007ad3c:
    addu	$a0,$a0,$s0
.L8007ad40:
    jal	0x8009664c
.L8007ad44:
    nop
.L8007ad48:
    lw	$v1,-0x3714($s1)
.L8007ad4c:
    nop
.L8007ad50:
    lw	$a0,0x90($v1)
.L8007ad54:
    jal	0x80082dd0
.L8007ad58:
    addu	$a1,$v0,$zero
.L8007ad5c:
    jal	0x8007bea4
.L8007ad60:
    nop
.L8007ad64:
    bne	$v0,$zero,.L8007ad80
.L8007ad68:
    nop
.L8007ad6c:
    lw	$v0,-0x3714($s1)
.L8007ad70:
    nop
.L8007ad74:
    lw	$a1,0x90($v0)
.L8007ad78:
    j	0x8007ad90
.L8007ad7c:
    addu	$a0,$s2,$zero
.L8007ad80:
    lw	$v0,-0x3714($s1)
.L8007ad84:
    lui	$a0,0x8017
.L8007ad88:
    lw	$a1,0x90($v0)
.L8007ad8c:
    ori	$a0,$a0,0x4000
.L8007ad90:
    jal	0x8002a8b8
.L8007ad94:
    addiu	$s0,$zero,0x1e0
.L8007ad98:
    addiu	$a1,$zero,-0x7ec0
.L8007ad9c:
    addu	$a2,$zero,$zero
.L8007ada0:
    lw	$v1,-0x3714($s1)
.L8007ada4:
    addiu	$v0,$zero,0xf0
.L8007ada8:
    sw	$v0,0x10($sp)
.L8007adac:
    lw	$a0,0x90($v1)
.L8007adb0:
    jal	0x800223a8
.L8007adb4:
    addiu	$a3,$zero,0x140
.L8007adb8:
    lui	$v0,0x800b
.L8007adbc:
    lw	$v0,-0x3714($v0)
.L8007adc0:
    lui	$a0,0x800b
.L8007adc4:
    lw	$a1,0x90($v0)
.L8007adc8:
    jal	0x8002a9dc
.L8007adcc:
    addiu	$a0,$a0,-0x1b70
.L8007add0:
    addiu	$a0,$zero,0x89
.L8007add4:
    addiu	$a1,$zero,0x320
.L8007add8:
    addiu	$a2,$zero,0x100
.L8007addc:
    addu	$a3,$a1,$zero
.L8007ade0:
    jal	0x8007bc1c
.L8007ade4:
    sw	$s0,0x10($sp)
.L8007ade8:
    addiu	$a0,$zero,0x87
.L8007adec:
    addiu	$a1,$zero,0x328
.L8007adf0:
    addiu	$a2,$zero,0x100
.L8007adf4:
    addiu	$a3,$zero,0x330
.L8007adf8:
    jal	0x8007bc1c
.L8007adfc:
    sw	$s0,0x10($sp)
.L8007ae00:
    lui	$v0,0x800e
.L8007ae04:
    addiu	$a1,$v0,0x3b78
.L8007ae08:
    lw	$v1,0xc($a1)
.L8007ae0c:
    nop
.L8007ae10:
    sll	$v0,$v1,0x1
.L8007ae14:
    addu	$v0,$v0,$a1
.L8007ae18:
    addu	$a2,$v1,$zero
.L8007ae1c:
    lh	$v1,0x10($v0)
.L8007ae20:
    addiu	$a0,$a2,0x1
.L8007ae24:
    addiu	$v1,$v1,0x1
.L8007ae28:
    sh	$v1,0x10($v0)
.L8007ae2c:
    slti	$v0,$a0,0x10
.L8007ae30:
    beq	$v0,$zero,.L8007ae50
.L8007ae34:
    sll	$v0,$a0,0x1
.L8007ae38:
    addu	$a1,$v0,$a1
.L8007ae3c:
    sh	$zero,0x10($a1)
.L8007ae40:
    addiu	$a0,$a0,0x1
.L8007ae44:
    slti	$v0,$a0,0x10
.L8007ae48:
    bne	$v0,$zero,.L8007ae3c
.L8007ae4c:
    addiu	$a1,$a1,0x2
.L8007ae50:
    bne	$v1,$zero,.L8007b230
.L8007ae54:
    lui	$a0,0x800e
.L8007ae58:
    addu	$a0,$a2,$zero
.L8007ae5c:
    slti	$v0,$a0,0x10
.L8007ae60:
    beq	$v0,$zero,.L8007b22c
.L8007ae64:
    lui	$v0,0x800e
.L8007ae68:
    addiu	$v0,$v0,0x3b78
.L8007ae6c:
    sll	$v1,$a0,0x1
.L8007ae70:
    addu	$v1,$v1,$v0
.L8007ae74:
    sh	$zero,0x30($v1)
.L8007ae78:
    addiu	$a0,$a0,0x1
.L8007ae7c:
    slti	$v0,$a0,0x10
.L8007ae80:
    bne	$v0,$zero,.L8007ae74
.L8007ae84:
    addiu	$v1,$v1,0x2
.L8007ae88:
    j	0x8007b230
.L8007ae8c:
    lui	$a0,0x800e
.L8007ae90:
    lui	$v0,0x800f
.L8007ae94:
    lh	$v1,0x2908($v0)
.L8007ae98:
    addiu	$v0,$zero,0x23
.L8007ae9c:
    beq	$v1,$v0,.L8007aec4
.L8007aea0:
    lui	$v0,0x800e
.L8007aea4:
    jal	0x8007be94
.L8007aea8:
    nop
.L8007aeac:
    bne	$v0,$zero,.L8007aec4
.L8007aeb0:
    lui	$v0,0x800e
.L8007aeb4:
    jal	0x8007bea4
.L8007aeb8:
    nop
.L8007aebc:
    beq	$v0,$zero,.L8007af0c
.L8007aec0:
    lui	$v0,0x800e
.L8007aec4:
    addiu	$a1,$v0,0x3b78
.L8007aec8:
    lw	$v0,0xc($a1)
.L8007aecc:
    addiu	$v1,$zero,0x9
.L8007aed0:
    addiu	$a0,$v0,0x1
.L8007aed4:
    sll	$v0,$v0,0x1
.L8007aed8:
    addu	$v0,$v0,$a1
.L8007aedc:
    sh	$v1,0x10($v0)
.L8007aee0:
    slti	$v0,$a0,0x10
.L8007aee4:
    beq	$v0,$zero,.L8007b22c
.L8007aee8:
    sll	$v0,$a0,0x1
.L8007aeec:
    addu	$v1,$v0,$a1
.L8007aef0:
    sh	$zero,0x10($v1)
.L8007aef4:
    addiu	$a0,$a0,0x1
.L8007aef8:
    slti	$v0,$a0,0x10
.L8007aefc:
    bne	$v0,$zero,.L8007aef0
.L8007af00:
    addiu	$v1,$v1,0x2
.L8007af04:
    j	0x8007b230
.L8007af08:
    lui	$a0,0x800e
.L8007af0c:
    addiu	$a1,$v0,0x3b78
.L8007af10:
    lw	$v1,0xc($a1)
.L8007af14:
    nop
.L8007af18:
    sll	$v0,$v1,0x1
.L8007af1c:
    addu	$v0,$v0,$a1
.L8007af20:
    addu	$a2,$v1,$zero
.L8007af24:
    lh	$v1,0x10($v0)
.L8007af28:
    addiu	$a0,$a2,0x1
.L8007af2c:
    addiu	$v1,$v1,0x1
.L8007af30:
    sh	$v1,0x10($v0)
.L8007af34:
    slti	$v0,$a0,0x10
.L8007af38:
    beq	$v0,$zero,.L8007af58
.L8007af3c:
    sll	$v0,$a0,0x1
.L8007af40:
    addu	$a1,$v0,$a1
.L8007af44:
    sh	$zero,0x10($a1)
.L8007af48:
    addiu	$a0,$a0,0x1
.L8007af4c:
    slti	$v0,$a0,0x10
.L8007af50:
    bne	$v0,$zero,.L8007af44
.L8007af54:
    addiu	$a1,$a1,0x2
.L8007af58:
    bne	$v1,$zero,.L8007b230
.L8007af5c:
    lui	$a0,0x800e
.L8007af60:
    addu	$a0,$a2,$zero
.L8007af64:
    slti	$v0,$a0,0x10
.L8007af68:
    beq	$v0,$zero,.L8007b22c
.L8007af6c:
    lui	$v0,0x800e
.L8007af70:
    addiu	$v0,$v0,0x3b78
.L8007af74:
    sll	$v1,$a0,0x1
.L8007af78:
    addu	$v1,$v1,$v0
.L8007af7c:
    sh	$zero,0x30($v1)
.L8007af80:
    addiu	$a0,$a0,0x1
.L8007af84:
    slti	$v0,$a0,0x10
.L8007af88:
    bne	$v0,$zero,.L8007af7c
.L8007af8c:
    addiu	$v1,$v1,0x2
.L8007af90:
    j	0x8007b230
.L8007af94:
    lui	$a0,0x800e
.L8007af98:
    lui	$a1,0x8017
.L8007af9c:
    lui	$v1,0x800e
.L8007afa0:
    lui	$v0,0x800f
.L8007afa4:
    lh	$v0,0x290a($v0)
.L8007afa8:
    addiu	$v1,$v1,-0xec8
.L8007afac:
    sll	$v0,$v0,0x2
.L8007afb0:
    addu	$v0,$v0,$v1
.L8007afb4:
    lw	$a0,0x0($v0)
.L8007afb8:
    jal	0x80020d24
.L8007afbc:
    ori	$a1,$a1,0x4000
.L8007afc0:
    bne	$v0,$zero,.L8007b230
.L8007afc4:
    lui	$a0,0x800e
.L8007afc8:
    lui	$v0,0x800e
.L8007afcc:
    addiu	$a1,$v0,0x3b78
.L8007afd0:
    lw	$v1,0xc($a1)
.L8007afd4:
    nop
.L8007afd8:
    sll	$v0,$v1,0x1
.L8007afdc:
    addu	$v0,$v0,$a1
.L8007afe0:
    addu	$a2,$v1,$zero
.L8007afe4:
    lh	$v1,0x10($v0)
.L8007afe8:
    addiu	$a0,$a2,0x1
.L8007afec:
    addiu	$v1,$v1,0x1
.L8007aff0:
    sh	$v1,0x10($v0)
.L8007aff4:
    slti	$v0,$a0,0x10
.L8007aff8:
    beq	$v0,$zero,.L8007b018
.L8007affc:
    sll	$v0,$a0,0x1
.L8007b000:
    addu	$a1,$v0,$a1
.L8007b004:
    sh	$zero,0x10($a1)
.L8007b008:
    addiu	$a0,$a0,0x1
.L8007b00c:
    slti	$v0,$a0,0x10
.L8007b010:
    bne	$v0,$zero,.L8007b004
.L8007b014:
    addiu	$a1,$a1,0x2
.L8007b018:
    bne	$v1,$zero,.L8007a928
.L8007b01c:
    lui	$v0,0x800e
.L8007b020:
    addu	$a0,$a2,$zero
.L8007b024:
    slti	$v0,$a0,0x10
.L8007b028:
    beq	$v0,$zero,.L8007a924
.L8007b02c:
    lui	$v0,0x800e
.L8007b030:
    addiu	$v0,$v0,0x3b78
.L8007b034:
    sll	$v1,$a0,0x1
.L8007b038:
    addu	$v1,$v1,$v0
.L8007b03c:
    sh	$zero,0x30($v1)
.L8007b040:
    addiu	$a0,$a0,0x1
.L8007b044:
    slti	$v0,$a0,0x10
.L8007b048:
    bne	$v0,$zero,.L8007b03c
.L8007b04c:
    addiu	$v1,$v1,0x2
.L8007b050:
    j	0x8007a928
.L8007b054:
    lui	$v0,0x800e
.L8007b058:
    lui	$v0,0x800b
.L8007b05c:
    lw	$v0,-0x3774($v0)
.L8007b060:
    nop
.L8007b064:
    bne	$v0,$zero,.L8007b230
.L8007b068:
    lui	$a0,0x800e
.L8007b06c:
    lui	$v0,0x800e
.L8007b070:
    addiu	$a1,$v0,0x3b78
.L8007b074:
    lw	$v1,0xc($a1)
.L8007b078:
    nop
.L8007b07c:
    sll	$v0,$v1,0x1
.L8007b080:
    addu	$v0,$v0,$a1
.L8007b084:
    addu	$a2,$v1,$zero
.L8007b088:
    lh	$v1,0x10($v0)
.L8007b08c:
    addiu	$a0,$a2,0x1
.L8007b090:
    addiu	$v1,$v1,0x1
.L8007b094:
    sh	$v1,0x10($v0)
.L8007b098:
    slti	$v0,$a0,0x10
.L8007b09c:
    beq	$v0,$zero,.L8007b0bc
.L8007b0a0:
    sll	$v0,$a0,0x1
.L8007b0a4:
    addu	$a1,$v0,$a1
.L8007b0a8:
    sh	$zero,0x10($a1)
.L8007b0ac:
    addiu	$a0,$a0,0x1
.L8007b0b0:
    slti	$v0,$a0,0x10
.L8007b0b4:
    bne	$v0,$zero,.L8007b0a8
.L8007b0b8:
    addiu	$a1,$a1,0x2
.L8007b0bc:
    bne	$v1,$zero,.L8007a928
.L8007b0c0:
    lui	$v0,0x800e
.L8007b0c4:
    addu	$a0,$a2,$zero
.L8007b0c8:
    slti	$v0,$a0,0x10
.L8007b0cc:
    beq	$v0,$zero,.L8007a924
.L8007b0d0:
    lui	$v0,0x800e
.L8007b0d4:
    addiu	$v0,$v0,0x3b78
.L8007b0d8:
    sll	$v1,$a0,0x1
.L8007b0dc:
    addu	$v1,$v1,$v0
.L8007b0e0:
    sh	$zero,0x30($v1)
.L8007b0e4:
    addiu	$a0,$a0,0x1
.L8007b0e8:
    slti	$v0,$a0,0x10
.L8007b0ec:
    bne	$v0,$zero,.L8007b0e0
.L8007b0f0:
    addiu	$v1,$v1,0x2
.L8007b0f4:
    j	0x8007a928
.L8007b0f8:
    lui	$v0,0x800e
.L8007b0fc:
    lui	$v0,0x800b
.L8007b100:
    lw	$v0,-0x3714($v0)
.L8007b104:
    lui	$a0,0x8017
.L8007b108:
    lw	$a1,0x90($v0)
.L8007b10c:
    jal	0x8002a9dc
.L8007b110:
    ori	$a0,$a0,0x4000
.L8007b114:
    lui	$v0,0x800e
.L8007b118:
    addiu	$a1,$v0,0x3b78
.L8007b11c:
    lw	$v1,0xc($a1)
.L8007b120:
    nop
.L8007b124:
    sll	$v0,$v1,0x1
.L8007b128:
    addu	$v0,$v0,$a1
.L8007b12c:
    addu	$a2,$v1,$zero
.L8007b130:
    lh	$v1,0x10($v0)
.L8007b134:
    addiu	$a0,$a2,0x1
.L8007b138:
    addiu	$v1,$v1,0x1
.L8007b13c:
    sh	$v1,0x10($v0)
.L8007b140:
    slti	$v0,$a0,0x10
.L8007b144:
    beq	$v0,$zero,.L8007b164
.L8007b148:
    sll	$v0,$a0,0x1
.L8007b14c:
    addu	$a1,$v0,$a1
.L8007b150:
    sh	$zero,0x10($a1)
.L8007b154:
    addiu	$a0,$a0,0x1
.L8007b158:
    slti	$v0,$a0,0x10
.L8007b15c:
    bne	$v0,$zero,.L8007b150
.L8007b160:
    addiu	$a1,$a1,0x2
.L8007b164:
    bne	$v1,$zero,.L8007b198
.L8007b168:
    addu	$a0,$a2,$zero
.L8007b16c:
    slti	$v0,$a0,0x10
.L8007b170:
    beq	$v0,$zero,.L8007b198
.L8007b174:
    lui	$v0,0x800e
.L8007b178:
    addiu	$v0,$v0,0x3b78
.L8007b17c:
    sll	$v1,$a0,0x1
.L8007b180:
    addu	$v1,$v1,$v0
.L8007b184:
    sh	$zero,0x30($v1)
.L8007b188:
    addiu	$a0,$a0,0x1
.L8007b18c:
    slti	$v0,$a0,0x10
.L8007b190:
    bne	$v0,$zero,.L8007b184
.L8007b194:
    addiu	$v1,$v1,0x2
.L8007b198:
    jal	0x8006216c
.L8007b19c:
    nop
.L8007b1a0:
    lui	$v0,0x800e
.L8007b1a4:
    addiu	$a1,$v0,0x3b78
.L8007b1a8:
    lw	$v1,0xc($a1)
.L8007b1ac:
    nop
.L8007b1b0:
    sll	$v0,$v1,0x1
.L8007b1b4:
    addu	$v0,$v0,$a1
.L8007b1b8:
    addu	$a2,$v1,$zero
.L8007b1bc:
    lh	$v1,0x10($v0)
.L8007b1c0:
    addiu	$a0,$a2,0x1
.L8007b1c4:
    addiu	$v1,$v1,0x1
.L8007b1c8:
    sh	$v1,0x10($v0)
.L8007b1cc:
    slti	$v0,$a0,0x10
.L8007b1d0:
    beq	$v0,$zero,.L8007b1f0
.L8007b1d4:
    sll	$v0,$a0,0x1
.L8007b1d8:
    addu	$a1,$v0,$a1
.L8007b1dc:
    sh	$zero,0x10($a1)
.L8007b1e0:
    addiu	$a0,$a0,0x1
.L8007b1e4:
    slti	$v0,$a0,0x10
.L8007b1e8:
    bne	$v0,$zero,.L8007b1dc
.L8007b1ec:
    addiu	$a1,$a1,0x2
.L8007b1f0:
    bne	$v1,$zero,.L8007b22c
.L8007b1f4:
    addiu	$s3,$zero,0x1
.L8007b1f8:
    addu	$a0,$a2,$zero
.L8007b1fc:
    slti	$v0,$a0,0x10
.L8007b200:
    beq	$v0,$zero,.L8007b22c
.L8007b204:
    lui	$v0,0x800e
.L8007b208:
    addiu	$v0,$v0,0x3b78
.L8007b20c:
    sll	$v1,$a0,0x1
.L8007b210:
    addu	$v1,$v1,$v0
.L8007b214:
    sh	$zero,0x30($v1)
.L8007b218:
    addiu	$a0,$a0,0x1
.L8007b21c:
    slti	$v0,$a0,0x10
.L8007b220:
    bne	$v0,$zero,.L8007b214
.L8007b224:
    addiu	$v1,$v1,0x2
.L8007b228:
    addiu	$s3,$zero,0x1
.L8007b22c:
    lui	$a0,0x800e
.L8007b230:
    addiu	$a0,$a0,0x3b78
.L8007b234:
    lw	$v1,0xc($a0)
.L8007b238:
    addu	$v0,$s3,$zero
.L8007b23c:
    addiu	$v1,$v1,-0x1
.L8007b240:
    sw	$v1,0xc($a0)
.L8007b244:
    lw	$ra,0x28($sp)
.L8007b248:
    lw	$s3,0x24($sp)
.L8007b24c:
    lw	$s2,0x20($sp)
.L8007b250:
    lw	$s1,0x1c($sp)
.L8007b254:
    lw	$s0,0x18($sp)
.L8007b258:
    jr	$ra
.L8007b25c:
    addiu	$sp,$sp,0x30
.end FUN_8007a8f4
.size FUN_8007a8f4, . - FUN_8007a8f4
