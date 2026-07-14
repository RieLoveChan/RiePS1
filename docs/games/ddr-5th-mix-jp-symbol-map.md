---
type: Symbol Map
title: Dance Dance Revolution 5th Mix (Japan) — Symbol Map
description: Function symbol map for SLPM_868.97;1 with confidence tiers; the PsyQ crt0 startup chain and 12 mode-dispatcher-reachable functions have had manual review passes.
resource: /docs/games/ddr-5th-mix-jp-symbol-map.csv
tags: [ps1, ddr5thmix, symbol-map, ghidra, psyq]
timestamp: 2026-07-14T18:00:00-04:00
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
| `confidence = manual` (hand-reviewed 2026-07-13–14) | 23 |
| `confidence = library_signature` | 1,040 |
| `confidence = unverified` (default `FUN_########` names) | 963 |
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
`main` is DDR-5th-Mix-specific code.

The decompiler also threw a `pcode error ... Unable to resolve constructor`
immediately after `stup0`'s body, at `0x800207ac` — exactly the
`2MBYTE_OBJ_B4` one-byte marker row from the section above. This corroborates
that the marker is a non-code object-boundary artifact colliding with the
fallthrough instruction stream, not a real instruction.

# Manual review: `main`'s game loop structure

Reviewed by hand on 2026-07-13. `main` (`0x800226a4`, 408 bytes, 19
callees) promoted to `confidence = manual`, `source_status =
disassembly_reviewed`. Structurally a standard PS1 main loop:

1. Calls `__main` (already reviewed, no-op) then 5 unnamed init-looking
   calls in sequence: `FUN_80021dfc`, `FUN_80027f7c`, `FUN_8007b778(0x80, 0)`,
   `FUN_800972a4`, `FUN_8003bbe8`.
2. Installs a root-counter interrupt handler for RCNT2
   (event class `0xf2000003`) via `OpenEvent` → `EnableEvent` → `SetRCnt` →
   `StartRCnt` — all four already correctly PsyQ-signature-named kernel BIOS
   calls, another independent corroboration of the PsyQ 4.4.0 identification
   (these are exact official kernel function names, not generic guesses).
