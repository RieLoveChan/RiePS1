---
type: Tool Inventory
title: Initial PS1 Decompilation and Recompilation Toolchain
description: A staged inventory of tools for disc extraction, analysis, building, and validation.
tags: [ps1, tools, decompilation, recompilation]
timestamp: 2026-07-12T00:00:00-04:00
---

# Recommended stack

| Stage | Tool | Use and caveat |
|---|---|---|
| Disc preservation | Redump-compatible dumper and hashes | Establish an immutable, revision-specific baseline from a lawfully owned disc. |
| Disc unpack/repack | `dumpsxiso` / `mkpsxiso` | Extract and reconstruct PS1 images while representing tracks, LBAs, pregaps, XA/DA, and dummy sectors. Test layout-sensitive games carefully. |
| Static analysis | Ghidra | MIPS disassembly, decompiler, types, symbols, references, scripting, and version tracking. The decompiler is analysis output, not ready-to-build source. |
| PS1 loading/signatures | `ghidra_psx_ldr` | Creates PS1 memory regions and can identify Psy-Q libraries through signatures; pin a compatible Ghidra/plugin version. |
| Dynamic analysis | PCSX-Redux | CPU/GPU debugging, breakpoints, traces, GDB server, Lua, logs, and direct PS-X EXE loading. CPU debugging generally requires disabling Dynarec. |
| Reimplementation build | PSn00bSDK or GNU MIPS cross-tools | Open-source SDK/toolchain for functional reconstruction and homebrew-style builds. It will not automatically reproduce a proprietary compiler's output. |
| Matching build | Identified original compiler lineage, assembler, linker, and library model | Needed when byte-identical objects are the goal. Do not redistribute proprietary tools; document reproducible lawful setup separately. |
| Binary comparison | `objdump`/`readelf`, `diff`, hashes, and project scripts | Compare sections, relocations, symbols, instructions, and final images. Generic decomp matching tools may require PS1-specific adaptation. |
| Runtime verification | PCSX-Redux plus a second emulator and hardware | Compare traces, memory, rendering, audio, timing, loading, saves, and edge cases. |

# Selection decisions

Choose the output contract first:

- **Matching decompilation** seeks identical code/data and requires compiler and
  linker archaeology plus per-function/object diffs.
- **Functional recompilation** seeks equivalent behavior, can use PSn00bSDK, and
  requires stronger runtime tests because binary comparison cannot prove it.
- **Static recompilation/porting** translates behavior to a new host and is a
  distinct project with emulation/compatibility boundaries to define.

The first machine-readable build manifest is
`/config/ddr5thmix/build.json`. Its bounded assembly path pins GCC 14.2.0 and
GNU binutils 2.43 for `mipsel-none-elf`; see
[/docs/workflows/function-byte-match.md](/docs/workflows/function-byte-match.md).
This is an accepted bootstrap for exact assembly bytes, not evidence that GNU
GCC reproduces the identified PsyQ 4.4.0 C compiler or linker.

# Additional useful tools

Hex editors, Python, CMake/Ninja, Git LFS only for redistributable large files,
Graphviz, texture/audio viewers, and custom archive scripts are common. IDA Pro
may complement Ghidra, but the baseline should remain reproducible with open or
freely available tooling where practical.

# Citations

[1] [mkpsxiso repository and documentation](https://github.com/Lameguy64/mkpsxiso)
[2] [PCSX-Redux debugging introduction](https://pcsx-redux.consoledev.net/Debugging/introduction/)
[3] [PCSX-Redux command-line flags](https://pcsx-redux.consoledev.net/cli_flags/)
[4] [Ghidra official repository](https://github.com/NationalSecurityAgency/ghidra)
[5] [ghidra_psx_ldr repository](https://github.com/lab313ru/ghidra_psx_ldr)
[6] [PSn00bSDK repository](https://github.com/Lameguy64/PSn00bSDK)
