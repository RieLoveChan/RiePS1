---
type: Reference
title: Synthetic GTE macro segment
description: Classification and limits of the ghidra_psx_ldr synthetic GTE macro entries in the DDR 5th Mix symbol map.
tags: [ps1, gte, ghidra, psyq, symbol-map]
timestamp: 2026-08-03T00:00:00-04:00
---

# Classification

The symbol map contains 153 `gte_*` rows at pseudo-addresses `0x20000000` through `0x20000260`, in 4-byte address steps. Each row has a declared size of 1 byte, for 153 declared pseudo-bytes. This is the synthetic GTE macro segment created by `ghidra_psx_ldr`, not a byte range in the PS-X EXE and not a set of callable MIPS functions.

The rows are useful as symbolic cross-references for GTE/COP2 operations. They must not be passed to `Invoke-FunctionMatch.ps1`, assembled as ordinary functions, or counted as exact executable reconstruction.

# Audit result

The fixed inventory at the 2026-08-03 audit contains 153 unique macro names and 40 aggregate caller edges: 24 rows have at least one recorded caller and 129 have none. The absence of a caller in this auto-analysis metadata is not evidence that the corresponding GTE operation is absent from the executable; it only describes the current symbol-map relationship.

The remaining 167 `library_signature` rows after Batch 12 are therefore not all GTE macros. Fourteen are short rows at real `0x800...` addresses: one 1-byte `2MBYTE_OBJ_B4` object-boundary marker and thirteen 4-byte `<object>_OBJ_<offset>` fragments. Those 14 require boundary/data classification separately and remain excluded from function reconstruction until their enclosing ranges are audited.

# Evidence

The classification is reproduced from `docs/games/ddr-5th-mix-jp-symbol-map.csv` by selecting `address` values beginning with `0x2000`, `proposed_name` beginning with `gte_`, and `confidence = library_signature`. The real-address short-row inventory is the complementary `library_signature` set with `size <= 4` and no `0x2000` prefix.