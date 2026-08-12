# DDR 5th Mix image-resource dispatch and submission helper.
# Semantic MIPS recovered from the hash-gated SLPM_868.97 revision.

.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007bc1c, "ax", @progbits
.globl FUN_8007bc1c
.type FUN_8007bc1c, @function
.ent FUN_8007bc1c
FUN_8007bc1c:
.L8007bc1c:
    addiu   $sp,$sp,-56
.L8007bc20:
    sw      $s0,24($sp)
.L8007bc24:
    addu    $s0,$a0,$zero
.L8007bc28:
    sw      $s3,36($sp)
.L8007bc2c:
    addu    $s3,$a1,$zero
.L8007bc30:
    sw      $s4,40($sp)
.L8007bc34:
    addu    $s4,$a2,$zero
.L8007bc38:
    sw      $s5,44($sp)
.L8007bc3c:
    addu    $s5,$a3,$zero
.L8007bc40:
    sw      $s2,32($sp)
.L8007bc44:
    lw      $s2,72($sp)
.L8007bc48:
    sw      $ra,48($sp)
.L8007bc4c:
    jal     0x80098880
.L8007bc50:
    sw      $s1,28($sp)
.L8007bc54:
    sll     $v1,$s3,2
.L8007bc58:
    sh      $v1,2($v0)
.L8007bc5c:
    addiu   $v1,$s0,-0x87
.L8007bc60:
    sh      $s4,4($v0)
.L8007bc64:
    sh      $s5,0xe($v0)
.L8007bc68:
    sh      $s2,0x10($v0)
.L8007bc6c:
    sltiu   $v0,$v1,0xc
.L8007bc70:
    beq     $v0,$zero,.L8007bd14
.L8007bc74:
    lui     $v0,0x8002
.L8007bc78:
    addiu   $v0,$v0,-0x2844
.L8007bc7c:
    sll     $v1,$v1,2
.L8007bc80:
    addu    $v1,$v1,$v0
.L8007bc84:
    lw      $v0,0($v1)
.L8007bc88:
    nop
.L8007bc8c:
    jr      $v0
.L8007bc90:
    nop
.L8007bc94:
    lui     $v0,0x800d
.L8007bc98:
    j       0x8007bd14
.L8007bc9c:
    addiu   $s1,$v0,-0x20e0
.L8007bca0:
    lui     $v0,0x800d
.L8007bca4:
    j       0x8007bd14
.L8007bca8:
    addiu   $s1,$v0,-0x1590
.L8007bcac:
    lui     $v0,0x800d
.L8007bcb0:
    j       0x8007bd14
.L8007bcb4:
    addiu   $s1,$v0,-0xa20
.L8007bcb8:
    lui     $v0,0x800d
.L8007bcbc:
    j       0x8007bd14
.L8007bcc0:
    addiu   $s1,$v0,0xac
.L8007bcc4:
    lui     $v0,0x800d
.L8007bcc8:
    j       0x8007bd14
.L8007bccc:
    addiu   $s1,$v0,0x1c09
.L8007bcd0:
    lui     $v0,0x800d
.L8007bcd4:
    j       0x8007bd14
.L8007bcd8:
    addiu   $s1,$v0,0x2022
.L8007bcdc:
    lui     $v0,0x800d
.L8007bce0:
    j       0x8007bd14
.L8007bce4:
    addiu   $s1,$v0,0x2481
.L8007bce8:
    lui     $v0,0x800d
.L8007bcec:
    j       0x8007bd14
.L8007bcf0:
    addiu   $s1,$v0,0x2d94
.L8007bcf4:
    lui     $v0,0x800d
.L8007bcf8:
    j       0x8007bd14
.L8007bcfc:
    addiu   $s1,$v0,0x346d
.L8007bd00:
    lui     $v0,0x800d
.L8007bd04:
    j       0x8007bd14
.L8007bd08:
    addiu   $s1,$v0,0x3b2d
.L8007bd0c:
    lui     $v0,0x800d
.L8007bd10:
    addiu   $s1,$v0,0x5a02
.L8007bd14:
    addu    $a0,$s1,$zero
.L8007bd18:
    lui     $a1,0x801f
.L8007bd1c:
    jal     0x8002a8b8
.L8007bd20:
    ori     $a1,$a1,0x4000
.L8007bd24:
    sll     $v0,$s2,16
.L8007bd28:
    sra     $v0,$v0,16
.L8007bd2c:
    lui     $a0,0x801f
.L8007bd30:
    ori     $a0,$a0,0x4000
.L8007bd34:
    addiu   $a1,$zero,-0x8000
.L8007bd38:
    or      $a1,$s3,$a1
.L8007bd3c:
    sll     $a1,$a1,16
.L8007bd40:
    sra     $a1,$a1,16
.L8007bd44:
    sll     $a2,$s4,16
.L8007bd48:
    sll     $a3,$s5,16
.L8007bd4c:
    sra     $a2,$a2,16
.L8007bd50:
    sra     $a3,$a3,16
.L8007bd54:
    jal     0x800223a8
.L8007bd58:
    sw      $v0,16($sp)
.L8007bd5c:
    lw      $ra,48($sp)
.L8007bd60:
    lw      $s5,44($sp)
.L8007bd64:
    lw      $s4,40($sp)
.L8007bd68:
    lw      $s3,36($sp)
.L8007bd6c:
    lw      $s2,32($sp)
.L8007bd70:
    lw      $s1,28($sp)
.L8007bd74:
    lw      $s0,24($sp)
.L8007bd78:
    jr      $ra
.L8007bd7c:
    addiu   $sp,$sp,56
.end FUN_8007bc1c
.size FUN_8007bc1c, . - FUN_8007bc1c
