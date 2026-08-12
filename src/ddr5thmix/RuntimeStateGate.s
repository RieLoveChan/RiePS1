# DDR 5th Mix runtime state-transition gate.
# Semantic MIPS recovered from the hash-gated SLPM_868.97 revision.

.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007b778, "ax", @progbits
.globl FUN_8007b778
.type FUN_8007b778, @function
.ent FUN_8007b778
FUN_8007b778:
.L8007b778:
    addiu   $sp,$sp,-24
.L8007b77c:
    andi    $v0,$a1,0x10
.L8007b780:
    beq     $v0,$zero,.L8007b7a4
.L8007b784:
    sw      $ra,16($sp)
.L8007b788:
    lui     $v0,0x800e
.L8007b78c:
    lbu     $v0,0x3bc9($v0)
.L8007b790:
    nop
.L8007b794:
    bne     $v0,$a0,.L8007b7a8
.L8007b798:
    lui     $v1,0x8011
.L8007b79c:
    j       0x8007b870
.L8007b7a0:
    addu    $v0,$zero,$zero
.L8007b7a4:
    lui     $v1,0x8011
.L8007b7a8:
    lui     $v0,0x800e
.L8007b7ac:
    addiu   $t0,$v0,0x3b78
.L8007b7b0:
    lw      $a3,0xc($t0)
.L8007b7b4:
    addiu   $v0,$zero,1
.L8007b7b8:
    sb      $v0,0x6c25($v1)
.L8007b7bc:
    addiu   $a2,$a3,1
.L8007b7c0:
    sll     $v0,$a3,1
.L8007b7c4:
    addu    $v0,$v0,$t0
.L8007b7c8:
    sh      $zero,0x10($v0)
.L8007b7cc:
    slti    $v0,$a2,0x10
.L8007b7d0:
    beq     $v0,$zero,.L8007b7f0
.L8007b7d4:
    sll     $v0,$a2,1
.L8007b7d8:
    addu    $v1,$v0,$t0
.L8007b7dc:
    sh      $zero,0x10($v1)
.L8007b7e0:
    addiu   $a2,$a2,1
.L8007b7e4:
    slti    $v0,$a2,0x10
.L8007b7e8:
    bne     $v0,$zero,.L8007b7dc
.L8007b7ec:
    addiu   $v1,$v1,2
.L8007b7f0:
    addu    $a2,$a3,$zero
.L8007b7f4:
    slti    $v0,$a2,0x10
.L8007b7f8:
    beq     $v0,$zero,.L8007b820
.L8007b7fc:
    lui     $v0,0x800e
.L8007b800:
    addiu   $v0,$v0,0x3b78
.L8007b804:
    sll     $v1,$a2,1
.L8007b808:
    addu    $v1,$v1,$v0
.L8007b80c:
    sh      $zero,0x30($v1)
.L8007b810:
    addiu   $a2,$a2,1
.L8007b814:
    slti    $v0,$a2,0x10
.L8007b818:
    bne     $v0,$zero,.L8007b80c
.L8007b81c:
    addiu   $v1,$v1,2
.L8007b820:
    lui     $v0,0x800e
.L8007b824:
    addiu   $v0,$v0,0x3b78
.L8007b828:
    addiu   $v1,$zero,1
.L8007b82c:
    sb      $v1,0x50($v0)
.L8007b830:
    sb      $a0,0x51($v0)
.L8007b834:
    sb      $zero,0x53($v0)
.L8007b838:
    andi    $v0,$a1,1
.L8007b83c:
    bne     $v0,$zero,.L8007b864
.L8007b840:
    nop
.L8007b844:
    jal     0x8007638c
.L8007b848:
    nop
.L8007b84c:
    bne     $v0,$zero,.L8007b870
.L8007b850:
    addiu   $v0,$zero,1
.L8007b854:
    jal     0x800358f8
.L8007b858:
    addu    $a0,$zero,$zero
.L8007b85c:
    j       0x8007b844
.L8007b860:
    nop
.L8007b864:
    jal     0x8007638c
.L8007b868:
    nop
.L8007b86c:
    addiu   $v0,$zero,1
.L8007b870:
    lw      $ra,16($sp)
.L8007b874:
    nop
.L8007b878:
    jr      $ra
.L8007b87c:
    addiu   $sp,$sp,24
.end FUN_8007b778
.size FUN_8007b778, . - FUN_8007b778
