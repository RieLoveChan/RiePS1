---
type: Reference
title: PlayStation 1 Platform Architecture
description: Hardware and binary-format knowledge required to analyze and rebuild PS1 games.
tags: [ps1, mips, architecture, reverse-engineering]
timestamp: 2026-07-12T00:00:00-04:00
---

# Required knowledge

An effective contributor needs working knowledge of C, MIPS assembly, compiler
code generation, linkers, and binary formats. On PS1, analysis must account for:

- the little-endian MIPS R3000A-class CPU, branch and load delay slots, calling
  conventions, and HI/LO multiplication and division state;
- the GTE coprocessor and its geometry/lighting instructions;
- the memory map, cached/uncached address aliases, scratchpad, DMA, interrupts,
  timers, and memory-mapped I/O;
- GPU ordering-table/packet rendering, SPU audio, controllers/memory cards, and
  CD-ROM streaming including CD-XA and CD-DA;
- PS-X EXE headers and load addresses, overlays, dynamically loaded modules,
  archives, compression, TIM textures, models, scripts, and game-specific data;
- ISO 9660 layout, sector modes, LBAs, tracks, pregaps, and license-region data.

# Compiler literacy

Matching source is not merely equivalent C. Register allocation, instruction
scheduling, struct layout, signedness, optimization, compiler version, assembler,
linker, SDK libraries, and link order all affect bytes. Identify compiler/library
signatures before assuming Psy-Q: commercial games used multiple toolchains.

Use a function map with address, size, confidence, callers/callees, data
references, overlay, proposed name, source status, and verification evidence.
Keep observations distinct from hypotheses.

# Validation model

Validation progresses from disassembly boundaries, to static equivalence, to
object/executable byte comparison, to runtime traces and behavior, and finally
disc-image and real-hardware testing where feasible. Emulator success alone is
not proof of hardware correctness.

# Citations

[1] [PlayStation Specifications (psx-spx)](https://psx-spx.consoledev.net/)
[2] [Ghidra processor specification language](https://github.com/NationalSecurityAgency/ghidra/blob/master/GhidraDocs/languages/html/sleigh.html)
[3] [PS1 platform notes at Decompedia](https://decomp.wiki/platforms/playstation)
