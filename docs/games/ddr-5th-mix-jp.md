---
type: Revision Manifest
title: Dance Dance Revolution 5th Mix (Japan) — Revision Manifest
description: Provenance manifest and success contract for the project's first target revision.
tags: [ps1, ddr5thmix, provenance, manifest, target]
timestamp: 2026-07-13T00:00:00-04:00
---

Schema: [/docs/foundations/revision-manifest-schema.md](/docs/foundations/revision-manifest-schema.md).
Symbol map: [/docs/games/ddr-5th-mix-jp-symbol-map.md](/docs/games/ddr-5th-mix-jp-symbol-map.md).
Global map: [/docs/games/ddr-5th-mix-jp-globals.md](/docs/games/ddr-5th-mix-jp-globals.md).
Mode-control module: [/docs/games/ddr-5th-mix-jp-mode-control.md](/docs/games/ddr-5th-mix-jp-mode-control.md).
Runtime-core module: [/docs/games/ddr-5th-mix-jp-runtime-core.md](/docs/games/ddr-5th-mix-jp-runtime-core.md).
Quirk log: [/docs/games/ddr-5th-mix-jp-quirks.md](/docs/games/ddr-5th-mix-jp-quirks.md).
Screen flow: [/docs/games/ddr-5th-mix-jp-screen-flow.md](/docs/games/ddr-5th-mix-jp-screen-flow.md).
Music database: [/docs/games/ddr-5th-mix-jp-music-database.md](/docs/games/ddr-5th-mix-jp-music-database.md).
Matching build: [/docs/workflows/function-byte-match.md](/docs/workflows/function-byte-match.md).

# Revision identity

- **Game**: Dance Dance Revolution 5th Mix
- **Region**: Japan
- **Serial**: `SLPM-86897`, read directly from the disc's `SYSTEM.CNF`
  (`BOOT = cdrom:\SLPM_868.97;1`). Not yet cross-checked against Redump or
  other external serial databases.
- **Success contract**: `byte_match` — matching decompilation (identical
  code/data after reassembly/relink, verified by object/executable comparison
  per the "Function accepted" and "Executable accepted" gates in
  `/docs/workflows/decompile-recompile.md`). Decided by the repository owner
  on 2026-07-13. This is the most demanding of the three contracts in
  `/docs/tooling/toolchain.md` "Selection decisions" and requires identifying
  the exact original compiler/assembler/linker lineage — **now confirmed as
  PsyQ SDK 4.4.0**, see "Toolchain identification" below.
- **Why this revision**: it is the only lawful input present in `input/chd/`
  and a prior agent already validated it boots deterministically under
  BizHawk (see `/docs/tooling/bizhawk-harness.md`).

# Input provenance

- **Source container**: `Dance Dance Revolution 5th Mix (Japan).chd`, 288,078,309
  bytes, SHA-256 `731a4424ebc6b17496aa331bd9fdcf4d46b829b2d000e87fcf73333c4c2a4798`
  (recomputed 2026-07-13; matches the value first recorded in
  `/docs/tooling/bizhawk-harness.md`).
- **Container tool hashes** (from `chdman info`, MAME 0.275): CHD v5, CHD
  SHA-1 `5877da8b90644d78347a9253cd67cce9303dfa30`, raw-data SHA-1
  `c184543da9ef942fd69508a76089ca4f35097bbf`.
