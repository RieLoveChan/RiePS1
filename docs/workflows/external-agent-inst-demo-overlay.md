---
type: Work Package
title: External agent package — DDR 5th Mix HOW TO PLAY overlay
description: Isolated long-running package to inventory, reconstruct, and verify the complete executable code surface of the inst demo overlay.
tags: [ps1, ddr5thmix, delegation, overlay, decompilation, state-machine]
timestamp: 2026-07-19T00:00:00-04:00
status: ready
branch: agent/inst-demo-overlay
---

# Objective

Turn the complete DDR 5th Mix `inst demo` executable overlay into a
reproducible, game-owned reconstruction module. Inventory the full overlay,
separate code from data, reconstruct every identified function and unique
script callback, and prove each accepted code range byte-for-byte against the
lawfully supplied local `READ_DT.BIN` range.

This is deliberately a large, long-running package. Continue until the full
definition of done is satisfied. The primary agent is concurrently rebuilding
the main executable's 15-state gameplay-session machine, which is strictly
outside this package.

# Read before working

Read these files completely, in this order:

1. `AGENTS.md`
2. `spec.md`
3. `docs/index.md`
4. `docs/games/ddr5thmix/revision-manifest.md`
5. `docs/games/ddr5thmix/screen-flow.md`
6. `docs/games/ddr5thmix/symbol-map.md`
7. `docs/tooling/ghidra-setup.md`
8. `docs/workflows/function-byte-match.md`
9. `docs/foundations/legal-provenance.md`

Inspect recent `git log`, `git status`, and remote branches before editing.

# Mandatory Git isolation and commit ownership

Work from a separate clone or worktree based on current `origin/master`. Create
and use branch `agent/inst-demo-overlay`; do not work directly on `master`.
Record the initial commit and `git status --porcelain` in the final report.

Commit **only files you deliberately created or edited for this package**.
This rule applies even when another agent's changes are visible in the shared
filesystem:

- Never use `git add .`, `git add -A`, a broad glob, or a bulk commit command.
- Stage each intended path explicitly with `git add -- <path>...`.
- Before every commit, inspect `git diff --cached --name-only`,
  `git diff --cached --stat`, and the full `git diff --cached`.
- If the staged set contains a file you did not deliberately change for this
  package, unstage it without modifying or discarding its working-tree content.
- Never cherry-pick, merge, amend, squash, reset, clean, or otherwise absorb
  the primary agent's gameplay-session work.
- Push only `agent/inst-demo-overlay`. Do not merge or push to `master`.
- Report every commit hash and the exact committed path list when finished.

Shared documentation or manifest files may be edited when the overlay result
requires it, but only after rebasing the isolated branch and preserving current
content. If integration-sensitive totals cannot be updated without conflict,
leave a precise integration note in the overlay concept instead of guessing.

# Lawful input and fixed boundary

The only accepted reference is a user-supplied lawful `READ_DT.BIN` whose
bounded overlay range is:

| Property | Required value |
|---|---|
| File offset | `0x1630000` |
| Length | `0x2e58` / 11,864 bytes |
| SHA-256 of bounded range | `3dbf4bfa55caf2eb9e8e2db8cef4286441fc9e36850b1dca72515ef89060b0bb` |
| Runtime base | `0x801e4000` |
| Init entry | `0x801e413c` |
| Update entry | `0x801e41e8` |
| Exit entry | `0x801e4284` |

Use `/tools/ghidra/Import-RawOverlay.ps1` and the exact import recipe in
`/docs/tooling/ghidra-setup.md`. Keep the extracted overlay, reference slices,
Ghidra project, reports, and other generated copyrighted bytes under ignored
local paths. Never commit `READ_DT.BIN`, the raw overlay, BIOS/SDK material,
keys, extracted artwork/audio, reference byte arrays, or generated slices.

# Known evidence to reproduce, not assume

The existing analysis says that update executes 96 non-jump callbacks plus one
explicit jump, with 24 waits of 60 ticks, five waits of 80 ticks, two 20-tick
interpolations, and six 5-tick interpolations. It totals exactly 1,910 scripted
ticks before the null callback at `0x801e69cc`. The overlay owns HOW TO PLAY
and uses executable MIPS and 3D-lighting calls rather than prerecorded video.

Reproduce these facts from the hash-gated local overlay and record commands and
results. Correct existing documentation if stronger evidence disproves any
detail; do not silently inherit names or boundaries.

# Exact technical boundary

This package owns runtime range `0x801e4000`–`0x801e6e57`, including:

- all executable MIPS functions reachable from the three supplied entries;
- all unique command-list callbacks, including targets reached by explicit
  jumps or function pointers;
- any additional in-range functions identified by aligned disassembly, xrefs,
  pointer tables, or call targets;
