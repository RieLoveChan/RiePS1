# DDR 5th Mix runtime synchronization/structure initializer.
# Semantic MIPS recovered from the hash-gated SLPM_868.97 revision.

.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a8b0c, "ax", @progbits
.globl FUN_800a8b0c
.type FUN_800a8b0c, @function
.ent FUN_800a8b0c
FUN_800a8b0c:
.L800a8b0c:
    addiu   $sp,$sp,-24
.L800a8b10:
    lui     $v1,0x8011
.L800a8b14:
    addiu   $v0,$zero,1
.L800a8b18:
    sw      $ra,16($sp)
.L800a8b1c:
    sb      $v0,0x6c25($v1)
.L800a8b20:
    jal     0x800a7938
.L800a8b24:
    nop
.L800a8b28:
    bne     $v0,$zero,.L800a8b50
.L800a8b2c:
    nop
.L800a8b30:
    jal     0x80028034
.L800a8b34:
    nop
.L800a8b38:
    jal     0x8002d630
.L800a8b3c:
    nop
.L800a8b40:
    jal     0x800358f8
.L800a8b44:
    addu    $a0,$zero,$zero
.L800a8b48:
    j       0x800a8b20
.L800a8b4c:
    nop
.L800a8b50:
    jal     0x800aba64
.L800a8b54:
    nop
.L800a8b58:
    jal     0x800a9300
.L800a8b5c:
    addu    $a0,$zero,$zero
.L800a8b60:
    lui     $a0,0x8012
.L800a8b64:
    addiu   $a0,$a0,-0x75b0
.L800a8b68:
    addiu   $a1,$zero,0xc
.L800a8b6c:
    lui     $v1,0x8012
.L800a8b70:
    addiu   $v0,$v1,-0x7590
.L800a8b74:
    sb      $zero,1($v0)
.L800a8b78:
    sw      $zero,4($v0)
.L800a8b7c:
    sb      $zero,2($v0)
.L800a8b80:
    addiu   $v0,$zero,1
.L800a8b84:
    jal     0x8003bac8
.L800a8b88:
    sb      $v0,-0x7590($v1)
.L800a8b8c:
    lui     $a0,0x8012
.L800a8b90:
    addiu   $a0,$a0,-0x7588
.L800a8b94:
    jal     0x8003bac8
.L800a8b98:
    addiu   $a1,$zero,0xc
.L800a8b9c:
    lui     $a0,0x8012
.L800a8ba0:
    addiu   $a0,$a0,-0x75a0
.L800a8ba4:
    jal     0x8003bac8
.L800a8ba8:
    addiu   $a1,$zero,0x10
.L800a8bac:
    lw      $ra,16($sp)
.L800a8bb0:
    nop
.L800a8bb4:
    jr      $ra
.L800a8bb8:
    addiu   $sp,$sp,24
.end FUN_800a8b0c
.size FUN_800a8b0c, . - FUN_800a8b0c
