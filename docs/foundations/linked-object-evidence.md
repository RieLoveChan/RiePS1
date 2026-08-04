---
type: Concept
title: Linked-Object Evidence — Methodology, Findings, and Open Bar
description: What this project has checked toward proving original PsyQ object-file boundaries and internal layout, what the evidence actually shows, and the falsifiable bar for a future object-boundary-confirmed claim.
tags: [ps1, ddr5thmix, linking, psyq, object-boundaries, ghidra, evidence]
timestamp: 2026-07-29T00:00:00-04:00
---

# Scope and honesty boundary

Every reconstructed module in this project (`mode-control`, `runtime-core`,
`screen-selector`, the four gameplay-session modules, and the PsyQ GTE/BIOS
blocks) already carries the same caveat: exact per-function byte matches
prove independently placed function bodies, not an original PsyQ object
boundary, inter-function layout, or whole-executable match. This document is
the first pass at building real evidence toward that separate, larger claim.
As of 2026-08-04, eight specific objects (`SYS`, `FORMAT`, `SSSTART`, `S_SCA`,
`PRESET`, `PADENTRY`, `PADMAIN`, and `PADCMD`, see their respective sections
below) have met the falsifiable four-criterion bar defined later in this
document and are recorded as `object_boundary_confirmed` — the first such
results in this project. Three further candidates, `BIOS_OBJ_*`, `UT_REV`,
and `VSYNC`, were checked and found to satisfy two of the four criteria each
with an explicit, checked negative result on the third (no edge padding
found at either boundary), and are recorded as such rather than confirmed.
Every other named `<name>_OBJ_*` run remains unconfirmed; this is not a
claim that
object boundaries are confirmed project-wide, or that PSYLINK's
whole-executable layout or PsyQ's own object file format has been
reproduced. It records what was checked,
what the checked evidence actually shows (including where that is a clean
negative result), and — per this project's evidentiary style — the
falsifiable bar itself, so any future claim for another object can be
checked against the same four criteria rather than a looser standard.
All addresses/sizes below come from `/config/ddr5thmix/build.json` and
the existing Ghidra 12.1.2 project at `runtime/ghidra/projects/ddr5thmix`
(program `SLPM_868.97_1`); no copyrighted byte content is reproduced, only
addresses, sizes, counts, and instruction-shape descriptions already implied
by this project's own prior published function reconstructions.

# 1. Alignment/padding between already-matched functions

For every contiguous or near-contiguous already-matched range, the gap
between one function's end address and the next function's start address was
computed from `build.json`, then any non-zero gap was inspected directly with
`tools/ghidra/scripts/DumpBytes.java` against the shared project to determine
whether the gap bytes are zero padding or further real code.

## Application-code modules: no alignment padding found anywhere checked

- **`screen-selector`** (22 functions): the sum of all function sizes (2,348
  bytes) exactly equals the address span from the first function's start to
  the last function's end. Zero gap between every one of the 21 adjacent
  pairs. This was already implied by the existing per-function table but had
  not been stated as a contiguity fact before.
- **`mode-control`**'s four non-zero gaps inside `0x800230cc`–`0x800236cc`
  (32, 64, 128, and 152 bytes, between `FUN_80023170`/`FUN_800231b0`,
  `FUN_800231b0`/`FUN_80023210`, `FUN_80023230`/`FUN_800232cc`, and
  `FUN_800232cc`/`FUN_8002340c`) contain **no** symbol-map row of any kind —
  confirmed by a numeric-range sweep of the full CSV, not just an
  exact-address check. Dumping the raw bytes at all four ranges shows dense,
  valid MIPS instructions in every one (recognizable `lui`/`lw` loads of the
  same fixed state-pointer pattern already documented for `SetMode`-family
  functions, `jr $ra` returns with a store scheduled into the delay slot,
  full stack-frame prologues/epilogues with `jal` call sites), never a run of
  zero bytes. These are real, un-inventoried sibling functions that Ghidra's
  bulk auto-analysis did not carve into a named `FUN_` entry — the same
  situation this project already documented for `FUN_80049f7c`/`FUN_80049fa4`
  in the symbol map — not linker padding. **The 1,168-byte figure already
  published for this range is a sum of accepted-function sizes, not the
  address span**; the true span is 1,544 bytes, and the 376-byte difference
  is entirely accounted for by this dense, un-matched code, not by gaps.
- **The four gameplay-session modules** (`game-session-router`, `-opening`,
  `-gameplay`, `-endgame`; 51 functions total) are not four separately
  contiguous ranges as their names might suggest. Sorting all 51 by address
  shows that, apart from three outer-wrapper functions
  (`FUN_8004b800`/`FUN_8004bdec`/`FUN_8004be30`, which sit in a distant,
  unrelated part of the executable), the remaining 48 functions — spanning
  all four logical modules — occupy one single contiguous 9,328-byte range
  from `FUN_8006ede8` (`0x8006ede8`) through the end of `FUN_80071250`
  (`0x80071258`), crossing logical-module boundaries with **zero** gap at
  every crossing (confirmed for the `-opening`→`-gameplay` and
  `-endgame`→`-router` transitions specifically). The only two non-zero gaps
  inside that whole range (880 bytes between `FUN_80070260` and
  `FUN_80070664`, 376 bytes between `FUN_8006fba4` and `FUN_8006fe7c`) are
  each **exactly and completely** accounted for by already-Ghidra-discovered,
  not-yet-matched functions already referenced as call targets elsewhere in
  `build.json` (`FUN_800702f4`/`FUN_800703e0`/`FUN_800705a4`, sizes 236/452/192,
  and `FUN_8006fd04`/`FUN_8006fdb4`, sizes 176/200): each one's end address is
  the exact start address of the next, with no residual byte anywhere. This
  is a genuinely new, previously unremarked structural fact: the entire
  45-entry (15-state × enter/update/exit) gameplay-session callback table,
  plus its child dispatcher, is one single dense original code region with no
  internal padding at all.

**Conclusion for application code**: in every range checked, the executable
is 100% packed with valid instructions. There is no evidence anywhere in
`mode-control`, `screen-selector`, or the combined gameplay-session region of
any alignment quantum, padding byte, or dead space between functions —
positive evidence of *density*, and a clean negative result for the
"alignment padding" half of the angle-1 question in this part of the image.

## The PsyQ BIOS/kernel trampoline block: a different, consistent convention

The 30 already-matched 12-byte `BIOS_STUB` trampolines show a contrasting,
internally consistent pattern. Sorting all 30 by address and computing every
adjacent gap:

- **24 of the 29 stub-to-stub transitions have exactly a 4-byte gap**, and
  every one of those 4-byte gaps, dumped directly, is the single zero word
  `00 00 00 00` — real, confirmed zero padding, not truncated code. Each
  12-byte stub is therefore followed by a 4-byte zero pad to a 16-byte
  boundary, with zero exceptions across the 24 sampled instances.
- **The remaining transitions are larger** (68, 212, 1,444, 36, and 36
  bytes) and are not simply bigger padding gaps: dumping them shows each one
  begins and ends with the same 4-byte zero word, but the interior is dense,
  real code — full stack-frame C functions (`addiu sp,sp,-0x18` /
  `sw ra,0x10(sp)` prologues, `jal` call sites, matching epilogues) packed
  with **zero** gap against each other where more than one appears in the
  same window (confirmed in the 212-byte gap, which contains at least three
  back-to-back subroutines with no inter-function padding at all — the same
  density pattern as the application-code modules above).
- **Two of these larger gaps (both 36 bytes) contain a previously
  uncatalogued instance of the exact same `BIOS_STUB` three-instruction
  shape already established for the 30 accepted trampolines** (`li t2,
  <vector>`; `jr t2`; `li t1, <service>` in the delay slot) — one at vector
  `0xb0`/service `0x3f` (between `exit` and `setjmp`), one at vector
  `0xa0`/service `0x72` (between `GPU_cw` and `DeliverEvent`). Both are
  preceded by an identical 8-byte pair of words that does not resemble
  ordinary code and is not yet explained — flagged here as an open item,
  not interpreted. Neither new stub has been added to the accepted-function
  inventory or manifest; that requires the full hash-gated match pipeline
  and is left as follow-up work, not asserted here.

### Update 2026-08-03: Current audit of the two BIOS stubs (Unit C)

