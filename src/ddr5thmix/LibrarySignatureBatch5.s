    .set noreorder
    .set noat
    .set nomacro

/* BIOS_OBJ_694 (0x8004055c, 48 bytes) */
    .section .text.BIOS_OBJ_694,"ax",@progbits
    .globl BIOS_OBJ_694
    .globl BIOS_OBJ_7AC
    .globl sym_80035c5c
    .globl sym_80040614
    .type BIOS_OBJ_694, @function
    .ent BIOS_OBJ_694
BIOS_OBJ_694:
    bne     $v0,$zero,BIOS_OBJ_7AC
    addiu   $v0,$zero,-1
    jal     sym_80035c5c
    sll     $zero,$zero,0x0
    beq     $v0,$zero,sym_80040614
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $v0,-28120($v0)
    sll     $zero,$zero,0x0
    lbu     $v0,0($v0)
    sll     $zero,$zero,0x0
    andi    $s1,$v0,0x3
    .end BIOS_OBJ_694
    .size BIOS_OBJ_694, . - BIOS_OBJ_694

/* BIOS_OBJ_7AC (0x80040674, 48 bytes) */
    .section .text.BIOS_OBJ_7AC,"ax",@progbits
    .globl BIOS_OBJ_7AC
    .type BIOS_OBJ_7AC, @function
    .ent BIOS_OBJ_7AC
BIOS_OBJ_7AC:
    lw      $ra,60($sp)
    lw      $s8,56($sp)
    lw      $s7,52($sp)
    lw      $s6,48($sp)
    lw      $s5,44($sp)
    lw      $s4,40($sp)
    lw      $s3,36($sp)
    lw      $s2,32($sp)
    lw      $s1,28($sp)
    lw      $s0,24($sp)
    jr      $ra
    addiu   $sp,$sp,64
    .end BIOS_OBJ_7AC
    .size BIOS_OBJ_7AC, . - BIOS_OBJ_7AC

/* BIOS_OBJ_914 (0x800407dc, 48 bytes) */
    .section .text.BIOS_OBJ_914,"ax",@progbits
    .globl BIOS_OBJ_914
    .globl BIOS_OBJ_A74
    .globl sym_80035c5c
    .globl sym_80040894
    .type BIOS_OBJ_914, @function
    .ent BIOS_OBJ_914
BIOS_OBJ_914:
    bne     $v0,$zero,BIOS_OBJ_A74
    addiu   $v0,$zero,-1
    jal     sym_80035c5c
    sll     $zero,$zero,0x0
    beq     $v0,$zero,sym_80040894
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $v0,-28120($v0)
    sll     $zero,$zero,0x0
    lbu     $v0,0($v0)
    sll     $zero,$zero,0x0
    andi    $s1,$v0,0x3
    .end BIOS_OBJ_914
    .size BIOS_OBJ_914, . - BIOS_OBJ_914

/* BIOS_OBJ_A74 (0x8004093c, 48 bytes) */
    .section .text.BIOS_OBJ_A74,"ax",@progbits
    .globl BIOS_OBJ_A74
    .type BIOS_OBJ_A74, @function
    .ent BIOS_OBJ_A74
BIOS_OBJ_A74:
    lw      $ra,60($sp)
    lw      $s8,56($sp)
    lw      $s7,52($sp)
    lw      $s6,48($sp)
    lw      $s5,44($sp)
    lw      $s4,40($sp)
    lw      $s3,36($sp)
    lw      $s2,32($sp)
    lw      $s1,28($sp)
    lw      $s0,24($sp)
    jr      $ra
    addiu   $sp,$sp,64
    .end BIOS_OBJ_A74
    .size BIOS_OBJ_A74, . - BIOS_OBJ_A74

/* BIOS_OBJ_D70 (0x80040c38, 48 bytes) */
    .section .text.BIOS_OBJ_D70,"ax",@progbits
    .globl BIOS_OBJ_D70
    .globl BIOS_OBJ_E88
    .globl sym_80035c5c
    .globl sym_80040cf0
    .type BIOS_OBJ_D70, @function
    .ent BIOS_OBJ_D70
BIOS_OBJ_D70:
    bne     $v0,$zero,BIOS_OBJ_E88
    addiu   $v0,$zero,-1
    jal     sym_80035c5c
    sll     $zero,$zero,0x0
    beq     $v0,$zero,sym_80040cf0
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $v0,-28120($v0)
    sll     $zero,$zero,0x0
    lbu     $v0,0($v0)
    sll     $zero,$zero,0x0
    andi    $s1,$v0,0x3
    .end BIOS_OBJ_D70
    .size BIOS_OBJ_D70, . - BIOS_OBJ_D70

/* BIOS_OBJ_E88 (0x80040d50, 40 bytes) */
    .section .text.BIOS_OBJ_E88,"ax",@progbits
    .globl BIOS_OBJ_E88
    .type BIOS_OBJ_E88, @function
    .ent BIOS_OBJ_E88
BIOS_OBJ_E88:
    lw      $ra,52($sp)
    lw      $s6,48($sp)
    lw      $s5,44($sp)
    lw      $s4,40($sp)
    lw      $s3,36($sp)
    lw      $s2,32($sp)
    lw      $s1,28($sp)
    lw      $s0,24($sp)
    jr      $ra
    addiu   $sp,$sp,56
    .end BIOS_OBJ_E88
    .size BIOS_OBJ_E88, . - BIOS_OBJ_E88

/* COR_05_OBJ_1AC (0x80055174, 44 bytes) */
    .section .text.COR_05_OBJ_1AC,"ax",@progbits
    .globl COR_05_OBJ_1AC
    .globl sym_80054fc8
    .globl sym_800551a0
    .type COR_05_OBJ_1AC, @function
    .ent COR_05_OBJ_1AC
COR_05_OBJ_1AC:
    addiu   $s0,$s0,-6
    bgez    $s0,.LCOR_05_OBJ_1AC_20
    sll     $zero,$zero,0x0
    jal     sym_80054fc8
    sll     $zero,$zero,0x0
    negu    $v1,$s0
    j       sym_800551a0
    srav    $v0,$v0,$v1
.LCOR_05_OBJ_1AC_20:
    jal     sym_80054fc8
    sll     $zero,$zero,0x0
    sllv    $v0,$v0,$s0
    .end COR_05_OBJ_1AC
    .size COR_05_OBJ_1AC, . - COR_05_OBJ_1AC

/* CdComstr (0x8003f814, 44 bytes) */
    .section .text.CdComstr,"ax",@progbits
    .globl CdComstr
    .globl sym_8003f840
    .type CdComstr, @function
    .ent CdComstr
CdComstr:
    andi    $a0,$a0,0xff
    sltiu   $v0,$a0,28
    beq     $v0,$zero,.LCdComstr_24
    sll     $v0,$a0,0x2
    lui     $at,0x800e
    addu    $at,$at,$v0
    lw      $v0,-28792($at)
    j       sym_8003f840
    sll     $zero,$zero,0x0
.LCdComstr_24:
    lui     $v0,0x8002
    addiu   $v0,$v0,-20428
    .end CdComstr
    .size CdComstr, . - CdComstr

/* CdDataCallback (0x8003fd00, 36 bytes) */
    .section .text.CdDataCallback,"ax",@progbits
    .globl CdDataCallback
    .globl DMACallback
    .type CdDataCallback, @function
    .ent CdDataCallback
CdDataCallback:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    addu    $a1,$a0,$zero
    jal     DMACallback
    addiu   $a0,$zero,3
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end CdDataCallback
    .size CdDataCallback, . - CdDataCallback

/* CdIntstr (0x8003f848, 44 bytes) */
    .section .text.CdIntstr,"ax",@progbits
    .globl CdIntstr
    .globl sym_8003f874
    .type CdIntstr, @function
    .ent CdIntstr
CdIntstr:
    andi    $a0,$a0,0xff
    sltiu   $v0,$a0,7
    beq     $v0,$zero,.LCdIntstr_24
    sll     $v0,$a0,0x2
    lui     $at,0x800e
    addu    $at,$at,$v0
    lw      $v0,-28664($at)
    j       sym_8003f874
    sll     $zero,$zero,0x0
.LCdIntstr_24:
    lui     $v0,0x8002
    addiu   $v0,$v0,-20428
    .end CdIntstr
    .size CdIntstr, . - CdIntstr

/* DMACallback (0x80035b68, 48 bytes) */
    .section .text.DMACallback,"ax",@progbits
    .globl DMACallback
    .type DMACallback, @function
    .ent DMACallback
