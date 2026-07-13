---
type: Symbol Map
title: Dance Dance Revolution 5th Mix (Japan) — Symbol Map
description: Function symbol map for SLPM_868.97;1 with confidence tiers; the PsyQ crt0 startup chain has had its first manual review pass.
resource: /docs/games/ddr-5th-mix-jp-symbol-map.csv
tags: [ps1, ddr5thmix, symbol-map, ghidra, psyq]
timestamp: 2026-07-13T00:00:00-04:00
---

Schema: [/docs/foundations/symbol-map-schema.md](/docs/foundations/symbol-map-schema.md).
Revision: [/docs/games/ddr-5th-mix-jp.md](/docs/games/ddr-5th-mix-jp.md).
Data: [ddr-5th-mix-jp-symbol-map.csv](/docs/games/ddr-5th-mix-jp-symbol-map.csv)
(2,026 rows, one per function).

# Provenance

Exported with `/tools/ghidra/scripts/ExportSymbolMap.java` (via
`analyzeHeadless -process ... -postScript ExportSymbolMap.java <csv>`) from
the Ghidra 12.1.2 + `ghidra_psx_ldr` project described in
`/docs/tooling/ghidra-setup.md`, immediately after the initial import and
full auto-analysis. No function in this export has been read or corrected by
a person — every row is bulk tool output, per `source_status =
decompiler_output_only`.

# Summary statistics

| Metric | Value |
|---|---|
| Total functions | 2,026 |
| `confidence = manual` (hand-reviewed 2026-07-13) | 4 |
| `confidence = library_signature` | 1,041 |
| `confidence = unverified` (default `FUN_########` names) | 981 |
| Combined function-body coverage | 496,888 of 1,050,624 `t_size` bytes (~47%) — the remainder is inline data, unanalyzed gaps, or bodies Ghidra didn't attribute to a function; not yet characterized. |

`symbol_source_type` does **not** line up with `confidence` the way its name
suggests: 591 of the 1,045 `library_signature` rows carry Ghidra's
`USER_DEFINED` source type, and 454 carry `IMPORTED`. Both are ghidra_psx_ldr
applying names during auto-analysis (likely to protect them from being
overwritten by later re-analysis passes) — **not** evidence of human review.
Treat `symbol_source_type` as raw tool metadata only; `confidence` is what
this project actually asserts.

# Two distinct kinds of `library_signature` rows

- **153 rows** at addresses `0x20000000`–`0x200002xx`, the synthetic GTE
  macro segment `ghidra_psx_ldr` creates for every project (see
  `/docs/tooling/ghidra-setup.md`). These are pseudo-functions representing
  GTE coprocessor macro instructions (`gte_ldv0`, `gte_ldrgb3`, …), each 1
  byte "long" — not real disassembled code. Useful for cross-referencing GTE
  usage, but do not expect these to look like ordinary functions.
