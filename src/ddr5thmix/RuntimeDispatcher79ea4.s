.set noreorder
.set noat
.set nomacro

.section .text.FUN_80079ea4
.globl FUN_80079ea4
.type FUN_80079ea4, @function
FUN_80079ea4:
/* Runtime callback dispatcher and sixteen-entry table maintenance. */
/* 0x80079ea4 */ addiu	$sp,$sp,-40
/* 0x80079ea8 */ lui	$v1,0x800e
/* 0x80079eac */ addiu	$v1,$v1,15224
/* 0x80079eb0 */ sw	$ra,32($sp)
/* 0x80079eb4 */ sw	$s1,28($sp)
/* 0x80079eb8 */ sw	$s0,24($sp)
/* 0x80079ebc */ lw	$v0,12($v1)
/* 0x80079ec0 */ addu $s1,$zero,$zero
/* 0x80079ec4 */ addiu	$v0,$v0,1
/* 0x80079ec8 */ sw	$v0,12($v1)
.L80079ecc:
/* 0x80079ecc */ lui	$v0,0x800e
.L80079ed0:
/* 0x80079ed0 */ addiu	$v0,$v0,15224
/* 0x80079ed4 */ lw	$v1,12($v0)
/* 0x80079ed8 */ nop
/* 0x80079edc */ sll	$v1,$v1,0x1
/* 0x80079ee0 */ addu	$v1,$v1,$v0
/* 0x80079ee4 */ lh	$v1,16($v1)
/* 0x80079ee8 */ nop
/* 0x80079eec */ sltiu	$v0,$v1,7
/* 0x80079ef0 */ beq $v0,$zero,.L8007a3e4
/* 0x80079ef4 */ lui	$v0,0x8002
/* 0x80079ef8 */ addiu	$v0,$v0,-10412
/* 0x80079efc */ sll	$v1,$v1,0x2
/* 0x80079f00 */ addu	$v1,$v1,$v0
/* 0x80079f04 */ lw	$v0,0($v1)
/* 0x80079f08 */ nop
/* 0x80079f0c */ jr $v0
/* 0x80079f10 */ nop
/* 0x80079f14 */ jal	0x8002829c
/* 0x80079f18 */ nop
/* 0x80079f1c */ bne $v0,$zero,.L80079fb0
/* 0x80079f20 */ lui	$v0,0x800e
/* 0x80079f24 */ addiu	$a1,$v0,15224
/* 0x80079f28 */ lw	$v1,12($a1)
/* 0x80079f2c */ nop
/* 0x80079f30 */ sll	$v0,$v1,0x1
/* 0x80079f34 */ addu	$v0,$v0,$a1
/* 0x80079f38 */ addu $a2,$v1,$zero
/* 0x80079f3c */ lh	$v1,16($v0)
/* 0x80079f40 */ addiu	$a0,$a2,1
/* 0x80079f44 */ addiu	$v1,$v1,1
/* 0x80079f48 */ sh	$v1,16($v0)
/* 0x80079f4c */ slti	$v0,$a0,16
/* 0x80079f50 */ beq $v0,$zero,.L80079f70
/* 0x80079f54 */ sll	$v0,$a0,0x1
/* 0x80079f58 */ addu	$a1,$v0,$a1
.L80079f5c:
/* 0x80079f5c */ sh	$zero,16($a1)
/* 0x80079f60 */ addiu	$a0,$a0,1
/* 0x80079f64 */ slti	$v0,$a0,16
/* 0x80079f68 */ bne $v0,$zero,.L80079f5c
/* 0x80079f6c */ addiu	$a1,$a1,2
.L80079f70:
/* 0x80079f70 */ bne $v1,$zero,.L80079ed0
/* 0x80079f74 */ lui	$v0,0x800e
/* 0x80079f78 */ addu $a0,$a2,$zero
/* 0x80079f7c */ slti	$v0,$a0,16
/* 0x80079f80 */ beq $v0,$zero,.L80079ecc
/* 0x80079f84 */ lui	$v0,0x800e
/* 0x80079f88 */ addiu	$v0,$v0,15224
/* 0x80079f8c */ sll	$v1,$a0,0x1
/* 0x80079f90 */ addu	$v1,$v1,$v0
.L80079f94:
/* 0x80079f94 */ sh	$zero,48($v1)
/* 0x80079f98 */ addiu	$a0,$a0,1
/* 0x80079f9c */ slti	$v0,$a0,16
/* 0x80079fa0 */ bne $v0,$zero,.L80079f94
/* 0x80079fa4 */ addiu	$v1,$v1,2
/* 0x80079fa8 */ j	0x80079ed0
/* 0x80079fac */ lui	$v0,0x800e
.L80079fb0:
/* 0x80079fb0 */ jal	0x80025b18
/* 0x80079fb4 */ addiu $a0,$zero,6
/* 0x80079fb8 */ lui	$v0,0x800e
/* 0x80079fbc */ addiu	$a1,$v0,15224
/* 0x80079fc0 */ lw	$v1,12($a1)
/* 0x80079fc4 */ nop
/* 0x80079fc8 */ sll	$v0,$v1,0x1
/* 0x80079fcc */ addu	$v0,$v0,$a1
/* 0x80079fd0 */ addu $a2,$v1,$zero
/* 0x80079fd4 */ lh	$v1,16($v0)
/* 0x80079fd8 */ addiu	$a0,$a2,1
/* 0x80079fdc */ addiu	$v1,$v1,1
/* 0x80079fe0 */ sh	$v1,16($v0)
/* 0x80079fe4 */ slti	$v0,$a0,16
/* 0x80079fe8 */ beq $v0,$zero,.L8007a008
/* 0x80079fec */ sll	$v0,$a0,0x1
/* 0x80079ff0 */ addu	$a1,$v0,$a1
.L80079ff4:
/* 0x80079ff4 */ sh	$zero,16($a1)
/* 0x80079ff8 */ addiu	$a0,$a0,1
/* 0x80079ffc */ slti	$v0,$a0,16
/* 0x8007a000 */ bne $v0,$zero,.L80079ff4
/* 0x8007a004 */ addiu	$a1,$a1,2
.L8007a008:
/* 0x8007a008 */ bne $v1,$zero,.L8007a3e8
/* 0x8007a00c */ lui	$a0,0x800e
/* 0x8007a010 */ addu $a0,$a2,$zero
/* 0x8007a014 */ slti	$v0,$a0,16
/* 0x8007a018 */ beq $v0,$zero,.L8007a3e4
/* 0x8007a01c */ lui	$v0,0x800e
/* 0x8007a020 */ addiu	$v0,$v0,15224
/* 0x8007a024 */ sll	$v1,$a0,0x1
/* 0x8007a028 */ addu	$v1,$v1,$v0
.L8007a02c:
/* 0x8007a02c */ sh	$zero,48($v1)
/* 0x8007a030 */ addiu	$a0,$a0,1
/* 0x8007a034 */ slti	$v0,$a0,16
/* 0x8007a038 */ bne $v0,$zero,.L8007a02c
/* 0x8007a03c */ addiu	$v1,$v1,2
/* 0x8007a040 */ j	0x8007a3e8
/* 0x8007a044 */ lui	$a0,0x800e
/* 0x8007a048 */ jal	0x8002829c
/* 0x8007a04c */ nop
/* 0x8007a050 */ bne $v0,$zero,.L8007a3e8
/* 0x8007a054 */ lui	$a0,0x800e
/* 0x8007a058 */ lui	$v0,0x800e
/* 0x8007a05c */ addiu	$a1,$v0,15224
/* 0x8007a060 */ lw	$v1,12($a1)
/* 0x8007a064 */ nop
/* 0x8007a068 */ sll	$v0,$v1,0x1
/* 0x8007a06c */ addu	$v0,$v0,$a1
/* 0x8007a070 */ addu $a2,$v1,$zero
/* 0x8007a074 */ lh	$v1,16($v0)
/* 0x8007a078 */ addiu	$a0,$a2,1
/* 0x8007a07c */ addiu	$v1,$v1,1
/* 0x8007a080 */ sh	$v1,16($v0)
/* 0x8007a084 */ slti	$v0,$a0,16
/* 0x8007a088 */ beq $v0,$zero,.L8007a0a8
/* 0x8007a08c */ sll	$v0,$a0,0x1
/* 0x8007a090 */ addu	$a1,$v0,$a1
.L8007a094:
/* 0x8007a094 */ sh	$zero,16($a1)
/* 0x8007a098 */ addiu	$a0,$a0,1
/* 0x8007a09c */ slti	$v0,$a0,16
/* 0x8007a0a0 */ bne $v0,$zero,.L8007a094
/* 0x8007a0a4 */ addiu	$a1,$a1,2
.L8007a0a8:
/* 0x8007a0a8 */ bne $v1,$zero,.L80079ed0
/* 0x8007a0ac */ lui	$v0,0x800e
/* 0x8007a0b0 */ addu $a0,$a2,$zero
/* 0x8007a0b4 */ slti	$v0,$a0,16
/* 0x8007a0b8 */ beq $v0,$zero,.L80079ecc
/* 0x8007a0bc */ lui	$v0,0x800e
/* 0x8007a0c0 */ addiu	$v0,$v0,15224
/* 0x8007a0c4 */ sll	$v1,$a0,0x1
/* 0x8007a0c8 */ addu	$v1,$v1,$v0
.L8007a0cc:
/* 0x8007a0cc */ sh	$zero,48($v1)
/* 0x8007a0d0 */ addiu	$a0,$a0,1
/* 0x8007a0d4 */ slti	$v0,$a0,16
/* 0x8007a0d8 */ bne $v0,$zero,.L8007a0cc
/* 0x8007a0dc */ addiu	$v1,$v1,2
/* 0x8007a0e0 */ j	0x80079ed0
/* 0x8007a0e4 */ lui	$v0,0x800e
/* 0x8007a0e8 */ lui	$v0,0x800e
/* 0x8007a0ec */ addiu	$a1,$v0,15224
/* 0x8007a0f0 */ lw	$v1,12($a1)
/* 0x8007a0f4 */ nop
/* 0x8007a0f8 */ sll	$v0,$v1,0x1
/* 0x8007a0fc */ addu	$v0,$v0,$a1
/* 0x8007a100 */ addu $a2,$v1,$zero
/* 0x8007a104 */ lh	$v1,16($v0)
/* 0x8007a108 */ addiu	$a0,$a2,1
/* 0x8007a10c */ addiu	$v1,$v1,1
/* 0x8007a110 */ sh	$v1,16($v0)
/* 0x8007a114 */ slti	$v0,$a0,16
/* 0x8007a118 */ beq $v0,$zero,.L8007a138
/* 0x8007a11c */ sll	$v0,$a0,0x1
/* 0x8007a120 */ addu	$a1,$v0,$a1
.L8007a124:
/* 0x8007a124 */ sh	$zero,16($a1)
/* 0x8007a128 */ addiu	$a0,$a0,1
/* 0x8007a12c */ slti	$v0,$a0,16
/* 0x8007a130 */ bne $v0,$zero,.L8007a124
/* 0x8007a134 */ addiu	$a1,$a1,2
.L8007a138:
/* 0x8007a138 */ bne $v1,$zero,.L80079ed0
/* 0x8007a13c */ lui	$v0,0x800e
/* 0x8007a140 */ addu $a0,$a2,$zero
/* 0x8007a144 */ slti	$v0,$a0,16
/* 0x8007a148 */ beq $v0,$zero,.L80079ecc
/* 0x8007a14c */ lui	$v0,0x800e
/* 0x8007a150 */ addiu	$v0,$v0,15224
/* 0x8007a154 */ sll	$v1,$a0,0x1
/* 0x8007a158 */ addu	$v1,$v1,$v0
.L8007a15c:
/* 0x8007a15c */ sh	$zero,48($v1)
/* 0x8007a160 */ addiu	$a0,$a0,1
/* 0x8007a164 */ slti	$v0,$a0,16
/* 0x8007a168 */ bne $v0,$zero,.L8007a15c
/* 0x8007a16c */ addiu	$v1,$v1,2
/* 0x8007a170 */ j	0x80079ed0
/* 0x8007a174 */ lui	$v0,0x800e
/* 0x8007a178 */ lui	$a0,0x800b
/* 0x8007a17c */ addiu	$a0,$a0,-10808
/* 0x8007a180 */ lui	$a1,0x8017
/* 0x8007a184 */ jal	0x80020d24
/* 0x8007a188 */ ori	$a1,$a1,0x4000
/* 0x8007a18c */ bne $v0,$zero,.L8007a3e8
/* 0x8007a190 */ lui	$a0,0x800e
/* 0x8007a194 */ lui	$v0,0x800e
/* 0x8007a198 */ addiu	$a1,$v0,15224
/* 0x8007a19c */ lw	$v1,12($a1)
/* 0x8007a1a0 */ nop
/* 0x8007a1a4 */ sll	$v0,$v1,0x1
/* 0x8007a1a8 */ addu	$v0,$v0,$a1
/* 0x8007a1ac */ addu $a2,$v1,$zero
/* 0x8007a1b0 */ lh	$v1,16($v0)
/* 0x8007a1b4 */ addiu	$a0,$a2,1
/* 0x8007a1b8 */ addiu	$v1,$v1,1
/* 0x8007a1bc */ sh	$v1,16($v0)
/* 0x8007a1c0 */ slti	$v0,$a0,16
/* 0x8007a1c4 */ beq $v0,$zero,.L8007a1e4
/* 0x8007a1c8 */ sll	$v0,$a0,0x1
/* 0x8007a1cc */ addu	$a1,$v0,$a1
.L8007a1d0:
/* 0x8007a1d0 */ sh	$zero,16($a1)
/* 0x8007a1d4 */ addiu	$a0,$a0,1
/* 0x8007a1d8 */ slti	$v0,$a0,16
/* 0x8007a1dc */ bne $v0,$zero,.L8007a1d0
/* 0x8007a1e0 */ addiu	$a1,$a1,2
.L8007a1e4:
/* 0x8007a1e4 */ bne $v1,$zero,.L80079ed0
/* 0x8007a1e8 */ lui	$v0,0x800e
/* 0x8007a1ec */ addu $a0,$a2,$zero
/* 0x8007a1f0 */ slti	$v0,$a0,16
/* 0x8007a1f4 */ beq $v0,$zero,.L80079ecc
/* 0x8007a1f8 */ lui	$v0,0x800e
/* 0x8007a1fc */ addiu	$v0,$v0,15224
/* 0x8007a200 */ sll	$v1,$a0,0x1
/* 0x8007a204 */ addu	$v1,$v1,$v0
.L8007a208:
/* 0x8007a208 */ sh	$zero,48($v1)
/* 0x8007a20c */ addiu	$a0,$a0,1
/* 0x8007a210 */ slti	$v0,$a0,16
/* 0x8007a214 */ bne $v0,$zero,.L8007a208
/* 0x8007a218 */ addiu	$v1,$v1,2
/* 0x8007a21c */ j	0x80079ed0
/* 0x8007a220 */ lui	$v0,0x800e
/* 0x8007a224 */ lui	$v0,0x800b
/* 0x8007a228 */ lw	$v0,-14196($v0)
/* 0x8007a22c */ nop
/* 0x8007a230 */ bne $v0,$zero,.L8007a3e8
/* 0x8007a234 */ lui	$a0,0x800e
/* 0x8007a238 */ lui	$v0,0x800e
/* 0x8007a23c */ addiu	$a1,$v0,15224
/* 0x8007a240 */ lw	$v1,12($a1)
/* 0x8007a244 */ nop
/* 0x8007a248 */ sll	$v0,$v1,0x1
/* 0x8007a24c */ addu	$v0,$v0,$a1
/* 0x8007a250 */ addu $a2,$v1,$zero
/* 0x8007a254 */ lh	$v1,16($v0)
/* 0x8007a258 */ addiu	$a0,$a2,1
/* 0x8007a25c */ addiu	$v1,$v1,1
/* 0x8007a260 */ sh	$v1,16($v0)
/* 0x8007a264 */ slti	$v0,$a0,16
/* 0x8007a268 */ beq $v0,$zero,.L8007a288
/* 0x8007a26c */ sll	$v0,$a0,0x1
/* 0x8007a270 */ addu	$a1,$v0,$a1
.L8007a274:
/* 0x8007a274 */ sh	$zero,16($a1)
/* 0x8007a278 */ addiu	$a0,$a0,1
/* 0x8007a27c */ slti	$v0,$a0,16
/* 0x8007a280 */ bne $v0,$zero,.L8007a274
/* 0x8007a284 */ addiu	$a1,$a1,2
.L8007a288:
/* 0x8007a288 */ bne $v1,$zero,.L80079ed0
/* 0x8007a28c */ lui	$v0,0x800e
/* 0x8007a290 */ addu $a0,$a2,$zero
/* 0x8007a294 */ slti	$v0,$a0,16
/* 0x8007a298 */ beq $v0,$zero,.L80079ecc
/* 0x8007a29c */ lui	$v0,0x800e
/* 0x8007a2a0 */ addiu	$v0,$v0,15224
/* 0x8007a2a4 */ sll	$v1,$a0,0x1
/* 0x8007a2a8 */ addu	$v1,$v1,$v0
.L8007a2ac:
/* 0x8007a2ac */ sh	$zero,48($v1)
/* 0x8007a2b0 */ addiu	$a0,$a0,1
/* 0x8007a2b4 */ slti	$v0,$a0,16
/* 0x8007a2b8 */ bne $v0,$zero,.L8007a2ac
/* 0x8007a2bc */ addiu	$v1,$v1,2
/* 0x8007a2c0 */ j	0x80079ed0
/* 0x8007a2c4 */ lui	$v0,0x800e
/* 0x8007a2c8 */ lui	$v0,0x800e
/* 0x8007a2cc */ addiu	$s0,$v0,15224
/* 0x8007a2d0 */ lbu	$v0,83($s0)
/* 0x8007a2d4 */ nop
/* 0x8007a2d8 */ beq $v0,$zero,.L8007a3e4
/* 0x8007a2dc */ lui	$v0,0x800b
/* 0x8007a2e0 */ lw	$v0,-14100($v0)
/* 0x8007a2e4 */ lui	$a0,0x8017
/* 0x8007a2e8 */ lw	$a1,144($v0)
/* 0x8007a2ec */ jal	0x8002a9dc
/* 0x8007a2f0 */ ori	$a0,$a0,0x4000
/* 0x8007a2f4 */ addiu $a0,$zero,145
/* 0x8007a2f8 */ addiu $a1,$zero,992
/* 0x8007a2fc */ addiu $a2,$zero,256
/* 0x8007a300 */ addu $a3,$a1,$zero
/* 0x8007a304 */ addiu $v0,$zero,448
/* 0x8007a308 */ jal	0x8007bc1c
/* 0x8007a30c */ sw	$v0,16($sp)
/* 0x8007a310 */ addiu $a0,$zero,140
/* 0x8007a314 */ addiu $a1,$zero,1008
/* 0x8007a318 */ addiu $a2,$zero,256
/* 0x8007a31c */ addiu $a3,$zero,992
/* 0x8007a320 */ addiu $v0,$zero,464
/* 0x8007a324 */ jal	0x8007bc1c
/* 0x8007a328 */ sw	$v0,16($sp)
/* 0x8007a32c */ addiu $a0,$zero,139
/* 0x8007a330 */ addiu $a1,$zero,1016
/* 0x8007a334 */ addiu $a2,$zero,256
/* 0x8007a338 */ addiu $a3,$zero,992
/* 0x8007a33c */ addiu $v0,$zero,480
/* 0x8007a340 */ jal	0x8007bc1c
/* 0x8007a344 */ sw	$v0,16($sp)
/* 0x8007a348 */ jal	0x800930e0
/* 0x8007a34c */ nop
/* 0x8007a350 */ jal	0x8007bd80
/* 0x8007a354 */ nop
/* 0x8007a358 */ lw	$v1,12($s0)
/* 0x8007a35c */ nop
/* 0x8007a360 */ sll	$v0,$v1,0x1
/* 0x8007a364 */ addu	$v0,$v0,$s0
/* 0x8007a368 */ addu $a2,$v1,$zero
/* 0x8007a36c */ lh	$v1,16($v0)
/* 0x8007a370 */ addiu	$a0,$a2,1
/* 0x8007a374 */ addiu	$v1,$v1,1
/* 0x8007a378 */ sh	$v1,16($v0)
/* 0x8007a37c */ slti	$v0,$a0,16
/* 0x8007a380 */ beq $v0,$zero,.L8007a3a0
/* 0x8007a384 */ sll	$v0,$a0,0x1
/* 0x8007a388 */ addu	$a1,$v0,$s0
.L8007a38c:
/* 0x8007a38c */ sh	$zero,16($a1)
/* 0x8007a390 */ addiu	$a0,$a0,1
/* 0x8007a394 */ slti	$v0,$a0,16
/* 0x8007a398 */ bne $v0,$zero,.L8007a38c
/* 0x8007a39c */ addiu	$a1,$a1,2
.L8007a3a0:
/* 0x8007a3a0 */ bne $v1,$zero,.L80079ed0
/* 0x8007a3a4 */ lui	$v0,0x800e
/* 0x8007a3a8 */ addu $a0,$a2,$zero
/* 0x8007a3ac */ slti	$v0,$a0,16
/* 0x8007a3b0 */ beq $v0,$zero,.L80079ecc
/* 0x8007a3b4 */ lui	$v0,0x800e
/* 0x8007a3b8 */ addiu	$v0,$v0,15224
/* 0x8007a3bc */ sll	$v1,$a0,0x1
/* 0x8007a3c0 */ addu	$v1,$v1,$v0
.L8007a3c4:
/* 0x8007a3c4 */ sh	$zero,48($v1)
/* 0x8007a3c8 */ addiu	$a0,$a0,1
/* 0x8007a3cc */ slti	$v0,$a0,16
/* 0x8007a3d0 */ bne $v0,$zero,.L8007a3c4
/* 0x8007a3d4 */ addiu	$v1,$v1,2
/* 0x8007a3d8 */ j	0x80079ed0
/* 0x8007a3dc */ lui	$v0,0x800e
/* 0x8007a3e0 */ addiu $s1,$zero,1
.L8007a3e4:
/* 0x8007a3e4 */ lui	$a0,0x800e
.L8007a3e8:
/* 0x8007a3e8 */ addiu	$a0,$a0,15224
/* 0x8007a3ec */ lw	$v1,12($a0)
/* 0x8007a3f0 */ addu $v0,$s1,$zero
/* 0x8007a3f4 */ addiu	$v1,$v1,-1
/* 0x8007a3f8 */ sw	$v1,12($a0)
/* 0x8007a3fc */ lw	$ra,32($sp)
/* 0x8007a400 */ lw	$s1,28($sp)
/* 0x8007a404 */ lw	$s0,24($sp)
/* 0x8007a408 */ jr $ra
/* 0x8007a40c */ addiu	$sp,$sp,40
.size FUN_80079ea4, .-FUN_80079ea4


