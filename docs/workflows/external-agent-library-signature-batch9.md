---
type: Workflow
title: External library-signature reconstruction — batch 9
description: A fixed 297-function package covering every tool_heuristic function discovered by the whole-executable gap sweep, for isolated reconstruction and independent audit.
tags: [delegation, psyq, mips, reconstruction, byte-match, audit]
timestamp: 2026-07-29T18:00:00-04:00
---

# Status

`ready`

Unlike Batches 3–8 (which each covered one size tier of pre-existing
`library_signature` rows), this package covers every row this project itself
discovered and added via `tools/build/Invoke-MainExecutableGapSweep.ps1` plus
`jr`-instruction boundary segmentation (see
[linked-object evidence §5.4](/docs/foundations/linked-object-evidence.md)).
These rows carry `confidence = tool_heuristic`, not `library_signature`:
their boundaries come from a calling-convention heuristic over raw
disassembly, not a signature-database match. 12 of the 297 rows have an
explicitly flagged, less-certain upper bound (the entire remainder after a
gap's last detected `jr`, not a confirmed local return) — expect a higher
defect rate on these than on a typical batch, and expect the fix to
sometimes be a boundary correction (adjusting the CSV `size`), not just a
source bug, mirroring how Batch 4's `SYS_OBJ_181C` needed an immediate fix.
Delivery by the external agent remains `candidate_for_audit`; only a
separate clean-checkout audit may accept and merge it under
[/docs/workflows/external-agent-acceptance.md](/docs/workflows/external-agent-acceptance.md).

# Fixed base and branch

- Base commit: `8f431ff6ddef2c9bcb02fc7fc23b26e480180f8d`.
- Dedicated delivery branch:
  `agent/library-signature-reconstruction-batch9`.
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
`docs/games/ddr-5th-mix-jp-symbol-map.csv` satisfying all of these predicates:

- `confidence == tool_heuristic`;
- `source_status == decompiler_output_only`;
- `overlay == main`;
- non-empty `proposed_name`;
- `address` begins with `0x8`.

There is no size-range filter this time — the owned set is defined purely by
confidence tier and is, by construction, disjoint from every
`library_signature` row already owned by Batches 3–8 or any future batch of
that tier.

Sorted lexically by `address`, the canonical UTF-8 inventory is one
`address,size,proposed_name` row per function, LF-terminated. At the fixed
base it contains **297 unique functions / 58,952 bytes** and has SHA-256:

`3d92904911398912a4983cbdef17519154c9c803371b9e7e491df379b63502dd`

Reproduce the inventory from the package root:

```powershell
$rows = Import-Csv docs/games/ddr-5th-mix-jp-symbol-map.csv |
    Where-Object {
        $_.confidence -eq 'tool_heuristic' -and
        $_.source_status -eq 'decompiler_output_only' -and
        $_.overlay -eq 'main' -and
        $_.proposed_name -and
        $_.address -match '^0x8'
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

if ($rows.Count -ne 297 -or
    ($rows | Measure-Object size -Sum).Sum -ne 58952 -or
    $sha256 -ne
        '3d92904911398912a4983cbdef17519154c9c803371b9e7e491df379b63502dd') {
    throw 'Batch-9 inventory does not match the fixed contract.'
}
```

Excluded from this package, left for later: the misaligned `0x800207ad` gap
(1,399 bytes, needs its true 4-byte-aligned boundary determined first — it
is not a symbol-map row yet) and every sub-65-byte gap the sweep did not
attempt. Do not substitute, rename, add, or drop functions from the owned
set above. `FUN_<address>` is this project's existing convention for
un-signature-matched discoveries; do not promote these names into semantic
claims.

# Allowed paths

The delivery diff against the fixed base may modify only:

- `src/ddr5thmix/LibrarySignatureBatch9.s` (new);
- `config/ddr5thmix/build.json`;
- `docs/games/ddr-5th-mix-jp-symbol-map.csv`;
- `README.md`;
- `docs/log.md`.

Use one assembly source file with one address-labelled section per owned
function. Do not edit prior reconstructed sources, workflows, tools, maps,
headers, or game-owned modules. If a specific function's declared boundary
turns out to be wrong (a real possibility for this package — see the status
note above), correcting that row's `size` in
`docs/games/ddr-5th-mix-jp-symbol-map.csv` is in scope and expected; record
the correction and its evidence plainly, the same way Batch 4 recorded its
`SYS_OBJ_181C` immediate fix. Do not expand scope beyond the owned set to
compensate for a wrong boundary (e.g. do not silently absorb neighboring
un-owned bytes).

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
4. Some owned functions use COP0/COP2 instructions
   (`mfc0`/`mtc0`/`mfc2`/`mtc2`/`ctc2`/`cfc2`) or GTE macros. GNU objdump's
   `-M no-aliases` disassembly renders at least one COP0 register operand as
   the symbolic name `c0_sr` rather than a numeric register; GNU `as`
   rejects that form outright. Substitute the numeric register (`c0_sr` is
   COP0 register 12, i.e. `$12`) for any such symbolic operand before
   assembling.
5. The declared section must reproduce the complete CSV range exactly,
   including the instruction in every terminal branch or return delay slot.
   Do not accept a matching prefix shorter than the declared function size.
6. Do not use `incbin`, reference slices, generated byte arrays, raw
   `.byte`/`.word` opcode transcription, `.rept`, or macros as shortcuts around
   source reconstruction. `break` is the sole documented exception where GNU
   `as` has no simpler equivalent mnemonic form, and even there use the
   assembler's `break code1,code2` mnemonic, never a raw `.word` encoding of
   it.
7. Never use the `move` pseudo-instruction for a register-to-register copy.
   GNU binutils 2.43 always expands `move $rd,$rs` to `or $rd,$rs,$zero`
   (funct `0x25`), but this toolchain's lawful binary was built with a
   compiler that emits register moves as `addu $rd,$rs,$zero` (funct `0x21`).
   Write `addu $rd,$rs,$zero` explicitly for every such copy, including copies
   from `$zero`.
8. A branch or jump whose target lands outside the current function's own
   byte range is a cross-section reference: declare it through the manifest's
   `symbols` mechanism (a `.globl`'d name mapped to its absolute runtime
   address in a `symbols` block), never as a raw numeric target. Prefer the
   real name when the target is the start address of another function owned
   by this same batch, or any already-verified function from an earlier
   batch; otherwise use a generic `sym_XXXXXXXX` placeholder. This applies
   uniformly to `j`/`jal` (26-bit absolute) and to conditional branches
   (16-bit PC-relative) alike.
9. Add exactly one manifest entry for each owned function. Before delivery,
   every entry must record source, section, runtime address, size,
   `reference_sha256`, and `built_sha256` using the existing schema; the two
   hashes must be equal.
10. Run `Invoke-FunctionMatch.ps1` separately for every function. A row may be
    promoted only when the report records equal sizes, both hashes, pinned
    tool versions, and `byte_match: true`.
11. Promote exactly the owned CSV rows to `confidence = verified` and
    `source_status = hand_written_source`. Preserve every other field and
    every unrelated row (except a corrected `size` per the boundary-fix
    allowance above). Each promoted row's durable evidence must record the
    command/tool, lawful executable hash, toolchain versions, exact size, and
    equal reference/built SHA-256 directly in `verification_evidence` — do
    not defer this text to a later audit pass.
12. Do not change proposed names (`FUN_<address>` stays as-is; this package
    does not assign semantic names) or add semantic descriptions unsupported
    by primary evidence. Assembly byte identity does not prove high-level
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
  assembly sections, generated per-function reports, and promoted CSV rows
  (accounting for any boundary-size correction made under the allowance
  above — the *set* of owned addresses must still match exactly);
- 297/297 `byte_match: true` (or the corrected count if a boundary fix
  changed how many distinct functions a row represents — do not silently
  drop a function to make numbers reconcile; report any such case
  explicitly), with the total selected bytes reconciled against any
  boundary corrections;
- no duplicate manifest functions, sections, addresses, or promoted rows;
- all manifest entries contain equal non-empty reference/built hashes;
- every reconstructed section length equals its CSV and manifest size, with no
  omitted return or branch delay-slot instruction;
- no `move` pseudo-instruction, no raw `.byte`/`.word` opcode transcription,
  and no symbolic COP0 register operand anywhere in the new source;
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
inventory from 737 to **1,034 verified functions** (30.4% to **42.7%** of
2,424 cataloged rows), reduce `tool_heuristic` from 297 to **0**, and
increase exact main-executable reconstruction from 42,912 to **101,864
bytes** (from 4.1% to **9.7%** of the 1,050,624-byte code region — this
package alone should roughly double the true byte-exact reconstruction
percentage). Derive and check these figures mechanically from the actually
measured inventory; do not copy them into README or the log if a boundary
correction changed the totals.

# Mandatory self-audit before delivery

Prior passes each required independent corrections or found and fixed
process defects before delivery: Batch 3 omitted manifest hashes and a
return delay slot; Batch 4's recovery found `move`-pseudo mismatches and a
wrong immediate; Batch 5's first pass had 89/92 mismatches from a missing
`.set` directive block; Batch 8 found a symbolic-COP0-register assembler
rejection. Batches 6 and 7 were clean passes; Batch 8 found one new defect
class and no others. Before committing, fail the package if any of these
defects exists anywhere in the owned entries:

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
10. a boundary defect (byte mismatch traceable to a wrong CSV `size`) fixed
    by silently absorbing or dropping bytes instead of an explicit, recorded
    correction;
11. a count-only equality claim without exact identity-set comparison;
12. a promoted CSV row without durable per-function evidence recorded
    directly in `verification_evidence`;
13. `git diff --check` failures, including trailing whitespace/blank lines.

# Delivery

Make scoped commits, push the dedicated branch immediately, and report:

- base commit, branch, commit IDs, and exact committed paths;
- lawful input hash and tool versions;
- canonical owned-inventory count, byte total, and SHA-256;
- every per-function reference/built hash and match result;
- identity-set equality and section-length results;
- every boundary correction made, with its evidence (raw bytes showing the
  true boundary), if any;
- pre/post confidence and source-status counts;
- module regression results;
- allowlist, `git diff --check`, and prohibited-artifact checks;
- uncertainties, negative results, or blocked functions;
- final status `candidate_for_audit`.

The external agent must not describe the package as accepted, completed, or
merged. The independent auditor reruns every gate from a clean checkout,
records any correction as a separate commit, and alone may integrate it.