- **892 rows** inside the real code segment (`0x8001a800`–`0x8011afff`)
  matched against the PsyQ `4.4.0` signature database. The first several are
  a strong sanity check that the PsyQ 4.4.0 identification in
  `/docs/games/ddr-5th-mix-jp.md` is correct: `start` (`0x80020700`, the
  entry point — matches the PS-X EXE header's `pc0` exactly), `stup0`,
  `stup1`, and `__main` are the standard PsyQ crt0/C-runtime startup routine
  names, not game-specific code. One row, `2MBYTE_OBJ_B4` at `0x800207ac`
  (size 1), is a ghidra_psx_ldr **object-boundary marker** (per its own
  README's `PSYQ_XXX`/object-marker convention) rather than a function name —
  a labeling artifact, not a claim that a function called `2MBYTE_OBJ_B4`
  exists.

# Manual review: the PsyQ crt0 startup chain

Reviewed by hand on 2026-07-13 using
`/tools/ghidra/scripts/DumpFunctionDetail.java` (disassembly + decompiled C
for one or more addresses). All four promoted to `confidence = manual`,
`source_status = disassembly_reviewed`:

- **`__main`** (`0x800206f8`, 8 bytes) — `jr ra` / `nop`, an empty no-op
  stub. Matches the standard PsyQ/SN `__main()` placeholder used when a
  program has no C++ static initializers.
- **`start`** (`0x80020700`, 36 bytes, the PS-X EXE entry point) — the
  classic PsyQ crt0 BSS-clear loop. It has **no return instruction**: it
  falls straight through into `stup1` at the next address. Ghidra's
  per-symbol size/boundary is a label position within one continuous flow,
  not an independently-returning function — don't trust `start`/`stup1`/
  `stup0`'s caller/callee counts in isolation.
- **`stup1`** (`0x80020724`, 124 bytes) — sets up `sp`/`gp`, computes heap
  bounds from linker-provided symbols, calls `InitHeap` (`0x8003baf8`), then
  falls through into `stup0`.
- **`stup0`** (`0x800207a0`, 12 bytes) — calls `main()` at `0x800226a4`,
  then `trap 1` (the standard PsyQ exit/debug trap if `main` ever returns).

So the full boot sequence is `start → stup1 → InitHeap → stup0 → main →
trap`, entirely standard PsyQ 4.4.0 boilerplate — independent corroboration
that the toolchain identification in `/docs/games/ddr-5th-mix-jp.md` is
correct, since these names and this exact sequence are PsyQ-specific, not
generic guesses.

**`main` at `0x800226a4` is the crt0-to-game-code boundary**: everything at
or before `stup0` is PsyQ startup boilerplate; everything reachable from
`main` is DDR-5th-Mix-specific code. This makes `main` the highest-value
next manual-review target, but its own 408-byte body has not been read yet
(still `confidence = library_signature`) — its symbol-map row and
`InitHeap`'s are annotated with this finding in their `notes` column without
changing their tier, since annotating a call site is not the same as
reviewing the callee's own body.

The decompiler also threw a `pcode error ... Unable to resolve constructor`
immediately after `stup0`'s body, at `0x800207ac` — exactly the
`2MBYTE_OBJ_B4` one-byte marker row from the section above. This corroborates
that the marker is a non-code object-boundary artifact colliding with the
fallthrough instruction stream, not a real instruction.

# What this map is not yet

- No `namespace` values are populated — PsyQ signature matches landed in the
  global namespace rather than grouped per library object file. Worth fixing
  once someone maps which PsyQ `.gdt`/object each match came from.
- Only the 4 functions above have `source_status` above
  `decompiler_output_only`, out of 2,026. Before trusting any other
  function's *behavior* (not just its name), read its disassembly/
  decompilation and, ideally, compare it against a known-good PsyQ 4.4.0
  object per the "Function accepted" gate in
  `/docs/workflows/decompile-recompile.md`.
- Data/global symbols are out of scope for this file; see the symbol map
  schema's "Non-goals".

# Reproduction

1. Follow `/docs/games/ddr-5th-mix-jp.md` to extract and hash
   `SLPM_868.97;1`.
2. `tools\ghidra\Import-BootExecutable.ps1` to import and auto-analyze it.
3. `analyzeHeadless <project> ddr5thmix -process SLPM_868.97_1 -noanalysis
   -scriptPath tools\ghidra\scripts -postScript ExportSymbolMap.java
   <out.csv>` (or extend `Report-ProgramSummary.ps1`'s pattern into a small
   wrapper) to regenerate this CSV.
4. For manual review of a specific function, `analyzeHeadless <project>
   ddr5thmix -process SLPM_868.97_1 -noanalysis -scriptPath
   tools\ghidra\scripts -postScript DumpFunctionDetail.java 0xADDR [0xADDR
   ...]` prints disassembly and decompiled C for each address. Re-running
   `ExportSymbolMap.java` afterwards will **overwrite** any manually-edited
   rows (including the four above) since it always regenerates from scratch
   — there is no merge step yet. Diff before overwriting, or extend the
   script to preserve `confidence >= manual` rows.

# Citations

[1] [/docs/foundations/symbol-map-schema.md](/docs/foundations/symbol-map-schema.md)
[2] [/docs/tooling/ghidra-setup.md](/docs/tooling/ghidra-setup.md)
[3] [/docs/games/ddr-5th-mix-jp.md](/docs/games/ddr-5th-mix-jp.md)
