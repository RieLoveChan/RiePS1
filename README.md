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
| Function inventory | 2,118 total: 83 verified, 173 manually reviewed, 977 library signatures, 885 unverified |
| Exact reconstruction | 83 functions / 2,896 selected bytes |
| PsyQ coverage | 30 BIOS/kernel trampolines and 33 real GTE/COP2 functions |
| Game-owned module | `mode-control`: 19 functions / 1,204 bytes |
| Global data map | 10 globals plus two asserted partial state layouts |
| Screen flow | 1-state wrapper, 14-state child, 7-state attract loop, 15-state session, and 6-state selector mapped |
| HOW TO PLAY overlay | 11,864 bytes delimited; 1,910 scripted ticks identified |
| Music metadata | 47 statically linked music-info records mapped |

Ghidra's approximately 49% attributed function-body coverage is an analysis
inventory figure, not reconstruction progress. Exact accepted reconstruction
currently covers 83 of 2,118 functions (about 3.9%).

## Completed foundations

- Reproducible disc and PS-X EXE extraction with revision/hash gates.
- Ghidra 12.1.2 analysis with `ghidra_psx_ldr` and PsyQ signatures.
- Pinned GCC 14.2.0/binutils 2.43 function and module byte comparison.
- Documented startup, `main`, controller input, mode dispatch, nested state
  machines, and attract-loop order.
- All 18 functions in `0x800230cc–0x800236cc`, plus one external dependency,
  reconstructed as the first coherent game-owned module.

## Recommended next targets

1. **Build a `runtime-core` module:** reconstruct the main mode dispatcher,
   per-frame input adapter, state reset, and shared dispatcher epilogue. This
   connects `main` to the completed `mode-control` module.
2. **Reconstruct the six-state screen selector:** its STYLE/CHARACTER/MUSIC
   route and callbacks are already mapped manually.
3. **Reconstruct the 15-state gameplay-session routers:** begin with the small
   wrappers around PREPARE, INTRO, DANCING, STAGE END, RESULT, and termination.
4. **Promote the HOW TO PLAY overlay into a module:** its boundaries and timing
   are known, but its code is not yet reconstructed.
5. **Expand verified global layouts:** resolve consumers of offsets `0x09`,
   `0x17`, `0x2c`, and `0x2e`, and the 42-entry screen-name pointer array.
6. **Advance to linked-object validation:** infer PsyQ object boundaries and
   reproduce inter-function layout instead of placing functions independently.

## Documentation

- [Knowledge bundle](docs/index.md)
- [Target revision](docs/games/ddr-5th-mix-jp.md)
- [Symbol map](docs/games/ddr-5th-mix-jp-symbol-map.md)
- [Mode-control module](docs/games/ddr-5th-mix-jp-mode-control.md)
- [Global map](docs/games/ddr-5th-mix-jp-globals.md)
- [Screen flow](docs/games/ddr-5th-mix-jp-screen-flow.md)
- [Byte-match workflow](docs/workflows/function-byte-match.md)
- [External screen-selector work package](docs/workflows/external-agent-screen-selector.md)
- [Legal provenance policy](docs/foundations/legal-provenance.md)

See [AGENTS.md](AGENTS.md) before making changes. Correctness and byte-match
claims require reproducible evidence tied to the exact input revision, tool
versions, command, and comparison result.
