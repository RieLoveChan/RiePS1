    .set noreorder
    .set noat
    .set nomacro

/* AddPrim (0x8003b218, 60 bytes) */
    .section .text.AddPrim,"ax",@progbits
    .globl AddPrim
    .type AddPrim, @function
    .ent AddPrim
AddPrim:
    lui     $a2,0xff
    ori     $a2,$a2,0xffff
    lui     $a3,0xff00
    lw      $v1,0($a1)
    lw      $v0,0($a0)
    and     $v1,$v1,$a3
    and     $v0,$v0,$a2
    or      $v1,$v1,$v0
    sw      $v1,0($a1)
    lw      $v0,0($a0)
    and     $a1,$a1,$a2
    and     $v0,$v0,$a3
    or      $v0,$v0,$a1
    jr      $ra
    sw      $v0,0($a0)
    .end AddPrim
    .size AddPrim, . - AddPrim

/* BIOS_OBJ_1688 (0x80041550, 52 bytes) */
    .section .text.BIOS_OBJ_1688,"ax",@progbits
    .globl BIOS_OBJ_1688
    .type BIOS_OBJ_1688, @function
    .ent BIOS_OBJ_1688
BIOS_OBJ_1688:
    lui     $v0,0x800e
    lw      $v0,-28120($v0)
    addiu   $sp,$sp,-40
    sw      $s1,20($sp)
    lui     $s1,0x800e
    addiu   $s1,$s1,-28095
    sw      $ra,32($sp)
    sw      $s3,28($sp)
    sw      $s2,24($sp)
    sw      $s0,16($sp)
    lbu     $v0,0($v0)
    addiu   $s3,$s1,-1
    andi    $s2,$v0,0x3
    .end BIOS_OBJ_1688
    .size BIOS_OBJ_1688, . - BIOS_OBJ_1688

/* E03_OBJ_78 (0x8003b190, 60 bytes) */
    .section .text.E03_OBJ_78,"ax",@progbits
    .globl E03_OBJ_78
    .type E03_OBJ_78, @function
    .ent E03_OBJ_78
E03_OBJ_78:
    sb      $v0,23($s1)
    addu    $v0,$s1,$zero
    addiu   $v1,$zero,10
    sh      $s3,8($v0)
    sh      $s4,10($v0)
    sh      $v1,20($v0)
    sb      $zero,24($v0)
    lw      $ra,36($sp)
    lw      $s4,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end E03_OBJ_78
    .size E03_OBJ_78, . - E03_OBJ_78

/* FIRST_OBJ_25C (0x8003c074, 64 bytes) */
    .section .text.FIRST_OBJ_25C,"ax",@progbits
    .globl FIRST_OBJ_25C
    .type FIRST_OBJ_25C, @function
    .ent FIRST_OBJ_25C
