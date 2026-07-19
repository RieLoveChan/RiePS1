#ifndef DDR5THMIX_MODE_CONTROL_H
#define DDR5THMIX_MODE_CONTROL_H

typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

typedef struct DdrModeState {
    u8 unknown_000[0x09];
    u8 unknown_009;
    u8 unknown_00a[0x0d];
    u8 unknown_017;
    u8 unknown_018[0x10];
    u16 mode;
    u16 submode;
    u16 unknown_02c;
    u16 unknown_02e;
    u8 unknown_030[0xc6];
    u8 unknown_0f6;
    u8 unknown_0f7;
    u8 unknown_0f8[0x07];
    u8 termination_latch;
    u8 unknown_100;
    u8 unknown_101;
} DdrModeState;

typedef struct DdrSecondaryState {
    u8 unknown_000[0x04];
    u8 unknown_004;
    u8 unknown_005;
    u8 unknown_006;
    u8 unknown_007[0x4b];
    u8 unknown_052;
    u8 unknown_053[0x13];
    u8 unknown_066;
    u8 unknown_067[0x54];
    u8 unknown_0bb;
} DdrSecondaryState;

#define DDR_STATIC_ASSERT(name, condition) typedef char name[(condition) ? 1 : -1]
DDR_STATIC_ASSERT(ddr_mode_offset, __builtin_offsetof(DdrModeState, mode) == 0x28);
DDR_STATIC_ASSERT(ddr_submode_offset, __builtin_offsetof(DdrModeState, submode) == 0x2a);
DDR_STATIC_ASSERT(ddr_unknown_02c_offset, __builtin_offsetof(DdrModeState, unknown_02c) == 0x2c);
DDR_STATIC_ASSERT(ddr_unknown_02e_offset, __builtin_offsetof(DdrModeState, unknown_02e) == 0x2e);
DDR_STATIC_ASSERT(ddr_termination_latch_offset, __builtin_offsetof(DdrModeState, termination_latch) == 0xff);
DDR_STATIC_ASSERT(ddr_mode_state_size, sizeof(DdrModeState) == 0x102);
DDR_STATIC_ASSERT(ddr_secondary_052_offset, __builtin_offsetof(DdrSecondaryState, unknown_052) == 0x52);
DDR_STATIC_ASSERT(ddr_secondary_006_offset, __builtin_offsetof(DdrSecondaryState, unknown_006) == 0x06);
DDR_STATIC_ASSERT(ddr_secondary_066_offset, __builtin_offsetof(DdrSecondaryState, unknown_066) == 0x66);
DDR_STATIC_ASSERT(ddr_secondary_0bb_offset, __builtin_offsetof(DdrSecondaryState, unknown_0bb) == 0xbb);
DDR_STATIC_ASSERT(ddr_secondary_state_size, sizeof(DdrSecondaryState) == 0xbc);
#undef DDR_STATIC_ASSERT

extern DdrModeState *PTR_DAT_800ac8e8;
extern DdrSecondaryState *PTR_DAT_800ac8ec;
extern u32 DAT_800ac88c;
extern u32 DAT_800e2a60;

#endif
