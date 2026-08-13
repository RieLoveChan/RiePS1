---
type: Tool
title: DDR 5th Mix runtime CD-read asset mapping
description: Replays a lawful BizHawk movie, records the validated CD request fields, and extracts only the requested READ_DT.BIN ranges under an ignored workspace.
tags: [ps1, ddr5thmix, assets, bizhawk, cdrom, runtime]
timestamp: 2026-08-13T00:00:00-04:00
---

# Scope

`tools/bizhawk/probe-cd-reads.lua` observes the current request LBA at
`0x800e2958` and byte count at `0x800e2940`, fields statically traced through
the CD request path. `Extract-ObservedCdLoads.ps1` maps a non-zero request in
the `READ_DT.BIN` LBA extent back to its byte range, bounds-checks it, writes
the range only beneath `work/`, and records a SHA-256 manifest. It never adds
asset bytes to Git.

# Reproduced observation

The supplied local movie `runtime/bizhawk/init_to_gameplay.bk2` has SHA-256
`d71b65d98bd87e9f63750f979e9596f2b0fa94b7e36acd5a4156ccac3245a3f3`.
Its header identifies the Nymashock core and BizHawk 2.11; the owner describes
its input as P1 Solo, Rage, song 17 `sai`, Maniac. It was launched against the
canonical CUE at `runtime/bizhawk/runs/20260723-185640/disc/game.cue`, whose
data track SHA-256 is `c414a87c81b7a7a2104f18739a1dca7c256c84f8ff2202ee29f307e72967a935`.

BizHawk stopped at movie end after frame 5160, before the Lua loop's requested
5,200 frames, so the durable `partial-report.json` has `completed: false`.
The 17 recorded state changes nevertheless contain 15 non-zero, bounds-valid
requests in the `READ_DT.BIN` range (LBA 20,000 onward). This is evidence of
those reads during this replay prefix, not a claim that the trace encompasses
the entire gameplay session or that each range has a semantic asset name.

| Frame | LBA | READ_DT offset | Bytes | SHA-256 |
|---:|---:|---:|---:|---|
| 1156 | `0x4e95` | `0x0003a800` | 190,688 | `9980d72eafc5637cdf66bc39235d075f77c8b4c5121401fdc6c7b3cb7193630f` |
| 1265 | `0x83b9` | `0x01acc800` | 63,380 | `c48878b782a06b6aaa3d04c9e0ac99c7d72e2c9a5ad5f7638a95766c4c0199d4` |
| 1788 | `0x7aa5` | `0x01642800` | 140,388 | `cf04df855cc1b0e1cede822f41a3eb0b9c7ed89e5675145e5863d0921e425f4f` |
| 1878 | `0x4e36` | `0x0000b000` | 193,904 | `ef7e755b1b4a8c8f70659589ee61eeb2d7eabeabe27377f94f7d47407830137a` |
| 1946 | `0x7aea` | `0x01665000` | 229,692 | `0443459d036a1aa785648de6d75b75f46d7ce1caf74c7fd270e33d8ec76fdfa4` |
| 2124 | `0x7b5c` | `0x0169e000` | 500,292 | `495acb001fe31a21f492b3d42f011fd09d76c6b1105af1413fae310b45bab3e0` |
| 2391 | `0x7c51` | `0x01718800` | 363,476 | `d69de884cc61f2fcc9c3a8c4846ff5921b0f50aa7af7be48e064017324f35880` |
| 2697 | `0x7d03` | `0x01771800` | 384,036 | `e0c155cfcdc52fd844b3ad34ea7ac4f298c40edf98f4c98c2765b8dcedafabd6` |
| 3182 | `0x80ac` | `0x01946000` | 52,594 | `92b933a54ed18ac8c5a0b7a5b9e4bd7d66f0af64241806d82fe35d8757e6b90b` |
| 3228 | `0x7f28` | `0x01884000` | 115,340 | `58166cecc088e34298ad601022c598cdff9bc7d1135c30be667391e71880ecb0` |
| 3268 | `0x7987` | `0x015b3800` | 35,945 | `59a4d358bcced1e81344beec69764caca36f8921d7ee763b30b227217fc43494` |
| 3282 | `0x6df5` | `0x00fea800` | 247,676 | `247b53d607ccea11584f211aa4f87d125c3b1659e38873a3256ff978cc1683af` |
| 3353 | `0x7977` | `0x015ab800` | 32,574 | `eec7ca7e4fc0fdb8cca50561a9853496423a1565011a5ade70f86f2115dad7ef` |
| 4998 | `0x502b` | `0x00105800` | 22,848 | `7cb013a692ec0a5b496992ed05c7b84407ee4943ef303ba3442a579d46c6e3d8` |
| 5041 | `0x7e8a` | `0x01835000` | 42,944 | `bd753164455d58cde22584b47fd14279bff1a2af3178def653bd4de7311dccf0` |

