---
type: Symbol Map
title: Dance Dance Revolution 5th Mix (Japan) — Symbol Map
description: Function symbol map for SLPM_868.97;1 with confidence tiers and documented startup, input, and nested state-machine review evidence.
resource: /docs/games/ddr-5th-mix-jp-symbol-map.csv
tags: [ps1, ddr5thmix, symbol-map, ghidra, psyq]
timestamp: 2026-07-25T00:00:00-04:00
---

Schema: [/docs/foundations/symbol-map-schema.md](/docs/foundations/symbol-map-schema.md).
Revision: [/docs/games/ddr-5th-mix-jp.md](/docs/games/ddr-5th-mix-jp.md).
Data: [ddr-5th-mix-jp-symbol-map.csv](/docs/games/ddr-5th-mix-jp-symbol-map.csv)
(2,124 rows, one per function — 2,026 from the original bulk export, 92 added
2026-07-15 for indirect-call-only targets, and six selector exit/terminal
callbacks added 2026-07-19 after inventorying all three selector tables).

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
| Total functions | 2,124 (2,026 original + 92 added 2026-07-15 + 6 added 2026-07-19) |
| `confidence = manual` (hand-reviewed 2026-07-13–24) | 102 |
| `confidence = verified` | 169 |
| `confidence = library_signature` | 977 |
| `confidence = unverified` (default `FUN_########` names) | 882 |
| Combined function-body coverage | 510,344 of 1,050,624 `t_size` bytes (~49%) — the remainder is inline data, unanalyzed gaps, or bodies Ghidra didn't attribute to a function; not yet characterized. |

`symbol_source_type` does **not** line up with `confidence` the way its name
suggests: 556 of the 977 `library_signature` rows carry Ghidra's
`USER_DEFINED` source type, and 421 carry `IMPORTED`. Both are ghidra_psx_ldr
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
- **824 rows** inside the real code segment (`0x8001a800`–`0x8011afff`)
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

## Update 2026-07-24: `main` reconstructed; resolves `PTR_DAT_800ac8e8+0x09`

Re-running `tools/ghidra/scripts/DumpFieldXrefs.java` against
`PTR_DAT_800ac8e8` (62 functions now reference it, up from the 58 catalogued
on 2026-07-14) surfaces `main` itself among them, because its own two
nested `do`/`while` conditions read byte `9` directly:
`PTR_DAT_800ac8e8[9] != 0` (outer reset loop) and
`PTR_DAT_800ac8e8[9] == 0` (inner per-frame loop). This had been missed by
every prior review because a bracket-indexed byte access
(`PTR_DAT_800ac8e8[9]`) does not match a `+ 0x9)`-style textual search — the
decompiler renders single-byte accesses through an `undefined *` pointer as
array indexing, not pointer arithmetic.

This closes the open question recorded in the globals and screen-flow docs
("something else must read offset 9 within the same frame"): **`main` is its
own same-frame consumer.** `FUN_8002216c` unconditionally zeroes the byte
(among the rest of its 0x140-byte reset) at the top of every outer-loop pass,
so the outer reset loop normally executes exactly once per pass, as already
established 2026-07-13. `FUN_8002358c` (mode `0xff`/submode `4`, the
GPU-reset/service-state handler) is the only writer that ever sets it to `1`;
doing so makes the *inner* per-frame loop's condition false at the end of the
current frame, which exits back to the outer loop and re-runs
`FUN_8002216c`'s full state/GPU reset before resuming normal per-frame
dispatch. In other words, byte `9` is `main`'s own **loop-restart / hard-reset
flag**: normally `0`, and momentarily `1` only to force a full runtime restart
from the mode-`0xff` service state.

`main` is reconstructed as semantic MIPS assembly in
`src/ddr5thmix/RuntimeCore.s` (now fourteen functions/3,428 bytes in the
`runtime-core` module) and matches all 408 reference bytes under GNU
binutils 2.43; built/reference SHA-256
`275cc516d5a5aca266a3d7789aadf4e22815bfc6775003b54bb9ec8fd7321303`. Promoted
to `confidence = verified`, `source_status = hand_written_source`.

# Manual review: PsyQ PAD initialization and the per-frame input adapter

Reviewed by hand on 2026-07-15 with Ghidra 12.1.2,
`DumpFunctionDetail.java`, and the new `DumpDataXrefs.java`.

`DumpDataXrefs.java 0x800e3b60 0x800e3b70` found exactly one
`WRITE` reference to each global, both inside **`FUN_8002112c`**.
All other classified references are reads (some indirect-address
references remain typed generically as `DATA`, but their instructions are
`lw`, not stores). The producer chain is:

1. **`FUN_80021dfc`**, main's first game-specific initializer, calls the
   PsyQ-signature-named `PadInitDirect(0x800e2a68, 0x800e2a9c)` and then
   `PadStartCom()`. These are two receive buffers, one per controller port,
   separated by `0x34` bytes and filled by the PAD subsystem.
2. **`FUN_8002112c`**, called once per frame from `main`, validates each
   packet (status byte 0; controller-type high nibble 4 or 7), combines and
   inverts its two active-low button bytes, and calculates
   `newly_pressed = ~previous & current` plus the inverse release edge.
3. It snapshots port 1's newly-pressed word to **`DAT_800e3b60`** and
   port 2's to **`DAT_800e3b70`**. Their surrounding layout is:

| Port | Previous held | Current held | Newly pressed | Newly released |
|---|---|---|---|---|
| 1 | `DAT_800e3b58` | `DAT_800e3b5c` | `DAT_800e3b60` | `DAT_800e3b64` |
| 2 | `DAT_800e3b68` | `DAT_800e3b6c` | `DAT_800e3b70` | `DAT_800e3b74` |

This makes the relevant bit identities recoverable from the packet byte
order itself: `0x800 = Start`, `0x100 = Select`, and
`0x20 = Circle`. Consequently `FUN_8004b554`'s `0x820` test means
**Start or Circle newly pressed** on either port. Re-reading
`FUN_80021374` against the same layout also upgrades its earlier
Start+Select interpretation from structural match to static confirmation:
it requires Start held in the current word (`+0x50/+0x60 & 0x800`) and
Select newly pressed in the edge word (`+0x54/+0x64 & 0x100`), then enters
mode `0xff`.

The low-level serial polling is therefore PsyQ PAD library/BIOS work;
`FUN_8002112c` is the game's per-frame adapter and edge detector, not the
hardware protocol driver itself.

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
  else that reads offset `9` later in the same frame. `FUN_8002112c` was
  subsequently reviewed as the PAD adapter and does not resolve this; the
  same-frame consumer, if any, remains an open question rather than assumed
  dead code.

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

# Manual review: mode `0x10`'s handlers — a real menu, not a splash screen

Reviewed by hand on 2026-07-14 to test a hypothesis from the screen-flow
doc ("is mode `0x10` the Company/logo screen?"). Both of mode `0x10`
(default-branch)'s submode handlers promoted to `confidence = manual`.