DMACallback:
    lui     $v0,0x800e
    lw      $v0,-31012($v0)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lw      $v0,4($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    sll     $zero,$zero,0x0
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end DMACallback
    .size DMACallback, . - DMACallback

/* EVENT_OBJ_11C (0x8003f704, 40 bytes) */
    .section .text.EVENT_OBJ_11C,"ax",@progbits
    .globl EVENT_OBJ_11C
    .globl sym_8003bb48
    .type EVENT_OBJ_11C, @function
    .ent EVENT_OBJ_11C
EVENT_OBJ_11C:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lui     $a0,0xf000
    ori     $a0,$a0,0x3
    jal     sym_8003bb48
    addiu   $a1,$zero,64
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end EVENT_OBJ_11C
    .size EVENT_OBJ_11C, . - EVENT_OBJ_11C

/* EVENT_OBJ_90 (0x8003f678, 44 bytes) */
    .section .text.EVENT_OBJ_90,"ax",@progbits
    .globl EVENT_OBJ_90
    .globl sym_80041010
    .globl sym_80040ed4
    .globl sym_8003f6a4
    .type EVENT_OBJ_90, @function
    .ent EVENT_OBJ_90
EVENT_OBJ_90:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_80041010
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LEVENT_OBJ_90_28
    sll     $zero,$zero,0x0
    jal     sym_80040ed4
    sll     $zero,$zero,0x0
    j       sym_8003f6a4
    sltiu   $v0,$v0,1
.LEVENT_OBJ_90_28:
    addu    $v0,$zero,$zero
    .end EVENT_OBJ_90
    .size EVENT_OBJ_90, . - EVENT_OBJ_90

/* EVENT_OBJ_CC (0x8003f6b4, 40 bytes) */
    .section .text.EVENT_OBJ_CC,"ax",@progbits
    .globl EVENT_OBJ_CC
    .globl sym_8003bb48
    .type EVENT_OBJ_CC, @function
    .ent EVENT_OBJ_CC
EVENT_OBJ_CC:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lui     $a0,0xf000
    ori     $a0,$a0,0x3
    jal     sym_8003bb48
    addiu   $a1,$zero,32
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end EVENT_OBJ_CC
    .size EVENT_OBJ_CC, . - EVENT_OBJ_CC

/* EVENT_OBJ_F4 (0x8003f6dc, 40 bytes) */
    .section .text.EVENT_OBJ_F4,"ax",@progbits
    .globl EVENT_OBJ_F4
    .globl sym_8003bb48
    .type EVENT_OBJ_F4, @function
    .ent EVENT_OBJ_F4
EVENT_OBJ_F4:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lui     $a0,0xf000
    ori     $a0,$a0,0x3
    jal     sym_8003bb48
    addiu   $a1,$zero,64
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end EVENT_OBJ_F4
    .size EVENT_OBJ_F4, . - EVENT_OBJ_F4

/* FORMAT_OBJ_320 (0x8003ba08, 48 bytes) */
    .section .text.FORMAT_OBJ_320,"ax",@progbits
    .globl FORMAT_OBJ_320
    .type FORMAT_OBJ_320, @function
    .ent FORMAT_OBJ_320
FORMAT_OBJ_320:
    lw      $ra,52($sp)
    lw      $s8,48($sp)
    lw      $s7,44($sp)
    lw      $s6,40($sp)
    lw      $s5,36($sp)
    lw      $s4,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,56
    .end FORMAT_OBJ_320
    .size FORMAT_OBJ_320, . - FORMAT_OBJ_320

/* GS_001_OBJ_520 (0x80036c78, 48 bytes) */
    .section .text.GS_001_OBJ_520,"ax",@progbits
    .globl GS_001_OBJ_520
    .globl sym_8003b218
    .type GS_001_OBJ_520, @function
    .ent GS_001_OBJ_520
GS_001_OBJ_520:
    lui     $v0,0x800e
    addiu   $v0,$v0,21504
    lui     $a1,0x800e
    lh      $a1,21692($a1)
    lw      $a0,16($a3)
    sll     $a1,$a1,0x4
    jal     sym_8003b218
    addu    $a1,$a1,$v0
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end GS_001_OBJ_520
    .size GS_001_OBJ_520, . - GS_001_OBJ_520

/* GetODE (0x800392c0, 48 bytes) */
    .section .text.GetODE,"ax",@progbits
    .globl GetODE
    .type GetODE, @function
    .ent GetODE
GetODE:
    lui     $v0,0x800e
    lw      $v0,-29580($v0)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lw      $v0,56($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    sll     $zero,$zero,0x0
    lw      $ra,16($sp)
    srl     $v0,$v0,0x1f
    jr      $ra
    addiu   $sp,$sp,24
    .end GetODE
    .size GetODE, . - GetODE

/* GetRCnt (0x8003bd44, 48 bytes) */
    .section .text.GetRCnt,"ax",@progbits
    .globl GetRCnt
    .globl sym_8003bd74
    .type GetRCnt, @function
    .ent GetRCnt
GetRCnt:
    andi    $v1,$a0,0xffff
    slti    $v0,$v1,3
    beq     $v0,$zero,.LGetRCnt_2c
    sll     $v1,$v1,0x4
    lui     $v0,0x800e
    lw      $v0,-29216($v0)
    sll     $zero,$zero,0x0
    addu    $v1,$v1,$v0
    lhu     $v0,0($v1)
    j       sym_8003bd74
    sll     $zero,$zero,0x0
.LGetRCnt_2c:
    addu    $v0,$zero,$zero
    .end GetRCnt
    .size GetRCnt, . - GetRCnt

/* GsGetLw (0x800554c8, 48 bytes) */
    .section .text.GsGetLw,"ax",@progbits
    .globl GsGetLw
    .type GsGetLw, @function
    .ent GsGetLw
GsGetLw:
    addiu   $sp,$sp,-32
    sw      $s2,24($sp)
    addu    $s2,$a1,$zero
    addu    $a3,$a0,$zero
    sw      $s1,20($sp)
    addu    $s1,$zero,$zero
    addiu   $a1,$zero,100
    lui     $a2,0x800e
    addiu   $a2,$a2,21696
    addiu   $t0,$zero,100
    sw      $ra,28($sp)
    sw      $s0,16($sp)
    .end GsGetLw
    .size GsGetLw, . - GsGetLw

/* GsInitCoord2param (0x80036eb8, 44 bytes) */
    .section .text.GsInitCoord2param,"ax",@progbits
    .globl GsInitCoord2param
    .type GsInitCoord2param, @function
    .ent GsInitCoord2param
GsInitCoord2param:
    addiu   $v0,$zero,4096
    sh      $zero,20($a0)
    sh      $zero,18($a0)
    sh      $zero,16($a0)
    sw      $v0,8($a0)
    sw      $v0,4($a0)
    sw      $v0,0($a0)
    sw      $zero,32($a0)
    sw      $zero,28($a0)
    jr      $ra
    sw      $zero,24($a0)
    .end GsInitCoord2param
    .size GsInitCoord2param, . - GsInitCoord2param

/* GsSetAmbient (0x80054968, 40 bytes) */
    .section .text.GsSetAmbient,"ax",@progbits
    .globl GsSetAmbient
    .globl sym_80054998
    .type GsSetAmbient, @function
    .ent GsSetAmbient
GsSetAmbient:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    sra     $a0,$a0,0x4
    sra     $a1,$a1,0x4
    jal     sym_80054998
    sra     $a2,$a2,0x4
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end GsSetAmbient
    .size GsSetAmbient, . - GsSetAmbient

/* GsSetLightMatrix2 (0x80036fa4, 48 bytes) */
    .section .text.GsSetLightMatrix2,"ax",@progbits
    .globl GsSetLightMatrix2
    .globl sym_800376d8
    .globl sym_80037818
    .type GsSetLightMatrix2, @function
    .ent GsSetLightMatrix2
GsSetLightMatrix2:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    addu    $a1,$a0,$zero
    lui     $a0,0x800e
    jal     sym_800376d8
    addiu   $a0,$a0,21848
    jal     sym_80037818
    addu    $a0,$v0,$zero
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end GsSetLightMatrix2
    .size GsSetLightMatrix2, . - GsSetLightMatrix2

/* GsSetLsMatrix (0x80036ee4, 44 bytes) */
    .section .text.GsSetLsMatrix,"ax",@progbits
    .globl GsSetLsMatrix
    .globl sym_800377e8
    .globl sym_80037848
    .type GsSetLsMatrix, @function
    .ent GsSetLsMatrix
GsSetLsMatrix:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    sw      $ra,20($sp)
    jal     sym_800377e8
    addu    $s0,$a0,$zero
    jal     sym_80037848
    addu    $a0,$s0,$zero
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end GsSetLsMatrix
    .size GsSetLsMatrix, . - GsSetLsMatrix

/* INTR_DMA_OBJ_278 (0x80036560, 36 bytes) */
    .section .text.INTR_DMA_OBJ_278,"ax",@progbits
    .globl INTR_DMA_OBJ_278
    .type INTR_DMA_OBJ_278, @function
    .ent INTR_DMA_OBJ_278
INTR_DMA_OBJ_278:
    beq     $a1,$zero,.LINTR_DMA_OBJ_278_1c
    addiu   $v0,$a1,-1
    addiu   $v1,$zero,-1
.LINTR_DMA_OBJ_278_c:
    sw      $zero,0($a0)
    addiu   $v0,$v0,-1
    bne     $v0,$v1,.LINTR_DMA_OBJ_278_c
    addiu   $a0,$a0,4
.LINTR_DMA_OBJ_278_1c:
    jr      $ra
    sll     $zero,$zero,0x0
    .end INTR_DMA_OBJ_278
    .size INTR_DMA_OBJ_278, . - INTR_DMA_OBJ_278

/* INTR_OBJ_410 (0x80035f18, 44 bytes) */
    .section .text.INTR_OBJ_410,"ax",@progbits
    .globl INTR_OBJ_410
    .globl sym_8003bbb8
    .type INTR_OBJ_410, @function
    .ent INTR_OBJ_410
INTR_OBJ_410:
    lui     $at,0x800d
    jal     sym_8003bbb8
    sh      $zero,30294($at)
    lw      $ra,36($sp)
    lw      $s4,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end INTR_OBJ_410
    .size INTR_OBJ_410, . - INTR_OBJ_410

/* INTR_OBJ_69C (0x800361a4, 36 bytes) */
    .section .text.INTR_OBJ_69C,"ax",@progbits
    .globl INTR_OBJ_69C
    .type INTR_OBJ_69C, @function
    .ent INTR_OBJ_69C
INTR_OBJ_69C:
    beq     $a1,$zero,.LINTR_OBJ_69C_1c
    addiu   $v0,$a1,-1
    addiu   $v1,$zero,-1
.LINTR_OBJ_69C_c:
    sw      $zero,0($a0)
    addiu   $v0,$v0,-1
    bne     $v0,$v1,.LINTR_OBJ_69C_c
    addiu   $a0,$a0,4
.LINTR_OBJ_69C_1c:
    jr      $ra
    sll     $zero,$zero,0x0
    .end INTR_OBJ_69C
    .size INTR_OBJ_69C, . - INTR_OBJ_69C

/* INTR_VB_OBJ_C4 (0x8003628c, 44 bytes) */
    .section .text.INTR_VB_OBJ_C4,"ax",@progbits
    .globl INTR_VB_OBJ_C4
    .type INTR_VB_OBJ_C4, @function
    .ent INTR_VB_OBJ_C4
INTR_VB_OBJ_C4:
    lui     $v0,0x800e
    addiu   $v0,$v0,-30980
    sll     $a0,$a0,0x2
    addu    $a0,$a0,$v0
    lw      $v0,0($a0)
    sll     $zero,$zero,0x0
    beq     $a1,$v0,.LINTR_VB_OBJ_C4_24
    sll     $zero,$zero,0x0
    sw      $a1,0($a0)
.LINTR_VB_OBJ_C4_24:
    jr      $ra
    sll     $zero,$zero,0x0
    .end INTR_VB_OBJ_C4
    .size INTR_VB_OBJ_C4, . - INTR_VB_OBJ_C4

/* INTR_VB_OBJ_F0 (0x800362b8, 36 bytes) */
    .section .text.INTR_VB_OBJ_F0,"ax",@progbits
    .globl INTR_VB_OBJ_F0
    .type INTR_VB_OBJ_F0, @function
    .ent INTR_VB_OBJ_F0
INTR_VB_OBJ_F0:
    beq     $a1,$zero,.LINTR_VB_OBJ_F0_1c
    addiu   $v0,$a1,-1
    addiu   $v1,$zero,-1
.LINTR_VB_OBJ_F0_c:
    sw      $zero,0($a0)
    addiu   $v0,$v0,-1
    bne     $v0,$v1,.LINTR_VB_OBJ_F0_c
    addiu   $a0,$a0,4
.LINTR_VB_OBJ_F0_1c:
    jr      $ra
    sll     $zero,$zero,0x0
    .end INTR_VB_OBJ_F0
    .size INTR_VB_OBJ_F0, . - INTR_VB_OBJ_F0

/* InterruptCallback (0x80035b38, 48 bytes) */
    .section .text.InterruptCallback,"ax",@progbits
    .globl InterruptCallback
    .type InterruptCallback, @function
    .ent InterruptCallback
InterruptCallback:
    lui     $v0,0x800e
    lw      $v0,-31012($v0)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lw      $v0,8($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    sll     $zero,$zero,0x0
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end InterruptCallback
    .size InterruptCallback, . - InterruptCallback

/* MIDIREAD_OBJ_6C8 (0x80031234, 36 bytes) */
    .section .text.MIDIREAD_OBJ_6C8,"ax",@progbits
    .globl MIDIREAD_OBJ_6C8
    .type MIDIREAD_OBJ_6C8, @function
    .ent MIDIREAD_OBJ_6C8
MIDIREAD_OBJ_6C8:
    lw      $ra,40($sp)
    lw      $s5,36($sp)
    lw      $s4,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,48
    .end MIDIREAD_OBJ_6C8
    .size MIDIREAD_OBJ_6C8, . - MIDIREAD_OBJ_6C8

/* MSC02_OBJ_DC (0x80060f8c, 36 bytes) */
    .section .text.MSC02_OBJ_DC,"ax",@progbits
    .globl MSC02_OBJ_DC
    .globl sym_80060fb0
    .type MSC02_OBJ_DC, @function
    .ent MSC02_OBJ_DC
MSC02_OBJ_DC:
    addu    $a3,$ra,$zero
    jal     sym_80060fb0
    sll     $zero,$zero,0x0
    sh      $t0,0($a1)
    sh      $t1,2($a1)
    sh      $t2,4($a1)
    addu    $ra,$a3,$zero
    jr      $ra
    sll     $zero,$zero,0x0
    .end MSC02_OBJ_DC
    .size MSC02_OBJ_DC, . - MSC02_OBJ_DC

/* MargePrim (0x8004b514, 48 bytes) */
    .section .text.MargePrim,"ax",@progbits
    .globl MargePrim
    .globl sym_8004b544
    .type MargePrim, @function
    .ent MargePrim
MargePrim:
    lbu     $v0,3($a0)
    lbu     $v1,3($a1)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    addiu   $v1,$v0,1
    slti    $v0,$v1,17
    beq     $v0,$zero,.LMargePrim_2c
    addu    $v0,$zero,$zero
    sb      $v1,3($a0)
    j       sym_8004b544
    sw      $zero,0($a1)
.LMargePrim_2c:
    addiu   $v0,$zero,-1
    .end MargePrim
    .size MargePrim, . - MargePrim

/* PADIF_OBJ_600 (0x8003e9d8, 36 bytes) */
    .section .text.PADIF_OBJ_600,"ax",@progbits
    .globl PADIF_OBJ_600
    .type PADIF_OBJ_600, @function
    .ent PADIF_OBJ_600
PADIF_OBJ_600:
    lw      $ra,40($sp)
    lw      $s5,36($sp)
    lw      $s4,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,48
    .end PADIF_OBJ_600
    .size PADIF_OBJ_600, . - PADIF_OBJ_600

/* PADMAIN_OBJ_F0 (0x8003caf8, 40 bytes) */
    .section .text.PADMAIN_OBJ_F0,"ax",@progbits
    .globl PADMAIN_OBJ_F0
    .type PADMAIN_OBJ_F0, @function
    .ent PADMAIN_OBJ_F0
PADMAIN_OBJ_F0:
    addiu   $v0,$zero,1
    lui     $at,0x800e
    sw      $v0,-29108($at)
    addu    $v0,$s1,$zero
    lw      $ra,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end PADMAIN_OBJ_F0
    .size PADMAIN_OBJ_F0, . - PADMAIN_OBJ_F0

/* PADPORTD_OBJ_298 (0x8003eca0, 36 bytes) */
    .section .text.PADPORTD_OBJ_298,"ax",@progbits
    .globl PADPORTD_OBJ_298
    .globl sym_8003ec00
    .type PADPORTD_OBJ_298, @function
    .ent PADPORTD_OBJ_298
PADPORTD_OBJ_298:
    beq     $v0,$zero,sym_8003ec00
    sll     $zero,$zero,0x0
    lw      $ra,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end PADPORTD_OBJ_298
    .size PADPORTD_OBJ_298, . - PADPORTD_OBJ_298

/* PADPORTD_OBJ_35C (0x8003ed64, 36 bytes) */
    .section .text.PADPORTD_OBJ_35C,"ax",@progbits
    .globl PADPORTD_OBJ_35C
    .globl sym_8003ed88
    .type PADPORTD_OBJ_35C, @function
    .ent PADPORTD_OBJ_35C
PADPORTD_OBJ_35C:
    lbu     $v0,54($a0)
    sll     $zero,$zero,0x0
    slt     $v0,$v1,$v0
    beq     $v0,$zero,sym_8003ed88
    addu    $v0,$zero,$zero
    lw      $v0,44($a0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    lbu     $v0,0($v0)
    .end PADPORTD_OBJ_35C
    .size PADPORTD_OBJ_35C, . - PADPORTD_OBJ_35C

/* PADSEQD_OBJ_108 (0x8003f170, 44 bytes) */
    .section .text.PADSEQD_OBJ_108,"ax",@progbits
    .globl PADSEQD_OBJ_108
    .globl sym_8003f19c
    .globl sym_8003d7f4
    .type PADSEQD_OBJ_108, @function
    .ent PADSEQD_OBJ_108
PADSEQD_OBJ_108:
    lw      $v0,20($s0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LPADSEQD_OBJ_108_20
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a0,$s0,$zero
    j       sym_8003f19c
    addu    $v0,$zero,$zero
.LPADSEQD_OBJ_108_20:
    jal     sym_8003d7f4
    addu    $a0,$s0,$zero
    addu    $v0,$zero,$zero
    .end PADSEQD_OBJ_108
    .size PADSEQD_OBJ_108, . - PADSEQD_OBJ_108

/* PADSEQD_OBJ_360 (0x8003f3c8, 40 bytes) */
    .section .text.PADSEQD_OBJ_360,"ax",@progbits
    .globl PADSEQD_OBJ_360
    .globl sym_8003f3f0
    .globl sym_8003d878
    .type PADSEQD_OBJ_360, @function
    .ent PADSEQD_OBJ_360
PADSEQD_OBJ_360:
    lw      $v0,24($s0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LPADSEQD_OBJ_360_20
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a0,$s0,$zero
    j       sym_8003f3f0
    sll     $zero,$zero,0x0
.LPADSEQD_OBJ_360_20:
    jal     sym_8003d878
    addu    $a0,$s0,$zero
    .end PADSEQD_OBJ_360
    .size PADSEQD_OBJ_360, . - PADSEQD_OBJ_360

/* PADSEQD_OBJ_488 (0x8003f4f0, 44 bytes) */
    .section .text.PADSEQD_OBJ_488,"ax",@progbits
    .globl PADSEQD_OBJ_488
    .type PADSEQD_OBJ_488, @function
    .ent PADSEQD_OBJ_488
PADSEQD_OBJ_488:
    lhu     $v0,230($a0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LPADSEQD_OBJ_488_20
    addiu   $v0,$zero,255
    lbu     $v1,70($a0)
    sll     $zero,$zero,0x0
    beq     $v1,$v0,.LPADSEQD_OBJ_488_24
    addu    $v0,$zero,$zero
.LPADSEQD_OBJ_488_20:
    addiu   $v0,$zero,1
.LPADSEQD_OBJ_488_24:
    jr      $ra
    sll     $zero,$zero,0x0
    .end PADSEQD_OBJ_488
    .size PADSEQD_OBJ_488, . - PADSEQD_OBJ_488

/* PClseek (0x800357fc, 36 bytes) */
    .section .text.PClseek,"ax",@progbits
    .globl PClseek
    .type PClseek, @function
    .ent PClseek
PClseek:
    addu    $a3,$a2,$zero
    addu    $a2,$a1,$zero
    addu    $a1,$a0,$zero
    break   0x0,0x107
    beq     $v0,$zero,.LPClseek_1c
    addu    $v0,$v1,$zero
    addiu   $v0,$zero,-1
.LPClseek_1c:
    jr      $ra
    sll     $zero,$zero,0x0
    .end PClseek
    .size PClseek, . - PClseek

/* PRESET_OBJ_1A8 (0x8007c688, 36 bytes) */
    .section .text.PRESET_OBJ_1A8,"ax",@progbits
    .globl PRESET_OBJ_1A8
    .globl sym_8007cddc
    .type PRESET_OBJ_1A8, @function
    .ent PRESET_OBJ_1A8
PRESET_OBJ_1A8:
    lw      $v0,-12($s1)
    addiu   $s2,$s2,16
    sw      $v0,0($s0)
    addiu   $s0,$s0,20
    lw      $v0,-12($s1)
    addiu   $s1,$s1,16
    sw      $v0,0($s0)
    j       sym_8007cddc
    addiu   $s0,$s0,16
    .end PRESET_OBJ_1A8
    .size PRESET_OBJ_1A8, . - PRESET_OBJ_1A8

/* PRESET_OBJ_8CC (0x8007cdac, 48 bytes) */
    .section .text.PRESET_OBJ_8CC,"ax",@progbits
    .globl PRESET_OBJ_8CC
    .globl sym_8003bae8
    .type PRESET_OBJ_8CC, @function
    .ent PRESET_OBJ_8CC
PRESET_OBJ_8CC:
    lbu     $a1,0($s2)
    lui     $a0,0x8002
    addiu   $a0,$a0,-10236
    sw      $a2,24($sp)
    sw      $a3,28($sp)
    sw      $t0,32($sp)
    jal     sym_8003bae8
    sw      $t1,36($sp)
    lw      $t1,36($sp)
    lw      $t0,32($sp)
    lw      $a3,28($sp)
    lw      $a2,24($sp)
    .end PRESET_OBJ_8CC
    .size PRESET_OBJ_8CC, . - PRESET_OBJ_8CC

/* READ_OBJ_94 (0x800358b4, 44 bytes) */
    .section .text.READ_OBJ_94,"ax",@progbits
    .globl READ_OBJ_94
    .type READ_OBJ_94, @function
    .ent READ_OBJ_94
READ_OBJ_94:
    lw      $ra,44($sp)
    lw      $s6,40($sp)
    lw      $s5,36($sp)
    lw      $s4,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    addiu   $sp,$sp,48
    jr      $ra
    sll     $zero,$zero,0x0
    .end READ_OBJ_94
    .size READ_OBJ_94, . - READ_OBJ_94

/* ResetCallback (0x80035b08, 48 bytes) */
    .section .text.ResetCallback,"ax",@progbits
    .globl ResetCallback
    .type ResetCallback, @function
    .ent ResetCallback
ResetCallback:
    lui     $v0,0x800e
    lw      $v0,-31012($v0)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lw      $v0,12($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    sll     $zero,$zero,0x0
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end ResetCallback
    .size ResetCallback, . - ResetCallback

/* ResetRCnt (0x8003bde0, 44 bytes) */
    .section .text.ResetRCnt,"ax",@progbits
    .globl ResetRCnt
    .globl sym_8003be0c
    .type ResetRCnt, @function
    .ent ResetRCnt
ResetRCnt:
    andi    $v1,$a0,0xffff
    slti    $v0,$v1,3
    beq     $v0,$zero,.LResetRCnt_28
    addiu   $v0,$zero,1
    lui     $a0,0x800e
    lw      $a0,-29216($a0)
    sll     $v1,$v1,0x4
    addu    $v1,$v1,$a0
    j       sym_8003be0c
    sh      $zero,0($v1)
.LResetRCnt_28:
    addu    $v0,$zero,$zero
    .end ResetRCnt
    .size ResetRCnt, . - ResetRCnt

/* RestartCallback (0x80035c2c, 48 bytes) */
    .section .text.RestartCallback,"ax",@progbits
    .globl RestartCallback
    .type RestartCallback, @function
    .ent RestartCallback
RestartCallback:
    lui     $v0,0x800e
    lw      $v0,-31012($v0)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lw      $v0,24($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    sll     $zero,$zero,0x0
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end RestartCallback
    .size RestartCallback, . - RestartCallback

/* SPRINTF_OBJ_2A0 (0x80061690, 36 bytes) */
    .section .text.SPRINTF_OBJ_2A0,"ax",@progbits
    .globl SPRINTF_OBJ_2A0
    .globl sym_80061b78
    .type SPRINTF_OBJ_2A0, @function
    .ent SPRINTF_OBJ_2A0
SPRINTF_OBJ_2A0:
    sltiu   $v0,$v1,45
    beq     $v0,$zero,sym_80061b78
    sll     $v0,$v1,0x2
    lui     $at,0x8002
    addu    $at,$at,$v0
    lw      $v0,-15552($at)
    sll     $zero,$zero,0x0
    jr      $v0
    sll     $zero,$zero,0x0
    .end SPRINTF_OBJ_2A0
    .size SPRINTF_OBJ_2A0, . - SPRINTF_OBJ_2A0

/* SPU_OBJ_A88 (0x8002e444, 40 bytes) */
    .section .text.SPU_OBJ_A88,"ax",@progbits
    .globl SPU_OBJ_A88
    .type SPU_OBJ_A88, @function
    .ent SPU_OBJ_A88
SPU_OBJ_A88:
    lui     $a0,0x800d
    lw      $a0,27512($a0)
    lui     $v1,0xf0ff
    lw      $v0,0($a0)
    ori     $v1,$v1,0xffff
    and     $v0,$v0,$v1
    lui     $v1,0x2000
    or      $v0,$v0,$v1
    jr      $ra
    sw      $v0,0($a0)
    .end SPU_OBJ_A88
    .size SPU_OBJ_A88, . - SPU_OBJ_A88

/* SPU_OBJ_AB0 (0x8002e46c, 40 bytes) */
    .section .text.SPU_OBJ_AB0,"ax",@progbits
    .globl SPU_OBJ_AB0
    .type SPU_OBJ_AB0, @function
    .ent SPU_OBJ_AB0
SPU_OBJ_AB0:
    lui     $a0,0x800d
    lw      $a0,27512($a0)
    lui     $v1,0xf0ff
    lw      $v0,0($a0)
    ori     $v1,$v1,0xffff
    and     $v0,$v0,$v1
    lui     $v1,0x2200
    or      $v0,$v0,$v1
    jr      $ra
    sw      $v0,0($a0)
    .end SPU_OBJ_AB0
    .size SPU_OBJ_AB0, . - SPU_OBJ_AB0

/* SSEND_OBJ_88 (0x8002fcb4, 36 bytes) */
    .section .text.SSEND_OBJ_88,"ax",@progbits
    .globl SSEND_OBJ_88
    .globl sym_8003bbf8
    .type SSEND_OBJ_88, @function
    .ent SSEND_OBJ_88
SSEND_OBJ_88:
    jal     sym_8003bbf8
    sll     $zero,$zero,0x0
    addiu   $v0,$zero,127
    lui     $at,0x800d
    sb      $v0,29158($at)
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end SSEND_OBJ_88
    .size SSEND_OBJ_88, . - SSEND_OBJ_88

/* SSTICK_OBJ_100 (0x80031a7c, 36 bytes) */
    .section .text.SSTICK_OBJ_100,"ax",@progbits
    .globl SSTICK_OBJ_100
    .globl sym_80031aa0
    .globl sym_80031ab4
    .type SSTICK_OBJ_100, @function
    .ent SSTICK_OBJ_100
SSTICK_OBJ_100:
    beq     $a0,$zero,.LSSTICK_OBJ_100_20
    addiu   $v0,$zero,1
    bne     $a0,$v0,sym_80031aa0
    addiu   $v0,$zero,60
    addiu   $v0,$zero,50
    lui     $at,0x800e
    j       sym_80031ab4
    sw      $v0,16716($at)
.LSSTICK_OBJ_100_20:
    addiu   $v0,$zero,60
    .end SSTICK_OBJ_100
    .size SSTICK_OBJ_100, . - SSTICK_OBJ_100

/* SSTICK_OBJ_84 (0x80031a00, 36 bytes) */
    .section .text.SSTICK_OBJ_84,"ax",@progbits
    .globl SSTICK_OBJ_84
    .globl sym_80031a38
    .globl sym_80031ab4
    .type SSTICK_OBJ_84, @function
    .ent SSTICK_OBJ_84
SSTICK_OBJ_84:
    addiu   $v1,$zero,50
    lui     $at,0x800e
    sw      $v1,16716($at)
    addiu   $v0,$zero,1
    beq     $a0,$v0,sym_80031a38
    addiu   $v0,$zero,5
    lui     $at,0x800d
    j       sym_80031ab4
    sw      $v1,29140($at)
    .end SSTICK_OBJ_84
    .size SSTICK_OBJ_84, . - SSTICK_OBJ_84

/* SYS_OBJ_1B1C (0x80039d04, 40 bytes) */
    .section .text.SYS_OBJ_1B1C,"ax",@progbits
    .globl SYS_OBJ_1B1C
    .globl sym_8003a260
    .type SYS_OBJ_1B1C, @function
    .ent SYS_OBJ_1B1C
SYS_OBJ_1B1C:
    lui     $a0,0x800e
    jal     sym_8003a260
    addiu   $a0,$a0,22088
    addu    $v0,$zero,$zero
    lw      $ra,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end SYS_OBJ_1B1C
    .size SYS_OBJ_1B1C, . - SYS_OBJ_1B1C

/* SYS_OBJ_1D5C (0x80039f44, 36 bytes) */
    .section .text.SYS_OBJ_1D5C,"ax",@progbits
    .globl SYS_OBJ_1D5C
    .type SYS_OBJ_1D5C, @function
    .ent SYS_OBJ_1D5C
SYS_OBJ_1D5C:
    lw      $ra,40($sp)
    lw      $s5,36($sp)
    lw      $s4,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,48
    .end SYS_OBJ_1D5C
    .size SYS_OBJ_1D5C, . - SYS_OBJ_1D5C

/* SYS_OBJ_2000 (0x8003a1e8, 36 bytes) */
    .section .text.SYS_OBJ_2000,"ax",@progbits
    .globl SYS_OBJ_2000
    .type SYS_OBJ_2000, @function
    .ent SYS_OBJ_2000
SYS_OBJ_2000:
    lui     $v0,0x800e
    lw      $v0,-29308($v0)
    sll     $zero,$zero,0x0
    sw      $a0,0($v0)
    srl     $v0,$a0,0x18
    lui     $at,0x800e
    addu    $at,$at,$v0
    jr      $ra
    sb      $a0,22160($at)
    .end SYS_OBJ_2000
    .size SYS_OBJ_2000, . - SYS_OBJ_2000

/* SYS_OBJ_20C0 (0x8003a2a8, 48 bytes) */
    .section .text.SYS_OBJ_20C0,"ax",@progbits
    .globl SYS_OBJ_20C0
    .type SYS_OBJ_20C0, @function
    .ent SYS_OBJ_20C0
SYS_OBJ_20C0:
    lui     $v0,0x1000
    lui     $v1,0x800e
    lw      $v1,-29308($v1)
    or      $a0,$a0,$v0
    sw      $a0,0($v1)
    lui     $v0,0x800e
    lw      $v0,-29312($v0)
    lui     $v1,0xff
    lw      $v0,0($v0)
    ori     $v1,$v1,0xffff
    jr      $ra
    and     $v0,$v0,$v1
    .end SYS_OBJ_20C0
    .size SYS_OBJ_20C0, . - SYS_OBJ_20C0

/* SYS_OBJ_20F0 (0x8003a2d8, 36 bytes) */
    .section .text.SYS_OBJ_20F0,"ax",@progbits
    .globl SYS_OBJ_20F0
    .globl sym_8003a2fc
    .type SYS_OBJ_20F0, @function
    .ent SYS_OBJ_20F0
SYS_OBJ_20F0:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    addu    $a3,$a2,$zero
    jal     sym_8003a2fc
    addu    $a2,$zero,$zero
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end SYS_OBJ_20F0
    .size SYS_OBJ_20F0, . - SYS_OBJ_20F0

/* SYS_OBJ_22F4 (0x8003a4dc, 36 bytes) */
    .section .text.SYS_OBJ_22F4,"ax",@progbits
    .globl SYS_OBJ_22F4
    .type SYS_OBJ_22F4, @function
    .ent SYS_OBJ_22F4
SYS_OBJ_22F4:
    lui     $v1,0x800e
    lw      $v1,-29276($v1)
    sll     $zero,$zero,0x0
    sll     $v0,$v1,0x1
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x5
    lui     $at,0x800e
    addu    $at,$at,$v0
    sw      $s0,22428($at)
    .end SYS_OBJ_22F4
    .size SYS_OBJ_22F4, . - SYS_OBJ_22F4

/* SYS_OBJ_2F08 (0x8003b0f0, 36 bytes) */
    .section .text.SYS_OBJ_2F08,"ax",@progbits
    .globl SYS_OBJ_2F08
    .type SYS_OBJ_2F08, @function
    .ent SYS_OBJ_2F08
SYS_OBJ_2F08:
    beq     $a2,$zero,.LSYS_OBJ_2F08_1c
    addiu   $v0,$a2,-1
    addiu   $v1,$zero,-1
.LSYS_OBJ_2F08_c:
    sb      $a1,0($a0)
    addiu   $v0,$v0,-1
    bne     $v0,$v1,.LSYS_OBJ_2F08_c
    addiu   $a0,$a0,1
.LSYS_OBJ_2F08_1c:
    jr      $ra
    sll     $zero,$zero,0x0
    .end SYS_OBJ_2F08
    .size SYS_OBJ_2F08, . - SYS_OBJ_2F08

/* SYS_OBJ_538 (0x8003fc70, 48 bytes) */
    .section .text.SYS_OBJ_538,"ax",@progbits
    .globl SYS_OBJ_538
    .type SYS_OBJ_538, @function
    .ent SYS_OBJ_538
SYS_OBJ_538:
    lw      $ra,52($sp)
    lw      $s8,48($sp)
    lw      $s7,44($sp)
    lw      $s6,40($sp)
    lw      $s5,36($sp)
    lw      $s4,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,56
    .end SYS_OBJ_538
    .size SYS_OBJ_538, . - SYS_OBJ_538

/* S_CRWA_OBJ_170 (0x8002ed1c, 36 bytes) */
    .section .text.S_CRWA_OBJ_170,"ax",@progbits
    .globl S_CRWA_OBJ_170
    .type S_CRWA_OBJ_170, @function
    .ent S_CRWA_OBJ_170
S_CRWA_OBJ_170:
    lw      $ra,48($sp)
    lw      $s5,44($sp)
    lw      $s4,40($sp)
    lw      $s3,36($sp)
    lw      $s2,32($sp)
    lw      $s1,28($sp)
    lw      $s0,24($sp)
    jr      $ra
    addiu   $sp,$sp,56
    .end S_CRWA_OBJ_170
    .size S_CRWA_OBJ_170, . - S_CRWA_OBJ_170

/* S_SRMP_OBJ_400 (0x8003254c, 36 bytes) */
    .section .text.S_SRMP_OBJ_400,"ax",@progbits
    .globl S_SRMP_OBJ_400
    .type S_SRMP_OBJ_400, @function
    .ent S_SRMP_OBJ_400
S_SRMP_OBJ_400:
    lui     $v0,0x800d
    lw      $v0,27492($v0)
    sll     $zero,$zero,0x0
    sh      $zero,388($v0)
    sh      $zero,390($v0)
    lui     $v0,0x800d
    addiu   $v0,$v0,27644
    sh      $zero,0($v0)
    sh      $zero,2($v0)
    .end S_SRMP_OBJ_400
    .size S_SRMP_OBJ_400, . - S_SRMP_OBJ_400

/* S_SRMP_OBJ_4A4 (0x800325f0, 48 bytes) */
    .section .text.S_SRMP_OBJ_4A4,"ax",@progbits
    .globl S_SRMP_OBJ_4A4
    .type S_SRMP_OBJ_4A4, @function
    .ent S_SRMP_OBJ_4A4
S_SRMP_OBJ_4A4:
    lw      $ra,132($sp)
    lw      $s8,128($sp)
    lw      $s7,124($sp)
    lw      $s6,120($sp)
    lw      $s5,116($sp)
    lw      $s4,112($sp)
    lw      $s3,108($sp)
    lw      $s2,104($sp)
    lw      $s1,100($sp)
    lw      $s0,96($sp)
    jr      $ra
    addiu   $sp,$sp,136
    .end S_SRMP_OBJ_4A4
    .size S_SRMP_OBJ_4A4, . - S_SRMP_OBJ_4A4

/* S_SVA_OBJ_170 (0x8002f59c, 48 bytes) */
    .section .text.S_SVA_OBJ_170,"ax",@progbits
    .globl S_SVA_OBJ_170
    .globl sym_8002f5cc
    .type S_SVA_OBJ_170, @function
    .ent S_SVA_OBJ_170
S_SVA_OBJ_170:
    beq     $a0,$zero,sym_8002f5cc
    sll     $zero,$zero,0x0
    lh      $v1,8($s0)
    sll     $zero,$zero,0x0
    slti    $v0,$v1,128
    bne     $v0,$zero,.LS_SVA_OBJ_170_24
    sll     $zero,$zero,0x0
    j       sym_8002f5cc
    addiu   $a1,$zero,127
.LS_SVA_OBJ_170_24:
    bgez    $v1,sym_8002f5cc
    sll     $zero,$zero,0x0
    addu    $a1,$zero,$zero
    .end S_SVA_OBJ_170
    .size S_SVA_OBJ_170, . - S_SVA_OBJ_170

/* S_SVA_OBJ_250 (0x8002f67c, 48 bytes) */
    .section .text.S_SVA_OBJ_250,"ax",@progbits
    .globl S_SVA_OBJ_250
    .globl sym_8002f6ac
    .type S_SVA_OBJ_250, @function
    .ent S_SVA_OBJ_250
S_SVA_OBJ_250:
    beq     $a0,$zero,sym_8002f6ac
    sll     $zero,$zero,0x0
    lh      $v1,10($s0)
    sll     $zero,$zero,0x0
    slti    $v0,$v1,128
    bne     $v0,$zero,.LS_SVA_OBJ_250_24
    sll     $zero,$zero,0x0
    j       sym_8002f6ac
    addiu   $a1,$zero,127
.LS_SVA_OBJ_250_24:
    bgez    $v1,sym_8002f6ac
    sll     $zero,$zero,0x0
    addu    $a1,$zero,$zero
    .end S_SVA_OBJ_250
    .size S_SVA_OBJ_250, . - S_SVA_OBJ_250

/* SetDrawTPage (0x8004eeb0, 44 bytes) */
    .section .text.SetDrawTPage,"ax",@progbits
    .globl SetDrawTPage
    .type SetDrawTPage, @function
    .ent SetDrawTPage
SetDrawTPage:
    addiu   $v0,$zero,1
    sb      $v0,3($a0)
    beq     $a2,$zero,.LSetDrawTPage_14
    lui     $v1,0xe100
    ori     $v1,$v1,0x200
.LSetDrawTPage_14:
    beq     $a1,$zero,.LSetDrawTPage_20
    andi    $v0,$a3,0x9ff
    ori     $v0,$v0,0x400
.LSetDrawTPage_20:
    or      $v0,$v1,$v0
    jr      $ra
    sw      $v0,4($a0)
    .end SetDrawTPage
    .size SetDrawTPage, . - SetDrawTPage

/* SpuGetKeyStatus (0x8002f11c, 44 bytes) */
    .section .text.SpuGetKeyStatus,"ax",@progbits
    .globl SpuGetKeyStatus
    .globl sym_8002f15c
    .type SpuGetKeyStatus, @function
    .ent SpuGetKeyStatus
SpuGetKeyStatus:
    addiu   $a1,$zero,-1
    addu    $v1,$zero,$zero
    addiu   $a2,$zero,1
    sllv    $v0,$a2,$v1
.LSpuGetKeyStatus_10:
    and     $v0,$a0,$v0
    bne     $v0,$zero,sym_8002f15c
    sll     $zero,$zero,0x0
    addiu   $v1,$v1,1
    slti    $v0,$v1,24
    bne     $v0,$zero,.LSpuGetKeyStatus_10
    sllv    $v0,$a2,$v1
    .end SpuGetKeyStatus
    .size SpuGetKeyStatus, . - SpuGetKeyStatus

/* SpuSetIRQAddr (0x8002eeac, 48 bytes) */
    .section .text.SpuSetIRQAddr,"ax",@progbits
    .globl SpuSetIRQAddr
    .globl sym_8002e30c
    .globl sym_8002eedc
    .type SpuSetIRQAddr, @function
    .ent SpuSetIRQAddr
SpuSetIRQAddr:
    addiu   $sp,$sp,-24
    addu    $a1,$a0,$zero
    lui     $v0,0x7
    ori     $v0,$v0,0xfff8
    sltu    $v0,$v0,$a1
    bne     $v0,$zero,.LSpuSetIRQAddr_2c
    sw      $ra,16($sp)
    jal     sym_8002e30c
    addiu   $a0,$zero,210
    j       sym_8002eedc
    sll     $zero,$zero,0x0
.LSpuSetIRQAddr_2c:
    addu    $v0,$zero,$zero
    .end SpuSetIRQAddr
    .size SpuSetIRQAddr, . - SpuSetIRQAddr

/* SsSepStop (0x80031614, 44 bytes) */
    .section .text.SsSepStop,"ax",@progbits
    .globl SsSepStop
    .globl sym_8003146c
    .type SsSepStop, @function
    .ent SsSepStop
SsSepStop:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    sll     $a0,$a0,0x10
    sll     $a1,$a1,0x10
    sra     $a0,$a0,0x10
    jal     sym_8003146c
    sra     $a1,$a1,0x10
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end SsSepStop
    .size SsSepStop, . - SsSepStop

/* SsSeqStop (0x800315ec, 40 bytes) */
    .section .text.SsSeqStop,"ax",@progbits
    .globl SsSeqStop
    .globl sym_8003146c
    .type SsSeqStop, @function
    .ent SsSeqStop
SsSeqStop:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    sll     $a0,$a0,0x10
    sra     $a0,$a0,0x10
    jal     sym_8003146c
    addu    $a1,$zero,$zero
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end SsSeqStop
    .size SsSeqStop, . - SsSeqStop

/* SsSetReservedVoice (0x80034b4c, 40 bytes) */
    .section .text.SsSetReservedVoice,"ax",@progbits
    .globl SsSetReservedVoice
    .globl sym_80034b74
    .type SsSetReservedVoice, @function
    .ent SsSetReservedVoice
SsSetReservedVoice:
    addiu   $v0,$a0,-1
    andi    $v0,$v0,0xff
    sltiu   $v0,$v0,24
    beq     $v0,$zero,.LSsSetReservedVoice_24
    sll     $v0,$a0,0x18
    lui     $at,0x800e
    sb      $a0,21012($at)
    j       sym_80034b74
    sra     $v0,$v0,0x18
.LSsSetReservedVoice_24:
    addiu   $v0,$zero,-1
    .end SsSetReservedVoice
    .size SsSetReservedVoice, . - SsSetReservedVoice

/* SsVabTransCompleted (0x800356ec, 40 bytes) */
    .section .text.SsVabTransCompleted,"ax",@progbits
    .globl SsVabTransCompleted
    .globl sym_8003571c
    .type SsVabTransCompleted, @function
    .ent SsVabTransCompleted
SsVabTransCompleted:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    sll     $a0,$a0,0x10
    jal     sym_8003571c
    sra     $a0,$a0,0x10
    sll     $v0,$v0,0x10
    lw      $ra,16($sp)
    sra     $v0,$v0,0x10
    jr      $ra
    addiu   $sp,$sp,24
    .end SsVabTransCompleted
    .size SsVabTransCompleted, . - SsVabTransCompleted

/* StartPAD (0x8003c214, 48 bytes) */
    .section .text.StartPAD,"ax",@progbits
    .globl StartPAD
    .globl sym_8003c3e8
    .globl sym_8003bc88
    .globl sym_8003c438
    .type StartPAD, @function
    .ent StartPAD
StartPAD:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_8003c3e8
    sll     $zero,$zero,0x0
    jal     sym_8003bc88
    addu    $a0,$zero,$zero
    jal     sym_8003c438
    sll     $zero,$zero,0x0
    lw      $ra,16($sp)
    addiu   $v0,$zero,1
    jr      $ra
    addiu   $sp,$sp,24
    .end StartPAD
    .size StartPAD, . - StartPAD

/* StartRCnt (0x8003bd7c, 48 bytes) */
    .section .text.StartRCnt,"ax",@progbits
    .globl StartRCnt
    .type StartRCnt, @function
    .ent StartRCnt
StartRCnt:
    andi    $v0,$a0,0xffff
    sll     $a0,$v0,0x2
    lui     $a1,0x800e
    lw      $a1,-29220($a1)
    lui     $at,0x800e
    addu    $at,$at,$a0
    lw      $a0,-29212($at)
    lw      $v1,4($a1)
    slti    $v0,$v0,3
    or      $v1,$v1,$a0
    jr      $ra
    sw      $v1,4($a1)
    .end StartRCnt
    .size StartRCnt, . - StartRCnt

/* StopCallback (0x80035bfc, 48 bytes) */
    .section .text.StopCallback,"ax",@progbits
    .globl StopCallback
    .type StopCallback, @function
    .ent StopCallback
StopCallback:
    lui     $v0,0x800e
    lw      $v0,-31012($v0)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lw      $v0,16($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    sll     $zero,$zero,0x0
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end StopCallback
    .size StopCallback, . - StopCallback

/* UT_KEYV_OBJ_32C (0x80032018, 48 bytes) */
    .section .text.UT_KEYV_OBJ_32C,"ax",@progbits
    .globl UT_KEYV_OBJ_32C
    .type UT_KEYV_OBJ_32C, @function
    .ent UT_KEYV_OBJ_32C
UT_KEYV_OBJ_32C:
    lw      $ra,60($sp)
    lw      $s8,56($sp)
    lw      $s7,52($sp)
    lw      $s6,48($sp)
    lw      $s5,44($sp)
    lw      $s4,40($sp)
    lw      $s3,36($sp)
    lw      $s2,32($sp)
    lw      $s1,28($sp)
    lw      $s0,24($sp)
    jr      $ra
    addiu   $sp,$sp,64
    .end UT_KEYV_OBJ_32C
    .size UT_KEYV_OBJ_32C, . - UT_KEYV_OBJ_32C

/* VM_NO1_OBJ_2A4 (0x80033aa0, 40 bytes) */
    .section .text.VM_NO1_OBJ_2A4,"ax",@progbits
    .globl VM_NO1_OBJ_2A4
    .globl sym_80033ac8
    .type VM_NO1_OBJ_2A4, @function
    .ent VM_NO1_OBJ_2A4
VM_NO1_OBJ_2A4:
    lui     $v1,0x800e
    lh      $v1,20992($v1)
    addiu   $v0,$zero,1
    bne     $v1,$v0,sym_80033ac8
    sltu    $v0,$s2,$s1
    beq     $v0,$zero,.LVM_NO1_OBJ_2A4_24
    sll     $zero,$zero,0x0
    j       sym_80033ac8
    addu    $s2,$s1,$zero
.LVM_NO1_OBJ_2A4_24:
    addu    $s1,$s2,$zero
    .end VM_NO1_OBJ_2A4
    .size VM_NO1_OBJ_2A4, . - VM_NO1_OBJ_2A4

/* VM_NO1_OBJ_53C (0x80033d38, 44 bytes) */
    .section .text.VM_NO1_OBJ_53C,"ax",@progbits
    .globl VM_NO1_OBJ_53C
    .type VM_NO1_OBJ_53C, @function
    .ent VM_NO1_OBJ_53C
VM_NO1_OBJ_53C:
    lui     $at,0x800e
    sh      $a3,18920($at)
    lui     $at,0x800e
    sh      $a2,18922($at)
    lw      $ra,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end VM_NO1_OBJ_53C
    .size VM_NO1_OBJ_53C, . - VM_NO1_OBJ_53C

/* VM_NOWON_OBJ_294 (0x80034110, 40 bytes) */
    .section .text.VM_NOWON_OBJ_294,"ax",@progbits
    .globl VM_NOWON_OBJ_294
    .globl sym_80034138
    .type VM_NOWON_OBJ_294, @function
    .ent VM_NOWON_OBJ_294
VM_NOWON_OBJ_294:
    lui     $v1,0x800e
    lh      $v1,20992($v1)
    addiu   $v0,$zero,1
    bne     $v1,$v0,sym_80034138
    sltu    $v0,$a0,$a1
    beq     $v0,$zero,.LVM_NOWON_OBJ_294_24
    sll     $zero,$zero,0x0
    j       sym_80034138
    addu    $a0,$a1,$zero
.LVM_NOWON_OBJ_294_24:
    addu    $a1,$a0,$zero
    .end VM_NOWON_OBJ_294
    .size VM_NOWON_OBJ_294, . - VM_NOWON_OBJ_294

/* VM_SEQ_OBJ_440 (0x8003478c, 48 bytes) */
    .section .text.VM_SEQ_OBJ_440,"ax",@progbits
    .globl VM_SEQ_OBJ_440
    .globl sym_800347c0
    .globl sym_800347bc
    .type VM_SEQ_OBJ_440, @function
    .ent VM_SEQ_OBJ_440
VM_SEQ_OBJ_440:
    lui     $v1,0x800e
    lh      $v1,20992($v1)
    addiu   $v0,$zero,1
    bne     $v1,$v0,sym_800347c0
    andi    $v0,$a0,0xffff
    andi    $v1,$a1,0xffff
    sltu    $v0,$v0,$v1
    beq     $v0,$zero,.LVM_SEQ_OBJ_440_2c
    sll     $zero,$zero,0x0
    j       sym_800347bc
    addu    $a0,$a1,$zero
.LVM_SEQ_OBJ_440_2c:
    addu    $a1,$a0,$zero
    .end VM_SEQ_OBJ_440
    .size VM_SEQ_OBJ_440, . - VM_SEQ_OBJ_440

/* VS_VH_OBJ_358 (0x80035304, 40 bytes) */
    .section .text.VS_VH_OBJ_358,"ax",@progbits
    .globl VS_VH_OBJ_358
    .globl sym_800335dc
    .globl VS_VH_OBJ_434
    .type VS_VH_OBJ_358, @function
    .ent VS_VH_OBJ_358
VS_VH_OBJ_358:
    jal     sym_800335dc
    sll     $zero,$zero,0x0
    lui     $v1,0x800e
    lhu     $v1,21144($v1)
    sll     $zero,$zero,0x0
    addiu   $v1,$v1,-1
    lui     $at,0x800e
    sh      $v1,21144($at)
    j       VS_VH_OBJ_434
    addiu   $v0,$zero,-1
    .end VS_VH_OBJ_358
    .size VS_VH_OBJ_358, . - VS_VH_OBJ_358

/* VS_VH_OBJ_434 (0x800353e0, 40 bytes) */
    .section .text.VS_VH_OBJ_434,"ax",@progbits
    .globl VS_VH_OBJ_434
    .type VS_VH_OBJ_434, @function
    .ent VS_VH_OBJ_434
VS_VH_OBJ_434:
    lw      $ra,1068($sp)
    lw      $s6,1064($sp)
    lw      $s5,1060($sp)
    lw      $s4,1056($sp)
    lw      $s3,1052($sp)
    lw      $s2,1048($sp)
    lw      $s1,1044($sp)
    lw      $s0,1040($sp)
    jr      $ra
    addiu   $sp,$sp,1072
    .end VS_VH_OBJ_434
    .size VS_VH_OBJ_434, . - VS_VH_OBJ_434

/* VSyncCallbacks (0x80035bcc, 48 bytes) */
    .section .text.VSyncCallbacks,"ax",@progbits
    .globl VSyncCallbacks
    .type VSyncCallbacks, @function
    .ent VSyncCallbacks
VSyncCallbacks:
    lui     $v0,0x800e
    lw      $v0,-31012($v0)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lw      $v0,20($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    sll     $zero,$zero,0x0
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end VSyncCallbacks
    .size VSyncCallbacks, . - VSyncCallbacks

/* VectorNormal (0x80060f50, 48 bytes) */
    .section .text.VectorNormal,"ax",@progbits
    .globl VectorNormal
    .globl sym_80060fb0
    .type VectorNormal, @function
    .ent VectorNormal
VectorNormal:
    lw      $t0,0($a0)
    lw      $t1,4($a0)
    lw      $t2,8($a0)
    addu    $a3,$ra,$zero
    jal     sym_80060fb0
    sll     $zero,$zero,0x0
    sw      $t0,0($a1)
    sw      $t1,4($a1)
    sw      $t2,8($a1)
    addu    $ra,$a3,$zero
    jr      $ra
    sll     $zero,$zero,0x0
    .end VectorNormal
    .size VectorNormal, . - VectorNormal

/* _GPU_ResetCallback (0x8003b0c8, 40 bytes) */
    .section .text._GPU_ResetCallback,"ax",@progbits
    .globl _GPU_ResetCallback
    .globl DMACallback
    .type _GPU_ResetCallback, @function
    .ent _GPU_ResetCallback
_GPU_ResetCallback:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lui     $a1,0x8004
    addiu   $a1,$a1,-23124
    jal     DMACallback
    addiu   $a0,$zero,2
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end _GPU_ResetCallback
    .size _GPU_ResetCallback, . - _GPU_ResetCallback

/* _SpuIsInAllocateArea (0x8002e75c, 44 bytes) */
    .section .text._SpuIsInAllocateArea,"ax",@progbits
    .globl _SpuIsInAllocateArea
    .globl sym_8002e7d4
    .type _SpuIsInAllocateArea, @function
    .ent _SpuIsInAllocateArea
_SpuIsInAllocateArea:
    lui     $v0,0x800d
    lw      $v0,27596($v0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.L_SpuIsInAllocateArea_1c
    lui     $t0,0x8000
    j       sym_8002e7d4
    addu    $v0,$zero,$zero
.L_SpuIsInAllocateArea_1c:
    lui     $a3,0x4000
    lui     $a2,0xfff
    ori     $a2,$a2,0xffff
    addu    $a1,$v0,$zero
    .end _SpuIsInAllocateArea
    .size _SpuIsInAllocateArea, . - _SpuIsInAllocateArea

/* _SsSndPlay (0x80030b3c, 44 bytes) */
    .section .text._SsSndPlay,"ax",@progbits
    .globl _SsSndPlay
    .globl sym_80030b6c
    .type _SsSndPlay, @function
    .ent _SsSndPlay
_SsSndPlay:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    sll     $a0,$a0,0x10
    sll     $a1,$a1,0x10
    sra     $a0,$a0,0x10
    jal     sym_80030b6c
    sra     $a1,$a1,0x10
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end _SsSndPlay
    .size _SsSndPlay, . - _SsSndPlay

/* _padSetVsyncParam (0x8003cb20, 44 bytes) */
    .section .text._padSetVsyncParam,"ax",@progbits
    .globl _padSetVsyncParam
    .type _padSetVsyncParam, @function
    .ent _padSetVsyncParam
_padSetVsyncParam:
    lui     $v0,0x800e
    addiu   $v0,$v0,29388
    lui     $v1,0x8004
    addiu   $v1,$v1,-13388
    sw      $v1,0($v0)
    lui     $v1,0x8004
    addiu   $v1,$v1,-13492
    sw      $v1,4($v0)
    sw      $zero,-4($v0)
    jr      $ra
    sw      $zero,8($v0)
    .end _padSetVsyncParam
    .size _padSetVsyncParam, . - _padSetVsyncParam

/* _padWaitRXready (0x8003d7a4, 40 bytes) */
    .section .text._padWaitRXready,"ax",@progbits
    .globl _padWaitRXready
    .type _padWaitRXready, @function
    .ent _padWaitRXready
_padWaitRXready:
    lui     $v1,0x800e
    lw      $v1,-29064($v1)
    sll     $zero,$zero,0x0
.L_padWaitRXready_c:
    lhu     $v0,4($v1)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x2
    beq     $v0,$zero,.L_padWaitRXready_c
    sll     $zero,$zero,0x0
    jr      $ra
    sll     $zero,$zero,0x0
    .end _padWaitRXready
    .size _padWaitRXready, . - _padWaitRXready

/* print_vector (0x800371d4, 48 bytes) */
    .section .text.print_vector,"ax",@progbits
    .globl print_vector
    .globl sym_8003bae8
    .type print_vector, @function
    .ent print_vector
print_vector:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lw      $a1,20($a0)
    lw      $a2,24($a0)
    lw      $a3,28($a0)
    lui     $a0,0x8002
    jal     sym_8003bae8
    addiu   $a0,$a0,-21224
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end print_vector
    .size print_vector, . - print_vector

/* rsin (0x8004964c, 44 bytes) */
    .section .text.rsin,"ax",@progbits
    .globl rsin
    .globl sym_80049688
    .globl sym_80049678
    .type rsin, @function
    .ent rsin
rsin:
    addiu   $sp,$sp,-24
    bltz    $a0,.Lrsin_1c
    sw      $ra,16($sp)
    jal     sym_80049688
    andi    $a0,$a0,0xfff
    j       sym_80049678
    sll     $zero,$zero,0x0
.Lrsin_1c:
    negu    $a0,$a0
    jal     sym_80049688
    andi    $a0,$a0,0xfff
    negu    $v0,$v0
    .end rsin
    .size rsin, . - rsin

