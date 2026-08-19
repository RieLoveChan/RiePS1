---
type: Workflow
title: External library-signature reconstruction — batch 10
description: A fixed 151-function package of 129–255-byte PsyQ-signature functions for isolated reconstruction and independent audit.
tags: [delegation, psyq, mips, reconstruction, byte-match, audit]
timestamp: 2026-08-03T12:00:00-04:00
---

# Status

`completed`

Unlike Batches 1–9, this package was executed directly in the integrator's
own working tree rather than delegated to an external agent, at the
repository owner's explicit direction. It still follows the fixed-base,
exact-inventory, hash-gated contract defined below, and every rule and gate
in this document was satisfied and verified with the project's own
`Invoke-FunctionMatch.ps1`/`Invoke-ModuleMatch.ps1` tooling before commit.
There is no separate `candidate_for_audit` branch or independent
clean-checkout audit step for this batch; the verification results are
recorded directly in `docs/log.md` and the promoted CSV rows'
`verification_evidence`.

This package covers the next mechanically bounded tier of main-executable
functions, the third sliced sub-range of the 65-byte-and-larger backlog
(Batch 7 took 65–96 bytes, Batch 8 took 97–128 bytes). Batch 9 was a
different kind of package (every `tool_heuristic` row from the gap sweep,
no size filter); this batch returns to the original per-size-tier pattern
of Batches 3–8, now applied one tier higher.

# Fixed base and branch

- Base commit: `a1043e671c94100c9920f8cc37b856367f192d60`.
- As executed: committed directly to `master` from the base commit above, at
  the repository owner's explicit direction to do this batch directly rather
  than delegate it (see the Status note above). The dedicated-branch/audit
  contract below describes the default delegated form of this package for
  reference and for any future batch that *is* delegated.
- Dedicated delivery branch (delegated form only):
  `agent/library-signature-reconstruction-batch10`.
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
- integer `size` is in the inclusive range 129–255 bytes.

Sorted lexically by `address`, the canonical UTF-8 inventory is one
`address,size,proposed_name` row per function, LF-terminated. At the fixed base
it contains **151 unique functions / 26,956 bytes** and has SHA-256:

`05543ab9c6489e4814a0daf24f11531e76ee6f939153d69086def095b2cba021`

Reproduce the inventory from the package root:

```powershell
$rows = Import-Csv docs/games/ddr5thmix/symbol-map.csv |
    Where-Object {
        $_.confidence -eq 'library_signature' -and
        $_.source_status -eq 'decompiler_output_only' -and
        $_.overlay -eq 'main' -and
        $_.proposed_name -and
        $_.address -match '^0x8' -and
        [int]$_.size -ge 129 -and
        [int]$_.size -le 255
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

if ($rows.Count -ne 151 -or
    ($rows | Measure-Object size -Sum).Sum -ne 26956 -or
    $sha256 -ne
        '05543ab9c6489e4814a0daf24f11531e76ee6f939153d69086def095b2cba021') {
    throw 'Batch-10 inventory does not match the fixed contract.'
}
```

This deliberately excludes every function 128 bytes or smaller (already
reconstructed in Batches 3–8), every `tool_heuristic` row (Batch 9), every
function 256 bytes or larger (left for a later sub-range of the same
backlog), and the 167 anomalous `library_signature` rows of 1 or 4 bytes
(excluded from every batch so far pending a dedicated review of what those
entries actually represent). Do not substitute, rename, add, or drop
functions. Inferred `<OBJECT>_OBJ_<offset>` labels are inventory identities
only; do not promote them into claims about original PsyQ filenames,
semantic object identity, or confirmed linked-object boundaries.

# Allowed paths

The delivery diff against the fixed base may modify only:

- `src/ddr5thmix/LibrarySignatureBatch10.s` (new);
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
   Batch 5.
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
   by this same batch, or any already-verified function from an earlier
   batch; otherwise use a generic `sym_XXXXXXXX` placeholder. This applies
   uniformly to `j`/`jal` (26-bit absolute) and to conditional branches
   (16-bit PC-relative) alike.
8. A branch or jump to a *local* label — a target still inside the current
   function's own byte range — requires the function's manifest entry to
   carry a `symbols` property, even if it maps no names (an empty
   `"symbols": {}` is sufficient). Batch 9 found that without this property,
   `Invoke-FunctionMatch.ps1` takes an unlinked direct-objcopy path in which
   GNU `as` encodes an absolute J-type jump as if the section's base address
   were `0x0`, producing a wrong-but-plausible-looking target instead of a
   build failure. These 129–255-byte functions (roughly 32–64 instructions)
   are large enough to plausibly contain internal loops or multi-way
   branches; add the empty `symbols` property to every owned manifest entry
   whose source contains a local-label branch, and re-verify every local
   label still falls strictly within `[0, size)`.
