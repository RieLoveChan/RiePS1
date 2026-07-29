    .set noreorder
    .set noat
    .set nomacro

/* BIOS_OBJ_0 (0x8003fec8, 100 bytes) */
    .section .text.BIOS_OBJ_0,"ax",@progbits
    .globl BIOS_OBJ_0
    .globl sym_8004040c
    .globl sym_8003ff2c
    .type BIOS_OBJ_0, @function
    .ent BIOS_OBJ_0
BIOS_OBJ_0:
    addiu   $sp,$sp,-48
    lui     $v1,0x800e
    lw      $v1,-28120($v1)
    addiu   $v0,$zero,1
    sw      $ra,40($sp)
    sw      $s1,36($sp)
    sw      $s0,32($sp)
    sb      $v0,0($v1)
    lui     $a0,0x800e
    lw      $a0,-28108($a0)
    sll     $zero,$zero,0x0
    lbu     $v0,0($a0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x7
    sb      $v0,16($sp)
    lbu     $v0,16($sp)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,sym_8004040c
    addu    $s1,$zero,$zero
    j       sym_8003ff2c
    sll     $zero,$zero,0x0
    lbu     $v0,0($a0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x7
    sb      $v0,16($sp)
    .end BIOS_OBJ_0
    .size BIOS_OBJ_0, . - BIOS_OBJ_0

/* BIOS_OBJ_3A8 (0x80040270, 128 bytes) */
    .section .text.BIOS_OBJ_3A8,"ax",@progbits
    .globl BIOS_OBJ_3A8
    .globl sym_80040410
    .type BIOS_OBJ_3A8, @function
    .ent BIOS_OBJ_3A8
BIOS_OBJ_3A8:
    beq     $s1,$zero,.LBIOS_OBJ_3A8_14
    addiu   $v0,$zero,1
    bne     $s0,$v0,.LBIOS_OBJ_3A8_14
    sll     $zero,$zero,0x0
    addu    $s1,$zero,$zero
.LBIOS_OBJ_3A8_14:
    beq     $s1,$zero,.LBIOS_OBJ_3A8_20
    addiu   $v1,$zero,1
    addiu   $v1,$zero,5
.LBIOS_OBJ_3A8_20:
    lui     $v0,0x800e
    addiu   $v0,$v0,-28096
    sb      $v1,1($v0)
    lui     $v1,0x800e
    addiu   $v1,$v1,30072
    beq     $v1,$zero,.LBIOS_OBJ_3A8_5c
    addiu   $a1,$sp,24
    addiu   $a0,$zero,7
    addiu   $a2,$zero,-1
.LBIOS_OBJ_3A8_44:
    lbu     $v0,0($a1)
    addiu   $a1,$a1,1
    addiu   $a0,$a0,-1
    sb      $v0,0($v1)
    bne     $a0,$a2,.LBIOS_OBJ_3A8_44
    addiu   $v1,$v1,1
.LBIOS_OBJ_3A8_5c:
    lui     $v0,0x800e
    lw      $v0,-28120($v0)
    sll     $zero,$zero,0x0
    sb      $zero,0($v0)
    lui     $v1,0x800e
    lw      $v1,-28108($v1)
    addiu   $v0,$zero,4
    j       sym_80040410
    sb      $zero,0($v1)
    .end BIOS_OBJ_3A8
    .size BIOS_OBJ_3A8, . - BIOS_OBJ_3A8

/* BIOS_OBJ_428 (0x800402f0, 128 bytes) */
    .section .text.BIOS_OBJ_428,"ax",@progbits
    .globl BIOS_OBJ_428
    .globl sym_80040410
    .type BIOS_OBJ_428, @function
    .ent BIOS_OBJ_428
BIOS_OBJ_428:
    lui     $a0,0x800e
    addiu   $a0,$a0,30080
    lui     $v0,0x800e
    addiu   $v0,$v0,-28096
    addiu   $v1,$zero,4
    sb      $v1,2($v0)
    lbu     $v1,2($v0)
    addiu   $a1,$sp,24
    sb      $v1,1($v0)
    beq     $a0,$zero,.LBIOS_OBJ_428_48
    addiu   $v1,$zero,7
    addiu   $a2,$zero,-1
.LBIOS_OBJ_428_30:
    lbu     $v0,0($a1)
    addiu   $a1,$a1,1
    addiu   $v1,$v1,-1
    sb      $v0,0($a0)
    bne     $v1,$a2,.LBIOS_OBJ_428_30
    addiu   $a0,$a0,1
.LBIOS_OBJ_428_48:
    lui     $v1,0x800e
    addiu   $v1,$v1,30072
    beq     $v1,$zero,.LBIOS_OBJ_428_78
    addiu   $a1,$sp,24
    addiu   $a0,$zero,7
    addiu   $a2,$zero,-1
.LBIOS_OBJ_428_60:
    lbu     $v0,0($a1)
    addiu   $a1,$a1,1
    addiu   $a0,$a0,-1
    sb      $v0,0($v1)
    bne     $a0,$a2,.LBIOS_OBJ_428_60
    addiu   $v1,$v1,1
.LBIOS_OBJ_428_78:
    j       sym_80040410
    addiu   $v0,$zero,4
    .end BIOS_OBJ_428
    .size BIOS_OBJ_428, . - BIOS_OBJ_428

/* BIOS_OBJ_4A8 (0x80040370, 128 bytes) */
    .section .text.BIOS_OBJ_4A8,"ax",@progbits
    .globl BIOS_OBJ_4A8
    .globl sym_80040410
    .type BIOS_OBJ_4A8, @function
    .ent BIOS_OBJ_4A8
BIOS_OBJ_4A8:
    lui     $a0,0x800e
    addiu   $a0,$a0,30064
    lui     $v0,0x800e
    addiu   $v0,$v0,-28096
    addiu   $v1,$zero,5
    sb      $v1,1($v0)
    lbu     $v1,1($v0)
    addiu   $a1,$sp,24
    sb      $v1,0($v0)
    beq     $a0,$zero,.LBIOS_OBJ_4A8_48
    addiu   $v1,$zero,7
    addiu   $a2,$zero,-1
.LBIOS_OBJ_4A8_30:
    lbu     $v0,0($a1)
    addiu   $a1,$a1,1
    addiu   $v1,$v1,-1
    sb      $v0,0($a0)
    bne     $v1,$a2,.LBIOS_OBJ_4A8_30
    addiu   $a0,$a0,1
.LBIOS_OBJ_4A8_48:
    lui     $v1,0x800e
    addiu   $v1,$v1,30072
    beq     $v1,$zero,.LBIOS_OBJ_4A8_78
    addiu   $a1,$sp,24
    addiu   $a0,$zero,7
    addiu   $a2,$zero,-1
.LBIOS_OBJ_4A8_60:
    lbu     $v0,0($a1)
    addiu   $a1,$a1,1
    addiu   $a0,$a0,-1
    sb      $v0,0($v1)
    bne     $a0,$a2,.LBIOS_OBJ_4A8_60
    addiu   $v1,$v1,1
.LBIOS_OBJ_4A8_78:
    j       sym_80040410
    addiu   $v0,$zero,6
    .end BIOS_OBJ_4A8
    .size BIOS_OBJ_4A8, . - BIOS_OBJ_4A8

/* CdInit (0x8003f5e8, 128 bytes) */
    .section .text.CdInit,"ax",@progbits
    .globl CdInit
    .globl sym_8003f678
    .globl sym_8003f668
    .globl sym_8003bae8
    .type CdInit, @function
    .ent CdInit
CdInit:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    addiu   $s0,$zero,4
    sw      $ra,20($sp)
.LCdInit_10:
    jal     sym_8003f678
    sll     $zero,$zero,0x0
    addiu   $v1,$zero,1
    bne     $v0,$v1,.LCdInit_60
    addiu   $v0,$zero,1
    lui     $v1,0x8004
    addiu   $v1,$v1,-2380
    lui     $at,0x800e
    sw      $v1,-28828($at)
    lui     $v1,0x8004
    addiu   $v1,$v1,-2340
    lui     $at,0x800e
    sw      $v1,-28824($at)
    lui     $v1,0x8004
    addiu   $v1,$v1,-2300
    lui     $at,0x800e
    sw      $v1,-28980($at)
    lui     $at,0x800e
    j       sym_8003f668
    sw      $zero,-28976($at)
.LCdInit_60:
    addiu   $s0,$s0,-1
    addiu   $v0,$zero,-1
    bne     $s0,$v0,.LCdInit_10
    sll     $zero,$zero,0x0
    lui     $a0,0x8002
    jal     sym_8003bae8
    addiu   $a0,$a0,-20460
    addu    $v0,$zero,$zero
    .end CdInit
    .size CdInit, . - CdInit

/* CdPosToInt (0x8003fe48, 128 bytes) */
    .section .text.CdPosToInt,"ax",@progbits
    .globl CdPosToInt
    .type CdPosToInt, @function
    .ent CdPosToInt
CdPosToInt:
    lbu     $v1,0($a0)
    lbu     $a2,1($a0)
    srl     $a1,$v1,0x4
    sll     $v0,$a1,0x2
    addu    $v0,$v0,$a1
    sll     $v0,$v0,0x1
    andi    $v1,$v1,0xf
    addu    $v0,$v0,$v1
    sll     $a1,$v0,0x4
    subu    $a1,$a1,$v0
    sll     $a1,$a1,0x2
    srl     $v1,$a2,0x4
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x1
    andi    $a2,$a2,0xf
    addu    $v0,$v0,$a2
    addu    $a1,$a1,$v0
    sll     $v1,$a1,0x2
    addu    $v1,$v1,$a1
    sll     $v0,$v1,0x4
    lbu     $a1,2($a0)
    subu    $v0,$v0,$v1
    srl     $a0,$a1,0x4
    sll     $v1,$a0,0x2
    addu    $v1,$v1,$a0
    sll     $v1,$v1,0x1
    andi    $a1,$a1,0xf
    addu    $v1,$v1,$a1
    addu    $v0,$v0,$v1
    jr      $ra
    addiu   $v0,$v0,-150
    .end CdPosToInt
    .size CdPosToInt, . - CdPosToInt

/* DrawOTag (0x80038b58, 112 bytes) */
    .section .text.DrawOTag,"ax",@progbits
    .globl DrawOTag
    .type DrawOTag, @function
    .ent DrawOTag
DrawOTag:
    lui     $v0,0x800e
    lbu     $v0,-29570($v0)
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    sltiu   $v0,$v0,2
    bne     $v0,$zero,.LDrawOTag_3c
    sw      $ra,20($sp)
    lui     $a0,0x8002
    addiu   $a0,$a0,-20684
    lui     $v0,0x800e
    lw      $v0,-29576($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a1,$s0,$zero
.LDrawOTag_3c:
    addu    $a1,$s0,$zero
    lui     $v0,0x800e
    lw      $v0,-29580($v0)
    addu    $a2,$zero,$zero
    lw      $a0,24($v0)
    lw      $v0,8($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a3,$zero,$zero
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end DrawOTag
    .size DrawOTag, . - DrawOTag

/* DrawSync (0x80038564, 104 bytes) */
    .section .text.DrawSync,"ax",@progbits
    .globl DrawSync
    .type DrawSync, @function
    .ent DrawSync
DrawSync:
    lui     $v0,0x800e
    lbu     $v0,-29570($v0)
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    sltiu   $v0,$v0,2
    bne     $v0,$zero,.LDrawSync_3c
    sw      $ra,20($sp)
    lui     $a0,0x8002
    addiu   $a0,$a0,-20848
    lui     $v0,0x800e
    lw      $v0,-29576($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a1,$s0,$zero
.LDrawSync_3c:
    lui     $v0,0x800e
    lw      $v0,-29580($v0)
    sll     $zero,$zero,0x0
    lw      $v0,60($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a0,$s0,$zero
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end DrawSync
    .size DrawSync, . - DrawSync

/* FGO_01_OBJ_64 (0x80053980, 104 bytes) */
    .section .text.FGO_01_OBJ_64,"ax",@progbits
    .globl FGO_01_OBJ_64
    .globl sym_800539e8
    .type FGO_01_OBJ_64, @function
    .ent FGO_01_OBJ_64
FGO_01_OBJ_64:
    lh      $t7,2($a0)
    sll     $zero,$zero,0x0
    bgez    $t7,.LFGO_01_OBJ_64_44
    andi    $t9,$t7,0xfff
    negu    $t7,$t7
    bgez    $t7,.LFGO_01_OBJ_64_1c
    andi    $t7,$t7,0xfff
.LFGO_01_OBJ_64_1c:
    sll     $t8,$t7,0x2
    lui     $t9,0x800e
    addu    $t9,$t9,$t8
    lw      $t9,-25496($t9)
    sll     $zero,$zero,0x0
    sll     $t4,$t9,0x10
    sra     $t4,$t4,0x10
    negu    $t6,$t4
    j       sym_800539e8
    sra     $t1,$t9,0x10
.LFGO_01_OBJ_64_44:
    sll     $t8,$t9,0x2
    lui     $t9,0x800e
    addu    $t9,$t9,$t8
    lw      $t9,-25496($t9)
    sll     $zero,$zero,0x0
    sll     $t6,$t9,0x10
    sra     $t6,$t6,0x10
    negu    $t4,$t6
    sra     $t1,$t9,0x10
    .end FGO_01_OBJ_64
    .size FGO_01_OBJ_64, . - FGO_01_OBJ_64

/* FGO_02_OBJ_68 (0x800611c8, 100 bytes) */
    .section .text.FGO_02_OBJ_68,"ax",@progbits
    .globl FGO_02_OBJ_68
    .globl sym_8006122c
    .type FGO_02_OBJ_68, @function
    .ent FGO_02_OBJ_68
FGO_02_OBJ_68:
    lh      $t7,2($a0)
    sll     $zero,$zero,0x0
    bgez    $t7,.LFGO_02_OBJ_68_44
    andi    $t9,$t7,0xfff
    negu    $t7,$t7
    bgez    $t7,.LFGO_02_OBJ_68_1c
    andi    $t7,$t7,0xfff
.LFGO_02_OBJ_68_1c:
    sll     $t8,$t7,0x2
    lui     $t9,0x800e
    addu    $t9,$t9,$t8
    lw      $t9,-25496($t9)
    sll     $zero,$zero,0x0
    sll     $t8,$t9,0x10
    sra     $t8,$t8,0x10
    negu    $t4,$t8
    j       sym_8006122c
    sra     $t1,$t9,0x10
.LFGO_02_OBJ_68_44:
    sll     $t8,$t9,0x2
    lui     $t9,0x800e
    addu    $t9,$t9,$t8
    lw      $t9,-25496($t9)
    sll     $zero,$zero,0x0
    sll     $t8,$t9,0x10
    sra     $t4,$t8,0x10
    sra     $t1,$t9,0x10
    .end FGO_02_OBJ_68
    .size FGO_02_OBJ_68, . - FGO_02_OBJ_68

/* FGO_03_OBJ_64 (0x8007e24c, 104 bytes) */
    .section .text.FGO_03_OBJ_64,"ax",@progbits
    .globl FGO_03_OBJ_64
    .globl sym_8007e2b4
    .type FGO_03_OBJ_64, @function
    .ent FGO_03_OBJ_64
FGO_03_OBJ_64:
    lh      $t7,2($a0)
    sll     $zero,$zero,0x0
    bgez    $t7,.LFGO_03_OBJ_64_44
    andi    $t9,$t7,0xfff
    negu    $t7,$t7
    bgez    $t7,.LFGO_03_OBJ_64_1c
    andi    $t7,$t7,0xfff
.LFGO_03_OBJ_64_1c:
    sll     $t8,$t7,0x2
    lui     $t9,0x800e
    addu    $t9,$t9,$t8
    lw      $t9,-25496($t9)
    sll     $zero,$zero,0x0
    sll     $t6,$t9,0x10
    sra     $t6,$t6,0x10
    negu    $t4,$t6
    j       sym_8007e2b4
    sra     $t1,$t9,0x10
.LFGO_03_OBJ_64_44:
    sll     $t8,$t9,0x2
    lui     $t9,0x800e
    addu    $t9,$t9,$t8
    lw      $t9,-25496($t9)
    sll     $zero,$zero,0x0
    sll     $t6,$t9,0x10
    sra     $t4,$t6,0x10
    negu    $t6,$t4
    sra     $t1,$t9,0x10
    .end FGO_03_OBJ_64
    .size FGO_03_OBJ_64, . - FGO_03_OBJ_64

/* GS_107_OBJ_444 (0x80037dcc, 116 bytes) */
    .section .text.GS_107_OBJ_444,"ax",@progbits
    .globl GS_107_OBJ_444
    .globl GS_107_OBJ_4B8
    .type GS_107_OBJ_444, @function
    .ent GS_107_OBJ_444
GS_107_OBJ_444:
    lui     $a1,0x800e
    addiu   $a1,$a1,21848
    lw      $v0,16($sp)
    lw      $v1,20($sp)
    lw      $a0,24($sp)
    sw      $v0,0($a1)
    sw      $v1,4($a1)
    sw      $a0,8($a1)
    lw      $v0,28($sp)
    lw      $v1,32($sp)
    lw      $a0,36($sp)
    sw      $v0,12($a1)
    sw      $v1,16($a1)
    sw      $a0,20($a1)
    lw      $v0,40($sp)
    lw      $v1,44($sp)
    sw      $v0,24($a1)
    sw      $v1,28($a1)
    jal     GS_107_OBJ_4B8
    addiu   $a0,$sp,48
    addu    $v0,$zero,$zero
    lw      $ra,140($sp)
    lw      $s4,136($sp)
    lw      $s3,132($sp)
    lw      $s2,128($sp)
    lw      $s1,124($sp)
    lw      $s0,120($sp)
    jr      $ra
    addiu   $sp,$sp,144
    .end GS_107_OBJ_444
    .size GS_107_OBJ_444, . - GS_107_OBJ_444

/* GS_107_OBJ_4B8 (0x80037e40, 100 bytes) */
    .section .text.GS_107_OBJ_4B8,"ax",@progbits
    .globl GS_107_OBJ_4B8
    .globl sym_80037f88
    .type GS_107_OBJ_4B8, @function
    .ent GS_107_OBJ_4B8
GS_107_OBJ_4B8:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lui     $a2,0x800e
    addiu   $a2,$a2,21880
    lw      $v0,0($a0)
    lw      $v1,4($a0)
    lw      $a1,8($a0)
    sw      $v0,0($a2)
    sw      $v1,4($a2)
    sw      $a1,8($a2)
    lw      $v0,12($a0)
    lw      $v1,16($a0)
    lw      $a1,20($a0)
    sw      $v0,12($a2)
    sw      $v1,16($a2)
    sw      $a1,20($a2)
    lw      $v0,24($a0)
    lw      $v1,28($a0)
    sw      $v0,24($a2)
    jal     sym_80037f88
    sw      $v1,28($a2)
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end GS_107_OBJ_4B8
    .size GS_107_OBJ_4B8, . - GS_107_OBJ_4B8

/* GsDefDispBuff (0x80037868, 120 bytes) */
    .section .text.GsDefDispBuff,"ax",@progbits
    .globl GsDefDispBuff
    .globl sym_800378e0
    .type GsDefDispBuff, @function
    .ent GsDefDispBuff
GsDefDispBuff:
    addiu   $sp,$sp,-24
    lui     $v1,0x800e
    lh      $v1,21694($v1)
    lui     $v0,0x800e
    addiu   $v0,$v0,21536
    sw      $ra,16($sp)
    sh      $a0,0($v0)
    sh      $a2,2($v0)
    lui     $v0,0x800e
    addiu   $v0,$v0,21540
    sh      $a1,0($v0)
    beq     $v1,$zero,.LGsDefDispBuff_58
    sh      $a3,2($v0)
    lui     $v0,0x800e
    addiu   $v0,$v0,21544
    sh      $zero,0($v0)
    sh      $zero,2($v0)
    lui     $v0,0x800e
    addiu   $v0,$v0,21548
    sh      $zero,0($v0)
    j       sym_800378e0
    sh      $zero,2($v0)
.LGsDefDispBuff_58:
    lui     $v0,0x800e
    addiu   $v0,$v0,21544
    sh      $a0,0($v0)
    sh      $a2,2($v0)
    lui     $v0,0x800e
    addiu   $v0,$v0,21548
    sh      $a1,0($v0)
    sh      $a3,2($v0)
    .end GsDefDispBuff
    .size GsDefDispBuff, . - GsDefDispBuff

/* GsInit3D (0x80037908, 116 bytes) */
    .section .text.GsInit3D,"ax",@progbits
    .globl GsInit3D
    .globl sym_80036cb8
    .type GsInit3D, @function
    .ent GsInit3D
GsInit3D:
    addiu   $sp,$sp,-24
    lui     $v0,0x800e
    lw      $v0,21824($v0)
    lui     $a0,0x800e
    addiu   $a0,$a0,21552
    sw      $ra,16($sp)
    srl     $v1,$v0,0x1f
    addu    $v0,$v0,$v1
    lui     $v1,0x800e
    lw      $v1,21828($v1)
    sra     $v0,$v0,0x1
    sh      $v0,0($a0)
    srl     $v0,$v1,0x1f
    addu    $v1,$v1,$v0
    sra     $v1,$v1,0x1
    jal     sym_80036cb8
    sh      $v1,2($a0)
    addiu   $v0,$zero,10
    lui     $at,0x800e
    sw      $v0,21840($at)
    addiu   $v0,$zero,16383
    lui     $at,0x800e
    sw      $zero,21836($at)
    lui     $at,0x800e
    sw      $v0,21832($at)
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end GsInit3D
    .size GsInit3D, . - GsInit3D

/* GsInitCoordinate2 (0x80036e48, 112 bytes) */
    .section .text.GsInitCoordinate2,"ax",@progbits
    .globl GsInitCoordinate2
    .type GsInitCoordinate2, @function
    .ent GsInitCoordinate2
GsInitCoordinate2:
    addu    $a3,$a1,$zero
    lui     $a2,0x800e
    addiu   $a2,$a2,21944
    lw      $v0,0($a2)
    lw      $v1,4($a2)
    lw      $a1,8($a2)
    sw      $v0,4($a3)
    sw      $v1,8($a3)
    sw      $a1,12($a3)
    lw      $v0,12($a2)
    lw      $v1,16($a2)
    lw      $a1,20($a2)
    sw      $v0,16($a3)
    sw      $v1,20($a3)
    sw      $a1,24($a3)
    lw      $v0,24($a2)
    lw      $v1,28($a2)
    sw      $v0,28($a3)
    sw      $v1,32($a3)
    sw      $a0,72($a3)
    sltiu   $a0,$a0,2
    bne     $a0,$zero,.LGsInitCoordinate2_68
    sw      $zero,0($a3)
    lw      $v0,72($a3)
    sll     $zero,$zero,0x0
    sw      $a3,76($v0)
.LGsInitCoordinate2_68:
    jr      $ra
    sll     $zero,$zero,0x0
    .end GsInitCoordinate2
    .size GsInitCoordinate2, . - GsInitCoordinate2

/* GsInitGraph (0x80036758, 116 bytes) */
    .section .text.GsInitGraph,"ax",@progbits
    .globl GsInitGraph
    .globl sym_800367cc
    .globl sym_80037fb8
    .globl sym_80036950
    .globl GsSetDrawBuffClip
    .globl sym_80036cb8
    .type GsInitGraph, @function
    .ent GsInitGraph
GsInitGraph:
    addiu   $sp,$sp,-40
    sw      $s1,28($sp)
    andi    $s1,$a0,0xffff
    addu    $a0,$s1,$zero
    sw      $s0,24($sp)
    andi    $s0,$a1,0xffff
    addu    $a1,$s0,$zero
    andi    $a2,$a2,0xffff
    lhu     $v0,56($sp)
    andi    $a3,$a3,0xffff
    sw      $ra,32($sp)
    jal     sym_800367cc
    sw      $v0,16($sp)
    jal     sym_80037fb8
    sll     $zero,$zero,0x0
    addu    $a0,$s1,$zero
    lui     $at,0x800e
    sh      $zero,21692($at)
    jal     sym_80036950
    addu    $a1,$s0,$zero
    jal     GsSetDrawBuffClip
    sll     $zero,$zero,0x0
    jal     sym_80036cb8
    sll     $zero,$zero,0x0
    lw      $ra,32($sp)
    lw      $s1,28($sp)
    lw      $s0,24($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end GsInitGraph
    .size GsInitGraph, . - GsInitGraph

/* GsInitGraph2 (0x800368e8, 104 bytes) */
    .section .text.GsInitGraph2,"ax",@progbits
    .globl GsInitGraph2
    .globl sym_80036950
    .type GsInitGraph2, @function
    .ent GsInitGraph2
GsInitGraph2:
    addiu   $sp,$sp,-24
    lui     $v0,0x800e
    addiu   $v0,$v0,21580
    lhu     $t0,40($sp)
    lui     $v1,0x800e
    addiu   $v1,$v1,21660
    sw      $ra,16($sp)
    sh      $zero,0($v0)
    sb      $a3,2($v0)
    sb      $zero,3($v0)
    sb      $zero,4($v0)
    andi    $v0,$a2,0x1
    andi    $a2,$a2,0x4
    sh      $a0,0($v1)
    andi    $a0,$a0,0xffff
    sh      $a1,2($v1)
    andi    $a1,$a1,0xffff
    sb      $v0,12($v1)
    lui     $at,0x800e
    sh      $a2,21694($at)
    jal     sym_80036950
    sb      $t0,13($v1)
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end GsInitGraph2
    .size GsInitGraph2, . - GsInitGraph2

/* GsMapModelingData (0x8007c470, 112 bytes) */
    .section .text.GsMapModelingData,"ax",@progbits
    .globl GsMapModelingData
    .type GsMapModelingData, @function
    .ent GsMapModelingData
GsMapModelingData:
    lw      $v1,0($a0)
    sll     $zero,$zero,0x0
    andi    $v0,$v1,0x1
    bne     $v0,$zero,.LGsMapModelingData_68
    ori     $v0,$v1,0x1
    sw      $v0,0($a0)
    addiu   $a0,$a0,4
    addu    $a2,$zero,$zero
    lw      $a3,0($a0)
    sll     $zero,$zero,0x0
    blez    $a3,.LGsMapModelingData_68
    addiu   $a0,$a0,4
    addu    $a1,$a0,$zero
.LGsMapModelingData_34:
    addiu   $a2,$a2,1
    lw      $v0,0($a1)
    lw      $v1,16($a1)
    addu    $v0,$v0,$a0
    sw      $v0,0($a1)
    lw      $v0,8($a1)
    addu    $v1,$v1,$a0
    sw      $v1,16($a1)
    addu    $v0,$v0,$a0
    sw      $v0,8($a1)
    slt     $v0,$a2,$a3
    bne     $v0,$zero,.LGsMapModelingData_34
    addiu   $a1,$a1,28
.LGsMapModelingData_68:
    jr      $ra
    sll     $zero,$zero,0x0
    .end GsMapModelingData
    .size GsMapModelingData, . - GsMapModelingData

/* GsMulCoord2 (0x80037064, 128 bytes) */
    .section .text.GsMulCoord2,"ax",@progbits
    .globl GsMulCoord2
    .globl sym_80037318
    .globl sym_800376d8
    .type GsMulCoord2, @function
    .ent GsMulCoord2
GsMulCoord2:
    addiu   $sp,$sp,-48
    sw      $s0,32($sp)
    addu    $s0,$a0,$zero
    sw      $s1,36($sp)
    addu    $s1,$a1,$zero
    addiu   $a1,$s1,20
    sw      $ra,40($sp)
    jal     sym_80037318
    addiu   $a2,$sp,16
    addu    $a0,$s0,$zero
    jal     sym_800376d8
    addu    $a1,$s1,$zero
    lw      $v0,16($sp)
    lw      $v1,20($s0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    sw      $v0,20($s1)
    lw      $v0,20($sp)
    lw      $v1,24($s0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    sw      $v0,24($s1)
    lw      $v0,24($sp)
    lw      $v1,28($s0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    sw      $v0,28($s1)
    lw      $ra,40($sp)
    lw      $s1,36($sp)
    lw      $s0,32($sp)
    jr      $ra
    addiu   $sp,$sp,48
    .end GsMulCoord2
    .size GsMulCoord2, . - GsMulCoord2

/* GsMulCoord3 (0x800370e4, 128 bytes) */
    .section .text.GsMulCoord3,"ax",@progbits
    .globl GsMulCoord3
    .globl sym_80037318
    .globl sym_800375c8
    .type GsMulCoord3, @function
    .ent GsMulCoord3
GsMulCoord3:
    addiu   $sp,$sp,-48
    sw      $s0,32($sp)
    addu    $s0,$a0,$zero
    sw      $s1,36($sp)
    addu    $s1,$a1,$zero
    addiu   $a1,$s1,20
    sw      $ra,40($sp)
    jal     sym_80037318
    addiu   $a2,$sp,16
    addu    $a0,$s0,$zero
    jal     sym_800375c8
    addu    $a1,$s1,$zero
    lw      $v0,16($sp)
    lw      $v1,20($s0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    sw      $v0,20($s0)
    lw      $v0,20($sp)
    lw      $v1,24($s0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    sw      $v0,24($s0)
    lw      $v0,24($sp)
    lw      $v1,28($s0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    sw      $v0,28($s0)
    lw      $ra,40($sp)
    lw      $s1,36($sp)
    lw      $s0,32($sp)
    jr      $ra
    addiu   $sp,$sp,48
    .end GsMulCoord3
    .size GsMulCoord3, . - GsMulCoord3

/* GsSetClip (0x8009fed4, 120 bytes) */
    .section .text.GsSetClip,"ax",@progbits
    .globl GsSetClip
    .globl sym_80038bc8
    .type GsSetClip, @function
    .ent GsSetClip
GsSetClip:
    addiu   $sp,$sp,-24
    lui     $v1,0x800e
    lh      $v1,21692($v1)
    addu    $a2,$a0,$zero
    sw      $ra,16($sp)
    lh      $a1,0($a2)
    sll     $v1,$v1,0x1
    lui     $v0,0x800e
    addu    $v0,$v0,$v1
    lh      $v0,21536($v0)
    lui     $at,0x800e
    addu    $at,$at,$v1
    lh      $v1,21540($at)
    addu    $a1,$a1,$v0
    lh      $v0,2($a2)
    lui     $a0,0x800e
    addiu   $a0,$a0,21560
    sh      $a1,0($a0)
    addu    $v0,$v0,$v1
    sh      $v0,2($a0)
    lhu     $v0,4($a2)
    sll     $zero,$zero,0x0
    sh      $v0,4($a0)
    lhu     $v0,6($a2)
    jal     sym_80038bc8
    sh      $v0,6($a0)
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end GsSetClip
    .size GsSetClip, . - GsSetClip

/* GsSetDrawBuffClip (0x80036dc8, 120 bytes) */
    .section .text.GsSetDrawBuffClip,"ax",@progbits
    .globl GsSetDrawBuffClip
    .globl sym_80038bc8
    .type GsSetDrawBuffClip, @function
    .ent GsSetDrawBuffClip
GsSetDrawBuffClip:
    addiu   $sp,$sp,-24
    lui     $v0,0x800e
    lh      $v0,21692($v0)
    lui     $v1,0x800e
    addiu   $v1,$v1,21680
    sw      $ra,16($sp)
    lhu     $a1,6($v1)
    sll     $v0,$v0,0x1
    lui     $a2,0x800e
    addu    $a2,$a2,$v0
    lh      $a2,21536($a2)
    lui     $a3,0x800e
    addu    $a3,$a3,$v0
    lh      $a3,21540($a3)
    lhu     $v0,4($v1)
    lui     $a0,0x800e
    addiu   $a0,$a0,21560
    sh      $a1,6($a0)
    sh      $v0,4($a0)
    lh      $v0,0($v1)
    lh      $v1,2($v1)
    addu    $v0,$v0,$a2
    addu    $v1,$v1,$a3
    sh      $v0,0($a0)
    jal     sym_80038bc8
    sh      $v1,2($a0)
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end GsSetDrawBuffClip
    .size GsSetDrawBuffClip, . - GsSetDrawBuffClip

/* Gssub_make_matrix (0x80038118, 124 bytes) */
    .section .text.Gssub_make_matrix,"ax",@progbits
    .globl Gssub_make_matrix
    .globl sym_800381d8
    .type Gssub_make_matrix, @function
    .ent Gssub_make_matrix
Gssub_make_matrix:
    addu    $t1,$a0,$zero
    lui     $t0,0x800e
    addiu   $t0,$t0,21944
    lw      $v0,0($t0)
    lw      $v1,4($t0)
    lw      $a0,8($t0)
    sw      $v0,0($t1)
    sw      $v1,4($t1)
    sw      $a0,8($t1)
    lw      $v0,12($t0)
    lw      $v1,16($t0)
    lw      $a0,20($t0)
    sw      $v0,12($t1)
    sw      $v1,16($t1)
    sw      $a0,20($t1)
    lw      $v0,24($t0)
    lw      $v1,28($t0)
    sw      $v0,24($t1)
    sw      $v1,28($t1)
    addiu   $a3,$a3,-88
    sll     $a3,$a3,0x18
    sra     $a3,$a3,0x18
    sltiu   $v0,$a3,35
    beq     $v0,$zero,sym_800381d8
    sll     $v0,$a3,0x2
    lui     $at,0x8002
    addu    $at,$at,$v0
    lw      $v0,-21212($at)
    sll     $zero,$zero,0x0
    jr      $v0
    sll     $zero,$zero,0x0
    .end Gssub_make_matrix
    .size Gssub_make_matrix, . - Gssub_make_matrix

/* INTR_OBJ_624 (0x8003612c, 104 bytes) */
    .section .text.INTR_OBJ_624,"ax",@progbits
    .globl INTR_OBJ_624
    .globl sym_8003bbd8
    .globl sym_8003bbf8
    .globl sym_80036194
    .type INTR_OBJ_624, @function
    .ent INTR_OBJ_624
INTR_OBJ_624:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    lui     $s0,0x800d
    addiu   $s0,$s0,30292
    sw      $ra,20($sp)
    lhu     $v0,0($s0)
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LINTR_OBJ_624_64
    sll     $zero,$zero,0x0
    jal     sym_8003bbd8
    addiu   $a0,$s0,56
    lui     $a0,0x800e
    lw      $a0,-31004($a0)
    lhu     $v1,50($s0)
    addiu   $v0,$zero,1
    sh      $v0,0($s0)
    sh      $v1,0($a0)
    lui     $v1,0x800e
    lw      $v1,-31000($v1)
    lw      $v0,52($s0)
    sll     $zero,$zero,0x0
    jal     sym_8003bbf8
    sw      $v0,0($v1)
    j       sym_80036194
    addu    $v0,$s0,$zero
.LINTR_OBJ_624_64:
    addu    $v0,$zero,$zero
    .end INTR_OBJ_624
    .size INTR_OBJ_624, . - INTR_OBJ_624

/* INTR_VB_OBJ_58 (0x80036220, 108 bytes) */
    .section .text.INTR_VB_OBJ_58,"ax",@progbits
    .globl INTR_VB_OBJ_58
    .type INTR_VB_OBJ_58, @function
    .ent INTR_VB_OBJ_58
INTR_VB_OBJ_58:
    lui     $v0,0x800e
    lw      $v0,-30948($v0)
    addiu   $sp,$sp,-32
    sw      $s1,20($sp)
    addu    $s1,$zero,$zero
    sw      $s0,16($sp)
    lui     $s0,0x800e
    addiu   $s0,$s0,-30980
    sw      $ra,24($sp)
    addiu   $v0,$v0,1
    lui     $at,0x800e
    sw      $v0,-30948($at)
.LINTR_VB_OBJ_58_30:
    lw      $v0,0($s0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LINTR_VB_OBJ_58_48
    sll     $zero,$zero,0x0
    jalr    $v0
    sll     $zero,$zero,0x0
.LINTR_VB_OBJ_58_48:
    addiu   $s1,$s1,1
    slti    $v0,$s1,8
    bne     $v0,$zero,.LINTR_VB_OBJ_58_30
    addiu   $s0,$s0,4
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end INTR_VB_OBJ_58
    .size INTR_VB_OBJ_58, . - INTR_VB_OBJ_58

/* InitGeom (0x800365c0, 128 bytes) */
    .section .text.InitGeom,"ax",@progbits
    .globl InitGeom
    .globl sym_80036678
    .type InitGeom, @function
    .ent InitGeom
InitGeom:
    lui     $at,0x800e
    sw      $ra,-30868($at)
    jal     sym_80036678
    sll     $zero,$zero,0x0
    lui     $ra,0x800e
    lw      $ra,-30868($ra)
    sll     $zero,$zero,0x0
    mfc0    $v0,$12
    lui     $v1,0x4000
    or      $v0,$v0,$v1
    mtc0    $v0,$12
    sll     $zero,$zero,0x0
    addiu   $t0,$zero,341
    ctc2    $t0,$29
    sll     $zero,$zero,0x0
    addiu   $t0,$zero,256
    ctc2    $t0,$30
    sll     $zero,$zero,0x0
    addiu   $t0,$zero,1000
    ctc2    $t0,$26
    sll     $zero,$zero,0x0
    addiu   $t0,$zero,-4194
    ctc2    $t0,$27
    sll     $zero,$zero,0x0
    lui     $t0,0x140
    ctc2    $t0,$28
    sll     $zero,$zero,0x0
    ctc2    $zero,$24
    ctc2    $zero,$25
    sll     $zero,$zero,0x0
    jr      $ra
    sll     $zero,$zero,0x0
    .end InitGeom
    .size InitGeom, . - InitGeom

/* LoadImage2 (0x8003acb0, 124 bytes) */
    .section .text.LoadImage2,"ax",@progbits
    .globl LoadImage2
    .globl sym_800385cc
    .globl sym_800358f8
    .globl SYS_OBJ_2B44
    .globl sym_8003aacc
    .globl sym_8003ad88
    .type LoadImage2, @function
    .ent LoadImage2
LoadImage2:
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    sw      $s1,20($sp)
    addu    $s1,$a1,$zero
    lui     $a0,0x8002
    addiu   $a0,$a0,-20536
    sw      $ra,24($sp)
    jal     sym_800385cc
    addu    $a1,$s0,$zero
    jal     sym_800358f8
    addiu   $a0,$zero,-1
    lui     $v1,0x800e
    lw      $v1,-29296($v1)
    addiu   $v0,$v0,240
    lui     $at,0x800e
    sw      $v0,-29256($at)
    lui     $at,0x800e
    sw      $zero,-29252($at)
    lw      $v0,0($v1)
    j       SYS_OBJ_2B44
    lui     $v1,0x100
    jal     sym_8003aacc
    sll     $zero,$zero,0x0
    bne     $v0,$zero,sym_8003ad88
    addiu   $v0,$zero,-1
    lui     $v0,0x800e
    lw      $v0,-29296($v0)
    sll     $zero,$zero,0x0
    lw      $v0,0($v0)
    lui     $v1,0x100
    .end LoadImage2
    .size LoadImage2, . - LoadImage2

/* PADMAIN_OBJ_144 (0x8003cb4c, 104 bytes) */
    .section .text.PADMAIN_OBJ_144,"ax",@progbits
    .globl PADMAIN_OBJ_144
    .type PADMAIN_OBJ_144, @function
    .ent PADMAIN_OBJ_144
PADMAIN_OBJ_144:
    lui     $v1,0x800e
    lw      $v1,-29068($v1)
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lw      $v0,4($v1)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x1
    beq     $v0,$zero,.LPADMAIN_OBJ_144_58
    addu    $v0,$zero,$zero
    lw      $v0,0($v1)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x1
    beq     $v0,$zero,.LPADMAIN_OBJ_144_58
    addu    $v0,$zero,$zero
    lui     $v0,0x800e
    lw      $v0,-29124($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LPADMAIN_OBJ_144_54
    sll     $zero,$zero,0x0
    jalr    $v0
    sll     $zero,$zero,0x0
.LPADMAIN_OBJ_144_54:
    addiu   $v0,$zero,1
.LPADMAIN_OBJ_144_58:
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end PADMAIN_OBJ_144
    .size PADMAIN_OBJ_144, . - PADMAIN_OBJ_144

/* PADMAIN_OBJ_66C (0x8003d074, 124 bytes) */
    .section .text.PADMAIN_OBJ_66C,"ax",@progbits
    .globl PADMAIN_OBJ_66C
    .globl sym_8003d064
    .globl sym_8003f528
    .globl sym_8003d714
    .globl sym_8003d188
    .globl sym_8003d7a4
    .globl PADMAIN_OBJ_6E8
    .globl sym_8003f548
    .type PADMAIN_OBJ_66C, @function
    .ent PADMAIN_OBJ_66C
PADMAIN_OBJ_66C:
    lui     $v0,0x800e
    lw      $v0,-29068($v0)
    sll     $zero,$zero,0x0
    lw      $v0,0($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x80
    beq     $v0,$zero,sym_8003d064
    addiu   $a0,$zero,60
    lui     $v1,0x800e
    lw      $v1,-29064($v1)
    addiu   $v0,$zero,66
    jal     sym_8003f528
    sb      $v0,0($v1)
    jal     sym_8003d714
    sll     $zero,$zero,0x0
    beq     $v0,$zero,sym_8003d188
    addu    $v0,$zero,$zero
    jal     sym_8003d7a4
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $v0,-29064($v0)
    addiu   $a0,$zero,430
    lbu     $v0,0($v0)
    jal     sym_8003f528
    sll     $zero,$zero,0x0
    j       PADMAIN_OBJ_6E8
    sll     $zero,$zero,0x0
    jal     sym_8003f548
    sll     $zero,$zero,0x0
    bne     $v0,$zero,sym_8003d188
    addu    $v0,$zero,$zero
    .end PADMAIN_OBJ_66C
    .size PADMAIN_OBJ_66C, . - PADMAIN_OBJ_66C

/* PADMAIN_OBJ_6E8 (0x8003d0f0, 100 bytes) */
    .section .text.PADMAIN_OBJ_6E8,"ax",@progbits
    .globl PADMAIN_OBJ_6E8
    .globl sym_8003d0e0
    .globl sym_8003f528
    .globl sym_8003d714
    .globl sym_8003d188
    .globl sym_8003d7a4
    .type PADMAIN_OBJ_6E8, @function
    .ent PADMAIN_OBJ_6E8
PADMAIN_OBJ_6E8:
    lui     $v0,0x800e
    lw      $v0,-29068($v0)
    sll     $zero,$zero,0x0
    lw      $v0,0($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x80
    beq     $v0,$zero,sym_8003d0e0
    addiu   $a0,$zero,60
    lui     $v1,0x800e
    lw      $v1,-29064($v1)
    addiu   $v0,$zero,1
    jal     sym_8003f528
    sb      $v0,0($v1)
    jal     sym_8003d714
    sll     $zero,$zero,0x0
    beq     $v0,$zero,sym_8003d188
    addu    $v0,$zero,$zero
    jal     sym_8003d7a4
    sll     $zero,$zero,0x0
    lui     $v1,0x800e
    lw      $v1,-29064($v1)
    addu    $v0,$zero,$zero
    lbu     $v1,0($v1)
    j       sym_8003d188
    sll     $zero,$zero,0x0
    .end PADMAIN_OBJ_6E8
    .size PADMAIN_OBJ_6E8, . - PADMAIN_OBJ_6E8

/* PADPORTD_OBJ_160 (0x8003eb68, 104 bytes) */
    .section .text.PADPORTD_OBJ_160,"ax",@progbits
    .globl PADPORTD_OBJ_160
    .type PADPORTD_OBJ_160, @function
    .ent PADPORTD_OBJ_160
PADPORTD_OBJ_160:
    lbu     $v0,73($a0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LPADPORTD_OBJ_160_60
    sll     $zero,$zero,0x0
    addiu   $v1,$a0,93
    addiu   $a1,$zero,255
    addiu   $v0,$zero,5
    sb      $zero,73($a0)
    sb      $zero,70($a0)
    sh      $zero,230($a0)
    sw      $zero,20($a0)
    sw      $zero,24($a0)
    sb      $zero,227($a0)
    sb      $zero,228($a0)
    sh      $zero,230($a0)
    sb      $zero,233($a0)
    sb      $zero,234($a0)
    sw      $zero,0($a0)
    sw      $zero,4($a0)
    sw      $zero,8($a0)
.LPADPORTD_OBJ_160_50:
    sb      $a1,0($v1)
    addiu   $v0,$v0,-1
    bgez    $v0,.LPADPORTD_OBJ_160_50
    addiu   $v1,$v1,1
.LPADPORTD_OBJ_160_60:
    jr      $ra
    sll     $zero,$zero,0x0
    .end PADPORTD_OBJ_160
    .size PADPORTD_OBJ_160, . - PADPORTD_OBJ_160

/* PADPORTD_OBJ_1C8 (0x8003ebd0, 116 bytes) */
    .section .text.PADPORTD_OBJ_1C8,"ax",@progbits
    .globl PADPORTD_OBJ_1C8
    .globl sym_8003ec44
    .globl sym_8003f410
    .globl sym_8003ecc4
    .type PADPORTD_OBJ_1C8, @function
    .ent PADPORTD_OBJ_1C8
PADPORTD_OBJ_1C8:
    addiu   $sp,$sp,-40
    addu    $a1,$a0,$zero
    sw      $s1,20($sp)
    lui     $s1,0x800e
    addiu   $s1,$s1,29576
    sw      $s3,28($sp)
    addiu   $s3,$zero,-9
    sw      $s2,24($sp)
    lui     $s2,0x800e
    addiu   $s2,$s2,-29076
    sw      $ra,32($sp)
    sw      $s0,16($sp)
    lui     $v1,0x800e
    lw      $v1,-29100($v1)
    sll     $zero,$zero,0x0
    sll     $v0,$v1,0x4
    subu    $v0,$v0,$v1
    sll     $v0,$v0,0x4
    beq     $a1,$s3,sym_8003ec44
    addu    $s0,$v0,$s1
    bne     $a1,$zero,.LPADPORTD_OBJ_1C8_64
    sll     $v0,$v1,0x2
    addu    $v0,$v0,$s2
    j       sym_8003ec44
    sw      $zero,0($v0)
.LPADPORTD_OBJ_1C8_64:
    jal     sym_8003f410
    addu    $a0,$s0,$zero
    jal     sym_8003ecc4
    addu    $a0,$s0,$zero
    .end PADPORTD_OBJ_1C8
    .size PADPORTD_OBJ_1C8, . - PADPORTD_OBJ_1C8

/* PADPORTD_OBJ_2CC (0x8003ecd4, 100 bytes) */
    .section .text.PADPORTD_OBJ_2CC,"ax",@progbits
    .globl PADPORTD_OBJ_2CC
    .globl sym_8003ed44
    .globl sym_8003ed64
    .globl sym_8003ed88
    .type PADPORTD_OBJ_2CC, @function
    .ent PADPORTD_OBJ_2CC
PADPORTD_OBJ_2CC:
    lbu     $v0,69($a0)
    lbu     $a1,55($a0)
    sll     $zero,$zero,0x0
    beq     $a1,$zero,.LPADPORTD_OBJ_2CC_28
    addiu   $v1,$v0,-3
    addiu   $v0,$zero,77
    beq     $a1,$v0,sym_8003ed44
    sll     $zero,$zero,0x0
    j       sym_8003ed64
    sll     $zero,$zero,0x0
.LPADPORTD_OBJ_2CC_28:
    slti    $v0,$v1,6
    beq     $v0,$zero,.LPADPORTD_OBJ_2CC_44
    addu    $v0,$a0,$v1
    lbu     $v0,87($v0)
    sll     $zero,$zero,0x0
    beq     $v0,$zero,sym_8003ed88
    addu    $v0,$zero,$zero
.LPADPORTD_OBJ_2CC_44:
    lbu     $v0,52($a0)
    sll     $zero,$zero,0x0
    slt     $v0,$v1,$v0
    beq     $v0,$zero,sym_8003ed88
    addu    $v0,$zero,$zero
    lw      $v0,40($a0)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    .end PADPORTD_OBJ_2CC
    .size PADPORTD_OBJ_2CC, . - PADPORTD_OBJ_2CC

/* PAD_OBJ_1A4 (0x8003c27c, 120 bytes) */
    .section .text.PAD_OBJ_1A4,"ax",@progbits
    .globl PAD_OBJ_1A4
    .globl sym_8003bbe8
    .globl sym_8003c428
    .globl sym_8003c418
    .globl sym_8003bbf8
    .type PAD_OBJ_1A4, @function
    .ent PAD_OBJ_1A4
PAD_OBJ_1A4:
    addiu   $sp,$sp,-24
    sw      $ra,20($sp)
    jal     sym_8003bbe8
    sw      $s0,16($sp)
    addiu   $a0,$zero,1
    lui     $v1,0x800e
    addiu   $v1,$v1,29340
    addiu   $s0,$v1,-4
    lui     $v0,0x8004
    addiu   $v0,$v0,-15572
    sw      $v0,0($v1)
    lui     $v0,0x8004
    addiu   $v0,$v0,-15468
    sw      $v0,4($v1)
    lui     $at,0x800e
    sw      $zero,29336($at)
    lui     $at,0x800e
    sw      $zero,29348($at)
    jal     sym_8003c428
    addu    $a1,$s0,$zero
    addiu   $a0,$zero,1
    jal     sym_8003c418
    addu    $a1,$s0,$zero
    jal     sym_8003bbf8
    sll     $zero,$zero,0x0
    addiu   $v0,$zero,1
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end PAD_OBJ_1A4
    .size PAD_OBJ_1A4, . - PAD_OBJ_1A4

/* PAD_OBJ_254 (0x8003c32c, 104 bytes) */
    .section .text.PAD_OBJ_254,"ax",@progbits
    .globl PAD_OBJ_254
    .type PAD_OBJ_254, @function
    .ent PAD_OBJ_254
PAD_OBJ_254:
    lui     $v0,0x800e
    lw      $v0,-29184($v0)
    addiu   $sp,$sp,-16
    sh      $zero,10($v0)
    addiu   $v0,$zero,10
    sw      $v0,0($sp)
    lw      $v0,0($sp)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,-1
    sw      $v0,0($sp)
    lw      $v1,0($sp)
    addiu   $v0,$zero,-1
    beq     $v1,$v0,.LPAD_OBJ_254_5c
    addu    $v0,$zero,$zero
    addiu   $v1,$zero,-1
.LPAD_OBJ_254_3c:
    lw      $v0,0($sp)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,-1
    sw      $v0,0($sp)
    lw      $v0,0($sp)
    sll     $zero,$zero,0x0
    bne     $v0,$v1,.LPAD_OBJ_254_3c
    addu    $v0,$zero,$zero
.LPAD_OBJ_254_5c:
    addiu   $sp,$sp,16
    jr      $ra
    sll     $zero,$zero,0x0
    .end PAD_OBJ_254
    .size PAD_OBJ_254, . - PAD_OBJ_254

/* PRESET_OBJ_1CC (0x8007c6ac, 120 bytes) */
    .section .text.PRESET_OBJ_1CC,"ax",@progbits
    .globl PRESET_OBJ_1CC
    .globl sym_8007cda0
    .type PRESET_OBJ_1CC, @function
    .ent PRESET_OBJ_1CC
PRESET_OBJ_1CC:
    lw      $v0,0($s2)
    sll     $zero,$zero,0x0
    and     $v0,$v0,$s6
    or      $v0,$v0,$s3
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-8($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-4($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,8
    lw      $v0,0($s2)
    addiu   $s2,$s2,24
    and     $v0,$v0,$s6
    or      $v0,$v0,$s3
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-8($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,8
    lw      $v0,-4($s1)
    j       sym_8007cda0
    addiu   $s1,$s1,24
    .end PRESET_OBJ_1CC
    .size PRESET_OBJ_1CC, . - PRESET_OBJ_1CC

/* PRESET_OBJ_450 (0x8007c930, 100 bytes) */
    .section .text.PRESET_OBJ_450,"ax",@progbits
    .globl PRESET_OBJ_450
    .globl sym_8007cc28
    .type PRESET_OBJ_450, @function
    .ent PRESET_OBJ_450
PRESET_OBJ_450:
    lw      $v0,-12($s1)
    addiu   $s2,$s2,24
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,12
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,8
    lw      $v0,-12($s1)
    j       sym_8007cc28
    addiu   $s1,$s1,24
    .end PRESET_OBJ_450
    .size PRESET_OBJ_450, . - PRESET_OBJ_450

/* PRESET_OBJ_5C0 (0x8007caa0, 124 bytes) */
    .section .text.PRESET_OBJ_5C0,"ax",@progbits
    .globl PRESET_OBJ_5C0
    .globl sym_8007cda0
    .type PRESET_OBJ_5C0, @function
    .ent PRESET_OBJ_5C0
PRESET_OBJ_5C0:
    lw      $v0,0($s2)
    lw      $v1,0($s1)
    and     $v0,$v0,$s5
    or      $v0,$v0,$v1
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-8($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-4($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,8
    lw      $v0,0($s2)
    addiu   $s2,$s2,28
    lw      $v1,0($s1)
    and     $v0,$v0,$s5
    or      $v0,$v0,$v1
    sw      $v0,0($s0)
    lw      $v0,-12($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    lw      $v0,-8($s1)
    addiu   $s0,$s0,8
    sw      $v0,0($s0)
    addiu   $s0,$s0,8
    lw      $v0,-4($s1)
    j       sym_8007cda0
    addiu   $s1,$s1,28
    .end PRESET_OBJ_5C0
    .size PRESET_OBJ_5C0, . - PRESET_OBJ_5C0

/* PRESET_OBJ_8FC (0x8007cddc, 104 bytes) */
    .section .text.PRESET_OBJ_8FC,"ax",@progbits
    .globl PRESET_OBJ_8FC
    .globl sym_8007c57c
    .type PRESET_OBJ_8FC, @function
    .ent PRESET_OBJ_8FC
PRESET_OBJ_8FC:
    lw      $t2,16($sp)
    addiu   $t1,$t1,1
    sltu    $v0,$t1,$t2
    bne     $v0,$zero,sym_8007c57c
    addiu   $a2,$a2,1
    andi    $v0,$t0,0xff
    beq     $v0,$zero,.LPRESET_OBJ_8FC_28
    sll     $v0,$s8,0x18
    lui     $v1,0x1000
    or      $v0,$v0,$v1
.LPRESET_OBJ_8FC_28:
    sw      $v0,0($s4)
    addiu   $s4,$s4,4
    sw      $a2,0($s4)
    addu    $v0,$s0,$zero
    lw      $ra,76($sp)
    lw      $s8,72($sp)
    lw      $s7,68($sp)
    lw      $s6,64($sp)
    lw      $s5,60($sp)
    lw      $s4,56($sp)
    lw      $s3,52($sp)
    lw      $s2,48($sp)
    lw      $s1,44($sp)
    lw      $s0,40($sp)
    jr      $ra
    addiu   $sp,$sp,80
    .end PRESET_OBJ_8FC
    .size PRESET_OBJ_8FC, . - PRESET_OBJ_8FC

/* RotMatrix (0x8005391c, 100 bytes) */
    .section .text.RotMatrix,"ax",@progbits
    .globl RotMatrix
    .globl FGO_01_OBJ_64
    .type RotMatrix, @function
    .ent RotMatrix
RotMatrix:
    lh      $t7,0($a0)
    addu    $v0,$a1,$zero
    bgez    $t7,.LRotMatrix_44
    andi    $t9,$t7,0xfff
    negu    $t7,$t7
    bgez    $t7,.LRotMatrix_1c
    andi    $t7,$t7,0xfff
.LRotMatrix_1c:
    sll     $t8,$t7,0x2
    lui     $t9,0x800e
    addu    $t9,$t9,$t8
    lw      $t9,-25496($t9)
    sll     $zero,$zero,0x0
    sll     $t8,$t9,0x10
    sra     $t8,$t8,0x10
    negu    $t3,$t8
    j       FGO_01_OBJ_64
    sra     $t0,$t9,0x10
.LRotMatrix_44:
    sll     $t8,$t9,0x2
    lui     $t9,0x800e
    addu    $t9,$t9,$t8
    lw      $t9,-25496($t9)
    sll     $zero,$zero,0x0
    sll     $t8,$t9,0x10
    sra     $t3,$t8,0x10
    sra     $t0,$t9,0x10
    .end RotMatrix
    .size RotMatrix, . - RotMatrix

/* RotMatrixX (0x8007e478, 100 bytes) */
    .section .text.RotMatrixX,"ax",@progbits
    .globl RotMatrixX
    .globl sym_8007e4dc
    .type RotMatrixX, @function
    .ent RotMatrixX
RotMatrixX:
    addu    $t7,$a0,$zero
    addu    $v0,$a1,$zero
    bgez    $t7,.LRotMatrixX_44
    andi    $t9,$t7,0xfff
    negu    $t7,$t7
    bgez    $t7,.LRotMatrixX_1c
    andi    $t7,$t7,0xfff
.LRotMatrixX_1c:
    sll     $t8,$t7,0x2
    lui     $t9,0x800e
    addu    $t9,$t9,$t8
    lw      $t9,-25496($t9)
    sll     $zero,$zero,0x0
    sll     $t6,$t9,0x10
    sra     $t6,$t6,0x10
    negu    $t1,$t6
    j       sym_8007e4dc
    sra     $t0,$t9,0x10
.LRotMatrixX_44:
    sll     $t8,$t9,0x2
    lui     $t9,0x800e
    addu    $t9,$t9,$t8
    lw      $t9,-25496($t9)
    sll     $zero,$zero,0x0
    sll     $t8,$t9,0x10
    sra     $t1,$t8,0x10
    sra     $t0,$t9,0x10
    .end RotMatrixX
    .size RotMatrixX, . - RotMatrixX

/* RotMatrixY (0x8007e618, 100 bytes) */
    .section .text.RotMatrixY,"ax",@progbits
    .globl RotMatrixY
    .globl sym_8007e67c
    .type RotMatrixY, @function
    .ent RotMatrixY
RotMatrixY:
    addu    $t7,$a0,$zero
    addu    $v0,$a1,$zero
    bgez    $t7,.LRotMatrixY_40
    andi    $t9,$t7,0xfff
    negu    $t7,$t7
    bgez    $t7,.LRotMatrixY_1c
    andi    $t7,$t7,0xfff
.LRotMatrixY_1c:
    sll     $t8,$t7,0x2
    lui     $t9,0x800e
    addu    $t9,$t9,$t8
    lw      $t9,-25496($t9)
    sll     $zero,$zero,0x0
    sll     $t6,$t9,0x10
    sra     $t1,$t6,0x10
    j       sym_8007e67c
    sra     $t0,$t9,0x10
.LRotMatrixY_40:
    sll     $t8,$t9,0x2
    lui     $t9,0x800e
    addu    $t9,$t9,$t8
    lw      $t9,-25496($t9)
    sll     $zero,$zero,0x0
    sll     $t8,$t9,0x10
    sra     $t7,$t8,0x10
    negu    $t1,$t7
    sra     $t0,$t9,0x10
    .end RotMatrixY
    .size RotMatrixY, . - RotMatrixY

/* RotMatrixYXZ (0x80061160, 104 bytes) */
    .section .text.RotMatrixYXZ,"ax",@progbits
    .globl RotMatrixYXZ
    .globl FGO_02_OBJ_68
    .type RotMatrixYXZ, @function
    .ent RotMatrixYXZ
RotMatrixYXZ:
    lh      $t7,0($a0)
    addu    $v0,$a1,$zero
    bgez    $t7,.LRotMatrixYXZ_44
    andi    $t9,$t7,0xfff
    negu    $t7,$t7
    bgez    $t7,.LRotMatrixYXZ_1c
    andi    $t7,$t7,0xfff
.LRotMatrixYXZ_1c:
    sll     $t8,$t7,0x2
    lui     $t9,0x800e
    addu    $t9,$t9,$t8
    lw      $t9,-25496($t9)
    sll     $zero,$zero,0x0
    sll     $t6,$t9,0x10
    sra     $t6,$t6,0x10
    negu    $t3,$t6
    j       FGO_02_OBJ_68
    sra     $t0,$t9,0x10
.LRotMatrixYXZ_44:
    sll     $t8,$t9,0x2
    lui     $t9,0x800e
    addu    $t9,$t9,$t8
    lw      $t9,-25496($t9)
    sll     $zero,$zero,0x0
    sll     $t8,$t9,0x10
    sra     $t3,$t8,0x10
    negu    $t6,$t3
    sra     $t0,$t9,0x10
    .end RotMatrixYXZ
    .size RotMatrixYXZ, . - RotMatrixYXZ

/* RotMatrixZYX (0x8007e1e8, 100 bytes) */
    .section .text.RotMatrixZYX,"ax",@progbits
    .globl RotMatrixZYX
    .globl FGO_03_OBJ_64
    .type RotMatrixZYX, @function
    .ent RotMatrixZYX
RotMatrixZYX:
    lh      $t7,0($a0)
    addu    $v0,$a1,$zero
    bgez    $t7,.LRotMatrixZYX_44
    andi    $t9,$t7,0xfff
    negu    $t7,$t7
    bgez    $t7,.LRotMatrixZYX_1c
    andi    $t7,$t7,0xfff
.LRotMatrixZYX_1c:
    sll     $t8,$t7,0x2
    lui     $t9,0x800e
    addu    $t9,$t9,$t8
    lw      $t9,-25496($t9)
    sll     $zero,$zero,0x0
    sll     $t6,$t9,0x10
    sra     $t6,$t6,0x10
    negu    $t3,$t6
    j       FGO_03_OBJ_64
    sra     $t0,$t9,0x10
.LRotMatrixZYX_44:
    sll     $t8,$t9,0x2
    lui     $t9,0x800e
    addu    $t9,$t9,$t8
    lw      $t9,-25496($t9)
    sll     $zero,$zero,0x0
    sll     $t8,$t9,0x10
    sra     $t3,$t8,0x10
    sra     $t0,$t9,0x10
    .end RotMatrixZYX
    .size RotMatrixZYX, . - RotMatrixZYX

/* SYS_OBJ_1650 (0x80039838, 124 bytes) */
    .section .text.SYS_OBJ_1650,"ax",@progbits
    .globl SYS_OBJ_1650
    .globl sym_800398b8
    .globl sym_800398b4
    .type SYS_OBJ_1650, @function
    .ent SYS_OBJ_1650
SYS_OBJ_1650:
    sll     $v0,$a0,0x10
    sra     $a2,$v0,0x10
    bltz    $a2,.LSYS_OBJ_1650_38
    addu    $v0,$zero,$zero
    lui     $v0,0x800e
    lh      $v0,-29568($v0)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,-1
    slt     $v0,$v0,$a2
    lui     $a2,0x800e
    lhu     $a2,-29568($a2)
    bne     $v0,$zero,.LSYS_OBJ_1650_38
    addiu   $v0,$a2,-1
    addu    $v0,$a0,$zero
.LSYS_OBJ_1650_38:
    addu    $a0,$v0,$zero
    sll     $v0,$a1,0x10
    sra     $a2,$v0,0x10
    bltz    $a2,.LSYS_OBJ_1650_78
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lh      $v0,-29566($v0)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,-1
    slt     $v0,$v0,$a2
    lui     $a2,0x800e
    lhu     $a2,-29566($a2)
    beq     $v0,$zero,sym_800398b8
    andi    $v1,$a1,0x3ff
    j       sym_800398b4
    addiu   $a1,$a2,-1
.LSYS_OBJ_1650_78:
    addu    $a1,$zero,$zero
    .end SYS_OBJ_1650
    .size SYS_OBJ_1650, . - SYS_OBJ_1650

/* SYS_OBJ_16E8 (0x800398d0, 124 bytes) */
    .section .text.SYS_OBJ_16E8,"ax",@progbits
    .globl SYS_OBJ_16E8
    .globl sym_80039950
    .globl sym_8003994c
    .type SYS_OBJ_16E8, @function
    .ent SYS_OBJ_16E8
SYS_OBJ_16E8:
    sll     $v0,$a0,0x10
    sra     $a2,$v0,0x10
    bltz    $a2,.LSYS_OBJ_16E8_38
    addu    $v0,$zero,$zero
    lui     $v0,0x800e
    lh      $v0,-29568($v0)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,-1
    slt     $v0,$v0,$a2
    lui     $a2,0x800e
    lhu     $a2,-29568($a2)
    bne     $v0,$zero,.LSYS_OBJ_16E8_38
    addiu   $v0,$a2,-1
    addu    $v0,$a0,$zero
.LSYS_OBJ_16E8_38:
    addu    $a0,$v0,$zero
    sll     $v0,$a1,0x10
    sra     $a2,$v0,0x10
    bltz    $a2,.LSYS_OBJ_16E8_78
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lh      $v0,-29566($v0)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,-1
    slt     $v0,$v0,$a2
    lui     $a2,0x800e
    lhu     $a2,-29566($a2)
    beq     $v0,$zero,sym_80039950
    andi    $v1,$a1,0x3ff
    j       sym_8003994c
    addiu   $a1,$a2,-1
.LSYS_OBJ_16E8_78:
    addu    $a1,$zero,$zero
    .end SYS_OBJ_16E8
    .size SYS_OBJ_16E8, . - SYS_OBJ_16E8

/* SYS_OBJ_179C (0x80039984, 120 bytes) */
    .section .text.SYS_OBJ_179C,"ax",@progbits
    .globl SYS_OBJ_179C
    .globl sym_800399fc
    .type SYS_OBJ_179C, @function
    .ent SYS_OBJ_179C
SYS_OBJ_179C:
    bne     $a0,$zero,.LSYS_OBJ_179C_10
    addiu   $sp,$sp,-16
    j       sym_800399fc
    addu    $v0,$zero,$zero
.LSYS_OBJ_179C_10:
    lbu     $a1,0($a0)
    sll     $zero,$zero,0x0
    srl     $a1,$a1,0x3
    sw      $a1,0($sp)
    lh      $a2,4($a0)
    sll     $zero,$zero,0x0
    negu    $a2,$a2
    andi    $a2,$a2,0xff
    sra     $a2,$a2,0x3
    sw      $a2,8($sp)
    lbu     $v0,2($a0)
    sll     $a1,$a1,0xa
    srl     $v0,$v0,0x3
    sw      $v0,4($sp)
    sll     $v0,$v0,0xf
    lh      $v1,6($a0)
    lui     $a0,0xe200
    or      $a1,$a1,$a0
    or      $v0,$v0,$a1
    negu    $v1,$v1
    andi    $v1,$v1,0xff
    sra     $v1,$v1,0x3
    sll     $a0,$v1,0x5
    or      $v0,$v0,$a0
    or      $v0,$v0,$a2
    sw      $v1,12($sp)
    .end SYS_OBJ_179C
    .size SYS_OBJ_179C, . - SYS_OBJ_179C

/* SYS_OBJ_1B44 (0x80039d2c, 104 bytes) */
    .section .text.SYS_OBJ_1B44,"ax",@progbits
    .globl SYS_OBJ_1B44
    .globl sym_8003aa98
    .globl sym_80039d94
    .type SYS_OBJ_1B44, @function
    .ent SYS_OBJ_1B44
SYS_OBJ_1B44:
    addiu   $sp,$sp,-48
    sw      $s1,20($sp)
    addu    $s1,$a0,$zero
    sw      $s2,24($sp)
    addu    $s2,$a1,$zero
    sw      $ra,40($sp)
    sw      $s5,36($sp)
    sw      $s4,32($sp)
    sw      $s3,28($sp)
    jal     sym_8003aa98
    sw      $s0,16($sp)
    lh      $a1,4($s1)
    lhu     $v1,4($s1)
    bltz    $a1,.LSYS_OBJ_1B44_64
    addu    $s5,$zero,$zero
    addu    $a0,$v1,$zero
    lui     $v0,0x800e
    lh      $v0,-29568($v0)
    lui     $v1,0x800e
    lhu     $v1,-29568($v1)
    slt     $v0,$v0,$a1
    beq     $v0,$zero,sym_80039d94
    sll     $zero,$zero,0x0
    j       sym_80039d94
    addu    $a0,$v1,$zero
.LSYS_OBJ_1B44_64:
    addu    $a0,$zero,$zero
    .end SYS_OBJ_1B44
    .size SYS_OBJ_1B44, . - SYS_OBJ_1B44

/* SYS_OBJ_27AC (0x8003a994, 124 bytes) */
    .section .text.SYS_OBJ_27AC,"ax",@progbits
    .globl SYS_OBJ_27AC
    .globl sym_8003a97c
    .globl sym_8003aacc
    .globl sym_8003aa88
    .type SYS_OBJ_27AC, @function
    .ent SYS_OBJ_27AC
SYS_OBJ_27AC:
    lui     $v1,0x800e
    lw      $v1,-29276($v1)
    lui     $v0,0x800e
    lw      $v0,-29272($v0)
    sll     $zero,$zero,0x0
    beq     $v1,$v0,.LSYS_OBJ_27AC_34
    sll     $zero,$zero,0x0
    j       sym_8003a97c
    sll     $zero,$zero,0x0
.LSYS_OBJ_27AC_24:
    jal     sym_8003aacc
    sll     $zero,$zero,0x0
    bne     $v0,$zero,sym_8003aa88
    addiu   $v0,$zero,-1
.LSYS_OBJ_27AC_34:
    lui     $v0,0x800e
    lw      $v0,-29296($v0)
    sll     $zero,$zero,0x0
    lw      $v0,0($v0)
    lui     $v1,0x100
    and     $v0,$v0,$v1
    bne     $v0,$zero,.LSYS_OBJ_27AC_24
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $v0,-29308($v0)
    sll     $zero,$zero,0x0
    lw      $v0,0($v0)
    lui     $v1,0x400
    and     $v0,$v0,$v1
    beq     $v0,$zero,.LSYS_OBJ_27AC_24
    addu    $v0,$zero,$zero
    j       sym_8003aa88
    sll     $zero,$zero,0x0
    .end SYS_OBJ_27AC
    .size SYS_OBJ_27AC, . - SYS_OBJ_27AC

/* SYS_OBJ_2828 (0x8003aa10, 120 bytes) */
    .section .text.SYS_OBJ_2828,"ax",@progbits
    .globl SYS_OBJ_2828
    .globl sym_8003a5ac
    .globl sym_8003aa88
    .type SYS_OBJ_2828, @function
    .ent SYS_OBJ_2828
SYS_OBJ_2828:
    lui     $v0,0x800e
    lw      $v0,-29276($v0)
    lui     $v1,0x800e
    lw      $v1,-29272($v1)
    sll     $zero,$zero,0x0
    subu    $v0,$v0,$v1
    andi    $s0,$v0,0x3f
    beq     $s0,$zero,.LSYS_OBJ_2828_2c
    sll     $zero,$zero,0x0
    jal     sym_8003a5ac
    sll     $zero,$zero,0x0
.LSYS_OBJ_2828_2c:
    lui     $v0,0x800e
    lw      $v0,-29296($v0)
    sll     $zero,$zero,0x0
    lw      $v0,0($v0)
    lui     $v1,0x100
    and     $v0,$v0,$v1
    bne     $v0,$zero,.LSYS_OBJ_2828_6c
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $v0,-29308($v0)
    sll     $zero,$zero,0x0
    lw      $v0,0($v0)
    lui     $v1,0x400
    and     $v0,$v0,$v1
    bne     $v0,$zero,sym_8003aa88
    addu    $v0,$s0,$zero
.LSYS_OBJ_2828_6c:
    bne     $s0,$zero,sym_8003aa88
    addu    $v0,$s0,$zero
    addiu   $v0,$zero,1
    .end SYS_OBJ_2828
    .size SYS_OBJ_2828, . - SYS_OBJ_2828

/* SYS_OBJ_2B44 (0x8003ad2c, 112 bytes) */
    .section .text.SYS_OBJ_2B44,"ax",@progbits
    .globl SYS_OBJ_2B44
    .globl sym_8003ad08
    .globl sym_80035b68
    .type SYS_OBJ_2B44, @function
    .ent SYS_OBJ_2B44
SYS_OBJ_2B44:
    and     $v0,$v0,$v1
    bne     $v0,$zero,sym_8003ad08
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $v0,-29308($v0)
    sll     $zero,$zero,0x0
    lw      $v0,0($v0)
    lui     $v1,0x400
    and     $v0,$v0,$v1
    beq     $v0,$zero,sym_8003ad08
    sll     $zero,$zero,0x0
    lui     $a1,0x8004
    addiu   $a1,$a1,-20280
    jal     sym_80035b68
    addiu   $a0,$zero,2
    lui     $v0,0x800e
    lw      $v0,-29580($v0)
    addu    $a0,$s0,$zero
    lw      $v0,32($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a1,$s1,$zero
    addu    $v0,$zero,$zero
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end SYS_OBJ_2B44
    .size SYS_OBJ_2B44, . - SYS_OBJ_2B44

/* SYS_OBJ_2C30 (0x8003ae18, 112 bytes) */
    .section .text.SYS_OBJ_2C30,"ax",@progbits
    .globl SYS_OBJ_2C30
    .globl sym_8003adf4
    .globl sym_80035b68
    .type SYS_OBJ_2C30, @function
    .ent SYS_OBJ_2C30
SYS_OBJ_2C30:
    and     $v0,$v0,$v1
    bne     $v0,$zero,sym_8003adf4
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $v0,-29308($v0)
    sll     $zero,$zero,0x0
    lw      $v0,0($v0)
    lui     $v1,0x400
    and     $v0,$v0,$v1
    beq     $v0,$zero,sym_8003adf4
    sll     $zero,$zero,0x0
    lui     $a1,0x8004
    addiu   $a1,$a1,-20280
    jal     sym_80035b68
    addiu   $a0,$zero,2
    lui     $v0,0x800e
    lw      $v0,-29580($v0)
    addu    $a0,$s0,$zero
    lw      $v0,28($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a1,$s1,$zero
    addu    $v0,$zero,$zero
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end SYS_OBJ_2C30
    .size SYS_OBJ_2C30, . - SYS_OBJ_2C30

/* SYS_OBJ_2E74 (0x8003b05c, 108 bytes) */
    .section .text.SYS_OBJ_2E74,"ax",@progbits
    .globl SYS_OBJ_2E74
    .globl sym_8003b038
    .globl sym_80035b68
    .type SYS_OBJ_2E74, @function
    .ent SYS_OBJ_2E74
SYS_OBJ_2E74:
    and     $v0,$v0,$v1
    bne     $v0,$zero,sym_8003b038
    sll     $zero,$zero,0x0
    lui     $v0,0x800e
    lw      $v0,-29308($v0)
    sll     $zero,$zero,0x0
    lw      $v0,0($v0)
    lui     $v1,0x400
    and     $v0,$v0,$v1
    beq     $v0,$zero,sym_8003b038
    sll     $zero,$zero,0x0
    lui     $a1,0x8004
    addiu   $a1,$a1,-20280
    jal     sym_80035b68
    addiu   $a0,$zero,2
    lui     $v0,0x800e
    lw      $v0,-29580($v0)
    sll     $zero,$zero,0x0
    lw      $v0,24($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a0,$s0,$zero
    addu    $v0,$zero,$zero
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end SYS_OBJ_2E74
    .size SYS_OBJ_2E74, . - SYS_OBJ_2E74

/* SYS_OBJ_F80 (0x80039168, 116 bytes) */
    .section .text.SYS_OBJ_F80,"ax",@progbits
    .globl SYS_OBJ_F80
    .globl sym_800391dc
    .type SYS_OBJ_F80, @function
    .ent SYS_OBJ_F80
SYS_OBJ_F80:
    slti    $v0,$a0,500
    bne     $v0,$zero,.LSYS_OBJ_F80_1c
    addiu   $a1,$zero,500
    slti    $v0,$a0,3251
    beq     $v0,$zero,.LSYS_OBJ_F80_1c
    addiu   $a1,$zero,3250
    addu    $a1,$a0,$zero
.LSYS_OBJ_F80_1c:
    lui     $v0,0x800e
    addu    $v0,$v0,$a2
    lbu     $v0,-29320($v0)
    addu    $a0,$a1,$zero
    sll     $v0,$v0,0x2
    addu    $a1,$a0,$v0
    slt     $v0,$v1,$a1
    bne     $v0,$zero,.LSYS_OBJ_F80_54
    slti    $v0,$s0,16
    slti    $v0,$v1,3291
    beq     $v0,$zero,.LSYS_OBJ_F80_50
    addiu   $a1,$zero,3290
    addu    $a1,$v1,$zero
.LSYS_OBJ_F80_50:
    slti    $v0,$s0,16
.LSYS_OBJ_F80_54:
    bne     $v0,$zero,.LSYS_OBJ_F80_70
    addu    $v1,$a1,$zero
    slti    $v0,$s0,258
    beq     $v0,$zero,sym_800391dc
    addiu   $a1,$zero,257
    j       sym_800391dc
    addu    $a1,$s0,$zero
.LSYS_OBJ_F80_70:
    addiu   $a1,$zero,16
    .end SYS_OBJ_F80
    .size SYS_OBJ_F80, . - SYS_OBJ_F80

/* S_M_INT_OBJ_54 (0x80034d00, 112 bytes) */
    .section .text.S_M_INT_OBJ_54,"ax",@progbits
    .globl S_M_INT_OBJ_54
    .globl sym_80034d70
    .type S_M_INT_OBJ_54, @function
    .ent S_M_INT_OBJ_54
S_M_INT_OBJ_54:
    lw      $v0,0($v1)
    sll     $zero,$zero,0x0
    bne     $v0,$t2,.LS_M_INT_OBJ_54_18
    addiu   $v1,$v1,8
    j       S_M_INT_OBJ_54
    addiu   $a2,$a2,1
.LS_M_INT_OBJ_54_18:
    sll     $v0,$a2,0x3
    addu    $a1,$v0,$t0
    lw      $v1,0($a1)
    sll     $zero,$zero,0x0
    and     $v0,$v1,$t4
    beq     $v0,$zero,.LS_M_INT_OBJ_54_68
    and     $v0,$v1,$t3
    lw      $v1,0($a3)
    lw      $a0,4($a3)
    and     $v1,$v1,$t3
    addu    $v1,$v1,$a0
    bne     $v0,$v1,.LS_M_INT_OBJ_54_68
    sll     $zero,$zero,0x0
    sw      $t2,0($a1)
    lw      $v0,4($a3)
    lw      $v1,4($a1)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    j       sym_80034d70
    sw      $v0,4($a3)
.LS_M_INT_OBJ_54_68:
    addiu   $a3,$a3,8
    addiu   $t1,$t1,1
    .end S_M_INT_OBJ_54
    .size S_M_INT_OBJ_54, . - S_M_INT_OBJ_54

/* S_N2P_OBJ_158 (0x8002fb84, 104 bytes) */
    .section .text.S_N2P_OBJ_158,"ax",@progbits
    .globl S_N2P_OBJ_158
    .globl sym_8002fbec
    .type S_N2P_OBJ_158, @function
    .ent S_N2P_OBJ_158
S_N2P_OBJ_158:
    andi    $v1,$a2,0xffff
    andi    $v0,$t2,0xffff
    sll     $v0,$v0,0x1
    lui     $at,0x800d
    addu    $at,$at,$v0
    lhu     $v0,28756($at)
    sll     $v1,$v1,0xf
    divu    $zero,$v1,$v0
    bne     $v0,$zero,.LS_N2P_OBJ_158_2c
    sll     $zero,$zero,0x0
    break   0x7
.LS_N2P_OBJ_158_2c:
    mflo    $v1
    addiu   $a3,$zero,127
    lui     $a2,0x800d
    addiu   $a2,$a2,29034
    andi    $v1,$v1,0xffff
.LS_N2P_OBJ_158_40:
    lhu     $v0,0($a2)
    sll     $zero,$zero,0x0
    sltu    $v0,$v1,$v0
    bne     $v0,$zero,.LS_N2P_OBJ_158_5c
    sll     $zero,$zero,0x0
    j       sym_8002fbec
    addu    $t1,$a3,$zero
.LS_N2P_OBJ_158_5c:
    addiu   $a3,$a3,-1
    bgez    $a3,.LS_N2P_OBJ_158_40
    addiu   $a2,$a2,-2
    .end S_N2P_OBJ_158
    .size S_N2P_OBJ_158, . - S_N2P_OBJ_158

/* S_SCA_OBJ_98 (0x8002ffd4, 128 bytes) */
    .section .text.S_SCA_OBJ_98,"ax",@progbits
    .globl S_SCA_OBJ_98
    .globl sym_800300d0
    .globl sym_8003008c
    .type S_SCA_OBJ_98, @function
    .ent S_SCA_OBJ_98
S_SCA_OBJ_98:
    beq     $a1,$zero,.LS_SCA_OBJ_98_2c
    andi    $v0,$a2,0x7fff
    lh      $a3,4($a0)
    lhu     $v1,4($a0)
    slti    $v0,$a3,128
    beq     $v0,$zero,.LS_SCA_OBJ_98_28
    addiu   $a2,$zero,127
    bltz    $a3,.LS_SCA_OBJ_98_28
    addu    $a2,$zero,$zero
    addu    $a2,$v1,$zero
.LS_SCA_OBJ_98_28:
    andi    $v0,$a2,0x7fff
.LS_SCA_OBJ_98_2c:
    lui     $v1,0x800d
    lw      $v1,27492($v1)
    or      $v0,$v0,$a1
    sh      $v0,384($v1)
    bne     $t2,$zero,.LS_SCA_OBJ_98_54
    andi    $v0,$t1,0x2
    beq     $v0,$zero,sym_800300d0
    andi    $v0,$t1,0x8
    beq     $v0,$zero,sym_8003008c
    sll     $zero,$zero,0x0
.LS_SCA_OBJ_98_54:
    lh      $v1,10($a0)
    sll     $zero,$zero,0x0
    sltiu   $v0,$v1,8
    beq     $v0,$zero,sym_8003008c
    sll     $v0,$v1,0x2
    lui     $at,0x8002
    addu    $at,$at,$v0
    lw      $v0,-21500($at)
    sll     $zero,$zero,0x0
    jr      $v0
    sll     $zero,$zero,0x0
    .end S_SCA_OBJ_98
    .size S_SCA_OBJ_98, . - S_SCA_OBJ_98

/* S_SRMP_OBJ_424 (0x80032570, 128 bytes) */
    .section .text.S_SRMP_OBJ_424,"ax",@progbits
    .globl S_SRMP_OBJ_424
    .globl sym_8003262c
    .globl sym_8002ebac
    .globl sym_8002e2c8
    .globl sym_800325f0
    .type S_SRMP_OBJ_424, @function
    .ent S_SRMP_OBJ_424
S_SRMP_OBJ_424:
    bne     $s4,$zero,.LS_SRMP_OBJ_424_18
    sll     $zero,$zero,0x0
    bne     $s6,$zero,.LS_SRMP_OBJ_424_18
    sll     $zero,$zero,0x0
    beq     $s8,$zero,.LS_SRMP_OBJ_424_20
    sll     $zero,$zero,0x0
.LS_SRMP_OBJ_424_18:
    jal     sym_8003262c
    addiu   $a0,$sp,16
.LS_SRMP_OBJ_424_20:
    lw      $t0,88($sp)
    sll     $zero,$zero,0x0
    beq     $t0,$zero,.LS_SRMP_OBJ_424_40
    sll     $zero,$zero,0x0
    lui     $a0,0x800d
    lw      $a0,27640($a0)
    jal     sym_8002ebac
    sll     $zero,$zero,0x0
.LS_SRMP_OBJ_424_40:
    beq     $s4,$zero,.LS_SRMP_OBJ_424_7c
    addiu   $a0,$zero,209
    lui     $a1,0x800d
    lw      $a1,27632($a1)
    jal     sym_8002e2c8
    addu    $a2,$zero,$zero
    beq     $s7,$zero,sym_800325f0
    addu    $v0,$zero,$zero
    lui     $v1,0x800d
    lw      $v1,27492($v1)
    sll     $zero,$zero,0x0
    lhu     $v0,426($v1)
    sll     $zero,$zero,0x0
    ori     $v0,$v0,0x80
    sh      $v0,426($v1)
.LS_SRMP_OBJ_424_7c:
    addu    $v0,$zero,$zero
    .end S_SRMP_OBJ_424
    .size S_SRMP_OBJ_424, . - S_SRMP_OBJ_424

/* S_SVA_OBJ_1A0 (0x8002f5cc, 124 bytes) */
    .section .text.S_SVA_OBJ_1A0,"ax",@progbits
    .globl S_SVA_OBJ_1A0
    .globl sym_8002f6c4
    .globl sym_8002f67c
    .type S_SVA_OBJ_1A0, @function
    .ent S_SVA_OBJ_1A0
S_SVA_OBJ_1A0:
    lui     $v0,0x800d
    lw      $v0,27492($v0)
    sll     $v1,$s3,0x1
    addu    $v1,$v1,$v0
    or      $v0,$a1,$a0
    sh      $v0,0($v1)
    bne     $s2,$zero,.LS_SVA_OBJ_1A0_28
    andi    $v0,$s1,0x2
    beq     $v0,$zero,sym_8002f6c4
    sll     $zero,$zero,0x0
.LS_SVA_OBJ_1A0_28:
    lhu     $v0,10($s0)
    addu    $a0,$zero,$zero
    bne     $s2,$zero,.LS_SVA_OBJ_1A0_44
    andi    $a1,$v0,0x7fff
    andi    $v0,$s1,0x8
    beq     $v0,$zero,sym_8002f67c
    sll     $zero,$zero,0x0
.LS_SVA_OBJ_1A0_44:
    lhu     $v0,14($s0)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,-1
    sll     $v0,$v0,0x10
    sra     $v1,$v0,0x10
    sltiu   $v0,$v1,7
    beq     $v0,$zero,sym_8002f67c
    sll     $v0,$v1,0x2
    lui     $at,0x8002
    addu    $at,$at,$v0
    lw      $v0,-21564($at)
    sll     $zero,$zero,0x0
    jr      $v0
    sll     $zero,$zero,0x0
    .end S_SVA_OBJ_1A0
    .size S_SVA_OBJ_1A0, . - S_SVA_OBJ_1A0

/* SetDefDrawEnv (0x8003b118, 120 bytes) */
    .section .text.SetDefDrawEnv,"ax",@progbits
    .globl SetDefDrawEnv
    .globl sym_8003659c
    .globl sym_8003b190
    .type SetDefDrawEnv, @function
    .ent SetDefDrawEnv
SetDefDrawEnv:
    addiu   $sp,$sp,-40
    sw      $s2,24($sp)
    lw      $s2,56($sp)
    sw      $s1,20($sp)
    addu    $s1,$a0,$zero
    sw      $s3,28($sp)
    addu    $s3,$a1,$zero
    sw      $s4,32($sp)
    addu    $s4,$a2,$zero
    sw      $s0,16($sp)
    sw      $ra,36($sp)
    jal     sym_8003659c
    addu    $s0,$a3,$zero
    addiu   $v1,$zero,1
    sh      $s3,0($s1)
    sh      $s4,2($s1)
    sh      $s0,4($s1)
    sh      $zero,12($s1)
    sh      $zero,14($s1)
    sh      $zero,16($s1)
    sh      $zero,18($s1)
    sb      $zero,25($s1)
    sb      $zero,26($s1)
    sb      $zero,27($s1)
    sb      $v1,22($s1)
    beq     $v0,$zero,.LSetDefDrawEnv_74
    sh      $s2,6($s1)
    j       sym_8003b190
    slti    $v0,$s2,289
.LSetDefDrawEnv_74:
    slti    $v0,$s2,257
    .end SetDefDrawEnv
    .size SetDefDrawEnv, . - SetDefDrawEnv

/* SetDrawArea (0x800392f0, 128 bytes) */
    .section .text.SetDrawArea,"ax",@progbits
    .globl SetDrawArea
    .globl SYS_OBJ_1650
    .globl SYS_OBJ_16E8
    .type SetDrawArea, @function
    .ent SetDrawArea
SetDrawArea:
    addiu   $sp,$sp,-32
    sw      $s1,20($sp)
    addu    $s1,$a0,$zero
    sw      $s0,16($sp)
    addu    $s0,$a1,$zero
    addiu   $v0,$zero,2
    sw      $ra,24($sp)
    sb      $v0,3($s1)
    lh      $a0,0($s0)
    lh      $a1,2($s0)
    jal     SYS_OBJ_1650
    sll     $zero,$zero,0x0
    sw      $v0,4($s1)
    lhu     $a0,0($s0)
    lhu     $v0,4($s0)
    lhu     $a1,2($s0)
    addu    $a0,$a0,$v0
    addiu   $a0,$a0,-1
    sll     $a0,$a0,0x10
    lhu     $v0,6($s0)
    sra     $a0,$a0,0x10
    addu    $a1,$a1,$v0
    addiu   $a1,$a1,-1
    sll     $a1,$a1,0x10
    jal     SYS_OBJ_16E8
    sra     $a1,$a1,0x10
    sw      $v0,8($s1)
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end SetDrawArea
    .size SetDrawArea, . - SetDrawArea

/* SetRCnt (0x8003bca8, 116 bytes) */
    .section .text.SetRCnt,"ax",@progbits
    .globl SetRCnt
    .globl sym_8003bd3c
    .globl sym_8003bd1c
    .type SetRCnt, @function
    .ent SetRCnt
SetRCnt:
    andi    $t0,$a0,0xffff
    slti    $v0,$t0,3
    bne     $v0,$zero,.LSetRCnt_18
    addiu   $a3,$zero,72
    j       sym_8003bd3c
    addu    $v0,$zero,$zero
.LSetRCnt_18:
    lui     $v0,0x800e
    lw      $v0,-29216($v0)
    sll     $v1,$t0,0x4
    addu    $v1,$v1,$v0
    sltiu   $v0,$t0,2
    sh      $zero,4($v1)
    sh      $a1,8($v1)
    beq     $v0,$zero,.LSetRCnt_58
    andi    $v0,$a2,0x10
    beq     $v0,$zero,.LSetRCnt_48
    andi    $v0,$a2,0x1
    addiu   $a3,$zero,73
.LSetRCnt_48:
    bne     $v0,$zero,sym_8003bd1c
    andi    $v0,$a2,0x1000
    j       sym_8003bd1c
    ori     $a3,$a3,0x100
.LSetRCnt_58:
    addiu   $v0,$zero,2
    bne     $t0,$v0,sym_8003bd1c
    andi    $v0,$a2,0x1000
    andi    $v0,$a2,0x1
    bne     $v0,$zero,sym_8003bd1c
    andi    $v0,$a2,0x1000
    addiu   $a3,$zero,584
    .end SetRCnt
    .size SetRCnt, . - SetRCnt

/* SpuFree (0x80034c2c, 100 bytes) */
    .section .text.SpuFree,"ax",@progbits
    .globl SpuFree
    .globl sym_80034c90
    .type SpuFree, @function
    .ent SpuFree
SpuFree:
    addiu   $sp,$sp,-24
    lui     $v1,0x800d
    lw      $v1,27588($v1)
    addu    $a2,$zero,$zero
    blez    $v1,sym_80034c90
    sw      $ra,16($sp)
    lui     $t1,0x4000
    lui     $v0,0x8000
    or      $t0,$a0,$v0
    addu    $a3,$v1,$zero
    lui     $a1,0x800d
    lw      $a1,27596($a1)
    sll     $zero,$zero,0x0
.LSpuFree_34:
    lw      $v1,0($a1)
    sll     $zero,$zero,0x0
    and     $v0,$v1,$t1
    bne     $v0,$zero,sym_80034c90
    sll     $zero,$zero,0x0
    bne     $v1,$a0,.LSpuFree_58
    addiu   $a2,$a2,1
    j       sym_80034c90
    sw      $t0,0($a1)
.LSpuFree_58:
    slt     $v0,$a2,$a3
    bne     $v0,$zero,.LSpuFree_34
    addiu   $a1,$a1,8
    .end SpuFree
    .size SpuFree, . - SpuFree

/* SpuGetAllKeysStatus (0x8002f3a0, 112 bytes) */
    .section .text.SpuGetAllKeysStatus,"ax",@progbits
    .globl SpuGetAllKeysStatus
    .globl sym_8002f410
    .type SpuGetAllKeysStatus, @function
    .ent SpuGetAllKeysStatus
SpuGetAllKeysStatus:
    addiu   $t2,$zero,24
    addu    $a2,$zero,$zero
    addiu   $a3,$zero,1
    addiu   $t1,$zero,3
    addiu   $t0,$zero,2
    addu    $a1,$a0,$zero
    sll     $a0,$a2,0x4
    lui     $v0,0x800d
    lw      $v0,27492($v0)
    lui     $v1,0x800d
    lw      $v1,27616($v1)
    addu    $a0,$a0,$v0
    sllv    $v0,$a3,$a2
    and     $v1,$v1,$v0
    lhu     $v0,12($a0)
    beq     $v1,$zero,.LSpuGetAllKeysStatus_5c
    sll     $zero,$zero,0x0
    beq     $v0,$zero,.LSpuGetAllKeysStatus_54
    sll     $zero,$zero,0x0
    j       sym_8002f410
    sb      $a3,0($a1)
.LSpuGetAllKeysStatus_54:
    j       sym_8002f410
    sb      $t1,0($a1)
.LSpuGetAllKeysStatus_5c:
    beq     $v0,$zero,.LSpuGetAllKeysStatus_6c
    sll     $zero,$zero,0x0
    j       sym_8002f410
    sb      $t0,0($a1)
.LSpuGetAllKeysStatus_6c:
    sb      $zero,0($a1)
    .end SpuGetAllKeysStatus
    .size SpuGetAllKeysStatus, . - SpuGetAllKeysStatus

/* SpuStart (0x8002e6b4, 112 bytes) */
    .section .text.SpuStart,"ax",@progbits
    .globl SpuStart
    .globl sym_8003bbe8
    .globl sym_8002e72c
    .globl sym_8003bb58
    .globl sym_8003bb98
    .globl sym_8003bbf8
    .type SpuStart, @function
    .ent SpuStart
SpuStart:
    lui     $v0,0x800d
    lw      $v0,27716($v0)
    addiu   $sp,$sp,-24
    bne     $v0,$zero,.LSpuStart_60
    sw      $ra,16($sp)
    addiu   $v0,$zero,1
    lui     $at,0x800d
    jal     sym_8003bbe8
    sw      $v0,27716($at)
    lui     $a0,0x8003
    jal     sym_8002e72c
    addiu   $a0,$a0,-8708
    lui     $a0,0xf000
    ori     $a0,$a0,0x9
    addiu   $a1,$zero,32
    addiu   $a2,$zero,8192
    jal     sym_8003bb58
    addu    $a3,$zero,$zero
    addu    $a0,$v0,$zero
    lui     $at,0x800d
    jal     sym_8003bb98
    sw      $a0,27612($at)
    jal     sym_8003bbf8
    sll     $zero,$zero,0x0
.LSpuStart_60:
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end SpuStart
    .size SpuStart, . - SpuStart

/* SquareRoot0 (0x80037ef8, 124 bytes) */
    .section .text.SquareRoot0,"ax",@progbits
    .globl SquareRoot0
    .globl sym_80037f74
    .type SquareRoot0, @function
    .ent SquareRoot0
SquareRoot0:
    mtc2    $a0,$30
    sll     $zero,$zero,0x0
    sll     $zero,$zero,0x0
    mfc2    $v0,$31
    addiu   $at,$zero,32
    beq     $v0,$at,sym_80037f74
    sll     $zero,$zero,0x0
    andi    $t0,$v0,0x1
    addiu   $at,$zero,-2
    and     $t2,$v0,$at
    addiu   $t1,$zero,31
    sub     $t1,$t1,$t2
    sra     $t1,$t1,0x1
    addi    $t3,$t2,-24
    bltz    $t3,.LSquareRoot0_48
    sll     $zero,$zero,0x0
    sllv    $t4,$a0,$t3
    beq     $zero,$zero,.LSquareRoot0_54
.LSquareRoot0_48:
    addiu   $t3,$zero,24
    sub     $t3,$t3,$t2
    srav    $t4,$a0,$t3
.LSquareRoot0_54:
    addi    $t4,$t4,-64
    sll     $t4,$t4,0x1
    lui     $t5,0x800e
    addu    $t5,$t5,$t4
    lh      $t5,-30052($t5)
    sll     $zero,$zero,0x0
    sllv    $t5,$t5,$t1
    srl     $v0,$t5,0xc
    jr      $ra
    sll     $zero,$zero,0x0
    .end SquareRoot0
    .size SquareRoot0, . - SquareRoot0

/* SsUtKeyOffV (0x80032048, 100 bytes) */
    .section .text.SsUtKeyOffV,"ax",@progbits
    .globl SsUtKeyOffV
    .globl sym_800320ac
    .globl sym_80033dbc
    .type SsUtKeyOffV, @function
    .ent SsUtKeyOffV
SsUtKeyOffV:
    addiu   $sp,$sp,-24
    addu    $a1,$a0,$zero
    lui     $v0,0x800e
    lw      $v0,16708($v0)
    addiu   $v1,$zero,1
    bne     $v0,$v1,.LSsUtKeyOffV_24
    sw      $ra,16($sp)
    j       sym_800320ac
    addiu   $v0,$zero,-1
.LSsUtKeyOffV_24:
    lui     $at,0x800e
    sw      $v1,16708($at)
    andi    $v0,$a1,0xffff
    sltiu   $v0,$v0,24
    bne     $v0,$zero,.LSsUtKeyOffV_48
    addiu   $v0,$zero,-1
    lui     $at,0x800e
    j       sym_800320ac
    sw      $zero,16708($at)
.LSsUtKeyOffV_48:
    lui     $at,0x800e
    sh      $a0,21048($at)
    jal     sym_80033dbc
    addu    $a0,$zero,$zero
    addu    $v0,$zero,$zero
    lui     $at,0x800e
    sw      $zero,16708($at)
    .end SsUtKeyOffV
    .size SsUtKeyOffV, . - SsUtKeyOffV

/* StoreImage2 (0x8003ad9c, 124 bytes) */
    .section .text.StoreImage2,"ax",@progbits
    .globl StoreImage2
    .globl sym_800385cc
    .globl sym_800358f8
    .globl SYS_OBJ_2C30
    .globl sym_8003aacc
    .globl sym_8003ae74
    .type StoreImage2, @function
    .ent StoreImage2
StoreImage2:
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
    jal     sym_800358f8
    addiu   $a0,$zero,-1
    lui     $v1,0x800e
    lw      $v1,-29296($v1)
    addiu   $v0,$v0,240
    lui     $at,0x800e
    sw      $v0,-29256($at)
    lui     $at,0x800e
    sw      $zero,-29252($at)
    lw      $v0,0($v1)
    j       SYS_OBJ_2C30
    lui     $v1,0x100
    jal     sym_8003aacc
    sll     $zero,$zero,0x0
    bne     $v0,$zero,sym_8003ae74
    addiu   $v0,$zero,-1
    lui     $v0,0x800e
    lw      $v0,-29296($v0)
    sll     $zero,$zero,0x0
    lw      $v0,0($v0)
    lui     $v1,0x100
    .end StoreImage2
    .size StoreImage2, . - StoreImage2

/* VM_NO1_OBJ_1C4 (0x800339c0, 112 bytes) */
    .section .text.VM_NO1_OBJ_1C4,"ax",@progbits
    .globl VM_NO1_OBJ_1C4
    .globl VM_NO1_OBJ_234
    .type VM_NO1_OBJ_1C4, @function
    .ent VM_NO1_OBJ_1C4
VM_NO1_OBJ_1C4:
    lui     $a0,0x800e
    lb      $a0,21035($a0)
    sll     $zero,$zero,0x0
    sltiu   $v0,$a0,64
    beq     $v0,$zero,.LVM_NO1_OBJ_1C4_40
    mult    $s1,$a0
    mflo    $v0
    lui     $v1,0x410
    ori     $v1,$v1,0x4105
    multu   $v0,$v1
    mfhi    $v1
    subu    $v0,$v0,$v1
    srl     $v0,$v0,0x1
    addu    $v1,$v1,$v0
    j       VM_NO1_OBJ_234
    srl     $s1,$v1,0x5
.LVM_NO1_OBJ_1C4_40:
    addiu   $v0,$zero,127
    subu    $v0,$v0,$a0
    mult    $s2,$v0
    mflo    $v0
    lui     $v1,0x410
    ori     $v1,$v1,0x4105
    multu   $v0,$v1
    mfhi    $v1
    subu    $v0,$v0,$v1
    srl     $v0,$v0,0x1
    addu    $v1,$v1,$v0
    srl     $s2,$v1,0x5
    .end VM_NO1_OBJ_1C4
    .size VM_NO1_OBJ_1C4, . - VM_NO1_OBJ_1C4

/* VM_NO1_OBJ_234 (0x80033a30, 112 bytes) */
    .section .text.VM_NO1_OBJ_234,"ax",@progbits
    .globl VM_NO1_OBJ_234
    .globl sym_80033aa0
    .type VM_NO1_OBJ_234, @function
    .ent VM_NO1_OBJ_234
VM_NO1_OBJ_234:
    lui     $a0,0x800e
    lb      $a0,21029($a0)
    sll     $zero,$zero,0x0
    sltiu   $v0,$a0,64
    beq     $v0,$zero,.LVM_NO1_OBJ_234_40
    mult    $a0,$s1
    mflo    $v0
    lui     $v1,0x410
    ori     $v1,$v1,0x4105
    multu   $v0,$v1
    mfhi    $v1
    subu    $v0,$v0,$v1
    srl     $v0,$v0,0x1
    addu    $v1,$v1,$v0
    j       sym_80033aa0
    srl     $s1,$v1,0x5
.LVM_NO1_OBJ_234_40:
    addiu   $v0,$zero,127
    subu    $v0,$v0,$a0
    mult    $s2,$v0
    mflo    $v0
    lui     $v1,0x410
    ori     $v1,$v1,0x4105
    multu   $v0,$v1
    mfhi    $v1
    subu    $v0,$v0,$v1
    srl     $v0,$v0,0x1
    addu    $v1,$v1,$v0
    srl     $s2,$v1,0x5
    .end VM_NO1_OBJ_234
    .size VM_NO1_OBJ_234, . - VM_NO1_OBJ_234

/* VM_NOWON_OBJ_1B4 (0x80034030, 112 bytes) */
    .section .text.VM_NOWON_OBJ_1B4,"ax",@progbits
    .globl VM_NOWON_OBJ_1B4
    .globl VM_NOWON_OBJ_224
    .type VM_NOWON_OBJ_1B4, @function
    .ent VM_NOWON_OBJ_1B4
VM_NOWON_OBJ_1B4:
    lui     $v1,0x800e
    lbu     $v1,21035($v1)
    sll     $zero,$zero,0x0
    sltiu   $v0,$v1,64
    beq     $v0,$zero,.LVM_NOWON_OBJ_1B4_40
    mult    $a1,$v1
    mflo    $v0
    lui     $v1,0x410
    ori     $v1,$v1,0x4105
    multu   $v0,$v1
    mfhi    $v1
    subu    $v0,$v0,$v1
    srl     $v0,$v0,0x1
    addu    $v1,$v1,$v0
    j       VM_NOWON_OBJ_224
    srl     $a1,$v1,0x5
.LVM_NOWON_OBJ_1B4_40:
    addiu   $v0,$zero,127
    subu    $v0,$v0,$v1
    mult    $a0,$v0
    mflo    $v0
    lui     $v1,0x410
    ori     $v1,$v1,0x4105
    multu   $v0,$v1
    mfhi    $v1
    subu    $v0,$v0,$v1
    srl     $v0,$v0,0x1
    addu    $v1,$v1,$v0
    srl     $a0,$v1,0x5
    .end VM_NOWON_OBJ_1B4
    .size VM_NOWON_OBJ_1B4, . - VM_NOWON_OBJ_1B4

/* VM_NOWON_OBJ_224 (0x800340a0, 112 bytes) */
    .section .text.VM_NOWON_OBJ_224,"ax",@progbits
    .globl VM_NOWON_OBJ_224
    .globl sym_80034110
    .type VM_NOWON_OBJ_224, @function
    .ent VM_NOWON_OBJ_224
VM_NOWON_OBJ_224:
    lui     $v1,0x800e
    lbu     $v1,21029($v1)
    sll     $zero,$zero,0x0
    sltiu   $v0,$v1,64
    beq     $v0,$zero,.LVM_NOWON_OBJ_224_40
    mult    $a1,$v1
    mflo    $v0
    lui     $v1,0x410
    ori     $v1,$v1,0x4105
    multu   $v0,$v1
    mfhi    $v1
    subu    $v0,$v0,$v1
    srl     $v0,$v0,0x1
    addu    $v1,$v1,$v0
    j       sym_80034110
    srl     $a1,$v1,0x5
.LVM_NOWON_OBJ_224_40:
    addiu   $v0,$zero,127
    subu    $v0,$v0,$v1
    mult    $a0,$v0
    mflo    $v0
    lui     $v1,0x410
    ori     $v1,$v1,0x4105
    multu   $v0,$v1
    mfhi    $v1
    subu    $v0,$v0,$v1
    srl     $v0,$v0,0x1
    addu    $v1,$v1,$v0
    srl     $a0,$v1,0x5
    .end VM_NOWON_OBJ_224
    .size VM_NOWON_OBJ_224, . - VM_NOWON_OBJ_224

/* VM_NOWON_OBJ_3C4 (0x80034240, 124 bytes) */
    .section .text.VM_NOWON_OBJ_3C4,"ax",@progbits
    .globl VM_NOWON_OBJ_3C4
    .globl sym_800342bc
    .type VM_NOWON_OBJ_3C4, @function
    .ent VM_NOWON_OBJ_3C4
VM_NOWON_OBJ_3C4:
    lui     $v0,0x800e
    lbu     $v0,21042($v0)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x4
    beq     $v0,$zero,.LVM_NOWON_OBJ_3C4_48
    nor     $v1,$zero,$a2
    lui     $v0,0x800e
    lhu     $v0,18916($v0)
    lui     $v1,0x800e
    lhu     $v1,18918($v1)
    or      $v0,$v0,$a2
    or      $v1,$v1,$a1
    lui     $at,0x800e
    sh      $v0,18916($at)
    lui     $at,0x800e
    sh      $v1,18918($at)
    j       sym_800342bc
    nor     $v1,$zero,$a2
.LVM_NOWON_OBJ_3C4_48:
    lui     $v0,0x800e
    lhu     $v0,18916($v0)
    sll     $zero,$zero,0x0
    and     $v0,$v0,$v1
    lui     $at,0x800e
    sh      $v0,18916($at)
    lui     $v0,0x800e
    lhu     $v0,18918($v0)
    nor     $v1,$zero,$a1
    and     $v0,$v0,$v1
    lui     $at,0x800e
    sh      $v0,18918($at)
    nor     $v1,$zero,$a2
    .end VM_NOWON_OBJ_3C4
    .size VM_NOWON_OBJ_3C4, . - VM_NOWON_OBJ_3C4

/* _SsVmGetSeqVol (0x800348b8, 100 bytes) */
    .section .text._SsVmGetSeqVol,"ax",@progbits
    .globl _SsVmGetSeqVol
    .type _SsVmGetSeqVol, @function
    .ent _SsVmGetSeqVol
_SsVmGetSeqVol:
    andi    $v0,$a0,0xff
    sll     $v0,$v0,0x2
    lui     $v1,0x800e
    addu    $v1,$v1,$v0
    lw      $v1,16720($v1)
    lui     $a3,0x800e
    addiu   $a3,$a3,21044
    sh      $a0,0($a3)
    andi    $a0,$a0,0xff00
    sra     $a0,$a0,0x8
    sll     $v0,$a0,0x1
    addu    $v0,$v0,$a0
    sll     $v0,$v0,0x2
    subu    $v0,$v0,$a0
    sll     $v0,$v0,0x4
    addu    $v1,$v1,$v0
    lhu     $v0,88($v1)
    sll     $zero,$zero,0x0
    sh      $v0,0($a1)
    lhu     $v0,90($v1)
    sll     $zero,$zero,0x0
    sh      $v0,0($a2)
    lh      $v0,0($a3)
    jr      $ra
    sll     $zero,$zero,0x0
    .end _SsVmGetSeqVol
    .size _SsVmGetSeqVol, . - _SsVmGetSeqVol

/* _padSendAtLoadInfo (0x8003d7f4, 116 bytes) */
    .section .text._padSendAtLoadInfo,"ax",@progbits
    .globl _padSendAtLoadInfo
    .globl sym_8003d868
    .globl sym_8003e34c
    .globl sym_8003e360
    .globl sym_8003e3a0
    .type _padSendAtLoadInfo, @function
    .ent _padSendAtLoadInfo
_padSendAtLoadInfo:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    lbu     $v1,70($a0)
    addiu   $v0,$zero,3
    beq     $v1,$v0,.L_padSendAtLoadInfo_54
    slti    $v0,$v1,4
    beq     $v0,$zero,.L_padSendAtLoadInfo_30
    addiu   $v0,$zero,2
    beq     $v1,$v0,.L_padSendAtLoadInfo_44
    sll     $zero,$zero,0x0
    j       sym_8003d868
    sll     $zero,$zero,0x0
.L_padSendAtLoadInfo_30:
    addiu   $v0,$zero,4
    beq     $v1,$v0,.L_padSendAtLoadInfo_68
    sll     $zero,$zero,0x0
    j       sym_8003d868
    sll     $zero,$zero,0x0
.L_padSendAtLoadInfo_44:
    jal     sym_8003e34c
    sll     $zero,$zero,0x0
    j       sym_8003d868
    sll     $zero,$zero,0x0
.L_padSendAtLoadInfo_54:
    lbu     $a1,228($a0)
    jal     sym_8003e360
    sll     $zero,$zero,0x0
    j       sym_8003d868
    sll     $zero,$zero,0x0
.L_padSendAtLoadInfo_68:
    lbu     $a1,71($a0)
    jal     sym_8003e3a0
    sll     $zero,$zero,0x0
    .end _padSendAtLoadInfo
    .size _padSendAtLoadInfo, . - _padSendAtLoadInfo

/* _padSetActAlign (0x8003e094, 104 bytes) */
    .section .text._padSetActAlign,"ax",@progbits
    .globl _padSetActAlign
    .type _padSetActAlign, @function
    .ent _padSetActAlign
_padSetActAlign:
    addiu   $sp,$sp,-32
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    sw      $s1,20($sp)
    lui     $v0,0x800e
    lw      $v0,-29136($v0)
    sw      $ra,24($sp)
    jalr    $v0
    addu    $s1,$a1,$zero
    bne     $v0,$zero,.L_padSetActAlign_54
    addu    $v0,$zero,$zero
    addiu   $v0,$zero,1
    addiu   $v1,$zero,1
    sb      $v1,70($s0)
    lui     $v1,0x8004
    addiu   $v1,$v1,-7940
    sw      $v1,20($s0)
    lui     $v1,0x8004
    addiu   $v1,$v1,-7912
    sw      $s1,32($s0)
    sw      $v1,24($s0)
.L_padSetActAlign_54:
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end _padSetActAlign
    .size _padSetActAlign, . - _padSetActAlign

/* _patch_card2 (0x8003b5c4, 112 bytes) */
    .section .text._patch_card2,"ax",@progbits
    .globl _patch_card2
    .globl sym_8003bbe8
    .globl sym_8003bb08
    .type _patch_card2, @function
    .ent _patch_card2
_patch_card2:
    lui     $at,0x800e
    sw      $ra,28568($at)
    jal     sym_8003bbe8
    sll     $zero,$zero,0x0
    addiu   $t1,$zero,87
    addiu   $t2,$zero,176
    jalr    $t2
    sll     $zero,$zero,0x0
    lw      $v0,364($v0)
    sll     $zero,$zero,0x0
    lw      $v1,2504($v0)
    lui     $t2,0x8004
    addiu   $t2,$t2,-19172
    lui     $t1,0x8004
    addiu   $t1,$t1,-19152
.L_patch_card2_3c:
    lw      $t0,0($t2)
    sll     $zero,$zero,0x0
    sw      $t0,2504($v0)
    addiu   $t2,$t2,4
    bne     $t2,$t1,.L_patch_card2_3c
    addiu   $v0,$v0,4
    jal     sym_8003bb08
    sll     $zero,$zero,0x0
    lui     $ra,0x800e
    lw      $ra,28568($ra)
    sll     $zero,$zero,0x0
    jr      $ra
    sll     $zero,$zero,0x0
    .end _patch_card2
    .size _patch_card2, . - _patch_card2

/* _patch_pad (0x8003c460, 112 bytes) */
    .section .text._patch_pad,"ax",@progbits
    .globl _patch_pad
    .globl sym_8003bbe8
    .globl sym_8003bb08
    .type _patch_pad, @function
    .ent _patch_pad
_patch_pad:
    lui     $at,0x800e
    sw      $ra,29352($at)
    jal     sym_8003bbe8
    sll     $zero,$zero,0x0
    addiu   $t1,$zero,87
    addiu   $t2,$zero,176
    jalr    $t2
    sll     $zero,$zero,0x0
    lw      $v0,364($v0)
    addiu   $t1,$zero,11
    addi    $v1,$v0,2180
    lui     $at,0x800e
    sw      $v1,29360($at)
    addi    $v1,$v0,2196
    lui     $at,0x800e
    sw      $v1,29364($at)
.L_patch_pad_40:
    sw      $zero,1428($v0)
    addiu   $v0,$v0,4
    addiu   $t1,$t1,-1
    bne     $t1,$zero,.L_patch_pad_40
    sll     $zero,$zero,0x0
    jal     sym_8003bb08
    sll     $zero,$zero,0x0
    lui     $ra,0x800e
    lw      $ra,29352($ra)
    sll     $zero,$zero,0x0
    jr      $ra
    sll     $zero,$zero,0x0
    .end _patch_pad
    .size _patch_pad, . - _patch_pad

/* _remove_ChgclrPAD (0x8003c4d8, 104 bytes) */
    .section .text._remove_ChgclrPAD,"ax",@progbits
    .globl _remove_ChgclrPAD
    .globl sym_8003bbe8
    .globl sym_8003bb08
    .globl sym_8003bbf8
    .type _remove_ChgclrPAD, @function
    .ent _remove_ChgclrPAD
_remove_ChgclrPAD:
    lui     $at,0x800e
    sw      $ra,29368($at)
    jal     sym_8003bbe8
    sll     $zero,$zero,0x0
    addiu   $t1,$zero,87
    addiu   $t2,$zero,176
    jalr    $t2
    sll     $zero,$zero,0x0
    addiu   $t2,$zero,9
    lw      $v0,364($v0)
    sll     $zero,$zero,0x0
    addi    $v1,$v0,1580
.L_remove_ChgclrPAD_30:
    sw      $zero,0($v1)
    addiu   $v1,$v1,4
    addiu   $t2,$t2,-1
    bne     $t2,$zero,.L_remove_ChgclrPAD_30
    sll     $zero,$zero,0x0
    jal     sym_8003bb08
    sll     $zero,$zero,0x0
    jal     sym_8003bbf8
    sll     $zero,$zero,0x0
    lui     $ra,0x800e
    lw      $ra,29368($ra)
    sll     $zero,$zero,0x0
    jr      $ra
    sll     $zero,$zero,0x0
    .end _remove_ChgclrPAD
    .size _remove_ChgclrPAD, . - _remove_ChgclrPAD

/* _spu_Fr (0x8002e264, 100 bytes) */
    .section .text._spu_Fr,"ax",@progbits
    .globl _spu_Fr
    .globl sym_8002df60
    .type _spu_Fr, @function
    .ent _spu_Fr
_spu_Fr:
    addiu   $sp,$sp,-32
    sw      $s1,20($sp)
    addu    $s1,$a0,$zero
    sw      $s0,16($sp)
    addu    $s0,$a1,$zero
    lui     $v0,0x800d
    lhu     $v0,27516($v0)
    lui     $a1,0x800d
    lw      $a1,27532($a1)
    addiu   $a0,$zero,2
    sw      $ra,24($sp)
    jal     sym_8002df60
    sllv    $a1,$v0,$a1
    jal     sym_8002df60
    addu    $a0,$zero,$zero
    addiu   $a0,$zero,3
    addu    $a1,$s1,$zero
    jal     sym_8002df60
    addu    $a2,$s0,$zero
    addu    $v0,$s0,$zero
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end _spu_Fr
    .size _spu_Fr, . - _spu_Fr

/* _spu_Fw (0x8002e1e0, 112 bytes) */
    .section .text._spu_Fw,"ax",@progbits
    .globl _spu_Fw
    .globl sym_8002df60
    .globl sym_8002e250
    .globl sym_8002dc3c
    .type _spu_Fw, @function
    .ent _spu_Fw
_spu_Fw:
    lui     $v0,0x800d
    lw      $v0,27520($v0)
    addiu   $sp,$sp,-32
    sw      $s1,20($sp)
    addu    $s1,$a0,$zero
    sw      $s0,16($sp)
    addu    $s0,$a1,$zero
    bne     $v0,$zero,.L_spu_Fw_60
    sw      $ra,24($sp)
    lui     $v0,0x800d
    lhu     $v0,27516($v0)
    lui     $a1,0x800d
    lw      $a1,27532($a1)
    addiu   $a0,$zero,2
    jal     sym_8002df60
    sllv    $a1,$v0,$a1
    jal     sym_8002df60
    addiu   $a0,$zero,1
    addiu   $a0,$zero,3
    addu    $a1,$s1,$zero
    jal     sym_8002df60
    addu    $a2,$s0,$zero
    j       sym_8002e250
    addu    $v0,$s0,$zero
.L_spu_Fw_60:
    addu    $a0,$s1,$zero
    jal     sym_8002dc3c
    addu    $a1,$s0,$zero
    addu    $v0,$s0,$zero
    .end _spu_Fw
    .size _spu_Fw, . - _spu_Fw

/* memmove (0x80061c90, 100 bytes) */
    .section .text.memmove,"ax",@progbits
    .globl memmove
    .globl sym_80061cf4
    .type memmove, @function
    .ent memmove
memmove:
    addu    $a3,$a0,$zero
    sltu    $v0,$a3,$a1
    bne     $v0,$zero,.Lmemmove_3c
    addu    $v0,$a2,$zero
    blez    $v0,.Lmemmove_60
    addiu   $a2,$a2,-1
.Lmemmove_18:
    addu    $a0,$a3,$a2
    addu    $v0,$a1,$a2
    addu    $v1,$a2,$zero
    lbu     $v0,0($v0)
    addiu   $a2,$a2,-1
    bgtz    $v1,.Lmemmove_18
    sb      $v0,0($a0)
    j       sym_80061cf4
    addu    $v0,$a3,$zero
.Lmemmove_3c:
    blez    $v0,.Lmemmove_60
    addiu   $a2,$a2,-1
.Lmemmove_44:
    lbu     $v0,0($a1)
    addiu   $a1,$a1,1
    addu    $v1,$a2,$zero
    addiu   $a2,$a2,-1
    sb      $v0,0($a3)
    bgtz    $v1,.Lmemmove_44
    addiu   $a3,$a3,1
.Lmemmove_60:
    addu    $v0,$a3,$zero
    .end memmove
    .size memmove, . - memmove

/* note2pitch2 (0x80033668, 104 bytes) */
    .section .text.note2pitch2,"ax",@progbits
    .globl note2pitch2
    .globl sym_800336d0
    .type note2pitch2, @function
    .ent note2pitch2
note2pitch2:
    addiu   $sp,$sp,-24
    lui     $v1,0x800e
    addiu   $v1,$v1,21031
    sll     $a0,$a0,0x10
    sll     $a1,$a1,0x10
    sra     $a0,$a0,0x10
    sw      $ra,16($sp)
    lbu     $v0,5($v1)
    lb      $v1,0($v1)
    sll     $v0,$v0,0x18
    sra     $v0,$v0,0x18
    sll     $v1,$v1,0x4
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x10
    lui     $v1,0x800e
    lw      $v1,21008($v1)
    sra     $v0,$v0,0xb
    addu    $v0,$v0,$v1
    lbu     $a2,4($v0)
    lbu     $a3,5($v0)
    jal     sym_800336d0
    sra     $a1,$a1,0x10
    lw      $ra,16($sp)
    andi    $v0,$v0,0xffff
    jr      $ra
    addiu   $sp,$sp,24
    .end note2pitch2
    .size note2pitch2, . - note2pitch2

/* print_matrix (0x80037164, 112 bytes) */
    .section .text.print_matrix,"ax",@progbits
    .globl print_matrix
    .globl sym_8003bae8
    .type print_matrix, @function
    .ent print_matrix
print_matrix:
    addiu   $sp,$sp,-48
    sw      $ra,40($sp)
    lh      $v0,6($a0)
    lh      $a1,0($a0)
    lh      $a2,2($a0)
    lh      $a3,4($a0)
    sw      $v0,16($sp)
    lh      $v0,8($a0)
    sll     $zero,$zero,0x0
    sw      $v0,20($sp)
    lh      $v0,10($a0)
    sll     $zero,$zero,0x0
    sw      $v0,24($sp)
    lh      $v0,12($a0)
    sll     $zero,$zero,0x0
    sw      $v0,28($sp)
    lh      $v0,14($a0)
    sll     $zero,$zero,0x0
    sw      $v0,32($sp)
    lh      $v0,16($a0)
    lui     $a0,0x8002
    addiu   $a0,$a0,-21260
    jal     sym_8003bae8
    sw      $v0,36($sp)
    lw      $ra,40($sp)
    addiu   $sp,$sp,48
    jr      $ra
    sll     $zero,$zero,0x0
    .end print_matrix
    .size print_matrix, . - print_matrix
