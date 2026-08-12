# DDR 5th Mix runtime object/model initialization helper.
# Semantic MIPS recovered from the hash-gated SLPM_868.97 revision.

.set noreorder
.set noat
.set nomacro

.section .text.FUN_8007c074, "ax", @progbits
.globl FUN_8007c074
.type FUN_8007c074, @function
.ent FUN_8007c074
FUN_8007c074:
.L8007c074:
    addiu   $sp,$sp,-64
.L8007c078:
    lui     $v0,0x800f
.L8007c07c:
    sw      $s5,44($sp)
.L8007c080:
    addiu   $s5,$v0,0x3570
.L8007c084:
    sw      $s7,52($sp)
.L8007c088:
    addiu   $s7,$s5,-0xb84
.L8007c08c:
    sw      $s0,24($sp)
.L8007c090:
    lui     $s0,0x8019
.L8007c094:
    ori     $s0,$s0,8
.L8007c098:
    lui     $v0,0x8019
.L8007c09c:
    sw      $ra,56($sp)
.L8007c0a0:
    sw      $s6,48($sp)
.L8007c0a4:
    sw      $s4,40($sp)
.L8007c0a8:
    sw      $s3,36($sp)
.L8007c0ac:
    sw      $s2,32($sp)
.L8007c0b0:
    sw      $s1,28($sp)
.L8007c0b4:
    lw      $a0,0($s0)
.L8007c0b8:
    ori     $v0,$v0,4
.L8007c0bc:
    jal     0x8007c470
.L8007c0c0:
    addu    $a0,$a0,$v0
.L8007c0c4:
    lui     $a1,0x8019
.L8007c0c8:
    ori     $a1,$a1,0xc
.L8007c0cc:
    addiu   $t0,$zero,0x1e
.L8007c0d0:
    addiu   $a2,$zero,0xf
.L8007c0d4:
    addiu   $a3,$s5,0x3c
.L8007c0d8:
    lui     $v0,0x8019
.L8007c0dc:
    lw      $v0,0x10($v0)
.L8007c0e0:
    lui     $v1,0x8019
.L8007c0e4:
    addu    $v0,$v0,$v1
.L8007c0e8:
    addu    $s4,$v0,$zero
.L8007c0ec:
    sw      $s4,0x2a0($s5)
.L8007c0f0:
    lw      $v0,0($s0)
.L8007c0f4:
    lw      $a0,0($v1)
.L8007c0f8:
    addu    $v0,$v0,$a1
.L8007c0fc:
    addu    $a0,$a0,$v1
.L8007c100:
    sw      $v0,0x29c($s5)
.L8007c104:
    lbu     $s6,0($a0)
.L8007c108:
    sw      $t0,0x258($a3)
.L8007c10c:
    addiu   $a2,$a2,-1
.L8007c110:
    bgez    $a2,.L8007c108
.L8007c114:
    addiu   $a3,$a3,-4
.L8007c118:
    beq     $s6,$zero,.L8007c1ec
.L8007c11c:
    addu    $s2,$zero,$zero
.L8007c120:
    addu    $s3,$a0,$zero
.L8007c124:
    addu    $s1,$s5,$zero
.L8007c128:
    addu    $a1,$s1,$zero
.L8007c12c:
    lw      $a0,0x29c($s5)
.L8007c130:
    jal     0x8007c4e0
.L8007c134:
    addu    $a2,$s2,$zero
.L8007c138:
    addu    $a0,$s1,$zero
.L8007c13c:
    jal     0x8007c4fc
.L8007c140:
    addu    $a1,$s4,$zero
.L8007c144:
    lbu     $a2,1($s3)
.L8007c148:
    nop
.L8007c14c:
    sll     $a1,$a2,2
.L8007c150:
    addu    $a0,$s5,$a1
.L8007c154:
    lw      $v1,0x258($a0)
.L8007c158:
    nop
.L8007c15c:
    slt     $v1,$s2,$v1
.L8007c160:
    beq     $v1,$zero,.L8007c16c
.L8007c164:
    addu    $s4,$v0,$zero
.L8007c168:
    sw      $s2,0x258($a0)
.L8007c16c:
    addu    $v0,$a1,$a2
.L8007c170:
    sll     $v0,$v0,4
.L8007c174:
    addiu   $v0,$v0,0xa0
.L8007c178:
    addu    $v0,$s7,$v0
.L8007c17c:
    sw      $v0,4($s1)
.L8007c180:
    addu    $a0,$s1,$zero
.L8007c184:
    addiu   $a1,$sp,16
.L8007c188:
    addiu   $a2,$sp,18
.L8007c18c:
    jal     0x80097f18
.L8007c190:
    addiu   $a3,$sp,20
.L8007c194:
    beq     $v0,$zero,.L8007c1d8
.L8007c198:
    addu    $a0,$zero,$zero
.L8007c19c:
    addu    $a1,$a0,$zero
.L8007c1a0:
    addiu   $a2,$zero,0x240
.L8007c1a4:
    lhu     $s0,16($sp)
.L8007c1a8:
    addu    $a3,$a0,$zero
.L8007c1ac:
    jal     0x8004ee70
.L8007c1b0:
    addiu   $s0,$s0,0xc0
.L8007c1b4:
    addiu   $a0,$zero,0x270
.L8007c1b8:
    andi    $a1,$s0,0xffff
.L8007c1bc:
    jal     0x8007636c
.L8007c1c0:
    andi    $s0,$v0,0xffff
.L8007c1c4:
    addu    $a0,$s1,$zero
.L8007c1c8:
    addu    $a1,$s0,$zero
.L8007c1cc:
    andi    $a2,$v0,0xffff
.L8007c1d0:
    jal     0x80097eb8
.L8007c1d4:
    addiu   $a3,$zero,3
.L8007c1d8:
    addiu   $s3,$s3,2
.L8007c1dc:
    addiu   $s2,$s2,1
.L8007c1e0:
    slt     $v0,$s2,$s6
.L8007c1e4:
    bne     $v0,$zero,.L8007c128
.L8007c1e8:
    addiu   $s1,$s1,20
.L8007c1ec:
    sw      $s6,0x298($s5)
.L8007c1f0:
    lw      $ra,56($sp)
.L8007c1f4:
    lw      $s7,52($sp)
.L8007c1f8:
    lw      $s6,48($sp)
.L8007c1fc:
    lw      $s5,44($sp)
.L8007c200:
    lw      $s4,40($sp)
.L8007c204:
    lw      $s3,36($sp)
.L8007c208:
    lw      $s2,32($sp)
.L8007c20c:
    lw      $s1,28($sp)
.L8007c210:
    lw      $s0,24($sp)
.L8007c214:
    jr      $ra
.L8007c218:
    addiu   $sp,$sp,64
.end FUN_8007c074
.size FUN_8007c074, . - FUN_8007c074
