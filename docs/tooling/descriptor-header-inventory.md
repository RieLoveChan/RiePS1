---
type: Tool
title: DDR 5th Mix descriptor header inventory
description: Metadata-only grouping of all local descriptor ranges by their first little-endian word.
tags: [ps1, ddr5thmix, assets, validation]
timestamp: 2026-08-15T00:00:00-04:00
---

# Result

Inventory-DescriptorHeaders.ps1 validates all 544 locally retained descriptor ranges and groups them by the first little-endian 32-bit word, preserving only counts, size ranges, and example LBAs in ignored work/. The current lawful input has 32,281,965 bytes across 121 first-word families. This is an organization aid, not a format classification.

**Correction (2026-08-20)**: 99 of the 544 manifest ranges correspond to
4-byte-aligned cross-word coincidences in the executable's descriptor-table
zone, not to descriptor-table entries; the executable's descriptor table
proper has 445 entries (`0x800ac9f8`–`0x800ad7e0`). The 99 extracted ranges
remain real, hash-verified `READ_DT.BIN` bytes. See
[trailing executable data region](/docs/games/ddr5thmix/trailing-asset-region.md).
