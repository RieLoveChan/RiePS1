---
type: Tool
title: PlayStation TIM image inventory
description: Locates and structurally validates embedded PlayStation TIM images, then optionally renders them locally to PNG.
tags: [ps1, assets, tim, texture, metadata]
timestamp: 2026-08-14T00:00:00-04:00
---

# Usage

```powershell
& .\tools\iso9660\Inventory-TimImages.ps1 `
  -InputPath .\work\ddr5thmix-extract\observed-rage-17sai\<slice>.bin `
  -OutJson .\work\ddr5thmix-extract\tim-inventory.json `
  -ExtractDir .\work\ddr5thmix-extract\tim-assets
```

The tool scans aligned candidate headers and accepts an image only when:

- the TIM magic is `0x10`;
- flags select a supported 4-, 8-, or 16-bit pixel mode;
- any CLUT and image blocks remain in bounds; and
- the image block length equals its serialized rectangle size.

It records offsets, bit depth, CLUT presence, dimensions, and serialized byte
counts. It does not decode or commit image pixels. The replay-specific results
are recorded in [/docs/tooling/cd-read-asset-mapping.md](/docs/tooling/cd-read-asset-mapping.md).
With `-ExtractDir`, it also writes each fully validated serialized TIM range as
its original `.tim` bytes beneath ignored `work/` and adds its filename to the
JSON manifest.
# Local rendering

```powershell
& .\tools\iso9660\Render-TimImages.ps1 `
  -InputPath .\work\ddr5thmix-extract\observed-rage-17sai\<slice>.bin `
  -OutDir .\work\ddr5thmix-extract\tim-renders\<slice>
```

The renderer revalidates each TIM before converting BGR555 CLUT/direct colours
and indexed 4-, 8-, or 16-bit pixels to PNG. It writes a JSON manifest beside
the ignored PNGs. On the replay-observed TIM slices it rendered all 251
validated images, including a `640×134` PNG confirmed readable by System.Drawing.

Against the lawful local `READ_DT.BIN` SHA-256
`004cbd9fa5c260b32f25319f5ae652208a7c80fbb056fa0e72127eb83d30453a`,
the inventory validated 298 TIM images and the renderer produced 298 PNGs
under ignored `work/`. Raw extraction also produced 298 original `.tim` files
(1,196,176 bytes total), and the JSON manifest contains all 298 filenames. A
former candidate at `0x1a48ff8` is now rejected: its declared 16×512 CLUT does
not match its serialized length. No PNGs, manifests, or input assets are
committed.

# Descriptor-addressed LZ TIM resources

The separately reconstructed `FUN_8002a8b8` decoder is implemented by
`Expand-ResourceLz.ps1`.  For the same lawful `READ_DT.BIN` revision, 266
descriptor-addressed ranges begin with little-endian word `0x80001094`.  With
a 4 MiB output bound enforced for literal, run, and back-reference tokens, 265
of those ranges terminate successfully.  Their local expanded outputs total
18,473,440 bytes; concatenating them gives SHA-256
`70e18102e5c6f708c210cbd4d50f57a1d94b773a6f5ce640b1d1a2beaa12587a`, and
the TIM inventory reports `tim_count: 265` for that stream.

The remaining descriptor,
`lba_05cfb_offset_0076d800_size_00005a71.bin`, reproducibly stops with
`Unexpected end in run`.  It is not an additional asset: its 23,153 bytes are
a strict prefix of the 72,385-byte descriptor at the same LBA,
`lba_05cfb_offset_0076d800_size_00011ac1.bin`.  The longer range terminates
and yields the already-counted 77,344-byte TIM (SHA-256
`60083b3dc1f2d0940f714f89fa0d5d92cd352ee010c3231bcaa08f59bae420ff`).
Thus the 266 table entries yield 265 distinct extracted TIM resources.
Expanded files, concatenations, and manifests remain only beneath ignored
`work/`.