9. These functions are also large enough to plausibly use COP0/COP2
   instructions (`mfc0`/`mtc0`/`mfc2`/`mtc2`/`ctc2`/`cfc2`) or GTE macros. GNU
   objdump's `-M no-aliases` disassembly renders at least one COP0 register
   operand as the symbolic name `c0_sr` rather than a numeric register; GNU
   `as` rejects that form outright. Substitute the numeric register (`c0_sr`
   is COP0 register 12, i.e. `$12`) for any such symbolic operand before
   assembling.
10. Add exactly one manifest entry for each of the 151 functions. Before
    delivery, every entry must record source, section, runtime address, size,
    `reference_sha256`, and `built_sha256` using the existing schema; the two
    hashes must be equal.
11. Run `Invoke-FunctionMatch.ps1` separately for every function. A row may be
    promoted only when the report records equal sizes, both hashes, pinned
    tool versions, and `byte_match: true`.
12. Promote exactly those 151 CSV rows to `confidence = verified` and
    `source_status = hand_written_source`. Preserve every other field and
    every unrelated row. Each promoted row's durable evidence must record the
    command/tool, lawful executable hash, toolchain versions, exact size, and
    equal reference/built SHA-256 directly in `verification_evidence` — do
    not defer this text to a later audit pass.
13. Do not change proposed names or add semantic descriptions unsupported by
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
- 151/151 `byte_match: true`, with exactly 26,956 selected bytes;
- no duplicate manifest functions, sections, addresses, or promoted rows;
- all 151 manifest entries contain equal non-empty reference/built hashes;
- every reconstructed section length equals its CSV and manifest size, with no
  omitted return or branch delay-slot instruction;
- no `move` pseudo-instruction, no raw `.byte`/`.word` opcode transcription,
  and no symbolic COP0 register operand anywhere in the new source;
- every function whose source contains a local-label branch has a `symbols`
  property (possibly empty) in its manifest entry;
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
inventory from 1,034 to **1,185 verified functions** (42.7% to **48.9%** of
2,424 cataloged rows), reduce `library_signature` from 408 to **257**, reduce
`decompiler_output_only` from 880 to **729**, and increase exact
main-executable reconstruction from 101,864 to **128,820 bytes** (9.7% to
**12.3%** of the 1,050,624-byte code region). Overall main-plus-overlay
totals should become **1,255 functions / 138,192 selected code bytes**.
Derive and check these figures mechanically from the actually measured
inventory; do not copy them into README or the log if the measured inventory
differs.

# Mandatory self-audit before delivery

Prior passes each required independent corrections or found and fixed
process defects before delivery: Batch 3 omitted manifest hashes and a return
delay slot; Batch 4's recovery found `move`-pseudo mismatches and a wrong
immediate; Batch 5's first pass had 89/92 mismatches from a missing `.set`
directive block, and its audit found a stray trailing blank line; Batch 8
found a symbolic-COP0-register assembler rejection; Batch 9 found that
local-label jumps need an explicit (possibly empty) manifest `symbols`
property to force linked placement, or GNU `as` silently encodes a
wrong-but-plausible absolute target. Batches 6 and 7 were clean passes.
Before committing, fail the package if any of these defects exists anywhere
in the 151 owned entries:

1. missing `.set noreorder` / `.set noat` / `.set nomacro` at the top of the
   source file;
2. a manifest entry missing for any owned function at verification time;
3. missing or unequal `reference_sha256` / `built_sha256`;
4. built/reference length smaller than the CSV/manifest function size;
5. absent final delay-slot instruction;
6. any `move` pseudo-instruction in the new source;
7. any raw `.byte`/`.word` opcode transcription in the new source;
8. any symbolic (non-numeric) COP0/COP2 register operand in the new source;
9. a cross-section branch/jump target encoded as a raw number instead of a
   `symbols`-backed name;
10. a local-label branch inside a function whose manifest entry lacks a
    `symbols` property;
11. a local label placed outside `[0, size)` for its owning function;
12. a count-only equality claim without exact identity-set comparison;
13. a promoted CSV row without durable per-function evidence recorded
    directly in `verification_evidence`;
14. `git diff --check` failures, including trailing whitespace/blank lines.

# Delivery

Make scoped commits, push the dedicated branch immediately, and report:

- base commit, branch, commit IDs, and exact committed paths;
- lawful input hash and tool versions;
- canonical owned-inventory count, byte total, and SHA-256;
- all 151 per-function reference/built hashes and match results;
- identity-set equality and section-length results;
- pre/post confidence and source-status counts;
- module regression results;
- allowlist, `git diff --check`, and prohibited-artifact checks;
- uncertainties, negative results, or blocked functions;
- final status `candidate_for_audit`.

For a delegated instance of this package, the external agent must not
describe it as accepted, completed, or merged; the independent auditor
reruns every gate from a clean checkout, records any correction as a
separate commit, and alone may integrate it. This instance was executed
directly rather than delegated (see Status); its gates were still run and
verified in full before commit, as recorded in `docs/log.md`.
