.set noreorder
.set noat
.set nomacro

.section .text.FUN_800207bc,"ax",@progbits
.globl FUN_800207bc
.type FUN_800207bc, @function
.ent FUN_800207bc
FUN_800207bc:
.L800207bc:
    addiu	$sp,$sp,-48
.L800207c0:
    addiu	$v0,$zero,5
.L800207c4:
    sw	$ra,40($sp)
.L800207c8:
    sw	$s3,36($sp)
.L800207cc:
    sw	$s2,32($sp)
.L800207d0:
    sw	$s1,28($sp)
.L800207d4:
    bne	$a0,$v0,.L80020890
.L800207d8:
    sw	$s0,24($sp)
.L800207dc:
    lui	$a0,0x800b
.L800207e0:
    lw	$v1,-14200($a0)
.L800207e4:
    addiu	$v0,$zero,4
.L800207e8:
    bne	$v1,$v0,.L80020818
.L800207ec:
    lui	$v1,0x800b
.L800207f0:
    addiu	$a0,$zero,9
.L800207f4:
    jal	0x8003fa20
.L800207f8:
    addu	$a1,$zero,$zero
.L800207fc:
    lui	$v1,0x800b
.L80020800:
    lw	$v0,-14188($v1)
.L80020804:
    sll	$zero,$zero,0x0
.L80020808:
    addiu	$v0,$v0,1
.L8002080c:
    sw	$v0,-14188($v1)
.L80020810:
    j	.L80020a28
.L80020814:
    sll	$zero,$zero,0x0
.L80020818:
    lui	$s1,0x800e
.L8002081c:
    lui	$s3,0x800b
.L80020820:
    lw	$v0,-14188($v1)
.L80020824:
    lw	$s2,-14184($s3)
.L80020828:
    addiu	$v0,$v0,1
.L8002082c:
    sw	$v0,-14188($v1)
.L80020830:
    addiu	$v1,$zero,1
.L80020834:
    lui	$v0,0x800b
.L80020838:
    sw	$zero,-14200($a0)
.L8002083c:
    sw	$v1,-14200($a0)
.L80020840:
    sw	$v1,-14196($v0)
.L80020844:
    lw	$v0,10560($s1)
.L80020848:
    lui	$v1,0x800b
.L8002084c:
    addiu	$v0,$v0,2047
.L80020850:
    srl	$v0,$v0,0xb
.L80020854:
    sw	$v0,-14192($v1)
.L80020858:
    lui	$v0,0x800e
.L8002085c:
    sw	$s2,10572($v0)
.L80020860:
    lw	$v0,-14192($v1)
.L80020864:
    sll	$zero,$zero,0x0
.L80020868:
    bne	$v0,$zero,.L800209ec
.L8002086c:
    addiu	$s0,$s1,10560
.L80020870:
    lui	$v0,0x800b
.L80020874:
    lw	$v1,-14100($v0)
.L80020878:
    sll	$zero,$zero,0x0
.L8002087c:
    lbu	$v0,119($v1)
.L80020880:
    sll	$zero,$zero,0x0
.L80020884:
    ori	$v0,$v0,0x1
.L80020888:
    j	.L80020a28
.L8002088c:
    sb	$v0,119($v1)
.L80020890:
    addiu	$v0,$zero,2
.L80020894:
    bne	$a0,$v0,.L80020a28
.L80020898:
    lui	$s0,0x800b
.L8002089c:
    lw	$v1,-14200($s0)
.L800208a0:
    sll	$zero,$zero,0x0
.L800208a4:
    beq	$v1,$a0,.L800208f4
.L800208a8:
    slti	$v0,$v1,3
.L800208ac:
    beq	$v0,$zero,.L800208c4
.L800208b0:
    addiu	$v0,$zero,1
.L800208b4:
    beq	$v1,$v0,.L800208e0
.L800208b8:
    addiu	$a0,$zero,14
.L800208bc:
    j	.L80020a28
.L800208c0:
    sll	$zero,$zero,0x0
.L800208c4:
    addiu	$v0,$zero,3
.L800208c8:
    beq	$v1,$v0,.L80020928
.L800208cc:
    addiu	$v0,$zero,4
