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

# Validation history

The first complete run on 2026-08-14 correctly rejected `FUN_8002d5d4`
before image output. This exposed a stale source instruction rather than an
image-builder defect:

| Field | Result |
|---|---|
| Target executable SHA-256 | `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee` |
| Function | `FUN_8002d5d4` at `0x8002d5d4`, 56 bytes |
| Manifest reference/build SHA-256 | `5392ea1cf452cfea03f801e47f2eb8ce6f19ae48085f9a9b3574ecc728bacc23` |
| Rebuilt SHA-256 | `3e8679b88a6d30205656df6db8dcbf0842446fff5e17ceaeb523f1f457c18891` |

`Invoke-FunctionMatch.ps1` independently reproduced the mismatch against the
lawful input. The source was corrected from `addu $v0,$a0,$v0` to
`addu $v0,$a0,$zero`; the function then matched its recorded 56-byte SHA-256
pair again.

The rerun completed all 2,177 function checks with GCC 14.2.0 and GNU
binutils 2.43 and emitted a local candidate with SHA-256
`5e3804b2aec5a625adee5be4ac2ab6ba9039a18296eac3c8cb362b09cc346367`:

| Field | Result |
|---|---|
| Verified function bytes | 492,164 |
| Zero-filled unresolved text bytes | 558,460 |
| Header + payload size | 1,052,672 bytes |
| Bootable | `false` |
| Whole-executable match | `false` |

This proves the current manifest sections can be relocated and assembled into
a structurally valid PS-X EXE without importing reference bytes. It does not
solve the remaining text/data reconstruction, runtime validation, or disc
rebuild gates.

The next run added PsyQ crt0's `__main`, `start`, `stup1`, and `stup0`
sections (180 bytes total) after individual hash-gated verification. The
candidate now has 2,181 sections / 492,344 verified bytes, 558,280 unresolved
zero-filled bytes, and SHA-256
`9b5dca1bc66a78643701875e2e4a5722ee575cc10ece82f448b7a1aa09cccff6`.

The candidate manifest also declares crt0's exact zero-initialized range
`0x800e2938`–`0x80118e28` (222,448 bytes). The builder proves that it lies
inside the loaded text image, does not overlap a reconstructed section, and
is all zero in the generated payload. With this BSS coverage, 714,792 of
1,050,624 payload bytes are source- or zero-range-verified and 335,832 remain
unresolved; bootability and whole-image identity remain false.

`FUN_800219b8` and `FUN_80021a30` were then promoted from manual review to
verified source. Their identical 60-byte mode-input handlers raise the
candidate to 2,183 sections / 492,464 verified function bytes and reduce the
unresolved payload to 335,712 bytes.

The previously manifest-backed session handlers `FUN_80049f7c` and
`FUN_80049fa4` were independently rechecked on 2026-08-14 before candidate
integration. Each is 40 bytes and matched the lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee` under
GCC 14.2.0/binutils 2.43. Their respective reference/built SHA-256 values are
`94e6b362b4f02e23619b2832a0505ae5ec73394021a17547cfe32dea958794d0` and
`db9432f8529741e58f1652b0a31d8a93359e8a0ddbbbe1b1d295e6794b76d90f`.

Re-running the complete candidate builder with all manifest entries produced
2,185 sections / 492,544 verified function bytes plus the existing 222,448
verified BSS zero-fill bytes: 714,992 verified text bytes and 335,632
deliberately zero-filled unresolved bytes. The local candidate SHA-256 was
`e1cb164014332db654e063087f6ddc82e41fdb83e15b28240182c5e78d8dac37`.
It remains `bootable: false` and `whole_executable_match: false`.

# Header source

The `executable.psx_exe` fields in
`/config/ddr5thmix/build.json` transcribe the header recorded in
[/docs/games/ddr5thmix/revision-manifest.md](/docs/games/ddr5thmix/revision-manifest.md): entry point
`0x80020700`, text address `0x8001a800`, text size `0x00100800`, and stack
address `0x801ffff0`. They are metadata only and contain no game bytes.
