    .set noreorder
    .set noat
    .set nomacro

/* BIOS_OBJ_1440 (0x80041308, 80 bytes) */
    .section .text.BIOS_OBJ_1440,"ax",@progbits
    .globl BIOS_OBJ_1440
    .globl sym_80041258
    .type BIOS_OBJ_1440, @function
    .ent BIOS_OBJ_1440
BIOS_OBJ_1440:
    bne     $v0,$zero,.LBIOS_OBJ_1440_30
    addiu   $v0,$zero,-1
    lui     $v0,0x800e
    lw      $v0,-28052($v0)
    sll     $zero,$zero,0x0
    lw      $v0,0($v0)
    lui     $v1,0x100
    and     $v0,$v0,$v1
    beq     $v0,$zero,.LBIOS_OBJ_1440_30
    addu    $v0,$zero,$zero
    beq     $s2,$zero,sym_80041258
    addiu   $v0,$zero,1
.LBIOS_OBJ_1440_30:
    lw      $ra,44($sp)
    lw      $s4,40($sp)
    lw      $s3,36($sp)
    lw      $s2,32($sp)
    lw      $s1,28($sp)
    lw      $s0,24($sp)
    jr      $ra
    addiu   $sp,$sp,48
    .end BIOS_OBJ_1440
    .size BIOS_OBJ_1440, . - BIOS_OBJ_1440

/* BIOS_OBJ_35C (0x80040224, 76 bytes) */
    .section .text.BIOS_OBJ_35C,"ax",@progbits
    .globl BIOS_OBJ_35C
    .globl sym_80040410
    .type BIOS_OBJ_35C, @function
    .ent BIOS_OBJ_35C
BIOS_OBJ_35C:
    beq     $s1,$zero,.LBIOS_OBJ_35C_c
    addiu   $v0,$zero,2
    addiu   $v0,$zero,5
.LBIOS_OBJ_35C_c:
    lui     $at,0x800e
    sb      $v0,-28096($at)
    lui     $v1,0x800e
    addiu   $v1,$v1,30064
    beq     $v1,$zero,.LBIOS_OBJ_35C_44
    addiu   $a1,$sp,24
    addiu   $a0,$zero,7
    addiu   $a2,$zero,-1
.LBIOS_OBJ_35C_2c:
    lbu     $v0,0($a1)
    addiu   $a1,$a1,1
    addiu   $a0,$a0,-1
    sb      $v0,0($v1)
    bne     $a0,$a2,.LBIOS_OBJ_35C_2c
    addiu   $v1,$v1,1
.LBIOS_OBJ_35C_44:
    j       sym_80040410
    addiu   $v0,$zero,2
    .end BIOS_OBJ_35C
    .size BIOS_OBJ_35C, . - BIOS_OBJ_35C

/* CD_initintr (0x80040fc4, 76 bytes) */
    .section .text.CD_initintr,"ax",@progbits
    .globl CD_initintr
    .globl sym_80035b08
    .globl sym_80035b38
    .type CD_initintr, @function
    .ent CD_initintr
CD_initintr:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lui     $at,0x800e
    sw      $zero,-28824($at)
    lui     $at,0x800e
    sw      $zero,-28828($at)
    lui     $at,0x800e
    sw      $zero,-28812($at)
    lui     $at,0x800e
    jal     sym_80035b08
    sw      $zero,-28816($at)
    lui     $a1,0x8004
    addiu   $a1,$a1,5456
    jal     sym_80035b38
    addiu   $a0,$zero,2
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end CD_initintr
    .size CD_initintr, . - CD_initintr

/* CRES_OBJ_1B8 (0x80030a44, 80 bytes) */
    .section .text.CRES_OBJ_1B8,"ax",@progbits
    .globl CRES_OBJ_1B8
    .globl sym_800348b8
    .type CRES_OBJ_1B8, @function
    .ent CRES_OBJ_1B8
CRES_OBJ_1B8:
    lw      $v1,152($v0)
    addiu   $a0,$zero,-17
    and     $v1,$v1,$a0
    sw      $v1,152($v0)
    sll     $a0,$s4,0x8
    or      $a0,$s5,$a0
    sll     $a0,$a0,0x10
    sra     $a0,$a0,0x10
    addiu   $a1,$s2,92
    jal     sym_800348b8
    addiu   $a2,$s2,94
    lw      $ra,48($sp)
    lw      $s5,44($sp)
    lw      $s4,40($sp)
    lw      $s3,36($sp)
    lw      $s2,32($sp)
    lw      $s1,28($sp)
    lw      $s0,24($sp)
    jr      $ra
    addiu   $sp,$sp,56
    .end CRES_OBJ_1B8
    .size CRES_OBJ_1B8, . - CRES_OBJ_1B8

/* CdReset (0x8003f774, 92 bytes) */
    .section .text.CdReset,"ax",@progbits
    .globl CdReset
    .globl CD_initintr
    .globl sym_8003f7d0
    .globl sym_80041010
    .globl sym_80040ed4
    .type CdReset, @function
    .ent CdReset
CdReset:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    addiu   $v0,$zero,2
    bne     $s0,$v0,.LCdReset_28
    sw      $ra,20($sp)
    jal     CD_initintr
    sll     $zero,$zero,0x0
    j       sym_8003f7d0
    addiu   $v0,$zero,1
.LCdReset_28:
    jal     sym_80041010
    sll     $zero,$zero,0x0
    bne     $v0,$zero,sym_8003f7d0
    addu    $v0,$zero,$zero
    addiu   $v0,$zero,1
    bne     $s0,$v0,sym_8003f7d0
    sll     $zero,$zero,0x0
    jal     sym_80040ed4
    sll     $zero,$zero,0x0
    addu    $v1,$v0,$zero
    bne     $v1,$zero,sym_8003f7d0
    addu    $v0,$zero,$zero
    addiu   $v0,$zero,1
    .end CdReset
    .size CdReset, . - CdReset

/* DrawPrim (0x80038afc, 92 bytes) */
    .section .text.DrawPrim,"ax",@progbits
    .globl DrawPrim
    .type DrawPrim, @function
    .ent DrawPrim