.L800208d0:
    beq	$v1,$v0,.L80020950
.L800208d4:
    lui	$a1,0x800b
.L800208d8:
    j	.L80020a28
.L800208dc:
    sll	$zero,$zero,0x0
.L800208e0:
    lui	$v1,0x800e
.L800208e4:
    addiu	$a1,$v1,10596
.L800208e8:
    addiu	$v0,$zero,160
.L800208ec:
    j	.L80020908
.L800208f0:
    sb	$v0,10596($v1)
.L800208f4:
    lui	$a0,0x8002
.L800208f8:
    jal	0x8003f8d0
.L800208fc:
    addiu	$a0,$a0,2628
.L80020900:
    addiu	$a0,$zero,6
.L80020904:
    addu	$a1,$zero,$zero
.L80020908:
    jal	0x8003fa20
.L8002090c:
    sll	$zero,$zero,0x0
.L80020910:
    lw	$v0,-14200($s0)
.L80020914:
    sll	$zero,$zero,0x0
.L80020918:
    addiu	$v0,$v0,1
.L8002091c:
    sw	$v0,-14200($s0)
.L80020920:
    j	.L80020a28
.L80020924:
    sll	$zero,$zero,0x0
.L80020928:
    lw	$v0,-14200($s0)
.L8002092c:
    sll	$zero,$zero,0x0
.L80020930:
    addiu	$v0,$v0,1
.L80020934:
    sw	$v0,-14200($s0)
.L80020938:
    lui	$v0,0x800e
.L8002093c:
    sw	$zero,10592($v0)
.L80020940:
    lui	$v0,0x800e
.L80020944:
    sw	$zero,10588($v0)
.L80020948:
    j	.L80020a28
.L8002094c:
    sll	$zero,$zero,0x0
.L80020950:
    lw	$v0,-14192($a1)
.L80020954:
    sll	$zero,$zero,0x0
.L80020958:
    bne	$v0,$zero,.L80020988
.L8002095c:
    addiu	$a0,$zero,1
.L80020960:
    lw	$v0,-14200($s0)
.L80020964:
    addu	$a0,$zero,$zero
.L80020968:
    addiu	$v0,$v0,1
.L8002096c:
    sw	$v0,-14200($s0)
.L80020970:
    jal	0x8003f8bc
.L80020974:
    sll	$zero,$zero,0x0
.L80020978:
    lui	$v0,0x800b
.L8002097c:
    sw	$zero,-14196($v0)
.L80020980:
    j	.L80020a28
.L80020984:
    sll	$zero,$zero,0x0
.L80020988:
    lui	$s1,0x800e
.L8002098c:
    lui	$s3,0x800b
.L80020990:
    lw	$v0,10560($s1)
.L80020994:
    lw	$s2,-14184($s3)
.L80020998:
    lui	$v1,0x800b
.L8002099c:
    sw	$zero,-14200($s0)
.L800209a0:
    sw	$a0,-14200($s0)
.L800209a4:
    sw	$a0,-14196($v1)
.L800209a8:
    addiu	$v0,$v0,2047
.L800209ac:
    srl	$v0,$v0,0xb
.L800209b0:
    sw	$v0,-14192($a1)
.L800209b4:
    lui	$v0,0x800e
.L800209b8:
    sw	$s2,10572($v0)
.L800209bc:
    lw	$v0,-14192($a1)
.L800209c0:
    sll	$zero,$zero,0x0
.L800209c4:
    bne	$v0,$zero,.L800209ec
.L800209c8:
    addiu	$s0,$s1,10560
.L800209cc:
    lui	$v0,0x800b
.L800209d0:
    lw	$v1,-14100($v0)
.L800209d4:
    sll	$zero,$zero,0x0
.L800209d8:
    lbu	$v0,119($v1)
.L800209dc:
    sll	$zero,$zero,0x0
.L800209e0:
    or	$v0,$v0,$a0
.L800209e4:
    j	.L80020a28
.L800209e8:
    sb	$v0,119($v1)
.L800209ec:
    lui	$a0,0x8002
.L800209f0:
    jal	0x8003f8bc