The frame-4998 range begins with a bounds-valid `VAGp` header: its big-endian
payload length is 22,800 bytes, so header plus payload exactly equals the
22,848-byte request. The other ranges remain unnamed raw resource candidates
until their individual formats and consumers are validated.

# Structural classification

`Inventory-TimImages.ps1` validates a TIM candidate only when its magic,
flags, optional CLUT block, image block length, and 16-bit-word dimensions are
internally consistent. Applied to the 15 local slices above, it establishes:

| Frame | LBA | Classification | Validated contents |
|---:|---:|---|---|
| 1156 | `0x4e95` | VAB sound bank | `pBAV`, version 7, declared size 190,688, 3 programs, 33 tones |
| 1265 | `0x83b9` | Pointer-table/text payload, format pending | First 20 words are RAM addresses `0x801743ac`–`0x80174c74`; contains the ASCII anti-modification message. This is an overlay/data candidate, not yet proven executable. |
| 1878 | `0x4e36` | VAB sound bank | `pBAV`, version 7, declared size 193,904, 1 program, 15 tones |
| 2124 | `0x7b5c` | TIM archive | 41 TIMs: 40 × 4bpp 96×192 and 1 × 4bpp 640×134 |
| 2391 | `0x7c51` | TIM archive | 103 TIMs: 102 × 4bpp 84×60 and 1 × 4bpp 640×134 |
| 2697 | `0x7d03` | TIM archive | 106 TIMs: 12 × 8bpp 64×40, 47 × 4bpp 192×32, and 47 × 4bpp 128×40 |
| 5041 | `0x7e8a` | TIM image | 1 × 4bpp 640×134 |

The remaining seven unclassified slices have small leading integer/offset tables
but no structurally valid TIM, VAB, or TMD identification from this pass. In
particular, no current replay-observed slice is proven to contain a PlayStation
TMD 3D model. The image archives are strong evidence for 2D UI, sprites, or
background material, but their exact screen/character assignment needs a
runtime screenshot or loader-consumer correlation.
The four TIM-containing slices were rendered locally to 251 PNGs under work/ddr5thmix-extract/tim-renders/; each slice has an ignored manifest.json. Rendered outputs require visual/runtime correlation before receiving screen or character names.

# Commands

```powershell
& .\tools\bizhawk\run-probe.ps1 `
  -GamePath .\runtime\bizhawk\runs\20260723-185640\disc\game.cue `
  -ConfigPath .\runtime\bizhawk\runs\20260723-185640\bizhawk-config.ini `
  -LuaPath .\tools\bizhawk\probe-cd-reads.lua `
  -MoviePath .\runtime\bizhawk\init_to_gameplay.bk2 `
  -Frames 5000

& .\tools\iso9660\Extract-ObservedCdLoads.ps1 `
  -InputPath .\work\ddr5thmix-extract\READ_DT.BIN `
  -TracePath .\runtime\bizhawk\runs\<run>\partial-report.json `
  -OutDir .\work\ddr5thmix-extract\observed-rage-17sai
```

Use a frame limit below the movie's terminal frame when a complete `report.json`
is required; otherwise the partial report records the completed prefix.