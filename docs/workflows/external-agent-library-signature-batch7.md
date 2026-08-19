---
type: Workflow
title: External library-signature reconstruction — batch 7
description: A fixed 65-function package of 65–96-byte PsyQ-signature functions for isolated reconstruction and independent audit.
tags: [delegation, psyq, mips, reconstruction, byte-match, audit]
timestamp: 2026-07-29T16:00:00-04:00
---

# Status

`ready`

This package delegates the next mechanically bounded tier of main-executable
functions, the first slice of the 65-byte-and-larger backlog (391 functions,
too large for one package; sliced into sub-ranges starting here). Delivery by
the external agent remains `candidate_for_audit`; only a separate
clean-checkout audit may accept and merge it under
[/docs/workflows/external-agent-acceptance.md](/docs/workflows/external-agent-acceptance.md).

# Fixed base and branch

- Base commit: `bc837fb3af22f8845b25030dc2116ece458e1437`.
- Dedicated delivery branch:
  `agent/library-signature-reconstruction-batch7`.
- Work in a separate clone or worktree created from the fixed base. Do not use
  the integrator's working directory.
- Push only the dedicated branch. Never merge into `master`, force-push,
  rebase shared work, or modify another worktree.

# Lawful input and toolchain

- Target: Dance Dance Revolution 5th Mix (Japan), `SLPM_868.97_1`.
- Required PS-X EXE SHA-256:
  `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
- GNU target: `mipsel-none-elf`.
- GCC version: `14.2.0`.
- GNU binutils version: `2.43`.
- The executable must be supplied lawfully by the operator and remain under an
  ignored working path. Do not commit it, slices of it, disassembly dumps,
  extracted assets, SDK material, or generated build artifacts.

# Exact owned inventory

The owned set is exactly the rows in the fixed-base
`docs/games/ddr5thmix/symbol-map.csv` satisfying all of these predicates:

- `confidence == library_signature`;
- `source_status == decompiler_output_only`;
- `overlay == main`;
- non-empty `proposed_name`;
- `address` begins with `0x8`;
- integer `size` is in the inclusive range 65–96 bytes.

Sorted lexically by `address`, the canonical UTF-8 inventory is one
`address,size,proposed_name` row per function, LF-terminated. At the fixed base
it contains **65 unique functions / 5,300 bytes** and has SHA-256:

`03a34c9dc15c2000437abfde4c3e065429a55a8896320b1cf38f1bbe3f07f3c5`

Reproduce the inventory from the package root:

```powershell
$rows = Import-Csv docs/games/ddr5thmix/symbol-map.csv |
    Where-Object {
        $_.confidence -eq 'library_signature' -and
        $_.source_status -eq 'decompiler_output_only' -and
        $_.overlay -eq 'main' -and
        $_.proposed_name -and
        $_.address -match '^0x8' -and
        [int]$_.size -ge 65 -and
        [int]$_.size -le 96
    } |
    Sort-Object address

$inventory = (($rows | ForEach-Object {
    "$($_.address),$($_.size),$($_.proposed_name)"
}) -join "`n") + "`n"

$sha256 = [Convert]::ToHexString(
    [Security.Cryptography.SHA256]::HashData(
        [Text.Encoding]::UTF8.GetBytes($inventory)
    )
).ToLowerInvariant()

