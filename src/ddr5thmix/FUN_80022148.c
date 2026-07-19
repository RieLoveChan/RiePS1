void __attribute__((section(".text.FUN_80022148")))
FUN_80022148(void)
{
    __asm__ volatile(
        ".set noreorder\n\t"
        "lui $v0,%hi(PTR_DAT_800ac8f0)\n\t"
        "lui $v1,%hi(DAT_800e2ae0)\n\t"
        "lw $a0,%lo(PTR_DAT_800ac8f0)($v0)\n\t"
        "addiu $v0,$v0,%lo(PTR_DAT_800ac8f0)\n\t"
        "sw $a0,%lo(DAT_800e2ae0)($v1)\n\t"
        "lw $v0,4($v0)\n\t"
        "addiu $v1,$v1,%lo(DAT_800e2ae0)\n\t"
        "jr $ra\n\t"
        "sw $v0,4($v1)\n\t"
        ".set reorder\n\t");
    __builtin_unreachable();
}
