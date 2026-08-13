---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 8c964
description: Exact reconstruction of FUN_8008c964, a runtime resource, timing, and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 8c964

`FUN_8008c964` is a 412-byte runtime resource, timing, and state helper at executable address `0x8008c964`.

- Executable file offset: `0x72964`
- Source: [/src/ddr5thmix/RuntimeHelper8c964.s](/src/ddr5thmix/RuntimeHelper8c964.s)
- Manifest module: `runtime-helper-8c964`
- Manifest section: `.text.FUN_8008c964`
- Callers/callees recorded by the symbol map: 1/11

## Reproducible match

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1` matched 412/412 bytes using GCC 14.2.0/binutils 2.43 against the lawful `SLPM_868.97_1` executable with SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.

The extracted reference slice and assembled output both have SHA-256 `7394300de3cbb1a3076fbd7ce71b1784786b3aa0bea851fbadda608e14dd1def`.
