---
type: Reconstruction Module
title: DDR 5th Mix runtime graphics initialization module
description: Exact reconstruction of eight game-owned graphics, timing, display-primitive, and runtime-initialization helpers.
tags: [ps1, ddr5thmix, reconstruction, byte-match, graphics]
timestamp: 2026-08-12T00:00:00-04:00
---

# Scope

`src/ddr5thmix/RuntimeGraphicsInit.s` reconstructs eight bounded functions at
`0x80024ca4`, `0x80024e00`, and `0x80028c14`–`0x80028de0`, covering 1,020
selected code bytes. The routines initialize the runtime graphics state,
update the timing-derived display values, and emit the observed primitive
records; these descriptions are behavioral labels inferred from their
instructions and call sites.

# Verification

Against the lawful boot executable whose revision SHA-256 is
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`, GCC
14.2.0/binutils 2.43 targeting `mipsel-none-elf` produced an exact match for
all eight functions:

```powershell
pwsh -File tools/build/Invoke-ModuleMatch.ps1 `
  -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 `
  -Module runtime-graphics-init
```

Result: `byte_match: True`, 8/8 functions and 1,020/1,020 bytes. The report
is generated under ignored `build/` output; no executable bytes are tracked.

# Reproduction inputs

- Manifest module: `/config/ddr5thmix/build.json` (`runtime-graphics-init`).
- Assembly source: `/src/ddr5thmix/RuntimeGraphicsInit.s`.
- Verifiers: `/tools/build/Invoke-ModuleMatch.ps1` and
  `/tools/build/Invoke-FunctionMatch.ps1`.
- Reference input: a user-supplied lawful executable matching the recorded
  revision hash.

# Limitations

The result proves bounded instruction-byte reproduction only. It does not
prove original C source form, PsyQ object boundaries, or whole-executable
link equivalence; those are separate workflow gates.