DrawPrim:
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    lui     $v0,0x800e
    lw      $v0,-29580($v0)
    sw      $ra,24($sp)
    sw      $s1,20($sp)
    lw      $v0,60($v0)
    lbu     $s1,3($s0)
    jalr    $v0
    addu    $a0,$zero,$zero
    lui     $v0,0x800e
    lw      $v0,-29580($v0)
    addiu   $a0,$s0,4
    lw      $v0,20($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a1,$s1,$zero
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end DrawPrim
    .size DrawPrim, . - DrawPrim

/* DrawSyncCallback (0x8003846c, 96 bytes) */
    .section .text.DrawSyncCallback,"ax",@progbits
    .globl DrawSyncCallback
    .type DrawSyncCallback, @function
    .ent DrawSyncCallback
DrawSyncCallback:
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    lui     $s0,0x800e
    addiu   $s0,$s0,-29570
    sw      $ra,24($sp)
    sw      $s1,20($sp)
    lbu     $v0,0($s0)
    sll     $zero,$zero,0x0
    sltiu   $v0,$v0,2
    bne     $v0,$zero,.LDrawSyncCallback_44
    addu    $s1,$a0,$zero
    lui     $v0,0x800e
    lw      $v0,-29576($v0)
    lui     $a0,0x8002
    addiu   $a0,$a0,-20896
    jalr    $v0
    addu    $a1,$s1,$zero
.LDrawSyncCallback_44:
    lw      $v0,10($s0)
    sw      $s1,10($s0)
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end DrawSyncCallback
    .size DrawSyncCallback, . - DrawSyncCallback

/* FORMAT_OBJ_F0 (0x8003b7d8, 84 bytes) */
    .section .text.FORMAT_OBJ_F0,"ax",@progbits
    .globl FORMAT_OBJ_F0
    .globl sym_8003b748
    .type FORMAT_OBJ_F0, @function
    .ent FORMAT_OBJ_F0
FORMAT_OBJ_F0:
    addu    $a1,$zero,$zero
    addiu   $v1,$zero,126
.LFORMAT_OBJ_F0_8:
    lbu     $v0,0($a0)
    addiu   $a0,$a0,1
    addiu   $v1,$v1,-1
    bgez    $v1,.LFORMAT_OBJ_F0_8
    xor     $a1,$a1,$v0
    lbu     $v1,127($s3)
    andi    $v0,$a1,0xff
    bne     $v1,$v0,sym_8003b748
    addiu   $s1,$s1,1
    addiu   $v0,$zero,1
    lw      $ra,168($sp)
    lw      $s5,164($sp)
    lw      $s4,160($sp)
    lw      $s3,156($sp)
    lw      $s2,152($sp)
    lw      $s1,148($sp)
    lw      $s0,144($sp)
    jr      $ra
    addiu   $sp,$sp,176
    .end FORMAT_OBJ_F0
    .size FORMAT_OBJ_F0, . - FORMAT_OBJ_F0

/* GS_107_OBJ_51C (0x80037ea4, 76 bytes) */
    .section .text.GS_107_OBJ_51C,"ax",@progbits
    .globl GS_107_OBJ_51C
    .type GS_107_OBJ_51C, @function
    .ent GS_107_OBJ_51C
GS_107_OBJ_51C:
    lui     $a2,0x800e
    addiu   $a2,$a2,21880
    lw      $v0,0($a2)
    lw      $v1,4($a2)
    lw      $a1,8($a2)
    sw      $v0,0($a0)
    sw      $v1,4($a0)
    sw      $a1,8($a0)
    lw      $v0,12($a2)
    lw      $v1,16($a2)
    lw      $a1,20($a2)
    sw      $v0,12($a0)
    sw      $v1,16($a0)
    sw      $a1,20($a0)
    lw      $v0,24($a2)
    lw      $v1,28($a2)
    sw      $v0,24($a0)
    jr      $ra
    sw      $v1,28($a0)
    .end GS_107_OBJ_51C
    .size GS_107_OBJ_51C, . - GS_107_OBJ_51C

/* GsClearOt (0x80097bc8, 88 bytes) */
    .section .text.GsClearOt,"ax",@progbits
    .globl GsClearOt
    .globl sym_80038a50
    .type GsClearOt, @function
    .ent GsClearOt
GsClearOt:
    addiu   $sp,$sp,-24
    andi    $a0,$a0,0xffff
    andi    $a1,$a1,0xffff
    sw      $ra,16($sp)
    sw      $a0,8($a2)
    lw      $a0,0($a2)
    lw      $v0,4($a2)
    addiu   $v1,$zero,4
    sw      $a1,12($a2)
    lw      $a1,0($a2)
    sllv    $v1,$v1,$a0
    addu    $v0,$v0,$v1
    addiu   $v0,$v0,-4
    sw      $v0,16($a2)
    addiu   $v0,$zero,1
    lw      $a0,4($a2)
    jal     sym_80038a50
    sllv    $a1,$v0,$a1
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end GsClearOt
    .size GsClearOt, . - GsClearOt

/* GsSetFogParam (0x80055934, 76 bytes) */
    .section .text.GsSetFogParam,"ax",@progbits
    .globl GsSetFogParam
    .globl sym_80055a7c
    .globl sym_80055a88
    .globl sym_80038008
    .type GsSetFogParam, @function
    .ent GsSetFogParam
GsSetFogParam:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    sw      $ra,20($sp)
    lh      $a0,0($s0)
    jal     sym_80055a7c
    sll     $zero,$zero,0x0
    lw      $a0,4($s0)
    jal     sym_80055a88
    sll     $zero,$zero,0x0
    lbu     $a0,8($s0)
    lbu     $a1,9($s0)
    lbu     $a2,10($s0)
    jal     sym_80038008
    sll     $zero,$zero,0x0
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end GsSetFogParam
    .size GsSetFogParam, . - GsSetFogParam

/* GsSetLightMode (0x800548e8, 96 bytes) */
    .section .text.GsSetLightMode,"ax",@progbits
    .globl GsSetLightMode
    .globl sym_80054948
    .globl sym_80054954
    .type GsSetLightMode, @function
    .ent GsSetLightMode
GsSetLightMode:
    addiu   $sp,$sp,-24
    addu    $a1,$a0,$zero
    addiu   $v0,$zero,1
    beq     $a1,$v0,.LGsSetLightMode_54
    sw      $ra,16($sp)
    slti    $v0,$a1,2
    beq     $v0,$zero,.LGsSetLightMode_30
    addiu   $v0,$zero,2
    beq     $a1,$zero,.LGsSetLightMode_48
    sll     $zero,$zero,0x0
    j       sym_80054948
    sll     $zero,$zero,0x0
.LGsSetLightMode_30:
    beq     $a1,$v0,.LGsSetLightMode_54
    addiu   $v0,$zero,3
    beq     $a1,$v0,.LGsSetLightMode_54
    sll     $zero,$zero,0x0
    j       sym_80054948
    sll     $zero,$zero,0x0
.LGsSetLightMode_48:
    lui     $at,0x800e
    j       sym_80054954
    sw      $zero,21836($at)
.LGsSetLightMode_54:
    lui     $at,0x800e
    j       sym_80054954
    sw      $a1,21836($at)
    .end GsSetLightMode
    .size GsSetLightMode, . - GsSetLightMode

/* LoadImage (0x80038810, 96 bytes) */
    .section .text.LoadImage,"ax",@progbits
    .globl LoadImage
    .globl sym_800385cc
    .type LoadImage, @function
    .ent LoadImage
LoadImage:
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    sw      $s1,20($sp)
    addu    $s1,$a1,$zero
    lui     $a0,0x8002
    addiu   $a0,$a0,-20768
    sw      $ra,24($sp)
    jal     sym_800385cc
    addu    $a1,$s0,$zero
    addu    $a1,$s0,$zero
    lui     $v0,0x800e
    lw      $v0,-29580($v0)
    addiu   $a2,$zero,8
    lw      $a0,32($v0)
    lw      $v0,8($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a3,$s1,$zero
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end LoadImage
    .size LoadImage, . - LoadImage

/* MIDIREAD_OBJ_2D4 (0x80030e40, 84 bytes) */
    .section .text.MIDIREAD_OBJ_2D4,"ax",@progbits
    .globl MIDIREAD_OBJ_2D4
    .globl sym_8003130c
    .globl sym_800349ac
    .type MIDIREAD_OBJ_2D4, @function
    .ent MIDIREAD_OBJ_2D4
MIDIREAD_OBJ_2D4:
    lb      $v1,34($s0)
    addiu   $v0,$zero,-1
    beq     $v1,$v0,.LMIDIREAD_OBJ_2D4_34
    sll     $zero,$zero,0x0
    lb      $a0,34($s0)
    lb      $a1,35($s0)
    jal     sym_8003130c
    sb      $zero,20($s0)
    sll     $a0,$s1,0x8
    or      $a0,$s2,$a0
    sll     $a0,$a0,0x10
    jal     sym_800349ac
    sra     $a0,$a0,0x10
.LMIDIREAD_OBJ_2D4_34:
    sll     $a0,$s1,0x8
    or      $a0,$s2,$a0
    sll     $a0,$a0,0x10
    jal     sym_800349ac
    sra     $a0,$a0,0x10
    lh      $v0,84($s0)
    sll     $zero,$zero,0x0
    sw      $v0,144($s0)
    .end MIDIREAD_OBJ_2D4
    .size MIDIREAD_OBJ_2D4, . - MIDIREAD_OBJ_2D4

/* PADCMD_OBJ_160 (0x8003d938, 76 bytes) */
    .section .text.PADCMD_OBJ_160,"ax",@progbits
    .globl PADCMD_OBJ_160
    .globl sym_8003d9d0
    .globl sym_8003dad4
    .type PADCMD_OBJ_160, @function
    .ent PADCMD_OBJ_160
PADCMD_OBJ_160:
    lw      $v0,60($s0)
    lw      $v1,60($s0)
    lbu     $v0,3($v0)
    sll     $zero,$zero,0x0
    sb      $v0,227($s0)
    lbu     $v0,4($v1)
    lw      $v1,60($s0)
    sh      $zero,230($s0)
    sb      $v0,228($s0)
    lbu     $v0,5($v1)
    lw      $v1,60($s0)
    sb      $v0,233($s0)
    lbu     $v0,6($v1)
    lhu     $v1,238($s0)
    sh      $zero,236($s0)
    bne     $v1,$zero,sym_8003d9d0
    sb      $v0,234($s0)
    j       sym_8003dad4
    sb      $zero,235($s0)
    .end PADCMD_OBJ_160
    .size PADCMD_OBJ_160, . - PADCMD_OBJ_160

/* PADCMD_OBJ_AA0 (0x8003e278, 76 bytes) */
    .section .text.PADCMD_OBJ_AA0,"ax",@progbits
    .globl PADCMD_OBJ_AA0
    .globl sym_8003e2c4
    .type PADCMD_OBJ_AA0, @function
    .ent PADCMD_OBJ_AA0
PADCMD_OBJ_AA0:
    lbu     $v1,70($a0)
    addiu   $v0,$zero,2
    beq     $v1,$v0,.LPADCMD_OBJ_AA0_20
    addiu   $v0,$zero,3
    beq     $v1,$v0,.LPADCMD_OBJ_AA0_38
    addiu   $v0,$zero,77
    j       sym_8003e2c4
    sll     $zero,$zero,0x0
.LPADCMD_OBJ_AA0_20:
    addiu   $v0,$zero,68
    sb      $v0,55($a0)
    addiu   $v0,$a0,81
    sw      $v0,44($a0)
    j       sym_8003e2c4
    sb      $v1,54($a0)
.LPADCMD_OBJ_AA0_38:
    sb      $v0,55($a0)
    addiu   $v0,$a0,93
    sw      $v0,44($a0)
    addiu   $v0,$zero,6
    sb      $v0,54($a0)
    .end PADCMD_OBJ_AA0
    .size PADCMD_OBJ_AA0, . - PADCMD_OBJ_AA0

/* PADCMD_OBJ_AF4 (0x8003e2cc, 76 bytes) */
    .section .text.PADCMD_OBJ_AF4,"ax",@progbits
    .globl PADCMD_OBJ_AF4
    .globl sym_8003e31c
    .globl sym_8003e318
    .type PADCMD_OBJ_AF4, @function
    .ent PADCMD_OBJ_AF4
PADCMD_OBJ_AF4:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lbu     $v0,83($a0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LPADCMD_OBJ_AF4_38
    addiu   $v0,$zero,2
    lbu     $v1,70($a0)
    sll     $zero,$zero,0x0
    bne     $v1,$v0,.LPADCMD_OBJ_AF4_30
    addiu   $v0,$zero,254
    j       sym_8003e31c
    addiu   $v0,$zero,1
.LPADCMD_OBJ_AF4_30:
    j       sym_8003e318
    sb      $v0,70($a0)
.LPADCMD_OBJ_AF4_38:
    lui     $v0,0x800e
    lw      $v0,-29160($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    sll     $zero,$zero,0x0
    .end PADCMD_OBJ_AF4
    .size PADCMD_OBJ_AF4, . - PADCMD_OBJ_AF4

/* PADMAIN_OBJ_98 (0x8003caa0, 88 bytes) */
    .section .text.PADMAIN_OBJ_98,"ax",@progbits
    .globl PADMAIN_OBJ_98
    .globl sym_8003caf8
    .type PADMAIN_OBJ_98, @function
    .ent PADMAIN_OBJ_98
PADMAIN_OBJ_98:
    andi    $v0,$s0,0x2
    beq     $v0,$zero,.LPADMAIN_OBJ_98_50
    addiu   $v1,$zero,1
    lui     $s0,0x800e
    addiu   $s0,$s0,29404
    lw      $v0,0($s0)
    lui     $at,0x800e
    sw      $v1,-29080($at)
    slti    $v0,$v0,150
    bne     $v0,$zero,.LPADMAIN_OBJ_98_48
    sll     $zero,$zero,0x0
    lui     $a0,0x800e
    lw      $a0,-29112($a0)
    lui     $v0,0x800e
    lw      $v0,-29160($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addiu   $a0,$a0,240
.LPADMAIN_OBJ_98_48:
    j       sym_8003caf8
    sw      $zero,0($s0)
.LPADMAIN_OBJ_98_50:
    lui     $at,0x800e
    sw      $zero,-29080($at)
    .end PADMAIN_OBJ_98
    .size PADMAIN_OBJ_98, . - PADMAIN_OBJ_98

/* PADPORTD_OBJ_23C (0x8003ec44, 92 bytes) */
    .section .text.PADPORTD_OBJ_23C,"ax",@progbits
    .globl PADPORTD_OBJ_23C
    .globl sym_8003ce68
    .globl sym_8003eca0
    .type PADPORTD_OBJ_23C, @function
    .ent PADPORTD_OBJ_23C
PADPORTD_OBJ_23C:
    lui     $v0,0x800e
    lw      $v0,-28996($v0)
    lui     $v1,0x800e
    lw      $v1,-29100($v1)
    lui     $at,0x800e
    sw      $zero,-29096($at)
    sh      $zero,10($v0)
    lui     $v0,0x800e
    lw      $v0,-29080($v0)
    addiu   $v1,$v1,1
    lui     $at,0x800e
    sw      $v1,-29100($at)
    slt     $v0,$v0,$v1
    bne     $v0,$zero,.LPADPORTD_OBJ_23C_58
    addiu   $v0,$zero,1
    sll     $a0,$v1,0x4
    subu    $a0,$a0,$v1
    sll     $a0,$a0,0x4
    jal     sym_8003ce68
    addu    $a0,$a0,$s1
    j       sym_8003eca0
    ori     $a1,$zero,0xffff
.LPADPORTD_OBJ_23C_58:
    ori     $a1,$zero,0xffff
    .end PADPORTD_OBJ_23C
    .size PADPORTD_OBJ_23C, . - PADPORTD_OBJ_23C

/* PADPORTD_OBJ_45C (0x8003ee64, 76 bytes) */
    .section .text.PADPORTD_OBJ_45C,"ax",@progbits
    .globl PADPORTD_OBJ_45C
    .globl sym_8003eeec
    .globl PADPORTD_OBJ_4A8
    .type PADPORTD_OBJ_45C, @function
    .ent PADPORTD_OBJ_45C
PADPORTD_OBJ_45C:
    beq     $a2,$zero,sym_8003eeec
    sll     $zero,$zero,0x0
    lw      $v0,4($s0)
    sll     $zero,$zero,0x0
    addu    $v0,$t2,$v0
    lbu     $v1,3($v0)
    lui     $v0,0x800e
    lw      $v0,-29092($v0)
    sll     $zero,$zero,0x0
    addu    $v1,$v0,$v1
    slti    $v0,$v1,61
    beq     $v0,$zero,.LPADPORTD_OBJ_45C_48
    sll     $zero,$zero,0x0
    lui     $at,0x800e
    j       PADPORTD_OBJ_4A8
    sw      $v1,-29092($at)
    j       PADPORTD_OBJ_45C
    addiu   $a2,$zero,1
.LPADPORTD_OBJ_45C_48:
    addu    $a2,$zero,$zero
    .end PADPORTD_OBJ_45C
    .size PADPORTD_OBJ_45C, . - PADPORTD_OBJ_45C

/* PADPORTD_OBJ_4A8 (0x8003eeb0, 88 bytes) */
    .section .text.PADPORTD_OBJ_4A8,"ax",@progbits
    .globl PADPORTD_OBJ_4A8
    .globl sym_8003edfc
    .globl sym_8003effc
    .type PADPORTD_OBJ_4A8, @function
    .ent PADPORTD_OBJ_4A8
PADPORTD_OBJ_4A8:
    beq     $a2,$zero,.LPADPORTD_OBJ_4A8_3c
    sll     $zero,$zero,0x0
    addiu   $a1,$s0,93
    addiu   $a0,$s0,87
    beq     $t1,$zero,.LPADPORTD_OBJ_4A8_3c
    addu    $v1,$zero,$zero
.LPADPORTD_OBJ_4A8_18:
    lbu     $v0,0($a1)
    sll     $zero,$zero,0x0
    bne     $v0,$t0,.LPADPORTD_OBJ_4A8_2c
    addiu   $a1,$a1,1
    sb      $t3,0($a0)
.LPADPORTD_OBJ_4A8_2c:
    addiu   $v1,$v1,1
    slt     $v0,$v1,$t1
    bne     $v0,$zero,.LPADPORTD_OBJ_4A8_18
    addiu   $a0,$a0,1
.LPADPORTD_OBJ_4A8_3c:
    lbu     $v0,233($s0)
    addiu   $t0,$t0,1
    slt     $v0,$t0,$v0
    bne     $v0,$zero,sym_8003edfc
    addiu   $t2,$t2,5
    j       sym_8003effc
    sll     $zero,$zero,0x0
    .end PADPORTD_OBJ_4A8
    .size PADPORTD_OBJ_4A8, . - PADPORTD_OBJ_4A8

/* PRESET_OBJ_108 (0x8007c5e8, 68 bytes) */
    .section .text.PRESET_OBJ_108,"ax",@progbits
    .globl PRESET_OBJ_108
    .globl sym_8007cdac
    .type PRESET_OBJ_108, @function
    .ent PRESET_OBJ_108
PRESET_OBJ_108:
    addiu   $s4,$s4,4
    sw      $a2,0($s4)
    addu    $a2,$zero,$zero
    addu    $s4,$s0,$zero
    addiu   $s0,$s0,8
    andi    $v0,$s8,0xfd
    addiu   $v1,$v0,-32
    sltiu   $v0,$v1,30
    beq     $v0,$zero,sym_8007cdac
    addiu   $s0,$s0,4
    sll     $v0,$v1,0x2
    lui     $at,0x8002
    addu    $at,$at,$v0
    lw      $v0,-10204($at)
    sll     $zero,$zero,0x0
    jr      $v0
    sll     $zero,$zero,0x0
    .end PRESET_OBJ_108
    .size PRESET_OBJ_108, . - PRESET_OBJ_108

/* PRESET_OBJ_14C (0x8007c62c, 92 bytes) */
    .section .text.PRESET_OBJ_14C,"ax",@progbits
    .globl PRESET_OBJ_14C
    .globl sym_8007c688
    .globl sym_8007cc28
    .type PRESET_OBJ_14C, @function
    .ent PRESET_OBJ_14C
PRESET_OBJ_14C:
    beq     $s7,$zero,sym_8007c688
    sll     $zero,$zero,0x0
    lw      $v0,-12($s1)
    addiu   $s2,$s2,24
    or      $v0,$v0,$a3
    sw      $v0,0($s0)
    lw      $v0,-8($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-4($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,12
    or      $v0,$v0,$a3
    sw      $v0,0($s0)
    lw      $v0,-8($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,8
    lw      $v0,-4($s1)
    j       sym_8007cc28
    addiu   $s1,$s1,24
    .end PRESET_OBJ_14C
    .size PRESET_OBJ_14C, . - PRESET_OBJ_14C

/* PRESET_OBJ_574 (0x8007ca54, 76 bytes) */
    .section .text.PRESET_OBJ_574,"ax",@progbits
    .globl PRESET_OBJ_574
    .globl sym_8007cc28
    .type PRESET_OBJ_574, @function
    .ent PRESET_OBJ_574
PRESET_OBJ_574:
    lw      $v0,-12($s1)
    addiu   $s2,$s2,24
    sw      $v0,0($s0)
    lw      $v0,-8($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-4($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,12
    sw      $v0,0($s0)
    lw      $v0,-8($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,8
    lw      $v0,-4($s1)
    j       sym_8007cc28
    addiu   $s1,$s1,24
    .end PRESET_OBJ_574
    .size PRESET_OBJ_574, . - PRESET_OBJ_574

/* PRESET_OBJ_6E8 (0x8007cbc8, 92 bytes) */
    .section .text.PRESET_OBJ_6E8,"ax",@progbits
    .globl PRESET_OBJ_6E8
    .type PRESET_OBJ_6E8, @function
    .ent PRESET_OBJ_6E8
PRESET_OBJ_6E8:
    lw      $v0,-12($s1)
    addiu   $s2,$s2,28
    sw      $v0,0($s0)
    lw      $v0,-8($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-4($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,0($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,12
    sw      $v0,0($s0)
    lw      $v0,-8($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-4($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,8
    lw      $v0,0($s1)
    .end PRESET_OBJ_6E8
    .size PRESET_OBJ_6E8, . - PRESET_OBJ_6E8

/* PadChkMtap (0x8003c5a8, 68 bytes) */
    .section .text.PadChkMtap,"ax",@progbits
    .globl PadChkMtap
    .globl sym_8003c5ec
    .type PadChkMtap, @function
    .ent PadChkMtap
PadChkMtap:
    lui     $v0,0x800e
    lw      $v0,-29088($v0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LPadChkMtap_1c
    sra     $v1,$a0,0x4
    j       sym_8003c5ec
    addu    $v0,$zero,$zero
.LPadChkMtap_1c:
    sll     $v0,$v1,0x4
    subu    $v0,$v0,$v1
    lui     $v1,0x800e
    lw      $v1,-29112($v1)
    sll     $v0,$v0,0x4
    addu    $v0,$v0,$v1
    lbu     $v0,232($v0)
    sll     $zero,$zero,0x0
    xori    $v0,$v0,0x8
    sltiu   $v0,$v0,1
    .end PadChkMtap
    .size PadChkMtap, . - PadChkMtap

/* PadSetAct (0x8003c9b4, 72 bytes) */
    .section .text.PadSetAct,"ax",@progbits
    .globl PadSetAct
    .globl sym_8003d7d8
    .type PadSetAct, @function
    .ent PadSetAct
PadSetAct:
    lui     $v0,0x800e
    lw      $v0,-29144($v0)
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    addu    $s0,$a1,$zero
    sw      $s1,20($sp)
    sw      $ra,24($sp)
    jalr    $v0
    addu    $s1,$a2,$zero
    addu    $a0,$v0,$zero
    addu    $a1,$s0,$zero
    jal     sym_8003d7d8
    addu    $a2,$s1,$zero
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end PadSetAct
    .size PadSetAct, . - PadSetAct

/* PadSetMainMode (0x8003c96c, 72 bytes) */
    .section .text.PadSetMainMode,"ax",@progbits
    .globl PadSetMainMode
    .globl sym_8003e1e0
    .type PadSetMainMode, @function
    .ent PadSetMainMode
PadSetMainMode:
    lui     $v0,0x800e
    lw      $v0,-29144($v0)
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    addu    $s0,$a1,$zero
    sw      $s1,20($sp)
    sw      $ra,24($sp)
    jalr    $v0
    addu    $s1,$a2,$zero
    addu    $a0,$v0,$zero
    andi    $a1,$s0,0xff
    jal     sym_8003e1e0
    andi    $a2,$s1,0xff
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end PadSetMainMode
    .size PadSetMainMode, . - PadSetMainMode

/* SPRINTF_OBJ_25C (0x8006164c, 68 bytes) */
    .section .text.SPRINTF_OBJ_25C,"ax",@progbits
    .globl SPRINTF_OBJ_25C
    .type SPRINTF_OBJ_25C, @function
    .ent SPRINTF_OBJ_25C
SPRINTF_OBJ_25C:
    lw      $v0,536($sp)
    sll     $zero,$zero,0x0
    bltz    $v0,.LSPRINTF_OBJ_25C_20
    sll     $zero,$zero,0x0
    lw      $v0,528($sp)
    sll     $zero,$zero,0x0
    ori     $v0,$v0,0x10
    sw      $v0,528($sp)
.LSPRINTF_OBJ_25C_20:
    lw      $v1,528($sp)
    sll     $zero,$zero,0x0
    andi    $v0,$v1,0x1
    beq     $v0,$zero,.LSPRINTF_OBJ_25C_40
    addiu   $s1,$sp,528
    addiu   $v0,$zero,-9
    and     $v0,$v1,$v0
    sw      $v0,528($sp)
.LSPRINTF_OBJ_25C_40:
    addiu   $v1,$a1,-76
    .end SPRINTF_OBJ_25C
    .size SPRINTF_OBJ_25C, . - SPRINTF_OBJ_25C

/* SPRINTF_OBJ_308 (0x800616f8, 88 bytes) */
    .section .text.SPRINTF_OBJ_308,"ax",@progbits
    .globl SPRINTF_OBJ_308
    .globl sym_80061784
    .type SPRINTF_OBJ_308, @function
    .ent SPRINTF_OBJ_308
SPRINTF_OBJ_308:
    lw      $v0,544($sp)
    sll     $zero,$zero,0x0
    lw      $a0,0($v0)
    addiu   $v0,$v0,4
    sw      $v0,544($sp)
    lw      $v1,528($sp)
    sll     $zero,$zero,0x0
    srl     $v0,$v1,0x5
    andi    $v0,$v0,0x1
    beq     $v0,$zero,.LSPRINTF_OBJ_308_30
    sll     $v0,$a0,0x10
    sra     $a0,$v0,0x10
.LSPRINTF_OBJ_308_30:
    bgez    $a0,.LSPRINTF_OBJ_308_44
    srl     $v0,$v1,0x1
    negu    $a0,$a0
    j       sym_80061784
    sb      $s7,529($sp)
.LSPRINTF_OBJ_308_44:
    andi    $v0,$v0,0x1
    beq     $v0,$zero,sym_80061784
    sll     $zero,$zero,0x0
    j       sym_80061784
    sb      $s6,529($sp)
    .end SPRINTF_OBJ_308
    .size SPRINTF_OBJ_308, . - SPRINTF_OBJ_308

/* SPRINTF_OBJ_82C (0x80061c1c, 88 bytes) */
    .section .text.SPRINTF_OBJ_82C,"ax",@progbits
    .globl SPRINTF_OBJ_82C
    .globl sym_80061458
    .type SPRINTF_OBJ_82C, @function
    .ent SPRINTF_OBJ_82C
SPRINTF_OBJ_82C:
    lw      $v1,596($sp)
    sll     $zero,$zero,0x0
    addiu   $v0,$v1,1
    sw      $v0,596($sp)
    lb      $a1,1($v1)
    sll     $zero,$zero,0x0
    bne     $a1,$zero,sym_80061458
    addiu   $v0,$zero,37
    addu    $v0,$s4,$s2
    sb      $zero,0($v0)
    addu    $v0,$s2,$zero
    lw      $ra,584($sp)
    lw      $s7,580($sp)
    lw      $s6,576($sp)
    lw      $s5,572($sp)
    lw      $s4,568($sp)
    lw      $s3,564($sp)
    lw      $s2,560($sp)
    lw      $s1,556($sp)
    lw      $s0,552($sp)
    jr      $ra
    addiu   $sp,$sp,592
    .end SPRINTF_OBJ_82C
    .size SPRINTF_OBJ_82C, . - SPRINTF_OBJ_82C

/* SSSTART_OBJ_270 (0x8003057c, 76 bytes) */
    .section .text.SSSTART_OBJ_270,"ax",@progbits
    .globl SSSTART_OBJ_270
    .type SSSTART_OBJ_270, @function
    .ent SSSTART_OBJ_270
SSSTART_OBJ_270:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    lui     $s0,0x800d
    addiu   $s0,$s0,29152
    sw      $ra,20($sp)
    lw      $v0,0($s0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LSSSTART_OBJ_270_2c
    sll     $zero,$zero,0x0
    jalr    $v0
    sll     $zero,$zero,0x0
.LSSSTART_OBJ_270_2c:
    lw      $v0,-4($s0)
    sll     $zero,$zero,0x0
    jalr    $v0
    sll     $zero,$zero,0x0
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end SSSTART_OBJ_270
    .size SSSTART_OBJ_270, . - SSSTART_OBJ_270

/* SYS_OBJ_110 (0x800382f8, 80 bytes) */
    .section .text.SYS_OBJ_110,"ax",@progbits
    .globl SYS_OBJ_110
    .type SYS_OBJ_110, @function
    .ent SYS_OBJ_110
SYS_OBJ_110:
    lui     $v0,0x800e
    lbu     $v0,-29570($v0)
    sll     $zero,$zero,0x0
    sltiu   $v0,$v0,2
    bne     $v0,$zero,.LSYS_OBJ_110_34
    sll     $zero,$zero,0x0
    lui     $a0,0x8002
    addiu   $a0,$a0,-20980
    lui     $v0,0x800e
    lw      $v0,-29576($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a1,$s1,$zero
.LSYS_OBJ_110_34:
    lui     $v0,0x800e
    lw      $v0,-29580($v0)
    sll     $zero,$zero,0x0
    lw      $v0,52($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addiu   $a0,$zero,1
    .end SYS_OBJ_110
    .size SYS_OBJ_110, . - SYS_OBJ_110

/* SYS_OBJ_1914 (0x80039afc, 88 bytes) */
    .section .text.SYS_OBJ_1914,"ax",@progbits
    .globl SYS_OBJ_1914
    .globl sym_80039b54
    .type SYS_OBJ_1914, @function
    .ent SYS_OBJ_1914
SYS_OBJ_1914:
    addiu   $sp,$sp,-32
    addu    $t0,$a0,$zero
    sw      $ra,28($sp)
    sw      $s2,24($sp)
    sw      $s1,20($sp)
    sw      $s0,16($sp)
    lh      $v1,4($t0)
    lhu     $a0,4($t0)
    bltz    $v1,.LSYS_OBJ_1914_54
    addu    $t1,$a1,$zero
    lui     $v0,0x800e
    lh      $v0,-29568($v0)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,-1
    slt     $v0,$v0,$v1
    lui     $v1,0x800e
    lhu     $v1,-29568($v1)
    bne     $v0,$zero,sym_80039b54
    addiu   $v0,$v1,-1
    j       sym_80039b54
    addu    $v0,$a0,$zero
.LSYS_OBJ_1914_54:
    addu    $v0,$zero,$zero
    .end SYS_OBJ_1914
    .size SYS_OBJ_1914, . - SYS_OBJ_1914

/* SYS_OBJ_1D80 (0x80039f68, 96 bytes) */
    .section .text.SYS_OBJ_1D80,"ax",@progbits
    .globl SYS_OBJ_1D80
    .globl sym_8003aa98
    .globl sym_80039fc8
    .type SYS_OBJ_1D80, @function
    .ent SYS_OBJ_1D80
SYS_OBJ_1D80:
    addiu   $sp,$sp,-40
    sw      $s1,20($sp)
    addu    $s1,$a0,$zero
    sw      $s2,24($sp)
    addu    $s2,$a1,$zero
    sw      $ra,36($sp)
    sw      $s4,32($sp)
    sw      $s3,28($sp)
    jal     sym_8003aa98
    sw      $s0,16($sp)
    lh      $a1,4($s1)
    lhu     $v1,4($s1)
    bltz    $a1,.LSYS_OBJ_1D80_5c
    addu    $a0,$v1,$zero
    lui     $v0,0x800e
    lh      $v0,-29568($v0)
    lui     $v1,0x800e
    lhu     $v1,-29568($v1)
    slt     $v0,$v0,$a1
    beq     $v0,$zero,sym_80039fc8
    sll     $zero,$zero,0x0
    j       sym_80039fc8
    addu    $a0,$v1,$zero
.LSYS_OBJ_1D80_5c:
    addu    $a0,$zero,$zero
    .end SYS_OBJ_1D80
    .size SYS_OBJ_1D80, . - SYS_OBJ_1D80

/* SYS_OBJ_2078 (0x8003a260, 72 bytes) */
    .section .text.SYS_OBJ_2078,"ax",@progbits
    .globl SYS_OBJ_2078
    .type SYS_OBJ_2078, @function
    .ent SYS_OBJ_2078
SYS_OBJ_2078:
    lui     $v1,0x400
    lui     $v0,0x800e
    lw      $v0,-29308($v0)
    ori     $v1,$v1,0x2
    sw      $v1,0($v0)
    lui     $v0,0x800e
    lw      $v0,-29304($v0)
    sll     $zero,$zero,0x0
    sw      $a0,0($v0)
    lui     $v0,0x800e
    lw      $v0,-29300($v0)
    lui     $v1,0x100
    sw      $zero,0($v0)
    lui     $v0,0x800e
    lw      $v0,-29296($v0)
    ori     $v1,$v1,0x401
    jr      $ra
    sw      $v1,0($v0)
    .end SYS_OBJ_2078
    .size SYS_OBJ_2078, . - SYS_OBJ_2078

/* SYS_OBJ_2114 (0x8003a2fc, 76 bytes) */
    .section .text.SYS_OBJ_2114,"ax",@progbits
    .globl SYS_OBJ_2114
    .globl sym_8003aa98
    .globl sym_8003a348
    .globl sym_8003aacc
    .globl sym_8003a590
    .globl sym_8003a5ac
    .type SYS_OBJ_2114, @function
    .ent SYS_OBJ_2114
SYS_OBJ_2114:
    addiu   $sp,$sp,-40
    sw      $s3,28($sp)
    addu    $s3,$a0,$zero
    sw      $s0,16($sp)
    addu    $s0,$a1,$zero
    sw      $s1,20($sp)
    addu    $s1,$a2,$zero
    sw      $s2,24($sp)
    sw      $ra,32($sp)
    jal     sym_8003aa98
    addu    $s2,$a3,$zero
    j       sym_8003a348
    sll     $zero,$zero,0x0
    jal     sym_8003aacc
    sll     $zero,$zero,0x0
    bne     $v0,$zero,sym_8003a590
    addiu   $v0,$zero,-1
    jal     sym_8003a5ac
    sll     $zero,$zero,0x0
    .end SYS_OBJ_2114
    .size SYS_OBJ_2114, . - SYS_OBJ_2114

/* S_GKS_OBJ_2C (0x8002f148, 84 bytes) */
    .section .text.S_GKS_OBJ_2C,"ax",@progbits
    .globl S_GKS_OBJ_2C
    .globl sym_8002f1a4
    .type S_GKS_OBJ_2C, @function
    .ent S_GKS_OBJ_2C
S_GKS_OBJ_2C:
    addiu   $v0,$zero,-1
    bne     $a1,$v0,.LS_GKS_OBJ_2C_1c
    sll     $a0,$a1,0x4
    j       sym_8002f1a4
    sll     $zero,$zero,0x0
    j       S_GKS_OBJ_2C
    addu    $a1,$v1,$zero
.LS_GKS_OBJ_2C_1c:
    lui     $v0,0x800d
    lw      $v0,27492($v0)
    lui     $v1,0x800d
    lw      $v1,27616($v1)
    addu    $a0,$a0,$v0
    addiu   $v0,$zero,1
    sllv    $v0,$v0,$a1
    and     $v1,$v1,$v0
    lhu     $a0,12($a0)
    bne     $v1,$zero,.LS_GKS_OBJ_2C_50
    sltu    $v0,$zero,$a0
    j       sym_8002f1a4
    sll     $v0,$v0,0x1
.LS_GKS_OBJ_2C_50:
    bne     $a0,$zero,sym_8002f1a4
    .end S_GKS_OBJ_2C
    .size S_GKS_OBJ_2C, . - S_GKS_OBJ_2C

/* S_M_UTIL_OBJ_2C (0x8002e788, 76 bytes) */
    .section .text.S_M_UTIL_OBJ_2C,"ax",@progbits
    .globl S_M_UTIL_OBJ_2C
    .globl sym_8002e7d4
    .type S_M_UTIL_OBJ_2C, @function
    .ent S_M_UTIL_OBJ_2C
S_M_UTIL_OBJ_2C:
    lw      $v1,0($a1)
    sll     $zero,$zero,0x0
    and     $v0,$v1,$t0
    bne     $v0,$zero,.LS_M_UTIL_OBJ_2C_40
    and     $v0,$v1,$a3
    bne     $v0,$zero,.LS_M_UTIL_OBJ_2C_48
    and     $v1,$v1,$a2
    sltu    $v0,$v1,$a0
    beq     $v0,$zero,sym_8002e7d4
    addiu   $v0,$zero,1
    lw      $v0,4($a1)
    sll     $zero,$zero,0x0
    addu    $v0,$v1,$v0
    sltu    $v0,$a0,$v0
    bne     $v0,$zero,sym_8002e7d4
    addiu   $v0,$zero,1
.LS_M_UTIL_OBJ_2C_40:
    j       S_M_UTIL_OBJ_2C
    addiu   $a1,$a1,8
.LS_M_UTIL_OBJ_2C_48:
    addu    $v0,$zero,$zero
    .end S_M_UTIL_OBJ_2C
    .size S_M_UTIL_OBJ_2C, . - S_M_UTIL_OBJ_2C

/* S_M_UTIL_OBJ_B8 (0x8002e814, 76 bytes) */
    .section .text.S_M_UTIL_OBJ_B8,"ax",@progbits
    .globl S_M_UTIL_OBJ_B8
    .globl sym_8002e860
    .type S_M_UTIL_OBJ_B8, @function
    .ent S_M_UTIL_OBJ_B8
S_M_UTIL_OBJ_B8:
    lw      $v1,0($a1)
    sll     $zero,$zero,0x0
    and     $v0,$v1,$t0
    bne     $v0,$zero,.LS_M_UTIL_OBJ_B8_40
    and     $v0,$v1,$a3
    bne     $v0,$zero,.LS_M_UTIL_OBJ_B8_48
    and     $v1,$v1,$a2
    sltu    $v0,$v1,$a0
    beq     $v0,$zero,sym_8002e860
    addiu   $v0,$zero,1
    lw      $v0,4($a1)
    sll     $zero,$zero,0x0
    addu    $v0,$v1,$v0
    sltu    $v0,$a0,$v0
    bne     $v0,$zero,sym_8002e860
    addiu   $v0,$zero,1
.LS_M_UTIL_OBJ_B8_40:
    j       S_M_UTIL_OBJ_B8
    addiu   $a1,$a1,8
.LS_M_UTIL_OBJ_B8_48:
    addu    $v0,$zero,$zero
    .end S_M_UTIL_OBJ_B8
    .size S_M_UTIL_OBJ_B8, . - S_M_UTIL_OBJ_B8

/* S_SCA_OBJ_274 (0x800301b0, 84 bytes) */
    .section .text.S_SCA_OBJ_274,"ax",@progbits
    .globl S_SCA_OBJ_274
    .globl sym_80030208
    .globl S_SCA_OBJ_2C8
    .type S_SCA_OBJ_274, @function
    .ent S_SCA_OBJ_274
S_SCA_OBJ_274:
    sh      $v0,426($v1)
    bne     $t2,$zero,.LS_SCA_OBJ_274_14
    andi    $v0,$t1,0x200
    beq     $v0,$zero,sym_80030208
    sll     $zero,$zero,0x0
.LS_SCA_OBJ_274_14:
    lw      $v0,24($a0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LS_SCA_OBJ_274_3c
    sll     $zero,$zero,0x0
    lui     $v1,0x800d
    lw      $v1,27492($v1)
    sll     $zero,$zero,0x0
    lhu     $v0,426($v1)
    j       S_SCA_OBJ_2C8
    andi    $v0,$v0,0xfffe
.LS_SCA_OBJ_274_3c:
    lui     $v1,0x800d
    lw      $v1,27492($v1)
    sll     $zero,$zero,0x0
    lhu     $v0,426($v1)
    sll     $zero,$zero,0x0
    ori     $v0,$v0,0x1
    .end S_SCA_OBJ_274
    .size S_SCA_OBJ_274, . - S_SCA_OBJ_274

/* S_SCA_OBJ_2C8 (0x80030204, 84 bytes) */
    .section .text.S_SCA_OBJ_2C8,"ax",@progbits
    .globl S_SCA_OBJ_2C8
    .globl sym_8003025c
    .globl S_SCA_OBJ_31C
    .type S_SCA_OBJ_2C8, @function
    .ent S_SCA_OBJ_2C8
S_SCA_OBJ_2C8:
    sh      $v0,426($v1)
    bne     $t2,$zero,.LS_SCA_OBJ_2C8_14
    andi    $v0,$t1,0x1000
    beq     $v0,$zero,sym_8003025c
    sll     $zero,$zero,0x0
.LS_SCA_OBJ_2C8_14:
    lw      $v0,32($a0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LS_SCA_OBJ_2C8_3c
    sll     $zero,$zero,0x0
    lui     $v1,0x800d
    lw      $v1,27492($v1)
    sll     $zero,$zero,0x0
    lhu     $v0,426($v1)
    j       S_SCA_OBJ_31C
    andi    $v0,$v0,0xfff7
.LS_SCA_OBJ_2C8_3c:
    lui     $v1,0x800d
    lw      $v1,27492($v1)
    sll     $zero,$zero,0x0
    lhu     $v0,426($v1)
    sll     $zero,$zero,0x0
    ori     $v0,$v0,0x8
    .end S_SCA_OBJ_2C8
    .size S_SCA_OBJ_2C8, . - S_SCA_OBJ_2C8

/* S_SCA_OBJ_31C (0x80030258, 84 bytes) */
    .section .text.S_SCA_OBJ_31C,"ax",@progbits
    .globl S_SCA_OBJ_31C
    .globl sym_800302b0
    .globl sym_800302ac
    .type S_SCA_OBJ_31C, @function
    .ent S_SCA_OBJ_31C
S_SCA_OBJ_31C:
    sh      $v0,426($v1)
    bne     $t2,$zero,.LS_SCA_OBJ_31C_14
    andi    $v0,$t1,0x2000
    beq     $v0,$zero,sym_800302b0
    sll     $zero,$zero,0x0
.LS_SCA_OBJ_31C_14:
    lw      $v0,36($a0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LS_SCA_OBJ_31C_3c
    sll     $zero,$zero,0x0
    lui     $v1,0x800d
    lw      $v1,27492($v1)
    sll     $zero,$zero,0x0
    lhu     $v0,426($v1)
    j       sym_800302ac
    andi    $v0,$v0,0xfffd
.LS_SCA_OBJ_31C_3c:
    lui     $v1,0x800d
    lw      $v1,27492($v1)
    sll     $zero,$zero,0x0
    lhu     $v0,426($v1)
    sll     $zero,$zero,0x0
    ori     $v0,$v0,0x2
    .end S_SCA_OBJ_31C
    .size S_SCA_OBJ_31C, . - S_SCA_OBJ_31C

/* SetGraphDebug (0x8003835c, 92 bytes) */
    .section .text.SetGraphDebug,"ax",@progbits
    .globl SetGraphDebug
    .type SetGraphDebug, @function
    .ent SetGraphDebug
SetGraphDebug:
    addiu   $sp,$sp,-24
    lui     $v1,0x800e
    addiu   $v1,$v1,-29570
    sw      $ra,20($sp)
    sw      $s0,16($sp)
    lbu     $s0,0($v1)
    sb      $a0,0($v1)
    andi    $a0,$a0,0xff
    beq     $a0,$zero,.LSetGraphDebug_4c
    addu    $v0,$s0,$zero
    lui     $v0,0x800e
    lw      $v0,-29576($v0)
    lbu     $a1,0($v1)
    lbu     $a2,-2($v1)
    lbu     $a3,1($v1)
    lui     $a0,0x8002
    jalr    $v0
    addiu   $a0,$a0,-20960
    addu    $v0,$s0,$zero
.LSetGraphDebug_4c:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end SetGraphDebug
    .size SetGraphDebug, . - SetGraphDebug

/* SpuInitMalloc (0x8002d95c, 76 bytes) */
    .section .text.SpuInitMalloc,"ax",@progbits
    .globl SpuInitMalloc
    .globl sym_8002d9a8
    .type SpuInitMalloc, @function
    .ent SpuInitMalloc
SpuInitMalloc:
    addu    $v0,$a0,$zero
    bgtz    $v0,.LSpuInitMalloc_14
    lui     $v1,0x4000
    j       sym_8002d9a8
    addu    $v0,$zero,$zero
.LSpuInitMalloc_14:
    lui     $a0,0x800d
    lw      $a0,27532($a0)
    ori     $v1,$v1,0x1010
    sw      $v1,0($a1)
    lui     $v1,0x1
    lui     $at,0x800d
    sw      $a1,27596($at)
    lui     $at,0x800d
    sw      $zero,27592($at)
    lui     $at,0x800d
    sw      $v0,27588($at)
    sllv    $v1,$v1,$a0
    addiu   $v1,$v1,-4112
    sw      $v1,4($a1)
    .end SpuInitMalloc
    .size SpuInitMalloc, . - SpuInitMalloc

/* SpuRead (0x8002f1ac, 92 bytes) */
    .section .text.SpuRead,"ax",@progbits
    .globl SpuRead
    .globl sym_8002e1e0
    .type SpuRead, @function
    .ent SpuRead
SpuRead:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    addu    $s0,$a1,$zero
    lui     $v0,0x7
    ori     $v0,$v0,0xeff0
    sltu    $v0,$v0,$s0
    beq     $v0,$zero,.LSpuRead_28
    sw      $ra,20($sp)
    lui     $s0,0x7
    ori     $s0,$s0,0xeff0
.LSpuRead_28:
    jal     sym_8002e1e0
    addu    $a1,$s0,$zero
    lui     $v0,0x800d
    lw      $v0,27548($v0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LSpuRead_4c
    addu    $v0,$s0,$zero
    lui     $at,0x800d
    sw      $zero,27544($at)
.LSpuRead_4c:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end SpuRead
    .size SpuRead, . - SpuRead

/* SpuSetCommonAttr (0x8002ff3c, 88 bytes) */
    .section .text.SpuSetCommonAttr,"ax",@progbits
    .globl SpuSetCommonAttr
    .globl sym_80030010
    .globl sym_8002ffcc
    .type SpuSetCommonAttr, @function
    .ent SpuSetCommonAttr
SpuSetCommonAttr:
    addu    $a2,$zero,$zero
    lw      $t1,0($a0)
    sll     $zero,$zero,0x0
    sltiu   $t2,$t1,1
    bne     $t2,$zero,.LSpuSetCommonAttr_2c
    addu    $t0,$zero,$zero
    andi    $v0,$t1,0x1
    beq     $v0,$zero,sym_80030010
    andi    $v0,$t1,0x4
    beq     $v0,$zero,sym_8002ffcc
    sll     $zero,$zero,0x0
.LSpuSetCommonAttr_2c:
    lh      $v1,8($a0)
    sll     $zero,$zero,0x0
    sltiu   $v0,$v1,8
    beq     $v0,$zero,sym_8002ffcc
    sll     $v0,$v1,0x2
    lui     $at,0x8002
    addu    $at,$at,$v0
    lw      $v0,-21532($at)
    sll     $zero,$zero,0x0
    jr      $v0
    sll     $zero,$zero,0x0
    .end SpuSetCommonAttr
    .size SpuSetCommonAttr, . - SpuSetCommonAttr

/* SpuSetNoiseClock (0x80033d6c, 72 bytes) */
    .section .text.SpuSetNoiseClock,"ax",@progbits
    .globl SpuSetNoiseClock
    .type SpuSetNoiseClock, @function
    .ent SpuSetNoiseClock
SpuSetNoiseClock:
    addu    $v0,$a0,$zero
    bltz    $v0,.LSpuSetNoiseClock_20
    addu    $a1,$zero,$zero
    addu    $a1,$v0,$zero
    slti    $v0,$a1,64
    bne     $v0,$zero,.LSpuSetNoiseClock_20
    sll     $zero,$zero,0x0
    addiu   $a1,$zero,63
.LSpuSetNoiseClock_20:
    lui     $a0,0x800d
    lw      $a0,27492($a0)
    andi    $v0,$a1,0x3f
    lhu     $v1,426($a0)
    sll     $v0,$v0,0x8
    andi    $v1,$v1,0xc0ff
    or      $v1,$v1,$v0
    addu    $v0,$a1,$zero
    jr      $ra
    sh      $v1,426($a0)
    .end SpuSetNoiseClock
    .size SpuSetNoiseClock, . - SpuSetNoiseClock

/* SpuSetTransferStartAddr (0x8002f20c, 76 bytes) */
    .section .text.SpuSetTransferStartAddr,"ax",@progbits
    .globl SpuSetTransferStartAddr
    .globl sym_8002e30c
    .globl sym_8002f258
    .type SpuSetTransferStartAddr, @function
    .ent SpuSetTransferStartAddr
SpuSetTransferStartAddr:
    addiu   $sp,$sp,-24
    addu    $a1,$a0,$zero
    lui     $v0,0x7
    ori     $v0,$v0,0xefe8
    addiu   $v1,$a1,-4112
    sltu    $v0,$v0,$v1
    bne     $v0,$zero,.LSpuSetTransferStartAddr_48
    sw      $ra,16($sp)
    jal     sym_8002e30c
    addiu   $a0,$zero,-1
    lui     $at,0x800d
    sh      $v0,27516($at)
    lui     $v1,0x800d
    lhu     $v1,27516($v1)
    lui     $v0,0x800d
    lw      $v0,27532($v0)
    j       sym_8002f258
    sllv    $v0,$v1,$v0
.LSpuSetTransferStartAddr_48:
    addu    $v0,$zero,$zero
    .end SpuSetTransferStartAddr
    .size SpuSetTransferStartAddr, . - SpuSetTransferStartAddr

/* SsSetMVol (0x800302bc, 80 bytes) */
    .section .text.SsSetMVol,"ax",@progbits
    .globl SsSetMVol
    .globl SpuSetCommonAttr
    .type SsSetMVol, @function
    .ent SsSetMVol
SsSetMVol:
    addiu   $sp,$sp,-64
    addiu   $v0,$zero,3
    sll     $a0,$a0,0x10
    sra     $a0,$a0,0x10
    sw      $v0,16($sp)
    sll     $v0,$a0,0x7
    addu    $v0,$v0,$a0
    sll     $a1,$a1,0x10
    sra     $a1,$a1,0x10
    sh      $v0,20($sp)
    sll     $v0,$a1,0x7
    addu    $v0,$v0,$a1
    addiu   $a0,$sp,16
    sw      $ra,56($sp)
    jal     SpuSetCommonAttr
    sh      $v0,22($sp)
    lw      $ra,56($sp)
    addiu   $sp,$sp,64
    jr      $ra
    sll     $zero,$zero,0x0
    .end SsSetMVol
    .size SsSetMVol, . - SsSetMVol

/* SsSetTickMode (0x8003197c, 76 bytes) */
    .section .text.SsSetTickMode,"ax",@progbits
    .globl SsSetTickMode
    .globl sym_8003659c
    .globl sym_800319c8
    .type SsSetTickMode, @function
    .ent SsSetTickMode
SsSetTickMode:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    sw      $ra,20($sp)
    jal     sym_8003659c
    addu    $s0,$a0,$zero
    addu    $a0,$v0,$zero
    andi    $v0,$s0,0x1000
    beq     $v0,$zero,.LSsSetTickMode_3c
    addiu   $v1,$zero,1
    lui     $v0,0x800d
    addiu   $v0,$v0,29144
    sw      $v1,0($v0)
    andi    $v1,$s0,0xfff
    j       sym_800319c8
    sw      $v1,-4($v0)
.LSsSetTickMode_3c:
    lui     $v0,0x800d
    addiu   $v0,$v0,29144
    sw      $zero,0($v0)
    sw      $s0,-4($v0)
    .end SsSetTickMode
    .size SsSetTickMode, . - SsSetTickMode

/* SsUtSetReverbType (0x80032afc, 84 bytes) */
    .section .text.SsUtSetReverbType,"ax",@progbits
    .globl SsUtSetReverbType
    .globl sym_80032b84
    .globl sym_80032b50
    .type SsUtSetReverbType, @function
    .ent SsUtSetReverbType
SsUtSetReverbType:
    addiu   $sp,$sp,-24
    addu    $a1,$zero,$zero
    addu    $v1,$a0,$zero
    sll     $v0,$a0,0x10
    sw      $ra,20($sp)
    bgez    $v0,.LSsUtSetReverbType_24
    sw      $s0,16($sp)
    addiu   $a1,$zero,1
    negu    $v1,$a0
.LSsUtSetReverbType_24:
    andi    $v0,$v1,0xffff
    sltiu   $v0,$v0,10
    beq     $v0,$zero,sym_80032b84
    addiu   $v0,$zero,1
    lui     $a0,0x800e
    addiu   $a0,$a0,20768
    beq     $a1,$zero,.LSsUtSetReverbType_50
    sw      $v0,0($a0)
    ori     $v0,$v1,0x100
    j       sym_80032b50
    sll     $v0,$v0,0x10
.LSsUtSetReverbType_50:
    sll     $v0,$v1,0x10
    .end SsUtSetReverbType
    .size SsUtSetReverbType, . - SsUtSetReverbType

/* StoreImage (0x80038870, 96 bytes) */
    .section .text.StoreImage,"ax",@progbits
    .globl StoreImage
    .globl sym_800385cc
    .type StoreImage, @function
    .ent StoreImage
StoreImage:
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    sw      $s1,20($sp)
    addu    $s1,$a1,$zero
    lui     $a0,0x8002
    addiu   $a0,$a0,-20756
    sw      $ra,24($sp)
    jal     sym_800385cc
    addu    $a1,$s0,$zero
    addu    $a1,$s0,$zero
    lui     $v0,0x800e
    lw      $v0,-29580($v0)
    addiu   $a2,$zero,8
    lw      $a0,28($v0)
    lw      $v0,8($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a3,$s1,$zero
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end StoreImage
    .size StoreImage, . - StoreImage

/* WAITRC2_OBJ_68 (0x8003f590, 76 bytes) */
    .section .text.WAITRC2_OBJ_68,"ax",@progbits
    .globl WAITRC2_OBJ_68
    .globl sym_8003f5dc
    .type WAITRC2_OBJ_68, @function
    .ent WAITRC2_OBJ_68
WAITRC2_OBJ_68:
    lui     $v0,0x1f80
    ori     $v0,$v0,0x1124
    lhu     $v0,0($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x200
    bne     $v0,$zero,.LWAITRC2_OBJ_68_38
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $v0,30056($v0)
    lui     $v1,0x800e
    lw      $v1,30060($v1)
    subu    $v0,$a0,$v0
    j       sym_8003f5dc
    srl     $v0,$v0,0x3
.LWAITRC2_OBJ_68_38:
    lui     $v0,0x800e
    lw      $v0,30056($v0)
    lui     $v1,0x800e
    lw      $v1,30060($v1)
    subu    $v0,$a0,$v0
    .end WAITRC2_OBJ_68
    .size WAITRC2_OBJ_68, . - WAITRC2_OBJ_68

/* _SsSndReplay (0x8003140c, 96 bytes) */
    .section .text._SsSndReplay,"ax",@progbits
    .globl _SsSndReplay
    .type _SsSndReplay, @function
    .ent _SsSndReplay
_SsSndReplay:
    sll     $a0,$a0,0x10
    lui     $v0,0x800e
    addiu   $v0,$v0,16720
    sra     $a0,$a0,0xe
    addu    $a0,$a0,$v0
    sll     $a1,$a1,0x10
    sra     $a1,$a1,0x10
    sll     $v0,$a1,0x1
    addu    $v0,$v0,$a1
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a1
    sll     $v0,$v0,0x4
    lw      $v1,0($a0)
    addiu   $a1,$zero,1
    addu    $v1,$v1,$v0
    sb      $a1,20($v1)
    lw      $v1,0($a0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    lw      $v1,152($v0)
    addiu   $a0,$zero,-9
    and     $v1,$v1,$a0
    jr      $ra
    sw      $v1,152($v0)
    .end _SsSndReplay
    .size _SsSndReplay, . - _SsSndReplay

/* _SsVmGetSeqLVol (0x8003491c, 72 bytes) */
    .section .text._SsVmGetSeqLVol,"ax",@progbits
    .globl _SsVmGetSeqLVol
    .type _SsVmGetSeqLVol, @function
    .ent _SsVmGetSeqLVol
_SsVmGetSeqLVol:
    andi    $v0,$a0,0xff
    sll     $v0,$v0,0x2
    lui     $v1,0x800e
    addu    $v1,$v1,$v0
    lw      $v1,16720($v1)
    lui     $at,0x800e
    sh      $a0,21044($at)
    andi    $a0,$a0,0xff00
    sra     $a0,$a0,0x8
    sll     $v0,$a0,0x1
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x4
    addu    $v1,$v1,$v0
    lh      $v0,88($v1)
    jr      $ra
    sll     $zero,$zero,0x0
    .end _SsVmGetSeqLVol
    .size _SsVmGetSeqLVol, . - _SsVmGetSeqLVol

/* _SsVmGetSeqRVol (0x80034964, 72 bytes) */
    .section .text._SsVmGetSeqRVol,"ax",@progbits
    .globl _SsVmGetSeqRVol
    .type _SsVmGetSeqRVol, @function
    .ent _SsVmGetSeqRVol
_SsVmGetSeqRVol:
    andi    $v0,$a0,0xff
    sll     $v0,$v0,0x2
    lui     $v1,0x800e
    addu    $v1,$v1,$v0
    lw      $v1,16720($v1)
    lui     $at,0x800e
    sh      $a0,21044($at)
    andi    $a0,$a0,0xff00
    sra     $a0,$a0,0x8
    sll     $v0,$a0,0x1
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x4
    addu    $v1,$v1,$v0
    lh      $v0,90($v1)
    jr      $ra
    sll     $zero,$zero,0x0
    .end _SsVmGetSeqRVol
    .size _SsVmGetSeqRVol, . - _SsVmGetSeqRVol

/* _padStopCom (0x8003ce24, 68 bytes) */
    .section .text._padStopCom,"ax",@progbits
    .globl _padStopCom
    .globl sym_8003bbe8
    .globl sym_8003bc98
    .globl sym_8003c428
    .globl sym_8003bbf8
    .type _padStopCom, @function
    .ent _padStopCom
_padStopCom:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_8003bbe8
    sll     $zero,$zero,0x0
    addiu   $a0,$zero,3
    jal     sym_8003bc98
    addiu   $a1,$zero,1
    lui     $a1,0x800e
    addiu   $a1,$a1,29384
    jal     sym_8003c428
    addiu   $a0,$zero,2
    jal     sym_8003bbf8
    sll     $zero,$zero,0x0
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end _padStopCom
    .size _padStopCom, . - _padStopCom

/* _spu_FsetPCR (0x8002e3ec, 76 bytes) */
    .section .text._spu_FsetPCR,"ax",@progbits
    .globl _spu_FsetPCR
    .globl sym_8002e438
    .type _spu_FsetPCR, @function
    .ent _spu_FsetPCR
_spu_FsetPCR:
    lui     $a1,0x800d
    lw      $a1,27508($a1)
    lui     $v1,0xfff8
    lw      $v0,0($a1)
    ori     $v1,$v1,0xffff
    and     $v0,$v0,$v1
    beq     $a0,$zero,.L_spu_FsetPCR_38
    sw      $v0,0($a1)
    lui     $v0,0x800d
    lw      $v0,27508($v0)
    sll     $zero,$zero,0x0
    lw      $v1,0($v0)
    j       sym_8002e438
    lui     $a0,0x3
.L_spu_FsetPCR_38:
    lui     $v0,0x800d
    lw      $v0,27508($v0)
    sll     $zero,$zero,0x0
    lw      $v1,0($v0)
    lui     $a0,0x5
    .end _spu_FsetPCR
    .size _spu_FsetPCR, . - _spu_FsetPCR

/* _spu_gcSPU (0x80034cac, 84 bytes) */
    .section .text._spu_gcSPU,"ax",@progbits
    .globl _spu_gcSPU
    .globl sym_80034d88
    .globl sym_80034d68
    .type _spu_gcSPU, @function
    .ent _spu_gcSPU
_spu_gcSPU:
    lui     $v0,0x800d
    lw      $v0,27592($v0)
    sll     $zero,$zero,0x0
    bltz    $v0,sym_80034d88
    addu    $t1,$zero,$zero
    lui     $t4,0x8000
    lui     $t2,0x2fff
    ori     $t2,$t2,0xffff
    lui     $t3,0xfff
    ori     $t3,$t3,0xffff
    lui     $t0,0x800d
    lw      $t0,27596($t0)
    addu    $t5,$v0,$zero
    addu    $a3,$t0,$zero
    lw      $v0,0($a3)
    sll     $zero,$zero,0x0
    and     $v0,$v0,$t4
    beq     $v0,$zero,sym_80034d68
    addiu   $a2,$t1,1
    sll     $v0,$a2,0x3
    addu    $v1,$v0,$t0
    .end _spu_gcSPU
    .size _spu_gcSPU, . - _spu_gcSPU

/* chkRC2wait (0x8003f548, 72 bytes) */
    .section .text.chkRC2wait,"ax",@progbits
    .globl chkRC2wait
    .globl WAITRC2_OBJ_68
    .type chkRC2wait, @function
    .ent chkRC2wait
chkRC2wait:
    lui     $v0,0x1f80
    ori     $v0,$v0,0x1120
    lhu     $v1,0($v0)
    lui     $v0,0x800e
    lw      $v0,30056($v0)
    andi    $a0,$v1,0xffff
    sltu    $v0,$a0,$v0
    beq     $v0,$zero,WAITRC2_OBJ_68
    lui     $v1,0x1f80
    ori     $v1,$v1,0x1128
    lhu     $v0,0($v1)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LchkRC2wait_44
    lui     $v0,0x1
    lhu     $v0,0($v1)
    j       WAITRC2_OBJ_68
    addu    $a0,$a0,$v0
.LchkRC2wait_44:
    addu    $a0,$a0,$v0
    .end chkRC2wait
    .size chkRC2wait, . - chkRC2wait

/* csqrt (0x8005511c, 88 bytes) */
    .section .text.csqrt,"ax",@progbits
    .globl csqrt
    .globl sym_800551a0
    .globl sym_800553ac
    .globl sym_80055174
    .type csqrt, @function
    .ent csqrt
csqrt:
    addiu   $sp,$sp,-32
    sw      $s1,20($sp)
    addu    $s1,$a0,$zero
    sw      $ra,24($sp)
    bne     $s1,$zero,.Lcsqrt_20
    sw      $s0,16($sp)
    j       sym_800551a0
    addu    $v0,$zero,$zero
.Lcsqrt_20:
    jal     sym_800553ac
    addu    $a0,$s1,$zero
    addiu   $v1,$zero,8
    subu    $v0,$v1,$v0
    bltz    $v0,.Lcsqrt_44
    sra     $s0,$v0,0x1
    sll     $v0,$s0,0x1
    j       sym_80055174
    srav    $a0,$s1,$v0
.Lcsqrt_44:
    sra     $v0,$v0,0x1
    addiu   $s0,$v0,1
    sll     $v0,$s0,0x1
    negu    $v0,$v0
    sllv    $a0,$s1,$v0
    .end csqrt
    .size csqrt, . - csqrt

/* note2pitch (0x8003361c, 76 bytes) */
    .section .text.note2pitch,"ax",@progbits
    .globl note2pitch
    .globl sym_800336d0
    .type note2pitch, @function
    .ent note2pitch
note2pitch:
    addiu   $sp,$sp,-24
    lui     $v1,0x800e
    addiu   $v1,$v1,21041
    sw      $ra,16($sp)
    lbu     $a3,0($v1)
    sll     $zero,$zero,0x0
    andi    $v0,$a3,0xff
    sltiu   $v0,$v0,128
    bne     $v0,$zero,.Lnote2pitch_2c
    sll     $zero,$zero,0x0
    addiu   $a3,$zero,127
.Lnote2pitch_2c:
    lb      $a0,-15($v1)
    lbu     $a2,-1($v1)
    jal     sym_800336d0
    addu    $a1,$zero,$zero
    lw      $ra,16($sp)
    andi    $v0,$v0,0xffff
    jr      $ra
    addiu   $sp,$sp,24
    .end note2pitch
    .size note2pitch, . - note2pitch

/* startIntrDMA (0x800362e8, 76 bytes) */
    .section .text.startIntrDMA,"ax",@progbits
    .globl startIntrDMA
    .globl sym_80036560
    .globl sym_80035b38
    .type startIntrDMA, @function
    .ent startIntrDMA
startIntrDMA:
    addiu   $sp,$sp,-24
    lui     $a0,0x800e
    addiu   $a0,$a0,-30928
    sw      $ra,16($sp)
    jal     sym_80036560
    addiu   $a1,$zero,8
    addiu   $a0,$zero,3
    lui     $v0,0x800e
    lw      $v0,-30932($v0)
    lui     $a1,0x8003
    addiu   $a1,$a1,25396
    jal     sym_80035b38
    sw      $zero,0($v0)
    lui     $v0,0x8003
    addiu   $v0,$v0,25780
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end startIntrDMA
    .size startIntrDMA, . - startIntrDMA

/* startIntrVSync (0x800361c8, 88 bytes) */
    .section .text.startIntrVSync,"ax",@progbits
    .globl startIntrVSync
    .globl sym_800362b8
    .globl sym_80035b38
    .type startIntrVSync, @function
    .ent startIntrVSync
startIntrVSync:
    addiu   $sp,$sp,-24
    lui     $a0,0x800e
    addiu   $a0,$a0,-30980
    lui     $v1,0x800e
    lw      $v1,-30944($v1)
    addiu   $v0,$zero,256
    sw      $ra,16($sp)
    sw      $v0,0($v1)
    lui     $at,0x800e
    sw      $zero,-30948($at)
    jal     sym_800362b8
    addiu   $a1,$zero,8
    lui     $a1,0x8003
    addiu   $a1,$a1,25120
    jal     sym_80035b38
    addu    $a0,$zero,$zero
    lui     $v0,0x8003
    addiu   $v0,$v0,25228
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end startIntrVSync
    .size startIntrVSync, . - startIntrVSync