The two candidates are already integrated in the current source, manifest, and
symbol map as `FUN_8003ba70` (`0xb0`/`0x3f`) and `FUN_8003bb30`
(`0xa0`/`0x72`). Re-running `Invoke-FunctionMatch.ps1` against the lawful
executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee` produced
`byte_match: True` for both 12-byte stubs with GCC 14.2.0/binutils 2.43. The
built/reference hashes are `859ccf6879a1def400ddcd0fab5063a5b8ee05bd985e429028e3322b6e149fd9`
and `d3eefd259eb1b5f648ec00610d2defbf4c6e5873f47895dd3d23a322bb0cfd7f`.

The preceding 8-byte sequences are not unexplained isolated pairs. The lawful
executable contains the repeated marker form
`50 73 <tag> 00 00 00 44 00`; the two candidate prefixes are
`50 73 01 00 00 00 44 00` at `0x8003ba68` and
`50 73 00 00 00 00 44 00` at `0x8003bb28`. A scan for the `50 73` signature
found the same structured form at multiple other executable/data addresses,
including `0x800365b8`, `0x800d6bd4`, `0x800d71a8`, `0x800d75dc`,
`0x800d877c`, `0x800d8c2c`, `0x800d8dcc`, `0x800d8e0c`, and `0x800d8f5c`.
This corroborates a PsyQ object/header marker interpretation for the two
prefixes, while not proving the original object-file format or complete section
semantics. The old open-item wording is superseded by this reproducible
classification.


**Conclusion for the BIOS block**: this is a real, consistent, and
falsifiable positive finding — a 4-byte zero-padding convention rounding
each 12-byte trampoline to 16 bytes, with 100% consistency across every
sampled boundary — and it is a genuinely different convention from the total
absence of padding found everywhere else in this executable's own
application code. That contrast is itself evidence: it is consistent with
the BIOS stubs each having come from small, independently assembled/archived
library objects (each individually rounded), while the application-code
regions came from single translation units emitted with continuous function
placement and no per-function alignment directive.

## The PsyQ GTE library block

The 33 already-matched real GTE/COP2 functions (`SetVertex*`, the color/
vector block, the register-setter block, and `GteRemaining.s`'s matrix/color/
Z/Lzc set) show the same density pattern as the application code: from
`LightColor` (`0x800551b8`) through `SetDQA` (`0x80055a7c`), adjacent function
pairs are predominantly zero-gap.

### Update 2026-07-27: Characterization of the `Lzc`→`SetVertex0` gap (Unit D)

Dumping bytes across the 1,472-byte span between `Lzc` (`0x800553ac`) and `SetVertex0` (`0x80055984`) classifies the range completely:
- **Function coverage**: 10 distinct functions (`TransposeMatrix`, `gte_rotate_z_matrix`, `GsGetLw`, `GS_133_OBJ_30`, `GS_133_OBJ_21C`, `FUN_80055788`, `FUN_80055870`, `FUN_8005589c`, `FUN_800558e4`, `GsSetFogParam`) account for **1,444 of 1,472 bytes (98.1%)** as dense, valid MIPS code.
- **Inter-function zero padding**: 6 of the 11 adjacent transitions are 0-byte (dense back-to-back code). The remaining 4 gaps (4 bytes at `0x800553c4`, 12 bytes at `0x800554bc`, 8 bytes at `0x80055780`, and 4 bytes at `0x80055980` — 28 bytes total, 1.9%) were dumped directly from `SLPM_868.97_1` and confirmed to be **100% zero-alignment padding** (`00` bytes only) rounding function entry points to 8-byte or 16-byte boundaries (e.g., `GsGetLw` at `0x800554c8`, `FUN_80055788` at `0x80055788`, `SetVertex0` at `0x80055984`).
- **Reproduction**: `pwsh -Command '$b=[System.IO.File]::ReadAllBytes("work/ddr5thmix-extract/exe/SLPM_868.97_1"); 0x800553c0,0x800554b8,0x8005577c,0x8005597c | % { $o=$_ - 0x8001a800 + 2048; ($b[$o..($o+15)] | % { "{0:x2}" -f $_ }) -join " " }'`
- **Conclusion**: The formerly unexamined `Lzc`→`SetVertex0` gap is 98.1% dense library code and 1.9% inter-function zero alignment padding, with zero unexplained or unclassified bytes.

The scattered `GteRemaining` functions outside that run (`SetTransMatrix_8002b210`, `MulMatrix0`,
`SetRotMatrix`/`SetLightMatrix`/`SetTransMatrix`/`SetColorMatrix`/
`SetFarColor`, `SetBackColor`) sit at widely separated addresses with large
gaps (1,236 to 117,104 bytes) that were not characterized in this pass.

# 2. Known PsyQ library object structure as a cross-check

This project's Ghidra setup uses `ghidra_psx_ldr`'s bundled PsyQ 4.4.0
signature database (`/docs/tooling/ghidra-setup.md`). Its own upstream
documentation (`lab313ru/ghidra_psx_ldr`'s README, fetched 2026-07-24) confirms
the signature database is built directly from real PsyQ `.LIB`/`.OBJ` files,
and that its naming convention for a recognized object uses the object's own
file name (its examples are `LIBSND` and `8MBYTE.OBJ`) — external,
independent confirmation of what this project's symbol map had already
inferred for the single marker row `2MBYTE_OBJ_B4` ("a ghidra_psx_ldr
object-boundary marker... not a function name"). This document does not
reproduce any signature database content itself — only the address/offset
facts recoverable from this project's own already-exported symbol map CSV,
which is original tool output, not copied PsyQ material.

## A previously unremarked large class of rows: `<name>_OBJ_<offset>`

Beyond that one marker row, the full symbol map contains **491 further rows**
whose proposed name matches the same `<PREFIX>_OBJ_<hex-offset>` shape (e.g.
`SPU_OBJ_D4`, `S_SAV_OBJ_130`, `VM_NO1_OBJ_1C4`, `SYS_OBJ_110`) — every one
`confidence = library_signature`, `source_status = decompiler_output_only`,
not independently reviewed before this pass. Grouping rows into maximal runs
of *consecutive* (by address, no other-prefixed row intervening) same-prefix
rows yields 89 runs, 60 of which have two or more rows. For every one of
those 60 multi-row runs, the following check was run: does
`address − declared_offset` equal the same constant for every row in the
run? **60 of 60 are perfectly consistent** — every row's own address, minus
its own declared hex offset, resolves to one identical implied object-base
address for the whole run, with zero exceptions. (The name `SYS` recurs
across two of the 89 runs, at addresses far apart — i.e. this grouping
correctly treats them as two separate objects that happen to share the
generic name `SYS`, each internally consistent on its own, rather than
forcing one inconsistent merge.)

This is strong, reproducible, internally self-checking evidence that
`ghidra_psx_ldr`'s signature database is annotating genuine byte offsets
**within one named original PsyQ object file** for each run — i.e. this is
tool-recovered internal object layout, a materially different and stronger
category of evidence than anything this project has used for object-boundary
work before, and it required no new extraction: it was already sitting,
unexamined, in the existing symbol-map CSV.

## Direct cross-check against an independently confirmed function

The strongest single data point: the first `SYS`-prefixed run's implied
object base, computed purely from the `SYS_OBJ_*` rows'
address-minus-offset arithmetic, is `0x800381e8` — which is exactly the
address of `ResetGraph`, a real PsyQ kernel function this project
independently hand-reviewed and cited well before this pass (see the symbol
map's mode-`0x10` review). `ResetGraph`'s own recorded size (272 bytes) ends
at exactly `0x800382f8`, which is exactly where the first `SYS_OBJ_110` row
begins (`0x110` = 272). The same implied object (spanning `0x800381e8` to
`0x8003b114`, 12,076 bytes) also contains `SetDispMask`, `DrawSync`,
`ClearImage2`, `LoadImage`, `GsInitGraph2`, `GsInit3D`, and `InitGeom` — every
one an independently signature-matched, several already hand-reviewed, real
PsyQ kernel/`libgpu`-family function — interleaved with dozens of anonymous
`SYS_OBJ_*` rows. Merging every symbol-map row (named or `SYS_OBJ_*`) in that
12,076-byte range and checking coverage: 11,804 of 12,076 bytes (97.7%) are
accounted for, in three residual gaps (116, 36, and 120 bytes). All three
gaps were dumped directly and are dense real code (branches, `lui`/`lw`
constant loads, `jal` call sites) — not padding, and not yet attributed to
any named function.

This is the strongest concrete result of this pass: a mechanically derived
object boundary, computed purely from tool metadata, lands exactly on an
address this project had already independently confirmed by hand as a real
function's entry point, and the object's coherent 12KB span holds a cluster
of other already-confirmed real library functions consistent with a single
PsyQ graphics-kernel object.
### Update 2026-08-03: Current SYS/ResetGraph byte-account and true-edge audit (Unit A)

The earlier three residual gaps are now closed by independently reconstructed
and byte-matched rows already present in the current inventory:
`SYS_OBJ_F80` at `0x80039168` (116 bytes), `SYS_OBJ_22F4` at `0x8003a4dc`
(36 bytes), and `SYS_OBJ_2828` at `0x8003aa10` (120 bytes). They are therefore
nameable, full-size internal object fragments, not padding. Their current
`Invoke-FunctionMatch.ps1` results are `byte_match: True` for all three
against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`, using
GCC 14.2.0/binutils 2.43. The recorded reference/built SHA-256 pairs are,
respectively, `502be280c00d0b1348da587d428d84b44187df8de0ffd33b28a1596c0bace070`,
`d8e7f8f6a83ea268523360ee59dcf50e8ad145f9ed654c1b0b8bd820483747b8`, and
`832b737782d5700df540d3762a460170d5bdfe00990e19b587f59f907a30098d`.

Re-running the tracked checker:

```powershell
pwsh -NoProfile -File tools/build/Invoke-PsyqObjectBoundaryCheck.ps1 -CsvPath docs/games/ddr-5th-mix-jp-symbol-map.csv -Prefix SYS -ObjectStart ([Convert]::ToInt64('800381e8',16)) -ObjectEnd ([Convert]::ToInt64('8003b114',16))
```

produces `span_bytes: 12076`, `obj_rows: 68`,
`implied_bases: [0x800381e8]`, `base_consistent: true`,
`offsets_monotonic: true`, `interval_rows: 98`, `merged_intervals: 1`,
`covered_bytes: 12076`, `gap_bytes: 0`, `complete_byte_account: true`,
`boundary_claim: false`, and `valid: true`. Thus the current byte account is
complete at the candidate-evidence level; it is not a claim that the original
PsyQ object boundary is independently proven.

The true-edge dump used the same lawful executable and address mapping
`file_offset = address - 0x8001a800 + 2048`:

```text
0x800381d8: 08 00 e0 03 00 00 00 00 00 00 00 00 00 00 00 00
0x8003b110: 00 00 00 00 00 00 00 00 d8 ff bd 27 18 00 b2 af
```

The eight bytes immediately before `0x800381e8` are zero. Immediately after
exclusive end `0x8003b114`, only the four bytes at `0x8003b114`–`0x8003b117`
are zero; `0x8003b118` begins `addiu sp,sp,-0x28` (`d8 ff bd 27`). The edge
result is therefore asymmetric 8-byte leading padding and 4-byte trailing
padding, not the previously stated 8-byte padding at both edges. This checks
criterion 3's edge evidence for this candidate range, but the object-boundary
claim remains `candidate_only`; criterion 4's scope limitations still apply.

