#ifndef DDR5THMIX_MODE_CONTROL_H
#define DDR5THMIX_MODE_CONTROL_H

typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

typedef struct DdrInputWord {
    u16 half[2];
} DdrInputWord;

typedef struct DdrModeState {
    u8 unknown_000[0x06];
    u8 unknown_006;
    u8 unknown_007[0x02];
    u8 loop_restart_flag;
    u8 unknown_00a;
    u8 unknown_00b;
    u16 unknown_00c;
    u16 unknown_00e;
    u16 unknown_010;
    u16 unknown_012;
    u8 unknown_014[0x03];
    u8 glyph_color;
    u8 unknown_018[0x04];
    u8 counter_01c;
    u8 counter_01d;
    u8 direction_01e;
    u8 direction_01f;
    u16 unknown_020;
    u16 countdown_022;
    u8 unknown_024[0x04];
    u16 mode;
    u16 submode;
    u16 menu_selection_index;
    u16 unknown_02e;
    u8 unknown_030[0x0f];
    u8 unknown_03f;
    u8 unknown_040;
    u8 unknown_041;
    u8 unknown_042;
    u8 unknown_043[0x02];
    u8 pad_valid_mask;
    u8 unknown_046[0x06];
    DdrInputWord pad1_previous;
    DdrInputWord pad1_held;
    DdrInputWord pad1_pressed;
    DdrInputWord pad1_released;
    DdrInputWord pad2_previous;
    DdrInputWord pad2_held;
    DdrInputWord pad2_pressed;
    DdrInputWord pad2_released;
    DdrInputWord aux1_previous;
    DdrInputWord aux1_held;
    DdrInputWord aux1_pressed;
    DdrInputWord aux1_released;
    DdrInputWord aux2_previous;
    DdrInputWord aux2_held;
    DdrInputWord aux2_pressed;
    DdrInputWord aux2_released;
    u8 unknown_08c[0x04];
    u8 counter_090;
    u8 direction_091;
    u8 unknown_092[0x1a];
    u16 unknown_0ac;
    u8 unknown_0ae[0x13];
    u8 derived_0c1;
    u8 unknown_0c2[0x32];
    u8 screen_range_flag;
    u8 unknown_0f5;
    u8 unknown_0f6;
    u8 unknown_0f7;
    u8 unknown_0f8[0x07];
    u8 termination_latch;
    u8 unknown_100;
    u8 unknown_101;
    u8 unknown_102[0x3e];
} DdrModeState;

typedef struct DdrSecondaryState {
    u8 unknown_000[0x04];
    u8 unknown_004;
    u8 unknown_005;
    u8 unknown_006;
    u8 unknown_007[0x4b];
    u8 unknown_052;
    u8 unknown_053[0x11];
    u8 unknown_064;
    u8 unknown_065;
    u8 unknown_066;
    u8 unknown_067[0x35];
    u8 unknown_09c;
    u8 unknown_09d;
    u8 unknown_09e;
    u8 unknown_09f;
    u8 unknown_0a0[0x0c];
    u8 unknown_0ac;
    u8 unknown_0ad;
    u8 unknown_0ae;
    u8 unknown_0af;
    u8 unknown_0b0[0x0b];
    u8 unknown_0bb;
} DdrSecondaryState;

