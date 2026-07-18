typedef unsigned char u8;

typedef struct ModeState {
    u8 unknown_000[0xf6];
    u8 unknown_f6;
    u8 unknown_f7;
    u8 unknown_f8[8];
    u8 unknown_100;
    u8 unknown_101;
} ModeState;

extern ModeState *PTR_DAT_800ac8e8;

void __attribute__((section(".text.FUN_80023170")))
FUN_80023170(void)
{
    ModeState *state = PTR_DAT_800ac8e8;

    state->unknown_f7 = 0;
    state->unknown_f6 = 0;
    state->unknown_101 = 0;
    state->unknown_100 = 0;
}
