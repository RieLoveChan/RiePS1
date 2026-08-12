# DDR 5th Mix per-player runtime gate/update helper.
# Semantic MIPS recovered from the hash-gated SLPM_868.97 revision.

.set noreorder
.set noat
.set nomacro

.section .text.FUN_80085dc4, "ax", @progbits
.globl FUN_80085dc4
.type FUN_80085dc4, @function
.ent FUN_80085dc4
FUN_80085dc4:
.L80085dc4:
    addiu   $sp,$sp,-24
.L80085dc8:
    sw      $s0,16($sp)
.L80085dcc:
    addu    $s0,$a0,$zero
.L80085dd0:
    lui     $v0,0x800f
.L80085dd4:
    addiu   $v0,$v0,0x2908
.L80085dd8:
    sll     $v1,$s0,3
.L80085ddc:
    addu    $v1,$v1,$s0
.L80085de0:
    sll     $v1,$v1,3
.L80085de4:
    addu    $v1,$v1,$s0
.L80085de8:
    sll     $v1,$v1,2
.L80085dec:
    addu    $v1,$v1,$s0
.L80085df0:
    sll     $v1,$v1,5
.L80085df4:
    addu    $v1,$v1,$s0
.L80085df8:
    sll     $v1,$v1,2
.L80085dfc:
    addu    $v1,$v1,$v0
.L80085e00:
    sw      $ra,20($sp)
.L80085e04:
    lw      $v0,0x20($v1)
.L80085e08:
    nop
.L80085e0c:
    sltiu   $v0,$v0,0x15
.L80085e10:
    bne     $v0,$zero,.L80085e7c
.L80085e14:
    addu    $v0,$zero,$zero
.L80085e18:
    jal     0x800497bc
.L80085e1c:
    nop
.L80085e20:
    beq     $v0,$zero,.L80085e34
.L80085e24:
    lui     $v0,0x800f
.L80085e28:
    bne     $s0,$zero,.L80085e6c
.L80085e2c:
    addu    $v0,$zero,$zero
.L80085e30:
    lui     $v0,0x800f
.L80085e34:
    addiu   $v0,$v0,0x2908
.L80085e38:
    sll     $v1,$s0,3
.L80085e3c:
    addu    $v1,$v1,$s0
.L80085e40:
    sll     $v1,$v1,3
.L80085e44:
    addu    $v1,$v1,$s0
.L80085e48:
    sll     $v1,$v1,2
.L80085e4c:
    addu    $v1,$v1,$s0
.L80085e50:
    sll     $v1,$v1,5
.L80085e54:
    addu    $v1,$v1,$s0
.L80085e58:
    sll     $v1,$v1,2
.L80085e5c:
    addu    $v1,$v1,$v0
.L80085e60:
    lb      $v0,0x24($v1)
.L80085e64:
    nop
.L80085e68:
    sltu    $v0,$zero,$v0
.L80085e6c:
    beq     $v0,$zero,.L80085e7c
.L80085e70:
    addu    $v0,$zero,$zero
.L80085e74:
    jal     0x80097cd4
.L80085e78:
    addu    $a0,$s0,$zero
.L80085e7c:
    lw      $ra,20($sp)
.L80085e80:
    lw      $s0,16($sp)
.L80085e84:
    jr      $ra
.L80085e88:
    addiu   $sp,$sp,24
.end FUN_80085dc4
.size FUN_80085dc4, . - FUN_80085dc4