.L800209f4:
    addiu	$a0,$a0,1980
.L800209f8:
    lw	$a0,4($s0)
.L800209fc:
    jal	0x8003fd44
.L80020a00:
    addiu	$a1,$sp,16
.L80020a04:
    addiu	$a0,$zero,2
.L80020a08:
    addiu	$a1,$sp,16
.L80020a0c:
    lw	$v1,4($s0)
.L80020a10:
    lui	$v0,0x800e
.L80020a14:
    jal	0x8003fa20
.L80020a18:
    sw	$v1,10584($v0)
.L80020a1c:
    lw	$v0,4($s0)
.L80020a20:
    lw	$v1,10560($s1)
.L80020a24:
    sw	$s2,-14184($s3)
.L80020a28:
    lw	$ra,40($sp)
.L80020a2c:
    lw	$s3,36($sp)
.L80020a30:
    lw	$s2,32($sp)
.L80020a34:
    lw	$s1,28($sp)
.L80020a38:
    lw	$s0,24($sp)
.L80020a3c:
    jr	$ra
.L80020a40:
    addiu	$sp,$sp,48
.end FUN_800207bc
.size FUN_800207bc, . - FUN_800207bc

.section .text.FUN_80020a44,"ax",@progbits
.globl FUN_80020a44
.type FUN_80020a44, @function
.ent FUN_80020a44
FUN_80020a44:
.L80020a44:
    lui	$v0,0x800e
.L80020a48:
    lw	$v1,10588($v0)
.L80020a4c:
    addiu	$sp,$sp,-48
.L80020a50:
    sw	$s1,36($sp)
.L80020a54:
    sw	$ra,40($sp)
.L80020a58:
    sw	$s0,32($sp)
.L80020a5c:
    addiu	$v1,$v1,1
.L80020a60:
    sw	$v1,10588($v0)
.L80020a64:
    addiu	$v0,$zero,1
.L80020a68:
    bne	$a0,$v0,.L80020cb0
.L80020a6c:
    addu	$s1,$zero,$zero
.L80020a70:
    addiu	$a0,$sp,16
.L80020a74:
    jal	0x8003fcc0
.L80020a78:
    addiu	$a1,$zero,3
.L80020a7c:
    bne	$v0,$zero,.L80020aa0
.L80020a80:
    lui	$v0,0x800b
.L80020a84:
    lw	$v1,-14100($v0)
.L80020a88:
    sll	$zero,$zero,0x0
.L80020a8c:
    lbu	$v0,119($v1)
.L80020a90:
    sll	$zero,$zero,0x0
.L80020a94:
    ori	$v0,$v0,0x10
.L80020a98:
    j	.L80020cbc
.L80020a9c:
    sb	$v0,119($v1)
.L80020aa0:
    jal	0x8003fe48
.L80020aa4:
    addiu	$a0,$sp,16
.L80020aa8:
    lui	$v1,0x800b
.L80020aac:
    lw	$a1,-14180($v1)
.L80020ab0:
    sll	$zero,$zero,0x0
.L80020ab4:
    bne	$a1,$zero,.L80020ad8
.L80020ab8:
    addu	$s0,$v0,$zero
.L80020abc:
    lui	$v0,0x800e
.L80020ac0:
    lw	$v0,10584($v0)
.L80020ac4:
    sll	$zero,$zero,0x0
.L80020ac8:
    beq	$v0,$s0,.L80020b28
.L80020acc:
    lui	$v0,0x800b
.L80020ad0:
    j	.L80020cc4
.L80020ad4:
    lui	$v1,0x800b
.L80020ad8:
    addiu	$v0,$a1,1
.L80020adc:
    beq	$s0,$v0,.L80020b28
.L80020ae0:
    lui	$v0,0x800e
.L80020ae4:
    lui	$a0,0x800e
.L80020ae8:
    lw	$v0,10584($v0)
.L80020aec:
    addiu	$v1,$a0,10560
.L80020af0:
    sw	$a1,4($v1)
.L80020af4:
    subu	$v0,$a1,$v0
.L80020af8:
    sll	$v0,$v0,0xb
.L80020afc:
    addu	$a1,$v0,$zero
