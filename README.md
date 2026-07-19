# RiePS1 — PlayStation 1 reconstruction research

Research and implementation workspace for legally obtained PlayStation 1
software. The first target is **Dance Dance Revolution 5th Mix (Japan)**
(`SLPM-86897`) with an instruction-level `byte_match` success contract.

Copyrighted game binaries, BIOS images, proprietary SDKs, keys, and extracted
assets are not committed. Reproduction tools accept a user-supplied lawful dump
and validate its recorded hashes before comparison.

## Current status

| Area | Current result |
|---|---|
| Target provenance | CHD, track, `SYSTEM.CNF`, and boot executable identified and hashed |
| Original toolchain | PsyQ SDK 4.4.0 identified |
| Function inventory | 2,124 total: 119 verified, 145 manually reviewed, 977 library signatures, 883 unverified |
| Exact reconstruction | 119 functions / 8,748 selected bytes |
| PsyQ coverage | 30 BIOS/kernel trampolines and 33 real GTE/COP2 functions |
| Game-owned modules | `mode-control`: 19/1,204; `runtime-core`: 5/1,824; `screen-selector`: 22/2,344; `game-session-router`: 9/1,684 |
| Global data map | 16 globals/ranges plus two asserted partial state layouts |
| Screen flow | 1-state wrapper, 14-state child, 7-state attract loop, 15-state session, and 6-state selector mapped |
| HOW TO PLAY overlay | 11,864 bytes delimited; 1,910 scripted ticks identified |
| Music metadata | 47 statically linked music-info records mapped |

Ghidra's approximately 49% attributed function-body coverage is an analysis
inventory figure, not reconstruction progress. Exact accepted reconstruction
currently covers 119 of 2,124 functions (about 5.6%).

## Completed foundations

- Reproducible disc and PS-X EXE extraction with revision/hash gates.
- Ghidra 12.1.2 analysis with `ghidra_psx_ldr` and PsyQ signatures.
- Pinned GCC 14.2.0/binutils 2.43 function and module byte comparison.
- Documented startup, `main`, controller input, mode dispatch, nested state
  machines, and attract-loop order.
- All 18 functions in `0x800230cc–0x800236cc`, plus one external dependency,
  reconstructed as the first coherent game-owned module.
- Per-frame input, reset, mode dispatch, and shared epilogue reconstructed as
  the five-function `runtime-core` module.
- All 18 selector-table entries, three MUSIC SEL helpers, and the central
  router reconstructed as the 22-function `screen-selector` module.
- Outer session wrappers, the 15-state child lifecycle router, and terminal
  callbacks reconstructed as the 9-function `game-session-router` module.

## Recommended next targets

1. **Reconstruct the remaining gameplay-session callbacks:** group the 42
   unmatched callbacks into entry/selection, gameplay, result, and ending phases.
2. **Promote the HOW TO PLAY overlay into a module:** its boundaries and timing
   are known, but its code is not yet reconstructed.
3. **Expand verified global layouts:** resolve consumers of offsets `0x09`,
   `0x17`, `0x2c`, and `0x2e`, and the 42-entry screen-name pointer array.
4. **Advance to linked-object validation:** infer PsyQ object boundaries and
   reproduce inter-function layout instead of placing functions independently.

## Documentation

- [Knowledge bundle](docs/index.md)
- [Target revision](docs/games/ddr-5th-mix-jp.md)
- [Symbol map](docs/games/ddr-5th-mix-jp-symbol-map.md)
- [Mode-control module](docs/games/ddr-5th-mix-jp-mode-control.md)
- [Runtime-core module](docs/games/ddr-5th-mix-jp-runtime-core.md)
- [Screen-selector module](docs/games/ddr-5th-mix-jp-screen-selector.md)
- [Game-session router module](docs/games/ddr-5th-mix-jp-game-session-router.md)
- [Global map](docs/games/ddr-5th-mix-jp-globals.md)
- [Screen flow](docs/games/ddr-5th-mix-jp-screen-flow.md)
- [Byte-match workflow](docs/workflows/function-byte-match.md)
- [External screen-selector work package](docs/workflows/external-agent-screen-selector.md)
- [External HOW TO PLAY overlay work package](docs/workflows/external-agent-inst-demo-overlay.md)
- [Legal provenance policy](docs/foundations/legal-provenance.md)

See [AGENTS.md](AGENTS.md) before making changes. Correctness and byte-match
claims require reproducible evidence tied to the exact input revision, tool
versions, command, and comparison result.
