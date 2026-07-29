    .set noreorder
    .set noat
    .set nomacro

    .section .text.S_M_INIT_OBJ_4C,"ax",@progbits
    .globl S_M_INIT_OBJ_4C
    .type S_M_INIT_OBJ_4C, @function
    .ent S_M_INIT_OBJ_4C
S_M_INIT_OBJ_4C:
    jr      $ra
    nop
    .end S_M_INIT_OBJ_4C
    .size S_M_INIT_OBJ_4C, . - S_M_INIT_OBJ_4C

    .section .text.SPU_OBJ_4EC,"ax",@progbits
    .globl SPU_OBJ_4EC
    .type SPU_OBJ_4EC, @function
    .ent SPU_OBJ_4EC
SPU_OBJ_4EC:
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    nop
    .end SPU_OBJ_4EC
    .size SPU_OBJ_4EC, . - SPU_OBJ_4EC

    .section .text.SPU_OBJ_814,"ax",@progbits
    .globl SPU_OBJ_814
    .type SPU_OBJ_814, @function
    .ent SPU_OBJ_814
SPU_OBJ_814:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end SPU_OBJ_814
    .size SPU_OBJ_814, . - SPU_OBJ_814

    .section .text.SPU_OBJ_948,"ax",@progbits
    .globl SPU_OBJ_948
    .type SPU_OBJ_948, @function
    .ent SPU_OBJ_948
SPU_OBJ_948:
    jr      $ra
    nop
    .end SPU_OBJ_948
    .size SPU_OBJ_948, . - SPU_OBJ_948

    .section .text.SPU_OBJ_9EC,"ax",@progbits
    .globl SPU_OBJ_9EC
    .type SPU_OBJ_9EC, @function
    .ent SPU_OBJ_9EC
SPU_OBJ_9EC:
    jr      $ra
    nop
    .end SPU_OBJ_9EC
    .size SPU_OBJ_9EC, . - SPU_OBJ_9EC

    .section .text.SPU_OBJ_A28,"ax",@progbits
    .globl SPU_OBJ_A28
    .type SPU_OBJ_A28, @function
    .ent SPU_OBJ_A28
SPU_OBJ_A28:
    jr      $ra
    nop
    .end SPU_OBJ_A28
    .size SPU_OBJ_A28, . - SPU_OBJ_A28

    .section .text.SPU_OBJ_A7C,"ax",@progbits
    .globl SPU_OBJ_A7C
    .type SPU_OBJ_A7C, @function
    .ent SPU_OBJ_A7C
SPU_OBJ_A7C:
    or      $v1,$v1,$a0
    jr      $ra
    sw      $v1,0($v0)
    .end SPU_OBJ_A7C
    .size SPU_OBJ_A7C, . - SPU_OBJ_A7C

    .section .text.S_M_UTIL_OBJ_78,"ax",@progbits
    .globl S_M_UTIL_OBJ_78
    .type S_M_UTIL_OBJ_78, @function
    .ent S_M_UTIL_OBJ_78
S_M_UTIL_OBJ_78:
    jr      $ra
    nop
    .end S_M_UTIL_OBJ_78
    .size S_M_UTIL_OBJ_78, . - S_M_UTIL_OBJ_78

    .section .text.S_M_UTIL_OBJ_104,"ax",@progbits
    .globl S_M_UTIL_OBJ_104
    .type S_M_UTIL_OBJ_104, @function
    .ent S_M_UTIL_OBJ_104
S_M_UTIL_OBJ_104:
    jr      $ra
    nop
    .end S_M_UTIL_OBJ_104
    .size S_M_UTIL_OBJ_104, . - S_M_UTIL_OBJ_104

    .section .text.S_RRWA_OBJ_3C,"ax",@progbits
    .globl S_RRWA_OBJ_3C
    .type S_RRWA_OBJ_3C, @function
    .ent S_RRWA_OBJ_3C
S_RRWA_OBJ_3C:
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    nop
    .end S_RRWA_OBJ_3C
    .size S_RRWA_OBJ_3C, . - S_RRWA_OBJ_3C

    .section .text.S_SAV_OBJ_130,"ax",@progbits
    .globl S_SAV_OBJ_130
    .type S_SAV_OBJ_130, @function
    .ent S_SAV_OBJ_130
S_SAV_OBJ_130:
    ori     $v0,$v0,0xffff
    and     $v0,$t0,$v0
    j       sym_8002eb98
    or      $t2,$t2,$v0
    .end S_SAV_OBJ_130
    .size S_SAV_OBJ_130, . - S_SAV_OBJ_130

    .section .text.S_SAV_OBJ_2A4,"ax",@progbits
    .globl S_SAV_OBJ_2A4
    .type S_SAV_OBJ_2A4, @function
    .ent S_SAV_OBJ_2A4
S_SAV_OBJ_2A4:
    ori     $v0,$v0,0xffff
    and     $t2,$t0,$v0
    .end S_SAV_OBJ_2A4
    .size S_SAV_OBJ_2A4, . - S_SAV_OBJ_2A4

    .section .text.S_SAV_OBJ_2AC,"ax",@progbits
    .globl S_SAV_OBJ_2AC
    .type S_SAV_OBJ_2AC, @function
    .ent S_SAV_OBJ_2AC
S_SAV_OBJ_2AC:
    lui     $v0,0xff
    ori     $v0,$v0,0xffff
    .end S_SAV_OBJ_2AC
    .size S_SAV_OBJ_2AC, . - S_SAV_OBJ_2AC

    .section .text.S_SAV_OBJ_2B4,"ax",@progbits
    .globl S_SAV_OBJ_2B4
    .type S_SAV_OBJ_2B4, @function
    .ent S_SAV_OBJ_2B4
S_SAV_OBJ_2B4:
    jr      $ra
    and     $v0,$t2,$v0
    .end S_SAV_OBJ_2B4
    .size S_SAV_OBJ_2B4, . - S_SAV_OBJ_2B4

    .section .text.S_SI_OBJ_F4,"ax",@progbits
    .globl S_SI_OBJ_F4
    .type S_SI_OBJ_F4, @function
    .ent S_SI_OBJ_F4
S_SI_OBJ_F4:
    jal     sym_8003bae8
    nop
    j       sym_8002ee78
    li      $v0,-1
    .end S_SI_OBJ_F4
    .size S_SI_OBJ_F4, . - S_SI_OBJ_F4

    .section .text.S_SI_OBJ_12C,"ax",@progbits
    .globl S_SI_OBJ_12C
    .type S_SI_OBJ_12C, @function
    .ent S_SI_OBJ_12C
S_SI_OBJ_12C:
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    nop
    .end S_SI_OBJ_12C
    .size S_SI_OBJ_12C, . - S_SI_OBJ_12C

    .section .text.S_SIA_OBJ_30,"ax",@progbits
    .globl S_SIA_OBJ_30
    .type S_SIA_OBJ_30, @function
    .ent S_SIA_OBJ_30
S_SIA_OBJ_30:
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    nop
    .end S_SIA_OBJ_30
    .size S_SIA_OBJ_30, . - S_SIA_OBJ_30

    .section .text.S_SK_OBJ_1AC,"ax",@progbits
    .globl S_SK_OBJ_1AC
    .type S_SK_OBJ_1AC, @function
    .ent S_SK_OBJ_1AC
