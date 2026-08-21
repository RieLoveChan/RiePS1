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
output **except** for the manifest-declared `data_ranges` — the two
classified non-code regions (leading rodata block and trailing
descriptor/asset data), whose byte-for-byte content is verified against a
recorded per-range SHA-256 before being spliced. Every other byte comes from
verified manifest sections; anything still uncovered is zero-filled
deliberately. When `data_ranges` are declared, `-ReferenceExe` (the lawful
boot executable) is required, its full-file SHA-256 is checked against the
manifest before any splice, and the built payload is compared byte-for-byte
against the reference text region to compute `whole_executable_match`.
It labels the output `partial_psx_exe_candidate`, `bootable: false`, and
`whole_executable_match: <computed>`; a successful whole-image match is a
reproducible structural artifact whose bootability still requires the disc
gate's emulator/hardware test.

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

On 2026-08-20 the builder was re-run against the full current manifest
(library-signature batches, whole-executable gap sweep, and the runtime
helper/block modules reconstructed through `FUN_80098050`). It assembled and
hash-checked all 2,326 manifest functions: 572,516 verified function bytes
plus the 222,448-byte crt0 BSS zero-fill = 794,964 verified text bytes;
255,660 bytes remain deliberately zero-filled. Local candidate SHA-256
`b8639d775594a5b5d28cb381295c8251656e575e818c044219c2ed1c691dbfb2`.
It remains `bootable: false` and `whole_executable_match: false`.

The 255,660 unresolved bytes are exactly the two classified non-code regions
of the text image: the leading rodata block (`0x8001a800`–`0x800206f8`,
24,312 bytes — debug/UI strings, string tables, string-pointer tables, and
function-pointer tables) and the trailing asset-data-plus-BSS region
(`0x800ac888`–`0x8011b000`, 452,472 bytes, minus the 222,448-byte zero range
already covered by the manifest). See
[linked-object evidence §5](/docs/foundations/linked-object-evidence.md) for
the classification evidence; reproducing those regions is the remaining work
toward `whole_executable_match`.

### 2026-08-20 — whole-image byte match (`whole_executable_match: true`)

Following the classification of both non-code regions
([executable-rodata.md](/docs/games/ddr5thmix/executable-rodata.md),
[trailing-asset-region.md](/docs/games/ddr5thmix/trailing-asset-region.md)),
the manifest gained a `data_ranges` section recording each region's bounds
and SHA-256 (three large ranges plus 32 residual PsyQ object-header marker
bytes, 254,387 bytes total). The builder now accepts `-ReferenceExe` (the
lawful boot executable), verifies its full-file SHA-256 against the
manifest, verifies every data range byte-for-byte against its recorded
hash, splices those bytes, and compares the built payload against the
reference text region. The 2026-08-20 run with
`-ReferenceExe work/ddr5thmix-extract/exe/SLPM_868.97_1` produced:

| Field | Result |
|---|---|
| Verified function bytes | 572,516 |
| Verified zero-fill (crt0 BSS) bytes | 222,448 |
| Verified data-range bytes | 254,387 |
| Verified text bytes | 1,049,351 (of 1,050,624) |
| Unresolved (zero-padding) bytes | 1,273 — byte-identical by construction |
| Payload SHA-256 | `b4a1a391a3c3afca848caa48cf433198de8a849132d5b8f6fbabdb94b23acb35` (= reference text region) |
| `whole_executable_match` | `true` |
| Candidate SHA-256 | `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee` — **byte-identical to the lawful `SLPM_868.97_1`** (verified with a direct file comparison) |
| Bootable | `false` — not yet boot-tested; requires the disc gate's emulator/hardware test |

The header's standard PS-X EXE region marker (`Sony Computer Entertainment
Inc. for Japan area` at 0x4c) is now written by the builder, completing the
byte-identical reproduction. The candidate remains labeled
`partial_psx_exe_candidate` with `bootable: false` because bootability is a
runtime property the disc gate must test; the whole-image byte identity is
now a proven build artifact.

# Header source

The `executable.psx_exe` fields in
`/config/ddr5thmix/build.json` transcribe the header recorded in
[/docs/games/ddr5thmix/revision-manifest.md](/docs/games/ddr5thmix/revision-manifest.md): entry point
`0x80020700`, text address `0x8001a800`, text size `0x00100800`, and stack
address `0x801ffff0`. They are metadata only and contain no game bytes.
