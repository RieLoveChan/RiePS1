---
type: Tool
title: DDR 5th Mix main executable link skeleton
description: Reproducible relocatable ELF build that places all manifest-backed reconstructed function sections at their original runtime addresses.
tags: [ps1, ddr5thmix, build, linker, byte-match]
timestamp: 2026-08-13T00:00:00-04:00
---

# Purpose

`Build-MainExecutableSkeleton.ps1` is the first integration step after
per-function byte matching. It compiles every unique source referenced by
`config/ddr5thmix/build.json`, retains each manifest-listed `.text.*` section,
and links those sections at their original runtime addresses into one
relocatable MIPS ELF.

This is a build skeleton, not a bootable PS-X EXE. It intentionally leaves
unresolved runtime/library symbols, data placement, PS-X EXE header fields,
BSS initialization, overlays, disc layout, and final asset packaging for later
stages.

# Reproduction

From the repository root, with the lawful executable retained locally only for
its manifest revision and the pinned MIPS toolchain installed:

```powershell
& .\tools\build\Build-MainExecutableSkeleton.ps1 `
  -ToolchainBin 'C:\Users\<user>\AppData\Roaming\mips\mips\bin'
```

Generated ELF, objects, linker script, and JSON summary remain under ignored
`build/ddr5thmix/main-skeleton/`.

# Evidence

At the 2026-08-13 working revision, the command completed with:

- 177 source files and 177 object files;
- 2,177 manifest functions;
- 492,164 selected function bytes;
- GCC 14.2.0, GNU binutils 2.43, target `mipsel-none-elf`;
- output `ddr5thmix-main-skeleton.elf` (900,188 bytes in the local generated
  artifact).

The output is relocatable and proves source aggregation, section retention,
and address-ordered linking only. It does not prove whole-executable identity
or runtime bootability.