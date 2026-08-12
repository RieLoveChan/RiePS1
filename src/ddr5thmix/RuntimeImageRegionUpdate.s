# DDR 5th Mix indexed runtime-image region updater.
# Semantic MIPS recovered from the hash-gated SLPM_868.97 revision.

.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007ba94, "ax", @progbits
.globl FUN_8007ba94
.type FUN_8007ba94, @function
.ent FUN_8007ba94
FUN_8007ba94:
.L8007ba94:
    addiu   $sp,$sp,-40
.L8007ba98:
    lui     $a3,0x8013
.L8007ba9c:
    sll     $v0,$a1,1
.L8007baa0:
    addu    $v0,$v0,$a1
.L8007baa4:
    sll     $v0,$v0,1
.L8007baa8:
    sw      $s0,24($sp)
.L8007baac:
    addu    $s0,$v0,$a2
.L8007bab0:
    sltiu   $v0,$s0,0x67
.L8007bab4:
    sw      $ra,32($sp)
.L8007bab8:
    beq     $v0,$zero,.L8007bb44
.L8007babc:
    sw      $s1,28($sp)
.L8007bac0:
    lui     $v0,0x800e
.L8007bac4:
    addiu   $v0,$v0,-0xd94
.L8007bac8:
    sll     $v1,$a0,1
.L8007bacc:
    addu    $s1,$v1,$v0
.L8007bad0:
    lh      $v0,0($s1)
.L8007bad4:
    nop
.L8007bad8:
    beq     $v0,$s0,.L8007bb44
.L8007badc:
    addiu   $v0,$a0,0x1f6
.L8007bae0:
    sll     $v0,$v0,16
.L8007bae4:
    sra     $v0,$v0,16
.L8007bae8:
    sll     $a1,$a0,6
.L8007baec:
    addiu   $a1,$a1,0x320
.L8007baf0:
    sll     $a0,$s0,2
.L8007baf4:
    addu    $a0,$a0,$s0
.L8007baf8:
    sll     $a0,$a0,4
.L8007bafc:
    addu    $a0,$a0,$s0
.L8007bb00:
    sll     $a0,$a0,2
.L8007bb04:
    subu    $a0,$a0,$s0
.L8007bb08:
    lw      $v1,0x10($a3)
.L8007bb0c:
    sll     $a0,$a0,3
.L8007bb10:
    sw      $v0,16($sp)
.L8007bb14:
    addiu   $v0,$zero,-0x8000
.L8007bb18:
    or      $a1,$a1,$v0
.L8007bb1c:
    sll     $a1,$a1,16
.L8007bb20:
    sra     $a1,$a1,16
.L8007bb24:
    addiu   $a2,$zero,0x80
.L8007bb28:
    addu    $a3,$v1,$a3
.L8007bb2c:
    addu    $a0,$a3,$a0
.L8007bb30:
    jal     0x800223a8
.L8007bb34:
    addiu   $a3,$zero,0x280
.L8007bb38:
    addiu   $v0,$zero,1
.L8007bb3c:
    j       0x8007bb48
.L8007bb40:
    sh      $s0,0($s1)
.L8007bb44:
    addu    $v0,$zero,$zero
.L8007bb48:
    lw      $ra,32($sp)
.L8007bb4c:
    lw      $s1,28($sp)
.L8007bb50:
    lw      $s0,24($sp)
.L8007bb54:
    jr      $ra
.L8007bb58:
    addiu   $sp,$sp,40
.end FUN_8007ba94
.size FUN_8007ba94, . - FUN_8007ba94