### Update 2026-07-27: Second independent object-boundary corroboration (Unit B)

- **Second independent corroboration**: Auditing all 60 multi-row `<name>_OBJ_<offset>` runs across the symbol map identified a second independently corroborated instance: the **`FORMAT`** run (`0x8003b6e8`–`0x8003ba38`, 848 bytes).
- **Implied base & byte account**: All 3 `FORMAT_OBJ_*` rows (`FORMAT_OBJ_0` @ `0x8003b6e8`, `FORMAT_OBJ_F0` @ `0x8003b7d8`, `FORMAT_OBJ_320` @ `0x8003ba08`) resolve to a single consistent base `0x8003b6e8`. Merging these with the interleaved named PsyQ function `_card_format` (`0x8003b82c`, 476 bytes) yields **848 of 848 bytes covered (100.0%)**, `gap_bytes: 0`, `merged_intervals: 1`, `complete_byte_account: true`.
- **Independently confirmed boundary**: The measured end address of the `FORMAT` object, **`0x8003ba38`**, lands **exactly on `0x8003ba38`**, the entry point of **`_card_read`** — an independently hand-reviewed, exact-byte-matched PsyQ BIOS trampoline function (`confidence = verified`, `source_status = hand_written_source`, built/reference SHA-256 `875fa8774175cad7c553fa1bcaa28639e989aa4933dedc1475a3e5eb84d9b6c5`) in `src/ddr5thmix/PsyqBiosStubs.s`.
- **Reproduction**: `pwsh -File tools/build/Invoke-PsyqObjectBoundaryCheck.ps1 -Prefix FORMAT -ObjectStart ([Convert]::ToInt64("8003b6e8", 16)) -ObjectEnd ([Convert]::ToInt64("8003ba38", 16))`
- **Evidentiary bar status**: Satisfies criterion 2 (second independently derived boundary that agrees with the tool-derived one) for the project as a whole. Along with Unit A's `SYS` results, both criteria 1 and 2 are now satisfied for their respective objects.

### Update 2026-08-04: `FORMAT`'s true edges checked — both criterion-1/2/3 objects now confirmed

Re-ran both existing byte-account checks fresh, after all reconstruction work through the 2026-08-04 gap-sweep closure (see the update above) and `DdrSecondaryState` field sweep, to confirm neither result had silently regressed:

```powershell
./tools/build/Invoke-PsyqObjectBoundaryCheck.ps1 -Prefix SYS -ObjectStart ([Convert]::ToInt64('800381e8',16)) -ObjectEnd ([Convert]::ToInt64('8003b114',16))
# span_bytes: 12076, covered_bytes: 12076, gap_bytes: 0, complete_byte_account: true
./tools/build/Invoke-PsyqObjectBoundaryCheck.ps1 -Prefix FORMAT -ObjectStart ([Convert]::ToInt64('8003b6e8',16)) -ObjectEnd ([Convert]::ToInt64('8003ba38',16))
# span_bytes: 848, covered_bytes: 848, gap_bytes: 0, complete_byte_account: true
```

Both still hold. `FORMAT` had not yet had its true edges checked (only its interior byte account and its end-boundary corroboration against `_card_read`, per Unit B above) — Unit A's edge check was SYS-only. Dumping the lawful executable directly (`file_offset = address - 0x8001a000`, the same mapping used throughout this document):

```text
0x8003b6d8: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x8003ba38: b0 00 0a 24 08 00 40 01 4f 00 09 24 00 00 00 00
```

The 16 bytes immediately before `0x8003b6e8` are zero, exactly bounded by `FUN_8003b668`'s own measured end (`0x8003b668 + 112 = 0x8003b6d8`, confirmed by arithmetic, not assumed) — `FUN_8003b668` is `confidence = verified`/`source_status = hand_written_source`. Immediately after the exclusive end `0x8003ba38`, there is **no zero padding at all** — those bytes are `_card_read`'s own first instruction (`li t2,0xb0`, matching its documented "loads BIOS vector 0xb0 into t2" description). `FORMAT`'s edges are therefore 16-byte leading zero padding and a 0-byte (dense, no-gap) trailing boundary — a different shape than `SYS`'s 8-byte-leading/4-byte-trailing result, but a real, checked, evidenced convention at both edges, not an assumption.

**This completes criterion 3 for `FORMAT`.** Re-checking the full bar for both objects against the four criteria stated above:

1. **Complete, contiguous byte account, zero unattributed bytes** — `SYS`: 12,076/12,076 bytes, `gap_bytes: 0`. `FORMAT`: 848/848 bytes, `gap_bytes: 0`. Both satisfied, reproduced fresh above.
2. **An independently-derived boundary agreeing with the tool-derived one, in at least two unrelated instances** — `SYS`'s implied base (`0x800381e8`) lands exactly on the independently hand-reviewed `ResetGraph` entry point; `FORMAT`'s implied base (`0x8003b6e8`, from its own three `FORMAT_OBJ_*` rows) is a second, unrelated object 12KB away with its *end* boundary (`0x8003ba38`) landing exactly on the independently byte-matched `_card_read` entry point. Two unrelated objects, two unrelated independent corroborations — this is the "second, unrelated instance" the bar requires, validating the method rather than one lucky coincidence. Satisfied for both objects.
3. **A checked alignment/padding convention at the object's actual start and end edges** — `SYS`: 8-byte leading / 4-byte trailing zero padding (Unit A, 2026-08-03). `FORMAT`: 16-byte leading zero padding / 0-byte trailing (dense boundary), checked above. Both edges checked and reported for both objects; the two conventions differ in exact byte counts, which is reported honestly rather than smoothed over.
4. **Explicit acknowledgment of what this does not establish** — see immediately below.

**All four criteria are now met, together, for both the `SYS` (`0x800381e8`–`0x8003b114`, 12,076 bytes) and `FORMAT` (`0x8003b6e8`–`0x8003ba38`, 848 bytes) objects.** This is the first `object_boundary_confirmed` result in this project. It specifically establishes: each object's full byte range is completely and correctly accounted for by the current symbol-map inventory; each object's boundary, independently derived two different ways (mechanical merge-and-gap accounting vs. hand-reviewed/byte-matched function identity), agrees; and each object's true edges show a real, checked zero-padding convention (not assumed, not uniform between the two objects). It does **not** establish PSYLINK's whole-executable section ordering, that GNU binutils reproduces PsyQ's own object file format, that either object's *name* (`SYS`, `FORMAT`) is the original PsyQ source/object filename (see Unit F/`## 1. Contiguous Byte Coverage vs. Semantic Name Provenance` below — name identity is a separate, still-open question), or a whole-image match. Any other `<name>_OBJ_*` run in the symbol map remains `candidate_only` until it independently passes the same three checks.

### Update 2026-08-04 (continued): Systematic scan of the remaining multi-row runs — a third confirmed boundary (`SSSTART`) and an instructive negative result (`BIOS`)

Following the same method, every one of the 59 multi-row `<name>_OBJ_<offset>` prefixes in the current symbol-map CSV was checked mechanically: for each, whether its per-row implied bases agree (`address − offset` constant across all its rows), whether that consistent base equals the run's own lowest address (ruling out a truncated/offset-0-missing run), and whether the row immediately preceding the run's start or immediately following its measured end is itself `confidence: verified`. Only three prefixes passed this filter: `SYS` and `FORMAT` (above) and two new candidates, `BIOS` and `SSSTART`. Both were carried through the full four-criterion check.

**`BIOS_OBJ_*` (`0x8003fec8`–`0x80041628`, 5,984 bytes, 21 rows) — criteria 1 and 2 met, criterion 3 fails (real negative result):**

*Naming note*: this `BIOS`-prefixed `<name>_OBJ_*` run is unrelated to and must not be confused with §1's "PsyQ BIOS/kernel trampoline block" (the ~30 individually-named 12-byte vector stubs like `_card_read`, `ResetEntryInt`, scattered across the executable with their own already-documented 4-byte padding convention). Ghidra's auto-analysis independently picked the label `BIOS` for this specific 5,984-byte contiguous object region; the two "BIOS" names share only that heuristic label, not an identity.

```powershell
./tools/build/Invoke-PsyqObjectBoundaryCheck.ps1 -Prefix BIOS -ObjectStart ([Convert]::ToInt64('8003fec8',16)) -ObjectEnd ([Convert]::ToInt64('80041628',16))
# span_bytes: 5984, covered_bytes: 5984, gap_bytes: 0, complete_byte_account: true
```

Criterion 1 (complete byte account) holds. Criterion 2 also holds: the object's implied base (`0x8003fec8`) lands exactly on the measured end of the independently byte-matched `CdPosToInt` (`0x8003fe48` + 128 bytes = `0x8003fec8`), the same immediately-adjacent-verified-neighbor pattern already established for `FORMAT`. But dumping the true edges directly from the lawful executable:

```text
0x8003fec0: 08 00 e0 03 6a ff 42 24 d0 ff bd 27 0e 80 03 3c
0x80041620: 08 00 e0 03 28 00 bd 27 88 ff bd 27 5c 00 b3 af
```

Both edges are **dense real code with zero padding bytes**: `CdPosToInt`'s own `jr ra` epilogue (`08 00 e0 03 6a ff 42 24`) runs immediately into `BIOS_OBJ_0`'s first instruction (`d0 ff bd 27` = `addiu sp,sp,-0x30`) with no gap at all, and the object's own last function's `jr ra` epilogue (`08 00 e0 03 28 00 bd 27`) runs immediately into the next, currently-`unverified` `FUN_80041628` with no gap either. Unlike `SYS` and `FORMAT`, there is no padding-byte signal at either edge distinguishing this object from its neighbors — criterion 3 explicitly fails here. `BIOS` is real, reportable progress (2 of 4 criteria, both independently reproducible) but is **not** `object_boundary_confirmed`; recorded here as the negative result the criteria are designed to produce when warranted, not smoothed into a weaker claim.

