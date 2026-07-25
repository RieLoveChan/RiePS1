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
| Main-executable function inventory | 2,124 total: 163 verified, 102 manually reviewed, 977 library signatures, 882 unverified |
| Exact reconstruction | 233 functions / 26,036 selected bytes: 163/16,664 main executable plus 70/9,372 HOW TO PLAY overlay |
| PsyQ coverage | 30 BIOS/kernel trampolines and 33 real GTE/COP2 functions |
| Game-owned modules | `mode-control`: 20/1,660; `runtime-core`: 6/2,232; `screen-selector`: 22/2,344; session router/opening/gameplay/endgame: 51/8,736 |
| Global data map | 16 globals/ranges plus two asserted partial state layouts |
| Screen flow | 1-state wrapper, 14-state child, 7-state attract loop, 15-state session, and 6-state selector mapped |
| HOW TO PLAY overlay | Full 11,864-byte structural map; all 70 functions/9,372 code bytes exact; 700 of 748 tail data bytes structurally resolved, 48 zero-filled bytes unresolved after four static passes plus a dynamic (write-only) BizHawk pass; 1,910-tick script verified |
| Music metadata | 47 statically linked music-info records mapped |

Ghidra's approximately 49% attributed function-body coverage is an analysis
inventory figure, not reconstruction progress. Exact accepted reconstruction
currently covers 163 of 2,124 main-executable functions (about 7.7%), plus all
70 identified functions in the separately loaded HOW TO PLAY overlay.

## Completed foundations

- Reproducible disc and PS-X EXE extraction with revision/hash gates.
- Ghidra 12.1.2 analysis with `ghidra_psx_ldr` and PsyQ signatures.
- Pinned GCC 14.2.0/binutils 2.43 function and module byte comparison.
- Documented startup, `main`, controller input, mode dispatch, nested state
  machines, and attract-loop order.
- All 18 functions in `0x800230cc–0x800236cc`, plus two external dependencies,
  reconstructed as the first coherent game-owned module.
- Per-frame input, reset, mode dispatch, and shared epilogue reconstructed as
  the six-function `runtime-core` module.
- All 18 selector-table entries, three MUSIC SEL helpers, and the central
  router reconstructed as the 22-function `screen-selector` module.
- Outer session wrappers, the 15-state child lifecycle router, and terminal
  callbacks reconstructed as the 9-function `game-session-router` module.
- All twelve callbacks for session states 0–3 reconstructed as the
  1,736-byte `game-session-opening` module.
- All twelve callbacks for session states 4–7 (PREPARE, INTRO, DANCING, STAGE
  END) reconstructed as the 3,356-byte `game-session-gameplay` module.
- All eighteen callbacks for session states 8–13 (RESULT, GAME_OVER, ENDING,
  PRE_END, LINK END, NAME ENTRY) reconstructed as the 1,960-byte
  `game-session-endgame` module, closing the entire 15-state gameplay-session
  child graph (states 0–14, all exact; 45 functions/8,736 bytes across
  `game-session-opening`, `game-session-gameplay`, `game-session-endgame`,
  and the terminal-state-14 callbacks in `game-session-router`).
- All 70 identified HOW TO PLAY overlay functions reconstructed across 9,372
  exact code bytes, with a contiguous 11,864-byte structural map and verified
  97-step/1,910-tick command trace.

## Recommended next targets

1. **Expand verified global layouts:** assign semantics to remaining observed
   fields that have concrete readers or writers. Offsets `0x09`, `0x17`, and
   `0x2c` and the sole consumer of the 42-entry screen-name pointer array are
   resolved; retain `0x2e` as an exhaustive negative result unless new
   reproducible evidence reveals a reader.
2. **Advance to linked-object validation:** infer PsyQ object boundaries and
   reproduce inter-function layout instead of placing functions independently.
   A first evidence pass is underway — see
   [linked-object evidence](docs/foundations/linked-object-evidence.md) for
   current findings (an alignment/padding survey, a corroborated PsyQ
   library-object cross-check, and a duplicate-body check) and the
   falsifiable bar for a future object-boundary-confirmed claim; no boundary
   is confirmed yet.

The HOW TO PLAY overlay's former 80-byte limit was explicitly reopened on
2026-07-25. A raw-MIPS call-chain and bounds proof resolved the 32-byte
bitmask table and disproved the suspected one-past-end read. The remaining
two 24-byte all-zero runs have no overlay or main-executable consumer after
four static scopes and a dynamic write-only pass; keep them unresolved rather
than guessing padding. See "Fourth pass" in
[the overlay concept](docs/games/ddr-5th-mix-jp-inst-demo-overlay.md).

## Documentation

- [Knowledge bundle](docs/index.md)
- [Target revision](docs/games/ddr-5th-mix-jp.md)
- [Symbol map](docs/games/ddr-5th-mix-jp-symbol-map.md)
- [Mode-control module](docs/games/ddr-5th-mix-jp-mode-control.md)
- [Runtime-core module](docs/games/ddr-5th-mix-jp-runtime-core.md)
- [Screen-selector module](docs/games/ddr-5th-mix-jp-screen-selector.md)
- [Game-session router module](docs/games/ddr-5th-mix-jp-game-session-router.md)
- [Game-session opening module](docs/games/ddr-5th-mix-jp-game-session-opening.md)
- [Game-session gameplay module](docs/games/ddr-5th-mix-jp-game-session-gameplay.md)
- [Game-session endgame module](docs/games/ddr-5th-mix-jp-game-session-endgame.md)
- [Global map](docs/games/ddr-5th-mix-jp-globals.md)
- [Screen flow](docs/games/ddr-5th-mix-jp-screen-flow.md)
- [Byte-match workflow](docs/workflows/function-byte-match.md)
- [Linked-object evidence](docs/foundations/linked-object-evidence.md)
- [External screen-selector work package](docs/workflows/external-agent-screen-selector.md)
- [External HOW TO PLAY overlay work package](docs/workflows/external-agent-inst-demo-overlay.md)
- [Legal provenance policy](docs/foundations/legal-provenance.md)

See [AGENTS.md](AGENTS.md) before making changes. Correctness and byte-match
claims require reproducible evidence tied to the exact input revision, tool
versions, command, and comparison result.
