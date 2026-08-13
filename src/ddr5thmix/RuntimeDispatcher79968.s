.set noreorder
.set noat
.set nomacro

.section .text.FUN_80079968
.globl FUN_80079968
.type FUN_80079968, @function
FUN_80079968:
/* Runtime callback dispatcher and sixteen-entry table maintenance. */
/* 0x80079968 */ addiu	$sp,$sp,-32
/* 0x8007996c */ lui	$v1,0x800e
/* 0x80079970 */ addiu	$v1,$v1,15224
/* 0x80079974 */ sw	$ra,28($sp)
/* 0x80079978 */ sw	$s0,24($sp)
/* 0x8007997c */ lw	$v0,12($v1)
/* 0x80079980 */ addu $s0,$zero,$zero
/* 0x80079984 */ addiu	$v0,$v0,1
/* 0x80079988 */ sw	$v0,12($v1)
.L8007998c:
/* 0x8007998c */ lui	$v0,0x800e
.L80079990:
/* 0x80079990 */ addiu	$v0,$v0,15224
/* 0x80079994 */ lw	$v1,12($v0)
/* 0x80079998 */ nop
/* 0x8007999c */ sll	$v1,$v1,0x1
/* 0x800799a0 */ addu	$v1,$v1,$v0
/* 0x800799a4 */ lh	$v1,16($v1)
/* 0x800799a8 */ nop
/* 0x800799ac */ sltiu	$v0,$v1,7
/* 0x800799b0 */ beq $v0,$zero,.L80079e7c
/* 0x800799b4 */ lui	$v0,0x8002
/* 0x800799b8 */ addiu	$v0,$v0,-10444
/* 0x800799bc */ sll	$v1,$v1,0x2
/* 0x800799c0 */ addu	$v1,$v1,$v0
/* 0x800799c4 */ lw	$v0,0($v1)
/* 0x800799c8 */ nop
/* 0x800799cc */ jr $v0
/* 0x800799d0 */ nop
/* 0x800799d4 */ jal	0x8002829c
/* 0x800799d8 */ nop
/* 0x800799dc */ bne $v0,$zero,.L80079a70
/* 0x800799e0 */ lui	$v0,0x800e
/* 0x800799e4 */ addiu	$a1,$v0,15224
/* 0x800799e8 */ lw	$v1,12($a1)
/* 0x800799ec */ nop
/* 0x800799f0 */ sll	$v0,$v1,0x1
/* 0x800799f4 */ addu	$v0,$v0,$a1
/* 0x800799f8 */ addu $a2,$v1,$zero
/* 0x800799fc */ lh	$v1,16($v0)
/* 0x80079a00 */ addiu	$a0,$a2,1
/* 0x80079a04 */ addiu	$v1,$v1,1
/* 0x80079a08 */ sh	$v1,16($v0)
/* 0x80079a0c */ slti	$v0,$a0,16
/* 0x80079a10 */ beq $v0,$zero,.L80079a30
/* 0x80079a14 */ sll	$v0,$a0,0x1
/* 0x80079a18 */ addu	$a1,$v0,$a1
.L80079a1c:
/* 0x80079a1c */ sh	$zero,16($a1)
/* 0x80079a20 */ addiu	$a0,$a0,1
/* 0x80079a24 */ slti	$v0,$a0,16
/* 0x80079a28 */ bne $v0,$zero,.L80079a1c
/* 0x80079a2c */ addiu	$a1,$a1,2
.L80079a30:
/* 0x80079a30 */ bne $v1,$zero,.L80079990
/* 0x80079a34 */ lui	$v0,0x800e
/* 0x80079a38 */ addu $a0,$a2,$zero
/* 0x80079a3c */ slti	$v0,$a0,16
/* 0x80079a40 */ beq $v0,$zero,.L8007998c
/* 0x80079a44 */ lui	$v0,0x800e
/* 0x80079a48 */ addiu	$v0,$v0,15224
/* 0x80079a4c */ sll	$v1,$a0,0x1
/* 0x80079a50 */ addu	$v1,$v1,$v0
.L80079a54:
/* 0x80079a54 */ sh	$zero,48($v1)
/* 0x80079a58 */ addiu	$a0,$a0,1
/* 0x80079a5c */ slti	$v0,$a0,16
/* 0x80079a60 */ bne $v0,$zero,.L80079a54
/* 0x80079a64 */ addiu	$v1,$v1,2
/* 0x80079a68 */ j	0x80079990
/* 0x80079a6c */ lui	$v0,0x800e
.L80079a70:
/* 0x80079a70 */ jal	0x80025b18
/* 0x80079a74 */ addiu $a0,$zero,6
/* 0x80079a78 */ lui	$v0,0x800e
/* 0x80079a7c */ addiu	$a1,$v0,15224
/* 0x80079a80 */ lw	$v1,12($a1)
/* 0x80079a84 */ nop
/* 0x80079a88 */ sll	$v0,$v1,0x1
/* 0x80079a8c */ addu	$v0,$v0,$a1
/* 0x80079a90 */ addu $a2,$v1,$zero
/* 0x80079a94 */ lh	$v1,16($v0)
/* 0x80079a98 */ addiu	$a0,$a2,1
/* 0x80079a9c */ addiu	$v1,$v1,1
/* 0x80079aa0 */ sh	$v1,16($v0)
/* 0x80079aa4 */ slti	$v0,$a0,16
/* 0x80079aa8 */ beq $v0,$zero,.L80079ac8
/* 0x80079aac */ sll	$v0,$a0,0x1
/* 0x80079ab0 */ addu	$a1,$v0,$a1
.L80079ab4:
/* 0x80079ab4 */ sh	$zero,16($a1)
/* 0x80079ab8 */ addiu	$a0,$a0,1
/* 0x80079abc */ slti	$v0,$a0,16
/* 0x80079ac0 */ bne $v0,$zero,.L80079ab4
/* 0x80079ac4 */ addiu	$a1,$a1,2
.L80079ac8:
/* 0x80079ac8 */ bne $v1,$zero,.L80079e80
/* 0x80079acc */ lui	$a0,0x800e
/* 0x80079ad0 */ addu $a0,$a2,$zero
/* 0x80079ad4 */ slti	$v0,$a0,16
/* 0x80079ad8 */ beq $v0,$zero,.L80079e7c
/* 0x80079adc */ lui	$v0,0x800e
/* 0x80079ae0 */ addiu	$v0,$v0,15224
/* 0x80079ae4 */ sll	$v1,$a0,0x1
/* 0x80079ae8 */ addu	$v1,$v1,$v0
.L80079aec:
/* 0x80079aec */ sh	$zero,48($v1)
/* 0x80079af0 */ addiu	$a0,$a0,1
/* 0x80079af4 */ slti	$v0,$a0,16
/* 0x80079af8 */ bne $v0,$zero,.L80079aec
/* 0x80079afc */ addiu	$v1,$v1,2
/* 0x80079b00 */ j	0x80079e80
/* 0x80079b04 */ lui	$a0,0x800e
/* 0x80079b08 */ jal	0x8002829c
/* 0x80079b0c */ nop
/* 0x80079b10 */ bne $v0,$zero,.L80079e80
/* 0x80079b14 */ lui	$a0,0x800e
/* 0x80079b18 */ lui	$v0,0x800e
/* 0x80079b1c */ addiu	$a1,$v0,15224
/* 0x80079b20 */ lw	$v1,12($a1)
/* 0x80079b24 */ nop
/* 0x80079b28 */ sll	$v0,$v1,0x1
/* 0x80079b2c */ addu	$v0,$v0,$a1
/* 0x80079b30 */ addu $a2,$v1,$zero
/* 0x80079b34 */ lh	$v1,16($v0)
/* 0x80079b38 */ addiu	$a0,$a2,1
/* 0x80079b3c */ addiu	$v1,$v1,1
/* 0x80079b40 */ sh	$v1,16($v0)
/* 0x80079b44 */ slti	$v0,$a0,16
/* 0x80079b48 */ beq $v0,$zero,.L80079b68
/* 0x80079b4c */ sll	$v0,$a0,0x1
/* 0x80079b50 */ addu	$a1,$v0,$a1
.L80079b54:
/* 0x80079b54 */ sh	$zero,16($a1)
/* 0x80079b58 */ addiu	$a0,$a0,1
/* 0x80079b5c */ slti	$v0,$a0,16
/* 0x80079b60 */ bne $v0,$zero,.L80079b54
/* 0x80079b64 */ addiu	$a1,$a1,2
.L80079b68:
/* 0x80079b68 */ bne $v1,$zero,.L80079990
/* 0x80079b6c */ lui	$v0,0x800e
/* 0x80079b70 */ addu $a0,$a2,$zero
/* 0x80079b74 */ slti	$v0,$a0,16
/* 0x80079b78 */ beq $v0,$zero,.L8007998c
/* 0x80079b7c */ lui	$v0,0x800e
/* 0x80079b80 */ addiu	$v0,$v0,15224
/* 0x80079b84 */ sll	$v1,$a0,0x1
/* 0x80079b88 */ addu	$v1,$v1,$v0
.L80079b8c:
/* 0x80079b8c */ sh	$zero,48($v1)
/* 0x80079b90 */ addiu	$a0,$a0,1
/* 0x80079b94 */ slti	$v0,$a0,16
/* 0x80079b98 */ bne $v0,$zero,.L80079b8c
/* 0x80079b9c */ addiu	$v1,$v1,2
/* 0x80079ba0 */ j	0x80079990
/* 0x80079ba4 */ lui	$v0,0x800e
/* 0x80079ba8 */ lui	$a0,0x800b
/* 0x80079bac */ addiu	$a0,$a0,-10816
/* 0x80079bb0 */ jal	0x80020d24
/* 0x80079bb4 */ lui	$a1,0x8013
/* 0x80079bb8 */ bne $v0,$zero,.L80079e80
/* 0x80079bbc */ lui	$a0,0x800e
/* 0x80079bc0 */ lui	$v0,0x800e
/* 0x80079bc4 */ addiu	$a1,$v0,15224
/* 0x80079bc8 */ lw	$v1,12($a1)
/* 0x80079bcc */ nop
/* 0x80079bd0 */ sll	$v0,$v1,0x1
/* 0x80079bd4 */ addu	$v0,$v0,$a1
/* 0x80079bd8 */ addu $a2,$v1,$zero
/* 0x80079bdc */ lh	$v1,16($v0)
/* 0x80079be0 */ addiu	$a0,$a2,1
/* 0x80079be4 */ addiu	$v1,$v1,1
/* 0x80079be8 */ sh	$v1,16($v0)
/* 0x80079bec */ slti	$v0,$a0,16
/* 0x80079bf0 */ beq $v0,$zero,.L80079c10
/* 0x80079bf4 */ sll	$v0,$a0,0x1
/* 0x80079bf8 */ addu	$a1,$v0,$a1
.L80079bfc:
/* 0x80079bfc */ sh	$zero,16($a1)
/* 0x80079c00 */ addiu	$a0,$a0,1
/* 0x80079c04 */ slti	$v0,$a0,16
/* 0x80079c08 */ bne $v0,$zero,.L80079bfc
/* 0x80079c0c */ addiu	$a1,$a1,2
.L80079c10:
/* 0x80079c10 */ bne $v1,$zero,.L80079990
/* 0x80079c14 */ lui	$v0,0x800e
/* 0x80079c18 */ addu $a0,$a2,$zero
/* 0x80079c1c */ slti	$v0,$a0,16
/* 0x80079c20 */ beq $v0,$zero,.L8007998c
/* 0x80079c24 */ lui	$v0,0x800e
/* 0x80079c28 */ addiu	$v0,$v0,15224
/* 0x80079c2c */ sll	$v1,$a0,0x1
/* 0x80079c30 */ addu	$v1,$v1,$v0
.L80079c34:
/* 0x80079c34 */ sh	$zero,48($v1)
/* 0x80079c38 */ addiu	$a0,$a0,1
/* 0x80079c3c */ slti	$v0,$a0,16
/* 0x80079c40 */ bne $v0,$zero,.L80079c34
/* 0x80079c44 */ addiu	$v1,$v1,2
/* 0x80079c48 */ j	0x80079990
/* 0x80079c4c */ lui	$v0,0x800e
/* 0x80079c50 */ lui	$v0,0x800b
/* 0x80079c54 */ lw	$v0,-14196($v0)
/* 0x80079c58 */ nop
/* 0x80079c5c */ bne $v0,$zero,.L80079e80
/* 0x80079c60 */ lui	$a0,0x800e
/* 0x80079c64 */ lui	$v0,0x800e
/* 0x80079c68 */ addiu	$a1,$v0,15224
/* 0x80079c6c */ lw	$v1,12($a1)
/* 0x80079c70 */ nop
/* 0x80079c74 */ sll	$v0,$v1,0x1
/* 0x80079c78 */ addu	$v0,$v0,$a1
/* 0x80079c7c */ addu $a2,$v1,$zero
/* 0x80079c80 */ lh	$v1,16($v0)
/* 0x80079c84 */ addiu	$a0,$a2,1
/* 0x80079c88 */ addiu	$v1,$v1,1
/* 0x80079c8c */ sh	$v1,16($v0)
/* 0x80079c90 */ slti	$v0,$a0,16
/* 0x80079c94 */ beq $v0,$zero,.L80079cb4
/* 0x80079c98 */ sll	$v0,$a0,0x1
/* 0x80079c9c */ addu	$a1,$v0,$a1
.L80079ca0:
/* 0x80079ca0 */ sh	$zero,16($a1)
/* 0x80079ca4 */ addiu	$a0,$a0,1
/* 0x80079ca8 */ slti	$v0,$a0,16
/* 0x80079cac */ bne $v0,$zero,.L80079ca0
/* 0x80079cb0 */ addiu	$a1,$a1,2
.L80079cb4:
/* 0x80079cb4 */ bne $v1,$zero,.L80079990
/* 0x80079cb8 */ lui	$v0,0x800e
/* 0x80079cbc */ addu $a0,$a2,$zero
/* 0x80079cc0 */ slti	$v0,$a0,16
/* 0x80079cc4 */ beq $v0,$zero,.L8007998c
/* 0x80079cc8 */ lui	$v0,0x800e
/* 0x80079ccc */ addiu	$v0,$v0,15224
/* 0x80079cd0 */ sll	$v1,$a0,0x1
/* 0x80079cd4 */ addu	$v1,$v1,$v0
.L80079cd8:
/* 0x80079cd8 */ sh	$zero,48($v1)
/* 0x80079cdc */ addiu	$a0,$a0,1
/* 0x80079ce0 */ slti	$v0,$a0,16
/* 0x80079ce4 */ bne $v0,$zero,.L80079cd8
/* 0x80079ce8 */ addiu	$v1,$v1,2
/* 0x80079cec */ j	0x80079990
/* 0x80079cf0 */ lui	$v0,0x800e
/* 0x80079cf4 */ lui	$v0,0x800b
/* 0x80079cf8 */ lw	$v0,-14100($v0)
/* 0x80079cfc */ nop
/* 0x80079d00 */ lw	$a1,144($v0)
/* 0x80079d04 */ jal	0x8002a9dc
/* 0x80079d08 */ lui	$a0,0x8013
/* 0x80079d0c */ addiu $a0,$zero,145
/* 0x80079d10 */ addiu $a1,$zero,800
/* 0x80079d14 */ addiu $v0,$zero,448
/* 0x80079d18 */ addiu $a2,$zero,256
/* 0x80079d1c */ addu $a3,$a1,$zero
/* 0x80079d20 */ jal	0x8007bc1c
/* 0x80079d24 */ sw	$v0,16($sp)
/* 0x80079d28 */ lui	$v0,0x800e
/* 0x80079d2c */ addiu	$a1,$v0,15224
/* 0x80079d30 */ lw	$v1,12($a1)
/* 0x80079d34 */ nop
/* 0x80079d38 */ sll	$v0,$v1,0x1
/* 0x80079d3c */ addu	$v0,$v0,$a1
/* 0x80079d40 */ addu $a2,$v1,$zero
/* 0x80079d44 */ lh	$v1,16($v0)
/* 0x80079d48 */ addiu	$a0,$a2,1
/* 0x80079d4c */ addiu	$v1,$v1,1
/* 0x80079d50 */ sh	$v1,16($v0)
/* 0x80079d54 */ slti	$v0,$a0,16
/* 0x80079d58 */ beq $v0,$zero,.L80079d78
/* 0x80079d5c */ sll	$v0,$a0,0x1
/* 0x80079d60 */ addu	$a1,$v0,$a1
.L80079d64:
/* 0x80079d64 */ sh	$zero,16($a1)
/* 0x80079d68 */ addiu	$a0,$a0,1
/* 0x80079d6c */ slti	$v0,$a0,16
/* 0x80079d70 */ bne $v0,$zero,.L80079d64
/* 0x80079d74 */ addiu	$a1,$a1,2
.L80079d78:
/* 0x80079d78 */ bne $v1,$zero,.L80079990
/* 0x80079d7c */ lui	$v0,0x800e
/* 0x80079d80 */ addu $a0,$a2,$zero
/* 0x80079d84 */ slti	$v0,$a0,16
/* 0x80079d88 */ beq $v0,$zero,.L8007998c
/* 0x80079d8c */ lui	$v0,0x800e
/* 0x80079d90 */ addiu	$v0,$v0,15224
/* 0x80079d94 */ sll	$v1,$a0,0x1
/* 0x80079d98 */ addu	$v1,$v1,$v0
.L80079d9c:
/* 0x80079d9c */ sh	$zero,48($v1)
/* 0x80079da0 */ addiu	$a0,$a0,1
/* 0x80079da4 */ slti	$v0,$a0,16
/* 0x80079da8 */ bne $v0,$zero,.L80079d9c
/* 0x80079dac */ addiu	$v1,$v1,2
/* 0x80079db0 */ j	0x80079990
/* 0x80079db4 */ lui	$v0,0x800e
/* 0x80079db8 */ addiu $a1,$zero,-1
/* 0x80079dbc */ addiu $a0,$zero,1
/* 0x80079dc0 */ lui	$v0,0x800f
/* 0x80079dc4 */ addiu	$v0,$v0,10504
/* 0x80079dc8 */ ori $v1,$zero,0x9284
/* 0x80079dcc */ addu	$v1,$v0,$v1
.L80079dd0:
/* 0x80079dd0 */ sb	$a1,42($v1)
/* 0x80079dd4 */ lui	$v0,0xffff
/* 0x80079dd8 */ ori	$v0,$v0,0x6d7c
/* 0x80079ddc */ addiu	$a0,$a0,-1
/* 0x80079de0 */ bgez	$a0,.L80079dd0
/* 0x80079de4 */ addu	$v1,$v1,$v0
/* 0x80079de8 */ jal	0x8007bd80
/* 0x80079dec */ nop
/* 0x80079df0 */ lui	$v0,0x800e
/* 0x80079df4 */ addiu	$a1,$v0,15224
/* 0x80079df8 */ lw	$v1,12($a1)
/* 0x80079dfc */ nop
/* 0x80079e00 */ sll	$v0,$v1,0x1
/* 0x80079e04 */ addu	$v0,$v0,$a1
/* 0x80079e08 */ addu $a2,$v1,$zero
/* 0x80079e0c */ lh	$v1,16($v0)
/* 0x80079e10 */ addiu	$a0,$a2,1
/* 0x80079e14 */ addiu	$v1,$v1,1
/* 0x80079e18 */ sh	$v1,16($v0)
/* 0x80079e1c */ slti	$v0,$a0,16
/* 0x80079e20 */ beq $v0,$zero,.L80079e40
/* 0x80079e24 */ sll	$v0,$a0,0x1
/* 0x80079e28 */ addu	$a1,$v0,$a1
.L80079e2c:
/* 0x80079e2c */ sh	$zero,16($a1)
/* 0x80079e30 */ addiu	$a0,$a0,1
/* 0x80079e34 */ slti	$v0,$a0,16
/* 0x80079e38 */ bne $v0,$zero,.L80079e2c
/* 0x80079e3c */ addiu	$a1,$a1,2
.L80079e40:
/* 0x80079e40 */ bne $v1,$zero,.L80079e7c
/* 0x80079e44 */ addiu $s0,$zero,1
/* 0x80079e48 */ addu $a0,$a2,$zero
/* 0x80079e4c */ slti	$v0,$a0,16
/* 0x80079e50 */ beq $v0,$zero,.L80079e7c
/* 0x80079e54 */ lui	$v0,0x800e
/* 0x80079e58 */ addiu	$v0,$v0,15224
/* 0x80079e5c */ sll	$v1,$a0,0x1
/* 0x80079e60 */ addu	$v1,$v1,$v0
.L80079e64:
/* 0x80079e64 */ sh	$zero,48($v1)
/* 0x80079e68 */ addiu	$a0,$a0,1
/* 0x80079e6c */ slti	$v0,$a0,16
/* 0x80079e70 */ bne $v0,$zero,.L80079e64
/* 0x80079e74 */ addiu	$v1,$v1,2
/* 0x80079e78 */ addiu $s0,$zero,1
.L80079e7c:
/* 0x80079e7c */ lui	$a0,0x800e
.L80079e80:
/* 0x80079e80 */ addiu	$a0,$a0,15224
/* 0x80079e84 */ lw	$v1,12($a0)
/* 0x80079e88 */ addu $v0,$s0,$zero
/* 0x80079e8c */ addiu	$v1,$v1,-1
/* 0x80079e90 */ sw	$v1,12($a0)
/* 0x80079e94 */ lw	$ra,28($sp)
/* 0x80079e98 */ lw	$s0,24($sp)
/* 0x80079e9c */ jr $ra
/* 0x80079ea0 */ addiu	$sp,$sp,32
.size FUN_80079968, .-FUN_80079968