.L80020b00:
    lw	$v0,10560($a0)
.L80020b04:
    lui	$v1,0x800b
.L80020b08:
    sw	$a1,-14176($v1)
.L80020b0c:
    subu	$v0,$v0,$a1
.L80020b10:
    sw	$v0,10560($a0)
.L80020b14:
    bgez	$a1,.L80020b20
.L80020b18:
    lui	$a0,0x800b
.L80020b1c:
    addiu	$a1,$a1,3
.L80020b20:
    j	.L80020c50
.L80020b24:
    sra	$v0,$a1,0x2
.L80020b28:
    lui	$a3,0x800b
.L80020b2c:
    lui	$v0,0x800e
.L80020b30:
    lui	$t0,0x800b
.L80020b34:
    lw	$a2,-14104($a3)
.L80020b38:
    lw	$a0,10572($v0)
.L80020b3c:
    lw	$v1,-14100($t0)
.L80020b40:
    sw	$a0,208($a2)
.L80020b44:
    lw	$a1,136($v1)
.L80020b48:
    sll	$zero,$zero,0x0
.L80020b4c:
    sltu	$v0,$a0,$a1
.L80020b50:
    bne	$v0,$zero,.L80020b6c
.L80020b54:
    lui	$v0,0x800e
.L80020b58:
    lw	$v0,124($v1)
.L80020b5c:
    sll	$zero,$zero,0x0
.L80020b60:
    sltu	$v0,$v0,$a0
.L80020b64:
    beq	$v0,$zero,.L80020bc4
.L80020b68:
    lui	$v0,0x800e
.L80020b6c:
    sw	$a1,10580($v0)
.L80020b70:
    lui	$v0,0x800e
.L80020b74:
    sw	$a0,10576($v0)
.L80020b78:
    lbu	$v0,119($v1)
.L80020b7c:
    lui	$a1,0x800e
.L80020b80:
    ori	$v0,$v0,0x80
.L80020b84:
    sb	$v0,119($v1)
.L80020b88:
    lw	$v1,-14104($a3)
.L80020b8c:
    addiu	$v0,$zero,1
.L80020b90:
    sb	$v0,207($v1)
.L80020b94:
    lui	$v0,0x800e
.L80020b98:
    lw	$v1,10568($v0)
.L80020b9c:
    lw	$a0,-14100($t0)
.L80020ba0:
    addiu	$v0,$a1,10560
.L80020ba4:
    sw	$v1,4($v0)
.L80020ba8:
    lw	$v0,140($a0)
.L80020bac:
    sll	$zero,$zero,0x0
.L80020bb0:
    sw	$v0,10560($a1)
.L80020bb4:
    lw	$v1,136($a0)
.L80020bb8:
    lui	$v0,0x800b
.L80020bbc:
    j	.L80020cbc
.L80020bc0:
    sw	$v1,-14184($v0)
.L80020bc4:
    lbu	$v0,6($a2)
.L80020bc8:
    sll	$zero,$zero,0x0
.L80020bcc:
    beq	$v0,$zero,.L80020bd8
.L80020bd0:
    addiu	$a1,$zero,512
.L80020bd4:
    addiu	$a1,$zero,585
.L80020bd8:
    jal	0x8003fcc0
.L80020bdc:
    sll	$zero,$zero,0x0
.L80020be0:
    bne	$v0,$zero,.L80020c64
.L80020be4:
    lui	$v1,0x800b
.L80020be8:
    lui	$v0,0x800b
.L80020bec:
    lw	$v1,-14100($v0)
.L80020bf0:
    sll	$zero,$zero,0x0
.L80020bf4:
    lbu	$v0,119($v1)
.L80020bf8:
    sll	$zero,$zero,0x0
.L80020bfc:
    ori	$v0,$v0,0x8
.L80020c00:
    sb	$v0,119($v1)
.L80020c04:
    lui	$v0,0x800b
.L80020c08:
    lui	$v1,0x800e
.L80020c0c:
    lw	$a1,-14180($v0)
.L80020c10:
    lw	$v0,10584($v1)
.L80020c14:
    lui	$a0,0x800e
.L80020c18:
    subu	$v0,$a1,$v0
