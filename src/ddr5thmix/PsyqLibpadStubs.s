    .set noreorder
    .set noat
    .set nomacro

    .section .text.EnablePAD,"ax",@progbits
    .globl EnablePAD
    .type EnablePAD, @function
    .ent EnablePAD
EnablePAD:
    lui     $t1, 0x800e
    lw      $t1, 29360($t1)
    nop
    jr      $t1
    nop
    .end EnablePAD
    .size EnablePAD, . - EnablePAD

    .section .text.DisablePAD,"ax",@progbits
    .globl DisablePAD
    .type DisablePAD, @function
    .ent DisablePAD
DisablePAD:
    lui     $t1, 0x800e
    lw      $t1, 29364($t1)
    nop
    jr      $t1
    nop
    .end DisablePAD
    .size DisablePAD, . - DisablePAD

    .section .text.SetInitPadFlag,"ax",@progbits
    .globl SetInitPadFlag
    .type SetInitPadFlag, @function
    .ent SetInitPadFlag
SetInitPadFlag:
    lui     $at, 0x800e
    jr      $ra
    sw      $a0, -29188($at)
    .end SetInitPadFlag
    .size SetInitPadFlag, . - SetInitPadFlag

    .section .text.ReadInitPadFlag,"ax",@progbits
    .globl ReadInitPadFlag
    .type ReadInitPadFlag, @function
    .ent ReadInitPadFlag
ReadInitPadFlag:
    lui     $v0, 0x800e
    lw      $v0, -29188($v0)
    jr      $ra
    nop
    .end ReadInitPadFlag
    .size ReadInitPadFlag, . - ReadInitPadFlag

    .section .text.PadChkVsync,"ax",@progbits
    .globl PadChkVsync
    .type PadChkVsync, @function
    .ent PadChkVsync
PadChkVsync:
    addiu   $sp, $sp, -24
    sw      $ra, 16($sp)
    jal     _padChkVsync
    nop
    lw      $ra, 16($sp)
    addiu   $sp, $sp, 24
    jr      $ra
    nop
    .end PadChkVsync
    .size PadChkVsync, . - PadChkVsync

    .section .text.PadStartCom,"ax",@progbits
    .globl PadStartCom
    .type PadStartCom, @function
    .ent PadStartCom
PadStartCom:
    addiu   $sp, $sp, -24
    sw      $ra, 16($sp)
    jal     _padStartCom
    nop
    lw      $ra, 16($sp)
    addiu   $sp, $sp, 24
    jr      $ra
    nop
    .end PadStartCom
    .size PadStartCom, . - PadStartCom

    .section .text.PadStopCom,"ax",@progbits
    .globl PadStopCom
    .type PadStopCom, @function
    .ent PadStopCom
PadStopCom:
    addiu   $sp, $sp, -24
    sw      $ra, 16($sp)
    jal     _padStopCom
    nop
    lw      $ra, 16($sp)
    addiu   $sp, $sp, 24
    jr      $ra
    nop
    .end PadStopCom
    .size PadStopCom, . - PadStopCom

    .section .text._padChkVsync,"ax",@progbits
    .globl _padChkVsync
    .type _padChkVsync, @function
    .ent _padChkVsync
_padChkVsync:
    lui     $v0, 0x800e
    lw      $v0, -29060($v0)
    lui     $at, 0x800e
    jr      $ra
    sw      $zero, -29060($at)
    .end _padChkVsync
    .size _padChkVsync, . - _padChkVsync

    .section .text._padSetAct,"ax",@progbits
    .globl _padSetAct
    .type _padSetAct, @function
    .ent _padSetAct
_padSetAct:
    sw      $a1, 0x28($a0)
    jr      $ra
    sb      $a2, 0x34($a0)
    .end _padSetAct
    .size _padSetAct, . - _padSetAct

    .section .text._padSetCmd,"ax",@progbits
    .globl _padSetCmd
    .type _padSetCmd, @function
    .ent _padSetCmd
_padSetCmd:
    sb      $a1, 0x37($a0)
    sw      $a2, 0x2c($a0)
    jr      $ra
    sb      $a3, 0x36($a0)
    .end _padSetCmd
    .size _padSetCmd, . - _padSetCmd

    .section .text._padCmdParaMode,"ax",@progbits
    .globl _padCmdParaMode
    .type _padCmdParaMode, @function
    .ent _padCmdParaMode
_padCmdParaMode:
    li      $v0, 0x43
    sb      $v0, 0x37($a0)
    addiu   $v0, $a0, 0x24
    sw      $v0, 0x2c($a0)
    li      $v0, 0x1
    sb      $a1, 0x24($a0)
    jr      $ra
    sb      $v0, 0x36($a0)
    .end _padCmdParaMode
    .size _padCmdParaMode, . - _padCmdParaMode
