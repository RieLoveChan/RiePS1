#include "mode_control.h"

void __attribute__((section(".text.FUN_80023230")))
FUN_80023230(u16 newSubmode)
{
    DdrModeState *state = PTR_DAT_800ac8e8;

    state->submode = newSubmode;
    state->menu_selection_index = 0;
    state->unknown_02e = 0;
}
