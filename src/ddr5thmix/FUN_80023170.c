#include "mode_control.h"

void __attribute__((section(".text.FUN_80023170")))
FUN_80023170(void)
{
    u8 *state = (u8 *)PTR_DAT_800ac8e8;

    /* Keep byte stores: the original does not exploit the pointer's alignment. */
    __asm__("" : "+r"(state));

    state[0xf7] = 0;
    state[0xf6] = 0;
    state[0x101] = 0;
    state[0x100] = 0;
}