S_SK_OBJ_1AC:
    lui     $at,0x800d
    sw      $v0,27616($at)
    .end S_SK_OBJ_1AC
    .size S_SK_OBJ_1AC, . - S_SK_OBJ_1AC

    .section .text.S_SK_OBJ_1B4,"ax",@progbits
    .globl S_SK_OBJ_1B4
    .type S_SK_OBJ_1B4, @function
    .ent S_SK_OBJ_1B4
S_SK_OBJ_1B4:
    jr      $ra
    nop
    .end S_SK_OBJ_1B4
    .size S_SK_OBJ_1B4, . - S_SK_OBJ_1B4

    .section .text.S_GKS_OBJ_88,"ax",@progbits
    .globl S_GKS_OBJ_88
    .type S_GKS_OBJ_88, @function
    .ent S_GKS_OBJ_88
S_GKS_OBJ_88:
    jr      $ra
    nop
    .end S_GKS_OBJ_88
    .size S_GKS_OBJ_88, . - S_GKS_OBJ_88

    .section .text.S_STSA_OBJ_4C,"ax",@progbits
    .globl S_STSA_OBJ_4C
    .type S_STSA_OBJ_4C, @function
    .ent S_STSA_OBJ_4C
S_STSA_OBJ_4C:
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    nop
    .end S_STSA_OBJ_4C
    .size S_STSA_OBJ_4C, . - S_STSA_OBJ_4C

    .section .text.SR_GAKS_OBJ_CC,"ax",@progbits
    .globl SR_GAKS_OBJ_CC
    .type SR_GAKS_OBJ_CC, @function
    .ent SR_GAKS_OBJ_CC
SR_GAKS_OBJ_CC:
    jr      $ra
    nop
    .end SR_GAKS_OBJ_CC
    .size SR_GAKS_OBJ_CC, . - SR_GAKS_OBJ_CC

    .section .text.S_SVA_OBJ_13C,"ax",@progbits
    .globl S_SVA_OBJ_13C
    .type S_SVA_OBJ_13C, @function
    .ent S_SVA_OBJ_13C
S_SVA_OBJ_13C:
    j       sym_8002f59c
    li      $a0,0x8000
    .end S_SVA_OBJ_13C
    .size S_SVA_OBJ_13C, . - S_SVA_OBJ_13C

    .section .text.S_SVA_OBJ_144,"ax",@progbits
    .globl S_SVA_OBJ_144
    .type S_SVA_OBJ_144, @function
    .ent S_SVA_OBJ_144
S_SVA_OBJ_144:
    j       sym_8002f59c
    li      $a0,0x9000
    .end S_SVA_OBJ_144
    .size S_SVA_OBJ_144, . - S_SVA_OBJ_144

    .section .text.S_SVA_OBJ_14C,"ax",@progbits
    .globl S_SVA_OBJ_14C
    .type S_SVA_OBJ_14C, @function
    .ent S_SVA_OBJ_14C
S_SVA_OBJ_14C:
    j       sym_8002f59c
    li      $a0,0xa000
    .end S_SVA_OBJ_14C
    .size S_SVA_OBJ_14C, . - S_SVA_OBJ_14C

    .section .text.S_SVA_OBJ_154,"ax",@progbits
    .globl S_SVA_OBJ_154
    .type S_SVA_OBJ_154, @function
    .ent S_SVA_OBJ_154
S_SVA_OBJ_154:
    j       sym_8002f59c
    li      $a0,0xb000
    .end S_SVA_OBJ_154
    .size S_SVA_OBJ_154, . - S_SVA_OBJ_154

    .section .text.S_SVA_OBJ_15C,"ax",@progbits
    .globl S_SVA_OBJ_15C
    .type S_SVA_OBJ_15C, @function
    .ent S_SVA_OBJ_15C
S_SVA_OBJ_15C:
    j       sym_8002f59c
    li      $a0,0xc000
    .end S_SVA_OBJ_15C
    .size S_SVA_OBJ_15C, . - S_SVA_OBJ_15C

    .section .text.S_SVA_OBJ_164,"ax",@progbits
    .globl S_SVA_OBJ_164
    .type S_SVA_OBJ_164, @function
    .ent S_SVA_OBJ_164
S_SVA_OBJ_164:
    j       sym_8002f59c
    li      $a0,0xd000
    .end S_SVA_OBJ_164
    .size S_SVA_OBJ_164, . - S_SVA_OBJ_164

    .section .text.S_SVA_OBJ_21C,"ax",@progbits
    .globl S_SVA_OBJ_21C
    .type S_SVA_OBJ_21C, @function
    .ent S_SVA_OBJ_21C
S_SVA_OBJ_21C:
    j       sym_8002f67c
    li      $a0,0x8000
    .end S_SVA_OBJ_21C
    .size S_SVA_OBJ_21C, . - S_SVA_OBJ_21C

    .section .text.S_SVA_OBJ_224,"ax",@progbits
    .globl S_SVA_OBJ_224
    .type S_SVA_OBJ_224, @function
    .ent S_SVA_OBJ_224
S_SVA_OBJ_224:
    j       sym_8002f67c
    li      $a0,0x9000
    .end S_SVA_OBJ_224
    .size S_SVA_OBJ_224, . - S_SVA_OBJ_224

    .section .text.S_SVA_OBJ_22C,"ax",@progbits
    .globl S_SVA_OBJ_22C
    .type S_SVA_OBJ_22C, @function
    .ent S_SVA_OBJ_22C
S_SVA_OBJ_22C:
    j       sym_8002f67c
    li      $a0,0xa000
    .end S_SVA_OBJ_22C
    .size S_SVA_OBJ_22C, . - S_SVA_OBJ_22C

    .section .text.S_SVA_OBJ_234,"ax",@progbits
    .globl S_SVA_OBJ_234
    .type S_SVA_OBJ_234, @function
    .ent S_SVA_OBJ_234
S_SVA_OBJ_234:
    j       sym_8002f67c
    li      $a0,0xb000
    .end S_SVA_OBJ_234
    .size S_SVA_OBJ_234, . - S_SVA_OBJ_234

    .section .text.S_SVA_OBJ_23C,"ax",@progbits
    .globl S_SVA_OBJ_23C
    .type S_SVA_OBJ_23C, @function
    .ent S_SVA_OBJ_23C
S_SVA_OBJ_23C:
    j       sym_8002f67c
    li      $a0,0xc000
    .end S_SVA_OBJ_23C
    .size S_SVA_OBJ_23C, . - S_SVA_OBJ_23C

    .section .text.S_SVA_OBJ_244,"ax",@progbits
    .globl S_SVA_OBJ_244
    .type S_SVA_OBJ_244, @function
    .ent S_SVA_OBJ_244
S_SVA_OBJ_244:
    j       sym_8002f67c
    li      $a0,0xd000
    .end S_SVA_OBJ_244
    .size S_SVA_OBJ_244, . - S_SVA_OBJ_244

    .section .text.S_N2P_OBJ_C8,"ax",@progbits
    .globl S_N2P_OBJ_C8
    .type S_N2P_OBJ_C8, @function
    .ent S_N2P_OBJ_C8
S_N2P_OBJ_C8:
    jr      $ra
    andi    $v0,$a1,0xffff
    .end S_N2P_OBJ_C8
    .size S_N2P_OBJ_C8, . - S_N2P_OBJ_C8

    .section .text.S_SCA_OBJ_58,"ax",@progbits
    .globl S_SCA_OBJ_58
    .type S_SCA_OBJ_58, @function
    .ent S_SCA_OBJ_58