**`SSSTART` (`0x8003030c`–`0x80030610`, 772 bytes, 9 rows) — all four criteria met, a third confirmed boundary:**

```powershell
./tools/build/Invoke-PsyqObjectBoundaryCheck.ps1 -Prefix SSSTART -ObjectStart ([Convert]::ToInt64('8003030c',16)) -ObjectEnd ([Convert]::ToInt64('80030610',16))
# span_bytes: 772, covered_bytes: 772, gap_bytes: 0, complete_byte_account: true
```

Nine rows (seven anonymous `SSSTART_OBJ_*` fragments plus two real named PsyQ SPU sequence-driver functions, `SsStart` and `SsStart2`) resolve to one consistent implied base with a complete, gap-free byte account — criterion 1. The object's start (`0x8003030c`) lands exactly on the measured end of the independently byte-matched `SsSetMVol` (`0x800302bc` + 80 bytes) — criterion 2, the same adjacent-neighbor pattern. The true edges:

```text
0x80030300: 40 00 bd 27 08 00 e0 03 00 00 00 00 e0 ff bd 27
0x80030608: 08 00 e0 03 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 c8 ff bd 27
```

The leading edge is dense (`SsSetMVol`'s `jr ra` epilogue runs directly into `SSSTART_OBJ_0`'s first instruction, no gap) — the mirror image of `FORMAT`'s dense trailing edge. The trailing edge shows a real **12-byte zero-padding run** between the object's own last `jr ra` epilogue (ending at the measured `0x80030610`) and the next independently byte-matched function, `SsSeqCalledTbyT`, which starts at `0x8003061c` (`0x80030610` + 12 = `0x8003061c`, confirmed by arithmetic). This is the same asymmetric shape as `FORMAT` (one dense edge, one padded edge), just mirrored — dense-then-padded instead of padded-then-dense — and is reported as such rather than forced to match either prior object's exact shape. Criterion 3 is satisfied.

**`SSSTART` therefore independently satisfies all four criteria and is recorded as a third `object_boundary_confirmed` result**, alongside `SYS` and `FORMAT`. The same criterion-4 scope limits apply: this does not establish `SSSTART`'s name as PsyQ's own object/source filename, PSYLINK's section ordering, or a whole-image match. With three unrelated confirmed instances now on record (plus one honest near-miss in `BIOS`), the method itself — mechanical merge-and-gap accounting cross-checked against an adjacent independently-verified function, then a direct true-edge byte dump — is well corroborated as reliable; each *new* candidate object still requires its own independent check, not an assumption that it will also pass.

### Update 2026-08-04 (continued, second pass): Broadened candidate scan — a fourth confirmed boundary (`S_SCA`) and a second negative result (`UT_REV`)

The first scan (above) only counted a candidate if the row *immediately adjacent* to its start/end was itself `verified`, regardless of whether that neighbor had a real name or was another anonymous `<name>_OBJ_*` fragment. That undercounts: `SYS`'s own original corroboration (`ResetGraph`) works because a **real, independently identified function** occupies the object's own first offset, not because of mere adjacency to *any* verified row — two mechanically-placed anonymous fragments abutting each other with zero gap is unremarkable and proves nothing extra. Re-ran the scan requiring the corroborating row (whether it sits exactly at the implied base, ends exactly at the base, or starts exactly at the measured end) to have a **real, non-`_OBJ_*` name** — the same standard `FORMAT`/`SSSTART`/`BIOS_OBJ_*` were already held to. This raised the candidate pool from the original 2 to 57 of the 59 base-consistent multi-row runs (most objects, unsurprisingly, contain at least one real named PsyQ function). Two more were checked end-to-end.

**`UT_REV` (`0x80032afc`–`0x80032b98`, 156 bytes, 4 rows) — criteria 1 and 2 met, criterion 3 fails:**

```powershell
./tools/build/Invoke-PsyqObjectBoundaryCheck.ps1 -Prefix UT_REV -ObjectStart ([Convert]::ToInt64('80032afc',16)) -ObjectEnd ([Convert]::ToInt64('80032b98',16))
# span_bytes: 156, covered_bytes: 156, gap_bytes: 0, complete_byte_account: true, interval_rows: 4
```

Interior: `SsUtSetReverbType` (at the implied base itself), `UT_REV_OBJ_54`, the previously gap-sweep-reconstructed `FUN_80032b84` (4 bytes — filling what had been an internal gap before the 2026-08-04 gap-sweep closure), and `UT_REV_OBJ_8C`. Criterion 1 holds. Criterion 2 holds on both sides: the base lands exactly on the end of the independently byte-matched `_spu_setReverbAttr` (`0x8003262c` + 1232 = `0x80032afc`), and the measured end lands exactly on the start of the independently byte-matched `SsUtGetReverbType`. But the true edges:

```text
0x80032af0: fe 01 62 a4 08 00 e0 03 00 00 00 00 e8 ff bd 27
0x80032b90: 08 00 e0 03 18 00 bd 27 0e 80 02 3c 24 51 42 84
```

are dense on **both** sides — `_spu_setReverbAttr`'s `jr ra` epilogue runs directly into `SsUtSetReverbType`'s first instruction, and the object's own last `jr ra` epilogue runs directly into `SsUtGetReverbType`'s first instruction, no padding bytes anywhere. Same outcome as `BIOS_OBJ_*`: real progress on two criteria, an explicit, checked negative on the third, not confirmed.

**`S_SCA` (`0x8002ff3c`–`0x800302b8`, 892 bytes, 23 rows: `SpuSetCommonAttr` plus 22 `S_SCA_OBJ_*` fragments) — all four criteria met, a fourth confirmed boundary:**

```powershell
./tools/build/Invoke-PsyqObjectBoundaryCheck.ps1 -Prefix S_SCA -ObjectStart ([Convert]::ToInt64('8002ff3c',16)) -ObjectEnd ([Convert]::ToInt64('800302b8',16))
# span_bytes: 892, covered_bytes: 892, gap_bytes: 0, complete_byte_account: true, interval_rows: 23
```

Criterion 1 holds. The base lands exactly on the end of the independently byte-matched `SsSetSerialAttr` (`0x8002fe7c` + 192 = `0x8002ff3c`) — criterion 2. The true edges:

```text
0x8002ff30: 40 00 bd 27 08 00 e0 03 00 00 00 00 21 30 00 00
0x800302a8: 02 00 42 34 aa 01 62 a4 08 00 e0 03 00 00 00 00 00 00 00 00 c0 ff bd 27
```

The leading edge is dense (`SsSetSerialAttr`'s epilogue runs directly into the object's first instruction). The trailing edge is **not** dense: the object's own last function's `jr ra` epilogue ends exactly at the measured `0x800302b8`, followed by **4 zero-padding bytes**, then `SsSetMVol`'s first instruction at `0x800302bc` (`0x800302b8` + 4 = `0x800302bc`, confirmed by arithmetic; `SsSetMVol` is independently byte-matched and is the same function whose *other* edge already corroborates `SSSTART`, above — an incidental but welcome cross-check between two independently confirmed objects). This dense-leading/padded-trailing shape matches `SYS`'s own trailing-edge pattern (object end, then zero padding, then the next independently known function) rather than `FORMAT`'s reversed one — criterion 3 is satisfied.

**`S_SCA` therefore independently satisfies all four criteria and is recorded as a fourth `object_boundary_confirmed` result**, alongside `SYS`, `FORMAT`, and `SSSTART`. Four unrelated confirmed instances and two honest negative results (`BIOS_OBJ_*`, `UT_REV`) are now on record from a systematic, reproducible scan of the full 59-run candidate pool — not a cherry-picked handful.

### Update 2026-08-04 (continued, third pass): A fifth confirmed boundary (`PRESET`), and why the dense-edge negatives cluster together

Checked the strongest remaining double/triple-corroborated candidates from the broadened scan. `VSYNC` (`0x800358f8`–`0x80035b08`, 528 bytes, 4 rows) has the strongest possible criterion-2 signal — a *triple* corroboration, with a real named function at its base (`VSync`), immediately preceded by `_SN_read`, and immediately followed by `ResetCallback` — and a complete byte account (`covered_bytes: 528`, `gap_bytes: 0`), but a direct dump of both true edges found them **both dense**, no padding anywhere:

```text
0x800358ec: ff ff 02 24 08 00 e0 03 00 00 00 00 0d 80 02 3c
0x80035b00: 08 00 e0 03 00 00 00 00 0e 80 02 3c dc 86 42 8c
```

A third negative result (criteria 1+2 met, criterion 3 fails), joining `BIOS_OBJ_*` and `UT_REV`. All three dense-edge negatives so far sit inside the same tightly packed SPU/sequencer-library region (`0x8002d9bc`–`0x80035xxx`) that this document's §2 already flags as reading like "a PsyQ SPU sequence/MIDI driver library family" of unconfirmed name identity — a plausible, though unproven, explanation is that this whole region is one dense object (or a few large ones) with padding, if any, only at its true outer edges, not at every internal `<name>_OBJ_*` grouping boundary a naming heuristic happens to draw.

Testing that idea, `PRESET` (`0x8007c4e0`–`0x8007ce44`, 2,404 bytes, 23 rows) was picked specifically because it sits in a different region — the `GS_*`/graphics library area, not the SPU cluster:

```powershell
./tools/build/Invoke-PsyqObjectBoundaryCheck.ps1 -Prefix PRESET -ObjectStart ([Convert]::ToInt64('8007c4e0',16)) -ObjectEnd ([Convert]::ToInt64('8007ce44',16))
# span_bytes: 2404, covered_bytes: 2404, gap_bytes: 0, complete_byte_account: true, interval_rows: 25
```

The base lands exactly on the end of the independently byte-matched `GsMapModelingData` (`0x8007c470` + 112 = `0x8007c4e0`) — criterion 2. True edges:

