---
type: Tool
title: DDR 5th Mix descriptor extraction coverage verifier
description: Verifies that every descriptor-addressed READ_DT range exists locally with its declared length and SHA-256.
tags: [ps1, ddr5thmix, assets, descriptors, verification]
timestamp: 2026-08-15T00:00:00-04:00
---

# Usage

```powershell
& .\tools\iso9660\Test-DescriptorExtractionCoverage.ps1 `
  -ManifestPath .\work\ddr5thmix-extract\descriptor-table-assets\manifest.json `
  -InputDir .\work\ddr5thmix-extract\descriptor-table-assets `
  -OutJson .\work\ddr5thmix-extract\format-probes\descriptor-extraction-coverage.json
```

The verifier checks each manifest entry's filename, byte length, and SHA-256. It
returns nonzero if any resource is missing or differs. It only writes the JSON
report beneath the caller-selected ignored workspace.

# Reproduced result

Against the lawful local `READ_DT.BIN` descriptor extraction, the manifest has
544 ranges totalling 32,281,965 declared bytes. The verifier reports
`valid_count: 544` and `invalid_count: 0`. This proves complete physical
retention of the descriptor-addressed ranges; it does not claim that every
range's file format or gameplay role is known.

**Correction (2026-08-20)**: the 544 manifest entries came from a bounded
scan of the executable's file range `0x92000`–`0x94000` (addresses
`0x800ac000`–`0x800ae000`) that accepted `(byte_count, LBA)` word pairs at
4-byte alignment. An alignment-checked re-scan shows the executable's
descriptor table proper is the contiguous 8-byte-strided run at
`0x800ac9f8`–`0x800ad7e0` with **445 entries**; the other 99 manifest pairs
have no 8-byte-aligned occurrence in the executable and are 4-byte-aligned
cross-word coincidences (word1 of one record + word0 of the next), so they
are not table entries. The 99 extracted READ_DT.BIN ranges remain real,
hash-verified disc bytes; they are just not descriptor-table entries. See
[trailing executable data region](/docs/games/ddr5thmix/trailing-asset-region.md)
and [linked-object evidence §5.1](/docs/foundations/linked-object-evidence.md).