S_SCA_OBJ_58:
    j       sym_8002ffd4
    li      $a1,0x8000
    .end S_SCA_OBJ_58
    .size S_SCA_OBJ_58, . - S_SCA_OBJ_58

    .section .text.S_SCA_OBJ_60,"ax",@progbits
    .globl S_SCA_OBJ_60
    .type S_SCA_OBJ_60, @function
    .ent S_SCA_OBJ_60
S_SCA_OBJ_60:
    j       sym_8002ffd4
    li      $a1,0x9000
    .end S_SCA_OBJ_60
    .size S_SCA_OBJ_60, . - S_SCA_OBJ_60

    .section .text.S_SCA_OBJ_68,"ax",@progbits
    .globl S_SCA_OBJ_68
    .type S_SCA_OBJ_68, @function
    .ent S_SCA_OBJ_68
S_SCA_OBJ_68:
    j       sym_8002ffd4
    li      $a1,0xa000
    .end S_SCA_OBJ_68
    .size S_SCA_OBJ_68, . - S_SCA_OBJ_68

    .section .text.S_SCA_OBJ_70,"ax",@progbits
    .globl S_SCA_OBJ_70
    .type S_SCA_OBJ_70, @function
    .ent S_SCA_OBJ_70
S_SCA_OBJ_70:
    j       sym_8002ffd4
    li      $a1,0xb000
    .end S_SCA_OBJ_70
    .size S_SCA_OBJ_70, . - S_SCA_OBJ_70

    .section .text.S_SCA_OBJ_78,"ax",@progbits
    .globl S_SCA_OBJ_78
    .type S_SCA_OBJ_78, @function
    .ent S_SCA_OBJ_78
S_SCA_OBJ_78:
    j       sym_8002ffd4
    li      $a1,0xc000
    .end S_SCA_OBJ_78
    .size S_SCA_OBJ_78, . - S_SCA_OBJ_78

    .section .text.S_SCA_OBJ_80,"ax",@progbits
    .globl S_SCA_OBJ_80
    .type S_SCA_OBJ_80, @function
    .ent S_SCA_OBJ_80
S_SCA_OBJ_80:
    j       sym_8002ffd4
    li      $a1,0xd000
    .end S_SCA_OBJ_80
    .size S_SCA_OBJ_80, . - S_SCA_OBJ_80

    .section .text.S_SCA_OBJ_88,"ax",@progbits
    .globl S_SCA_OBJ_88
    .type S_SCA_OBJ_88, @function
    .ent S_SCA_OBJ_88
S_SCA_OBJ_88:
    j       sym_8002ffd4
    li      $a1,0xe000
    .end S_SCA_OBJ_88
    .size S_SCA_OBJ_88, . - S_SCA_OBJ_88

    .section .text.S_SCA_OBJ_90,"ax",@progbits
    .globl S_SCA_OBJ_90
    .type S_SCA_OBJ_90, @function
    .ent S_SCA_OBJ_90
S_SCA_OBJ_90:
    lhu     $a2,4($a0)
    addu    $a1, $zero, $zero
    .end S_SCA_OBJ_90
    .size S_SCA_OBJ_90, . - S_SCA_OBJ_90

    .section .text.S_SCA_OBJ_118,"ax",@progbits
    .globl S_SCA_OBJ_118
    .type S_SCA_OBJ_118, @function
    .ent S_SCA_OBJ_118
S_SCA_OBJ_118:
    j       sym_80030094
    li      $a1,0x8000
    .end S_SCA_OBJ_118
    .size S_SCA_OBJ_118, . - S_SCA_OBJ_118

    .section .text.S_SCA_OBJ_120,"ax",@progbits
    .globl S_SCA_OBJ_120
    .type S_SCA_OBJ_120, @function
    .ent S_SCA_OBJ_120
S_SCA_OBJ_120:
    j       sym_80030094
    li      $a1,0x9000
    .end S_SCA_OBJ_120
    .size S_SCA_OBJ_120, . - S_SCA_OBJ_120

    .section .text.S_SCA_OBJ_128,"ax",@progbits
    .globl S_SCA_OBJ_128
    .type S_SCA_OBJ_128, @function
    .ent S_SCA_OBJ_128
S_SCA_OBJ_128:
    j       sym_80030094
    li      $a1,0xa000
    .end S_SCA_OBJ_128
    .size S_SCA_OBJ_128, . - S_SCA_OBJ_128

    .section .text.S_SCA_OBJ_130,"ax",@progbits
    .globl S_SCA_OBJ_130
    .type S_SCA_OBJ_130, @function
    .ent S_SCA_OBJ_130
S_SCA_OBJ_130:
    j       sym_80030094
    li      $a1,0xb000
    .end S_SCA_OBJ_130
    .size S_SCA_OBJ_130, . - S_SCA_OBJ_130

    .section .text.S_SCA_OBJ_138,"ax",@progbits
    .globl S_SCA_OBJ_138
    .type S_SCA_OBJ_138, @function
    .ent S_SCA_OBJ_138
S_SCA_OBJ_138:
    j       sym_80030094
    li      $a1,0xc000
    .end S_SCA_OBJ_138
    .size S_SCA_OBJ_138, . - S_SCA_OBJ_138

    .section .text.S_SCA_OBJ_140,"ax",@progbits
    .globl S_SCA_OBJ_140
    .type S_SCA_OBJ_140, @function
    .ent S_SCA_OBJ_140
S_SCA_OBJ_140:
    j       sym_80030094
    li      $a1,0xd000
    .end S_SCA_OBJ_140
    .size S_SCA_OBJ_140, . - S_SCA_OBJ_140

    .section .text.S_SCA_OBJ_148,"ax",@progbits
    .globl S_SCA_OBJ_148
    .type S_SCA_OBJ_148, @function
    .ent S_SCA_OBJ_148
S_SCA_OBJ_148:
    j       sym_80030094
    li      $a1,0xe000
    .end S_SCA_OBJ_148
    .size S_SCA_OBJ_148, . - S_SCA_OBJ_148

    .section .text.S_SCA_OBJ_150,"ax",@progbits
    .globl S_SCA_OBJ_150
    .type S_SCA_OBJ_150, @function
    .ent S_SCA_OBJ_150
S_SCA_OBJ_150:
    lhu     $t0,6($a0)
    addu    $a1, $zero, $zero
    .end S_SCA_OBJ_150
    .size S_SCA_OBJ_150, . - S_SCA_OBJ_150

    .section .text.S_SCA_OBJ_370,"ax",@progbits
    .globl S_SCA_OBJ_370
    .type S_SCA_OBJ_370, @function
    .ent S_SCA_OBJ_370
S_SCA_OBJ_370:
    sh      $v0,426($v1)
    jr      $ra
    nop
    .end S_SCA_OBJ_370
    .size S_SCA_OBJ_370, . - S_SCA_OBJ_370

    .section .text.SSSTART_OBJ_208,"ax",@progbits
    .globl SSSTART_OBJ_208
    .type SSSTART_OBJ_208, @function
    .ent SSSTART_OBJ_208
SSSTART_OBJ_208:
    jal     sym_80035b38
    nop
    .end SSSTART_OBJ_208
    .size SSSTART_OBJ_208, . - SSSTART_OBJ_208

    .section .text.SSSTART_OBJ_210,"ax",@progbits
    .globl SSSTART_OBJ_210
    .type SSSTART_OBJ_210, @function
    .ent SSSTART_OBJ_210
