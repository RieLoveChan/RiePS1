---
type: Tool Doc
title: Portable Ghidra + ghidra_psx_ldr Setup
description: A self-contained, git-ignored Ghidra 12.1.2 install with the ghidra_psx_ldr extension, plus headless import/report scripts.
resource: https://github.com/NationalSecurityAgency/ghidra
tags: [ps1, ghidra, tooling, static-analysis, psyq]
timestamp: 2026-07-13T00:00:00-04:00
---

# Layout

Everything lives under the git-ignored `/tools/local/` (per
`/docs/foundations/legal-provenance.md`, matching the existing `chdman`
convention), so no third-party binaries are ever committed:

- `tools/local/jdk25/` — Eclipse Temurin JDK 25 (portable zip distribution;
  Ghidra 12.1.2 requires a JDK 25 runtime).
- `tools/local/ghidra_12.1.2_PUBLIC/` — Ghidra 12.1.2
  (`ghidra_12.1.2_PUBLIC_20260605.zip`, SHA-256
  `b62e81a0390618466c019c60d8c2f796ced2509c4c1aea4a37644a77272cf99d`, from the
  `Ghidra_12.1.2_build` GitHub release).
- `tools/local/ghidra_12.1.2_PUBLIC/Ghidra/Extensions/ghidra_psx_ldr/` —
  [ghidra_psx_ldr](https://github.com/lab313ru/ghidra_psx_ldr) release
  `2026.07.08`, asset `ghidra_12.1.2_PUBLIC_20260709_ghidra_psx_ldr.zip`
  (matched to the exact Ghidra build). Installed by extracting the release
  zip directly into `Ghidra/Extensions/` rather than through the GUI's
  File → Install Extensions dropzone — Ghidra picks up a module directory
  there automatically at next launch, which also works headlessly.

Reproduce with `gh release download <tag> -R <owner>/<repo> -p <asset>` for
each of the three pieces; do not guess download URLs.

# Scripts

- `/tools/ghidra/Import-BootExecutable.ps1` — headless import + full
  auto-analysis of a boot executable into a named Ghidra project, using the
  PSX loader.
- `/tools/ghidra/Report-ProgramSummary.ps1` — runs
  `tools/ghidra/scripts/ReportProgramSummary.java` against an already-analyzed
  program and prints image base, entry point, language, detected PsyQ
  version, memory blocks, and function/symbol counts.
- `/tools/ghidra/scripts/DumpFunctionDetail.java` — prints disassembly and
  decompiled C for one or more functions given by address; the standard
  manual-review evidence source (headless: `-postScript
  DumpFunctionDetail.java 0xADDR [0xADDR ...]`). If no function exists yet
  at an address (common for indirect-call-only targets, e.g. entries in a
  hand-rolled function-pointer table, that auto-analysis never reached),
  it creates one first via `CreateFunctionCmd` — this only edits the
  Ghidra project's analysis database, not the target binary. Added
  2026-07-15 while reading `DAT_80105120`'s state-machine callbacks.
- `/tools/ghidra/scripts/DumpJumpTable.java` — reads N consecutive 32-bit
  words starting at an address and resolves each to a function name if one
  exists; for confirming MIPS switch-statement jump tables the decompiler
  couldn't recover on its own (headless: `-postScript DumpJumpTable.java
  0xADDR N`).
- `/tools/ghidra/scripts/DumpFieldXrefs.java` — finds every function that
  references a given global address and prints each one's decompiled C, so
  a specific struct-field offset (e.g. `+0x28`) can be grepped for across
  every function touching that global, without decompiling the whole
  ~2,000-function program (headless: `-postScript DumpFieldXrefs.java
  0xADDR`). Used to find every write site of a mode/state field reached
  only through a global pointer — see the symbol map's `FUN_80023210`
  review.
- `/tools/ghidra/scripts/DumpShorts.java` — reads N consecutive signed
  16-bit values starting at an address and prints each in decimal and hex;
  for small data tables (e.g. a menu's list of destination values) that
  don't warrant a full jump-table-style dump (headless: `-postScript
  DumpShorts.java 0xADDR N`). Used to read a menu's 3-entry destination-mode
  table — see the symbol map's `FUN_80022b30` review.
- `/tools/ghidra/scripts/DumpBytes.java` — reads N raw bytes starting at an
  address and prints a hex+ASCII dump, like a minimal `hexdump -C`, for
  inspecting embedded string/format data byte-by-byte (headless:
  `-postScript DumpBytes.java 0xADDR N`, `N` in decimal — Java's
  `Integer.parseInt` rejects a `0x` prefix on the count argument, unlike
  the address argument which Ghidra's own `AddressFactory` parses). Used to
  find a 42-entry screen-name string table — see the symbol map's "Data
  discovery" section.

# Two non-obvious `analyzeHeadless` gotchas

- **Loader identifier**: `-loader` must be the Java **simple class name**
  (`PsxLoader`), not the display name shown in the GUI ("PSX Executables
  Loader"). `ghidra.app.util.opinion.LoaderService.getLoaderClassByName()`
  matches `loader.getClass().getSimpleName()` exactly; the display name
  throws `InvalidInputException: Invalid loader name specified`.
- **Silent hang on any error**: `support/launch.bat` inspects
  `%cmdcmdline%` and treats invocation through PowerShell's `&` operator as
  "double-clicked," so any non-zero exit calls `pause` and hangs forever with
  no attached stdin in a non-interactive session. Both wrapper scripts here
  pipe an empty string into `analyzeHeadless.bat` as a no-op answer to that
  potential prompt.

# First-run result: Dance Dance Revolution 5th Mix (Japan)

Importing `/docs/games/ddr-5th-mix-jp.md`'s boot executable
(`SLPM_868.97;1`) with the PSX loader and full auto-analysis (~224s,
dominated by the 163s PsyQ Signatures analyzer) produced:

- Image base `0x80000000`, entry point `0x80020700` (matches the PS-X EXE
  header's `pc0`), language `PSX:LE:32:default`.
- **PsyQ Version `4.4.0`**, auto-detected by ghidra_psx_ldr's bundled
  signature database (`data/psyq440.gdt`). This resolves the manifest's
  previously "unconfirmed" note about the original toolchain lineage — see
  `/docs/games/ddr-5th-mix-jp.md`.
- Memory blocks matching the standard PS1 map (scratchpad, MCTRL/IO ports,
  DMA channels, timers, CDROM/GPU/MDEC/SPU registers, a synthetic GTE macro
  segment at `0x20000000` with named `gte_*` library functions, and RAM
  `0x80000000`–`0x801fffff` with the loaded code at
  `0x8001a800`–`0x8011afff`, matching the manifest's `t_addr`/`t_size`).
- 2,026 functions, 12,258 defined symbols after auto-analysis — most named
  via PsyQ 4.4.0 library signature matches, not yet manually reviewed.

The Ghidra project itself lives at `runtime/ghidra/projects/ddr5thmix.gpr`
(git-ignored via the existing `*.gpr`/`*.rep/` patterns) and is not part of
the repository; reproduce it from the CHD with the extraction commands in
`/docs/games/ddr-5th-mix-jp.md` plus `Import-BootExecutable.ps1`.

# Citations

[1] [Ghidra releases](https://github.com/NationalSecurityAgency/ghidra/releases)
[2] [ghidra_psx_ldr releases](https://github.com/lab313ru/ghidra_psx_ldr/releases)
[3] [Eclipse Temurin (Adoptium) releases](https://adoptium.net/temurin/releases)
[4] [Ghidra GettingStarted.md — minimum requirements](https://github.com/NationalSecurityAgency/ghidra/blob/master/GhidraDocs/GettingStarted.md)
