---
type: Tool
title: PlayStation TIM image inventory
description: Locates and structurally validates embedded PlayStation TIM images, then optionally renders them locally to PNG.
tags: [ps1, assets, tim, texture, metadata]
timestamp: 2026-08-13T00:00:00-04:00
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