SSSTART_OBJ_210:
    jal     sym_8003bbf8
    nop
    .end SSSTART_OBJ_210
    .size SSSTART_OBJ_210, . - SSSTART_OBJ_210

    .section .text.SSSTART_OBJ_2F4,"ax",@progbits
    .globl SSSTART_OBJ_2F4
    .type SSSTART_OBJ_2F4, @function
    .ent SSSTART_OBJ_2F4
SSSTART_OBJ_2F4:
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    nop
    .end SSSTART_OBJ_2F4
    .size SSSTART_OBJ_2F4, . - SSSTART_OBJ_2F4

    .section .text.MIDIREAD_OBJ_204,"ax",@progbits
    .globl MIDIREAD_OBJ_204
    .type MIDIREAD_OBJ_204, @function
    .ent MIDIREAD_OBJ_204
MIDIREAD_OBJ_204:
    j       sym_80030e94
    sw      $v1,8($s0)
    .end MIDIREAD_OBJ_204
    .size MIDIREAD_OBJ_204, . - MIDIREAD_OBJ_204

    .section .text.MIDIREAD_OBJ_5F8,"ax",@progbits
    .globl MIDIREAD_OBJ_5F8
    .type MIDIREAD_OBJ_5F8, @function
    .ent MIDIREAD_OBJ_5F8
MIDIREAD_OBJ_5F8:
    jalr    $v0
    addu    $a3, $s4, $zero
    j       sym_80031234
    addu    $v0, $s5, $zero
    .end MIDIREAD_OBJ_5F8
    .size MIDIREAD_OBJ_5F8, . - MIDIREAD_OBJ_5F8

    .section .text.MIDIREAD_OBJ_6BC,"ax",@progbits
    .globl MIDIREAD_OBJ_6BC
    .type MIDIREAD_OBJ_6BC, @function
    .ent MIDIREAD_OBJ_6BC
MIDIREAD_OBJ_6BC:
    jalr    $v0
    nop
    addu    $v0, $s5, $zero
    .end MIDIREAD_OBJ_6BC
    .size MIDIREAD_OBJ_6BC, . - MIDIREAD_OBJ_6BC

    .section .text.SSTICK_OBJ_C8,"ax",@progbits
    .globl SSTICK_OBJ_C8
    .type SSTICK_OBJ_C8, @function
    .ent SSTICK_OBJ_C8
SSTICK_OBJ_C8:
    li      $v0,120
    lui     $at,0x800e
    j       sym_80031ab4
    sw      $v0,16716($at)
    .end SSTICK_OBJ_C8
    .size SSTICK_OBJ_C8, . - SSTICK_OBJ_C8

    .section .text.SSTICK_OBJ_D8,"ax",@progbits
    .globl SSTICK_OBJ_D8
    .type SSTICK_OBJ_D8, @function
    .ent SSTICK_OBJ_D8
SSTICK_OBJ_D8:
    li      $v0,240
    lui     $at,0x800e
    j       sym_80031ab4
    sw      $v0,16716($at)
    .end SSTICK_OBJ_D8
    .size SSTICK_OBJ_D8, . - SSTICK_OBJ_D8

    .section .text.SSTICK_OBJ_124,"ax",@progbits
    .globl SSTICK_OBJ_124
    .type SSTICK_OBJ_124, @function
    .ent SSTICK_OBJ_124
SSTICK_OBJ_124:
    lui     $at,0x800e
    j       sym_80031ab4
    sw      $v0,16716($at)
    .end SSTICK_OBJ_124
    .size SSTICK_OBJ_124, . - SSTICK_OBJ_124

    .section .text.SSTICK_OBJ_138,"ax",@progbits
    .globl SSTICK_OBJ_138
    .type SSTICK_OBJ_138, @function
    .ent SSTICK_OBJ_138
SSTICK_OBJ_138:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end SSTICK_OBJ_138
    .size SSTICK_OBJ_138, . - SSTICK_OBJ_138

    .section .text.TEMPO_OBJ_124,"ax",@progbits
    .globl TEMPO_OBJ_124
    .type TEMPO_OBJ_124, @function
    .ent TEMPO_OBJ_124
TEMPO_OBJ_124:
    beqz    $v0, .L_80031bfc
    nop
    sw      $t0,148($a3)
.L_80031bfc:
    .end TEMPO_OBJ_124
    .size TEMPO_OBJ_124, . - TEMPO_OBJ_124

    .section .text.UT_KEYV_OBJ_31C,"ax",@progbits
    .globl UT_KEYV_OBJ_31C
    .type UT_KEYV_OBJ_31C, @function
    .ent UT_KEYV_OBJ_31C
UT_KEYV_OBJ_31C:
    lui     $at,0x800e
    sw      $zero,16708($at)
    sll     $v0,$s2,0x10
    sra     $v0,$v0,0x10
    .end UT_KEYV_OBJ_31C
    .size UT_KEYV_OBJ_31C, . - UT_KEYV_OBJ_31C

    .section .text.UT_KEYV_OBJ_3C0,"ax",@progbits
    .globl UT_KEYV_OBJ_3C0
    .type UT_KEYV_OBJ_3C0, @function
    .ent UT_KEYV_OBJ_3C0
UT_KEYV_OBJ_3C0:
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    nop
    .end UT_KEYV_OBJ_3C0
    .size UT_KEYV_OBJ_3C0, . - UT_KEYV_OBJ_3C0

    .section .text.S_SRMP_OBJ_158,"ax",@progbits
    .globl S_SRMP_OBJ_158
    .type S_SRMP_OBJ_158, @function
    .ent S_SRMP_OBJ_158
S_SRMP_OBJ_158:
    lui     $v0,0x800d
    addiu   $v0,$v0,27652
    sw      $zero,0($v0)
    sw      $zero,-4($v0)
    .end S_SRMP_OBJ_158
    .size S_SRMP_OBJ_158, . - S_SRMP_OBJ_158

    .section .text.UT_REV_OBJ_8C,"ax",@progbits
    .globl UT_REV_OBJ_8C
    .type UT_REV_OBJ_8C, @function
    .ent UT_REV_OBJ_8C
UT_REV_OBJ_8C:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end UT_REV_OBJ_8C
    .size UT_REV_OBJ_8C, . - UT_REV_OBJ_8C

    .section .text.SsUtGetReverbType,"ax",@progbits
    .globl SsUtGetReverbType
    .type SsUtGetReverbType, @function
    .ent SsUtGetReverbType
SsUtGetReverbType:
    lui     $v0,0x800e
    lh      $v0,20772($v0)
    jr      $ra
    nop
    .end SsUtGetReverbType
    .size SsUtGetReverbType, . - SsUtGetReverbType

    .section .text.VM_N2P_OBJ_1CC,"ax",@progbits
    .globl VM_N2P_OBJ_1CC
    .type VM_N2P_OBJ_1CC, @function
    .ent VM_N2P_OBJ_1CC
VM_N2P_OBJ_1CC:
    jr      $ra
    andi    $v0,$a1,0xffff
    .end VM_N2P_OBJ_1CC
    .size VM_N2P_OBJ_1CC, . - VM_N2P_OBJ_1CC

    .section .text.VM_VSU_OBJ_B8,"ax",@progbits
    .globl VM_VSU_OBJ_B8
    .type VM_VSU_OBJ_B8, @function
    .ent VM_VSU_OBJ_B8