.L80020c1c:
    sll	$v0,$v0,0xb
.L80020c20:
    addu	$a2,$v0,$zero
.L80020c24:
    lui	$v0,0x800b
.L80020c28:
    sw	$a2,-14176($v0)
.L80020c2c:
    lw	$v0,10560($a0)
.L80020c30:
    addiu	$v1,$a0,10560
.L80020c34:
    sw	$a1,4($v1)
.L80020c38:
    subu	$v0,$v0,$a2
.L80020c3c:
    sw	$v0,10560($a0)
.L80020c40:
    bgez	$a2,.L80020c4c
.L80020c44:
    lui	$a0,0x800b
.L80020c48:
    addiu	$a2,$a2,3
.L80020c4c:
    sra	$v0,$a2,0x2
.L80020c50:
    lw	$v1,-14184($a0)
.L80020c54:
    sll	$v0,$v0,0x2
.L80020c58:
    addu	$v1,$v1,$v0
.L80020c5c:
    j	.L80020cbc
.L80020c60:
    sw	$v1,-14184($a0)
.L80020c64:
    lui	$a1,0x800b
.L80020c68:
    lw	$v0,-14192($v1)
.L80020c6c:
    lui	$a0,0x800e
.L80020c70:
    sw	$s0,-14180($a1)
.L80020c74:
    addiu	$v0,$v0,-1
.L80020c78:
    sw	$v0,-14192($v1)
.L80020c7c:
    lw	$v0,10572($a0)
.L80020c80:
    lw	$v1,-14192($v1)
.L80020c84:
    addiu	$v0,$v0,2048
.L80020c88:
    bne	$v1,$zero,.L80020cb4
.L80020c8c:
    sw	$v0,10572($a0)
.L80020c90:
    sw	$zero,-14180($a1)
.L80020c94:
    jal	0x8003f8d0
.L80020c98:
    addu	$a0,$zero,$zero
.L80020c9c:
    addiu	$a0,$zero,9
.L80020ca0:
    jal	0x8003fa20
.L80020ca4:
    addu	$a1,$zero,$zero
.L80020ca8:
    j	.L80020cb4
.L80020cac:
    sll	$zero,$zero,0x0
.L80020cb0:
    addiu	$s1,$zero,1
.L80020cb4:
    beq	$s1,$zero,.L80020ce4
.L80020cb8:
    sll	$zero,$zero,0x0
.L80020cbc:
    lui	$v0,0x800b
.L80020cc0:
    lui	$v1,0x800b
.L80020cc4:
    sw	$zero,-14180($v0)
.L80020cc8:
    addiu	$v0,$zero,-1
.L80020ccc:
    sw	$v0,-14192($v1)
.L80020cd0:
    jal	0x8003f8d0
.L80020cd4:
    addu	$a0,$zero,$zero
.L80020cd8:
    addiu	$a0,$zero,9
.L80020cdc:
    jal	0x8003fa20
.L80020ce0:
    addu	$a1,$zero,$zero
.L80020ce4:
    lw	$ra,40($sp)
.L80020ce8:
    lw	$s1,36($sp)
.L80020cec:
    lw	$s0,32($sp)
.L80020cf0:
    jr	$ra
.L80020cf4:
    addiu	$sp,$sp,48
.end FUN_80020a44
.size FUN_80020a44, . - FUN_80020a44

.section .text.FUN_80020cf8,"ax",@progbits
.globl FUN_80020cf8
.type FUN_80020cf8, @function
.ent FUN_80020cf8
FUN_80020cf8:
.L80020cf8:
    addiu	$sp,$sp,-32
.L80020cfc:
    sw	$ra,24($sp)
.L80020d00:
    jal	0x8003fd44
.L80020d04:
    addiu	$a1,$sp,16
.L80020d08:
    addiu	$a0,$zero,21
.L80020d0c:
    jal	0x8003fa20
.L80020d10:
    addiu	$a1,$sp,16
.L80020d14:
    lw	$ra,24($sp)
.L80020d18:
    addu	$v0,$zero,$zero
.L80020d1c:
    jr	$ra
.L80020d20:
    addiu	$sp,$sp,32
