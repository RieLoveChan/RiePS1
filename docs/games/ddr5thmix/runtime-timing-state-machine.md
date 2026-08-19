---
type: Reconstruction Module
title: DDR 5th Mix runtime timing/resource state-machine module
description: Exact reconstruction and bounded semantic interpretation of the state machine surrounding the timing interpolator.
tags: [ps1, ddr5thmix, reconstruction, byte-match, timing, resources]
timestamp: 2026-08-18T00:00:00-04:00
---

# Scope

`src/ddr5thmix/LibrarySignatureBatch9.s` reconstructs `FUN_80098f8c` at
`0x80098f8c`. The 316-byte routine coordinates the timing interpolator with
an asynchronous resource/configuration path.

# Observed semantic behavior

- It preserves the caller's low byte as the selector passed to
  `FUN_800280c8`; when `0x800f3b98` is nonzero, it obtains the second argument
  from `FUN_800991f4`, otherwise that value is zero.
- The phase word at `0x80116c50` has observed cases 0 through 3:
  - **0**: calls `FUN_80025b18(2)`, clears the phase counter at
    `0x80116c48`, and advances the phase.
  - **1**: increments the phase counter and waits for `FUN_8002829c`; when
    that helper reports readiness, it advances the phase.
  - **2**: calls `FUN_800280c8(selector & 0xff, interpolated_value)`, clears
    the phase counter, and advances the phase.
  - **3**: increments the phase counter, calls `FUN_8002821c`, and advances
    the phase only when that helper is nonzero.
- The return is normally the current phase. If the halfword at
  `0x80116c54` is positive, the routine returns `-1` instead.

The safe semantic name is therefore **timing/resource phase state machine**.
The original phase names, resource identity, and the units of the interpolated
value remain unresolved.

# Verification

Against the lawful executable with SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`, GCC
14.2.0/binutils 2.43 targeting `mipsel-none-elf` produced:

```powershell
pwsh -File tools/build/Invoke-FunctionMatch.ps1 `
  -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 `
  -Function FUN_80098f8c
```

Result: `byte_match: True`, 316/316 bytes at file offset `0x7ef8c`,
reference/built SHA-256
`8492fcfc2f3174d783faa4da9a455935573d6e7015735a2cc17b82c2da8f1200`.

# Limitations

This proves bounded instruction-byte reproduction and the observed static
contract only. It does not establish the original phase names, resource
identity, or whole-executable link equivalence.
