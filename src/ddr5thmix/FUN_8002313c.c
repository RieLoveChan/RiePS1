typedef unsigned char u8;
typedef unsigned int u32;

typedef struct PrimaryState {
    u8 unknown_000[0xff];
    u8 termination_latch;
} PrimaryState;

typedef struct SecondaryState {
    u8 unknown_00[4];
    u8 unknown_04;
    u8 unknown_05[0x61];
    u8 unknown_66;
} SecondaryState;

extern PrimaryState *PTR_DAT_800ac8e8;
extern SecondaryState *PTR_DAT_800ac8ec;
extern u32 DAT_800e2a60;

void __attribute__((section(".text.FUN_8002313c")))
FUN_8002313c(void)
{
    register SecondaryState *state __asm__("$3") = PTR_DAT_800ac8ec;
    register u32 value __asm__("$2") = DAT_800e2a60;

    /* Match the observed first-pointer/value allocation without emitted code. */
    __asm__("" : "+r"(state), "+r"(value));
    state->unknown_66 = (u8)value;
    /* Preserve the observed global-pointer reload boundary. */
    __asm__ volatile("" ::: "memory");
    {
        register SecondaryState *nextState __asm__("$2") = PTR_DAT_800ac8ec;

        /* Keep the pointer in v0; GCC places li v1,1 in its load delay slot. */
        __asm__("" : : "r"(nextState));
        nextState->unknown_04 = 1;
    }
    /* Keep the termination-latch load after the secondary-state store. */
    __asm__ volatile("" ::: "memory");
    PTR_DAT_800ac8e8->termination_latch = 1;
}