if ($rows.Count -ne 65 -or
    ($rows | Measure-Object size -Sum).Sum -ne 5300 -or
    $sha256 -ne
        '03a34c9dc15c2000437abfde4c3e065429a55a8896320b1cf38f1bbe3f07f3c5') {
    throw 'Batch-7 inventory does not match the fixed contract.'
}
```

This deliberately excludes every function 64 bytes or smaller (already
reconstructed in Batches 3–6) and every function 97 bytes or larger (left for
a later sub-range of the same 65-byte-and-larger backlog). Do not substitute,
rename, add, or drop functions. Inferred `<OBJECT>_OBJ_<offset>` labels are
inventory identities only; do not promote them into claims about original
PsyQ filenames, semantic object identity, or confirmed linked-object
boundaries.

# Allowed paths

The delivery diff against the fixed base may modify only:

- `src/ddr5thmix/LibrarySignatureBatch7.s` (new);
- `config/ddr5thmix/build.json`;
- `docs/games/ddr5thmix/symbol-map.csv`;
- `README.md`;
- `docs/log.md`.

Use one assembly source file with one address-labelled section per owned
function. Do not edit prior reconstructed sources, workflows, tools, maps,
headers, or game-owned modules. If the package cannot be completed within this
allowlist, report the blocker instead of expanding scope.

# Reconstruction rules

1. The source file must begin with `.set noreorder`, `.set noat`, and
   `.set nomacro`, exactly as every prior batch source does. Omitting this
   block was the sole cause of 89/92 first-pass mismatches while recovering
   Batch 5 (the assembler's default reorder/macro-expansion mode inserts
   extra instructions); treat its absence as an automatic pre-delivery
   rejection.
2. Add every new manifest entry to `config/ddr5thmix/build.json` *before*
   running any verification. Batch 6's first pass failed 46/46 purely because
   `Invoke-FunctionMatch.ps1` requires exactly one manifest entry per
   function; manifest entries and source must land together, never source
   first.
3. Recover each bounded function from the hash-gated executable and express it
   as readable MIPS assembly using instruction mnemonics, local labels,
   declared external symbols, and explicit load/branch delay slots. When
   disassembling directly from raw executable bytes, use `-M no-aliases` (or
   equivalent) so `or $rd,$rs,$zero` and `addu $rd,$rs,$zero` are never
   collapsed into the ambiguous `move` display.
4. The declared section must reproduce the complete CSV range exactly,
   including the instruction in every terminal branch or return delay slot.
   Do not accept a matching prefix shorter than the declared function size.
5. Do not use `incbin`, reference slices, generated byte arrays, raw
   `.byte`/`.word` opcode transcription, `.rept`, or macros as shortcuts around
   source reconstruction. `break` is the sole documented exception where GNU
   `as` has no simpler equivalent mnemonic form, and even there use the
   assembler's `break code1,code2` mnemonic, never a raw `.word` encoding of
   it.
6. Never use the `move` pseudo-instruction for a register-to-register copy.
   GNU binutils 2.43 always expands `move $rd,$rs` to `or $rd,$rs,$zero`
   (funct `0x25`), but this toolchain's lawful binary was built with a
   compiler that emits register moves as `addu $rd,$rs,$zero` (funct `0x21`).
   Write `addu $rd,$rs,$zero` explicitly for every such copy, including copies
   from `$zero`.
7. A branch or jump whose target lands outside the current function's own
   byte range is a cross-section reference: declare it through the manifest's
   `symbols` mechanism (a `.globl`'d name mapped to its absolute runtime
   address in a `symbols` block), never as a raw numeric target. Prefer the
   real name when the target is the start address of another function owned
   by this same batch; otherwise use a generic `sym_XXXXXXXX` placeholder.
   This applies uniformly to `j`/`jal` (26-bit absolute) and to conditional
   branches (16-bit PC-relative) alike.
8. These functions are larger (65–96 bytes, roughly 16–24 instructions) than
   any prior batch and more likely to contain internal loops, multi-way
   branches, or nested control flow. Re-check every local-label target still
   falls strictly within `[0, size)` and that no two owned functions'
   instruction streams were transposed.
9. Add exactly one manifest entry for each of the 65 functions. Before
   delivery, every entry must record source, section, runtime address, size,
   `reference_sha256`, and `built_sha256` using the existing schema; the two
   hashes must be equal.
10. Run `Invoke-FunctionMatch.ps1` separately for every function. A row may be
    promoted only when the report records equal sizes, both hashes, pinned
    tool versions, and `byte_match: true`.
11. Promote exactly those 65 CSV rows to `confidence = verified` and
    `source_status = hand_written_source`. Preserve every other field and
    every unrelated row. Each promoted row's durable evidence must record the
    command/tool, lawful executable hash, toolchain versions, exact size, and
    equal reference/built SHA-256 directly in `verification_evidence` — do
    not defer this text to a later audit pass.
12. Do not change proposed names or add semantic descriptions unsupported by
    primary evidence. Assembly byte identity does not prove high-level
    behavior or original-source equivalence.

# Required verification

For every owned function:

```powershell
pwsh -File tools/build/Invoke-FunctionMatch.ps1 `
    -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 `
    -Function <owned-name>
