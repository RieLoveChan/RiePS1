# DDR 5th Mix indexed runtime-record initializer.
# Semantic MIPS recovered from the hash-gated SLPM_868.97 revision.

.set noreorder
.set noat
.set nomacro

.section .text.FUN_8009ddcc, "ax", @progbits
.globl FUN_8009ddcc
.type FUN_8009ddcc, @function
.ent FUN_8009ddcc
FUN_8009ddcc:
.L8009ddcc:
    addiu   $sp,$sp,-32
.L8009ddd0:
    sw      $s2,24($sp)
.L8009ddd4:
    addu    $s2,$a0,$zero
.L8009ddd8:
    addu    $a0,$zero,$zero
.L8009dddc:
    sw      $ra,28($sp)
.L8009dde0:
    sw      $s1,20($sp)
.L8009dde4:
    jal     0x8009d54c
.L8009dde8:
    sw      $s0,16($sp)
.L8009ddec:
    lui     $s0,0x800e
.L8009ddf0:
    addiu   $a1,$zero,0x9b0
.L8009ddf4:
    addu    $v1,$s2,$zero
.L8009ddf8:
    lui     $a2,0x8012
.L8009ddfc:
    lw      $v0,0xb1c($s0)
.L8009de00:
    andi    $v1,$v1,0xff
.L8009de04:
    sb      $zero,0x84($v0)
.L8009de08:
    sll     $v0,$v1,2
.L8009de0c:
    addu    $v0,$v0,$v1
.L8009de10:
    sll     $a0,$v0,5
.L8009de14:
    subu    $a0,$a0,$v0
.L8009de18:
    lw      $v0,-0x76d8($a2)
.L8009de1c:
    sll     $a0,$a0,4
.L8009de20:
    jal     0x8003bac8
.L8009de24:
    addu    $a0,$v0,$a0
.L8009de28:
    lui     $s1,0x800e
.L8009de2c:
    lw      $a0,0xe1c($s1)
.L8009de30:
    jal     0x8003bac8
.L8009de34:
    addiu   $a1,$zero,0xc
.L8009de38:
    lw      $a0,0xb1c($s0)
.L8009de3c:
    jal     0x8003bac8
.L8009de40:
    addiu   $a1,$zero,0x90
.L8009de44:
    lw      $v0,0xb1c($s0)
.L8009de48:
    nop
.L8009de4c:
    sb      $s2,0xc($v0)
.L8009de50:
    lw      $v1,0xb1c($s0)
.L8009de54:
    addiu   $v0,$zero,5
.L8009de58:
    sb      $v0,0xd($v1)
.L8009de5c:
    lw      $v1,0xe1c($s1)
.L8009de60:
    addiu   $v0,$zero,1
.L8009de64:
    sb      $v0,2($v1)
.L8009de68:
    lw      $ra,28($sp)
.L8009de6c:
    lw      $s2,24($sp)
.L8009de70:
    lw      $s1,20($sp)
.L8009de74:
    lw      $s0,16($sp)
.L8009de78:
    jr      $ra
.L8009de7c:
    addiu   $sp,$sp,32
.end FUN_8009ddcc
.size FUN_8009ddcc, . - FUN_8009ddcc
