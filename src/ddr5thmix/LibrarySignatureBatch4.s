    .set noreorder
    .set noat
    .set nomacro

    .section .text.SPU_OBJ_424,"ax",@progbits
    .globl SPU_OBJ_424
    .type SPU_OBJ_424, @function
    .ent SPU_OBJ_424
SPU_OBJ_424:
    lw      $ra,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end SPU_OBJ_424
    .size SPU_OBJ_424, . - SPU_OBJ_424

    .section .text.SPU_OBJ_894,"ax",@progbits
    .globl SPU_OBJ_894
    .type SPU_OBJ_894, @function
    .ent SPU_OBJ_894
SPU_OBJ_894:
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end SPU_OBJ_894
    .size SPU_OBJ_894, . - SPU_OBJ_894

/* SPU_OBJ_B18 (0x8002e4d4, 28 bytes)
   Bytes: 8fa20000 00000000 2842003c 1440fff1 00000000 03e00008 27bd0008
   Branch at +8 targets 0x8002e4a8 (before function start — external) */
    .section .text.SPU_OBJ_B18,"ax",@progbits
    .globl SPU_OBJ_B18
    .globl sym_8002e4a8
    .type SPU_OBJ_B18, @function
    .ent SPU_OBJ_B18
SPU_OBJ_B18:
    lw      $v0,0($sp)
    nop
    slti    $v0,$v0,60
    bnez    $v0,sym_8002e4a8
    nop
    jr      $ra
    addiu   $sp,$sp,8
    .end SPU_OBJ_B18
    .size SPU_OBJ_B18, . - SPU_OBJ_B18

/* S_SR_OBJ_B4 (0x8002e5b0, 24 bytes)
   Loads from DAT at 0x800d6be8 via lui v0,0x800d */
    .section .text.S_SR_OBJ_B4,"ax",@progbits
    .globl S_SR_OBJ_B4
    .type S_SR_OBJ_B4, @function
    .ent S_SR_OBJ_B4
S_SR_OBJ_B4:
    lui     $v0,0x800d
    lw      $v0,0x6be8($v0)
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end S_SR_OBJ_B4
    .size S_SR_OBJ_B4, . - S_SR_OBJ_B4

/* S_SAV_OBJ_200 (0x8002eaec, 20 bytes)
   j to 0x8002eb98 (external) */
    .section .text.S_SAV_OBJ_200,"ax",@progbits
    .globl S_SAV_OBJ_200
    .globl sym_8002eb98
    .type S_SAV_OBJ_200, @function
    .ent S_SAV_OBJ_200
S_SAV_OBJ_200:
    ori     $v0,$v0,0xffff
    and     $v0,$t0,$v0
    nor     $v0,$zero,$v0
    j       sym_8002eb98
    and     $t2,$t2,$v0
    .end S_SAV_OBJ_200
    .size S_SAV_OBJ_200, . - S_SAV_OBJ_200

/* SpuSetTransferMode (0x8002f26c, 28 bytes)
   j at +0x10 targets 0x8002f288 which is S_STM_OBJ_1C (external) */
    .section .text.SpuSetTransferMode,"ax",@progbits
    .globl SpuSetTransferMode
    .globl S_STM_OBJ_1C
    .type SpuSetTransferMode, @function
    .ent SpuSetTransferMode
SpuSetTransferMode:
    beqz    $a0,.Lspu_stm_zero
    li      $v0,1
    bne     $a0,$v0,S_STM_OBJ_1C
    addu    $v0,$zero,$zero
    j       S_STM_OBJ_1C
    li      $v0,1
.Lspu_stm_zero:
    addu    $v0,$zero,$zero
    .end SpuSetTransferMode
    .size SpuSetTransferMode, . - SpuSetTransferMode

/* S_STM_OBJ_1C (0x8002f288, 20 bytes)
   Stores to 0x800d6be4 and 0x800d6b80 */
    .section .text.S_STM_OBJ_1C,"ax",@progbits
    .globl S_STM_OBJ_1C
    .type S_STM_OBJ_1C, @function
    .ent S_STM_OBJ_1C
S_STM_OBJ_1C:
    lui     $at,0x800d
    sw      $a0,0x6be4($at)
    lui     $at,0x800d
    jr      $ra
    sw      $v0,0x6b80($at)
    .end S_STM_OBJ_1C
    .size S_STM_OBJ_1C, . - S_STM_OBJ_1C

/* SR_GAKS_OBJ_B8 (0x8002f384, 20 bytes)
   Branch at +8 to 0x8002f32c (external — before function start) */
    .section .text.SR_GAKS_OBJ_B8,"ax",@progbits
    .globl SR_GAKS_OBJ_B8
    .globl sym_8002f32c
    .type SR_GAKS_OBJ_B8, @function
    .ent SR_GAKS_OBJ_B8
SR_GAKS_OBJ_B8:
    addiu   $a3,$a3,1
    slt     $v0,$a3,$a1
    bnez    $v0,sym_8002f32c
    addiu   $a2,$a2,1
    addu    $v0,$zero,$zero
    .end SR_GAKS_OBJ_B8
    .size SR_GAKS_OBJ_B8, . - SR_GAKS_OBJ_B8

/* SR_GAKS_OBJ_144 (0x8002f410, 24 bytes)
   Branch at +8 to 0x8002f3b8 (external — before function start) */
    .section .text.SR_GAKS_OBJ_144,"ax",@progbits
    .globl SR_GAKS_OBJ_144
    .globl sym_8002f3b8
    .type SR_GAKS_OBJ_144, @function
    .ent SR_GAKS_OBJ_144
SR_GAKS_OBJ_144:
    addiu   $a2,$a2,1
    slt     $v0,$a2,$t2
    bnez    $v0,sym_8002f3b8
    addiu   $a1,$a1,1
    jr      $ra
    nop
    .end SR_GAKS_OBJ_144
    .size SR_GAKS_OBJ_144, . - SR_GAKS_OBJ_144

/* SsUtReverbOff (0x8002fd1c, 32 bytes)
   jal to 0x8002e5cc (external — S_SR_OBJ_B4 region call) */
    .section .text.SsUtReverbOff,"ax",@progbits
    .globl SsUtReverbOff
    .globl sym_8002e5cc
    .type SsUtReverbOff, @function
    .ent SsUtReverbOff
