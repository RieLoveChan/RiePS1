#include "mode_control.h"

void __attribute__((section(".text.FUN_80023210")))
FUN_80023210(u16 newMode)
{
    DdrModeState *state = PTR_DAT_800ac8e8;

    state->mode = newMode;
    state->submode = 0;
    state->unknown_02c = 0;
    state->unknown_02e = 0;
}
