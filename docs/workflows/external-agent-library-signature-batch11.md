---
type: Workflow
title: Library-signature reconstruction — batch 11
description: A fixed 75-function package of 256–511-byte PsyQ-signature functions, executed directly rather than delegated.
tags: [reconstruction, byte-match, psyq, mips]
timestamp: 2026-08-03T14:00:00-04:00
---

# Status

`completed`

Like Batch 10, this package was executed directly in the integrator's own
working tree rather than delegated to an external agent, at the repository
owner's explicit direction ("hazlo, el agente externo no se usa a menos que
sea explicitamente requerido"). It still follows the fixed-base,
exact-inventory, hash-gated contract defined below, and every rule and gate
was satisfied and verified with the project's own
`Invoke-FunctionMatch.ps1`/`Invoke-ModuleMatch.ps1` tooling before commit.
There is no separate `candidate_for_audit` branch or independent
clean-checkout audit step; the verification results are recorded directly in
`docs/log.md` and the promoted CSV rows' `verification_evidence`.

This package covers the fourth sliced sub-range of the 65-byte-and-larger
backlog (Batch 7 took 65–96 bytes, Batch 8 took 97–128 bytes, Batch 10 took
129–255 bytes), using the same disassemble-and-reassemble generator built
and proven for Batch 10.

# Fixed base

- Base commit: `2b7c9d7c50b1853f4e95acdf1ebb86eaaf4574a1` (the Batch 10
  integration commit on `master`).
- Committed directly to `master` from that base; no dedicated branch.

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

- `confidence == library_signature`;
- `source_status == decompiler_output_only`;
- `overlay == main`;
- non-empty `proposed_name`;
- `address` begins with `0x8`;
- integer `size` is in the inclusive range 256–511 bytes.

Sorted lexically by `address`, the canonical UTF-8 inventory is one
`address,size,proposed_name` row per function, LF-terminated. At the fixed
base it contains **75 unique functions / 25,920 bytes** and has SHA-256:

`ea632cae07c1a31efebea7059f7918c788ec9a297817e3729e9337bf4d6a1f8f`

Reproduce the inventory from the package root:

```powershell
$rows = Import-Csv docs/games/ddr-5th-mix-jp-symbol-map.csv |
    Where-Object {
        $_.confidence -eq 'library_signature' -and
        $_.source_status -eq 'decompiler_output_only' -and
        $_.overlay -eq 'main' -and
        $_.proposed_name -and
        $_.address -match '^0x8' -and
        [int]$_.size -ge 256 -and
        [int]$_.size -le 511
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

if ($rows.Count -ne 75 -or
    ($rows | Measure-Object size -Sum).Sum -ne 25920 -or
    $sha256 -ne
        'ea632cae07c1a31efebea7059f7918c788ec9a297817e3729e9337bf4d6a1f8f') {
    throw 'Batch-11 inventory does not match the fixed contract.'
}
```

This deliberately excludes every function 255 bytes or smaller (already
reconstructed in Batches 3–10), every `tool_heuristic` row (Batch 9), every
function 512 bytes or larger (left for a later sub-range of the same
backlog), and the 167 anomalous synthetic `library_signature` rows at
`0x2000....` addresses (GTE macro identifiers, not real executable-code
addresses — outside the `address -match '^0x8'` predicate entirely). Do not
substitute, rename, add, or drop functions.

# Generator method (as executed)

1. Extract the raw byte slice `[address, address+size)` directly from the
   hash-gated lawful executable.
2. Disassemble it with
   `mipsel-none-elf-objdump -D -b binary -m mips:3000 -EL -z --adjust-vma=<address> -M no-aliases`.
   The `-z` (`--disassemble-zeroes`) flag is mandatory: without it, objdump
   elides runs of repeated identical instruction words (most commonly
   `sll $zero,$zero,0x0` alignment padding) as a single `...` line, silently
   dropping instructions from the reconstructed source. This defect was
   found and fixed while building the Batch 10 generator (one function lost
   4 instructions on the first attempt).
3. Parse every instruction line into address/mnemonic/operands. Verify the
   parsed instruction count equals `size / 4` before proceeding.