SsUtReverbOff:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_8002e5cc
    addu    $a0,$zero,$zero
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    nop
    .end SsUtReverbOff
    .size SsUtReverbOff, . - SsUtReverbOff

    .section .text.SSSTART_OBJ_218,"ax",@progbits
    .globl SSSTART_OBJ_218
    .type SSSTART_OBJ_218, @function
    .ent SSSTART_OBJ_218
SSSTART_OBJ_218:
    lw      $ra,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end SSSTART_OBJ_218
    .size SSSTART_OBJ_218, . - SSSTART_OBJ_218

/* SsStart (0x8003053c, 32 bytes)
   jal to 0x8003030c (external) */
    .section .text.SsStart,"ax",@progbits
    .globl SsStart
    .globl sym_8003030c
    .type SsStart, @function
    .ent SsStart
SsStart:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_8003030c
    li      $a0,1
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    nop
    .end SsStart
    .size SsStart, . - SsStart

/* SsStart2 (0x8003055c, 32 bytes)
   jal to 0x8003030c (same external as SsStart) */
    .section .text.SsStart2,"ax",@progbits
    .globl SsStart2
    .type SsStart2, @function
    .ent SsStart2
SsStart2:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_8003030c
    addu    $a0,$zero,$zero
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    nop
    .end SsStart2
    .size SsStart2, . - SsStart2

    .section .text.MIDIREAD_OBJ_E0,"ax",@progbits
    .globl MIDIREAD_OBJ_E0
    .type MIDIREAD_OBJ_E0, @function
    .ent MIDIREAD_OBJ_E0
MIDIREAD_OBJ_E0:
    lw      $ra,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end MIDIREAD_OBJ_E0
    .size MIDIREAD_OBJ_E0, . - MIDIREAD_OBJ_E0

    .section .text.MIDIREAD_OBJ_328,"ax",@progbits
    .globl MIDIREAD_OBJ_328
    .type MIDIREAD_OBJ_328, @function
    .ent MIDIREAD_OBJ_328
MIDIREAD_OBJ_328:
    lw      $ra,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end MIDIREAD_OBJ_328
    .size MIDIREAD_OBJ_328, . - MIDIREAD_OBJ_328

/* MIDIREAD_OBJ_654 (0x800311c0, 28 bytes)
   jalr $v0 (loaded from 0x800e40b8), then j to 0x80031234 (external) */
    .section .text.MIDIREAD_OBJ_654,"ax",@progbits
    .globl MIDIREAD_OBJ_654
    .globl sym_8003123c
    .globl sym_80031234
    .type MIDIREAD_OBJ_654, @function
    .ent MIDIREAD_OBJ_654
MIDIREAD_OBJ_654:
    lui     $v0,0x800e
    lw      $v0,0x40b8($v0)
    nop
    jalr    $v0
    sra     $a1,$a1,0x10
    j       sym_80031234
    addu    $v0,$s5,$zero
    .end MIDIREAD_OBJ_654
    .size MIDIREAD_OBJ_654, . - MIDIREAD_OBJ_654

/* MIDIREAD_OBJ_6A8 (0x80031214, 20 bytes) — no return, tail fragment */
    .section .text.MIDIREAD_OBJ_6A8,"ax",@progbits
    .globl MIDIREAD_OBJ_6A8
    .type MIDIREAD_OBJ_6A8, @function
    .ent MIDIREAD_OBJ_6A8
MIDIREAD_OBJ_6A8:
    sra     $a0,$a0,0x10
    sll     $a1,$a1,0x10
    lui     $v0,0x800e
    lw      $v0,0x40bc($v0)
    sra     $a1,$a1,0x10
    .end MIDIREAD_OBJ_6A8
    .size MIDIREAD_OBJ_6A8, . - MIDIREAD_OBJ_6A8

/* SSTICK_OBJ_A8 (0x80031a24, 32 bytes)
   Branch to within-function label +0xc (0x80031a38); j external 0x80031ab4 */
    .section .text.SSTICK_OBJ_A8,"ax",@progbits
    .globl SSTICK_OBJ_A8
    .globl sym_80031ab4
    .type SSTICK_OBJ_A8, @function
    .ent SSTICK_OBJ_A8
SSTICK_OBJ_A8:
    li      $v0,60
    lui     $at,0x800e
    bnez    $a0,.Lsstick_a8_nonzero
    sw      $v0,0x414c($at)
    li      $v0,5
.Lsstick_a8_nonzero:
    lui     $at,0x800d
    j       sym_80031ab4
    sw      $v0,0x71d4($at)
    .end SSTICK_OBJ_A8
    .size SSTICK_OBJ_A8, . - SSTICK_OBJ_A8

/* SSTICK_OBJ_E8 (0x80031a64, 24 bytes)
   Branch at 0 to within (0x80031a9c, +0x38, past end?) — but 0x80031a9c is +0x38 from function start.
   Function is 24 bytes so ends at 0x80031a7c. 0x80031a9c is external.
   beqz: 0x80031a64 + 4 + 0xd*4 = 0x80031a9c. beq: 0x80031a68 + 4 + 7*4 = 0x80031a8c (external).
   j at +0x10: 0x80031aa0 (external). */
    .section .text.SSTICK_OBJ_E8,"ax",@progbits
    .globl SSTICK_OBJ_E8
    .globl sym_80031a9c
    .globl sym_80031a8c
    .globl sym_80031aa0
    .type SSTICK_OBJ_E8, @function
    .ent SSTICK_OBJ_E8
SSTICK_OBJ_E8:
    beqz    $a0,sym_80031a9c
    li      $v0,1
    beq     $a0,$v0,sym_80031a8c
    li      $v0,60
    j       sym_80031aa0
    nop
    .end SSTICK_OBJ_E8
    .size SSTICK_OBJ_E8, . - SSTICK_OBJ_E8

/* TEMPO_OBJ_204 (0x80031cd0, 24 bytes) */
    .section .text.TEMPO_OBJ_204,"ax",@progbits
    .globl TEMPO_OBJ_204
    .type TEMPO_OBJ_204, @function
    .ent TEMPO_OBJ_204
