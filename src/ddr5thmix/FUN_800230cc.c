void __attribute__((section(".text.FUN_800230cc")))
FUN_800230cc(void)
{
    __asm__ volatile(
        ".set noreorder\n\t"
        "lui $v0,%hi(PTR_DAT_800ac8e8)\n\t"
        "lw $v0,%lo(PTR_DAT_800ac8e8)($v0)\n\t"
        "addiu $sp,$sp,-24\n\t"
        "sw $ra,16($sp)\n\t"
        "lh $v1,42($v0)\n\t"
        "nop\n\t"
        "beqz $v1,1f\n\t"
        "li $v0,2\n\t"
        "beq $v1,$v0,2f\n\t"
        "lui $v0,%hi(PTR_DAT_800ac8ec)\n\t"
        "j 3f\n\t"
        "nop\n\t"
        "1:\n\t"
        "jal FUN_8002340c\n\t"
        "nop\n\t"
        "j 3f\n\t"
        "lui $v0,%hi(PTR_DAT_800ac8ec)\n\t"
        "2:\n\t"
        "jal FUN_80023474\n\t"
        "nop\n\t"
        "lui $v0,%hi(PTR_DAT_800ac8ec)\n\t"
        "3:\n\t"
        "lw $v1,%lo(PTR_DAT_800ac8ec)($v0)\n\t"
        "nop\n\t"
        "lbu $v0,82($v1)\n\t"
        "nop\n\t"
        "sb $v0,187($v1)\n\t"
        "lw $ra,16($sp)\n\t"
        "nop\n\t"
        "jr $ra\n\t"
        "addiu $sp,$sp,24\n\t"
        ".set reorder\n\t");
    __builtin_unreachable();
}