FIRST_OBJ_25C:
    addu    $a0,$s2,$zero
    addu    $a1,$s4,$zero
    lui     $v0,0x800e
    lw      $v0,29288($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a2,$s5,$zero
    lw      $ra,40($sp)
    lw      $s5,36($sp)
    lw      $s4,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,48
    .end FIRST_OBJ_25C
    .size FIRST_OBJ_25C, . - FIRST_OBJ_25C

/* GetDispEnv (0x8003928c, 52 bytes) */
    .section .text.GetDispEnv,"ax",@progbits
    .globl GetDispEnv
    .globl sym_8003bad8
    .type GetDispEnv, @function
    .ent GetDispEnv
GetDispEnv:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    lui     $a1,0x800e
    addiu   $a1,$a1,-29464
    sw      $ra,20($sp)
    jal     sym_8003bad8
    addiu   $a2,$zero,20
    addu    $v0,$s0,$zero
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end GetDispEnv
    .size GetDispEnv, . - GetDispEnv

/* GetDrawEnv (0x80038d60, 52 bytes) */
    .section .text.GetDrawEnv,"ax",@progbits
    .globl GetDrawEnv
    .globl sym_8003bad8
    .type GetDrawEnv, @function
    .ent GetDrawEnv
GetDrawEnv:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    lui     $a1,0x800e
    addiu   $a1,$a1,-29556
    sw      $ra,20($sp)
    jal     sym_8003bad8
    addiu   $a2,$zero,92
    addu    $v0,$s0,$zero
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end GetDrawEnv
    .size GetDrawEnv, . - GetDrawEnv

/* GetTPage (0x8004ee70, 60 bytes) */
    .section .text.GetTPage,"ax",@progbits
    .globl GetTPage
    .type GetTPage, @function
    .ent GetTPage
GetTPage:
    andi    $v0,$a0,0x3
    sll     $v0,$v0,0x7
    andi    $a1,$a1,0x3
    sll     $a1,$a1,0x5
    or      $v0,$v0,$a1
    andi    $v1,$a3,0x100
    sra     $v1,$v1,0x4
    or      $v0,$v0,$v1
    andi    $a2,$a2,0x3ff
    sra     $a2,$a2,0x6
    or      $v0,$v0,$a2
    andi    $a3,$a3,0x200
    sll     $a3,$a3,0x2
    jr      $ra
    or      $v0,$v0,$a3
    .end GetTPage
    .size GetTPage, . - GetTPage

/* PADCMD_OBJ_9D4 (0x8003e1ac, 52 bytes) */
    .section .text.PADCMD_OBJ_9D4,"ax",@progbits
    .globl PADCMD_OBJ_9D4
    .globl sym_8003e180
    .globl sym_8003e130
    .type PADCMD_OBJ_9D4, @function
    .ent PADCMD_OBJ_9D4
PADCMD_OBJ_9D4:
    addiu   $v1,$v1,1
    slti    $v0,$v1,6
    bne     $v0,$zero,sym_8003e180
    addiu   $a2,$a2,1
    lbu     $v0,233($a0)
    addiu   $t0,$t0,1
    slt     $v0,$t0,$v0
    bne     $v0,$zero,sym_8003e130
    addiu   $t2,$t2,5
    addiu   $v0,$zero,254
    sb      $v0,70($a0)
    jr      $ra
    addu    $v0,$zero,$zero
    .end PADCMD_OBJ_9D4
    .size PADCMD_OBJ_9D4, . - PADCMD_OBJ_9D4

/* PADIF_OBJ_46C (0x8003e844, 60 bytes) */
    .section .text.PADIF_OBJ_46C,"ax",@progbits
    .globl PADIF_OBJ_46C
    .type PADIF_OBJ_46C, @function
    .ent PADIF_OBJ_46C
PADIF_OBJ_46C:
    lui     $v0,0x800e
    lw      $v0,-29112($v0)
    sll     $zero,$zero,0x0
    addu    $s0,$v0,$s3
    lui     $v0,0x800e
    lw      $v0,-29132($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a0,$s0,$zero
    lui     $v0,0x800e
    lw      $v0,-29128($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a0,$s0,$zero
    addiu   $v0,$zero,-1
    .end PADIF_OBJ_46C
    .size PADIF_OBJ_46C, . - PADIF_OBJ_46C

/* PADPORTD_OBJ_604 (0x8003f00c, 56 bytes) */
    .section .text.PADPORTD_OBJ_604,"ax",@progbits
    .globl PADPORTD_OBJ_604
    .type PADPORTD_OBJ_604, @function
    .ent PADPORTD_OBJ_604
PADPORTD_OBJ_604:
    addu    $a1,$zero,$zero
    addiu   $a2,$zero,16
    lui     $v1,0x800e
    addiu   $v1,$v1,29576
.LPADPORTD_OBJ_604_10:
    beq     $a0,$v1,.LPADPORTD_OBJ_604_30
    addu    $v0,$a2,$zero
    addiu   $a2,$a2,16
    addiu   $a1,$a1,1
    slti    $v0,$a1,2
    bne     $v0,$zero,.LPADPORTD_OBJ_604_10
    addiu   $v1,$v1,240
    addiu   $v0,$zero,255
.LPADPORTD_OBJ_604_30:
    jr      $ra
    sll     $zero,$zero,0x0
    .end PADPORTD_OBJ_604
    .size PADPORTD_OBJ_604, . - PADPORTD_OBJ_604

/* PAD_OBJ_21C (0x8003c2f4, 56 bytes) */
    .section .text.PAD_OBJ_21C,"ax",@progbits
    .globl PAD_OBJ_21C
    .globl sym_8003bbe8
    .globl sym_8003c428
    .globl sym_8003bbf8
    .type PAD_OBJ_21C, @function
    .ent PAD_OBJ_21C
PAD_OBJ_21C:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_8003bbe8
    sll     $zero,$zero,0x0
    lui     $a1,0x800e
    addiu   $a1,$a1,29336
    jal     sym_8003c428
    addiu   $a0,$zero,1
    jal     sym_8003bbf8
    sll     $zero,$zero,0x0
    lw      $ra,16($sp)
    addiu   $v0,$zero,1
    jr      $ra
    addiu   $sp,$sp,24
    .end PAD_OBJ_21C
    .size PAD_OBJ_21C, . - PAD_OBJ_21C

/* PAD_OBJ_2BC (0x8003c394, 64 bytes) */
    .section .text.PAD_OBJ_2BC,"ax",@progbits
    .globl PAD_OBJ_2BC
    .type PAD_OBJ_2BC, @function
    .ent PAD_OBJ_2BC
PAD_OBJ_2BC:
    lui     $v1,0x800e
    lw      $v1,-29180($v1)
    sll     $zero,$zero,0x0
    lw      $v0,4($v1)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x1
    beq     $v0,$zero,.LPAD_OBJ_2BC_38
    addu    $v0,$zero,$zero
    lw      $v0,0($v1)
    sll     $zero,$zero,0x0
    andi    $v0,$v0,0x1
    bne     $v0,$zero,.LPAD_OBJ_2BC_38
    addiu   $v0,$zero,1
    addu    $v0,$zero,$zero
.LPAD_OBJ_2BC_38:
    jr      $ra
    sll     $zero,$zero,0x0
    .end PAD_OBJ_2BC
    .size PAD_OBJ_2BC, . - PAD_OBJ_2BC

/* PadSetActAlign (0x8003c934, 56 bytes) */
    .section .text.PadSetActAlign,"ax",@progbits
    .globl PadSetActAlign
    .globl sym_8003e094
    .type PadSetActAlign, @function
    .ent PadSetActAlign
PadSetActAlign:
    lui     $v0,0x800e
    lw      $v0,-29144($v0)
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    sw      $ra,20($sp)
    jalr    $v0
    addu    $s0,$a1,$zero
    addu    $a0,$v0,$zero
    jal     sym_8003e094
    addu    $a1,$s0,$zero
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end PadSetActAlign
    .size PadSetActAlign, . - PadSetActAlign

/* SPRINTF_OBJ_360 (0x80061750, 52 bytes) */
    .section .text.SPRINTF_OBJ_360,"ax",@progbits
    .globl SPRINTF_OBJ_360
    .type SPRINTF_OBJ_360, @function
    .ent SPRINTF_OBJ_360
SPRINTF_OBJ_360:
    lw      $v0,544($sp)
    sll     $zero,$zero,0x0
    lw      $a0,0($v0)
    addiu   $v0,$v0,4
    sw      $v0,544($sp)
    lw      $v0,528($sp)
    sll     $zero,$zero,0x0
    srl     $v0,$v0,0x5
    andi    $v0,$v0,0x1
    beq     $v0,$zero,.LSPRINTF_OBJ_360_30
    sll     $zero,$zero,0x0
    andi    $a0,$a0,0xffff
.LSPRINTF_OBJ_360_30:
    sb      $zero,529($sp)
    .end SPRINTF_OBJ_360
    .size SPRINTF_OBJ_360, . - SPRINTF_OBJ_360

/* SPRINTF_OBJ_754 (0x80061b44, 52 bytes) */
    .section .text.SPRINTF_OBJ_754,"ax",@progbits
    .globl SPRINTF_OBJ_754
    .globl sym_80061c1c
    .type SPRINTF_OBJ_754, @function
    .ent SPRINTF_OBJ_754
SPRINTF_OBJ_754:
    lw      $v0,544($sp)
    lw      $v1,528($sp)
    lw      $s1,0($v0)
    addiu   $v0,$v0,4
    sw      $v0,544($sp)
    srl     $v0,$v1,0x5
    andi    $v0,$v0,0x1
    beq     $v0,$zero,.LSPRINTF_OBJ_754_2c
    sll     $zero,$zero,0x0
    j       sym_80061c1c
    sh      $s2,0($s1)
.LSPRINTF_OBJ_754_2c:
    j       sym_80061c1c
    sw      $s2,0($s1)
    .end SPRINTF_OBJ_754
    .size SPRINTF_OBJ_754, . - SPRINTF_OBJ_754

/* SSSTART_OBJ_2BC (0x800305c8, 56 bytes) */
    .section .text.SSSTART_OBJ_2BC,"ax",@progbits
    .globl SSSTART_OBJ_2BC
    .globl sym_80030600
    .type SSSTART_OBJ_2BC, @function
    .ent SSSTART_OBJ_2BC
SSSTART_OBJ_2BC:
    lui     $v0,0x800d
    lw      $v0,29160($v0)
    addiu   $sp,$sp,-24
    bne     $v0,$zero,.LSSSTART_OBJ_2BC_24
    sw      $ra,16($sp)
    addiu   $v0,$zero,1
    lui     $at,0x800d
    j       sym_80030600
    sw      $v0,29160($at)
.LSSSTART_OBJ_2BC_24:
    lui     $v0,0x800d
    lw      $v0,29148($v0)
    lui     $at,0x800d
    jalr    $v0
    sw      $zero,29160($at)
    .end SSSTART_OBJ_2BC
    .size SSSTART_OBJ_2BC, . - SSSTART_OBJ_2BC

/* SSTICK_OBJ_4C (0x800319c8, 56 bytes) */
    .section .text.SSTICK_OBJ_4C,"ax",@progbits
    .globl SSTICK_OBJ_4C
    .globl sym_80031aac
    .globl sym_80031a9c
    .type SSTICK_OBJ_4C, @function
    .ent SSTICK_OBJ_4C
SSTICK_OBJ_4C:
    lui     $v1,0x800d
    lw      $v1,29140($v1)
    sll     $zero,$zero,0x0
    slti    $v0,$v1,6
    beq     $v0,$zero,sym_80031aac
    sltiu   $v0,$v1,6
    beq     $v0,$zero,sym_80031a9c
    sll     $v0,$v1,0x2
    lui     $at,0x8002
    addu    $at,$at,$v0
    lw      $v0,-21468($at)
    sll     $zero,$zero,0x0
    jr      $v0
    sll     $zero,$zero,0x0
    .end SSTICK_OBJ_4C
    .size SSTICK_OBJ_4C, . - SSTICK_OBJ_4C

/* SYS_OBJ_196C (0x80039b54, 64 bytes) */
    .section .text.SYS_OBJ_196C,"ax",@progbits
    .globl SYS_OBJ_196C
    .globl sym_80039b94
    .type SYS_OBJ_196C, @function
    .ent SYS_OBJ_196C
SYS_OBJ_196C:
    lh      $v1,6($t0)
    lhu     $a0,6($t0)
    bltz    $v1,.LSYS_OBJ_196C_3c
    sh      $v0,4($t0)
    lui     $v0,0x800e
    lh      $v0,-29566($v0)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,-1
    slt     $v0,$v0,$v1
    lui     $v1,0x800e
    lhu     $v1,-29566($v1)
    bne     $v0,$zero,sym_80039b94
    addiu   $v1,$v1,-1
    j       sym_80039b94
    addu    $v1,$a0,$zero
.LSYS_OBJ_196C_3c:
    addu    $v1,$zero,$zero
    .end SYS_OBJ_196C
    .size SYS_OBJ_196C, . - SYS_OBJ_196C

/* SYS_OBJ_1BAC (0x80039d94, 60 bytes) */
    .section .text.SYS_OBJ_1BAC,"ax",@progbits
    .globl SYS_OBJ_1BAC
    .globl sym_80039dd4
    .globl sym_80039dd0
    .type SYS_OBJ_1BAC, @function
    .ent SYS_OBJ_1BAC
SYS_OBJ_1BAC:
    lh      $a1,6($s1)
    lhu     $v1,6($s1)
    bltz    $a1,.LSYS_OBJ_1BAC_38
    sh      $a0,4($s1)
    addu    $a0,$v1,$zero
    lui     $v0,0x800e
    lh      $v0,-29566($v0)
    lui     $v1,0x800e
    lhu     $v1,-29566($v1)
    slt     $v0,$v0,$a1
    beq     $v0,$zero,sym_80039dd4
    sll     $v0,$a0,0x10
    j       sym_80039dd0
    addu    $a0,$v1,$zero
.LSYS_OBJ_1BAC_38:
    addu    $a0,$zero,$zero
    .end SYS_OBJ_1BAC
    .size SYS_OBJ_1BAC, . - SYS_OBJ_1BAC

/* SYS_OBJ_1DE0 (0x80039fc8, 60 bytes) */
    .section .text.SYS_OBJ_1DE0,"ax",@progbits
    .globl SYS_OBJ_1DE0
    .globl sym_8003a008
    .globl sym_8003a004
    .type SYS_OBJ_1DE0, @function
    .ent SYS_OBJ_1DE0
SYS_OBJ_1DE0:
    lh      $a1,6($s1)
    lhu     $v1,6($s1)
    bltz    $a1,.LSYS_OBJ_1DE0_38
    sh      $a0,4($s1)
    addu    $a0,$v1,$zero
    lui     $v0,0x800e
    lh      $v0,-29566($v0)
    lui     $v1,0x800e
    lhu     $v1,-29566($v1)
    slt     $v0,$v0,$a1
    beq     $v0,$zero,sym_8003a008
    sll     $v0,$a0,0x10
    j       sym_8003a004
    addu    $a0,$v1,$zero
.LSYS_OBJ_1DE0_38:
    addu    $a0,$zero,$zero
    .end SYS_OBJ_1DE0
    .size SYS_OBJ_1DE0, . - SYS_OBJ_1DE0

/* SYS_OBJ_2038 (0x8003a220, 64 bytes) */
    .section .text.SYS_OBJ_2038,"ax",@progbits
    .globl SYS_OBJ_2038
    .type SYS_OBJ_2038, @function
    .ent SYS_OBJ_2038
SYS_OBJ_2038:
    addiu   $a2,$a1,-1
    lui     $v1,0x800e
    lw      $v1,-29308($v1)
    lui     $v0,0x400
    beq     $a1,$zero,.LSYS_OBJ_2038_38
    sw      $v0,0($v1)
    addiu   $a1,$zero,-1
.LSYS_OBJ_2038_1c:
    lw      $v1,0($a0)
    addiu   $a0,$a0,4
    lui     $v0,0x800e
    lw      $v0,-29312($v0)
    addiu   $a2,$a2,-1
    bne     $a2,$a1,.LSYS_OBJ_2038_1c
    sw      $v1,0($v0)
.LSYS_OBJ_2038_38:
    jr      $ra
    addu    $v0,$zero,$zero
    .end SYS_OBJ_2038
    .size SYS_OBJ_2038, . - SYS_OBJ_2038

/* SYS_OBJ_2740 (0x8003a928, 52 bytes) */
    .section .text.SYS_OBJ_2740,"ax",@progbits
    .globl SYS_OBJ_2740
    .globl sym_80035c84
    .globl sym_8003ac10
    .type SYS_OBJ_2740, @function
    .ent SYS_OBJ_2740
SYS_OBJ_2740:
    lui     $a0,0x800e
    lw      $a0,-29260($a0)
    jal     sym_80035c84
    sll     $zero,$zero,0x0
    andi    $v0,$s0,0x7
    bne     $v0,$zero,.LSYS_OBJ_2740_24
    addu    $v0,$zero,$zero
    jal     sym_8003ac10
    addu    $a0,$s0,$zero
.LSYS_OBJ_2740_24:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end SYS_OBJ_2740
    .size SYS_OBJ_2740, . - SYS_OBJ_2740

/* SYS_OBJ_28B0 (0x8003aa98, 52 bytes) */
    .section .text.SYS_OBJ_28B0,"ax",@progbits
    .globl SYS_OBJ_28B0
    .globl sym_800358f8
    .type SYS_OBJ_28B0, @function
    .ent SYS_OBJ_28B0
SYS_OBJ_28B0:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_800358f8
    addiu   $a0,$zero,-1
    addiu   $v0,$v0,240
    lui     $at,0x800e
    sw      $v0,-29256($at)
    lui     $at,0x800e
    sw      $zero,-29252($at)
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end SYS_OBJ_28B0
    .size SYS_OBJ_28B0, . - SYS_OBJ_28B0

/* SYS_OBJ_4B4 (0x8003869c, 60 bytes) */
    .section .text.SYS_OBJ_4B4,"ax",@progbits
    .globl SYS_OBJ_4B4
    .type SYS_OBJ_4B4, @function
    .ent SYS_OBJ_4B4
SYS_OBJ_4B4:
    lui     $v0,0x800e
    lw      $v0,-29576($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addu    $a1,$t0,$zero
    lh      $a1,0($s0)
    lh      $a2,2($s0)
    lh      $a3,4($s0)
    lh      $v1,6($s0)
    lui     $v0,0x800e
    lw      $v0,-29576($v0)
    lui     $a0,0x8002
    addiu   $a0,$a0,-20816
    jalr    $v0
    sw      $v1,16($sp)
    .end SYS_OBJ_4B4
    .size SYS_OBJ_4B4, . - SYS_OBJ_4B4

/* S_N2P_OBJ_1C0 (0x8002fbec, 64 bytes) */
    .section .text.S_N2P_OBJ_1C0,"ax",@progbits
    .globl S_N2P_OBJ_1C0
    .type S_N2P_OBJ_1C0, @function
    .ent S_N2P_OBJ_1C0
S_N2P_OBJ_1C0:
    addiu   $v0,$t1,1
    addu    $t1,$a1,$v0
    addiu   $v1,$t3,-12
    sll     $v0,$v1,0x1
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    addu    $v0,$a0,$v0
    addu    $v0,$t2,$v0
    andi    $a0,$t1,0xffff
    srl     $v1,$a0,0x7
    addu    $t2,$v0,$v1
    andi    $v0,$t2,0xffff
    sll     $v0,$v0,0x8
    andi    $a0,$a0,0x7e
    jr      $ra
    or      $v0,$v0,$a0
    .end S_N2P_OBJ_1C0
    .size S_N2P_OBJ_1C0, . - S_N2P_OBJ_1C0

/* S_SVA_OBJ_5C0 (0x8002f9ec, 56 bytes) */
    .section .text.S_SVA_OBJ_5C0,"ax",@progbits
    .globl S_SVA_OBJ_5C0
    .globl sym_8002f9c0
    .type S_SVA_OBJ_5C0, @function
    .ent S_SVA_OBJ_5C0
S_SVA_OBJ_5C0:
    lw      $v0,16($sp)
    sll     $zero,$zero,0x0
    slti    $v0,$v0,2
    bne     $v0,$zero,sym_8002f9c0
    sll     $zero,$zero,0x0
    lw      $ra,48($sp)
    lw      $s5,44($sp)
    lw      $s4,40($sp)
    lw      $s3,36($sp)
    lw      $s2,32($sp)
    lw      $s1,28($sp)
    lw      $s0,24($sp)
    jr      $ra
    addiu   $sp,$sp,56
    .end S_SVA_OBJ_5C0
    .size S_SVA_OBJ_5C0, . - S_SVA_OBJ_5C0

/* SetDefDispEnv (0x8003b1d8, 60 bytes) */
    .section .text.SetDefDispEnv,"ax",@progbits
    .globl SetDefDispEnv
    .type SetDefDispEnv, @function
    .ent SetDefDispEnv
SetDefDispEnv:
    lw      $v1,16($sp)
    addu    $v0,$a0,$zero
    sh      $a1,0($v0)
    sh      $a2,2($v0)
    sh      $a3,4($v0)
    sh      $zero,8($v0)
    sh      $zero,10($v0)
    sh      $zero,12($v0)
    sh      $zero,14($v0)
    sb      $zero,17($v0)
    sb      $zero,16($v0)
    sb      $zero,19($v0)
    sb      $zero,18($v0)
    jr      $ra
    sh      $v1,6($v0)
    .end SetDefDispEnv
    .size SetDefDispEnv, . - SetDefDispEnv

/* SetDrawOffset (0x80039370, 64 bytes) */
    .section .text.SetDrawOffset,"ax",@progbits
    .globl SetDrawOffset
    .globl sym_80039968
    .type SetDrawOffset, @function
    .ent SetDrawOffset
SetDrawOffset:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    addu    $s0,$a0,$zero
    addiu   $v0,$zero,2
    sw      $ra,20($sp)
    sb      $v0,3($s0)
    lh      $a0,0($a1)
    lh      $a1,2($a1)
    jal     sym_80039968
    sll     $zero,$zero,0x0
    sw      $v0,4($s0)
    sw      $zero,8($s0)
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end SetDrawOffset
    .size SetDrawOffset, . - SetDrawOffset

/* SpuReserveReverbWorkArea (0x8002e86c, 60 bytes) */
    .section .text.SpuReserveReverbWorkArea,"ax",@progbits
    .globl SpuReserveReverbWorkArea
    .globl _SpuIsInAllocateArea_
    .globl sym_8002e8a8
    .type SpuReserveReverbWorkArea, @function
    .ent SpuReserveReverbWorkArea
SpuReserveReverbWorkArea:
    addiu   $sp,$sp,-24
    beq     $a0,$zero,.LSpuReserveReverbWorkArea_30
    sw      $ra,16($sp)
    lui     $a0,0x800d
    lw      $a0,27632($a0)
    jal     _SpuIsInAllocateArea_
    sll     $zero,$zero,0x0
    bne     $v0,$zero,.LSpuReserveReverbWorkArea_30
    addiu   $v0,$zero,1
    lui     $at,0x800d
    j       sym_8002e8a8
    sw      $v0,27628($at)
.LSpuReserveReverbWorkArea_30:
    lui     $at,0x800d
    sw      $zero,27628($at)
    addu    $v0,$zero,$zero
    .end SpuReserveReverbWorkArea
    .size SpuReserveReverbWorkArea, . - SpuReserveReverbWorkArea

/* SpuSetIRQCallback (0x8002eeec, 60 bytes) */
    .section .text.SpuSetIRQCallback,"ax",@progbits
    .globl SpuSetIRQCallback
    .globl sym_8002ef2c
    .type SpuSetIRQCallback, @function
    .ent SpuSetIRQCallback
SpuSetIRQCallback:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    lui     $s0,0x800d
    lw      $s0,27552($s0)
    sll     $zero,$zero,0x0
    beq     $a0,$s0,.LSpuSetIRQCallback_28
    sw      $ra,20($sp)
    lui     $at,0x800d
    jal     sym_8002ef2c
    sw      $a0,27552($at)
.LSpuSetIRQCallback_28:
    addu    $v0,$s0,$zero
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end SpuSetIRQCallback
    .size SpuSetIRQCallback, . - SpuSetIRQCallback

/* SsVabFakeHead (0x80034fe0, 52 bytes) */
    .section .text.SsVabFakeHead,"ax",@progbits
    .globl SsVabFakeHead
    .globl sym_8003501c
    .type SsVabFakeHead, @function
    .ent SsVabFakeHead
SsVabFakeHead:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    addu    $a3,$a2,$zero
    sll     $a1,$a1,0x10
    lui     $a2,0x8003
    addiu   $a2,$a2,20500
    jal     sym_8003501c
    sra     $a1,$a1,0x10
    sll     $v0,$v0,0x10
    lw      $ra,16($sp)
    sra     $v0,$v0,0x10
    jr      $ra
    addiu   $sp,$sp,24
    .end SsVabFakeHead
    .size SsVabFakeHead, . - SsVabFakeHead

/* SsVabOpenHeadSticky (0x80034fac, 52 bytes) */
    .section .text.SsVabOpenHeadSticky,"ax",@progbits
    .globl SsVabOpenHeadSticky
    .globl sym_8003501c
    .type SsVabOpenHeadSticky, @function
    .ent SsVabOpenHeadSticky
SsVabOpenHeadSticky:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    addu    $a3,$a2,$zero
    sll     $a1,$a1,0x10
    lui     $a2,0x8003
    addiu   $a2,$a2,20500
    jal     sym_8003501c
    sra     $a1,$a1,0x10
    sll     $v0,$v0,0x10
    lw      $ra,16($sp)
    sra     $v0,$v0,0x10
    jr      $ra
    addiu   $sp,$sp,24
    .end SsVabOpenHeadSticky
    .size SsVabOpenHeadSticky, . - SsVabOpenHeadSticky

/* StopPAD (0x8003c244, 56 bytes) */
    .section .text.StopPAD,"ax",@progbits
    .globl StopPAD
    .globl sym_8003c44c
    .globl sym_8003c3f8
    .globl PAD_OBJ_21C
    .type StopPAD, @function
    .ent StopPAD
StopPAD:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_8003c44c
    sll     $zero,$zero,0x0
    jal     sym_8003c3f8
    sll     $zero,$zero,0x0
    jal     PAD_OBJ_21C
    sll     $zero,$zero,0x0
    lui     $at,0x800e
    sw      $zero,-29188($at)
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end StopPAD
    .size StopPAD, . - StopPAD

/* StopRCnt (0x8003bdac, 52 bytes) */
    .section .text.StopRCnt,"ax",@progbits
    .globl StopRCnt
    .type StopRCnt, @function
    .ent StopRCnt
StopRCnt:
    andi    $a0,$a0,0xffff
    sll     $a0,$a0,0x2
    lui     $a1,0x800e
    lw      $a1,-29220($a1)
    lui     $v0,0x800e
    addu    $v0,$v0,$a0
    lw      $v0,-29212($v0)
    lw      $v1,4($a1)
    nor     $v0,$zero,$v0
    and     $v1,$v1,$v0
    addiu   $v0,$zero,1
    jr      $ra
    sw      $v1,4($a1)
    .end StopRCnt
    .size StopRCnt, . - StopRCnt

/* TransposeMatrix (0x800553c8, 64 bytes) */
    .section .text.TransposeMatrix,"ax",@progbits
    .globl TransposeMatrix
    .type TransposeMatrix, @function
    .ent TransposeMatrix
TransposeMatrix:
    addu    $v0,$a1,$zero
    lw      $t1,0($a0)
    lw      $t2,4($a0)
    sw      $t1,4($a1)
    sw      $t2,0($a1)
    sh      $t1,0($a1)
    lw      $t3,8($a0)
    lw      $t1,12($a0)
    sw      $t3,12($a1)
    sw      $t1,8($a1)
    sh      $t2,12($a1)
    sh      $t3,8($a1)
    lh      $t2,16($a0)
    sh      $t1,4($a1)
    jr      $ra
    sh      $t2,16($a1)
    .end TransposeMatrix
    .size TransposeMatrix, . - TransposeMatrix

/* UT_REV_OBJ_54 (0x80032b50, 52 bytes) */
    .section .text.UT_REV_OBJ_54,"ax",@progbits
    .globl UT_REV_OBJ_54
    .globl sym_8002e4fc
    .globl sym_8003214c
    .globl sym_80032b88
    .type UT_REV_OBJ_54, @function
    .ent UT_REV_OBJ_54
UT_REV_OBJ_54:
    sra     $v0,$v0,0x10
    sw      $v0,4($a0)
    sll     $v0,$v1,0x10
    sra     $s0,$v0,0x10
    bne     $s0,$zero,.LUT_REV_OBJ_54_20
    sll     $zero,$zero,0x0
    jal     sym_8002e4fc
    addu    $a0,$zero,$zero
.LUT_REV_OBJ_54_20:
    lui     $a0,0x800e
    jal     sym_8003214c
    addiu   $a0,$a0,20768
    j       sym_80032b88
    addu    $v0,$s0,$zero
    .end UT_REV_OBJ_54
    .size UT_REV_OBJ_54, . - UT_REV_OBJ_54

/* VSyncCallback (0x80035b98, 52 bytes) */
    .section .text.VSyncCallback,"ax",@progbits
    .globl VSyncCallback
    .type VSyncCallback, @function
    .ent VSyncCallback
VSyncCallback:
    addiu   $sp,$sp,-24
    lui     $v0,0x800e
    lw      $v0,-31012($v0)
    addu    $a1,$a0,$zero
    sw      $ra,16($sp)
    lw      $v0,20($v0)
    sll     $zero,$zero,0x0
    jalr    $v0
    addiu   $a0,$zero,4
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    sll     $zero,$zero,0x0
    .end VSyncCallback
    .size VSyncCallback, . - VSyncCallback

/* _SpuIsInAllocateArea_ (0x8002e7dc, 56 bytes) */
    .section .text._SpuIsInAllocateArea_,"ax",@progbits
    .globl _SpuIsInAllocateArea_
    .globl sym_8002e860
    .type _SpuIsInAllocateArea_, @function
    .ent _SpuIsInAllocateArea_
_SpuIsInAllocateArea_:
    lui     $v0,0x800d
    lw      $v0,27532($v0)
    lui     $v1,0x800d
    lw      $v1,27596($v1)
    sll     $zero,$zero,0x0
    bne     $v1,$zero,.L_SpuIsInAllocateArea__24
    sllv    $a0,$a0,$v0
    j       sym_8002e860
    addu    $v0,$zero,$zero
.L_SpuIsInAllocateArea__24:
    lui     $t0,0x8000
    lui     $a3,0x4000
    lui     $a2,0xfff
    ori     $a2,$a2,0xffff
    addu    $a1,$v1,$zero
    .end _SpuIsInAllocateArea_
    .size _SpuIsInAllocateArea_, . - _SpuIsInAllocateArea_

/* _SsVmKeyOffNow (0x80033dbc, 52 bytes) */
    .section .text._SsVmKeyOffNow,"ax",@progbits
    .globl _SsVmKeyOffNow
    .globl sym_80033df0
    .type _SsVmKeyOffNow, @function
    .ent _SsVmKeyOffNow
_SsVmKeyOffNow:
    lui     $a0,0x800e
    lhu     $a0,21048($a0)
    sll     $zero,$zero,0x0
    andi    $v1,$a0,0xffff
    sltiu   $v0,$v1,16
    beq     $v0,$zero,.L_SsVmKeyOffNow_28
    addiu   $v0,$zero,1
    sllv    $a2,$v0,$v1
    j       sym_80033df0
    addu    $a1,$zero,$zero
.L_SsVmKeyOffNow_28:
    addu    $a2,$zero,$zero
    addiu   $v1,$v1,-16
    sllv    $a1,$v0,$v1
    .end _SsVmKeyOffNow
    .size _SsVmKeyOffNow, . - _SsVmKeyOffNow

/* _card_clear (0x8003b338, 52 bytes) */
    .section .text._card_clear,"ax",@progbits
    .globl _card_clear
    .globl sym_8003b388
    .globl sym_8003b378
    .type _card_clear, @function
    .ent _card_clear
_card_clear:
    addiu   $sp,$sp,-24
    sw      $s0,16($sp)
    sw      $ra,20($sp)
    jal     sym_8003b388
    addu    $s0,$a0,$zero
    addu    $a0,$s0,$zero
    addiu   $a1,$zero,63
    jal     sym_8003b378
    addu    $a2,$zero,$zero
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end _card_clear
    .size _card_clear, . - _card_clear

/* _copy_memcard_patch (0x8003b634, 52 bytes) */
    .section .text._copy_memcard_patch,"ax",@progbits
    .globl _copy_memcard_patch
    .type _copy_memcard_patch, @function
    .ent _copy_memcard_patch
_copy_memcard_patch:
    ori     $v0,$zero,0xdf80
    lui     $t2,0x8004
    addiu   $t2,$t2,-19304
    lui     $t1,0x8004
    addiu   $t1,$t1,-19192
.L_copy_memcard_patch_14:
    lw      $v1,0($t2)
    sll     $zero,$zero,0x0
    sw      $v1,0($v0)
    addiu   $t2,$t2,4
    bne     $t2,$t1,.L_copy_memcard_patch_14
    addiu   $v0,$v0,4
    jr      $ra
    sll     $zero,$zero,0x0
    .end _copy_memcard_patch
    .size _copy_memcard_patch, . - _copy_memcard_patch

/* _padGetActSize (0x8003dae8, 56 bytes) */
    .section .text._padGetActSize,"ax",@progbits
    .globl _padGetActSize
    .type _padGetActSize, @function
    .ent _padGetActSize
_padGetActSize:
    lbu     $v0,227($a0)
    lbu     $a1,233($a0)
    lhu     $a0,236($a0)
    addiu   $v0,$v0,1
    sra     $v0,$v0,0x1
    sll     $v0,$v0,0x2
    sll     $v1,$a1,0x2
    addu    $v1,$v1,$a1
    addiu   $v1,$v1,3
    andi    $v1,$v1,0xffc
    addiu   $v1,$v1,4
    addu    $v0,$v0,$v1
    jr      $ra
    addu    $v0,$v0,$a0
    .end _padGetActSize
    .size _padGetActSize, . - _padGetActSize

/* _padInitDirSeq (0x8003f068, 52 bytes) */
    .section .text._padInitDirSeq,"ax",@progbits
    .globl _padInitDirSeq
    .type _padInitDirSeq, @function
    .ent _padInitDirSeq
_padInitDirSeq:
    lui     $v0,0x8004
    addiu   $v0,$v0,-3940
    lui     $at,0x800e
    sw      $v0,-29140($at)
    lui     $v0,0x8004
    addiu   $v0,$v0,-2832
    lui     $at,0x800e
    sw      $v0,-29136($at)
    lui     $v0,0x8004
    addiu   $v0,$v0,-3668
    lui     $at,0x800e
    jr      $ra
    sw      $v0,-29132($at)
    .end _padInitDirSeq
    .size _padInitDirSeq, . - _padInitDirSeq

/* _spu_FgetRXXa (0x8002e3b0, 52 bytes) */
    .section .text._spu_FgetRXXa,"ax",@progbits
    .globl _spu_FgetRXXa
    .globl sym_8002e3e4
    .type _spu_FgetRXXa, @function
    .ent _spu_FgetRXXa
_spu_FgetRXXa:
    lui     $v0,0x800d
    lw      $v0,27492($v0)
    sll     $a0,$a0,0x1
    addu    $a0,$a0,$v0
    addiu   $v0,$zero,-1
    lhu     $a0,0($a0)
    beq     $a1,$v0,.L_spu_FgetRXXa_30
    sll     $zero,$zero,0x0
    lui     $v0,0x800d
    lw      $v0,27532($v0)
    j       sym_8002e3e4
    sllv    $v0,$a0,$v0
.L_spu_FgetRXXa_30:
    addu    $v0,$a0,$zero
    .end _spu_FgetRXXa
    .size _spu_FgetRXXa, . - _spu_FgetRXXa

/* _spu_FsetRXX (0x8002e2c8, 60 bytes) */
    .section .text._spu_FsetRXX,"ax",@progbits
    .globl _spu_FsetRXX
    .globl sym_8002e304
    .type _spu_FsetRXX, @function
    .ent _spu_FsetRXX
_spu_FsetRXX:
    bne     $a2,$zero,.L_spu_FsetRXX_20
    sll     $v0,$a0,0x1
    lui     $v1,0x800d
    lw      $v1,27492($v1)
    sll     $zero,$zero,0x0
    addu    $v0,$v0,$v1
    j       sym_8002e304
    sh      $a1,0($v0)
.L_spu_FsetRXX_20:
    lui     $a0,0x800d
    lw      $a0,27492($a0)
    lui     $v1,0x800d
    lw      $v1,27532($v1)
    addu    $v0,$v0,$a0
    srlv    $v1,$a1,$v1
    sh      $v1,0($v0)
    .end _spu_FsetRXX
    .size _spu_FsetRXX, . - _spu_FsetRXX

/* _spu_Fw1ts (0x8002e494, 64 bytes) */
    .section .text._spu_Fw1ts,"ax",@progbits
    .globl _spu_Fw1ts
    .globl sym_8002e4d4
    .type _spu_Fw1ts, @function
    .ent _spu_Fw1ts
_spu_Fw1ts:
    addiu   $sp,$sp,-8
    addiu   $v0,$zero,13
    sw      $v0,4($sp)
    j       sym_8002e4d4
    sw      $zero,0($sp)
    lw      $v1,4($sp)
    sll     $zero,$zero,0x0
    sll     $v0,$v1,0x1
    addu    $v0,$v0,$v1
    sll     $v0,$v0,0x2
    addu    $v0,$v0,$v1
    sw      $v0,4($sp)
    lw      $v0,0($sp)
    sll     $zero,$zero,0x0
    addiu   $v0,$v0,1
    sw      $v0,0($sp)
    .end _spu_Fw1ts
    .size _spu_Fw1ts, . - _spu_Fw1ts