- **`FUN_800232cc`** (submode `0x00`) sets four 16-bit fields
  (`PTR_DAT_800ac8e8+0xc/+0xe/+0x10/+0x12`) to `0x140`/`0xf0`/`4`/`1` —
  `320`/`240` is the other standard PS1 display resolution (the
  `FUN_80022cf8` review already found `640`/`480` used elsewhere) — then
  calls the real PsyQ kernel function **`SetDispMask(1)`** (enables
  display output), conditionally calls `FUN_8002a9dc(&DAT_80118e48,
  &DAT_8011acb8)`, and **unconditionally calls `FUN_80023210(4)`** — a
  confirmed transition to mode `4`, every time this submode runs. Since
  `FUN_80023210` (`SetMode`) always resets submode to `0`, this handler is
  guaranteed to be the *first* thing that runs after any transition into
  mode `0x10` (or any other unmatched mode), and it always immediately
  forwards onward to mode `4` in that same call.
- **`FUN_80022b30`** (submode `0x01`, 456 bytes, the largest handler
  reviewed so far) is a genuine **menu/selector**, not passive display
  code: it iterates up to 2 controller-port input words at
  `PTR_DAT_800ac8e8+0x54`/`+0x58`, using bit `0x1000` to decrement and bit
  `0x4000` to increment a selection index at `+0x2c` (wrapped `% 3` — a
  3-item cycle), and bit `0x20` as a confirm button. On confirm, it reads
  the selected item's target mode from a 3-entry table at `DAT_800ac8e0`
  and calls `FUN_80023210(target)` to transition there (calling
  `FUN_80049d3c()` first if the target is specifically mode `2`). If
  nothing confirms after checking both ports, it instead draws the idle
  menu via 5 calls to `FUN_80021470()`.
