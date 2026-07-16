typedef unsigned char u8;
typedef unsigned short u16;

typedef struct ModeState {
    u8 unknown_00[0x2a];
    u16 submode;
    u16 unknown_2c;
    u16 unknown_2e;
} ModeState;

extern ModeState *PTR_DAT_800ac8e8;

void __attribute__((section(".text.FUN_80023230")))
FUN_80023230(u16 newSubmode)
{
    ModeState *state = PTR_DAT_800ac8e8;

    state->submode = newSubmode;
    state->unknown_2c = 0;
    state->unknown_2e = 0;
}
