---
type: Reconstruction Module
title: DDR 5th Mix state-transition module
description: Exact reconstruction of the game-owned timing, input-event, resource-request, and state-transition helpers in the 0x80025850–0x8002a698 range.
tags: [ps1, ddr5thmix, reconstruction, byte-match, state-transition]
timestamp: 2026-08-12T00:00:00-04:00
---

# Scope

`src/ddr5thmix/StateTransition.s` reconstructs 117 bounded functions from
`0x80025850` through `0x8002a698`, covering 16,132 selected code bytes. The
source preserves the observed MIPS R3000A delay-slot and jump-table layout;
the module name describes the observed call cluster, not a claim about the
original source-file name.

# Verification

The lawful input revision is the boot executable recorded by the [revision
manifest](/docs/games/ddr5thmix/revision-manifest.md), SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
With GCC 14.2.0/binutils 2.43 targeting `mipsel-none-elf`, this command
returned `byte_match: True` for every function:

```powershell
pwsh -File tools/build/Invoke-ModuleMatch.ps1 `
  -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 `
  -Module state-transition
```

The generated report is intentionally kept under ignored `build/` output.
Its result was 117/117 functions and 16,132/16,132 bytes matched; it also
reported executable file offsets from `0xb850` through the module's final
bounded function. No copyrighted executable bytes are stored in the
repository.

# Reproduction inputs

- Manifest module: `/config/ddr5thmix/build.json` (`state-transition`).
- Assembly source: `/src/ddr5thmix/StateTransition.s`.
- Verifier: `/tools/build/Invoke-ModuleMatch.ps1` and
  `/tools/build/Invoke-FunctionMatch.ps1`.
- Reference executable: user-supplied lawful dump matching the manifest hash.

# Limitations

This is instruction-byte evidence for bounded functions. It does not prove
the original C source, PsyQ object boundaries, or whole-executable link
equivalence. Those remain separate gates in the [decompile/recompile
workflow](/docs/workflows/decompile-recompile.md).