- the command list and every other in-range data/table region as an inventory
  and typed reconstruction where evidence permits;
- overlay-specific build/verification tooling needed to compare a lawful raw
  overlay range rather than the main PS-X EXE.

Do not absorb out-of-range library or main-executable callees into the module.
Represent them as external symbols with evidence-backed addresses. Do not edit,
reconstruct, or claim the main executable's 15-state gameplay-session routers,
their callback tables, or the already completed `mode-control`, `runtime-core`,
and `screen-selector` modules.

# Reconstruction contract

- First produce a complete range map covering all 11,864 bytes, classifying
  each non-overlapping interval as header, code, pointer table, command list,
  structured data, string, padding, or unresolved data. Unknown is acceptable;
  an uncovered gap is not.
- Inventory functions with start, exclusive end, size, discovery evidence,
  callers/callees, role, confidence, and reconstruction status. Account for
  delay slots and distinguish CPU instructions from GTE/COP2 operations.
- Reconstruct every identified in-range function and unique callback under
  `src/ddr5thmix/overlays/inst_demo/`. Prefer semantic C where it matches; use
  narrow semantic MIPS assembly where compiler layout requires it. Never embed
  copied reference bytes as `.byte`, `.word`, arrays, incbins, or equivalent.
- Encode tables from semantic symbols and fields. Preserve unresolved data as
  documented unresolved ranges; do not disguise raw reference bytes as source.
- Add a named `inst-demo-overlay` module and a hash-gated verifier that accepts
  the lawful local `READ_DT.BIN` or extracted ignored overlay. Reuse existing
  build scripts where practical and keep generated output ignored.
- Run an individual exact comparison for every accepted function and an
  aggregate comparison over the selected reconstructed code ranges. Record
  source/reference SHA-256, sizes, commands, GCC/binutils/Ghidra versions, and
  negative attempts.
- Claim only selected-function or selected-code-range byte identity unless all
  code and data bytes across the 11,864-byte overlay are semantically rebuilt
  and compared. A complete inventory is not a whole-overlay byte match.
- Use `verified`/`hand_written_source` only for exact matches. Keep inference,
  decompiler output, and structurally reviewed functions visibly distinct.

# Expected durable outputs

Use overlay-specific paths so concurrent work stays separable. Expected output
includes, adapting names only when repository conventions require it:

- `config/ddr5thmix/inst-demo-overlay.json` or an equivalent manifest section;
- `src/ddr5thmix/overlays/inst_demo/` sources and headers;
- `docs/games/ddr5thmix/inst-demo-overlay.md` as the main OKF concept;
- a machine-readable overlay function/range map under `docs/games/`;
- overlay-specific verification scripts under `tools/build/` if the existing
  verifier cannot safely handle raw overlay input;
- appropriate relative links in index files and a newest-first `docs/log.md`
  entry for meaningful documentation changes.

Preserve unknown OKF frontmatter fields. Use bundle-root links inside concepts
and relative links in index files.

# Persistence and blockers

Do not stop after inventory, analysis, a progress report, the three public
entries, or the easy callbacks. Iterate through the entire package until every
definition-of-done item is met. Difficult matching, compiler differences, and
failed approaches are expected work, not blockers; document negative attempts
durably and continue with another bounded function while investigating them.

Stop early only for a genuine blocker requiring new authority, missing lawful
input, or an external-state change that cannot be resolved safely. Before
stopping, exhaust in-scope alternatives and record the precise evidence,
commands, attempts, and smallest action needed to resume. Never bypass legal
or provenance gates to make progress.

# Definition of done

The package is complete only when:

1. A non-overlapping map accounts for the full `0x2e58`-byte overlay range.
2. Every identified in-range function and unique callback is inventoried.
3. Every identified function has project-authored tracked source and passes an
   individual byte comparison, or a precisely documented technical blocker
   explains the unmatched function without falsely promoting it.
4. The `inst-demo-overlay` aggregate selected-code verifier passes and reports
   exact function and byte totals.
5. The 97-step command flow and 1,910-tick result are independently reproduced
   or corrected with stronger reproducible evidence.
6. Layouts, external symbols, unresolved ranges, confidence, negative attempts,
   hashes, tool versions, and reproduction commands are durable documentation.
7. Relevant verification/regression commands and `git diff --check` pass.
8. The staged diff contains only deliberately worked package files and no
   copyrighted/proprietary inputs, extracted assets, or raw reference blobs.
9. Coherent commits are pushed to `origin/agent/inst-demo-overlay`, never
   directly to `master`.

The final report must list the base commit, all result commits, committed paths,
inventoried function count, exact-matched function/byte total, aggregate result,
unresolved data ranges, remaining uncertainties, and commands another agent can
run to reproduce the result.