.end FUN_80020cf8
.size FUN_80020cf8, . - FUN_80020cf8

.section .text.FUN_80020d24,"ax",@progbits
.globl FUN_80020d24
.type FUN_80020d24, @function
.ent FUN_80020d24
FUN_80020d24:
.L80020d24:
    lui     $v0,0x800b
.L80020d28:
    lw      $v0,-14196($v0)
.L80020d2c:
    addiu   $sp,$sp,-32
.L80020d30:
    sw      $s0,16($sp)
.L80020d34:
    addu    $s0,$a0,$zero
.L80020d38:
    sw      $s1,20($sp)
.L80020d3c:
    addu    $s1,$a1,$zero
.L80020d40:
    bne     $v0,$zero,.L80020dbc
.L80020d44:
    sw      $ra,24($sp)
.L80020d48:
    addu    $a0,$s0,$zero
.L80020d4c:
    jal     0x80020efc
.L80020d50:
    addu    $a1,$s1,$zero
.L80020d54:
    bne     $v0,$zero,.L80020dc0
.L80020d58:
    addiu   $v0,$zero,1
.L80020d5c:
    lui     $v0,0x800b
.L80020d60:
    lw      $v0,-14104($v0)
.L80020d64:
    nop
.L80020d68:
    sb      $zero,207($v0)
.L80020d6c:
    lui     $v0,0x800b
.L80020d70:
    lw      $a1,-14100($v0)
.L80020d74:
    lw      $v0,0($s0)
.L80020d78:
    lw      $a2,4($s0)
.L80020d7c:
    sw      $v0,140($a1)
.L80020d80:
    sw      $s1,136($a1)
.L80020d84:
    lw      $v1,0($s0)
.L80020d88:
    lui     $a0,0x800e
.L80020d8c:
    addu    $v1,$s1,$v1
.L80020d90:
    sw      $v1,124($a1)
.L80020d94:
    lw      $v1,0($s0)
.L80020d98:
    addu    $v0,$zero,$zero
.L80020d9c:
    sw      $a2,10568($a0)
.L80020da0:
    addiu   $v1,$v1,2047
.L80020da4:
    srl     $v1,$v1,0xb
.L80020da8:
    sll     $v1,$v1,0xb
.L80020dac:
    addu    $v1,$s1,$v1
.L80020db0:
    addiu   $v1,$v1,256
.L80020db4:
    j       0x80020dc0
.L80020db8:
    sw      $v1,144($a1)
.L80020dbc:
    addiu   $v0,$zero,1
.L80020dc0:
    lw      $ra,24($sp)
.L80020dc4:
    lw      $s1,20($sp)
.L80020dc8:
    lw      $s0,16($sp)
.L80020dcc:
    jr      $ra
.L80020dd0:
    addiu   $sp,$sp,32
.end FUN_80020d24
.size FUN_80020d24, . - FUN_80020d24

.section .text.FUN_80020e68,"ax",@progbits
.globl FUN_80020e68
.type FUN_80020e68, @function
.ent FUN_80020e68
FUN_80020e68:
.L80020e68:
    addiu   $sp,$sp,-24
.L80020e6c:
    addiu   $a0,$zero,1
.L80020e70:
    addu    $a1,$zero,$zero
.L80020e74:
    sw      $ra,20($sp)
.L80020e78:
    jal     CdSync
.L80020e7c:
    sw      $s0,16($sp)
.L80020e80:
    addiu   $v1,$zero,2
.L80020e84:
    bne     $v0,$v1,.L80020ec8
.L80020e88:
    addiu   $v0,$zero,1
.L80020e8c:
    addiu   $a0,$zero,1
.L80020e90:
    addu    $a1,$zero,$zero
.L80020e94:
    lui     $s0,0x800e
.L80020e98:
    jal     CdControl
.L80020e9c:
    addiu   $a2,$s0,10992
.L80020ea0:
    lbu     $v0,10992($s0)
.L80020ea4:
    nop
.L80020ea8:
    andi    $v0,$v0,0x40
.L80020eac:
    bne     $v0,$zero,.L80020ec8
.L80020eb0:
    addiu   $v0,$zero,1