#define DDR_STATIC_ASSERT(name, condition) typedef char name[(condition) ? 1 : -1]
DDR_STATIC_ASSERT(ddr_input_word_size, sizeof(DdrInputWord) == 0x04);
DDR_STATIC_ASSERT(ddr_input_word_alignment, __alignof__(DdrInputWord) == 0x02);
DDR_STATIC_ASSERT(ddr_mode_offset, __builtin_offsetof(DdrModeState, mode) == 0x28);
DDR_STATIC_ASSERT(ddr_mode_006_offset, __builtin_offsetof(DdrModeState, unknown_006) == 0x06);
DDR_STATIC_ASSERT(ddr_mode_00c_offset, __builtin_offsetof(DdrModeState, unknown_00c) == 0x0c);
DDR_STATIC_ASSERT(ddr_countdown_022_offset, __builtin_offsetof(DdrModeState, countdown_022) == 0x22);
DDR_STATIC_ASSERT(ddr_counter_01c_offset, __builtin_offsetof(DdrModeState, counter_01c) == 0x1c);
DDR_STATIC_ASSERT(ddr_unknown_020_offset, __builtin_offsetof(DdrModeState, unknown_020) == 0x20);
DDR_STATIC_ASSERT(ddr_submode_offset, __builtin_offsetof(DdrModeState, submode) == 0x2a);
DDR_STATIC_ASSERT(ddr_loop_restart_flag_offset, __builtin_offsetof(DdrModeState, loop_restart_flag) == 0x09);
DDR_STATIC_ASSERT(ddr_glyph_color_offset, __builtin_offsetof(DdrModeState, glyph_color) == 0x17);
DDR_STATIC_ASSERT(ddr_menu_selection_index_offset, __builtin_offsetof(DdrModeState, menu_selection_index) == 0x2c);
DDR_STATIC_ASSERT(ddr_unknown_02e_offset, __builtin_offsetof(DdrModeState, unknown_02e) == 0x2e);
DDR_STATIC_ASSERT(ddr_mode_0ac_offset, __builtin_offsetof(DdrModeState, unknown_0ac) == 0xac);
DDR_STATIC_ASSERT(ddr_pad_valid_mask_offset, __builtin_offsetof(DdrModeState, pad_valid_mask) == 0x45);
DDR_STATIC_ASSERT(ddr_pad1_previous_offset, __builtin_offsetof(DdrModeState, pad1_previous) == 0x4c);
DDR_STATIC_ASSERT(ddr_aux2_released_offset, __builtin_offsetof(DdrModeState, aux2_released) == 0x88);
DDR_STATIC_ASSERT(ddr_counter_090_offset, __builtin_offsetof(DdrModeState, counter_090) == 0x90);
DDR_STATIC_ASSERT(ddr_derived_0c1_offset, __builtin_offsetof(DdrModeState, derived_0c1) == 0xc1);
DDR_STATIC_ASSERT(ddr_screen_range_flag_offset, __builtin_offsetof(DdrModeState, screen_range_flag) == 0xf4);
DDR_STATIC_ASSERT(ddr_termination_latch_offset, __builtin_offsetof(DdrModeState, termination_latch) == 0xff);
DDR_STATIC_ASSERT(ddr_mode_state_size, sizeof(DdrModeState) == 0x140);
DDR_STATIC_ASSERT(ddr_secondary_052_offset, __builtin_offsetof(DdrSecondaryState, unknown_052) == 0x52);
DDR_STATIC_ASSERT(ddr_secondary_006_offset, __builtin_offsetof(DdrSecondaryState, unknown_006) == 0x06);
DDR_STATIC_ASSERT(ddr_secondary_064_offset, __builtin_offsetof(DdrSecondaryState, unknown_064) == 0x64);
DDR_STATIC_ASSERT(ddr_secondary_09c_offset, __builtin_offsetof(DdrSecondaryState, unknown_09c) == 0x9c);
DDR_STATIC_ASSERT(ddr_secondary_0ac_offset, __builtin_offsetof(DdrSecondaryState, unknown_0ac) == 0xac);
DDR_STATIC_ASSERT(ddr_secondary_066_offset, __builtin_offsetof(DdrSecondaryState, unknown_066) == 0x66);
DDR_STATIC_ASSERT(ddr_secondary_0bb_offset, __builtin_offsetof(DdrSecondaryState, unknown_0bb) == 0xbb);
DDR_STATIC_ASSERT(ddr_secondary_state_size, sizeof(DdrSecondaryState) == 0xbc);
#undef DDR_STATIC_ASSERT

extern DdrModeState *PTR_DAT_800ac8e8;
extern DdrSecondaryState *PTR_DAT_800ac8ec;
extern u32 DAT_800ac88c;
extern u32 DAT_800e2a60;

#endif