4. Scan every operand for an absolute 32-bit target (`0x` followed by
   exactly 8 hex digits — the only operand shape that wide, since all other
   immediates are 16 bits or narrower). For each:
   - if the target falls inside `[address, address+size)`, it is a local
     branch: emit a `.L<name>_<offset-hex>` label at that offset and
     reference it directly (no manifest `symbols` entry needed for purely
     local labels reached only by PC-relative branches, but see the `j`/`jal`
     caveat below);
   - otherwise it is a cross-section reference: resolve it against an
     address->name map built from every CSV row already `confidence ==
     verified` plus this batch's own owned rows, using the real name if
     found; otherwise emit a generic `sym_<address>` placeholder. Add a
     manifest `symbols` entry for every such name.
5. Every manifest entry gets a `symbols` property, even an empty `{}`, per
   Batch 9's finding: a `j`/`jal` (26-bit absolute) instruction — even one
   targeting a purely local label — is encoded incorrectly by GNU `as`
   unless the function is placed at its real runtime address via the
   linker, which `Invoke-FunctionMatch.ps1` only does when a `symbols`
   property is present. Applying this unconditionally sidesteps needing to
   detect which functions contain `j`/`jal` case by case.
6. Register tokens (`sp`, `v0`, `a0`, ...) are prefixed with `$`; the special
   COP0 symbolic register names (`c0_sr` etc., only for `mfc0`/`mtc0`) are
   substituted with their numeric `$N` form since GNU `as` rejects the
   symbolic form outright. GTE/COP2 register operands and `break` already
   print in a directly assemblable numeric form and need no substitution.
   No `move` pseudo-instruction is ever produced (`-M no-aliases` always
   prints the real `or`/`addu` form).
7. Emit one `.section .text.<name>,"ax",@progbits` block per function with
   `.globl` declarations for the function itself and every resolved external
   symbol, `.type`/`.ent`/`.end`/`.size` directives, and the transformed
   instruction stream, matching the style of every prior batch source.

# Required verification

For every owned function:

```powershell
pwsh -File tools/build/Invoke-FunctionMatch.ps1 `
    -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 `
    -Function <owned-name>
```

Verified for this batch:

- exact set equality between the fixed-base inventory, manifest entries,
  assembly sections, generated per-function reports, and promoted CSV rows;
- 75/75 `byte_match: true`, with exactly 25,920 selected bytes;
- no duplicate manifest functions, sections, addresses, or promoted rows;
- all 75 manifest entries contain equal non-empty reference/built hashes;
- every reconstructed section length equals its CSV and manifest size, with
  no omitted return or branch delay-slot instruction;
- no `move` pseudo-instruction, no raw `.byte`/`.word` opcode transcription,
  and no symbolic COP0 register operand anywhere in the new source;
- the source begins with `.set noreorder` / `.set noat` / `.set nomacro`;
- `screen-selector`, `mode-control`, and `runtime-core` still pass
  `Invoke-ModuleMatch.ps1`;
- `git diff --check` passes (including no stray trailing blank line at EOF);
- no prohibited binary, reference slice, extracted asset, key, proprietary
  SDK material, generated report, or build artifact is tracked.

Successful completion moves the main-executable inventory from 1,185 to
**1,260 verified functions** (48.9% to **52.0%** of 2,424 cataloged rows),
reduces `library_signature` from 257 to **182**, and increases exact
main-executable reconstruction from 128,820 to **154,740 bytes** (12.3% to
**14.7%** of the 1,050,624-byte code region). Overall main-plus-overlay
totals become **1,330 functions / 164,112 selected code bytes**. Derive and
check these figures mechanically from the actually measured inventory.

# Delivery

Recorded directly in `docs/log.md` with: base commit, exact committed paths,
lawful input hash and tool versions, canonical owned-inventory count/byte
total/SHA-256, identity-set equality and section-length results, pre/post
confidence and source-status counts, module regression results, and
`git diff --check`/prohibited-artifact results. Committed straight to
`master`, consistent with this repository's direct-commit policy for
non-delegated work (`AGENTS.md`).
