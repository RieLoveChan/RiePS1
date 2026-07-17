typedef unsigned char u8;
typedef unsigned short u16;

typedef struct ModeState {
    u8 unknown_00[0x2a];
    u16 submode;
    u16 unknown_2c;
} ModeState;

extern ModeState *PTR_DAT_800ac8e8;

void __attribute__((section(".text.FUN_800231b0")))
FUN_800231b0(void)
{
    ModeState *state = PTR_DAT_800ac8e8;
    /* Preserve the original v1-pointer/v0-counter allocation without code. */
    __asm__("" : : : "$2");

    state->unknown_2c = 0;
    state->submode++;
}