- **BizHawk 2.11 disc identity hash**: `909E6710` (from a prior smoke-test
  report; the title was `NotInDatabase` in BizHawk's own game database).
- **Tracks**: single data track.

  | # | Mode | Sectors | Extracted size | SHA-256 |
  |---|---|---|---|---|
  | 1 | MODE2/2352 | 195,857 | 460,655,664 bytes | `c414a87c81b7a7a2104f18739a1dca7c256c84f8ff2202ee29f307e72967a935` |

  Extraction command: `chdman.exe extractcd -i "input/chd/Dance Dance
  Revolution 5th Mix (Japan).chd" -o track.cue -ob track.bin`. Track SHA-1:
  `386b80978daa77a343faba8bbffd0450e663cc12`.
- **Redump cross-check**: `not_yet_verified`. No comparison against a Redump
  entry has been performed; do not assume this dump is a verified-good Redump
  copy.

# Boot executable

Read with `/tools/iso9660/Read-BootExecutable.ps1` against the extracted
track (`SYSTEM.CNF` at LBA 23, size 68 bytes: `BOOT = cdrom:\SLPM_868.97;1`,
`TCB = 4`, `EVENT = 16`, `STACK = 801FFF00`).

- **Path**: `SLPM_868.97;1`
- **Extent LBA / size**: 24 / 1,052,672 bytes
- **SHA-256**: `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`
- **SHA-1**: `f9b2de48725177d5bd492da7746238f1f908d5e8`
- **PS-X EXE header**:

  | Field | Value |
  |---|---|
  | `pc0` (entry point) | `0x80020700` |
  | `gp0` | `0x00000000` |
  | `t_addr` | `0x8001A800` |
  | `t_size` | `0x00100800` |
  | `d_addr` / `d_size` | `0x00000000` / `0x00000000` |
  | `b_addr` / `b_size` | `0x00000000` / `0x00000000` |
  | `s_addr` (stack) | `0x801FFFF0` |
  | `s_size` | `0x00000000` |

  `t_addr` (0x8001A800) + 2048-byte header + `t_size` (0x00100800) accounts
  for the full 1,052,672-byte file; `d_size`/`b_size` of zero is consistent
  with this executable not declaring separate data/bss regions in its header
  (unconfirmed why — worth revisiting once the toolchain is identified).

# Toolchain identification

Established with Ghidra 12.1.2 + `ghidra_psx_ldr` (see
`/docs/tooling/ghidra-setup.md`), importing `SLPM_868.97;1` with the PSX
loader and running full auto-analysis:

- **PsyQ SDK version: `4.4.0`**, auto-matched by the extension's bundled
  signature database (`data/psyq440.gdt`) via its "PsyQ Signatures" analyzer.
  This is disc-derived, tool-matched evidence, not a guess — it directly
  supports the `byte_match` success contract by narrowing which compiler/
  linker lineage a matching decompilation must reproduce.
- Image base `0x80000000`, entry point `0x80020700` (matches the PS-X EXE
  header's `pc0`), language/compiler spec `PSX:LE:32:default:default`.
- 2,026 functions and 12,258 defined symbols after auto-analysis, many named
  via PsyQ 4.4.0 library signatures (e.g. the GTE macro segment at
  `0x20000000` resolved to named functions like `gte_ldv0`, `gte_ldrgb3`).
  These are tool-assigned names from signature matching, not yet manually
  verified per-function.
- Full memory-block layout (standard PS1 I/O/DMA/timer/CDROM/GPU/MDEC/SPU
  register ranges plus RAM `0x80000000`–`0x801fffff`) is recorded in
  `/docs/tooling/ghidra-setup.md` rather than duplicated here.

# Other root-directory entries

Recorded for later extraction/inventory work, not yet analyzed:

| Name | Extent LBA | Size (bytes) |
|---|---|---|
| `DUMMY.BIN;1` | 182207 | 27,648,000 |
| `READ_DT.BIN;1` | 20000 | 32,768,000 |
| `STR.BIN;1` | 36000 | 299,431,936 |
| `XA.STR;1` | 1000 | 33,456,128 |

# Tool-version record

| Tool | Version | Source | Invocation |
|---|---|---|---|
| `chdman` | 0.275 (MAME 0.275) | Repository-local only, `/tools/local/chdman/chdman.exe`, git-ignored per `/docs/foundations/legal-provenance.md` | `chdman.exe extractcd -i <chd> -o track.cue -ob track.bin` |
| `Read-BootExecutable.ps1` | This repository, `/tools/iso9660/Read-BootExecutable.ps1` | Project-written | `Read-BootExecutable.ps1 -BinPath track.bin -OutDir <dir>` |
| PowerShell | 7+ (`pwsh`) | Local environment | Hashing via `[System.Security.Cryptography.SHA256]`/`SHA1` in the same script |
| GNU MIPS cross-tools | GCC 14.2.0; binutils 2.43; target `mipsel-none-elf` | PCSX-Redux Windows MIPS tool manager; installed locally, never vendored | `tools/build/Invoke-FunctionMatch.ps1 -ExePath <lawful-SLPM_868.97> -Function <manifest-function>` |
| Ghidra | 12.1.2 (`ghidra_12.1.2_PUBLIC_20260605.zip`) | Repository-local only, `/tools/local/ghidra_12.1.2_PUBLIC/`, git-ignored | `Import-BootExecutable.ps1` / `Report-ProgramSummary.ps1`, see `/docs/tooling/ghidra-setup.md` |
| ghidra_psx_ldr | `2026.07.08` release, Ghidra-12.1.2-matched build | Repository-local only, installed into `Ghidra/Extensions/ghidra_psx_ldr/`, git-ignored | Loader `-loader PsxLoader` |
| Eclipse Temurin JDK | 25.0.3+9 | Repository-local only, `/tools/local/jdk25/`, git-ignored | `JAVA_HOME` for the above |

# Reproduction notes

Extraction was performed into an ignored `work/` directory (matches
`/work/` in `.gitignore`) and is not part of the repository. Reproduce by
re-running the two commands above against a locally supplied copy of the CHD.

# Citations

[1] [/docs/foundations/revision-manifest-schema.md](/docs/foundations/revision-manifest-schema.md)
[2] [/docs/tooling/bizhawk-harness.md](/docs/tooling/bizhawk-harness.md)
[3] [/docs/tooling/toolchain.md](/docs/tooling/toolchain.md)
