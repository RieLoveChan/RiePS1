---
type: Tool
title: PlayStation TIM image inventory
description: Locates and structurally validates embedded PlayStation TIM images, then optionally renders them locally to PNG.
tags: [ps1, assets, tim, texture, metadata]
timestamp: 2026-08-15T00:00:00-04:00
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

The same decoder accepts all 20 descriptor ranges with leading word
`0x800010d4`.  They expand to 1,240,640 bytes and contain 247 complete TIMs:
the first stream contains 19 and each of the other 19 streams contains 12.
`Inventory-TimImages.ps1 -ExtractDir` separated all 247 original serialized
TIM ranges under ignored `work/` (1,240,640 bytes in total).  Together with
the 265 single-TIM `0x80001094` expansions, descriptor-addressed LZ data
therefore yields 512 validated TIM images.  No semantic name is assigned to
either header family.

Pass `-VerifyOnly` to the decoder to validate a candidate and return its output
size/hash without creating a file.  This makes negative or broad format scans
safe to run against lawful local descriptor ranges; an `OutPath` is required
only when an expanded asset is intentionally retained under `work/`.
The bounded decoder also requires its terminator to consume the entire declared
descriptor range, rejecting accidental early terminators in unrelated data.
`Test-ResourceLzCandidates.ps1` applies that same bounded contract to every
local descriptor file in one process and writes only a JSON result manifest.
# Bounded prefix decoding

`Expand-ResourceLz.ps1` defaults to rejecting every byte after its terminator.
Its explicit `-AllowTrailing` mode preserves that default while enabling
inspection of a decoder-delimited prefix in a larger container. It reports both
`input_consumed` and `trailing_input_bytes`; callers must not treat the trailing
bytes as decoded or classified.

Sixteen descriptor-addressed containers begin with `0x00000008` and carry a
`0x80001094`-starting LZ prefix at byte offset `8`. With `-AllowTrailing`, each
prefix terminates and expands to 49,696 bytes; the 16 local outputs total
795,136 bytes. The decoder leaves 24,622–30,287 input bytes after the
terminator in each container. These prefixes are retained locally under ignored
`work/` with source/offset/hash metadata, but no TIM, image, or semantic format
claim is made for either the outputs or the trailing bytes.

`Split-LzPrefixContainers.ps1` reproduces the split: it requires the 8-byte
wrapper and LZ prefix, invokes the decoder with `-AllowTrailing`, writes both
the 16 decoded prefixes and 16 suffix ranges under ignored `work/`, and records
source, consumed offset, hashes, and filenames. The suffixes total 416,550
bytes. TIM, VAG, VAB, and TMD structural validators all report zero accepted
assets across those suffixes; they remain neutral raw data rather than being
assigned an image, audio, model, or semantic name.

```powershell
& .\tools\iso9660\Split-LzPrefixContainers.ps1 `
  -InputDir .\work\ddr5thmix-extract\descriptor-table-assets `
  -OutDir .\work\ddr5thmix-extract\header08-composite-sections `
  -OutJson .\work\ddr5thmix-extract\header08-composite-sections\manifest.json
```

The strict mode
continues to accept known complete LZ TIM streams only when it consumes their
entire declared input.

# Header-5 LZ TIM containers

Four descriptor-addressed containers begin with `0x00000005` and contain a
`0x80001094` LZ prefix at byte offset `16`. Run the same splitter with the
independent wrapper and prefix parameters:

```powershell
& .\tools\iso9660\Split-LzPrefixContainers.ps1 `
  -InputDir .\work\ddr5thmix-extract\descriptor-table-assets `
  -OutDir .\work\ddr5thmix-extract\header05-composite-sections `
  -OutJson .\work\ddr5thmix-extract\header05-composite-sections\manifest.json `
  -PrefixOffset 16 `
  -RequiredFirstWord 5
```

All four prefixes terminate and are structurally valid 8bpp 320×240 TIMs:
their serialized sizes are 77,856 or 78,368 bytes. `Inventory-TimImages.ps1 -ExtractDir` retained four original `.tim` files (312,448 bytes) locally, and
`Render-TimImages.ps1` produced four readable 320×240 PNGs. The four suffix
ranges total 396,801 bytes and contain zero structurally valid TIM, VAG, VAB,
or TMD resources. No screen or semantic asset names are assigned.

Together, the descriptor-addressed LZ work yields 517 structurally valid TIM
images: 512 from the complete `0x80001094`/`0x800010d4` families, four from
header-5 wrappers, and one from the header-7 wrapper below.
# Direct header-5 TIM archive

The remaining `0x00000005` descriptor at LBA `0x7c51`
(`lba_07c51_offset_01718800_size_00058bd4.bin`, SHA-256
`d69de884cc61f2fcc9c3a8c4846ff5921b0f50aa7af7be48e064017324f35880`) is not a
wrapped LZ resource. `Inventory-TimImages.ps1 -ExtractDir` validates and writes
103 serialized TIMs (306,512 bytes): 102 4bpp 84×60 images and one 4bpp 640×134
image. `Render-TimImages.ps1` produced 103 local PNGs; System.Drawing reopened
a rendered 84×60 image successfully. This direct archive is already included
in the complete `READ_DT.BIN` raw-TIM inventory; this descriptor-specific run
makes the resource boundary and local extraction reproducible. No screen or
semantic names are inferred.

# Header-7 direct and LZ TIM resources

The three `0x00000007` descriptor containers have mixed layouts. Direct TIM
inventory/extraction validates 41 images (415,424 bytes) at LBA `0x7b5c` and
47 images (123,328 bytes) at LBA `0x7e23`; the former has 40 × 4bpp 96×192 and
one × 4bpp 640×134, while the latter has 47 × 4bpp 192×32. These direct TIMs
remain ignored local outputs and are already represented by the whole-container
TIM inventory.

At LBA `0x7aea`, a `0x80001094` LZ prefix begins at byte `20`. The generic
splitter invocation `-PrefixOffset 20 -RequiredFirstWord 7` yields one complete
8bpp 320×240 TIM (77,344 bytes; SHA-256
`ea4f4516e9c22f7fc9aa32d6dd6c018d62a36f3f7d14ed415217eb45f8ab2b47`) and a
194,967-byte suffix. TIM, VAG, VAB, and TMD validators accept zero structures
in that suffix. No screen or semantic resource names are assigned.