VM_VSU_OBJ_B8:
    jr      $ra
    nop
    .end VM_VSU_OBJ_B8
    .size VM_VSU_OBJ_B8, . - VM_VSU_OBJ_B8

    .section .text.VS_SRV_OBJ_28,"ax",@progbits
    .globl VS_SRV_OBJ_28
    .type VS_SRV_OBJ_28, @function
    .ent VS_SRV_OBJ_28
VS_SRV_OBJ_28:
    jr      $ra
    nop
    .end VS_SRV_OBJ_28
    .size VS_SRV_OBJ_28, . - VS_SRV_OBJ_28

    .section .text.VS_VH_OBJ_68,"ax",@progbits
    .globl VS_VH_OBJ_68
    .type VS_VH_OBJ_68, @function
    .ent VS_VH_OBJ_68
VS_VH_OBJ_68:
    jr      $ra
    addu    $v0, $a1, $zero
    .end VS_VH_OBJ_68
    .size VS_VH_OBJ_68, . - VS_VH_OBJ_68

    .section .text.VS_VTBP_OBJ_DC,"ax",@progbits
    .globl VS_VTBP_OBJ_DC
    .type VS_VTBP_OBJ_DC, @function
    .ent VS_VTBP_OBJ_DC
VS_VTBP_OBJ_DC:
    jal     sym_800335dc
    nop
    j       sym_80035630
    li      $v0,-1
    .end VS_VTBP_OBJ_DC
    .size VS_VTBP_OBJ_DC, . - VS_VTBP_OBJ_DC

    .section .text.S_ITC_OBJ_88,"ax",@progbits
    .globl S_ITC_OBJ_88
    .type S_ITC_OBJ_88, @function
    .ent S_ITC_OBJ_88
S_ITC_OBJ_88:
    lui     $at,0x800d
    sw      $v0,27544($at)
    .end S_ITC_OBJ_88
    .size S_ITC_OBJ_88, . - S_ITC_OBJ_88

    .section .text.VSYNC_OBJ_200,"ax",@progbits
    .globl VSYNC_OBJ_200
    .type VSYNC_OBJ_200, @function
    .ent VSYNC_OBJ_200
VSYNC_OBJ_200:
    lw      $ra,24($sp)
    addiu   $sp,$sp,32
    jr      $ra
    nop
    .end VSYNC_OBJ_200
    .size VSYNC_OBJ_200, . - VSYNC_OBJ_200

    .section .text.CheckCallback,"ax",@progbits
    .globl CheckCallback
    .type CheckCallback, @function
    .ent CheckCallback
CheckCallback:
    lui     $v0,0x800d
    lhu     $v0,30294($v0)
    jr      $ra
    nop
    .end CheckCallback
    .size CheckCallback, . - CheckCallback

    .section .text.INTR_OBJ_68C,"ax",@progbits
    .globl INTR_OBJ_68C
    .type INTR_OBJ_68C, @function
    .ent INTR_OBJ_68C
INTR_OBJ_68C:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end INTR_OBJ_68C
    .size INTR_OBJ_68C, . - INTR_OBJ_68C

    .section .text.INTR_DMA_OBJ_270,"ax",@progbits
    .globl INTR_DMA_OBJ_270
    .type INTR_DMA_OBJ_270, @function
    .ent INTR_DMA_OBJ_270
INTR_DMA_OBJ_270:
    jr      $ra
    nop
    .end INTR_DMA_OBJ_270
    .size INTR_DMA_OBJ_270, . - INTR_DMA_OBJ_270

    .section .text.GS_122_OBJ_DC,"ax",@progbits
    .globl GS_122_OBJ_DC
    .type GS_122_OBJ_DC, @function
    .ent GS_122_OBJ_DC
GS_122_OBJ_DC:
    jr      $ra
    nop
    .end GS_122_OBJ_DC
    .size GS_122_OBJ_DC, . - GS_122_OBJ_DC

    .section .text.GS_123_OBJ_C0,"ax",@progbits
    .globl GS_123_OBJ_C0
    .type GS_123_OBJ_C0, @function
    .ent GS_123_OBJ_C0
GS_123_OBJ_C0:
    jr      $ra
    nop
    .end GS_123_OBJ_C0
    .size GS_123_OBJ_C0, . - GS_123_OBJ_C0

    .section .text.SYS_OBJ_4F0,"ax",@progbits
    .globl SYS_OBJ_4F0
    .type SYS_OBJ_4F0, @function
    .ent SYS_OBJ_4F0
SYS_OBJ_4F0:
    lw      $ra,28($sp)
    lw      $s0,24($sp)
    jr      $ra
    addiu   $sp,$sp,32
    .end SYS_OBJ_4F0
    .size SYS_OBJ_4F0, . - SYS_OBJ_4F0

    .section .text.SYS_OBJ_1814,"ax",@progbits
    .globl SYS_OBJ_1814
    .type SYS_OBJ_1814, @function
    .ent SYS_OBJ_1814
SYS_OBJ_1814:
    jr      $ra
    addiu   $sp,$sp,16
    .end SYS_OBJ_1814
    .size SYS_OBJ_1814, . - SYS_OBJ_1814

    .section .text.SYS_OBJ_28A0,"ax",@progbits
    .globl SYS_OBJ_28A0
    .type SYS_OBJ_28A0, @function
    .ent SYS_OBJ_28A0
SYS_OBJ_28A0:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end SYS_OBJ_28A0
    .size SYS_OBJ_28A0, . - SYS_OBJ_28A0

    .section .text.SYS_OBJ_2A18,"ax",@progbits
    .globl SYS_OBJ_2A18
    .type SYS_OBJ_2A18, @function
    .ent SYS_OBJ_2A18
SYS_OBJ_2A18:
    lw      $ra,24($sp)
    addiu   $sp,$sp,32
    jr      $ra
    nop
    .end SYS_OBJ_2A18
    .size SYS_OBJ_2A18, . - SYS_OBJ_2A18

    .section .text.SYS_OBJ_2AC0,"ax",@progbits
    .globl SYS_OBJ_2AC0
    .type SYS_OBJ_2AC0, @function
    .ent SYS_OBJ_2AC0
SYS_OBJ_2AC0:
    jr      $ra
    nop
    .end SYS_OBJ_2AC0
    .size SYS_OBJ_2AC0, . - SYS_OBJ_2AC0

    .section .text.P41_OBJ_8C,"ax",@progbits
    .globl P41_OBJ_8C
    .type P41_OBJ_8C, @function
    .ent P41_OBJ_8C
P41_OBJ_8C:
    jr      $ra
    nop
    .end P41_OBJ_8C
    .size P41_OBJ_8C, . - P41_OBJ_8C

    .section .text.COUNTER_OBJ_94,"ax",@progbits
    .globl COUNTER_OBJ_94
    .type COUNTER_OBJ_94, @function
    .ent COUNTER_OBJ_94
COUNTER_OBJ_94:
    jr      $ra
    nop
    .end COUNTER_OBJ_94
    .size COUNTER_OBJ_94, . - COUNTER_OBJ_94

    .section .text.COUNTER_OBJ_CC,"ax",@progbits
    .globl COUNTER_OBJ_CC
    .type COUNTER_OBJ_CC, @function
    .ent COUNTER_OBJ_CC
