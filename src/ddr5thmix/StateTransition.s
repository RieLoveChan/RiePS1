.set noreorder
.set noat
.set nomacro

.section .text.FUN_80025850,"ax",@progbits
.globl FUN_80025850
.type FUN_80025850, @function
.ent FUN_80025850
FUN_80025850:
    lui     $v0,0x800e
    lw      $v1,14296($v0)
    addiu   $sp,$sp,-24
    sw      $ra,20($sp)
    slti    $v0,$v1,3
    bne     $v0,$zero,.L80025888
    sw      $s0,16($sp)
    slti    $v0,$v1,5
    bne     $v0,$zero,.L8002591c
    slti    $v0,$v1,8
    beq     $v0,$zero,.L80025888
    slti    $v0,$v1,6
    beq     $v0,$zero,.L8002591c
    nop
.L80025888:
    lui     $v0,0x800e
    addiu   $s0,$v0,14184
    lw      $v1,14184($v0)
    addiu   $v0,$zero,4
    beq     $v1,$v0,.L8002591c
    nop
    jal     FUN_80028f74
    nop
    beq     $v0,$zero,.L8002591c
    nop
    jal     FUN_8002592c
    nop
    bne     $v0,$zero,.L8002591c
    lui     $v0,0x800e
    addiu   $a0,$v0,14888
    lw      $v1,256($a0)
    addiu   $v0,$zero,1
    beq     $v1,$v0,.L800258ec
    nop
    beq     $v1,$zero,.L8002591c
    addiu   $v0,$zero,2
    beq     $v1,$v0,.L8002590c
    addiu   $v0,$zero,3
    j       .L8002591c
    nop
.L800258ec:
    lw      $v0,264($a0)
    nop
    addiu   $v0,$v0,-1
    sltiu   $v0,$v0,106
    beq     $v0,$zero,.L8002591c
    addu    $a0,$zero,$zero
    j       .L80025914
    sw      $v1,112($s0)
.L8002590c:
    sw      $v0,112($s0)
    addiu   $a0,$zero,1
.L80025914:
    jal     FUN_8002a174
    nop
.L8002591c:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
.end FUN_80025850
.size FUN_80025850, . - FUN_80025850
