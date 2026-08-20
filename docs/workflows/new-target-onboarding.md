---
type: Workflow
title: Adding a second PS1 target — onboarding procedure
description: Reproducible procedure to onboard a new legally obtained PS1 target onto the shared extraction, analysis, and reconstruction infrastructure.
tags: [ps1, onboarding, target, workflow, reproducibility]
timestamp: 2026-08-19T00:00:00-04:00
---

# Adding a second PS1 target

The repository was restructured (2026-08-19) so that every target is
self-contained under `docs/games/<target>/` (`readme.md` + `index.md`) and all
generic tooling lives in the shared directories. The shared tools are
parameterized — every script accepts the manifest/CSV/EXE path instead of
assuming DDR 5th Mix (defaults point at DDR 5th Mix for backward
compatibility; pass the new target's paths to use them for a second game).
This document is the reproducible onboarding procedure.

## Prerequisites

- A **lawfully obtained** dump of the new target (disc image or extracted
  files), per `/docs/foundations/legal-provenance.md`.
- The pinned toolchain (`mipsel-none-elf` GCC 14.2.0 / GNU binutils 2.43), per
  `/docs/tooling/toolchain.md`.
- The portable Ghidra 12.1.2 + `ghidra_psx_ldr` install, per
  `/docs/tooling/ghidra-setup.md`.

## Step 0 — pick `<target>` and write the revision manifest

Choose a short target id (e.g. `ddr5thmix`, all-lowercase) and create
`docs/games/<target>/revision-manifest.md` from the schema at
`/docs/foundations/revision-manifest-schema.md`. Required provenance: exact
revision (serial/region), disc/executable hash(es), tool versions, and the
success contract. Template frontmatter:

```yaml
---
type: Revision Manifest
title: <Game Name> (<Region>) — Revision Manifest
description: Provenance manifest and success contract for the project's second target revision.
tags: [ps1, <target>, provenance, manifest, target]
timestamp: <YYYY-MM-DD>
---
```

## Step 1 — hash-gate the lawful input

Record the SHA-256 of the boot executable and any disc assets in the manifest.
Never commit the binaries, BIOS images, or extracted assets; reproduction tools
validate a user-supplied lawful dump against the recorded hashes before
comparison.

## Step 2 — extract disc assets

Use the generic extractors under `tools/iso9660/` and
`/docs/tooling/iso9660-extraction.md`, which accept a source path rather than
assuming DDR 5th Mix. Keep extracted assets under ignored `work/<target>-extract/`.

## Step 3 — scaffold the per-game directories

Create, without touching shared directories:

- `src/<target>/` — reconstructed assembly/C sources.
- `config/<target>/build.json` — the build manifest. Skeleton:

```json
{
  "executable": { "load_address": "0x...", "header_size": 0, "entry_point": "0x..." },
  "functions": []
}
```

  (fields follow `/config/ddr5thmix/build.json`; populate `functions` as
  reconstruction progresses).
- `tools/<target>/` — target-only scripts (BizHawk probes with hardcoded
  checkpoints, overlay tests), mirroring `tools/ddr5thmix/`.
- `docs/games/<target>/readme.md` — target status/overview, per the game
  overview pattern in `docs/games/ddr5thmix/readme.md`. Template frontmatter:

```yaml
---
type: Game Overview
title: <Game Name> (<Region>) — Overview and Status
description: Target status, reconstruction progress, completed foundations, and next targets.
tags: [ps1, <target>, status, roadmap]
timestamp: <YYYY-MM-DD>
---
```

- `docs/games/<target>/index.md` — the target's doc index (reserved file, no
  frontmatter), listing `readme.md`, `revision-manifest.md`, and every concept
  in the folder with relative links, per the pattern in
  `docs/games/ddr5thmix/index.md`.

## Step 4 — import into Ghidra

```powershell
pwsh -NoProfile -File tools/ghidra/Import-BootExecutable.ps1 `
  -ExePath <lawful-boot-exe> -ProjectDir runtime/ghidra/projects -ProjectName <target>
```

## Step 5 — first byte-match with the shared verifier

```powershell
pwsh -NoProfile -File tools/build/Invoke-FunctionMatch.ps1 `
  -ExePath <lawful-boot-exe> -ManifestPath config/<target>/build.json -Function <name>
```

`Invoke-FunctionMatch.ps1`, `Invoke-ModuleMatch.ps1`,
`Build-MainExecutableCandidate.ps1`, and `dis2asm.py` all accept the new
target's manifest/CSV paths via parameters; omitting them uses the DDR 5th Mix
defaults (backward compatible, verified 2026-08-19).

## Step 6 — register the target

- Root `README.md` — add the target under "Targets" with a link to its
  `docs/games/<target>/readme.md`.
- `docs/index.md` — extend the "Games" bullet to list the new target's folder.
- `docs/games/<target>/index.md` — keep it as the authoritative per-target doc
  index.
- `docs/log.md` — log the onboarding entry.

## Gates

- Every byte-match/classification claim carries the exact command, input hash,
  tool versions, and comparison result (per
  `/docs/workflows/function-byte-match.md`).
- No copyrighted game binary, BIOS image, proprietary SDK, key, or extracted
  asset is committed.
- Shared directories (`docs/foundations/`, `docs/tooling/`, `docs/workflows/`,
  `tools/build/`, `tools/ghidra/`, `tools/iso9660/`, `tools/bizhawk/`) are only
  edited when a genuinely generic improvement is needed — target-specific
  content belongs in the target's own directories.