```text
0x8007c4d0: f4 ff 40 14 1c 00 a5 24 08 00 e0 03 00 00 00 00
0x8007ce38: 28 00 b0 8f 08 00 e0 03 50 00 bd 27 00 00 00 00
0x8007ce44: 00 00 00 00 00 00 00 00 00 00 00 00 03 12 05 00
```

The leading edge is dense (`GsMapModelingData`'s epilogue runs directly into the object's first instruction). The trailing edge shows a real **12-byte zero-padding run** from the measured end `0x8007ce44` up to `0x8007ce50`, where content resumes. One honest caveat, stated plainly rather than smoothed over: unlike every padding edge found so far, the row immediately after this padding (`FUN_8007ce50`) is currently `confidence: unverified` — this pass does not know what it is or whether it is even code. That does not weaken criterion 3 itself (the padding bytes are directly observed, not inferred from the neighbor's identity), but it means this edge's corroboration is asymmetric: criterion 2's independent agreement comes entirely from the *leading* edge (`GsMapModelingData`), while criterion 3's padding evidence comes from the *trailing* edge — together, not from the same side, unlike `S_SCA`'s or `SYS`'s trailing-edge results where corroboration and padding sat together.

**`PRESET` independently satisfies all four criteria and is recorded as a fifth `object_boundary_confirmed` result.** Five confirmed objects and three honest dense-edge negative results (`BIOS_OBJ_*`, `UT_REV`, `VSYNC`) are now on record, all reproducible from the tracked CSV and the lawful executable.

### Update 2026-08-04 (continued, fourth pass): A sixth confirmed boundary (`PADENTRY`), from the PAD-driver cluster

`PADENTRY` (`0x8003c548`–`0x8003c934`, 1,004 bytes, 20 rows) was picked from yet another region — the PAD/controller-driver cluster, distinct from both the SPU-library and `GS_*`-graphics areas already tested:

```powershell
./tools/build/Invoke-PsyqObjectBoundaryCheck.ps1 -Prefix PADENTRY -ObjectStart ([Convert]::ToInt64('8003c548',16)) -ObjectEnd ([Convert]::ToInt64('8003c934',16))
# span_bytes: 1004, covered_bytes: 1004, gap_bytes: 0, complete_byte_account: true, interval_rows: 20
```

Criterion 1 holds, with one honest caveat stated plainly: of the 20 interior rows (`PadChkVsync`, `PadStartCom`, `PadStopCom`, `PadChkMtap`, `PadGetState`, `PadInfoMode`, `PadInfoAct`, `PadInfoComb`, the gap-sweep-reconstructed `FUN_8003c874`, and eleven `PADENTRY_OBJ_*`/named fragments), one — `PADENTRY_OBJ_164` (4 bytes) — is `confidence: library_signature`, not yet individually byte-matched, only signature-identified. Its address and size still occupy real, accounted-for bytes (nothing is missing from the span), but it is not yet exact-matched the way every other row in this object is.

Criterion 2: the object's base (`0x8003c548`) is occupied directly by the independently byte-matched `PadChkVsync` — the same base-occupancy pattern `SYS`/`ResetGraph` established — and separately the measured end lands exactly on the independently byte-matched `PadSetActAlign`'s start. True edges:

```text
0x8003c538: 08 00 e0 03 00 00 00 00 00 00 00 00 00 00 00 00
0x8003c928: 10 00 b0 8f 08 00 e0 03 20 00 bd 27 0e 80 02 3c
```

The leading edge is **not** dense: `_remove_ChgclrPAD` (104 bytes, `0x8003c4d8`–`0x8003c540`) ends its own `jr ra`/delay-slot pair at `0x8003c540`, followed by a real **8-byte zero-padding run** up to the base `0x8003c548`. The trailing edge is dense (the object's own last function's epilogue runs directly into `PadSetActAlign`'s first instruction, no gap). Dense-trailing/padded-leading — the same asymmetric shape `FORMAT` showed. Criterion 3 is satisfied.

**`PADENTRY` independently satisfies all four criteria and is recorded as a sixth `object_boundary_confirmed` result**, with the `PADENTRY_OBJ_164` caveat noted above carried forward rather than glossed over. Six confirmed objects across three distinct library regions (SPU/sequencer, `GS_*` graphics, PAD driver) and three dense-edge negative results are now on record.

### Update 2026-08-04 (continued, fifth pass): A seventh confirmed boundary (`PADMAIN`), immediately adjacent to `PADENTRY`

`PADMAIN` (`0x8003ca08`–`0x8003d714`, 3,340 bytes, 23 rows) sits in the same PAD-driver cluster as `PADENTRY`, immediately after it — a useful adjacency check, since the two objects' shared seam can be examined from both sides at once:

```powershell
./tools/build/Invoke-PsyqObjectBoundaryCheck.ps1 -Prefix PADMAIN -ObjectStart ([Convert]::ToInt64('8003ca08',16)) -ObjectEnd ([Convert]::ToInt64('8003d714',16))
# span_bytes: 3340, covered_bytes: 3340, gap_bytes: 0, complete_byte_account: true, interval_rows: 23
```

All 23 interior rows (`PadEnableCom`, `_padSetVsyncParam`, `_padChkVsync`, `_padStartCom`, `_padStopCom`, `_padInitSioMode`, `_padSioRW`, `_padSioRW2`, the gap-sweep-reconstructed `FUN_8003d154`, and fourteen `PADMAIN_OBJ_*` fragments) are `confidence: verified` — no caveat this time. The base is occupied directly by the independently byte-matched `PadEnableCom` — criterion 2. True edges:

```text
0x8003c9f0: 10 00 b0 8f 08 00 e0 03 20 00 bd 27 00 00 00 00 00 00 00 00 00 00 00 00
0x8003d708: 10 00 b0 8f 08 00 e0 03 28 00 bd 27 e8 ff bd 27
```

The leading edge is **not** dense: `PadSetAct` (72 bytes, `0x8003c9b4`–`0x8003c9fc`) ends its own epilogue at `0x8003c9fc`, followed by a real **12-byte zero-padding run** up to the base `0x8003ca08`. This is the *same* padding run whose far side already bounds `PADENTRY`'s own trailing edge (`PadSetActAlign` at `0x8003c934`) two objects earlier — `PadSetAct` sits between `PadSetActAlign` and `PADMAIN`'s base, so this is a distinct 12-byte gap, not a duplicate of `PADENTRY`'s finding. The trailing edge is dense (the object's own last function's epilogue runs directly into `_padClrIntSio0`'s first instruction). Padded-leading/dense-trailing — the same shape as `PADENTRY` and `FORMAT`. Criterion 3 is satisfied.

**`PADMAIN` independently satisfies all four criteria and is recorded as a seventh `object_boundary_confirmed` result.** Seven confirmed objects (two of them adjacent, `PADENTRY` then `PADMAIN`, both independently passing all four criteria on their own terms) and three dense-edge negative results are now on record.

### Update 2026-08-04 (continued, sixth pass): An eighth confirmed boundary (`PADCMD`), completing a third adjacent pair in the PAD cluster

`PADCMD` (`0x8003d7d8`–`0x8003e3d4`, 3,068 bytes, 42 rows) sits immediately after `PADMAIN` in the same PAD-driver cluster — a third consecutive confirmed object in this region, after `PADENTRY` and `PADMAIN`:

```powershell
./tools/build/Invoke-PsyqObjectBoundaryCheck.ps1 -Prefix PADCMD -ObjectStart ([Convert]::ToInt64('8003d7d8',16)) -ObjectEnd ([Convert]::ToInt64('8003e3d4',16))
# span_bytes: 3068, covered_bytes: 3068, gap_bytes: 0, complete_byte_account: true, interval_rows: 42
```

Criterion 1 holds, with the same kind of caveat as `PADENTRY` stated plainly: of the 42 interior rows (real names include `_padSetAct`, `_padSetCmd`, `_padSendAtLoadInfo`, `_padRecvAtLoadInfo`, `_padGetActSize`, `_padLoadActInfo`, `_padSetActAlign`, `_padSetMainMode`, `_padCmdParaMode`, plus the gap-sweep-reconstructed `FUN_8003d984`/`FUN_8003d9d8`/`FUN_8003dd58`/`FUN_8003dee0`/`FUN_8003df74`, and 28 `PADCMD_OBJ_*` fragments), three 4-byte fragments (`PADCMD_OBJ_2FC`, `PADCMD_OBJ_8B0`, `PADCMD_OBJ_B40`) are `confidence: library_signature`, not yet individually byte-matched — their bytes are accounted for in the span but not yet exact-matched like the rest.

Criterion 2: the base is occupied directly by the independently byte-matched `_padSetAct` (the `SYS`/`ResetGraph` base-occupancy pattern), and the measured end lands exactly on the independently byte-matched `FUN_8003e3d4`'s start. True edges:

```text
0x8003d7c0: 00 00 00 00 08 00 e0 03 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
0x8003e3c8: 2c 00 80 ac 08 00 e0 03 36 00 80 a0 00 00 00 00
```

The leading edge is **not** dense: `_padWaitRXready` ends its own `jr ra`/delay-slot pair at `0x8003d7cc`, followed by a real **12-byte zero-padding run** up to the base `0x8003d7d8` — the same 12-byte shape `PADMAIN`'s own leading edge showed, a separate instance in the same cluster, not a re-measurement of it. The trailing edge is dense: the object's own last function's `jr ra`/delay-slot pair ends exactly at the measured `0x8003e3d4`, immediately followed by `FUN_8003e3d4`'s own first instruction (not padding — its leading `00 00 00 00` bytes are a real `sll $zero,$zero,0x0` no-op instruction, part of that function's own reconstructed, byte-matched body, not an inter-object gap). Padded-leading/dense-trailing — the same shape as `PADENTRY` and `PADMAIN`. Criterion 3 is satisfied.

**`PADCMD` independently satisfies all four criteria and is recorded as an eighth `object_boundary_confirmed` result**, with the three `library_signature`-tier interior rows noted above carried forward rather than glossed over. The PAD-driver cluster now has three consecutive confirmed objects (`PADENTRY` → `PADMAIN` → `PADCMD`, each independently passing all four criteria at its own boundary) alongside `SYS`, `FORMAT`, `SSSTART`, `S_SCA`, and `PRESET` — eight confirmed objects and three dense-edge negative results total.

## What remains unconfirmed here

The specific object names recovered this way (`SPU`, `S_SAV`, `S_SCA`,
`VM_SEQ`, `MIDIREAD`, `TEMPO`, `SSSTART`, `SSTICK`, `SSEND`, and others
clustered in `0x8002d9a8`–`0x80035xxx`) read, by their naming style, as a
PsyQ SPU sequence/MIDI driver library family — but this was **not**
independently verified against a primary, publicly documented PsyQ SDK
manual table of contents or function list; a web search for the specific
names returned no such primary source. This reading is left explicitly
unconfirmed, distinct from the address/offset arithmetic above (which is
independently, reproducibly checkable from this repository's own CSV without
trusting the names' meaning at all).

# 3. Duplicate function bodies

Every SHA-256 hash recorded across `/docs/workflows/function-byte-match.md`
was checked for exact duplicates: 110 hash occurrences resolve to 106
distinct values. Exactly two values recur (accounting for all four repeat
occurrences):

- **`2f228789930df0a6d6db76e145ba3301694d7c01b9df2dbf45d2f48ad7aaee1`**,
  twice: the already-documented `SetTransMatrix` duplicate at `0x8002b210`
  and `0x80037848`, ~0x0c638 bytes apart in clearly different regions of the
  executable (`0x8002b210` sits alone, isolated by a 49,112-byte gap from the
  next GTE match; `0x80037848` sits inside the tight `MulMatrix0`/
  `SetRotMatrix`/`SetLightMatrix`/`SetTransMatrix` run). This is a
  **substantive**, non-trivial 32-byte routine duplicated verbatim — the kind
  of duplication static linking produces when more than one translation unit
  pulls in its own copy of a small library routine that the archive/linker
  does not deduplicate across object files. Consistent with, but not proof
  of, at least two separate object files both containing their own copy of
  `SetTransMatrix`.
- **`6d64edf91449c1b17746c1ef18afa2eb25c70bdf1322ab3df5a2630993b7e2f1`**, four
  times: `FUN_80075838`, `FUN_80075ae0`, `FUN_80075af0` (all in
  `screen-selector`) and `FUN_800236cc` (in `mode-control`). All four are the
  trivial 8-byte `jr $ra; nop` no-op body. This is **weak** evidence of
  shared object provenance — any empty C function compiles to the same two
  instructions under this project's pinned flags regardless of which
  translation unit or object it came from, so this collision is expected by
  construction and is not treated as informative about object boundaries,
  unlike the `SetTransMatrix` case.

No other duplicate hash was found among currently accepted functions.

# 4. Residual object/symbol metadata

Beyond the `<name>_OBJ_<offset>` rows analyzed in full above (already the
main finding of this pass), the symbol map's existing manual review already
recorded one other residual artifact: the one-byte `2MBYTE_OBJ_B4` marker row
at `0x800207ac`, immediately after `stup0`, which the decompiler could not
parse as an instruction — independently corroborating that it is a
non-code, tool-inserted object-boundary marker rather than a real byte.
`ghidra_psx_ldr`'s own PsyQ-`XXX`/object-marker convention (per its upstream
README) is the documented mechanism behind that marker. No other
`analyzeHeadless`/Ghidra-native evidence of retained linker section names,
`.comment`/debug-info remnants, or an unstripped local symbol table fragment
was searched for or found in this pass; that remains open, not ruled out.

# 5. Whole-executable gap sweep: what the unattributed 51% actually contains

The symbol map's own summary statistics (2,127 main-executable rows) imply a
large unattributed remainder: the CSV rows only account for 510,616 of the
1,050,624 code-region bytes (`t_addr` `0x8001a800` through `t_addr+t_size`
`0x8011b000`), leaving 540,259 bytes with no row at all. Before this pass,
that number had no further breakdown and was easy to misread as "540KB of
undiscovered functions." It is not. Reproduced with the new
`tools/build/Invoke-MainExecutableGapSweep.ps1` (merges every `overlay==main`
row into covered intervals within `[0x8001a800, 0x8011b000)`, computes the
gap complement, and classifies each gap's zero/non-zero byte split directly
from the hash-gated executable):

```powershell
pwsh -File tools/build/Invoke-MainExecutableGapSweep.ps1 `
    -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1
```

Result at the current inventory: 384 gaps / 540,259 bytes total, but **one**
gap accounts for 452,472 of them (83.8%), and a second accounts for another
24,312 (4.5%). Together two gaps explain 476,784 bytes — 88.2% of the
"unattributed" total — leaving 383 gaps / 87,787 bytes, of which only 135
gaps (60,391 bytes, excluding the second giant below) are 65 bytes or larger
and therefore plausible function-shaped candidates; the rest (248 gaps,
27,396 bytes) are small enough to be ordinary alignment padding.

## 5.1 The trailing gap (`0x800ac888`–`0x8011b000`, 452,472 bytes)

This gap starts exactly where the last currently-catalogued row
(`FUN_800ac764`, unverified, ends at `0x800ac888`) leaves off and runs to the
exact end of the code region — the entire final 43.1% of the file. A
byte-level scan (not sampling) found:

- **199,284 non-zero bytes**, concentrated in the first roughly two-thirds of
  the range, in short zero/non-zero runs (14,411 zero runs under 256 bytes,
  totaling 23,164 bytes, interleaved throughout) rather than one uniform
  block. A 24-byte sample at `0x800ac888+~0x2860` decodes as the ASCII
  string `MENU` preceded by a short non-zero header-shaped run
  (`00 1f 00 01 c0 1f 00 00`); most other sampled 24-byte windows in this
  span are high-entropy byte patterns with no recognizable MIPS instruction
  shape or readable text. **Suspected, not confirmed**: this reads as
  embedded resource/asset data (e.g. a UI resource table plus packed
  graphics or audio payload), not code — no attempt was made here to
  identify the container format, and this is a sampling-based impression,
  not the byte-by-byte instruction-decode check §1 and §2 used for
  code/padding classification.
- **One dominant zero run of 222,455 bytes at `0x800e2931`–`0x8011acc8`.**
  This closely matches — but does not exactly reproduce — the BSS-clear
  range already documented in this project's manual review of `start`
  (`docs/games/ddr-5th-mix-jp-symbol-map.csv`, row `0x80020700`): "zeroes
  `DAT_800e2938`..`UNK_80118e28`", i.e. `0x800e2938`–`0x80118e28`
  (221,936 bytes). The scanned run's start is 7 bytes earlier and its end is
  7,840 bytes later than that documented range. The two figures agree to
  within 0.4% and the start addresses agree to within a word, which is
  strong circumstantial corroboration that this is the same BSS region (the
  small discrepancy is unexplained — worth resolving before treating the
  boundary as exact — but this is on-disk zero content either way, not
  asset data). If corroborated, this reclassifies roughly half of this
  giant gap as **already-understood, zero-initialized static storage**, not
  an unknown-content blob: nothing to reverse-engineer, only a `.bss`-style
  declaration to add to a future linker script.
- The remaining 30,733 bytes are smaller zero runs (up to 4,203 bytes each)
  interspersed within the non-zero span, plus an 840-byte all-zero tail
  immediately before `0x8011b000`.

## 5.2 The leading gap (`0x8001a800`–`0x800206f8`, 24,312 bytes)

This is everything before `start` (`0x80020700`) — the very front of the
loaded image. A sample at the gap's start reads as readable ASCII text
mixed with what is very likely a `printf`-style format string:
`%s\t--- %08x %08x %08x\n`, followed by short null-terminated strings
including `NOW LOADING.` and `PLEASE WAIT...`. A sample near the gap's end
shows a repeating 4-byte little-endian pattern whose low 16 bits step by a
small constant and whose high 16 bits are consistently `0x800a` (e.g. bytes
`98 af 0a 80`, `a0 af 0a 80`, `a8 af 0a 80`, ... decoding to the pointer
sequence `0x800aaf98`, `0x800aaf a0`, `0x800aafa8`, ...) — consistent with a
pointer/jump table into the `0x800aXXXX` region, not instructions. Both
observations point the same direction: this is a debug string table plus a
data table, not un-inventoried code. This has **not** been checked with the
same rigor as §1/§2 (no exhaustive byte-by-byte classification, no
cross-reference of the pointer table's targets against the symbol map); it
is reported as a strong but unverified lead, in keeping with this document's
practice of separating what was checked from what remains open.

## 5.3 What remains open

- The 135 gaps of 65+ bytes outside the two giants (60,391 bytes) are the
  actual candidate pool for un-inventoried code, directly comparable in
  scale to the already-completed `library_signature` batches (Batches 3–8
  covered 510 functions / 25,112 bytes together, spanning the 8–128-byte
  range). A handful were spot-checked in prior sessions and did decode as
  plausible MIPS (recognizable `lui $v1,0x800e`-style loads matching
  patterns already seen across multiple reconstructed batches); this has
  not yet been done exhaustively or per-gap.
- Three CSV rows have declared sizes that overrun a since-verified neighbor:
  `VS_VH_OBJ_3FC` (`library_signature`, claims 140 bytes from `0x800353a8`
  but the byte-matched `VS_VH_OBJ_434` starts 56 bytes in, at `0x800353e0`)
  and `PadInfoAct` (`library_signature`, claims 132 bytes from `0x8003c7b8`
  but the byte-matched `PADENTRY_OBJ_2F0` starts 128 bytes in, at
  `0x8003c838`). Both are pre-existing `ghidra_psx_ldr` auto-analysis size
  guesses, not yet independently reviewed; their true sizes are at most 56
  and 128 bytes respectively. `Invoke-MainExecutableGapSweep.ps1` reports
  these as `overlaps` (3 raw entries, one root cause each) so a future pass
  does not need to rediscover them by hand. **Resolved 2026-08-04**: both
  rows corrected to their maximum non-overlapping size (56 and 128 bytes)
  and re-verified `byte_match: true`; see the 2026-08-04 update below.
- The suspected asset-data classification in §5.1 and the suspected
  string/pointer-table classification in §5.2 are both sampling-based
  impressions, not the exhaustive per-byte instruction-decode evidence this
  document otherwise requires (§1, §2). Neither should be cited as more
  than "suspected" until confirmed by a systematic check (e.g. attempting
  MIPS disassembly across the full span and confirming it fails to decode
  as valid instructions throughout, or identifying the asset container
  format).

## 5.4 Cataloguing pass: 297 new `tool_heuristic` rows

Following up the same day, the 135 candidate gaps from §5.3 were
disassembled (`-M no-aliases`) and scored against the mnemonic set already
established as normal for this executable across Batches 3–8. 133 of 135
scored 90%+ recognized-mnemonic density on the first pass; both exceptions
were manually confirmed as false negatives from the scoring heuristic, not
evidence of non-code content — one gap sits at an odd address immediately
after the existing one-byte `2MBYTE_OBJ_B4` marker (§4) and is genuinely
misaligned for MIPS decoding, the other is a large (598-instruction)
function using COP2/GTE instructions outside the scoring whitelist, visually
confirmed as a textbook `addiu sp,sp,-72` / callee-save prologue on
inspection.

Function boundaries within each gap were then segmented on every `jr`
instruction (any target register, to also catch the `lui`/`addiu`/`jr`
BIOS-vector-call trampoline idiom already established in Batches 1–2 — a
plain PsyQ syscall-call pattern, not a return, but one that still marks a
clean function boundary) plus its delay slot, skipping zero-only alignment
padding before the next segment. An unconditional `j` was deliberately
*not* treated as a boundary after testing showed it over-splits by roughly
2x (592 vs. 285 segments on the same input) — most `j` instructions in this
codebase are internal control flow (loop continuation, shared local exit
stubs), not function boundaries, unlike `jr`.

This produced 297 new rows (58,952 bytes) covering 134 of the 135 candidate
gaps, added to the symbol map at `confidence = tool_heuristic` /
`source_status = decompiler_output_only`, named `FUN_<address>` per this
project's existing convention for un-signature-matched discoveries, with
`verification_evidence` recording the sweep+segmentation method and date.
`tool_heuristic` (not `library_signature` or `manual`) is the correct tier
per `/docs/foundations/symbol-map-schema.md`: these boundaries come from a
calling-convention heuristic over raw disassembly, not a signature-database
match or a human per-function review. 12 of the 297 rows are the entire
remainder of a gap after its last detected `jr`, with no further `jr` found
before the gap's own end (i.e. the row's *lower* bound is a real boundary,
but its *upper* bound is only the enclosing gap's edge, not a confirmed
local return); each such row's `notes` field says so explicitly and flags
it as less certain than the rest of this pass.

Verified before insertion: no duplicate addresses among the 297 rows, no
address collision with any pre-existing row, and the per-gap byte sums
account for every byte of all 134 processed gaps (the small residual in 5 of
them is trailing zero-alignment padding correctly left uncatalogued, not a
gap in the accounting).

Left open: the misaligned `0x800207ad` gap (1,399 bytes, needs its true
4-byte-aligned start determined before segmentation) and the 4,523 bytes
still fully unaccounted for after this pass (the 1,399-byte gap above plus
the small sub-65-byte gaps this pass did not attempt). None of these 297
rows have been individually reviewed or byte-matched; they are a boundary
proposal, at the same evidentiary weight as any other `tool_heuristic` row,
ready for the same kind of batch reconstruction already used for
`library_signature` rows in Batches 3–8.

### Update 2026-08-03: Catalogued the misaligned startup gap

The hash-gated gap sweep reported the open gap `0x800207ad`–`0x80020d24` (1,399 bytes; 320 zero bytes and 1,079 non-zero bytes). Correctly mapping the PS-X EXE load address and disassembling a temporary byte slice with `mipsel-none-elf-objdump -D -b binary -m mips:3000 -EL -M no-aliases --adjust-vma=0x800207a0` showed 15 bytes of non-code marker/data at `0x800207ad`–`0x800207bb`, followed by three complete MIPS functions: `FUN_800207bc` (648 bytes), `FUN_80020a44` (692 bytes), and `FUN_80020cf8` (44 bytes). Ghidra 12.1.2 `DumpFunctionDetail.java` independently produced the same starts and sizes; the functions end at `0x80020a40`, `0x80020cf4`, and `0x80020d20`, respectively, with the existing `FUN_80020d24` beginning immediately afterward.

The three functions are now catalogued at `confidence=manual` / `source_status=disassembly_reviewed`; this is boundary and semantic review evidence, not an exact byte-match claim. The 15-byte marker/data prefix remains explicitly non-code and unresolved in semantic identity. The remaining whole-code-region gap is therefore 3,139 bytes after this cataloguing pass; exact reconstruction remains a separate next step.

### Update 2026-08-04: Startup gap reconstructed and remaining whole-executable gap closed to marker/padding bytes only

Reconstructed `FUN_800207bc` (648 bytes), `FUN_80020a44` (692 bytes), and `FUN_80020cf8` (44 bytes) as hand-written MIPS in `src/ddr5thmix/GapStartup.s`; all three matched `byte_match: true` against lawful `SLPM_868.97_1` with GCC 14.2.0/binutils 2.43. The 15-byte marker/data prefix at `0x800207ad` remains explicitly non-code.

Before continuing the gap sweep, `Invoke-MainExecutableGapSweep.ps1` reported 3 overlaps: two pre-existing `library_signature` rows had declared sizes that overran an independently verified neighbor. `VS_VH_OBJ_3FC` (declared 140 bytes from `0x800353a8`) overran `VS_VH_OBJ_434` (`0x800353e0`) and `SsVabTransBody` (`0x8003540c`) by up to 84 bytes; corrected to the maximum non-overlapping size of 56 bytes. `PadInfoAct` (declared 132 bytes from `0x8003c7b8`) overran `PADENTRY_OBJ_2F0` (`0x8003c838`) by 4 bytes; corrected to 128 bytes. Both corrections truncated the existing hand-written source in `src/ddr5thmix/LibrarySignatureBatch10.s` to their true boundary and re-verified `byte_match: true` at the corrected size; the truncated trailing bytes were already independently reconstructed under their real neighbor's own row, so no coverage was lost. This resolved both flagged rows from the [§5.3 open item](#53-what-remains-open) list; the sweep's `overlap_count` is now 0.

With overlaps resolved, the whole-executable gap sweep reported 255 gaps outside the two already-classified giant regions (`0x8001a800` leading debug-string/pointer table and `0x800ac888` trailing asset-data-plus-BSS region), totaling 3,143 bytes: 181 gaps / 1,176 bytes fully zero (alignment padding between existing functions, consistent with the padding convention already established for Unit D and the SYS/FORMAT objects) and 74 gaps / 1,967 bytes containing non-zero content. Each non-zero gap was disassembled with `mipsel-none-elf-objdump -D -z -b binary -m mips:3000 -EL -M no-aliases --adjust-vma=<address>` (the `-z` flag again required to avoid silently eliding runs of 3+ identical instruction words, as in Batch 10). Every one of these gaps is bounded on both sides by an already-verified or already-catalogued neighbor row, so — unlike the original 135-gap candidate-pool sweep, which had to guess an upper bound from `jr` boundaries alone — the true byte extent of each gap here was already known before any disassembly; segmentation on `jr`/`j`-plus-delay-slot boundaries was used only to split cleanly-divisible gaps into individually named functions for readability, not to establish the boundary itself.

Classification of the 74 non-zero gaps:

- **4 gaps (59 bytes) are PsyQ object-header markers**, not code: `0x800365ac` (20 bytes: 12-byte zero pad + the established `"Ps"` signature `0x7350` + `0x00440000` section-length word), `0x8003ba64` and `0x8003bb24` (12 bytes each: 4-byte zero pad + the same 8-byte marker form, with tags `0x01` and `0x00` respectively — the exact prefix pattern already documented in Unit C immediately before `FUN_8003ba70`/`FUN_8003bb30`), plus the previously-documented 15-byte prefix at `0x800207ad`. None are reconstructed as functions.
- **3 gaps contained a clean function immediately followed by zero-alignment padding**: `0x80037f74` (8-byte function + 12 zero bytes), `0x8003b43c` (40-byte function + 4 zero bytes), and `0x8005383c` (36-byte function + 12 zero bytes). The function portion was catalogued and reconstructed; the padding tail was left uncatalogued per the established convention.
- **The remaining 70 gaps (1,880 bytes, including the two `function_plus_padding` cases' function portions) all decoded as complete, plausible MIPS** — clean prologue/epilogue pairs, BIOS/library calls (`jal` to already-verified functions such as `FUN_8003ba70`, `_SsSeqGetEof`, `LoadImage`, `DrawSync`), trivial `jr $ra` stub groups, and one interrupt/exception-style fragment using `mfc0`/COP0 registers (`0x80036724`) — and were segmented into 80 named functions (`FUN_<address>`), some gaps yielding 2–4 adjacent functions (e.g. `0x80053758` is four back-to-back 8-byte `jr $ra` stubs; `0x800a243c` is three functions of 12/8/16 bytes). Two gaps (`0x8002ee50`, `0x8003bf78`) contain a branch or jump target address that lies outside the gap itself, into the body of an already-verified neighboring function (`SpuSetIRQ`-region and `PADCMD_OBJ_7A8`-region respectively); rather than guess at a semantic merge, each was catalogued as a single row spanning its full, already-hard-bounded gap width and reconstructed byte-exact, with the out-of-range target recorded as a `sym_<address>` manifest cross-reference — the same convention already used for local jump targets lacking a `symbols` entry.

All 80 functions were hand-assembled and verified with `Invoke-FunctionMatch.ps1` against lawful `SLPM_868.97_1` SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee` with GCC 14.2.0/binutils 2.43: **80/80 `byte_match: true` on the first full verification pass**, no defects. All 80 rows were added to the symbol map at `confidence=verified`/`source_status=hand_written_source` with per-row reference/built SHA-256 evidence, in `src/ddr5thmix/GapSweepBatch1.s`. `screen-selector`, `mode-control`, and `runtime-core` module regressions and `git diff --check` all pass.

Re-running the gap sweep afterward confirms full closure: of the 3,143 bytes previously open, 1,880 are now exact-reconstructed functions, 1,204 are zero-alignment padding (up from 1,176 — the three newly exposed padding tails), and the remaining 59 bytes are the four already-evidenced PsyQ markers. **No unclassified or unaccounted bytes remain in the main-executable code region outside the two already-documented giant regions.**

# What would constitute sufficient evidence for "object boundary confirmed"

Matching this project's evidentiary style elsewhere, a future claim that a
specific original PsyQ object boundary is confirmed (not just plausible)
should require all of the following, together, for that specific object:

1. **A complete, contiguous byte account** for the claimed object's full
   address range — every byte either an already-exact-matched function, a
   function whose byte-identical body has been independently reconstructed
   and hashed (even if not yet promoted to the main manifest), or explicitly
   catalogued data — with zero unattributed bytes, reproduced via the same
   kind of merge-and-gap-check used in this document.
2. **An independently-derived boundary that agrees with the tool-derived
   one.** The `SYS`/`ResetGraph` result above is a promising instance of
   this (an address independently reached by hand-review agreeing with a
   mechanically implied object base), but one match is not a pattern; at
   least a second, unrelated instance would be needed.
3. **A stated, checked alignment/padding convention at the object's actual
   start and end boundaries** (not just its interior), distinguishing the
   object from its immediate neighbors — as this pass found for the BIOS
   stub block's 4-byte convention, but has not yet checked at any full
   object's true edges.
4. Explicit acknowledgment of what such a claim does **not** establish: it
   would confirm one object's internal layout and boundary, not PSYLINK's
   whole-executable section ordering, not that GNU binutils reproduces
   PsyQ's own object format, and not a whole-image match.

**Update 2026-08-04**: this bar has now been met, all four criteria together,
for eight specific objects — `SYS` (`0x800381e8`–`0x8003b114`), `FORMAT`
(`0x8003b6e8`–`0x8003ba38`), `SSSTART` (`0x8003030c`–`0x80030610`), `S_SCA`
(`0x8002ff3c`–`0x800302b8`), `PRESET` (`0x8007c4e0`–`0x8007ce44`), `PADENTRY`
(`0x8003c548`–`0x8003c934`), `PADMAIN` (`0x8003ca08`–`0x8003d714`), and
`PADCMD` (`0x8003d7d8`–`0x8003e3d4`) — see the "Update 2026-08-04: `FORMAT`'s
true edges checked" and all six "Update 2026-08-04 (continued)..." sections
under §2/Unit B above for the full per-criterion walkthroughs and
reproduction commands. Three further candidates (`BIOS_OBJ_*`, `UT_REV`,
`VSYNC`) each met criteria 1 and 2 but failed criterion 3 with a checked,
real negative result (dense boundaries, no padding at either edge) —
recorded as such, not confirmed. This bar definition remains the standard
any *other* candidate object must independently meet; absent all four for a
given object, "object boundary confirmed" is not warranted for that object,
regardless of how
`SYS`/`FORMAT`/`SSSTART`/`S_SCA`/`PRESET`/`PADENTRY`/`PADMAIN`/`PADCMD`
resolved. What this document establishes overall: a reproducible method
(address/offset arithmetic over the existing symbol-map CSV, plus targeted
`DumpBytes.java`/direct-executable spot checks) that produced eight
internally-consistent, independently-corroborated, edge-checked, confirmed
object boundaries (`SYS`/`ResetGraph`, `FORMAT`/`_card_read`,
`SSSTART`/`SsSetMVol`+`SsSeqCalledTbyT`, `S_SCA`/`SsSetSerialAttr`+`SsSetMVol`,
`PRESET`/`GsMapModelingData`, `PADENTRY`/`PadChkVsync`+`PadSetActAlign`,
`PADMAIN`/`PadEnableCom`+`_padClrIntSio0`, and `PADCMD`/`_padSetAct`) without
requiring any new extraction, alongside three honest near-misses
(`BIOS_OBJ_*`, `UT_REV`, `VSYNC`, all three sitting inside the same tightly
packed SPU-library region — see the third continuation update above for the
tentative "one dense object, not many small ones" explanation), a clean
negative result (no alignment padding anywhere else checked outside these
objects), and several explicitly flagged open items (the two new BIOS stubs'
unexplained 8-byte prefix, the unexamined `Lzc`→`SetVertex0` gap, and
the un-cross-referenced object names' semantic identity — see Unit F
immediately below, which remains open even for the now-confirmed
boundaries per criterion 4's scope limits).

# Object-Name Semantic Identity and Claim Boundaries (Unit F)

## 1. Contiguous Byte Coverage vs. Semantic Name Provenance

A complete byte account (`gap_bytes: 0` for a run of `<name>_OBJ_<offset>` symbols) proves **contiguous byte coverage produced by a single translation unit** in linked memory. However, a zero-gap byte account alone does **not** prove that `<name>` is the original PsyQ SDK library object's exact source filename or object name.

In decompilation research, object prefix names derived from Ghidra PSX loader auto-analysis or decompiler heuristics are synthetic convenience labels. Assigning semantic identity to an object name (e.g. claiming an object is PsyQ's official `LIBSYS.OBJ` or `CARD.OBJ`) requires independent primary corroboration beyond address arithmetic.

## 2. Audit of `SYS` and `FORMAT` Object Boundaries

### `SYS` Object (`0x800381e8`–`0x8003b114`, 12,076 bytes)
- **Supported evidence**: 100.0% byte account (12,076 / 12,076 covered bytes, `gap_bytes: 0`, `merged_intervals: 1`), corroborated by Ghidra disassembly of 3 missing rows (`SYS_OBJ_F80`, `SYS_OBJ_22F4`, `SYS_OBJ_2828`) all resolving to base `0x800381e8`. Bounded by 8-byte zero-alignment padding at both start (`0x800381dc`–`0x800381e7`) and end (`0x8003b114`–`0x8003b11b`).
- **Missing evidence**: Direct PsyQ SDK library object filename or symbol table entry proving `SYS` corresponds to a specific SDK object file (e.g. `LIBSYS.OBJ`).
- **Status**: `candidate_for_audit` (object-boundary proven, semantic object name unconfirmed).

### `FORMAT` Object (`0x8003b6e8`–`0x8003ba38`, 848 bytes)
- **Supported evidence**: 100.0% byte account (848 / 848 covered bytes, `gap_bytes: 0`, `merged_intervals: 1`), all 3 `FORMAT_OBJ_*` rows resolving to base `0x8003b6e8`. Bounded by 8-byte zero-alignment padding at start (`0x8003b6e0`–`0x8003b6e7`) and landing directly on verified BIOS stub `_card_read` (`0x8003ba38`).
- **Missing evidence**: Direct PsyQ SDK library object filename or symbol table entry proving `FORMAT` corresponds to `CARD.OBJ` or `FORMAT.OBJ`.
- **Status**: `candidate_for_audit` (object-boundary proven, semantic object name unconfirmed).

## 3. Falsifiable Standard for Object Boundary Claims

To maintain evidentiary rigor across all future agent work, object boundary claims must adhere to the following two-tier classification standard:

1. **`candidate_for_audit`**:
   - Requires: 100.0% complete byte coverage (`gap_bytes: 0`), exactly 1 merged interval across all constituent symbols, 0 interior unaccounted bytes, and verified outer-edge zero alignment padding.
   - Meaning: Confirms a contiguous translation unit boundary in the binary image.

2. **`boundary_confirmed`**:
   - Requires: All `candidate_for_audit` criteria PLUS at least one primary direct provenance link (e.g. exact byte match against a standalone object built from lawful PsyQ 4.4.0 `.OBJ`/`.LIB` sources, embedded path/string literals within the object, or explicit PsyQ linker map symbol table references).
   - Meaning: Confirms both contiguous translation unit layout and exact SDK/source object identity.

# Reproduction

- Address/offset/gap arithmetic: read `/config/ddr5thmix/build.json` and
  `/docs/games/ddr-5th-mix-jp-symbol-map.csv` directly; every figure above is
  computed from those two tracked files alone.
- Byte-content spot checks: `tools/ghidra/scripts/DumpBytes.java` against the
  shared headless project (`runtime/ghidra/projects/ddr5thmix`, program
  `SLPM_868.97_1`), e.g. `analyzeHeadless <project> ddr5thmix -process
  SLPM_868.97_1 -noanalysis -scriptPath tools/ghidra/scripts -postScript
  DumpBytes.java 0xADDR N`, per `/docs/tooling/ghidra-setup.md`.

# Citations

[1] [/docs/workflows/function-byte-match.md](/docs/workflows/function-byte-match.md)
[2] [/docs/games/ddr-5th-mix-jp-symbol-map.md](/docs/games/ddr-5th-mix-jp-symbol-map.md)
[3] [/docs/tooling/ghidra-setup.md](/docs/tooling/ghidra-setup.md)
[4] [ghidra_psx_ldr README](https://github.com/lab313ru/ghidra_psx_ldr/blob/master/README.md)
[5] [/docs/workflows/decompile-recompile.md](/docs/workflows/decompile-recompile.md)