COUNTER_OBJ_CC:
    jr      $ra
    nop
    .end COUNTER_OBJ_CC
    .size COUNTER_OBJ_CC, . - COUNTER_OBJ_CC

    .section .text.COUNTER_OBJ_164,"ax",@progbits
    .globl COUNTER_OBJ_164
    .type COUNTER_OBJ_164, @function
    .ent COUNTER_OBJ_164
COUNTER_OBJ_164:
    jr      $ra
    nop
    .end COUNTER_OBJ_164
    .size COUNTER_OBJ_164, . - COUNTER_OBJ_164

    .section .text.FIRST_OBJ_174,"ax",@progbits
    .globl FIRST_OBJ_174
    .type FIRST_OBJ_174, @function
    .ent FIRST_OBJ_174
FIRST_OBJ_174:
    addu    $a0, $s2, $zero
    jal     sym_8003c0c8
    addu    $a1, $s3, $zero
    .end FIRST_OBJ_174
    .size FIRST_OBJ_174, . - FIRST_OBJ_174

    .section .text.PADENTRY_OBJ_A4,"ax",@progbits
    .globl PADENTRY_OBJ_A4
    .type PADENTRY_OBJ_A4, @function
    .ent PADENTRY_OBJ_A4
PADENTRY_OBJ_A4:
    jr      $ra
    nop
    .end PADENTRY_OBJ_A4
    .size PADENTRY_OBJ_A4, . - PADENTRY_OBJ_A4

    .section .text.PADENTRY_OBJ_168,"ax",@progbits
    .globl PADENTRY_OBJ_168
    .type PADENTRY_OBJ_168, @function
    .ent PADENTRY_OBJ_168
PADENTRY_OBJ_168:
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    nop
    .end PADENTRY_OBJ_168
    .size PADENTRY_OBJ_168, . - PADENTRY_OBJ_168

    .section .text.PADENTRY_OBJ_2F0,"ax",@progbits
    .globl PADENTRY_OBJ_2F0
    .type PADENTRY_OBJ_2F0, @function
    .ent PADENTRY_OBJ_2F0
PADENTRY_OBJ_2F0:
    lbu     $v0,0($v1)
    j       sym_8003c878
    nop
    .end PADENTRY_OBJ_2F0
    .size PADENTRY_OBJ_2F0, . - PADENTRY_OBJ_2F0

    .section .text.PADENTRY_OBJ_2FC,"ax",@progbits
    .globl PADENTRY_OBJ_2FC
    .type PADENTRY_OBJ_2FC, @function
    .ent PADENTRY_OBJ_2FC
PADENTRY_OBJ_2FC:
    lbu     $v0,1($v1)
    j       sym_8003c878
    nop
    .end PADENTRY_OBJ_2FC
    .size PADENTRY_OBJ_2FC, . - PADENTRY_OBJ_2FC

    .section .text.PADENTRY_OBJ_308,"ax",@progbits
    .globl PADENTRY_OBJ_308
    .type PADENTRY_OBJ_308, @function
    .ent PADENTRY_OBJ_308
PADENTRY_OBJ_308:
    lbu     $v0,2($v1)
    j       sym_8003c878
    nop
    .end PADENTRY_OBJ_308
    .size PADENTRY_OBJ_308, . - PADENTRY_OBJ_308

    .section .text.PADENTRY_OBJ_314,"ax",@progbits
    .globl PADENTRY_OBJ_314
    .type PADENTRY_OBJ_314, @function
    .ent PADENTRY_OBJ_314
PADENTRY_OBJ_314:
    lbu     $v0,3($v1)
    j       sym_8003c878
    nop
    .end PADENTRY_OBJ_314
    .size PADENTRY_OBJ_314, . - PADENTRY_OBJ_314

    .section .text.PADENTRY_OBJ_320,"ax",@progbits
    .globl PADENTRY_OBJ_320
    .type PADENTRY_OBJ_320, @function
    .ent PADENTRY_OBJ_320
PADENTRY_OBJ_320:
    lbu     $v0,4($v1)
    j       sym_8003c878
    nop
    .end PADENTRY_OBJ_320
    .size PADENTRY_OBJ_320, . - PADENTRY_OBJ_320

    .section .text.PADMAIN_OBJ_32C,"ax",@progbits
    .globl PADMAIN_OBJ_32C
    .type PADMAIN_OBJ_32C, @function
    .ent PADMAIN_OBJ_32C
PADMAIN_OBJ_32C:
    lw      $ra,16($sp)
    addu    $v0, $zero, $zero
    jr      $ra
    addiu   $sp,$sp,24
    .end PADMAIN_OBJ_32C
    .size PADMAIN_OBJ_32C, . - PADMAIN_OBJ_32C

    .section .text.PADMAIN_OBJ_874,"ax",@progbits
    .globl PADMAIN_OBJ_874
    .type PADMAIN_OBJ_874, @function
    .ent PADMAIN_OBJ_874
PADMAIN_OBJ_874:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end PADMAIN_OBJ_874
    .size PADMAIN_OBJ_874, . - PADMAIN_OBJ_874

    .section .text.PADCMD_OBJ_90,"ax",@progbits
    .globl PADCMD_OBJ_90
    .type PADCMD_OBJ_90, @function
    .ent PADCMD_OBJ_90
PADCMD_OBJ_90:
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    nop
    .end PADCMD_OBJ_90
    .size PADCMD_OBJ_90, . - PADCMD_OBJ_90

    .section .text.PADCMD_OBJ_1F8,"ax",@progbits
    .globl PADCMD_OBJ_1F8
    .type PADCMD_OBJ_1F8, @function
    .ent PADCMD_OBJ_1F8
PADCMD_OBJ_1F8:
    j       sym_8003dad8
    addu    $v0, $zero, $zero
    .end PADCMD_OBJ_1F8
    .size PADCMD_OBJ_1F8, . - PADCMD_OBJ_1F8

    .section .text.PADCMD_OBJ_300,"ax",@progbits
    .globl PADCMD_OBJ_300
    .type PADCMD_OBJ_300, @function
    .ent PADCMD_OBJ_300
PADCMD_OBJ_300:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end PADCMD_OBJ_300
    .size PADCMD_OBJ_300, . - PADCMD_OBJ_300

    .section .text.PADCMD_OBJ_4B4,"ax",@progbits
    .globl PADCMD_OBJ_4B4
    .type PADCMD_OBJ_4B4, @function
    .ent PADCMD_OBJ_4B4
PADCMD_OBJ_4B4:
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    nop
    .end PADCMD_OBJ_4B4
    .size PADCMD_OBJ_4B4, . - PADCMD_OBJ_4B4

    .section .text.PADCMD_OBJ_578,"ax",@progbits
    .globl PADCMD_OBJ_578
    .type PADCMD_OBJ_578, @function
    .ent PADCMD_OBJ_578
PADCMD_OBJ_578:
    j       sym_8003e08c
    addu    $v0, $zero, $zero
    .end PADCMD_OBJ_578
    .size PADCMD_OBJ_578, . - PADCMD_OBJ_578

    .section .text.PADCMD_OBJ_8B4,"ax",@progbits
    .globl PADCMD_OBJ_8B4
    .type PADCMD_OBJ_8B4, @function
    .ent PADCMD_OBJ_8B4
PADCMD_OBJ_8B4:
    jr      $ra
    nop
    .end PADCMD_OBJ_8B4
    .size PADCMD_OBJ_8B4, . - PADCMD_OBJ_8B4

    .section .text.PADCMD_OBJ_AEC,"ax",@progbits
    .globl PADCMD_OBJ_AEC
    .type PADCMD_OBJ_AEC, @function
    .ent PADCMD_OBJ_AEC
