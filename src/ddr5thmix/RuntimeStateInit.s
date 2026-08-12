# DDR 5th Mix runtime-state initializer.
# Semantic MIPS recovered from the hash-gated SLPM_868.97 revision.

.set noreorder
.set noat
.set nomacro

.section .text.FUN_800a6210, "ax", @progbits
.globl FUN_800a6210
.type FUN_800a6210, @function
.ent FUN_800a6210
FUN_800a6210:
.L800a6210:
    addiu   $sp,$sp,-24
.L800a6214:
    lui     $v0,0x800e
.L800a6218:
    addu    $a0,$zero,$zero
.L800a621c:
    sw      $s0,16($sp)
.L800a6220:
    lw      $s0,0xb18($v0)
.L800a6224:
    addiu   $a1,$zero,4
.L800a6228:
    sw      $ra,20($sp)
.L800a622c:
    jal     0x800a6380
.L800a6230:
    addiu   $s0,$s0,0x1310
.L800a6234:
    sh      $v0,2($s0)
.L800a6238:
    lui     $v0,0x800f
.L800a623c:
    lw      $v0,0x2900($v0)
.L800a6240:
    addiu   $v1,$zero,3
.L800a6244:
    andi    $v0,$v0,3
.L800a6248:
    bne     $v0,$v1,.L800a6258
.L800a624c:
    lui     $v1,0x800f
.L800a6250:
    addiu   $v0,$zero,5
.L800a6254:
    sb      $v0,0x2920($v1)
.L800a6258:
    jal     0x800a8ad4
.L800a625c:
    nop
.L800a6260:
    lui     $v0,0x8012
.L800a6264:
    lbu     $v0,-0x7660($v0)
.L800a6268:
    nop
.L800a626c:
    beq     $v0,$zero,.L800a628c
.L800a6270:
    lui     $v0,0x800f
.L800a6274:
    addiu   $v0,$v0,0x2908
.L800a6278:
    lui     $v1,0x1
.L800a627c:
    addu    $v0,$v0,$v1
.L800a6280:
    addiu   $v1,$zero,4
.L800a6284:
    j       0x800a629c
.L800a6288:
    sb      $v1,0x277e($v0)
.L800a628c:
    addiu   $v0,$v0,0x2908
.L800a6290:
    lui     $v1,0x1
.L800a6294:
    addu    $v0,$v0,$v1
.L800a6298:
    sb      $zero,0x277e($v0)
.L800a629c:
    jal     0x8009944c
.L800a62a0:
    nop
.L800a62a4:
    lui     $v1,0x800f
.L800a62a8:
    lw      $ra,20($sp)
.L800a62ac:
    lw      $s0,16($sp)
.L800a62b0:
    addiu   $v0,$zero,1
.L800a62b4:
    sb      $v0,0x291f($v1)
.L800a62b8:
    jr      $ra
.L800a62bc:
    addiu   $sp,$sp,24
.end FUN_800a6210
.size FUN_800a6210, . - FUN_800a6210