- **The table's contents were read directly** with the new
  `tools/ghidra/scripts/DumpShorts.java`: `DAT_800ac8e0 = { 4, 0x32, 0x20
  }`. All three are modes already reviewed elsewhere in this project —
  and mode `0x20`/mode `0x32`'s own handlers (`FUN_800219b8`/
  `FUN_80021a30`) transition *back* to mode `0x10` (see the "five smallest
  handlers" review above). So **mode `0x10` and modes `0x20`/`0x32` form a
  menu ↔ preview loop**: selecting item 1 or 2 leaves the menu for a
  "preview" state that can return to the menu, while selecting item 0
  (mode `4`) heads onward toward mode `0x04` → mode `2` and doesn't loop
  back (no confirmed return path yet).

**This refutes the screen-flow doc's "mode `0x10` = Company" hypothesis**:
a passive logo/splash screen would not contain d-pad-driven selection
logic, a confirm button, and a lookup table of destination screens. The
structural shape here — cycle-and-confirm across up to 2 controller ports
— is a genuine interactive menu, most consistent with a **title/mode-select
hub**, not part of a non-interactive attract loop. Superseded, not
deleted; see screen-flow doc for the corrected table entry.

**New call targets discovered, none yet reviewed**: `FUN_800222fc`,
`FUN_8002a9dc`, `FUN_80021470` (called 5 times from `FUN_80022b30`,
likely a shared draw/sprite routine given its coordinate-shaped
arguments). `SetDispMask` is an already-known PsyQ kernel function, not
new application code — its use here is further corroboration of the
PsyQ 4.4.0 toolchain, alongside `ResetGraph` found earlier the same day.

## Update 2026-07-24: `FUN_80022b30` reconstructed; resolves `PTR_DAT_800ac8e8+0x2c`

`+0x2c` is read back, not merely cleared, exactly where this section already
said it was: the `% 3` selection cycle above *is* the field. A fresh
`DumpFieldXrefs.java` pass against `PTR_DAT_800ac8e8` (62 referencing
functions) confirms `FUN_80022b30` is the sole reader — every occurrence of
`+0x2c` outside `SetMode`/`SetSubmode`'s clears is inside this one function's
body (the increment/decrement, the `% 3` wrap via a magic-number
division-by-3 sequence, the `DAT_800ac8e0` table index, and the on-screen
cursor's vertical draw offset, `(+0x2c) * 0xe - 0x40`, passed to
`FUN_80021470`). This closes the globals/screen-flow docs' open question
about `+0x2c`: it is `FUN_80022b30`'s own current-selection index for the
mode-`0x10` 3-item menu, not a persistent field read anywhere else — fully
consistent with `SetMode` clearing it on every transition (a fresh menu
should start at item 0).

`+0x2e` was searched with the same fresh dump and remains a genuine, durable
negative result: no function among the 62 reads it. The only other match for
`+ 0x2e` outside `SetMode`/`SetSubmode` belongs to an unrelated per-player
structure based at `DAT_800f2908` (inside `FUN_8007fdec`), not
`PTR_DAT_800ac8e8`.

`FUN_80022b30` is reconstructed as semantic MIPS assembly in
`src/ddr5thmix/FUN_80022b30.s` (added to the `mode-control` module, now
twenty functions/1,660 bytes) and matches all 456 reference bytes under GNU
binutils 2.43; built/reference SHA-256
`8fcfaea11d4c06cb6a3415a4b7bc3ed2dd9b0b81563f096fbd3a8602d03f1893`. Promoted
to `confidence = verified`, `source_status = hand_written_source`.

# Manual review: `SetMode` has siblings — `NextSubmode`/`SetSubmode` — plus a service/reset-combo watcher

Reviewed by hand on 2026-07-14 while chasing a repository-owner hypothesis
("maybe mode `0x10`'s menu is armed during Memory Card Auto Load, which is
why it's ready the instant the player presses Start") using the same
58-function `PTR_DAT_800ac8e8` cross-reference dump from the `SetMode`
discovery above, this time grepped for `0x2a` (submode) instead of `0x28`
(mode).

- **`FUN_800231b0`** — called from nearly every handler reviewed so far,
  previously treated as an unexplained "shared call" — turns out to be
  **`NextSubmode()`**: `{ +0x2c = 0; +0x2a = +0x2a + 1; }`. It's the
  generic "advance to the next step within the current screen" primitive,
  the submode-level sibling of `SetMode`. Promoted to `confidence =
  manual`.
- **`FUN_80023230`** is **`SetSubmode(newSubmode)`**: `{ +0x2a = param;
  +0x2c = 0; +0x2e = 0; }` — sets submode directly instead of
  incrementing, mirroring `SetMode` one field down. Promoted to
  `confidence = manual`. Its only confirmed caller among these 58
  functions is `FUN_800235f8` (mode `0x00`/submode `0x00`), calling it
  with `1` to advance mode `0x00`'s own local 3-step sequence — this call
  is local to mode `0x00`'s own state machine, not a mechanism for arming
  mode `0x10`'s submode.
- **The repository owner's hypothesis is not confirmed by this evidence**:
  every write to `+0x2a` found among all 58 functions belongs to one of
  these three primitives (`SetMode`'s reset-to-`0`, `NextSubmode`'s
  increment, `SetSubmode`'s direct set), and tracing every one of their
  confirmed call sites shows no path that leaves submode `== 1` while mode
  remains `0x10` across a frame boundary — `FUN_800232cc` (mode
  `0x10`/submode `0x00`) calls `NextSubmode()` then unconditionally
  `SetMode(4)` in the same execution, so any momentary submode `1` is
  immediately overwritten back to `0` before the dispatcher's next read.
  Testing the hypothesis was still worthwhile: it prompted re-reading
  `FUN_800231b0` for the first time, resolving what it actually does.
- **A genuine side-discovery**: `FUN_80021374` (`0x80021374`, 252 bytes —
  the function flagged as an unexplained second `+0x28` reader in the
  `SetMode` review above) is a **service/reset-combo watcher**. Gated on
  two byte flags (`PTR_DAT_800ac8ec[0]`/`[6]`) and `mode != 0xff`, it
  checks up to 2 controller ports for a specific input combo (bit `0x800`
  in one word, bit `0x100` in the other) and, on match, resets several
  `DAT_800e29xx` globals and calls `FUN_80023210(0xff)` — a **confirmed
  transition to mode `0xff`**. This explains why mode `0xff` has such an
  elaborate 5-way jump-table dispatch (a real `ResetGraph` call and a
  main-loop-restart flag write, see `FUN_8002358c`'s review): it's a
  genuine reset/service state reachable via a button chord, not a sentinel
  value that happens to have submodes. Promoted to `confidence = manual`.

**The "how does mode `0x10`'s submode ever reach `1`" question remains
open** — if anything, it's now better-supported as a genuine puzzle rather
than a gap in review coverage, since the search for `+0x2a`'s write sites
was exhaustive across every function touching `PTR_DAT_800ac8e8`.

# Manual review: mode `0x10`/submode `0x00`'s two callees — GPU reset and a reusable asset loader

Reviewed by hand on 2026-07-14: `FUN_800232cc`'s (mode `0x10`/submode
`0x00`) two remaining callees, checked while chasing the "does the menu
get armed during boot" question above. Both promoted to `confidence =
manual`. Neither touches submode, so they don't resolve that question,
but they clarify what mode `0x10`/submode `0x00` is actually *for*.

- **`FUN_800222fc`** is pure GPU reinitialization, built entirely from
  real, already-signature-named PsyQ library calls: `ResetGraph(1)`,
  `GsInitGraph2(width, height, mode, dith, 0)` (reading the exact `320`/
  `240`/`4`/`1` fields `FUN_800232cc` just set), `GsInit3D()`,
  `InitGeom()`, then a `ClearImage2` (black screen clear) and
  `DrawSync(0)`. No application-specific logic at all — a generic "reset
  the GPU to a known 320×240 state" routine.
- **`FUN_8002a9dc`** — called from **22 places project-wide**, not just
  here, confirming it's a generic reusable utility rather than
  screen-specific code — is an **asset-loading routine**: given a small
  header (two counts + two array offsets), it first draws a sequence of
  primitives/sprites (phase 1), then uploads a sequence of images to VRAM
  via the real PsyQ kernel function **`LoadImage`**, replacing pixels
  equal to `0x7c1f` (a 15-bit transparency/"magic pink" key color) with
  `0` first (phase 2).

**This reframes mode `0x10`/submode `0x00`** (previously described as
"unconditionally forwards to mode `4`") as **generic screen-entry
boilerplate**: reset the GPU, conditionally load whatever assets the
caller-supplied tables (`DAT_80118e48`/`DAT_8011acb8` in this call site)
point to, then hand off to mode `4`. It reads less like a screen in its
own right and more like a loading/transition step specifically gating
entry to mode `4` — consistent with mode `4` (== mode `0x04`, already
reviewed) being the more likely candidate for an actual first visible
screen after Memory Card Auto Load, with mode `0x10` as the GPU-reset/
asset-load gateway to it.

**New call targets discovered**: `FUN_8002200c`, `FUN_80036648`,
`FUN_80036668` (from `FUN_800222fc`); `FUN_8002a8b8`, `FUN_800223a8`
(from `FUN_8002a9dc`). `ResetGraph`, `GsInitGraph2`, `GsInit3D`,
`InitGeom`, `ClearImage2`, `DrawSync`, `LoadImage` are all already-known
PsyQ library functions, not new application code — their density here is
further corroboration of the PsyQ 4.4.0 toolchain.

# Manual review: mode `0x04`'s six callees — a build marker and real audio setup

Reviewed by hand on 2026-07-14, completing mode `0x04`'s call tree
(`FUN_8002340c`/`FUN_80023474`, reviewed earlier the same day). All six
promoted to `confidence = manual`.

- **`FUN_80049d3c`** (called from both of mode `0x04`'s handlers) contains
  this project's **first literal filename string**:
  `FUN_8007eea8("data/mdb/mdb.bin")`. **Correction 2026-07-15**:
  `FUN_8007eea8` is exactly `jr ra; nop`; it cannot load or parse the named
  file. The path is a retained source/build marker, while the 47-record
  runtime music table is already linked at `DAT_800df3d8`; see
  `/docs/games/ddr-5th-mix-jp-music-database.md`. The function also
  initializes two per-something record
  structures (stride `0x9284` bytes — plausibly one per player), then
  calls six more unreviewed functions and a function pointer.
- **`FUN_8002a7a4`** (called by `FUN_80023474`, mode `0x04`/submode
  `0x02`, right before its transition to mode `2`) is pure SPU/audio
  setup using real, already-signature-named PsyQ sound calls:
  `SsUtSetReverbType(3)`, `SpuClearReverbWorkArea(3)`,
  `SsSetSerialAttr(0,0,1)`, `SsSetReservedVoice(0x14)`,
  `SpuSetTransferMode(0)`, `SsUtSetReverbDepth(0x28,0x28)`.
- **`FUN_8009b0a8`** (same caller) is a **settings/options clamp-and-
  validate routine**: roughly 25 distinct byte fields of a config struct
  at `PTR_DAT_800e0b18` (a third distinct struct, not
  `PTR_DAT_800ac8e8`/`ec`) are each compared against a max and reset to a
  default if out of range — reads exactly like sanitizing memory-card-
  loaded settings before they're used.
- **`FUN_800a0cb0`** (called by `FUN_8002340c`'s first-time path) and
  **`FUN_800236cc`** (a bare no-op, called by `FUN_80023474`) are small;
  **`FUN_800a0ce0`** is a thin wrapper around the still-unreviewed
  `FUN_800a00d4`, whose return value is the actual "ready" condition
  gating mode `0x04`'s transition onward.

**This reframes the whole `0x00 → 0x10 → 0x04` chain as a boot/loading
sequence, not a series of visible screens**: Memory Card Auto Load (mode
`0x00`) → GPU reset + asset load (mode `0x10`/submode `0x00`) → settings
validation + linked-metadata/state initialization + SPU/reverb setup (mode `0x04`) → mode
`2`. Mode `2`'s own submodes (already reviewed: a `640×480` screen clear,
a conditional call, and `FUN_80049dec`) are now the most likely place to
find the *first* genuinely visible screen in this chain, rather than
modes `0x10` or `0x04` themselves. **Also corrects an imprecise reading
of `FUN_8002340c`'s two branches** from its earlier review: its "flag
zero" branch calls `FUN_80023230(2)` (`SetSubmode(2)` — stays in mode
`0x04`, advances to submode `2`, i.e. `FUN_80023474`), while only its
"flag nonzero" branch calls `FUN_80023210(2)` (`SetMode(2)` — actually
leaves mode `0x04`). The two are easy to conflate since both take literal
argument `2`; only the second is a mode transition.

**New call targets discovered in the 2026-07-14 pass**: `FUN_800a00d4`,
`FUN_8007eea8` (reviewed 2026-07-15 as a no-op), `FUN_8009851c`, `FUN_80042f60`, `FUN_80049fd4`,
`FUN_80042df8`, `FUN_8008eb48`, `FUN_800a22b0`, `FUN_800a22d0`,
`FUN_800a22f0`. `SsUtSetReverbType`/`SpuClearReverbWorkArea`/
`SsSetSerialAttr`/`SsSetReservedVoice`/`SpuSetTransferMode`/
`SsUtSetReverbDepth` are already-known PsyQ library functions.

# Manual review: mode `0x02` is a resolution-switch utility, plus a `"TEST_MODE"` string

Reviewed by hand on 2026-07-14, prompted by the repository owner recalling
(from prior BizHawk observation) that DDR 5th Mix switches display
resolutions during play — a direct, independent hint about what to look
for. All three of mode `0x02`'s submode handlers promoted to `confidence
= manual`.

- **`FUN_8009f820`** (submode `0x00`, called with args `640`/`480`) just
  zeroes an 8-byte state block and stores the target width/height.
- **`FUN_8009f390`** (submode `0x01`) is a 7-step (`0`–`6`) state machine
  over that block: step `0` saves and clears a flag; step `1` calls
  **`SetDispMask(0)`** (display OFF); step `2` clears the screen to black
  at the stored `640×480` via `ClearImage2`/`DrawSync` then calls
  `FUN_8009f0a8(width, height)`; step `3` waits a few frames (a counter
  `> 2`); step `4` calls **`SetDispMask(1)`** (display ON); step `5`
  restores the saved flag; step `6` reports "done." **This is confirmed,
  directly, as a display-off / resize / delay / display-on resolution-
  change sequence** — exactly the pattern the repository owner recalled
  observing in BizHawk. Independent confirmation between a runtime
  observation and the disassembly, not just code-reading alone.
- **`FUN_80049dec`** (submode `0x02`) is structurally unrelated to the
  resolution change — it drives a **separate state machine** keyed on
  `DAT_80105120` (the same global the mode-`0x04` initializer
  `FUN_80049d3c` also touches) through three parallel function-pointer
  tables (update/exit/enter — a textbook state-machine dispatch pattern),
  then copies a table of records ending at an entry containing
  **`PTR_s_TEST_MODE_8001bd74`** — a pointer to the literal string
  **`"TEST_MODE"`**, this project's first human-readable (non-filename)
  string — into a local buffer before calling `FUN_80042e1c()`.

**Mode `0x02`'s three submodes now read as two unrelated things sharing a
mode number**: submodes `0x00`/`0x01` are a generic resolution-switch
utility (confirmed, not screen-specific), while submode `0x02` touches an
apparently separate `DAT_80105120`-keyed state machine that has at least
one `"TEST_MODE"`-labeled entry. Neither reads as a "screen" with its own
visible identity yet — reinforcing the pattern from modes `0x10`/`0x04`
that these low mode numbers are infrastructure/utility states, not the
attract-loop screens themselves.

**New call targets discovered**: `FUN_8009f0a8` (resolution/graphics-mode
helper), `FUN_80042e1c`. Also newly visible: the `PTR_DAT_8001bcd4` table
and the `PTR_LAB_800d9ac0`/`PTR_LAB_800d9ac4`/`PTR_FUN_800d9abc`
function-pointer arrays `DAT_80105120` indexes into — none of their
contents beyond the one `"TEST_MODE"` string have been read.

## Update 2026-07-24: `FUN_80049dec` does not scan for `"TEST_MODE"` — it unconditionally copies the whole array

Re-reading `FUN_80049dec` with `DumpFunctionDetail.java` (both raw
disassembly and decompiled C) shows the earlier "copies a table of records
ending at an entry containing `TEST_MODE`" description, while byte-accurate
about where the copy stops, implied a *conditional* scan/search. The actual
code contains no string or pointer comparison at all: it is a straight-line,
unrolled `memcpy`-style copy of the **complete 42-entry pointer array**
(`local_c0[42]`, exactly 168 bytes) from `PTR_DAT_8001bcd4`, four entries per
iteration for entries `0`–`39`, then entries `40` (`TEST_MODE`) and `41`
(`OTHER`) handled by two extra straight-line instructions after the loop. The
loop's termination test compares the source pointer against the
compile-time-constant address `&PTR_s_TEST_MODE_8001bd74` purely because that
is where the last group-of-4 boundary falls (`40 = 4 × 10`) — an artifact of
unrolling a fixed-size copy, not special-case code for that entry.

A per-entry `DumpDataXrefs.java` sweep (all 42 individual pointer-slot
addresses, `0x8001bcd4`–`0x8001bd78`, plus the base address itself) found
`FUN_80049dec` as the *only* function referencing any entry of the array —
entries `0`–`9` via direct loads (the only iterations Ghidra's static
constant-propagation resolved concretely) and entry `40` via the address
computation used as the loop bound. No other function touches any slot. This
is now the exhaustive answer to the screen-flow doc's "what consumes the
complete 42-entry screen-name pointer array?" question: **only
`FUN_80049dec` does, and it copies the entire thing** — but the copy appears
to go unused. `local_c0` is never read again after the loop, and the
function's one remaining call, `FUN_80042e1c` (dumped separately), overwrites
its own `a0` with a literal `8` as its very first instruction, so it cannot
be consuming the copy as an implicit argument either. `FUN_80042e1c` itself
is a generic PsyQ sprite/TIM-object setup routine (fixed RGB `0x80/0x80/0x80`,
a handle `8`, and a `DAT_800e75a8` busy-flag clear) with no textual or
structural connection to the screen-name table. The copy is therefore best
recorded as present but functionally dead within this function, rather than
guessing a further consumer that the evidence does not show.

While chasing `FUN_80049dec`'s `"TEST_MODE"` string and its
`DAT_80105120`-keyed state machine (see the mode `0x02` review above),
reading the raw bytes around the pointer table it copies from
(`tools/ghidra/scripts/DumpBytes.java` against `0x8001bb00`, 656 bytes)
turned up something far bigger: **a complete, ordered table of 42
null-terminated ASCII screen-name strings**, each one pointed to in turn
by a 42-entry pointer array starting at `0x8001bcd4` (the exact table
`FUN_80049dec` reads from). In order:

`BOOT`, `PREPARE`, `INTRO`, `HOW TO`, `DANCING`, `STAGE END`, `RESULT`,
`NON STOP I`, `NON STOP C`, `STYLE SEL`, `MODE SEL`, `CHARA SEL`,
`MUSIC SEL`, `SEQKIND SEL`, `LINK SEL`, `COURSE SEL`, `INRAN SEL`,
`EDSEQ_SEL`, `SELECT END`, `NAME ENTRY`, `PRE_END`, `ENDING`,
`URL&PASS`, `LINK START`, `LINK END`, `GAME_OVER`, `PLAY START`,
`GAME ??`, `PUSH START`, `WARNING`, `KONAMI`, `BEMANI`, `TOSHIBA`,
`TMOVIE`, `TITLE`, `CATCH DEMO`, `PLAY DEMO`, `RANKING`, `LETS LINK`,
`DEMO ??`, `TEST_MODE`, `OTHER`.

(Immediately preceding this table, at `0x8001bb10`, is the literal
`"data/mdb/mdb.bin"` source/build marker found in `FUN_80049d3c`'s review —
the two data tables sit in the same object/source file.)

**Corrected 2026-07-15** (was: "almost certainly the game's real,
top-level screen/state enum, indexed by `DAT_80105120`"): reading the
raw contents of the three function-pointer tables `DAT_80105120` indexes
into (`tools/ghidra/scripts/DumpJumpTable.java` against `0x800d9abc`, 60
entries) refutes the direct-index claim. The table holds exactly **45
valid code-address entries** (indices `0`–`44`, all in the `0x8004xxxx`
range), followed by 3 non-pointer words, then a `0xFFFFFFFF` terminator
at index `48`. `45 = 15 × 3` — consistent with **15 states, each with an
enter/update/exit triple**, not 42. Since 15 ≠ 42, `DAT_80105120` almost
certainly does **not** directly index this 42-name string table after
all; the two are more likely separate structures that merely happen to
be touched by the same function (`FUN_80049dec`) and share proximity
(`FUN_80049d3c` also zeroing `DAT_80105120`, unrelated to the name
table). Superseded, not deleted, per the usual correction convention —
this was a real overclaim, caught by reading the data instead of
stopping at a plausible-sounding inference.

**The 42-name string table itself is unaffected by this correction** —
those are still real, literal strings, still strong evidence for the
screen identities they name (see below); what's withdrawn is only the
specific claim that `DAT_80105120` is the index that selects among them.
Given the table is scanned/copied specifically by the same function that
also drives the 15-state `DAT_80105120` machine, and stops exactly at
the `"TEST_MODE"`-labeled entry, a more conservative reading is that the
42-name table is a **debug/test-mode menu listing** (a list of
jump-to-screen targets for a developer/service menu) rather than the
engine's own live state enum — though this is itself still a hypothesis,
not confirmed.

**Bonus finding**: immediately after the 45-entry table's `0xFFFFFFFF`
terminator (`0x800d9b80` onward) are 6 words of small packed 16-bit value
pairs, then more embedded strings — `"Game Mode"`, `"Diet Mode"` (partial,
cut off in the 60-entry dump) — a different, unexplored table, plausibly
game-option/settings names ("Diet Mode" is a real, documented DDR feature
— a calorie-tracking workout mode). Not yet followed up.

**Direct corroboration of the repository owner's domain-knowledge
account** (see `/docs/games/ddr-5th-mix-jp-screen-flow.md`'s "Known
screen sequence") stands regardless of the correction above, across two
separate accounts — the attract loop and (added 2026-07-15) the actual
gameplay session flow (Caution → Style Select → Select Character →
Select Music → Gameplay → Result → Select Music/Summary/Game Over):
`WARNING` = the safety warning ("Caution", shared by both accounts);
`KONAMI`, `BEMANI`, `TOSHIBA` = three separate company-logo screens (not
one generic "Company" screen — DDR 5th Mix (Japan) credits Konami, the
Bemani brand, and Toshiba EMI specifically); `PLAY DEMO` = "Gameplay
Demonstration"; `RANKING` = "Ranking"; `HOW TO` = "How To Play";
`STYLE SEL` = "Style Select"; `CHARA SEL` = "Select Character";
`MUSIC SEL` = "Select Music"; `DANCING` = actual gameplay; `RESULT` =
the result screen; `GAME_OVER` = "Game Over"; `TITLE` is the title
screen. No string obviously matches the account's "Summary" screen yet
— `ENDING`, `PRE_END`, `SELECT END` are candidates, none confirmed.
Remaining names still go beyond what either account predicted:
`STAGE END`, `NON STOP I`/`NON STOP C` (a marathon/nonstop play mode),
`SEQKIND SEL`, `LINK SEL`/`LINK START`/`LINK END`/`LETS LINK` (a
cabinet-link/versus feature), `COURSE SEL`, `INRAN SEL`, `EDSEQ_SEL`,
`NAME ENTRY`, `URL&PASS`, `ENDING`, `CATCH DEMO`, and the
placeholder-looking `GAME ??`/`DEMO ??`.

**Status at discovery time, resolved further below**: the relationship
between `DAT_80105120`, `PTR_DAT_800ac8e8`, and the 42-name array was not yet
established here. Later callback review proved that mode `0x02`/submode
`0x02` pumps a one-state `DAT_80105120` wrapper, which owns the separate
14-state `DAT_80105124` child. Individual child callbacks write indices via
`DAT_800f2908`; the still-open part is which code consumes the complete
42-entry pointer array beyond those live labels and the suspected debug menu.

**Corrected further below** (see "a nested child state machine... corrects
the '15 states' model"): reading state `0`'s own code revealed the raw
45-entry region isn't one 15-state table for `DAT_80105120` at all — it's
`DAT_80105120`'s own 1-state table (3 words) followed immediately by a
*separate*, nested 14-state child machine at a different global. Neither
count matches `42`, so the main conclusion of this section (not the same
enum as the string table) stands; only the specific "15 states" shape was
wrong.

**This is exactly the kind of discovery `/docs/foundations/
symbol-map-schema.md`'s own non-goals note anticipates** ("globals
should get their own `globals.csv`... once that work starts") — a
`globals.csv` tracking `DAT_80105120`, its 15-entry state table, and the
42-name string table (now known to be separate structures) is a good
candidate for when that work starts, rather than assuming in advance
they'll collapse into one screen-flow document the way `PTR_DAT_800ac8e8`
did.

# Manual review: `DAT_80105120` state 0's enter/update/exit triple

Reviewed by hand on 2026-07-15, following up on the (at-the-time)
understanding that `DAT_80105120`'s table holds 15 states (45 entries ÷
3) — itself corrected further below once this section's own review
turned up a cleaner explanation. Read state 0's three callbacks —
`FUN_80049c24` (enter, raw table entry `0`), and two addresses Ghidra's
auto-analysis had never turned into functions (only reachable via the
indirect enter/update/exit dispatch, so auto-analysis never found a
direct call/branch to them): `FUN_80049f7c` (update, entry `1`) and
`FUN_80049fa4` (exit, entry `2`).

**Tool improvement**: `tools/ghidra/scripts/DumpFunctionDetail.java` now
creates a function boundary (via `CreateFunctionCmd`, disassembling
first if needed) when asked to dump an address that isn't already a
recognized function — this is exactly the situation `FUN_80049f7c`/
`FUN_80049fa4` were in. This only edits the Ghidra project's own
analysis database, not the target binary.

- **`FUN_80049c24`** (enter) is called *directly* by `FUN_80049d3c`
  (mode `0x04`'s initializer containing the inert `mdb.bin` marker) as part of the boot chain —
  confirming `DAT_80105120`'s state machine is explicitly bootstrapped
  from there, not something that starts on its own. It posts a sequence
  of notification codes through the pervasive `FUN_8002a8b0(code)`
  (seen everywhere in this project but still not understood — a generic
  event/message-post primitive, going by how many different call sites
  use it with different literal codes), and initializes a 2-player
  record structure using **the same inline init code**
  (`stride 0x9284`, fields `0x10`/`0x10`/`0xff`) already seen in
  `FUN_80049d3c` itself — a shared source pattern, not coincidence. The
  real per-state logic is one level deeper, in the unreviewed
  `FUN_8004ba34`.
- **`FUN_80049f7c`** (update) is a thin wrapper: it always returns the
  literal `0`, meaning it never itself decides to leave state `0` — since
  `FUN_80049dec`'s dispatcher only transitions when the update callback's
  return value differs from the current state, whatever actually decides
  when to leave state `0` must live in its callee, `FUN_8004bbb4`.
- **`FUN_80049fa4`** (exit) is likewise a thin wrapper around
  `FUN_8004bc54`.

None of the three reveal a semantic screen identity by themselves — no
strings, no PsyQ calls, just event-posting and delegation to deeper
functions (`FUN_8004ba34`/`FUN_8004bbb4`/`FUN_8004bc54`).

# Manual review: a nested child state machine, and a reusable "tick" primitive — corrects the "15 states" model

Reviewed by hand on 2026-07-15, one level deeper than the section above.
This is the second correction to the `DAT_80105120` table's shape in as
many reviews — recorded because it changes the count again, cleanly this
time, with direct evidence rather than inference from raw byte counts
alone.

- **`FUN_8004ba34`** (called as `FUN_8004ba34(param_1+4)`, i.e. with a
  pointer to a *different* global 4 bytes after `DAT_80105120` — call it
  `DAT_80105124`) zeroes that global and calls
  `(*(code*)PTR_FUN_800d9ac8)(param_1, 0)`: it bootstraps a **second,
  independent nested state machine** at `DAT_80105124`, the same way
  `FUN_80049d3c` bootstraps `DAT_80105120` itself.
- **`FUN_8004bbb4`** (called as `FUN_8004bbb4(param_1+4)`) is a
  **generic, reusable, parameterized version of `FUN_80049dec`'s
  state-machine-tick logic** — same update-then-conditionally-exit-then-
  enter shape, but taking the state pointer and implicitly using
  whichever 3 tables sit at fixed offsets from it, instead of hardcoding
  `DAT_80105120`. This confirms the engine has one reusable "tick a state
  machine" primitive, used both for the top-level `DAT_80105120` (via
  `FUN_80049dec`'s specialized copy) and recursively for nested children.
- **`FUN_8004bc54`** confirms the same pattern for the exit side.

**Reading `DAT_80105124`'s own three tables directly**
(`tools/ghidra/scripts/DumpJumpTable.java` against `0x800d9ac8`, 42
entries) settles the shape cleanly: `enter` = a flat 14-entry array at
`0x800d9ac8`, `update` = a flat 14-entry array at `0x800d9b00` (exactly
14 words later), `exit` = a flat 14-entry array at `0x800d9b38` (14 words
after that) — `14 × 3 = 42`, ending exactly where the non-pointer data
found earlier begins. **This means the raw 45-entry region documented
above was never one 15-state table for `DAT_80105120`** — it was
`DAT_80105120`'s own tiny 1-state (3-word) table immediately followed by
`DAT_80105124`'s separate 14-state (42-word) table. `DAT_80105120`
itself, as far as every call site found so far shows, only ever holds
state `0` — the real branching happens one level down, in this child.

**Corrected, not deleted**: the previous section's "15 states" framing
(inferred from `45 ÷ 3` alone, before any of these three functions were
read) is superseded by this cleaner, directly-confirmed model. Neither
count (`15` nor `14`) matches the 42-name string table's `42` entries, so
that correction from earlier still stands regardless of which reading is
right.

**State 0 reviewed one level deeper (2026-07-15)** with Ghidra 12.1.2,
`DumpFunctionDetail.java`, and `DumpJumpTable.java`. Its outer triple is:

- **Enter `FUN_8004bcc8`** (68 bytes): wraps global counter
  `DAT_800f28f8` to zero only above `0x3fffffff`, then calls
  `FUN_80053ed8(param_1+4)`.
- **Update `FUN_8004b554`** (256 bytes): while neither of two controller/
  input words has a bit in mask `0x820`, calls
  `FUN_80053f68(param_1+4)` and returns `0`; when the mask is observed,
  prepares display/control state, posts code `0x30d`, and returns `1`,
  requesting the outer 14-state machine transition from state 0 to state
  1. A later input-producer trace identifies this mask as Start or Circle
  newly pressed; see the PAD review above.
- **Exit `FUN_8004bd0c`** (32 bytes): delegates to
  `FUN_80054010(param_1+4)`.

This **does not create a third copy of the same generic 14-state
machine**, but it does reveal a different subordinate machine embedded at
`param_1+4`. `FUN_80053ed8` initializes that child to state `6` normally,
or state `0` when `DAT_800f2908` is `0x1c`/`0x1d`. A direct read of table
`0x800ddc68` confirms 7 enter callbacks; `FUN_80053f68` and
`FUN_80054010` confirm parallel update/exit tables at `0x800ddc84` and
`0x800ddca0`. `FUN_80053f68` is another update → conditional exit → enter
tick primitive and always returns `0` to the outer state. The two initial
enter callbacks reviewed here set `DAT_800f2908=0x1d` (state 0) or
`0x25` (state 6), but their callees remain unnamed, so there still is not
enough evidence to assign a screen identity.

# Manual review: `DAT_80105124` state 1 is the main menu

Reviewed by hand on 2026-07-15 with Ghidra 12.1.2,
`DumpFunctionDetail.java`, and a repository-owner-supplied runtime screenshot
(kept outside Git because it is copyrighted game output). The screenshot shows
the main menu immediately after Circle or Start with exactly 11 choices:
`GAME MODE`, `EVENT MODE`, `LESSON MODE`, `TRAINING`, `EDIT`, `DATA BANK`,
`ARCADE LINK`, `RECORDS`, `OPTION`, `GALLERY MODE`, and `INFORMATION`.

The state-1 callback triple independently matches that observation:

- **Enter `FUN_8004bd2c`** (136 bytes) sets `DAT_800f2908=0x1c`, whose
  entry in the previously dumped 42-name table is `PUSH START`; loads the
  `title_25` and `hbota_25` resources through `FUN_8004d010`; initializes
  an 11-entry enabled selector through `FUN_800535b0`; and resets its local
  fields.
- **Update `FUN_8004b654`** (428 bytes) performs the initial framebuffer
  clear, calls `FUN_80050e5c`, and maps its result to the next outer state.
  `FUN_80050e5c` handles Up/Down newly-pressed edges on either controller,
  confirms with Start or Circle (`0x820`), draws the 11-entry selector, and
  returns a distinct code for each selected row. After 900 inactive frames it
  returns code 13, which the outer callback maps back to state 0. The
  repository owner confirms from runtime observation that reaching this
  timeout returns to the Attract Loop.
- **Exit `FUN_8004bdb4`** (56 bytes) posts shutdown/transition events and
  calls the currently empty `FUN_8004d078` cleanup hook.

The selection mapping is exact: menu indices 0..10 return codes
`1,2,3,4,5,6,7,9,10,12,11`; `FUN_8004b654` maps those to outer states
`2,2,3,4,5,12,6,7,8,13,9`. Thus Game and Event Mode deliberately share
state 2 with different setup flags, while the remaining visible choices each
have their own destination. This is sufficient static and visual evidence to
identify outer state 1 as the **main menu on the title/PUSH START screen**.

# Manual review: outer state 2 owns the STYLE/CHARA/MUSIC selector

Reviewed by hand on 2026-07-15 with Ghidra 12.1.2,
`DumpJumpTable.java`, and `DumpFunctionDetail.java`, following the main
menu's confirmed `GAME MODE`/`EVENT MODE → DAT_80105124 state 2` mapping.
The previously unrecognized outer callback triple is `FUN_8004bdec`
(enter), `FUN_8004b800` (update), and `FUN_8004be30` (exit). It delegates
to a 15-state child through `FUN_8006fe7c`/`FUN_8006ffd8`/`FUN_80070154`,
using enter/update/exit arrays at `0x800def08`/`0x800def44`/`0x800def80`.

Child state 0 is a `PLAY START` transition. Child state 1 owns a further
six-state selector through `FUN_80075580`/`FUN_80075604`/`FUN_800756ac`,
with arrays at `0x800defe8`/`0x800df000`/`0x800df018`. Its screen-entry
callbacks provide exact identities by writing the known screen-name index:

- `FUN_800756f0`: substate 0, `DAT_800f2908=9` = `STYLE SEL`.
- `FUN_800757e0`: substate 1, `DAT_800f2908=10` = `MODE SEL`.
- `FUN_80075840`: substate 2, `DAT_800f2908=11` = `CHARA SEL`.
- `FUN_800754b4`: substate 3, `DAT_800f2908=12` = `MUSIC SEL`.
- `FUN_80075a40`: substate 4, `DAT_800f2908=23` = `LINK START`.
- `FUN_80075ae0`: terminal substate 5, return-only no-op.

The central router `FUN_80075af8` confirms the graph rather than leaving it
to screenshot ordering: `STYLE(0) → LINK START(4)`;
`LINK START(4) → CHARA(2)` when config byte
`PTR_DAT_800e0b18[0x98] == 1`, otherwise directly to `MUSIC(3)` after
initializing default player/character fields; `CHARA(2) → MUSIC(3)`; and
`MUSIC(3) → terminal(5)`. This matches the owner's consecutive runtime
captures while also exposing the invisible/interstitial router and the
character-select skip path. `MODE SEL` is present in the shared selector,
but the reviewed router has no normal transition into substate 1.

Following the selector's terminal path completes the next part of the static
screen graph. Child state 1 returns state 5; state 5's entry
`FUN_8006efd4` writes screen index 1, correctly `PREPARE` (the earlier
`INTRO` label was an off-by-one documentation error), and its update
`FUN_80070ab4` returns state 4 after 28 frames. State 4's entry
`FUN_8006f1fc` writes index 2, exactly `INTRO`. Its update
`FUN_8006f380` has two outgoing destinations: state 6 for one
`FUN_8007fdec` result and state 7 on timeout/normal completion.

The destination identities are now direct rather than inferred from genre
flow. State 6 entry `FUN_80070bc4` writes index 4, `DANCING`; its update is
`FUN_8006f49c` and exit is `FUN_8006f6cc`, which computes/stores per-player
result data. State 7 entry `FUN_8006f784` writes index 5, `STAGE END`; its
update/exit callbacks are `FUN_8006f888`/`FUN_8006fa30`, including timed
transition work and result/stat accumulation. Thus the ordinary reviewed
path is now `MUSIC SEL -> PREPARE -> INTRO -> DANCING -> STAGE END`, with
the precise human meaning of every timeline condition kept conservative.
The now-reviewed `FUN_8007fdec` classifies the per-player timeline as
`-1` prestart/not ready, `0` active, `1`/`2` normal terminal conditions,
and `-2` a special terminal condition. Calling `-2` specifically a gameplay
failure would still be inference, so the map does not assert that name.

The post-stage graph is also statically closed through the child terminal:

- State 8 is `RESULT` (`FUN_80070bf8`/`FUN_80070c70`/`FUN_80070d04`).
  Completion returns state 1 when another selected stage exists, otherwise
  state 11.
- State 11 is `PRE_END` (`FUN_80070f04`/`FUN_80070f54`/`FUN_80071004`).
  It either returns selector-owner state 1 or advances to state 12.
- State 12 is `LINK END` (`FUN_8007102c`/`FUN_80071084`/`FUN_800710f8`).
  It branches to state 9, 10, or 13 according to session flags and
  `FUN_80093e44`.
- State 9 is `GAME_OVER` and returns terminal state 14 after its fade.
  State 13 is `NAME ENTRY`, then returns state 10. The now-exact state-10
  entry `FUN_80070d9c` writes index `0x15`, `ENDING`; its update waits for
  the ending subsystem, then returns terminal 14.

Returning state 1 does not always mean `MUSIC SEL`: `FUN_80075580` starts
selector substate 3 (`MUSIC SEL`) exactly when
`(DAT_800f2914 > 0 || DAT_800f291f > 1) && DAT_800f291c == 1`; otherwise
it starts substate 0 (`STYLE SEL`). When child state 14 is reached,
`FUN_8004b800` closes outer state 2 by returning outer state 0 or 10 according
to `PTR_DAT_800ac8e8[0xff]`.

That outer bifurcation is now resolved. `PTR_DAT_800ac8e8` points to
`0x80010000`, making the byte `0x800100ff`. Direct xrefs are exactly two
reads (`FUN_8006ffd8`, `FUN_8004b800`), one clear (`FUN_800535b0`), and one
set (`FUN_8002313c`), plus the whole-block `bzero` in `FUN_8002216c`.
Operationally it is a latch: zero lets the 15-state child run, and selects
outer state 0 if the byte is still zero when the child reports completion;
nonzero forces child state 14 and selects outer state 10. This behavior is
proven without proposing a source-level field name.

Both conditional destinations share outer-state-2 cleanup through
`FUN_8004be30 -> FUN_80070154`. With the latch clear, outer state 0's
constructor selects subordinate state 6; `FUN_800547f4` writes screen index
`0x25`, `RANKING` — correcting the earlier off-by-one `PLAY DEMO` label.
This describes that conditional entry path, not the runtime-observed start of
the cyclic presentation. With the latch set, the new outer-state callbacks
establish:

- Outer 10: `FUN_8004c0f0` / `FUN_8004c11c` / `FUN_8004c154`. It runs
  `FUN_80052534`'s radial 4x3-cell transition for 42 updates, then returns 11.
- Outer 11: `FUN_8004c15c` / `FUN_8004c184` / `FUN_8004c1b4`. It runs
  `FUN_80099b40`'s 512x480 then 640x480 restoration pipeline, then returns
  outer state 1, the confirmed title/PUSH START main menu.

The latch is set unconditionally by the exits from child `GAME_OVER` state 9
and `ENDING` state 10. `FUN_8006e43c` can also set it during
PLAY START, selector, or RESULT after Cross is held for more than `0x3c`
frames (or through a separate immediate RESULT/session-flag condition).
Main-menu entry `FUN_8004bd2c -> FUN_800535b0` clears it again.
Consequently, the two mapped end-state routes set the latch before outer
dispatch and take the outer-10/menu branch; outer 0 remains the exact
clear-latch destination, not a claim that every ordinary game completion
uses it.

An exhaustive review of all 15 update callbacks makes that stronger: the only
natural transitions into terminal 14 are states 9 and 10, and the generic
tick invokes their latch-setting exits before `FUN_8004b800` reads the byte.
The forced-terminal path requires the latch to be nonzero already. Therefore
no well-formed player-session path reaches outer 0/RANKING; that edge is a
defensive/historical conditional, not part of the playable session graph.

Outer state 0's own seven-state attract child is now mapped directly. Rotated
to the runtime-observed loop boundary, it is `WARNING(0) -> TITLE(2) -> PLAY
DEMO(5) -> CATCH DEMO(3) -> CATCH DEMO(4) -> RANKING(6) -> WARNING(0)`.
State 1 is a second RANKING path returning to WARNING. `FUN_80053ed8` does
choose state 6 by default (and state 0 when inherited `DAT_800f2908` is
`0x1c`/`0x1d`), but 11 consecutive runtime captures establish WARNING as the
first visible point and RANKING as the last presentation before WARNING
repeats. Thus the constructor choice must not be reported as the observed
start of the loop. The real `PLAY DEMO` index is `0x24`, not `0x25`, and its
triple is `FUN_80054618`/`FUN_800546d8`/`FUN_800547cc`.

The captures give this non-negotiable visible order: `WARNING -> KONAMI ->
BEMANI -> Dancemania/intercord japan/TOSHIBA EMI promotional presentation ->
DDR 5thMIX title presentation -> HOW TO PLAY -> DEMONSTRATION -> BEST RANKING
-> WARNING`. Multiple captures are intermediate changes within a presentation,
not evidence for additional child states.

`FUN_8004c27c` resolves the state-0 ambiguity. It owns six sequential
resource IDs and durations: `0x7e/300`, `0x7b/300`, `0x79/300`,
`0x7d/260`, `0x7a/260`, and `0x7c/20`, followed by a terminal wait. Their
start counters are 1, 301, 601, 901, 1161, 1421, and 1441; the earliest
state-2 transition is counter 1506. Correlating that fixed order with the
captures maps the resources to WARNING, KONAMI, BEMANI, the sponsor card,
the Dancemania montage, and a short bridge. `DAT_800f2908` remains
`0x1d/WARNING` throughout, proving that the company cards are not separate
dispatcher states.

State 2 is a single 481-tick TITLE presentation: fade-in at 1–31, stable
brightness at 32–448, fade-out at 449–469, then black through the transition
to state 5. Captures 06 and 07 are visual phases of this one state, without a
code-level boundary between them.

TITLE requests load group 6. The resulting CD descriptor at `DAT_800ad590`
is size `0x2e58`, absolute LBA `0x7a80`; that falls inside `READ_DT.BIN` at
relative offset `0x1630000`. The extracted range begins with literal
`"inst demo"`, has SHA-256
`3dbf4bfa55caf2eb9e8e2db8cef4286441fc9e36850b1dca72515ef89060b0bb`,
and loads at `0x801e4000`. PLAY DEMO calls its init/update/exit at offsets
`+0x13c`/`+0x1e8`/`+0x284`; decoded calls include `GsSetFlatLight`,
`GsSetLightMode`, and `GsSetAmbient`. This proves executable 3D rendering
rather than prerecorded video. **The 2026-07-16 raw import closes the pending
boundary question**: `FUN_801e413c` installs a command list at `0x801e66c4`,
`FUN_801e41e8` runs 96 non-jump callbacks plus one explicit jump for exactly
1,910 scripted ticks, and
returns complete at the null callback at `0x801e69cc`; `FUN_801e4284` is the
cleanup entry. State 2 has no HOW TO substate and enters this overlay directly,
while states 3/4 begin the later DEMONSTRATION, so runtime order now confirms
state 5 as HOW TO PLAY. The overlay functions live in a separate raw program
and are not included in this main-executable CSV's 2,124-function count.

Literal gameplay reuse is now proven elsewhere: states 3 and 4, both index
`0x23/CATCH DEMO`, implement the visible gameplay DEMONSTRATION after state
5. State 3 selects and loads one of ten music records, starts audio, and
advances after 16 ticks. State 4 configures both players and shares
`FUN_8007fc8c`, the large per-frame `FUN_8007fdec`, and `FUN_80081e90`
with the normal DANCING route, then fades before state 6. State 6 alone loads
and renders BEST RANKING before returning to WARNING. Thus the state-5
`inst demo` overlay's own chart/judgment/scoring reuse remains unproven, but
the following CATCH DEMO path demonstrably reuses gameplay internals.

`DumpFunctionDetail.java`, `DumpBytes.java 0x8001bdf4 56`, and targeted
xref dumps provide the reproducible evidence. Seven existing helpers were
promoted after this deeper review. The current map has 2,124 functions, with
102 manual rows and 510,344 function-body bytes. The exact hierarchy, timers,
and runtime correlation are recorded in
`/docs/games/ddr-5th-mix-jp-screen-flow.md`.

# What this map is not yet

- No `namespace` values are populated — PsyQ signature matches landed in the
  global namespace rather than grouped per library object file. Worth fixing
  once someone maps which PsyQ `.gdt`/object each match came from.
- Only 265 rows currently have `source_status` above
  `decompiler_output_only`, out of 2,124. Before trusting any other
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
   rows (including all manually reviewed rows above) since it always regenerates from scratch
   — there is no merge step yet. Diff before overwriting, or extend the
   script to preserve `confidence >= manual` rows.

# Citations

[1] [/docs/foundations/symbol-map-schema.md](/docs/foundations/symbol-map-schema.md)
[2] [/docs/tooling/ghidra-setup.md](/docs/tooling/ghidra-setup.md)
[3] [/docs/games/ddr-5th-mix-jp.md](/docs/games/ddr-5th-mix-jp.md)
