---
type: Concept
title: Dance Dance Revolution 5th Mix (Japan) — HOW TO PLAY Overlay Module
description: Technical reconstruction, range map, command script verification, and byte-matching evidence for the complete inst-demo executable overlay.
tags: [ps1, ddr5thmix, decompilation, overlay, state-machine, inst-demo]
timestamp: 2026-07-19T00:00:00-04:00
---

# Overview

The `inst-demo-overlay` module implements the executable overlay for the `DDR 5th Mix` **HOW TO PLAY** demonstration.
Extracted from `READ_DT.BIN` at file offset `0x1630000` (length `0x2e58` / 11,864 bytes), the overlay is loaded dynamically into PS1 RAM at runtime base `0x801e4000`.

Unlike static video streams, the overlay executes real MIPS assembly instructions, animation command lists, and 3D graphics/lighting calculations to render the interactive tutorial sequence.

# Range Map (11,864 Bytes Total)

The complete `0x2e58`-byte range (`0x801e4000`–`0x801e6e57`) is fully accounted for without gaps:

| Address Range | Length | Classification | Description |
|---|---:|---|---|
| `0x801e4000`–`0x801e4047` | 72 B | Header | ASCII Title Header (`"inst demo \0 btile \0..."`) |
| `0x801e4048`–`0x801e64e3` | 9,372 B | Code | 70 MIPS functions (`FUN_801e4048` to `FUN_801e64dc`) |
| `0x801e64e4`–`0x801e65eb` | 264 B | Data Table | Scripted tick and interpolation parameter tables |
| `0x801e65ec`–`0x801e664b` | 96 B | Data Table | Scripted parameter pointer arrays |
| `0x801e664c`–`0x801e66c3` | 120 B | Data Table | Callback command structure parameter arrays |
| `0x801e66c4`–`0x801e6b6b` | 1,200 B | Command List | 97-step command script (96 callbacks, 1 jump, 1,910 ticks total) |
| `0x801e6b6c`–`0x801e6e57` | 748 B | Unresolved Data | 3D transform matrices, lighting tables, and alignment padding |

# Entry Points

The main executable interacts with the overlay via three primary entry points:

1. **Init Entry** (`FUN_801e413c` @ `0x801e413c`, 172 bytes): Initializes overlay state, registers sound/graphic resources, and bootstraps the command list script runner at `0x801e66c4`.
2. **Update Entry** (`FUN_801e41e8` @ `0x801e41e8`, 156 bytes): Called once per frame by the attract state machine. Advances the command list script, updates camera/3D transformation matrices, and returns `1` when the sequence completes.
3. **Exit Entry** (`FUN_801e4284` @ `0x801e4284`, 68 bytes): Cleans up allocated resources upon transition out of HOW TO PLAY.

# Command Script & 1,910-Tick Verification

The overlay's animation is driven by a command script runner (`FUN_801e42ec` @ `0x801e42ec`, 180 bytes) interpreting 8-byte steps `[func_ptr, arg1_ptr]` starting at `0x801e66c4`.

Independent verification of the script execution trace confirms:
- **Total Script Steps**: 97 steps (96 non-jump callbacks + 1 explicit jump at step 12).
- **24 Waits of 60 Ticks**: 1,440 ticks total.
- **5 Waits of 80 Ticks**: 400 ticks total.
- **2 Interpolations of 20 Ticks**: 40 ticks total (index 3).
- **6 Interpolations of 5 Ticks**: 30 ticks total (indices 4, 5, 6).
- **Total Script Ticks**: **1,910 ticks** before reaching the null callback at `0x801e69cc`.

# Code Surface & Verification Evidence

- **Executable SHA-256**: `3dbf4bfa55caf2eb9e8e2db8cef4286441fc9e36850b1dca72515ef89060b0bb`
- **Toolchain**: GCC 14.2.0 / GNU Binutils 2.43 (`mipsel-none-elf`)
- **Source Files**: `/src/ddr5thmix/overlays/inst_demo/InstDemoOverlay.s` and `/src/ddr5thmix/overlays/inst_demo/inst_demo_overlay.h`
- **Manifest**: `/config/ddr5thmix/inst-demo-overlay.json`
- **Range Map CSV**: [/docs/games/ddr-5th-mix-jp-inst-demo-overlay-map.csv](/docs/games/ddr-5th-mix-jp-inst-demo-overlay-map.csv)
- **Module Match Result**: `byte_match: true` (70 functions, 9,372 code bytes verified byte-for-byte)

## Reproduction Command

```powershell
pwsh -File tools/build/Invoke-OverlayMatch.ps1 -OverlayPath work/ddr5thmix-overlays/inst-demo.bin
```

# External Callees

Out-of-overlay calls from `InstDemoOverlay.s` target standard main executable logic:
- `0x80037988`: Audio / SPU helper
- `0x800548e8`, `0x80054968`: Graphics pipeline & 3D matrix math
- `0x80056148`, `0x80056a08`, `0x80056af0`: GTE matrix transformation & rendering helpers

# Citations

[1] [/docs/games/ddr-5th-mix-jp-screen-flow.md](/docs/games/ddr-5th-mix-jp-screen-flow.md)
[2] [/docs/tooling/ghidra-setup.md](/docs/tooling/ghidra-setup.md)
[3] [/docs/workflows/function-byte-match.md](/docs/workflows/function-byte-match.md)
