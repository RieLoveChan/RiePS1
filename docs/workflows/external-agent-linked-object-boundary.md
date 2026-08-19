---
type: Work Package
title: External agent package — PsyQ linked-object boundary evidence and continuing backlog
description: Bounded, non-overlapping delegation package to extend linked-object-boundary evidence toward the falsifiable object-boundary-confirmed bar, then continue through a queued list of further evidence/documentation units without stopping.
tags: [ps1, ddr5thmix, delegation, verification, byte-match, linked-object, audit, git, reproducibility]
timestamp: 2026-07-27T00:00:00-04:00
status: ready
branch: agent/linked-object-boundary
---

# Objective

Advance the DDR 5th Mix readme's ("Recommended next targets") item 2 (linked-object validation)
by extending `/docs/foundations/linked-object-evidence.md` toward its own
stated falsifiable bar for an "object boundary confirmed" claim, then continue
through the ordered backlog in this document one bounded unit at a time.

This package is evidence and tooling work, not a new function-reconstruction
module. It must not weaken, reinterpret, or quietly promote any existing
`suspected`/`candidate_only`/unconfirmed finding to a stronger tier without new
reproducible evidence. Read `/docs/foundations/linked-object-evidence.md`
completely before touching anything — it already states exactly what is
proven, what is open, and what a stronger claim would require. Do not repeat
its existing conclusions as if they were new findings.

# Precision over speed — non-negotiable discipline

This is the single most important instruction in this package. Prioritize
getting a smaller result *right and reproducible* over covering more ground
quickly. Concretely:

- Never write `byte_match: true`, `contiguous`, `gap: 0`, `boundary_claim: true`,
  or any equivalent success wording anywhere (docs, JSON reports, commit
  messages, tool output) unless it is the direct, printed result of a
  reproducible command run in this session against the hash-gated lawful
  input. A plausible-sounding claim is not evidence.
- If a mechanical check and your own manual read of the same bytes disagree,
  stop and resolve the discrepancy before recording either result — do not
  average them or pick the more convenient one.
- Record a negative result (no reference found, gap remains unattributed,
  padding convention absent) with the same care as a positive one. This
  project explicitly values a documented negative result over silence or a
  guessed positive — see `/docs/foundations/linked-object-evidence.md`'s own
  "What remains unconfirmed" section as the house style to match.
- Never round up: "97.7% accounted, three residual gaps" is not "boundary
  confirmed", and one corroborated instance is not "a pattern" (the document
  is explicit that at least two independent instances are required).
- Every claim in your final report must carry the exact command that produced
  it, so another agent or the repository owner can rerun it from a clean
  checkout and get the same answer per
  `/docs/workflows/external-agent-acceptance.md`.
- If you are not sure whether a byte range is code, padding, data, or
  unexplained, say so explicitly. "Unresolved" is an acceptable, expected
  outcome; a fabricated classification is not.

# Read before working

Read these files completely, in this order:

1. `AGENTS.md`
2. `spec.md`
3. `docs/index.md`
4. `docs/games/ddr5thmix/revision-manifest.md`
5. `docs/foundations/linked-object-evidence.md` (the entire document — this
   package's primary unit only extends it)
6. `docs/games/ddr5thmix/symbol-map.md` and its CSV
7. `docs/workflows/function-byte-match.md`
8. `docs/workflows/external-agent-acceptance.md` (the delivery/acceptance gate
   this package's delivery must satisfy)
9. `docs/tooling/ghidra-setup.md`
10. `docs/foundations/legal-provenance.md`

Inspect recent `git log`, `git status`, and remote branches (`git branch -a`,
`git fetch`) before editing, so you know what already merged since this
package was written.

# Mandatory Git isolation, incremental delivery, and commit ownership

Use a separate clone or worktree based on current `origin/master`. Create and
use branch `agent/linked-object-boundary`; never work directly on `master`.
Record the initial commit and `git status --porcelain` in your final report.

Work and deliver **incrementally, per unit, without stopping**: as soon as one
backlog unit's own verification commands pass (see each unit's "Done when"
below), commit and push it immediately rather than batching many units into
one commit or waiting until the whole backlog is finished. Move on to the next
queued unit right away. This keeps every pushed commit independently
reproducible and lets an auditor accept units one at a time instead of an
all-or-nothing delivery.

- Never use `git add .`, `git add -A`, a broad glob, or a bulk commit command.
  Stage each intended path explicitly with `git add -- <path>...`.
- Before every commit, inspect `git diff --cached --name-only`,
  `git diff --cached --stat`, and the full `git diff --cached`. Unstage
  anything you did not deliberately change for this unit, without discarding
  its working-tree content.
- Never cherry-pick, merge, amend, squash, reset, clean, or otherwise absorb
  another agent's or the repository owner's concurrent changes.
- Shared files (`config/ddr5thmix/build.json`, the symbol-map CSV/concept,
  `docs/foundations/linked-object-evidence.md`, `docs/log.md`,
  `docs/games/ddr5thmix/readme.md`)
  may be edited when a unit's result requires it, but pull/rebase first,
  preserve existing content, and resolve conflicts normally. If integration is
  uncertain, leave a precise integration note instead of guessing.
- Push only `agent/linked-object-boundary` after every unit. **Never push to
  or merge into `master`, and never open/merge a pull request yourself** — per
  `/docs/workflows/external-agent-acceptance.md` this package's own delivery is
  not authoritative; it becomes `completed` only after an independent
  clean-checkout audit. Ending this package with anything other than
  `candidate_for_audit` on a dedicated branch is a process failure regardless
  of how correct the technical result is.
- Report every commit hash and exact committed path list per unit when
  finished.

# Lawful input and lineage

Reuse the same hash-gated lawful executable and pinned toolchain already
established by `/docs/workflows/function-byte-match.md` and
`/docs/games/ddr5thmix/revision-manifest.md` — do not introduce a second unpinned copy.
Reuse the existing shared headless Ghidra 12.1.2 project
(`runtime/ghidra/projects/ddr5thmix`, program `SLPM_868.97_1`) with
`tools/ghidra/scripts/DumpBytes.java`, `DumpFunctionDetail.java`,
`DumpDataXrefs.java`, and similar existing scripts before writing a new one.
Never commit copyrighted game binaries, BIOS images, proprietary SDKs, keys,
extracted assets, or raw reference byte arrays; generated objects, reference
slices, and reports stay under ignored local paths.

# Known evidence to reproduce, not assume

`/docs/foundations/linked-object-evidence.md` already establishes, and this
package must treat as its starting point rather than re-deriving from scratch:

- Application-code modules (`screen-selector`, the combined 48-function
  gameplay-session region) show **zero** alignment padding anywhere checked;
  every non-zero gap found so far is dense, un-inventoried real code.
- The 30-function PsyQ BIOS/kernel trampoline block shows a **real, consistent
  4-byte zero-padding convention** rounding each 12-byte stub to 16 bytes at
  24 of 29 boundaries, plus two previously uncatalogued same-shape stubs (`li
  t2,0xb0; jr t2; li t1,0x3f` between `exit`/`setjmp`, and `li t2,0xa0; jr t2;
  li t1,0x72` between `GPU_cw`/`DeliverEvent`), each preceded by an
  unexplained 8-byte pair of words.
- A 1,472-byte gap between `Lzc` and `SetVertex0` in the GTE block is
  explicitly **unexamined**, not assumed to be padding or code.
- The symbol map's 491 `<name>_OBJ_<hex-offset>` rows, grouped into 89
  consecutive-address same-prefix runs (60 with 2+ rows), are **60/60
  internally consistent** for `address − offset = one constant base per run`.
- The strongest existing result: the `SYS` run based at `0x800381e8` lands
  exactly on the independently hand-reviewed `ResetGraph`'s entry point;
  merging every row (named and `SYS_OBJ_*`) across
  `0x800381e8`–`0x8003b114` (12,076 bytes) accounts for 11,804 bytes (97.7%),
  leaving three residual gaps (116, 36, 120 bytes) already confirmed dense
  real code, not padding, but not yet attributed to any named function.
- The object-name readings for the non-`SYS` runs (`SPU`, `S_SAV`, `VM_SEQ`,
  `MIDIREAD`, etc.) are an unconfirmed stylistic guess; a prior search for a
  primary PsyQ SDK source found none.

Reproduce the above from the tracked CSV/`build.json`/Ghidra project yourself
before extending it; do not simply cite it. Correct this document and
`linked-object-evidence.md` visibly, per this project's established
correct-in-place discipline, if re-derivation finds a discrepancy.

# The falsifiable object-boundary-confirmed bar

`linked-object-evidence.md` already defines what a future "object boundary
confirmed" claim requires, all four together, for one specific object:

1. A complete, contiguous byte account for the object's full range — zero
   unattributed bytes.
2. An independently derived boundary that agrees with the tool-derived one —
   at least a **second**, unrelated instance beyond the existing
   `SYS`/`ResetGraph` case.
3. A checked alignment/padding convention at the object's actual start and end
   edges (not just its interior).
4. Explicit acknowledgment of what the claim does not establish (not
   whole-executable section ordering, not PsyQ's own object-format
   reproduction, not a whole-image match).

Do not claim "object boundary confirmed" for anything short of all four. A
result satisfying only one or two criteria is real, reportable progress —
report it as exactly that, at `candidate_only`/open status, not as a
confirmed boundary.

# Backlog — work these in order, one unit at a time, without stopping

Deliver each unit as its own commit (or small commit series) once its own
"Done when" passes; push immediately; move to the next unit. Do not wait to
batch multiple units into one delivery.

## Unit A — Close the `SYS`/`ResetGraph` object's byte account and check its true edges

Target object: `0x800381e8`–`0x8003b114` (12,076 bytes), prefix `SYS`.

1. `tools/build/Invoke-PsyqObjectBoundaryCheck.ps1` already exists in the
   repository as a starting draft for exactly this check: it reads the
   symbol-map CSV, derives implied per-run object bases from `<prefix>_OBJ_*`
   rows, checks base consistency and offset monotonicity, merges every row
   (named or `_OBJ_*`) inside the requested address range, and reports
   covered/gap bytes and each gap's exact address range as JSON
   (`schema_version`, `evidence_level: candidate_only`, `boundary_claim:
   false`). Read it fully, verify its logic against the manual figures
   already published in `linked-object-evidence.md` (12,076-byte span, 97.7%/
   11,804 bytes covered, three gaps of 116/36/120 bytes), and only then decide
   whether to reuse, fix, or rewrite it — do not trust it just because it is
   already tracked. It must keep reading the tracked CSV/`build.json` only,
   never require or embed copyrighted byte content, and fail closed
   (non-zero exit / explicit `false` field) if inputs are missing or the
   requested range has zero rows.
2. For the three known residual gaps (116, 36, 120 bytes), use
   `DumpFunctionDetail.java`/`DumpBytes.java`/xref tooling to determine
   whether each is a nameable, un-inventoried function (matching the pattern
   already documented for `FUN_80049f7c`/`FUN_80049fa4`) or something else.
   Do not reconstruct or byte-match these functions as part of this
   package — that belongs to the function-byte-match workflow and a
   differently scoped package; here, only identify, size, and attribute them
   so the byte account can close.
3. Check the object's **true edges**, not just its interior: dump bytes
   immediately before `0x800381e8` and immediately after the object's
   measured end, and determine whether a padding/alignment convention exists
   there (as it does for the BIOS stub block) or not.
4. Update `linked-object-evidence.md` with the result, whichever way it comes
   out — including a clean negative result if the gaps turn out not to be
   attributable, or if no edge convention is found.

Done when: the checker script runs from a clean checkout against the tracked
CSV, its JSON/console output is quoted in your report, and
`linked-object-evidence.md` reflects the byte-account and edge-convention
result with that reproduction command recorded. This closes bar criterion 1
and part of criterion 3 for this one object — it does not by itself satisfy
the full bar (criterion 2 is still outstanding; see Unit B).

## Unit B — Find or rule out a second independent object-boundary instance

Apply the same address-minus-offset consistency check and merge-and-gap
accounting used for the `SYS` run to at least one other multi-row
`<name>_OBJ_<offset>` run from the existing 89-run/60-multi-row inventory.
Look specifically for a case where the implied base or object end also lands
on an address this project has independently confirmed by hand review or
exact byte match (mirroring how `SYS`'s base landed exactly on `ResetGraph`).

Done when: you report either (a) a second run with a genuinely independent,
reproducible corroboration — quoting the exact addresses and the already
independently established fact it agrees with — or (b) an honest negative
result across however many runs you checked, explicitly listing which runs
were checked and why none corroborated. Either outcome is acceptable; a
guessed or approximate "close enough" match is not.

## Unit C — Investigate and (if warranted) reconstruct the two newly found BIOS stubs

For the two uncatalogued 12-byte `BIOS_STUB`-shaped trampolines (vector
`0xb0`/service `0x3f`; vector `0xa0`/service `0x72`) and their unexplained
preceding 8-byte word pairs:

1. Identify what the 8-byte prefix actually is (data reference, alignment
   filler, another instruction pair, relocation artifact) using
   `DumpBytes.java`/`DumpFunctionDetail.java`/xref tooling. Report whichever
   answer the evidence gives, including "still unexplained" if it stays that
   way.
2. If the two stubs are confirmed genuine `BIOS_STUB` instances, reconstruct
   them through the existing `BIOS_STUB` macro/pipeline in
   `src/ddr5thmix/PsyqBiosStubs.s`, add them to
   `config/ddr5thmix/build.json`, and run the existing module verifier to
   obtain individual built/reference SHA-256 results, exactly like the other
   30 accepted stubs in `/docs/workflows/function-byte-match.md`.
3. Only promote their symbol-map rows to `verified`/`hand_written_source` if
   the hash comparison actually passes; update the BIOS-stub table and
   totals in `function-byte-match.md`, the symbol map, and the DDR 5th Mix
   readme's exact-byte totals together in the same commit as the passing verification.

Done when: either two new exact byte matches are recorded with full evidence
(name/address/size/reference SHA-256/built SHA-256/toolchain/command per the
`external-agent-acceptance.md` per-function evidence table), or a precise,
documented blocker explains why they could not be matched — never a partial
or assumed match.

## Unit D — Characterize the unexamined `Lzc`→`SetVertex0` gap

Byte-dump the full 1,472-byte gap between `Lzc` (`0x800553ac`) and
`SetVertex0` (`0x80055984`) and classify it: dense real code, zero padding, a
mix, or something else — following the same method already used for every
other gap in `linked-object-evidence.md` §1. Update that document's GTE
section with the result. If the dump reveals nameable un-inventoried
functions, record their boundaries as evidence only; do not reconstruct them
under this package unless doing so is a small, clearly bounded extension —
prefer leaving that to a dedicated future package if it is large.

Done when: the gap has a reproducible classification recorded with the exact
dump command and byte-range evidence, replacing "left unexamined" with a
concrete, cited result (including if that result is itself inconclusive).

## Unit E — Remaining verified-global-layout semantics (DDR 5th Mix readme item 1)

Survey `docs/games/ddr5thmix/globals.md`/`.csv` and the `mode_control.h`
partial state layouts for any remaining observed byte offset that has a
concrete reader or writer but no assigned name/semantics yet, beyond the
already-resolved `+0x09`/`+0x17`/`+0x2c` and the already-exhausted `+0x2e`
negative result. Use the same field-xref methodology
(`DumpFieldXrefs.java`) already used for those. If no new candidate field
exists, say so plainly rather than forcing a marginal one.

Done when: either a new field is named with cited reader/writer evidence and
a compile-time offset assertion (matching the existing pattern), or you
report that no further candidate fields were found by this method.

## Unit F — Object-name semantic identity (lowest priority, optional)

Only attempt this after Units A–E, and only if you find a genuinely new
avenue (e.g. a primary PsyQ 4.4.0 SDK reference not already checked). Do not
repeat the exact same web search already recorded as a negative result. If
you find nothing new, do not spend further time here — note it as still
unconfirmed and stop.

# Documentation and shared-file coordination

Update `docs/foundations/linked-object-evidence.md` in place per unit,
correcting superseded statements visibly (mark what changed and why) rather
than deleting them, matching this project's established practice. Add a
newest-first `docs/log.md` entry for each meaningfully completed unit — do
not log formatting-only changes. Update the DDR 5th Mix readme's status table and
"Recommended next targets" section only after a unit's own verification
passes, not preemptively. `config/ddr5thmix/build.json`, the symbol-map
CSV/concept, and `function-byte-match.md` are shared with any concurrently
running function-reconstruction work; rebase before editing their final form,
preserve other agents' entries, and resolve conflicts normally.

# Verification checklist before every push

Run and pass all of the following before pushing any unit, and quote the
actual output in your report — do not summarize it away:

1. The unit's own "Done when" command(s), with real output.
2. `git diff --cached --name-only` compared against exactly the paths you
   intended to touch for this unit — fail and fix before committing if
   anything unexpected is staged.
3. A prohibited-artifact scan: confirm no copyrighted binary, BIOS image,
   proprietary SDK file, key, extracted asset, or raw reference byte array is
   present in the staged diff.
4. `git diff --check` (no whitespace/conflict-marker errors).
5. Existing regression commands relevant to anything you touched (e.g. the
   module verifier for any module whose manifest or source you edited) —
   never assume an unrelated change didn't regress a shared file.
6. A final read of every claim you are about to commit against the "Precision
   over speed" section above: is every success claim backed by a command you
   just ran, in this session, against the hash-gated lawful input?

# Persistence and blockers

Continue through the backlog in order without stopping for a progress update,
a partial result, or a difficult individual gap. A negative result, an
unresolved gap, or a documented blocker on one unit is expected, valid output
— record it and move to the next unit rather than treating it as a reason to
pause the whole package. Stop early only for a genuine blocker requiring new
authority, missing lawful input, or an external-state change you cannot
resolve safely; before stopping, exhaust in-scope alternatives and record the
precise evidence, commands, attempts, and smallest action needed to resume.

# Candidate report

For each delivered unit, report: base commit, branch, commit hash(es),
exact committed paths, the unit's verification command(s) and real output,
what the result does and does not establish, any negative result, and status
`candidate_for_audit`. Do not describe any unit as `completed` — only an
independent clean-checkout audit under
`/docs/workflows/external-agent-acceptance.md` may promote it. Do not describe
this package, on any partial or full delivery, as establishing a confirmed
object boundary unless all four bar criteria are met for that specific object
with commands to reproduce each one.

# Related workflows

This package operates under
[/docs/workflows/external-agent-acceptance.md](/docs/workflows/external-agent-acceptance.md)
and extends
[/docs/foundations/linked-object-evidence.md](/docs/foundations/linked-object-evidence.md)
and
[/docs/workflows/function-byte-match.md](/docs/workflows/function-byte-match.md).
It may not weaken any requirement in those documents.