PADCMD_OBJ_AEC:
    jr      $ra
    nop
    .end PADCMD_OBJ_AEC
    .size PADCMD_OBJ_AEC, . - PADCMD_OBJ_AEC

    .section .text.PADCMD_OBJ_B44,"ax",@progbits
    .globl PADCMD_OBJ_B44
    .type PADCMD_OBJ_B44, @function
    .ent PADCMD_OBJ_B44
PADCMD_OBJ_B44:
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    nop
    .end PADCMD_OBJ_B44
    .size PADCMD_OBJ_B44, . - PADCMD_OBJ_B44

    .section .text.PADIF_OBJ_4A8,"ax",@progbits
    .globl PADIF_OBJ_4A8
    .type PADIF_OBJ_4A8, @function
    .ent PADIF_OBJ_4A8
PADIF_OBJ_4A8:
    sw      $v0,0($s2)
    addu    $a0, $s1, $zero
    .end PADIF_OBJ_4A8
    .size PADIF_OBJ_4A8, . - PADIF_OBJ_4A8

    .section .text.PADPORTD_OBJ_2BC,"ax",@progbits
    .globl PADPORTD_OBJ_2BC
    .type PADPORTD_OBJ_2BC, @function
    .ent PADPORTD_OBJ_2BC
PADPORTD_OBJ_2BC:
    lbu     $v0,55($a0)
    sb      $zero,55($a0)
    jr      $ra
    sb      $v0,56($a0)
    .end PADPORTD_OBJ_2BC
    .size PADPORTD_OBJ_2BC, . - PADPORTD_OBJ_2BC

    .section .text.PADPORTD_OBJ_330,"ax",@progbits
    .globl PADPORTD_OBJ_330
    .type PADPORTD_OBJ_330, @function
    .ent PADPORTD_OBJ_330
PADPORTD_OBJ_330:
    lbu     $v0,0($v0)
    j       sym_8003ed88
    nop
    .end PADPORTD_OBJ_330
    .size PADPORTD_OBJ_330, . - PADPORTD_OBJ_330

    .section .text.PADPORTD_OBJ_380,"ax",@progbits
    .globl PADPORTD_OBJ_380
    .type PADPORTD_OBJ_380, @function
    .ent PADPORTD_OBJ_380
PADPORTD_OBJ_380:
    jr      $ra
    nop
    .end PADPORTD_OBJ_380
    .size PADPORTD_OBJ_380, . - PADPORTD_OBJ_380

    .section .text.PADPORTD_OBJ_5F4,"ax",@progbits
    .globl PADPORTD_OBJ_5F4
    .type PADPORTD_OBJ_5F4, @function
    .ent PADPORTD_OBJ_5F4
PADPORTD_OBJ_5F4:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end PADPORTD_OBJ_5F4
    .size PADPORTD_OBJ_5F4, . - PADPORTD_OBJ_5F4

    .section .text.PADSEQD_OBJ_134,"ax",@progbits
    .globl PADSEQD_OBJ_134
    .type PADSEQD_OBJ_134, @function
    .ent PADSEQD_OBJ_134
PADSEQD_OBJ_134:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end PADSEQD_OBJ_134
    .size PADSEQD_OBJ_134, . - PADSEQD_OBJ_134

    .section .text.PADSEQD_OBJ_34C,"ax",@progbits
    .globl PADSEQD_OBJ_34C
    .type PADSEQD_OBJ_34C, @function
    .ent PADSEQD_OBJ_34C
PADSEQD_OBJ_34C:
    addiu   $v0,$v0,1
    j       sym_8003f400
    sb      $v0,70($s0)
    .end PADSEQD_OBJ_34C
    .size PADSEQD_OBJ_34C, . - PADSEQD_OBJ_34C

    .section .text.PADSEQD_OBJ_388,"ax",@progbits
    .globl PADSEQD_OBJ_388
    .type PADSEQD_OBJ_388, @function
    .ent PADSEQD_OBJ_388
PADSEQD_OBJ_388:
    lbu     $v1,70($s0)
    nop
    addu    $v1,$v1,$v0
    sb      $v1,70($s0)
    .end PADSEQD_OBJ_388
    .size PADSEQD_OBJ_388, . - PADSEQD_OBJ_388

    .section .text.PADSEQD_OBJ_398,"ax",@progbits
    .globl PADSEQD_OBJ_398
    .type PADSEQD_OBJ_398, @function
    .ent PADSEQD_OBJ_398
PADSEQD_OBJ_398:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end PADSEQD_OBJ_398
    .size PADSEQD_OBJ_398, . - PADSEQD_OBJ_398

    .section .text.PADSEQD_OBJ_478,"ax",@progbits
    .globl PADSEQD_OBJ_478
    .type PADSEQD_OBJ_478, @function
    .ent PADSEQD_OBJ_478
PADSEQD_OBJ_478:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end PADSEQD_OBJ_478
    .size PADSEQD_OBJ_478, . - PADSEQD_OBJ_478

    .section .text.WAITRC2_OBJ_B4,"ax",@progbits
    .globl WAITRC2_OBJ_B4
    .type WAITRC2_OBJ_B4, @function
    .ent WAITRC2_OBJ_B4
WAITRC2_OBJ_B4:
    sltu    $v0,$v0,$v1
    jr      $ra
    xori    $v0,$v0,0x1
    .end WAITRC2_OBJ_B4
    .size WAITRC2_OBJ_B4, . - WAITRC2_OBJ_B4

    .section .text.EVENT_OBJ_80,"ax",@progbits
    .globl EVENT_OBJ_80
    .type EVENT_OBJ_80, @function
    .ent EVENT_OBJ_80
EVENT_OBJ_80:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end EVENT_OBJ_80
    .size EVENT_OBJ_80, . - EVENT_OBJ_80

    .section .text.EVENT_OBJ_BC,"ax",@progbits
    .globl EVENT_OBJ_BC
    .type EVENT_OBJ_BC, @function
    .ent EVENT_OBJ_BC
EVENT_OBJ_BC:
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    nop
    .end EVENT_OBJ_BC
    .size EVENT_OBJ_BC, . - EVENT_OBJ_BC

    .section .text.SYS_OBJ_98,"ax",@progbits
    .globl SYS_OBJ_98
    .type SYS_OBJ_98, @function
    .ent SYS_OBJ_98
SYS_OBJ_98:
    lw      $ra,20($sp)
    lw      $s0,16($sp)
    jr      $ra
    addiu   $sp,$sp,24
    .end SYS_OBJ_98
    .size SYS_OBJ_98, . - SYS_OBJ_98

    .section .text.SYS_OBJ_108,"ax",@progbits
    .globl SYS_OBJ_108
    .type SYS_OBJ_108, @function
    .ent SYS_OBJ_108
SYS_OBJ_108:
    jr      $ra
    nop
    .end SYS_OBJ_108
    .size SYS_OBJ_108, . - SYS_OBJ_108

    .section .text.SYS_OBJ_13C,"ax",@progbits
    .globl SYS_OBJ_13C
    .type SYS_OBJ_13C, @function
    .ent SYS_OBJ_13C
SYS_OBJ_13C:
    jr      $ra
    nop
    .end SYS_OBJ_13C
    .size SYS_OBJ_13C, . - SYS_OBJ_13C

    .section .text.BIOS_OBJ_1318,"ax",@progbits
    .globl BIOS_OBJ_1318
    .type BIOS_OBJ_1318, @function
    .ent BIOS_OBJ_1318