3. Calls `FUN_8003bbf8` once more, then enters an infinite two-level loop:
   an inner loop calling `FUN_8002216c` + `ResetRCnt` while
   `PTR_DAT_800ac8e8[9] != 0`, then a per-frame body calling
   `FUN_80022cf8`, `GetRCnt`/`ResetRCnt`, `FUN_800973e8`,
   `FUN_8002112c`, `FUN_8002d630`, `FUN_80028034`, all gated by the same
   struct's flags — **corrected 2026-07-13**: this is *not* a spin/wait loop
   (see `FUN_8002216c`'s own review below); it always runs exactly once.
4. **Every one of the 12 unnamed callees above matched no PsyQ signature**,
   confirming they are DDR-5th-Mix application code, not library code — this
   is the confirmed start of genuinely game-specific reverse engineering.

No semantic name is proposed for any of the 12 unnamed callees or for
`PTR_DAT_800ac8e8`/`PTR_DAT_800ac8ec` — call-site structure (arguments, call
order, loop position) is a structural fact, not an identity claim, per
`AGENTS.md`'s "do not silently turn guesses into names." They are listed, in
call order, in `main`'s symbol-map row `notes` as the next review targets.

# Manual review: `FUN_8002216c` — corrects the "wait loop" hypothesis

Reviewed by hand on 2026-07-13. `FUN_8002216c` (`0x8002216c`, 156 bytes)
promoted to `confidence = manual`, `source_status = disassembly_reviewed`.
Its body:

```
bzero(PTR_DAT_800ac8e8, 0x140);   // zero a ~320-byte state block
FUN_8009f508();
PTR_DAT_800ac8ec[0x50] = 0;
FUN_8009978c();
DAT_800e2ad0 = 0;
PTR_DAT_800ac8e8[9]  = 0;         // <- the exact flag main's inner
PTR_DAT_800ac8e8[10] = 0;         //    do-while(...[9] != 0) tests
PTR_DAT_800ac8e8[11] = 0;
PTR_DAT_800ac8e8[0x3f..0x42] = 1; // four flag bytes forced to 1
```

Because this function unconditionally zeroes offset 9, and that is the exact
byte `main`'s inner `do { FUN_8002216c(); ResetRCnt(...); } while
(PTR_DAT_800ac8e8[9] != 0)` loop tests, **that loop always runs exactly
once** — it is not a spin/wait loop, despite its call-site shape suggesting
one at first read. This corrects the "inner wait-loop" description in the
`main` review above. No name is proposed (`bzero`-then-fixed-flags reads as
a per-scene/state reset routine called once at the top of each outer-loop
pass, but that is a hypothesis about *purpose*, not a confirmed identity —
the two unnamed callees `FUN_8009f508`/`FUN_8009978c` remain unreviewed and
could change that reading).

This is exactly the kind of correction the confidence-tier system exists
for: the original "wait loop" phrasing in `main`'s notes was a reasonable
first read from the call site alone, and reading the callee's actual body
overturned it. Superseded text is marked, not silently deleted, in both the
CSV and this document.

# Manual review: `FUN_80022cf8` — the game's mode/screen dispatcher

Reviewed by hand on 2026-07-13. `FUN_80022cf8` (`0x80022cf8`, 524 bytes, 14
callees — the largest function reviewed so far) promoted to `confidence =
manual`, `source_status = disassembly_reviewed`. This is the highest-value
structural finding to date:

- It reads a 16-bit field at `PTR_DAT_800ac8e8+0x28` and dispatches by exact
  value to one of ~9 distinct branches: `0`, `2`, `4`, `0x10`, `0x20`,
  `0x32`, `0x80`, `0xff`, plus a default (`0x10` and anything unmatched
  falls to the default branch too). These sparse, non-sequential values are
  exactly the shape of a hand-assigned enum of game screens/states (title,
  mode select, gameplay, etc.), not a naturally-occurring counter.
- `mode == 2` reads a **second** 16-bit field at `+0x2a` ("submode") and
  dispatches again on it (0/1/2). `submode == 0` calls
  `FUN_8009f820(0x280, 0x1e0)` — `0x280`/`0x1e0` are `640`/`480`,
  screen-dimension-shaped arguments, suggestive of a full-screen clear on
  entry to that submode (a transition/fade). The unmatched-`mode` default
  branch also reads `+0x2a` (0/1) and dispatches a third time.
- Every branch converges on a shared epilogue: `FUN_80023744()`,
  `FUN_8009971c()`, and conditionally `FUN_80023210(0x80)` if
  `PTR_DAT_800ac8ec[7] != 0` — logic that runs every frame regardless of
  mode.
- Called once per iteration of `main`'s per-frame loop (see the `main`
  review above), consistent with a screen/mode dispatcher being the thing
  that decides what a frame actually does.

**14 new call targets discovered, none yet reviewed**: the ~9 mode-specific
handlers (`FUN_8009f390`, `FUN_800231b0`, `FUN_8009f820`, `FUN_80049dec`,
`FUN_80023048`, `FUN_800230cc`, `FUN_80021a30`, `FUN_800219b8`,
`FUN_80022fb0`, `FUN_800232cc`, `FUN_80022b30`) and the 3-function common
epilogue (`FUN_80023744`, `FUN_8009971c`, `FUN_80023210`). No names are
proposed for any of them, nor for `PTR_DAT_800ac8e8+0x28`/`+0x2a` or
`PTR_DAT_800ac8ec[0x10]`/`[7]` — "mode dispatcher" and "submode" describe
the *shape* of the code, observed directly; what each specific mode value
*means* (which screen, which state) is not yet known and would require
reviewing the individual handlers or finding a string/asset reference tying
a value to a screen name.

Practically, this is the entry point for mapping the game's entire top-level
flow: enumerating every place `PTR_DAT_800ac8e8+0x28` is written (not just
read here) would recover the full set of valid mode values and likely the
transitions between them.

# Manual review: five of the mode dispatcher's handlers — `+0x2a` is not scoped to `mode == 2`

Reviewed by hand on 2026-07-14 using `DumpFunctionDetail.java`: the five
smallest/simplest handler targets discovered by `FUN_80022cf8`'s review
(`FUN_80023048` mode `0x00`, `FUN_800230cc` mode `0x04`, `FUN_800219b8` mode
`0x20`, `FUN_80021a30` mode `0x32`, `FUN_80022fb0` mode `0xff`). All five
promoted to `confidence = manual`, `source_status = disassembly_reviewed`.

- **`FUN_80023048`** (mode `0x00`, 132 bytes) and **`FUN_800230cc`** (mode
  `0x04`, 112 bytes) both read the 16-bit field at
  `PTR_DAT_800ac8e8+0x2a` — the same "submode" field `FUN_80022cf8` itself
  reads for `mode == 2` and the unmatched-mode default — and dispatch on it
  again, 3-way and 2-way respectively. **This corrects the screen-flow
  table's "single call, no args observed" notes for both rows**, recorded
  before either body had been read; superseded, not deleted, per the usual
  correction convention. `FUN_800230cc` also unconditionally copies one byte
  field to another every call regardless of submode:
  `PTR_DAT_800ac8ec[0xbb] = PTR_DAT_800ac8ec[0x52]`.
- **`FUN_80022fb0`** (mode `0xff`, 152 bytes) also reads `+0x2a` and, if its
  value is `< 5`, dispatches through a compiler-generated jump table at
  `0x8001a840` that Ghidra's decompiler couldn't recover ("Too many
  branches"; it mis-renders the indirect `jr` as a function call). The 5
  code blocks laid out immediately after the jump each call a distinct
  target (`FUN_800234cc`, `FUN_80023500`, `FUN_80023544`, `FUN_8002356c`,
  `FUN_8002358c`). **Confirmed 2026-07-14** by reading the table's raw bytes
  with the new `tools/ghidra/scripts/DumpJumpTable.java`: entries 0–4 are
  exactly `0x80022ff0`/`0x80023000`/`0x80023010`/`0x80023020`/`0x80023030`,
  i.e. submode `0`→`FUN_800234cc`, `1`→`FUN_80023500`, `2`→`FUN_80023544`,
  `3`→`FUN_8002356c`, `4`→`FUN_8002358c` — exactly matching the layout-
  convention inference, no longer a guess.
- So **four of the five modes reviewed so far that touch `+0x2a` at all**
  (`0x00`, `0x04`, `0xff`, plus `0x02` and the default from the earlier
  `FUN_80022cf8` review) all read the *same* field — `+0x2a` is evidently a
  general-purpose sub-state/phase value reused across most or all screens,
  not something scoped to whatever screen `mode == 2` represents. This is a
  more useful structural fact than any individual handler's body: it means
  "submode" is probably better read as a per-screen phase counter (e.g.
  init/active/exit) than a screen-specific parameter.
- **`FUN_800219b8`** (mode `0x20`, 60 bytes) and **`FUN_80021a30`** (mode
  `0x32`, 60 bytes) are **byte-for-byte identical**: both check bit `0x40`
  of the 32-bit field at `PTR_DAT_800ac8e8+0x54`, and if set, call
  `FUN_80023210(0x10)` (the same function the shared per-frame epilogue
  calls with argument `0x80`). Neither reads `+0x2a`. Two different mode
  values reaching identical code is the same shape of question the
  `FUN_80022cf8` review already flagged for `0x10`/default — whether these
  are true aliases of one screen or independently-implemented but
  coincidentally identical logic is not yet resolved.

**10 new call targets discovered, none yet reviewed**: `FUN_800235f8`,
`FUN_80023690`, `FUN_80022f04` (mode `0x00`'s submode branches);
`FUN_8002340c`, `FUN_80023474` (mode `0x04`'s submode branches);
`FUN_800234cc`, `FUN_80023500`, `FUN_80023544`, `FUN_8002356c`,
`FUN_8002358c` (mode `0xff`'s inferred jump-table targets). No names
proposed for any of them, nor for `PTR_DAT_800ac8e8+0x54`'s bit `0x40`.

# Manual review: ten submode handlers — a candidate mode-transition write and a re-armed loop flag

Reviewed by hand on 2026-07-14: all ten remaining call targets from the
previous section — mode `0x00`'s three submode handlers (`FUN_800235f8`,
`FUN_80023690`, `FUN_80022f04`), mode `0x04`'s two (`FUN_8002340c`,
`FUN_80023474`), and mode `0xff`'s five confirmed jump-table targets
(`FUN_800234cc`, `FUN_80023500`, `FUN_80023544`, `FUN_8002356c`,
`FUN_8002358c`). All ten promoted to `confidence = manual`,
`source_status = disassembly_reviewed`.

- **Mode `0x00` is a 3-step countdown state machine**: submode `0x00`
  (`FUN_800235f8`) zeroes several flag bytes and sets a 16-bit field at
  `PTR_DAT_800ac8e8+0x22` to `2`; submode `0x01` (`FUN_80023690`) resets
  that same field to `4`; submode `0x02` (`FUN_80022f04`) decrements it
  every call. When it underflows to `-1` *and* four byte flags at
  `PTR_DAT_800ac8ec+0xac..0xaf` are still zero, it writes
  **`PTR_DAT_800ac8e8+0x17 = 0x80`** — `0x80` is a literal top-level mode
  constant, one of `FUN_80022cf8`'s own dispatched values. This is the
  strongest lead yet on the long-open "where is the mode field ever
  written?" question: `+0x17` looks like a queued/pending next-mode value,
  though no code that copies `+0x17` into the actual mode field (`+0x28`)
  has been found yet — that remains the missing link.
- **Mode `0x04`'s two submodes coordinate through a shared flag**:
  submode `0x02` (`FUN_80023474`), when `FUN_800a0ce0()` returns `> 0`,
  sets `PTR_DAT_800ac8ec[6] = 1` — the exact byte submode `0x00`
  (`FUN_8002340c`) reads to choose between two different call sequences.
  One submode changing another submode's future behavior via a shared byte
  is now a directly observed pattern, not a guess.
- **A global flag is shared across two different top-level modes**:
  `DAT_800ac88c` is read by both `FUN_8002340c` (mode `0x04`/submode
  `0x00`) and `FUN_80023500` (mode `0xff`/submode `0x01`, a confirmed
  jump-table target). The same condition gating handlers under two
  unrelated mode values suggests this is cross-cutting game state (e.g. a
  first-boot/attract-mode/session flag), not something scoped to either
  screen.
- **`FUN_800231b0`** (already flagged as shared in the `FUN_80022cf8`
  review) is now confirmed called from 6 of these 10 handlers directly
  (`FUN_80023690`, `FUN_800234cc`, `FUN_80023500`, `FUN_80023544`,
  `FUN_8002356c`, plus its earlier known call sites) — strong evidence it's
  a generic per-transition "commit/present" routine rather than anything
  screen-specific.
- **`FUN_8002358c`** (mode `0xff`/submode `0x04`) is the first of these ten
  to reach a real, already-PsyQ-signature-named library call:
  **`ResetGraph(1)`**, a standard PsyQ `libgpu` GPU-state reset — further
  corroboration of the PsyQ 4.4.0 toolchain (not new evidence by itself,
  since `ResetGraph` was already signature-matched, but confirmation this
  code path reaches it). The same function also writes
  **`PTR_DAT_800ac8e8[9] = 1`** — the exact byte `main`'s inner
  `do-while(...[9] != 0)` loop tests. This *cannot* affect that specific
  loop (`FUN_8002216c` unconditionally re-zeroes offset `9` every
  outer-loop pass, before the loop's own condition is ever checked — see
  the `FUN_8002216c` review above), so the write must matter to something
  else that reads offset `9` later in the same frame — most likely one of
  `main`'s still-unreviewed post-dispatcher per-frame calls
  (`FUN_800973e8`, `FUN_8002112c`, `FUN_8002d630`, `FUN_80028034`). Flagged
  as an open question rather than assumed dead code.

**12 new call targets discovered, none yet reviewed**: `FUN_80023230`,
`FUN_800a0cb0`, `FUN_80049d3c`, `FUN_800a0ce0`, `FUN_8002a7a4`,
`FUN_8009b0a8`, `FUN_800236cc`, `FUN_80022148`, `FUN_80029390`,
`FUN_80026940`, `FUN_80025b18`, `FUN_8002a8b0`. No names proposed for any
of them, nor for `PTR_DAT_800ac8e8+0x17`/`+0x22`, `PTR_DAT_800ac8ec+0xac..
0xaf`/`[6]`, or the globals `DAT_800ac88c`/`DAT_800ac890`/`DAT_800e2a60`/
`DAT_800f2900`.

# Manual review: `FUN_80023210` is the game's `SetMode` primitive — resolves the "+0x28 write site" question

Reviewed by hand on 2026-07-14, found via a new tool
(`tools/ghidra/scripts/DumpFieldXrefs.java`) that dumps decompiled C for
every function referencing a given global address — run against
`PTR_DAT_800ac8e8` (`0x800ac8e8`) itself, which returned 58 referencing
functions. Grepping that output for `0x28` turned up exactly one write
site, inside a function already seen constantly throughout this review as
a mystery "shared call" (`FUN_80023210`, promoted to `confidence =
manual`):

```c
void FUN_80023210(undefined2 param_1)
{
  *(undefined2 *)(PTR_DAT_800ac8e8 + 0x28) = param_1;  // mode
  *(undefined2 *)(PTR_DAT_800ac8e8 + 0x2a) = 0;         // submode
  *(undefined2 *)(PTR_DAT_800ac8e8 + 0x2c) = 0;         // ? — new field
  *(undefined2 *)(PTR_DAT_800ac8e8 + 0x2e) = 0;         // ? — new field
}
```

This is a **`SetMode(newMode)` primitive**: it writes its argument directly
into the exact field `FUN_80022cf8` dispatches on, and clears not just
`submode` (`+0x2a`, already known) but two further 16-bit fields
(`+0x2c`, `+0x2e`) never seen before — hinting the mode/submode dispatch
may go at least one level deeper than currently mapped.

**This resolves the screen-flow doc's long-open "where is `+0x28` ever
written" question**: among all 58 functions that reference
`PTR_DAT_800ac8e8`, `+0x28` is written *only* here. Every one of this
project's already-reviewed call sites to `FUN_80023210` is therefore a
**confirmed mode transition**, not just a call-site fact:

- `FUN_80022cf8`'s own epilogue → mode `0x80`, conditional on
  `PTR_DAT_800ac8ec[7] != 0` — reachable from **any** mode, not scoped to
  one screen.
- `FUN_800219b8` (mode `0x20`) and `FUN_80021a30` (mode `0x32`) → mode
  `0x10`, conditional on a bit in `+0x54`.
- `FUN_80022f04` (mode `0x00`/submode `0x02`, when its countdown expires)
  → mode `0x10`.
- `FUN_8002340c` (mode `0x04`/submode `0x00`, `PTR_DAT_800ac8ec[6] != 0`
  branch) → mode `2`.
- `FUN_80023474` (mode `0x04`/submode `0x02`, when `FUN_800a0ce0() > 0`) →
  mode `2`.

**This corrects the previous hypothesis about `PTR_DAT_800ac8e8+0x17`**
(recorded as a "candidate mode-transition write" in `FUN_80022f04`'s
review above): that same function calls `FUN_80023210(0x10)` in the same
body where it writes `+0x17 = 0x80`, so the actual, immediate mode
transition it performs is to `0x10`, confirmed directly — not `0x80`.
`+0x17`'s purpose is not explained by this finding and remains open.
Superseded, not deleted, per the usual correction convention.

While grepping the same 58-function dump, `FUN_80021374` (`0x80021374`,
252 bytes) turned up as a **second, previously undiscovered read site of
`+0x28`** (checks `mode != 0xff`), guarding a block that tests bits in the
`+0x54`/`+0x58` region already seen gating mode `0x20`/`0x32`'s handlers —
shaped like a controller-input check, not part of the dispatcher tree
reviewed so far. Not yet reviewed in full; flagged as a new lead.

# What this map is not yet

- No `namespace` values are populated — PsyQ signature matches landed in the
  global namespace rather than grouped per library object file. Worth fixing
  once someone maps which PsyQ `.gdt`/object each match came from.
- Only the 7 functions above have `source_status` above
  `decompiler_output_only`, out of 2,026. Before trusting any other
  function's *behavior* (not just its name), read its disassembly/
  decompilation and, ideally, compare it against a known-good PsyQ 4.4.0
  object per the "Function accepted" gate in
  `/docs/workflows/decompile-recompile.md`.
- Data/global symbols (e.g. `PTR_DAT_800ac8e8`) are out of scope for this
  file; see the symbol map schema's "Non-goals". A `globals.csv` following
  the same schema would be the natural place to track that struct once
  someone starts reverse-engineering its layout.

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
