#ifndef SCREEN_SELECTOR_H
#define SCREEN_SELECTOR_H

#include <stdint.h>

/*
 * DDR 5th Mix Screen Selector Module
 * Flat 6-substate machine for game session screen routing.
 * Callback tables: Enter (0x800defe8), Update (0x800df000), Exit (0x800df018)
 */

#ifdef __cplusplus
extern "C" {
#endif

/* State Enter Callbacks */
void FUN_800756f0(void *ctx); /* State 0: STYLE SEL */
void FUN_800757e0(void *ctx); /* State 1: MODE SEL */
void FUN_80075840(void *ctx); /* State 2: CHARA SEL */
void FUN_800754b4(void *ctx); /* State 3: MUSIC SEL */
void FUN_80075a40(void *ctx); /* State 4: LINK START */
void FUN_80075ae0(void *ctx); /* State 5: terminal */

/* State Update Callbacks */
int32_t FUN_80075738(void *ctx); /* State 0: STYLE SEL */
int32_t FUN_80075818(void *ctx); /* State 1: MODE SEL */
int32_t FUN_80075894(void *ctx); /* State 2: CHARA SEL */
int32_t FUN_8007596c(void *ctx); /* State 3: MUSIC SEL */
int32_t FUN_80075a90(void *ctx); /* State 4: LINK START */
int32_t FUN_80075ae8(void *ctx); /* State 5: terminal */

/* State Exit Callbacks */
void FUN_80075258(void *ctx); /* State 0: STYLE SEL */
void FUN_80075838(void *ctx); /* State 1: MODE SEL */
void FUN_8007593c(void *ctx); /* State 2: CHARA SEL */
void FUN_80075a04(void *ctx); /* State 3: MUSIC SEL */
void FUN_80075ab8(void *ctx); /* State 4: LINK START */
void FUN_80075af0(void *ctx); /* State 5: terminal */

/* Next-State Router */
int32_t FUN_80075af8(int32_t state);

#ifdef __cplusplus
}
#endif

#endif /* SCREEN_SELECTOR_H */