BIOS_OBJ_1318:
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    nop
    .end BIOS_OBJ_1318
    .size BIOS_OBJ_1318, . - BIOS_OBJ_1318

    .section .text.GEO_00_OBJ_2C,"ax",@progbits
    .globl GEO_00_OBJ_2C
    .type GEO_00_OBJ_2C, @function
    .ent GEO_00_OBJ_2C
GEO_00_OBJ_2C:
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    nop
    .end GEO_00_OBJ_2C
    .size GEO_00_OBJ_2C, . - GEO_00_OBJ_2C

    .section .text.GEO_00_OBJ_C4,"ax",@progbits
    .globl GEO_00_OBJ_C4
    .type GEO_00_OBJ_C4, @function
    .ent GEO_00_OBJ_C4
GEO_00_OBJ_C4:
    jr      $ra
    nop
    .end GEO_00_OBJ_C4
    .size GEO_00_OBJ_C4, . - GEO_00_OBJ_C4

    .section .text.GEO_01_OBJ_98,"ax",@progbits
    .globl GEO_01_OBJ_98
    .type GEO_01_OBJ_98, @function
    .ent GEO_01_OBJ_98
GEO_01_OBJ_98:
    jr      $ra
    nop
    .end GEO_01_OBJ_98
    .size GEO_01_OBJ_98, . - GEO_01_OBJ_98

    .section .text.P36_OBJ_30,"ax",@progbits
    .globl P36_OBJ_30
    .type P36_OBJ_30, @function
    .ent P36_OBJ_30
P36_OBJ_30:
    jr      $ra
    nop
    .end P36_OBJ_30
    .size P36_OBJ_30, . - P36_OBJ_30

    .section .text.GS_108_OBJ_60,"ax",@progbits
    .globl GS_108_OBJ_60
    .type GS_108_OBJ_60, @function
    .ent GS_108_OBJ_60
GS_108_OBJ_60:
    lui     $a0,0x8002
    jal     sym_8003bae8
    addiu   $a0,$a0,-16592
    .end GS_108_OBJ_60
    .size GS_108_OBJ_60, . - GS_108_OBJ_60

    .section .text.GS_108_OBJ_6C,"ax",@progbits
    .globl GS_108_OBJ_6C
    .type GS_108_OBJ_6C, @function
    .ent GS_108_OBJ_6C
GS_108_OBJ_6C:
    lw      $ra,16($sp)
    addiu   $sp,$sp,24
    jr      $ra
    nop
    .end GS_108_OBJ_6C
    .size GS_108_OBJ_6C, . - GS_108_OBJ_6C

    .section .text.VectorNormalSS,"ax",@progbits
    .globl VectorNormalSS
    .type VectorNormalSS, @function
    .ent VectorNormalSS
VectorNormalSS:
    lh      $t0,0($a0)
    lh      $t1,2($a0)
    lh      $t2,4($a0)
    .end VectorNormalSS
    .size VectorNormalSS, . - VectorNormalSS

    .section .text.SPRINTF_OBJ_2C4,"ax",@progbits
    .globl SPRINTF_OBJ_2C4
    .type SPRINTF_OBJ_2C4, @function
    .ent SPRINTF_OBJ_2C4
SPRINTF_OBJ_2C4:
    lw      $v0,528($sp)
    j       sym_800616d8
    ori     $v0,$v0,0x20
    .end SPRINTF_OBJ_2C4
    .size SPRINTF_OBJ_2C4, . - SPRINTF_OBJ_2C4

    .section .text.SPRINTF_OBJ_2D0,"ax",@progbits
    .globl SPRINTF_OBJ_2D0
    .type SPRINTF_OBJ_2D0, @function
    .ent SPRINTF_OBJ_2D0
SPRINTF_OBJ_2D0:
    lw      $v0,528($sp)
    j       sym_800616d8
    ori     $v0,$v0,0x40
    .end SPRINTF_OBJ_2D0
    .size SPRINTF_OBJ_2D0, . - SPRINTF_OBJ_2D0

    .section .text.SPRINTF_OBJ_2DC,"ax",@progbits
    .globl SPRINTF_OBJ_2DC
    .type SPRINTF_OBJ_2DC, @function
    .ent SPRINTF_OBJ_2DC
SPRINTF_OBJ_2DC:
    lw      $v0,528($sp)
    nop
    ori     $v0,$v0,0x80
    .end SPRINTF_OBJ_2DC
    .size SPRINTF_OBJ_2DC, . - SPRINTF_OBJ_2DC

    .section .text.SPRINTF_OBJ_594,"ax",@progbits
    .globl SPRINTF_OBJ_594
    .type SPRINTF_OBJ_594, @function
    .ent SPRINTF_OBJ_594
SPRINTF_OBJ_594:
    lui     $a3,0x8002
    j       sym_80061998
    addiu   $a3,$a3,-15592
    .end SPRINTF_OBJ_594
    .size SPRINTF_OBJ_594, . - SPRINTF_OBJ_594

    .section .text.SPRINTF_OBJ_5A0,"ax",@progbits
    .globl SPRINTF_OBJ_5A0
    .type SPRINTF_OBJ_5A0, @function
    .ent SPRINTF_OBJ_5A0
SPRINTF_OBJ_5A0:
    lui     $a3,0x8002
    addiu   $a3,$a3,-15572
    .end SPRINTF_OBJ_5A0
    .size SPRINTF_OBJ_5A0, . - SPRINTF_OBJ_5A0

    .section .text.MEMMOVE_OBJ_64,"ax",@progbits
    .globl MEMMOVE_OBJ_64
    .type MEMMOVE_OBJ_64, @function
    .ent MEMMOVE_OBJ_64
MEMMOVE_OBJ_64:
    jr      $ra
    nop
    .end MEMMOVE_OBJ_64
    .size MEMMOVE_OBJ_64, . - MEMMOVE_OBJ_64

    .section .text.PRESET_OBJ_3B4,"ax",@progbits
    .globl PRESET_OBJ_3B4
    .type PRESET_OBJ_3B4, @function
    .ent PRESET_OBJ_3B4
PRESET_OBJ_3B4:
    sw      $v0,0($s0)
    j       sym_8007cddc
    addiu   $s0,$s0,20
    .end PRESET_OBJ_3B4
    .size PRESET_OBJ_3B4, . - PRESET_OBJ_3B4

    .section .text.PRESET_OBJ_748,"ax",@progbits
    .globl PRESET_OBJ_748
    .type PRESET_OBJ_748, @function
    .ent PRESET_OBJ_748
PRESET_OBJ_748:
    sw      $v0,0($s0)
    j       sym_8007cddc
    addiu   $s0,$s0,8
    .end PRESET_OBJ_748
    .size PRESET_OBJ_748, . - PRESET_OBJ_748

    .section .text.PRESET_OBJ_8C0,"ax",@progbits
    .globl PRESET_OBJ_8C0
    .type PRESET_OBJ_8C0, @function
    .ent PRESET_OBJ_8C0
PRESET_OBJ_8C0:
    sw      $v0,0($s0)
    j       sym_8007cddc
    addiu   $s0,$s0,4
    .end PRESET_OBJ_8C0
    .size PRESET_OBJ_8C0, . - PRESET_OBJ_8C0
