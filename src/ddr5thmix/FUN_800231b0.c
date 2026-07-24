#include "mode_control.h"

void __attribute__((section(".text.FUN_800231b0")))
FUN_800231b0(void)
{
    DdrModeState *state = PTR_DAT_800ac8e8;
    /* Preserve the original v1-pointer/v0-counter allocation without code. */
    __asm__("" : : : "$2");

    state->menu_selection_index = 0;
    state->submode++;
}
