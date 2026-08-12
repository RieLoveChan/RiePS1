# DDR 5th Mix twelve-image TIM batch initializer.
# Semantic MIPS recovered from the hash-gated SLPM_868.97 revision.

.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007bee4, "ax", @progbits
.globl FUN_8007bee4
.type FUN_8007bee4, @function
.ent FUN_8007bee4
FUN_8007bee4:
.L8007bee4:
    addiu   $sp,$sp,-96
.L8007bee8:
    sw      $s4,80($sp)
.L8007beec:
    addiu   $s4,$zero,0x240
.L8007bef0:
    sw      $s3,76($sp)
.L8007bef4:
    addu    $s3,$zero,$zero
.L8007bef8:
    lui     $a0,0x800b
.L8007befc:
    sw      $s0,64($sp)
.L8007bf00:
    lui     $s0,0x800b
.L8007bf04:
    lw      $v0,-0x3714($s0)
.L8007bf08:
    addiu   $a0,$a0,-0x1b70
.L8007bf0c:
    sw      $s2,72($sp)
.L8007bf10:
    addu    $s2,$zero,$zero
.L8007bf14:
    sw      $ra,92($sp)
.L8007bf18:
    sw      $s6,88($sp)
.L8007bf1c:
    sw      $s5,84($sp)
.L8007bf20:
    sw      $s1,68($sp)
.L8007bf24:
    lw      $a1,0x90($v0)
.L8007bf28:
    jal     0x8002a9dc
.L8007bf2c:
    addiu   $s6,$zero,0x7c1f
.L8007bf30:
    addiu   $s5,$zero,0x4000
.L8007bf34:
    lui     $s1,0x8019
.L8007bf38:
    lw      $v0,-0x3714($s0)
.L8007bf3c:
    lui     $a0,0x8019
.L8007bf40:
    lw      $a0,0x14($a0)
.L8007bf44:
    lw      $a1,0x90($v0)
.L8007bf48:
    jal     0x8002a9dc
.L8007bf4c:
    addu    $a0,$a0,$s1
.L8007bf50:
    lw      $v0,-0x3714($s0)
.L8007bf54:
    lui     $a0,0x8019
.L8007bf58:
    lw      $a0,0x10($a0)
.L8007bf5c:
    lw      $s0,0x90($v0)
.L8007bf60:
    addu    $a0,$a0,$s1
.L8007bf64:
    jal     0x8002a8b8
.L8007bf68:
    addu    $a1,$s0,$zero
.L8007bf6c:
    addiu   $a0,$s0,4
.L8007bf70:
    jal     0x80038028
.L8007bf74:
    addiu   $a1,$sp,32
.L8007bf78:
    bgez    $s2,.L8007bf84
.L8007bf7c:
    addu    $v1,$s2,$zero
.L8007bf80:
    addiu   $v1,$s2,3
.L8007bf84:
    addu    $a3,$zero,$zero
.L8007bf88:
    sra     $v1,$v1,2
.L8007bf8c:
    sll     $v0,$v1,4
.L8007bf90:
    sll     $v1,$v1,2
.L8007bf94:
    subu    $v1,$s2,$v1
.L8007bf98:
    sll     $v1,$v1,6
.L8007bf9c:
    sh      $v1,26($sp)
.L8007bfa0:
    lhu     $v1,40($sp)
.L8007bfa4:
    lhu     $a0,42($sp)
.L8007bfa8:
    lhu     $a1,52($sp)
.L8007bfac:
    lhu     $a2,54($sp)
.L8007bfb0:
    addu    $v0,$s4,$v0
.L8007bfb4:
    sh      $v0,24($sp)
.L8007bfb8:
    addiu   $v0,$s4,48
.L8007bfbc:
    sh      $v0,16($sp)
.L8007bfc0:
    addiu   $v0,$s2,192
.L8007bfc4:
    sh      $v0,18($sp)
.L8007bfc8:
    sh      $v1,28($sp)
.L8007bfcc:
    sh      $a0,30($sp)
.L8007bfd0:
    sh      $a1,20($sp)
.L8007bfd4:
    sh      $a2,22($sp)
.L8007bfd8:
    lw      $v0,56($sp)
.L8007bfdc:
    sll     $v1,$a3,1
.L8007bfe0:
    addu    $a0,$v0,$v1
.L8007bfe4:
    lhu     $v1,0($a0)
.L8007bfe8:
    nop
.L8007bfec:
    andi    $v0,$v1,0x7fff
.L8007bff0:
    bne     $v0,$s6,.L8007c000
.L8007bff4:
    andi    $v0,$v1,0xffff
.L8007bff8:
    j       0x8007c00c
.L8007bffc:
    sh      $zero,0($a0)
.L8007c000:
    bne     $v0,$zero,.L8007c00c
.L8007c004:
    nop
.L8007c008:
    sh      $s5,0($a0)
.L8007c00c:
    addiu   $a3,$a3,1
.L8007c010:
    slti    $v0,$a3,16
.L8007c014:
    bne     $v0,$zero,.L8007bfd8
.L8007c018:
    addiu   $a0,$sp,24
.L8007c01c:
    addiu   $s0,$s0,0x840
.L8007c020:
    lw      $a1,44($sp)
.L8007c024:
    jal     0x80038810
.L8007c028:
    addiu   $s2,$s2,1
.L8007c02c:
    lw      $a1,56($sp)
.L8007c030:
    jal     0x80038810
.L8007c034:
    addiu   $a0,$sp,16
.L8007c038:
    jal     0x80038564
.L8007c03c:
    addu    $a0,$zero,$zero
.L8007c040:
    slti    $v0,$s2,12
.L8007c044:
    bne     $v0,$zero,.L8007bf6c
.L8007c048:
    addiu   $v0,$zero,1
.L8007c04c:
    lw      $ra,92($sp)
.L8007c050:
    lw      $s6,88($sp)
.L8007c054:
    lw      $s5,84($sp)
.L8007c058:
    lw      $s4,80($sp)
.L8007c05c:
    lw      $s3,76($sp)
.L8007c060:
    lw      $s2,72($sp)
.L8007c064:
    lw      $s1,68($sp)
.L8007c068:
    lw      $s0,64($sp)
.L8007c06c:
    jr      $ra
.L8007c070:
    addiu   $sp,$sp,96
.end FUN_8007bee4
.size FUN_8007bee4, . - FUN_8007bee4
