---
type: Reconstruction Module
title: DDR 5th Mix state-dispatch module
description: Exact reconstruction of the game-owned top-level state dispatch bridge.
tags: [ps1, ddr5thmix, reconstruction, byte-match, state-machine]
timestamp: 2026-08-12T00:00:00-04:00
---

# Scope

`src/ddr5thmix/StateDispatch.s` reconstructs `FUN_80024f60` at runtime
address `0x80024f60`, a 124-byte state-table dispatch bridge.

# Verification

Against the lawful executable with SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`, GCC
14.2.0/binutils 2.43 targeting `mipsel-none-elf` matched 124/124 bytes:

```powershell
pwsh -File tools/build/Invoke-ModuleMatch.ps1 `
  -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 `
  -Module state-dispatch
```

The result was `byte_match: True`; generated comparison output remains under
ignored `build/` and no executable bytes are tracked.

# Limitations

This is bounded instruction-byte evidence. It does not establish original
source form, PsyQ object boundaries, or whole-executable link equivalence.