TEMPO_OBJ_204:
    lw      $v0,0x98($v1)
    li      $a0,-129
    and     $v0,$v0,$a0
    sw      $v0,0x98($v1)
    jr      $ra
    nop
    .end TEMPO_OBJ_204
    .size TEMPO_OBJ_204, . - TEMPO_OBJ_204

/* S_M_F_OBJ_64 (0x80034c90, 24 bytes)
   jal to 0x80034cac (external, just past function end) */
    .section .text.S_M_F_OBJ_64,"ax",@progbits
    .globl S_M_F_OBJ_64
    .globl sym_80034cac
    .type S_M_F_OBJ_64, @function
    .ent S_M_F_OBJ_64
S_M_F_OBJ_64:
    jal     sym_80034cac
    nop
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    nop
    .end S_M_F_OBJ_64
    .size S_M_F_OBJ_64, . - S_M_F_OBJ_64

/* VS_VH_OBJ_158 (0x80035104, 20 bytes) — no return, tail fragment
   Stores to 0x800e5298, then shifts s2 */
    .section .text.VS_VH_OBJ_158,"ax",@progbits
    .globl VS_VH_OBJ_158
    .type VS_VH_OBJ_158, @function
    .ent VS_VH_OBJ_158
VS_VH_OBJ_158:
    addiu   $v0,$v0,1
    lui     $at,0x800e
    sh      $v0,0x5298($at)
    sll     $v0,$s2,0x10
    sra     $a2,$v0,0x10
    .end VS_VH_OBJ_158
    .size VS_VH_OBJ_158, . - VS_VH_OBJ_158

    .section .text.VS_VTB_OBJ_A4,"ax",@progbits
    .globl VS_VTB_OBJ_A4
    .type VS_VTB_OBJ_A4, @function
    .ent VS_VTB_OBJ_A4
VS_VTB_OBJ_A4:
    lw      $ra,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end VS_VTB_OBJ_A4
    .size VS_VTB_OBJ_A4, . - VS_VTB_OBJ_A4

    .section .text.VS_VTBP_OBJ_164,"ax",@progbits
    .globl VS_VTBP_OBJ_164
    .type VS_VTBP_OBJ_164, @function
    .ent VS_VTBP_OBJ_164
VS_VTBP_OBJ_164:
    lw      $ra,36($sp)
    lw      $s4,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end VS_VTBP_OBJ_164
    .size VS_VTBP_OBJ_164, . - VS_VTBP_OBJ_164

    .section .text.S_ITC_OBJ_90,"ax",@progbits
    .globl S_ITC_OBJ_90
    .type S_ITC_OBJ_90, @function
    .ent S_ITC_OBJ_90
S_ITC_OBJ_90:
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end S_ITC_OBJ_90
    .size S_ITC_OBJ_90, . - S_ITC_OBJ_90

/* PCopen (0x800357cc, 32 bytes)
   beqz $v0, within-function +0x18 (0x800357e4) */
    .section .text.PCopen,"ax",@progbits
    .globl PCopen
    .type PCopen, @function
    .ent PCopen
PCopen:
    addu    $a2,$a1,$zero
    addu    $a1,$a0,$zero
    break   0x0,0x103
    beqz    $v0,.Lpcopen_ok
    addu    $v0,$v1,$zero
    li      $v0,-1
.Lpcopen_ok:
    jr      $ra
    nop
    .end PCopen
    .size PCopen, . - PCopen

/* _SN_read (0x800358e0, 24 bytes) */
    .section .text._SN_read,"ax",@progbits
    .globl _SN_read
    .type _SN_read, @function
    .ent _SN_read
_SN_read:
    break   0x0,0x105
    beqz    $v0,.Lsn_read_ok
    addu    $v0,$v1,$zero
    li      $v0,-1
.Lsn_read_ok:
    jr      $ra
    nop
    .end _SN_read
    .size _SN_read, . - _SN_read

    .section .text.VSYNC_OBJ_164,"ax",@progbits
    .globl VSYNC_OBJ_164
    .type VSYNC_OBJ_164, @function
    .ent VSYNC_OBJ_164