```

The agent must additionally verify:

- exact set equality between the fixed-base inventory, new manifest entries,
  assembly sections, generated per-function reports, and promoted CSV rows;
- 65/65 `byte_match: true`, with exactly 5,300 selected bytes;
- no duplicate manifest functions, sections, addresses, or promoted rows;
- all 65 manifest entries contain equal non-empty reference/built hashes;
- every reconstructed section length equals its CSV and manifest size, with no
  omitted return or branch delay-slot instruction;
- no `move` pseudo-instruction and no raw `.byte`/`.word` opcode transcription
  anywhere in the new source;
- the source begins with `.set noreorder` / `.set noat` / `.set nomacro`;
- every post-change verified CSV identity has exactly one corresponding
  manifest identity, retaining the already-documented `SetTransMatrix` alias
  exception and introducing no new exception;
- `screen-selector`, `mode-control`, and `runtime-core` still pass
  `Invoke-ModuleMatch.ps1`;
- `git diff --check` passes (including no stray trailing blank line at EOF);
- the committed path set equals the allowlist;
- no prohibited binary, reference slice, extracted asset, key, proprietary
  SDK material, generated report, or build artifact is tracked.

At this fixed base, successful completion should move the main-executable
inventory from 587 to **652 verified functions** (27.6% to **30.7%**), reduce
`library_signature` from 558 to **493**, reduce `decompiler_output_only` from
1,438 to **1,373**, and increase exact main-executable reconstruction from
28,000 to **33,300 bytes**. Overall main-plus-overlay totals should become
**722 functions / 42,672 selected code bytes**. Derive and check these figures
mechanically; do not copy them into README or the log if the measured inventory
differs.

# Mandatory self-audit before delivery

Prior passes each required independent corrections or found and fixed
process defects before delivery: Batch 3 omitted manifest hashes and a return
delay slot; Batch 4's recovery found `move`-pseudo mismatches and a wrong
immediate; Batch 5's first pass had 89/92 mismatches from a missing `.set`
directive block, and its audit found a stray trailing blank line; Batch 6 was
the first clean pass on every gate. Before committing, fail the package if
any of these defects exists anywhere in the 65 owned entries:

1. missing `.set noreorder` / `.set noat` / `.set nomacro` at the top of the
   source file;
2. a manifest entry missing for any owned function at verification time;
3. missing or unequal `reference_sha256` / `built_sha256`;
4. built/reference length smaller than the CSV/manifest function size;
5. absent final delay-slot instruction;
6. any `move` pseudo-instruction in the new source;
7. any raw `.byte`/`.word` opcode transcription in the new source;
8. a cross-section branch/jump target encoded as a raw number instead of a
   `symbols`-backed name;
9. a local label placed outside `[0, size)` for its owning function;
10. a count-only equality claim without exact identity-set comparison;
11. a promoted CSV row without durable per-function evidence recorded
    directly in `verification_evidence`;
12. `git diff --check` failures, including trailing whitespace/blank lines.

# Delivery

Make scoped commits, push the dedicated branch immediately, and report:

- base commit, branch, commit IDs, and exact committed paths;
- lawful input hash and tool versions;
- canonical owned-inventory count, byte total, and SHA-256;
- all 65 per-function reference/built hashes and match results;
- identity-set equality and section-length results;
- pre/post confidence and source-status counts;
- module regression results;
- allowlist, `git diff --check`, and prohibited-artifact checks;
- uncertainties, negative results, or blocked functions;
- final status `candidate_for_audit`.

The external agent must not describe the package as accepted, completed, or
merged. The independent auditor reruns every gate from a clean checkout,
records any correction as a separate commit, and alone may integrate it.