.L80020eb4:
    lui     $v0,0x800b
.L80020eb8:
    lw      $v1,-14100($v0)
.L80020ebc:
    addu    $v0,$zero,$zero
.L80020ec0:
    j       0x80020ed8
.L80020ec4:
    sb      $zero,5($v1)
.L80020ec8:
    lui     $v1,0x800b
.L80020ecc:
    lw      $a0,-14100($v1)
.L80020ed0:
    addu    $v1,$v0,$zero
.L80020ed4:
    sb      $v1,5($a0)
.L80020ed8:
    lw      $ra,20($sp)
.L80020edc:
    lw      $s0,16($sp)
.L80020ee0:
    jr      $ra
.L80020ee4:
    addiu   $sp,$sp,24
.end FUN_80020e68
.size FUN_80020e68, . - FUN_80020e68

.section .text.FUN_80020efc,"ax",@progbits
.globl FUN_80020efc
.type FUN_80020efc, @function
.ent FUN_80020efc
FUN_80020efc:
.L80020efc:
    addiu   $sp,$sp,-40
.L80020f00:
    sw      $s0,24($sp)
.L80020f04:
    addu    $s0,$a0,$zero
.L80020f08:
    sw      $s1,28($sp)
.L80020f0c:
    addu    $s1,$a1,$zero
.L80020f10:
    lui     $v0,0x800b
.L80020f14:
    addiu   $v1,$zero,1
.L80020f18:
    sw      $v1,-14200($v0)
.L80020f1c:
    lui     $v0,0x800b
.L80020f20:
    sw      $ra,32($sp)
.L80020f24:
    sw      $v1,-14196($v0)
.L80020f28:
    lw      $v0,0($s0)
.L80020f2c:
    lui     $v1,0x800b
.L80020f30:
    addiu   $v0,$v0,2047
.L80020f34:
    srl     $v0,$v0,0xb
.L80020f38:
    sw      $v0,-14192($v1)
.L80020f3c:
    lw      $v1,-14192($v1)
.L80020f40:
    lui     $v0,0x800e
.L80020f44:
    beq     $v1,$zero,.L80020fa4
.L80020f48:
    sw      $s1,10572($v0)
.L80020f4c:
    lui     $a0,0x8002
.L80020f50:
    jal     CdSyncCallback
.L80020f54:
    addiu   $a0,$a0,1980
.L80020f58:
    lw      $a0,4($s0)
.L80020f5c:
    jal     CdIntToPos
.L80020f60:
    addiu   $a1,$sp,16
.L80020f64:
    addiu   $a0,$zero,2
.L80020f68:
    addiu   $a1,$sp,16
.L80020f6c:
    lw      $v1,4($s0)
.L80020f70:
    lui     $v0,0x800e
.L80020f74:
    jal     CdControlF
.L80020f78:
    sw      $v1,10584($v0)
.L80020f7c:
    addu    $v0,$zero,$zero
.L80020f80:
    lui     $a1,0x800e
.L80020f84:
    lw      $a0,4($s0)
.L80020f88:
    addiu   $v1,$a1,10560
.L80020f8c:
    sw      $a0,4($v1)
.L80020f90:
    lw      $a0,0($s0)
.L80020f94:
    lui     $v1,0x800b
.L80020f98:
    sw      $s1,-14184($v1)
.L80020f9c:
    j       0x80020fc0
.L80020fa0:
    sw      $a0,10560($a1)
.L80020fa4:
    lui     $v0,0x800b
.L80020fa8:
    lw      $a0,-14100($v0)
.L80020fac:
    nop
.L80020fb0:
    lbu     $v1,119($a0)
.L80020fb4:
    addiu   $v0,$zero,-1
.L80020fb8:
    ori     $v1,$v1,1
.L80020fbc:
    sb      $v1,119($a0)
.L80020fc0:
    lw      $ra,32($sp)
.L80020fc4:
    lw      $s1,28($sp)
.L80020fc8:
    lw      $s0,24($sp)
.L80020fcc:
    jr      $ra
.L80020fd0:
    addiu   $sp,$sp,40
.end FUN_80020efc
.size FUN_80020efc, . - FUN_80020efc
