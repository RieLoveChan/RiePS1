#ifndef DDR5THMIX_INST_DEMO_OVERLAY_H
#define DDR5THMIX_INST_DEMO_OVERLAY_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

/*
 * DDR 5th Mix HOW TO PLAY Executable Overlay Header (inst-demo)
 * Base Address: 0x801e4000
 * Size: 0x2e58 (11,864 bytes)
 */

/* Main Overlay Entry Points */
void FUN_801e413c(int32_t param_1, char param_2); /* Init entry */
int32_t FUN_801e41e8(int32_t param_1);             /* Update entry (returns 1 when finished) */
void FUN_801e4284(int32_t param_1);               /* Exit entry */

#ifdef __cplusplus
}
#endif

#endif /* DDR5THMIX_INST_DEMO_OVERLAY_H */