VSYNC_OBJ_164:
    lw      $ra,32($sp)
    lw      $s1,28($sp)
    lw      $s0,24($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end VSYNC_OBJ_164
    .size VSYNC_OBJ_164, . - VSYNC_OBJ_164

    .section .text.GS_002_OBJ_104,"ax",@progbits
    .globl GS_002_OBJ_104
    .type GS_002_OBJ_104, @function
    .ent GS_002_OBJ_104
GS_002_OBJ_104:
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end GS_002_OBJ_104
    .size GS_002_OBJ_104, . - GS_002_OBJ_104

/* GS_103_OBJ_78 (0x800378e0, 32 bytes)
   jal 0x80036dc8, jal 0x80036cb8 (both external) */
    .section .text.GS_103_OBJ_78,"ax",@progbits
    .globl GS_103_OBJ_78
    .globl sym_80036dc8
    .globl sym_80036cb8
    .type GS_103_OBJ_78, @function
    .ent GS_103_OBJ_78
GS_103_OBJ_78:
    jal     sym_80036dc8
    nop
    jal     sym_80036cb8
    nop
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    nop
    .end GS_103_OBJ_78
    .size GS_103_OBJ_78, . - GS_103_OBJ_78

/* GS_123_OBJ_7C (0x80038194, 24 bytes)
   j to 0x800381d8 (external, just past GS_123_OBJ_AC which ends at 0x800381d8) */
    .section .text.GS_123_OBJ_7C,"ax",@progbits
    .globl GS_123_OBJ_7C
    .globl sym_800381d8
    .type GS_123_OBJ_7C, @function
    .ent GS_123_OBJ_7C
GS_123_OBJ_7C:
    negu    $v0,$a1
    sh      $a2,8($t1)
    sh      $a2,16($t1)
    sh      $v0,10($t1)
    j       sym_800381d8
    sh      $a1,14($t1)
    .end GS_123_OBJ_7C
    .size GS_123_OBJ_7C, . - GS_123_OBJ_7C

/* GS_123_OBJ_94 (0x800381ac, 24 bytes)
   j to 0x800381d8 (same external) */
    .section .text.GS_123_OBJ_94,"ax",@progbits
    .globl GS_123_OBJ_94
    .type GS_123_OBJ_94, @function
    .ent GS_123_OBJ_94
GS_123_OBJ_94:
    negu    $v0,$a1
    sh      $a2,0($t1)
    sh      $a2,16($t1)
    sh      $a1,4($t1)
    j       sym_800381d8
    sh      $v0,12($t1)
    .end GS_123_OBJ_94
    .size GS_123_OBJ_94, . - GS_123_OBJ_94

/* GS_123_OBJ_AC (0x800381c4, 20 bytes) — no return, flows into shared epilogue */
    .section .text.GS_123_OBJ_AC,"ax",@progbits
    .globl GS_123_OBJ_AC
    .type GS_123_OBJ_AC, @function
    .ent GS_123_OBJ_AC
GS_123_OBJ_AC:
    negu    $v0,$a1
    sh      $a2,0($t1)
    sh      $a2,8($t1)
    sh      $v0,2($t1)
    sh      $a1,6($t1)
    .end GS_123_OBJ_AC
    .size GS_123_OBJ_AC, . - GS_123_OBJ_AC

    .section .text.SYS_OBJ_160,"ax",@progbits
    .globl SYS_OBJ_160
    .type SYS_OBJ_160, @function
    .ent SYS_OBJ_160
SYS_OBJ_160:
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end SYS_OBJ_160
    .size SYS_OBJ_160, . - SYS_OBJ_160

    .section .text.SYS_OBJ_788,"ax",@progbits
    .globl SYS_OBJ_788
    .type SYS_OBJ_788, @function
    .ent SYS_OBJ_788
SYS_OBJ_788:
    lw      $ra,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end SYS_OBJ_788
    .size SYS_OBJ_788, . - SYS_OBJ_788

/* SYS_OBJ_F64 (0x8003914c, 28 bytes)
   bnez $v0 to 0x80039200 (external, +0xa4 from start)
   j to 0x800391f4 (external, within SYS_OBJ_FF4 body at 0x800391dc+0x18) */
    .section .text.SYS_OBJ_F64,"ax",@progbits
    .globl SYS_OBJ_F64
    .globl sym_80039200
    .globl sym_800391f4
    .type SYS_OBJ_F64, @function
    .ent SYS_OBJ_F64
SYS_OBJ_F64:
    addu    $s0,$a1,$zero
    addiu   $a1,$s0,2
    slt     $v0,$s2,$a1
    bnez    $v0,sym_80039200
    slti    $v0,$s2,306
    j       sym_800391f4
    li      $a1,305
    .end SYS_OBJ_F64
    .size SYS_OBJ_F64, . - SYS_OBJ_F64

/* SYS_OBJ_FF4 (0x800391dc, 24 bytes)
   bnez to 0x80039200 (external, same as SYS_OBJ_F64) */
    .section .text.SYS_OBJ_FF4,"ax",@progbits
    .globl SYS_OBJ_FF4
    .type SYS_OBJ_FF4, @function
    .ent SYS_OBJ_FF4
SYS_OBJ_FF4:
    addu    $s0,$a1,$zero
    addiu   $a1,$s0,2
    slt     $v0,$s2,$a1
    bnez    $v0,sym_80039200
    slti    $v0,$s2,259
    li      $a1,258
    .end SYS_OBJ_FF4
    .size SYS_OBJ_FF4, . - SYS_OBJ_FF4

/* SYS_OBJ_1614 (0x800397fc, 28 bytes) */
    .section .text.SYS_OBJ_1614,"ax",@progbits
    .globl SYS_OBJ_1614
    .type SYS_OBJ_1614, @function
    .ent SYS_OBJ_1614
SYS_OBJ_1614:
    addiu   $v0,$t0,-1
    sb      $v0,3($s1)
    lw      $ra,32($sp)
    lw      $s1,28($sp)
    lw      $s0,24($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end SYS_OBJ_1614
    .size SYS_OBJ_1614, . - SYS_OBJ_1614

/* SYS_OBJ_1630 (0x80039818, 32 bytes)
   Two internal branches: beqz $a1 → +0xc (0x80039824); beqz $a0 → +0x18 (0x80039830) */
    .section .text.SYS_OBJ_1630,"ax",@progbits
    .globl SYS_OBJ_1630
    .type SYS_OBJ_1630, @function
    .ent SYS_OBJ_1630
SYS_OBJ_1630:
    beqz    $a1,.Lsys_1630_noarg1
    lui     $v1,0xe100
    ori     $v1,$v1,0x200
.Lsys_1630_noarg1:
    beqz    $a0,.Lsys_1630_noarg0
    andi    $v0,$a2,0x9ff
    ori     $v0,$v0,0x400
.Lsys_1630_noarg0:
    jr      $ra
    or      $v0,$v1,$v0
    .end SYS_OBJ_1630
    .size SYS_OBJ_1630, . - SYS_OBJ_1630

/* SYS_OBJ_16CC (0x800398b4, 28 bytes) */
    .section .text.SYS_OBJ_16CC,"ax",@progbits
    .globl SYS_OBJ_16CC
    .type SYS_OBJ_16CC, @function
    .ent SYS_OBJ_16CC
SYS_OBJ_16CC:
    andi    $v1,$a1,0x3ff
    sll     $v1,$v1,0xa
    andi    $v0,$a0,0x3ff
    lui     $a0,0xe300
    or      $v0,$v0,$a0
    jr      $ra
    or      $v0,$v1,$v0
    .end SYS_OBJ_16CC
    .size SYS_OBJ_16CC, . - SYS_OBJ_16CC

/* SYS_OBJ_1764 (0x8003994c, 28 bytes) */
    .section .text.SYS_OBJ_1764,"ax",@progbits
    .globl SYS_OBJ_1764
    .type SYS_OBJ_1764, @function
    .ent SYS_OBJ_1764
SYS_OBJ_1764:
    andi    $v1,$a1,0x3ff
    sll     $v1,$v1,0xa
    andi    $v0,$a0,0x3ff
    lui     $a0,0xe400
    or      $v0,$v0,$a0
    jr      $ra
    or      $v0,$v1,$v0
    .end SYS_OBJ_1764
    .size SYS_OBJ_1764, . - SYS_OBJ_1764

/* SYS_OBJ_1780 (0x80039968, 28 bytes) */
    .section .text.SYS_OBJ_1780,"ax",@progbits
    .globl SYS_OBJ_1780
    .type SYS_OBJ_1780, @function
    .ent SYS_OBJ_1780
SYS_OBJ_1780:
    andi    $a1,$a1,0x7ff
    sll     $a1,$a1,0xb
    andi    $v0,$a0,0x7ff
    lui     $v1,0xe500
    or      $v0,$v0,$v1
    jr      $ra
    or      $v0,$a1,$v0
    .end SYS_OBJ_1780
    .size SYS_OBJ_1780, . - SYS_OBJ_1780

/* SYS_OBJ_181C (0x80039a04, 24 bytes)
   Loads pointer from 0x800e8d84, then loads through it */
    .section .text.SYS_OBJ_181C,"ax",@progbits
    .globl SYS_OBJ_181C
    .type SYS_OBJ_181C, @function
    .ent SYS_OBJ_181C
SYS_OBJ_181C:
    lui     $v0,0x800e
    lw      $v0,-0x727c($v0)
    nop
    lw      $v0,0($v0)
    jr      $ra
    nop
    .end SYS_OBJ_181C
    .size SYS_OBJ_181C, . - SYS_OBJ_181C

    .section .text.SYS_OBJ_1FE0,"ax",@progbits
    .globl SYS_OBJ_1FE0
    .type SYS_OBJ_1FE0, @function
    .ent SYS_OBJ_1FE0
SYS_OBJ_1FE0:
    lw      $ra,36($sp)
    lw      $s4,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end SYS_OBJ_1FE0
    .size SYS_OBJ_1FE0, . - SYS_OBJ_1FE0

/* SYS_OBJ_2024 (0x8003a20c, 20 bytes)
   Loads byte from 0x800e5690 + $a0 */
    .section .text.SYS_OBJ_2024,"ax",@progbits
    .globl SYS_OBJ_2024
    .type SYS_OBJ_2024, @function
    .ent SYS_OBJ_2024
SYS_OBJ_2024:
    lui     $v0,0x800e
    addu    $v0,$v0,$a0
    lbu     $v0,0x5690($v0)
    jr      $ra
    nop
    .end SYS_OBJ_2024
    .size SYS_OBJ_2024, . - SYS_OBJ_2024

    .section .text.SYS_OBJ_23A8,"ax",@progbits
    .globl SYS_OBJ_23A8
    .type SYS_OBJ_23A8, @function
    .ent SYS_OBJ_23A8
SYS_OBJ_23A8:
    lw      $ra,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end SYS_OBJ_23A8
    .size SYS_OBJ_23A8, . - SYS_OBJ_23A8

/* SYS_OBJ_2774 (0x8003a95c, 32 bytes)
   jal 0x8003aa98 (external); j 0x8003a994 (external);
   bnez $a0 to 0x8003aa10 (external, +0xb4) */
    .section .text.SYS_OBJ_2774,"ax",@progbits
    .globl SYS_OBJ_2774
    .globl sym_8003aa10
    .globl sym_8003aa98
    .globl sym_8003a994
    .type SYS_OBJ_2774, @function
    .ent SYS_OBJ_2774
SYS_OBJ_2774:
    addiu   $sp,$sp,-24
    sw      $ra,20($sp)
    bnez    $a0,sym_8003aa10
    sw      $s0,16($sp)
    jal     sym_8003aa98
    nop
    j       sym_8003a994
    nop
    .end SYS_OBJ_2774
    .size SYS_OBJ_2774, . - SYS_OBJ_2774

/* SYS_OBJ_2794 (0x8003a97c, 24 bytes)
   jal 0x8003a5ac, jal 0x8003aacc (both external);
   bnez $v0 to 0x8003aa88 (external) */
    .section .text.SYS_OBJ_2794,"ax",@progbits
    .globl SYS_OBJ_2794
    .globl sym_8003a5ac
    .globl sym_8003aacc
    .globl sym_8003aa88
    .type SYS_OBJ_2794, @function
    .ent SYS_OBJ_2794
SYS_OBJ_2794:
    jal     sym_8003a5ac
    nop
    jal     sym_8003aacc
    nop
    bnez    $v0,sym_8003aa88
    li      $v0,-1
    .end SYS_OBJ_2794
    .size SYS_OBJ_2794, . - SYS_OBJ_2794

    .section .text.SYS_OBJ_2DCC,"ax",@progbits
    .globl SYS_OBJ_2DCC
    .type SYS_OBJ_2DCC, @function
    .ent SYS_OBJ_2DCC
SYS_OBJ_2DCC:
    lw      $ra,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end SYS_OBJ_2DCC
    .size SYS_OBJ_2DCC, . - SYS_OBJ_2DCC

/* COUNTER_OBJ_74 (0x8003bd1c, 32 bytes)
   beqz $v0 to +0xc (0x8003bd28) — internal
   Loads from 0x800e8de0 */
    .section .text.COUNTER_OBJ_74,"ax",@progbits
    .globl COUNTER_OBJ_74
    .type COUNTER_OBJ_74, @function
    .ent COUNTER_OBJ_74
COUNTER_OBJ_74:
    beqz    $v0,.Lcounter_74_skip
    li      $v0,1
    ori     $a3,$a3,0x10
.Lcounter_74_skip:
    lui     $a0,0x800e
    lw      $a0,-0x7220($a0)
    sll     $v1,$t0,0x4
    addu    $v1,$v1,$a0
    sh      $a3,4($v1)
    .end COUNTER_OBJ_74
    .size COUNTER_OBJ_74, . - COUNTER_OBJ_74

    .section .text.FIRST_OBJ_180,"ax",@progbits
    .globl FIRST_OBJ_180
    .type FIRST_OBJ_180, @function
    .ent FIRST_OBJ_180
FIRST_OBJ_180:
    lw      $ra,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end FIRST_OBJ_180
    .size FIRST_OBJ_180, . - FIRST_OBJ_180

    .section .text.PADENTRY_OBJ_25C,"ax",@progbits
    .globl PADENTRY_OBJ_25C
    .type PADENTRY_OBJ_25C, @function
    .ent PADENTRY_OBJ_25C
PADENTRY_OBJ_25C:
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end PADENTRY_OBJ_25C
    .size PADENTRY_OBJ_25C, . - PADENTRY_OBJ_25C

    .section .text.PADENTRY_OBJ_330,"ax",@progbits
    .globl PADENTRY_OBJ_330
    .type PADENTRY_OBJ_330, @function
    .ent PADENTRY_OBJ_330
PADENTRY_OBJ_330:
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end PADENTRY_OBJ_330
    .size PADENTRY_OBJ_330, . - PADENTRY_OBJ_330

    .section .text.PADENTRY_OBJ_3D8,"ax",@progbits
    .globl PADENTRY_OBJ_3D8
    .type PADENTRY_OBJ_3D8, @function
    .ent PADENTRY_OBJ_3D8
PADENTRY_OBJ_3D8:
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end PADENTRY_OBJ_3D8
    .size PADENTRY_OBJ_3D8, . - PADENTRY_OBJ_3D8

    .section .text.PADMAIN_OBJ_780,"ax",@progbits
    .globl PADMAIN_OBJ_780
    .type PADMAIN_OBJ_780, @function
    .ent PADMAIN_OBJ_780
PADMAIN_OBJ_780:
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end PADMAIN_OBJ_780
    .size PADMAIN_OBJ_780, . - PADMAIN_OBJ_780

    .section .text.PADMAIN_OBJ_A78,"ax",@progbits
    .globl PADMAIN_OBJ_A78
    .type PADMAIN_OBJ_A78, @function
    .ent PADMAIN_OBJ_A78
PADMAIN_OBJ_A78:
    lw      $ra,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end PADMAIN_OBJ_A78
    .size PADMAIN_OBJ_A78, . - PADMAIN_OBJ_A78

    .section .text.PADMAIN_OBJ_CF0,"ax",@progbits
    .globl PADMAIN_OBJ_CF0
    .type PADMAIN_OBJ_CF0, @function
    .ent PADMAIN_OBJ_CF0
PADMAIN_OBJ_CF0:
    lw      $ra,32($sp)
    lw      $s3,28($sp)
    lw      $s2,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,40
    .end PADMAIN_OBJ_CF0
    .size PADMAIN_OBJ_CF0, . - PADMAIN_OBJ_CF0

    .section .text.PADCMD_OBJ_408,"ax",@progbits
    .globl PADCMD_OBJ_408
    .type PADCMD_OBJ_408, @function
    .ent PADCMD_OBJ_408
PADCMD_OBJ_408:
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end PADCMD_OBJ_408
    .size PADCMD_OBJ_408, . - PADCMD_OBJ_408

/* PADCMD_OBJ_784 (0x8003df5c, 24 bytes)
   Stores to 0x800e72e8; j to 0x8003df80 (external, +0x24 from start) */
    .section .text.PADCMD_OBJ_784,"ax",@progbits
    .globl PADCMD_OBJ_784
    .globl sym_8003df80
    .type PADCMD_OBJ_784, @function
    .ent PADCMD_OBJ_784
PADCMD_OBJ_784:
    addu    $v1,$v1,$v0
    sw      $v1,4($t0)
    lui     $at,0x800e
    sw      $v1,0x72e8($at)
    j       sym_8003df80
    addiu   $a3,$a3,-1
    .end PADCMD_OBJ_784
    .size PADCMD_OBJ_784, . - PADCMD_OBJ_784

/* PADCMD_OBJ_924 (0x8003e0fc, 28 bytes) */
    .section .text.PADCMD_OBJ_924,"ax",@progbits
    .globl PADCMD_OBJ_924
    .type PADCMD_OBJ_924, @function
    .ent PADCMD_OBJ_924
PADCMD_OBJ_924:
    lw      $v1,32($a0)
    li      $v0,77
    sb      $v0,55($a0)
    li      $v0,6
    sb      $v0,54($a0)
    jr      $ra
    sw      $v1,44($a0)
    .end PADCMD_OBJ_924
    .size PADCMD_OBJ_924, . - PADCMD_OBJ_924

/* PADCMD_OBJ_B74 (0x8003e34c, 20 bytes) */
    .section .text.PADCMD_OBJ_B74,"ax",@progbits
    .globl PADCMD_OBJ_B74
    .type PADCMD_OBJ_B74, @function
    .ent PADCMD_OBJ_B74
PADCMD_OBJ_B74:
    li      $v0,69
    sb      $v0,55($a0)
    sw      $zero,44($a0)
    jr      $ra
    sb      $zero,54($a0)
    .end PADCMD_OBJ_B74
    .size PADCMD_OBJ_B74, . - PADCMD_OBJ_B74

/* PADCMD_OBJ_B88 (0x8003e360, 32 bytes) */
    .section .text.PADCMD_OBJ_B88,"ax",@progbits
    .globl PADCMD_OBJ_B88
    .type PADCMD_OBJ_B88, @function
    .ent PADCMD_OBJ_B88
PADCMD_OBJ_B88:
    li      $v0,76
    sb      $v0,55($a0)
    addiu   $v0,$a0,36
    sw      $v0,44($a0)
    li      $v0,1
    sb      $a1,36($a0)
    jr      $ra
    sb      $v0,54($a0)
    .end PADCMD_OBJ_B88
    .size PADCMD_OBJ_B88, . - PADCMD_OBJ_B88

/* PADCMD_OBJ_BA8 (0x8003e380, 32 bytes) */
    .section .text.PADCMD_OBJ_BA8,"ax",@progbits
    .globl PADCMD_OBJ_BA8
    .type PADCMD_OBJ_BA8, @function
    .ent PADCMD_OBJ_BA8
PADCMD_OBJ_BA8:
    li      $v0,70
    sb      $v0,55($a0)
    addiu   $v0,$a0,36
    sw      $v0,44($a0)
    li      $v0,1
    sb      $a1,36($a0)
    jr      $ra
    sb      $v0,54($a0)
    .end PADCMD_OBJ_BA8
    .size PADCMD_OBJ_BA8, . - PADCMD_OBJ_BA8

/* PADCMD_OBJ_BC8 (0x8003e3a0, 32 bytes) */
    .section .text.PADCMD_OBJ_BC8,"ax",@progbits
    .globl PADCMD_OBJ_BC8
    .type PADCMD_OBJ_BC8, @function
    .ent PADCMD_OBJ_BC8
PADCMD_OBJ_BC8:
    li      $v0,71
    sb      $v0,55($a0)
    addiu   $v0,$a0,36
    sw      $v0,44($a0)
    li      $v0,1
    sb      $a1,36($a0)
    jr      $ra
    sb      $v0,54($a0)
    .end PADCMD_OBJ_BC8
    .size PADCMD_OBJ_BC8, . - PADCMD_OBJ_BC8

/* PADCMD_OBJ_BE8 (0x8003e3c0, 20 bytes) */
    .section .text.PADCMD_OBJ_BE8,"ax",@progbits
    .globl PADCMD_OBJ_BE8
    .type PADCMD_OBJ_BE8, @function
    .ent PADCMD_OBJ_BE8
PADCMD_OBJ_BE8:
    li      $v0,75
    sb      $v0,55($a0)
    sw      $zero,44($a0)
    jr      $ra
    sb      $zero,54($a0)
    .end PADCMD_OBJ_BE8
    .size PADCMD_OBJ_BE8, . - PADCMD_OBJ_BE8

/* PADIF_OBJ_108 (0x8003e4e0, 24 bytes)
   jal to 0x8003d49c (external) */
    .section .text.PADIF_OBJ_108,"ax",@progbits
    .globl PADIF_OBJ_108
    .globl sym_8003d49c
    .type PADIF_OBJ_108, @function
    .ent PADIF_OBJ_108
PADIF_OBJ_108:
    jal     sym_8003d49c
    nop
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end PADIF_OBJ_108
    .size PADIF_OBJ_108, . - PADIF_OBJ_108

/* PADPORTD_OBJ_63C (0x8003f044, 32 bytes)
   beqz $a0 to +0x18 (0x8003f05c) — internal */
    .section .text.PADPORTD_OBJ_63C,"ax",@progbits
    .globl PADPORTD_OBJ_63C
    .type PADPORTD_OBJ_63C, @function
    .ent PADPORTD_OBJ_63C
PADPORTD_OBJ_63C:
    lui     $v0,0x800e
    addiu   $v0,$v0,0x7388
    andi    $a0,$a0,0xf0
    beqz    $a0,.Lpadportd_skip
    nop
    addiu   $v0,$v0,240
.Lpadportd_skip:
    jr      $ra
    nop
    .end PADPORTD_OBJ_63C
    .size PADPORTD_OBJ_63C, . - PADPORTD_OBJ_63C

/* setRC2wait (0x8003f528, 32 bytes)
   Reads from hardware register 0x1f801120, stores to 0x800e756c and 0x800e756c-4 */
    .section .text.setRC2wait,"ax",@progbits
    .globl setRC2wait
    .type setRC2wait, @function
    .ent setRC2wait
setRC2wait:
    lui     $v0,0x1f80
    ori     $v0,$v0,0x1120
    lhu     $v0,0($v0)
    lui     $at,0x800e
    sw      $a0,0x756c($at)
    lui     $at,0x800e
    jr      $ra
    sw      $v0,0x7568($at)
    .end setRC2wait
    .size setRC2wait, . - setRC2wait

/* BIOS_OBJ_548 (0x80040410, 20 bytes) */
    .section .text.BIOS_OBJ_548,"ax",@progbits
    .globl BIOS_OBJ_548
    .type BIOS_OBJ_548, @function
    .ent BIOS_OBJ_548
BIOS_OBJ_548:
    lw      $ra,40($sp)
    lw      $s1,36($sp)
    lw      $s0,32($sp)
    jr      $ra
    addiu   $sp,$sp,48
    .end BIOS_OBJ_548
    .size BIOS_OBJ_548, . - BIOS_OBJ_548

/* COR_05_OBJ_134 (0x800550fc, 32 bytes)
   bnez $v0 to 0x80054ff8 (external, before function start) */
    .section .text.COR_05_OBJ_134,"ax",@progbits
    .globl COR_05_OBJ_134
    .globl sym_80054ff8
    .type COR_05_OBJ_134, @function
    .ent COR_05_OBJ_134
COR_05_OBJ_134:
    addiu   $t0,$t0,4
    addiu   $a3,$a3,1
    slti    $v0,$a3,7
    bnez    $v0,sym_80054ff8
    addiu   $a2,$a2,4
    lw      $v0,28($sp)
    jr      $ra
    addiu   $sp,$sp,64
    .end COR_05_OBJ_134
    .size COR_05_OBJ_134, . - COR_05_OBJ_134

    .section .text.COR_05_OBJ_1D8,"ax",@progbits
    .globl COR_05_OBJ_1D8
    .type COR_05_OBJ_1D8, @function
    .ent COR_05_OBJ_1D8
COR_05_OBJ_1D8:
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end COR_05_OBJ_1D8
    .size COR_05_OBJ_1D8, . - COR_05_OBJ_1D8

/* GS_131_OBJ_4A4 (0x80055f38, 24 bytes) */
    .section .text.GS_131_OBJ_4A4,"ax",@progbits
    .globl GS_131_OBJ_4A4
    .type GS_131_OBJ_4A4, @function
    .ent GS_131_OBJ_4A4
GS_131_OBJ_4A4:
    sw      $v0,20($s1)
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end GS_131_OBJ_4A4
    .size GS_131_OBJ_4A4, . - GS_131_OBJ_4A4

/* GS_131_OBJ_584 (0x80056018, 28 bytes)
   blez $a0 to +0x14 (0x8005602c) — internal
   bgtz $a0 to +0x8 (0x80056020) — internal */
    .section .text.GS_131_OBJ_584,"ax",@progbits
    .globl GS_131_OBJ_584
    .type GS_131_OBJ_584, @function
    .ent GS_131_OBJ_584
GS_131_OBJ_584:
    blez    $a0,.Lgs131_584_done
    addu    $v0,$zero,$zero
.Lgs131_584_loop:
    sra     $a0,$a0,0x1
    bgtz    $a0,.Lgs131_584_loop
    addiu   $v0,$v0,1
.Lgs131_584_done:
    jr      $ra
    nop
    .end GS_131_OBJ_584
    .size GS_131_OBJ_584, . - GS_131_OBJ_584

/* VectorNormalS (0x80060f3c, 20 bytes)
   b to 0x80060f8c (external, +0x50 from start) */
    .section .text.VectorNormalS,"ax",@progbits
    .globl VectorNormalS
    .globl sym_80060f8c
    .type VectorNormalS, @function
    .ent VectorNormalS
VectorNormalS:
    lw      $t0,0($a0)
    lw      $t1,4($a0)
    lw      $t2,8($a0)
    b       sym_80060f8c
    nop
    .end VectorNormalS
    .size VectorNormalS, . - VectorNormalS

/* SPRINTF_OBJ_2E8 (0x800616d8, 32 bytes)
   j to 0x80061690 (external, before function start) */
    .section .text.SPRINTF_OBJ_2E8,"ax",@progbits
    .globl SPRINTF_OBJ_2E8
    .globl sym_80061690
    .type SPRINTF_OBJ_2E8, @function
    .ent SPRINTF_OBJ_2E8
SPRINTF_OBJ_2E8:
    sw      $v0,528($sp)
    lw      $v1,596($sp)
    nop
    addiu   $v0,$v1,1
    sw      $v0,596($sp)
    lb      $a1,1($v1)
    j       sym_80061690
    addiu   $v1,$a1,-76
    .end SPRINTF_OBJ_2E8
    .size SPRINTF_OBJ_2E8, . - SPRINTF_OBJ_2E8

/* SPRINTF_OBJ_580 (0x80061970, 20 bytes) — no return, mid-function fragment */
    .section .text.SPRINTF_OBJ_580,"ax",@progbits
    .globl SPRINTF_OBJ_580
    .type SPRINTF_OBJ_580, @function
    .ent SPRINTF_OBJ_580
SPRINTF_OBJ_580:
    lw      $v1,528($sp)
    li      $v0,8
    sw      $v0,536($sp)
    ori     $v1,$v1,0x50
    sw      $v1,528($sp)
    .end SPRINTF_OBJ_580
    .size SPRINTF_OBJ_580, . - SPRINTF_OBJ_580

/* SPRINTF_OBJ_6A8 (0x80061a98, 32 bytes)
   j to 0x80061b90 (external, past function end) */
    .section .text.SPRINTF_OBJ_6A8,"ax",@progbits
    .globl SPRINTF_OBJ_6A8
    .globl sym_80061b90
    .type SPRINTF_OBJ_6A8, @function
    .ent SPRINTF_OBJ_6A8
SPRINTF_OBJ_6A8:
    addiu   $s1,$s1,-1
    lw      $v0,544($sp)
    li      $s0,1
    lbu     $v1,0($v0)
    addiu   $v0,$v0,4
    sb      $v1,0($s1)
    j       sym_80061b90
    sw      $v0,544($sp)
    .end SPRINTF_OBJ_6A8
    .size SPRINTF_OBJ_6A8, . - SPRINTF_OBJ_6A8

/* SPRINTF_OBJ_788 (0x80061b78, 24 bytes)
   bne $a1,$v0 to 0x80061c3c (external, +0xc4); j to 0x80061c1c (external) */
    .section .text.SPRINTF_OBJ_788,"ax",@progbits
    .globl SPRINTF_OBJ_788
    .globl sym_80061c3c
    .globl sym_80061c1c
    .type SPRINTF_OBJ_788, @function
    .ent SPRINTF_OBJ_788
SPRINTF_OBJ_788:
    li      $v0,37
    bne     $a1,$v0,sym_80061c3c
    addu    $v0,$s4,$s2
    sb      $a1,0($v0)
    j       sym_80061c1c
    addiu   $s2,$s2,1
    .end SPRINTF_OBJ_788
    .size SPRINTF_OBJ_788, . - SPRINTF_OBJ_788

/* PRESET_OBJ_380 (0x8007c860, 28 bytes)
   j to 0x8007c894 (external, +0x34) */
    .section .text.PRESET_OBJ_380,"ax",@progbits
    .globl PRESET_OBJ_380
    .globl sym_8007c894
    .type PRESET_OBJ_380, @function
    .ent PRESET_OBJ_380
PRESET_OBJ_380:
    lw      $v0,-12($s1)
    addiu   $s2,$s2,20
    sw      $v0,0($s0)
    addiu   $s0,$s0,24
    lw      $v0,-12($s1)
    j       sym_8007c894
    addiu   $s1,$s1,20
    .end PRESET_OBJ_380
    .size PRESET_OBJ_380, . - PRESET_OBJ_380

/* PRESET_OBJ_39C (0x8007c87c, 24 bytes) — no terminal return, tail fragment */
    .section .text.PRESET_OBJ_39C,"ax",@progbits
    .globl PRESET_OBJ_39C
    .type PRESET_OBJ_39C, @function
    .ent PRESET_OBJ_39C
PRESET_OBJ_39C:
    lw      $v0,-12($s1)
    addiu   $s2,$s2,16
    sw      $v0,0($s0)
    addiu   $s0,$s0,24
    lw      $v0,-12($s1)
    addiu   $s1,$s1,16
    .end PRESET_OBJ_39C
    .size PRESET_OBJ_39C, . - PRESET_OBJ_39C

    .section .text.GS_004_OBJ_D4,"ax",@progbits
    .globl GS_004_OBJ_D4
    .type GS_004_OBJ_D4, @function
    .ent GS_004_OBJ_D4
GS_004_OBJ_D4:
    lw      $ra,24($sp)
    lw      $s1,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end GS_004_OBJ_D4
    .size GS_004_OBJ_D4, . - GS_004_OBJ_D4

/* SsGetMute (0x800a2364, 32 bytes)
   jal to 0x8002829c (external) */
    .section .text.SsGetMute,"ax",@progbits
    .globl SsGetMute
    .globl sym_8002829c
    .type SsGetMute, @function
    .ent SsGetMute
SsGetMute:
    addiu   $sp,$sp,-24
    sw      $ra,16($sp)
    jal     sym_8002829c
    nop
    lw      $ra,16($sp)
    sltu    $v0,$zero,$v0
    jr      $ra
    addiu   $sp,$sp,24
    .end SsGetMute
    .size SsGetMute, . - SsGetMute
