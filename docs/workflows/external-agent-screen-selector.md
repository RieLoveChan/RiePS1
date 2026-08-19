---
type: Work Package
title: External agent package — DDR 5th Mix screen selector
description: Non-overlapping reconstruction package for the six-state STYLE/CHARACTER/MUSIC selector while runtime-core is developed separately.
tags: [ps1, ddr5thmix, delegation, decompilation, state-machine]
timestamp: 2026-07-19T00:00:00-04:00
status: completed
result_commit: 8a6ba1d
---

# Objective

Create and verify a game-owned `screen-selector` module for the nested
six-state selector used by the DDR 5th Mix gameplay session. Reconstruct every
unique callback owned by its enter/update/exit tables plus its central
next-state router, and prove every accepted function byte-for-byte against the
lawfully supplied `SLPM_868.97` executable.

This package is intentionally separate from the concurrently developed
`runtime-core` module.

# Read before working

Read these files completely, in this order:

1. `AGENTS.md`
2. `spec.md`
3. `docs/index.md`
4. `docs/games/ddr5thmix/revision-manifest.md`
5. `docs/games/ddr5thmix/screen-flow.md`, especially "State-2 game
   session and its six-state selector"
6. `docs/games/ddr5thmix/symbol-map.md`
7. `docs/games/ddr5thmix/globals.md`
8. `docs/workflows/function-byte-match.md`
9. `docs/foundations/legal-provenance.md`

Start from a clean, current checkout. Inspect recent `git log` and
`git status` before editing.

# Exact boundary

The selector is owned by three flat six-entry callback arrays:

| Role | Table address |
|---|---|
| Enter | `0x800defe8` |
| Update | `0x800df000` |
| Exit | `0x800df018` |

Inventory all 18 table entries with
`tools/ghidra/scripts/DumpJumpTable.java`, deduplicate repeated callback
targets, and record the result before reconstruction.

The known enter callbacks are:

| State | Screen | Function |
|---:|---|---|
| 0 | STYLE SEL | `FUN_800756f0` |
| 1 | MODE SEL | `FUN_800757e0` |
| 2 | CHARA SEL | `FUN_80075840` |
| 3 | MUSIC SEL | `FUN_800754b4` |
| 4 | LINK START | `FUN_80075a40` |
| 5 | terminal/no-op | `FUN_80075ae0` |

The known update callbacks are:

| State | Function | Current evidence |
|---:|---|---|
| 0 | `FUN_80075738` | STYLE SEL to LINK START |
| 1 | `FUN_80075818` | MODE SEL remains in state 1 |
| 2 | `FUN_80075894` | CHARA SEL to MUSIC SEL |
| 3 | `FUN_8007596c` | MUSIC SEL to terminal |
| 4 | `FUN_80075a90` | LINK START to CHARA or MUSIC |
| 5 | `FUN_80075ae8` | Not yet reviewed; delimit it from the table target |

Also include `FUN_80075af8`, the central selector next-state router. The
known minimum is therefore 13 callbacks/router functions; the final count may
increase only for unique targets found in the exit table.

# Reserved concurrent work

Do not reconstruct, edit the source for, or claim any of these
`runtime-core` functions:

- `FUN_8002112c`
- `FUN_8002216c`
- `FUN_80022cf8`
- `FUN_80023744`
- `FUN_8009971c`

Do not broaden the selector package into its 15-state parent, large rendering
or audio callees, gameplay logic, or the HOW TO PLAY overlay. External callees
should normally remain manifest-linked symbols rather than being absorbed into
this module.

# Reconstruction contract

- Treat this as a long-running terminal task: continue working until every
  item in "Definition of done" is satisfied. Do not stop merely to provide a
  progress update, because a function is difficult to match, or because one
  compiler strategy failed. Iterate through direct C, documented constraints,
  and bounded semantic assembly as appropriate, and keep validating as the
  package grows.
- Write durable findings, uncertainties, compiler experiments, and negative
  results into the relevant OKF concepts while working so the owner and other
  agents can inspect the reasoning afterward; do not leave the only useful
  record in transient terminal output or a final chat message.
- Stop early only for a genuine blocker requiring new authority, missing
  lawful input, or an external-state change that cannot be resolved safely
  within this scope. Before declaring a blocker, exhaust reproducible in-scope
  checks and alternatives. Record the exact command, evidence, attempts, and
  smallest user action needed to resume.
- Add project-authored sources under `src/ddr5thmix/`; use a separate
  `screen_selector.h` if shared layouts are required.
- Model only offsets and types demonstrated by instructions and call sites.
  Preserve unknown fields and avoid speculative semantic names.
- Prefer direct C when it matches. If GCC 14.2.0 cannot preserve PsyQ layout,
  use the narrowest semantic inline MIPS or assembly compatibility sequence.
  Do not embed copied reference byte arrays.
- Add every function and external symbol to
  `config/ddr5thmix/build.json`, and add a named `screen-selector` module.
- Run `Invoke-FunctionMatch.ps1` for each function and
  `Invoke-ModuleMatch.ps1 -Module screen-selector` for the aggregate.
- Record the executable hash, Ghidra 12.1.2, GCC 14.2.0/binutils 2.43,
  reproduction command, function size, built/reference SHA-256, negative
  attempts, and comparison result.
- A manual semantic review is not a byte match. Promote a symbol-map row to
  `verified`/`hand_written_source` only after exact comparison succeeds.

# Documentation and shared-file coordination

Create `docs/games/ddr5thmix/screen-selector.md` as an OKF concept and
link it from `docs/games/index.md`. Update the symbol-map CSV/concept,
function-byte-match playbook, nearest `log.md`, global map if new fixed
symbols are required, and README totals only after verification.

`config/ddr5thmix/build.json`, the symbol map, README, and logs are shared
files that the concurrent runtime-core work may also change. Pull/rebase before
editing their final form, preserve both modules' entries, resolve conflicts
normally, and rerun the aggregate selector verifier after resolution. Never
force-push, reset shared history, or discard another agent's changes.

# Definition of done

The package is complete only when:

1. All 18 table entries and unique callback targets are inventoried.
2. Every in-scope unique function has a tracked source and exact individual
   byte match.
3. The `screen-selector` aggregate module passes with a recorded function and
   byte total.
4. Symbols, layouts, limitations, negative attempts, and hashes are documented.
5. `git diff --check` passes and the staged diff contains no copyrighted
   input, generated reference slices, keys, BIOS, SDK, or extracted assets.
6. The coherent unit is committed and pushed to `origin` per `AGENTS.md`.

Report the commit hash, final function/byte count, aggregate result, and any
remaining uncertainty. Do not describe the package as a whole-object or
whole-executable match.
