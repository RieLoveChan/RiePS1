---
type: Workflow
title: External agent delivery and independent acceptance
description: Evidence gates for delegated reconstruction before clean-checkout acceptance.
tags: [delegation, verification, byte-match, audit, git, reproducibility]
timestamp: 2026-07-20T00:00:00-04:00
---

# Purpose

An external agent may reconstruct, verify, commit, and push an isolated work
package, but its own delivery is not authoritative. Its final state is
`candidate_for_audit`. The package becomes `completed` only after an integrator
or independent agent reproduces every required gate from a clean checkout.

This prevents an aggregate command, complete-looking source, or confident
report from replacing durable per-function evidence. It also prevents an agent
in a shared filesystem from claiming another agent's visible changes.

# Required package contract

Every external package must declare before implementation:

- base commit, dedicated branch, and explicit path allowlist;
- fixed lawful input revisions and hashes;
- exact address/range boundaries and owned symbols;
- excluded and concurrently owned paths, functions, and modules;
- pinned tool versions and reproduction commands;
- authoritative inventory sources, such as callback tables or range maps;
- separate completion criteria for code, data, behavior, and total coverage;
- `status: ready` initially and `candidate_for_audit` on delivery.

Use a separate clone or worktree based on current `origin/master`. A separate
branch in a shared working directory is not sufficient isolation.

# Per-function evidence

A function may become `verified`/`hand_written_source` only when a
machine-generated report records:

| Field | Requirement |
|---|---|
| Name/address | Exact target-revision symbol or range. |
| Size | Equal reconstructed section and reference slice sizes. |
| Reference SHA-256 | Computed from the hash-gated lawful input. |
| Built SHA-256 | Computed from newly built project source. |
| Result | Explicit `byte_match: true` and equal hashes. |
| Toolchain | Exact compiler/assembler, linker, and object-copy versions. |
| Command | Reproducible from the repository root. |

An aggregate `byte_match: true`, manual review, matching instruction counts,
or source presence is not individual evidence. The verifier must fail when any
required per-function field is missing.

# Inventory equality

Compare these identity sets mechanically before delivery:

1. unique functions/callbacks from authoritative tables, xrefs, entries, and
   bounded disassembly;
2. manifest functions;
3. reconstructed source sections;
4. functions in the generated verification report;
5. rows promoted in the symbol or range map.

The sets must be equal unless every difference is an explicitly classified
external symbol or documented blocker. Counts alone are insufficient. Detect
repeated entries, indirect callbacks, terminal callbacks, and source sections
missing from metadata.

# Coverage claims

Report identified functions, exact code bytes, reconstructed data, unresolved
data/padding, independently reproduced behavior, and total bounded coverage as
separate values. Do not call an object, executable, overlay, or disc completely
matched while any owned byte is unresolved or excluded. A gap-free inventory
may include unresolved ranges; it proves accounting, not reconstruction.

Derived state traces, timing, reachability, and range coverage require a second
deterministic checker rather than a repeated manual result.

# Git isolation

Stage named paths with `git add -- <path>...`; never use `git add .`,
`git add -A`, broad globs, or bulk staging. Inspect the cached name list, stat,
and full diff. Compare `git diff --name-only <base>..HEAD` with the allowlist
and fail delivery on an unexpected path.

Never reset, clean, amend, or force-push another agent's work. Push only the
dedicated branch and report every commit and committed path. Shared manifests
and documentation are allowed only when listed explicitly. When concurrent
edits make totals uncertain, leave an integration note instead of guessing.

# Candidate report

Report the base, branch, commits, paths, lawful input, tool versions, commands,
inventory-equality result, per-function report location, aggregate totals,
separate coverage classes, behavioral results, uncertainties, blockers,
`git diff --check`, allowlist check, prohibited-artifact scan, and final status
`candidate_for_audit`. Chat and untracked terminal output cannot satisfy a gate.

# Independent acceptance

From a clean checkout, the auditor must rerun and verify:

1. base commit and committed path allowlist;
2. absence of copyrighted/proprietary inputs and reference blobs;
3. tool versions and lawful reference hashes;
4. every per-function hash/comparison;
5. inventory equality across tables, manifest, source, report, and maps;
6. aggregate totals and independent behavior/range checkers;
7. claims against unresolved ranges and affected-module regressions;
8. `git diff --check` and repository-specific tests.

Only the auditor may promote `candidate_for_audit` to `completed` and integrate
it into `master`. Audit corrections must be durable commits, and the nearest
OKF log must distinguish candidate delivery from acceptance.

# Automation target

Packages should converge on a checker similar to:

```powershell
./tools/build/Test-ExternalWorkPackage.ps1 `
    -BaseCommit <commit> `
    -Manifest <manifest.json> `
    -AllowedPaths <allowlist.txt>
```

It should fail closed on missing evidence, set differences, unexpected paths,
unpinned tools, incomplete coverage, prohibited artifacts, or claims broader
than measured results. Until it exists, packages must list equivalent commands.

# Related workflows

This strengthens [/docs/workflows/function-byte-match.md](/docs/workflows/function-byte-match.md)
and [/docs/foundations/legal-provenance.md](/docs/foundations/legal-provenance.md).
Project-specific packages may strengthen, but not weaken, these requirements.
