---
type: Tool
title: DDR 5th Mix partial PS-X EXE candidate builder
description: Builds a structurally valid local PS-X EXE from manifest-backed sections only, while refusing stale or unverifiable function evidence.
tags: [ps1, ddr5thmix, build, linker, ps-x-exe, verification]
timestamp: 2026-08-14T00:00:00-04:00
---

# Purpose

`Build-MainExecutableCandidate.ps1` is the executable-image integration gate
after the relocatable ELF skeleton. It compiles the manifest sources with the
pinned MIPS toolchain, applies each function's documented symbol bindings,
and verifies the resulting section SHA-256 before inserting it at its runtime
offset in a standard 2,048-byte PS-X EXE header.

The builder never reads or copies the lawful reference executable into its
output. Bytes outside verified manifest sections are zero-filled deliberately.
It labels the output `partial_psx_exe_candidate`, `bootable: false`, and
`whole_executable_match: false`; a successful output is therefore a
reproducible structural artifact, not an identity or bootability claim.

# Reproduction

With the lawful executable retained locally only for the existing function
verification workflow and the pinned toolchain installed:

```powershell
& .\tools\build\Build-MainExecutableCandidate.ps1 `
  -ToolchainBin 'C:\Users\<user>\AppData\Roaming\mips\mips\bin'
```

Generated objects, linked sections, candidate EXE, and JSON report stay under
the ignored `build/ddr5thmix/main-candidate/` directory.

# Current validation result

On 2026-08-14, GCC 14.2.0 and GNU binutils 2.43 compiled the complete source
set and the builder correctly rejected `FUN_8002d5d4` before image output:

| Field | Result |
|---|---|
| Target executable SHA-256 | `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee` |
| Function | `FUN_8002d5d4` at `0x8002d5d4`, 56 bytes |
| Manifest reference/build SHA-256 | `5392ea1cf452cfea03f801e47f2eb8ce6f19ae48085f9a9b3574ecc728bacc23` |
| Rebuilt SHA-256 | `3e8679b88a6d30205656df6db8dcbf0842446fff5e17ceaeb523f1f457c18891` |

The existing `Invoke-FunctionMatch.ps1` independently reproduced the same
byte mismatch against the lawful input. Consequently the repository's
aggregate completion claim must not be used as proof that an executable can
yet be generated from the current source/manifest. The next required unit is
to repair or reclassify this function's source and manifest evidence, then
rerun the candidate builder from the first function onward.

# Header source

The `executable.psx_exe` fields in
`/config/ddr5thmix/build.json` transcribe the header recorded in
[/docs/games/ddr-5th-mix-jp.md](/docs/games/ddr-5th-mix-jp.md): entry point
`0x80020700`, text address `0x8001a800`, text size `0x00100800`, and stack
address `0x801ffff0`. They are metadata only and contain no game bytes.
