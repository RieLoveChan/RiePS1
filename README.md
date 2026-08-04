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
| Main-executable function inventory | 2,507 total: 1,358 verified, 102 manually reviewed, 167 library signatures, 880 unverified |
| Main-executable code-region byte accounting | 572,577 of 1,050,624 code-region bytes (54.5%) fall within a catalogued function boundary; a whole-executable gap sweep found the remaining 478,047 bytes are not 478KB of undiscovered functions -- 476,784 of them are two already-identified non-code regions (a leading debug-string/pointer table and a trailing asset-data-plus-BSS region), and the true residue is now fully classified: 1,204 bytes of zero-alignment padding and 59 bytes of already-evidenced PsyQ object-header markers. No unclassified bytes remain in the code region. See [linked-object evidence §5](docs/foundations/linked-object-evidence.md) |
| Exact reconstruction | 1,428 functions / 178,440 selected bytes: 1,358/169,068 main executable plus 70/9,372 HOW TO PLAY overlay |
| PsyQ coverage | 60 BIOS/kernel trampolines and 34 real GTE/COP2 functions |
| Game-owned modules | `mode-control`: 20/1,660; `runtime-core`: 6/2,232; `screen-selector`: 22/2,348; session router/opening/gameplay/endgame: 51/8,736 |
| Global data map | 16 globals/ranges plus two asserted partial state layouts |
| Screen flow | 1-state wrapper, 14-state child, 7-state attract loop, 15-state session, and 6-state selector mapped |
| HOW TO PLAY overlay | Full 11,864-byte structural map; 70 functions/9,372 code bytes plus 12 semantic data sections/2,492 bytes exact (11,864 selected bytes, 100% whole-overlay match); all 748 tail bytes resolved; 1,910-tick script verified |
| Music metadata | 47 statically linked music-info records mapped |

Ghidra's approximately 49% attributed function-body coverage is an analysis
inventory figure, not reconstruction progress; so is the 54.5% code-region
byte accounting above (a catalogued boundary is not a byte-exact match).
Exact accepted reconstruction currently covers 1,358 of 2,507 main-executable
functions (about 54.2%; 169,068 of 1,050,624 code-region bytes, about 16.1%),
plus all
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
- Library-signature reconstruction batches 1-12 (1,110 functions total)
  closed every named main-executable signature from 8 through 511 bytes and
  the final 15 signatures of 512+ bytes, plus every gap-sweep-discovered
  `tool_heuristic` function of any size. The remaining 167 `library_signature`
  rows are 153 synthetic GTE macros at `0x2000...` pseudo-addresses plus
  14 short real-address rows requiring separate object-boundary/data
  classification; none are ordinary reconstruction targets.
- **Whole-executable gap sweep closed to marker/padding bytes only:**
  reconstructed the 44-byte startup-gap functions plus 80 further functions
  (1,880 bytes) found across 254 small gaps between already-catalogued rows,
  corrected two pre-existing rows (`VS_VH_OBJ_3FC`, `PadInfoAct`) whose
  declared sizes overran a verified neighbor, and classified every remaining
  non-zero byte as either zero-alignment padding or an already-evidenced
  PsyQ object-header marker. Outside the two large already-identified
  non-code regions, the main-executable code region now has zero
  unclassified bytes. See [linked-object evidence §5](docs/foundations/linked-object-evidence.md).
- **`DdrSecondaryState` full field-xref sweep:** a Ghidra 12.1.2 headless
  field/xref sweep over all 79 functions referencing `PTR_DAT_800ac8ec`
  named 20 fields with concrete reader/writer evidence — a mode-4
  asset-loading queue (`load_step_index`/`load_queue_index`), a 5-field
  CD-read request record consumed by the 2026-08-03 startup-gap functions,
  a graphics-init-once latch, a shared termination flag, and more — and
  corrected the struct's asserted size from `0xbc` to the `bzero`-evidenced
  `0xd0`. See [`DdrSecondaryState` partial layout](docs/games/ddr-5th-mix-jp-globals.md).
- **First confirmed PsyQ object boundaries:** `SYS`, `FORMAT`, `SSSTART`, and
  `S_SCA` each independently satisfy this project's own four-criterion
  `object_boundary_confirmed` bar — complete byte account, an
  independently-derived boundary agreeing with a hand-reviewed function entry
  point, and a checked edge-padding convention. Two further candidates
  (`BIOS_OBJ_*`, `UT_REV`) each met two of the four criteria with a checked
  negative result (no edge padding at all) on the third, recorded honestly
  rather than as confirmed. See
  [linked-object evidence](docs/foundations/linked-object-evidence.md).

## Recommended next targets

1. **Expand verified global layouts:** `DdrModeState` and `DdrSecondaryState`
   have both now had a full field-xref sweep; remaining unnamed fields in
   each (`DdrModeState.0x2e` durable negative result; `DdrSecondaryState`'s
   `0x00`, `0x45`, `0x50`, `0x52`, `0x66`, `0x74`, `0xbb`, and the seven
   item-scratch bytes at `0x41`–`0x4a`) have a confirmed writer or reader but
   not both, or evidence too generic/single-consumer for a domain name.
   Revisit only if new reproducible evidence appears; otherwise this target
   is largely exhausted for the two structs currently in scope.
2. **Advance to linked-object validation:** infer PsyQ object boundaries and
   reproduce inter-function layout instead of placing functions independently.
   **The falsifiable four-criterion bar defined in
   [linked-object evidence](docs/foundations/linked-object-evidence.md) is now
   met for four objects** — `SYS` (`0x800381e8`–`0x8003b114`, 12,076 bytes,
   boundary confirmed against `ResetGraph`), `FORMAT`
   (`0x8003b6e8`–`0x8003ba38`, 848 bytes, boundary confirmed against
   `_card_read`), `SSSTART` (`0x8003030c`–`0x80030610`, 772 bytes, boundary
   confirmed against `SsSetMVol`/`SsSeqCalledTbyT`), and `S_SCA`
   (`0x8002ff3c`–`0x800302b8`, 892 bytes, boundary confirmed against
   `SsSetSerialAttr`/`SsSetMVol`) — each with a complete zero-gap byte
   account, an independently-derived boundary agreeing with a
   hand-reviewed/byte-matched function entry point, and a checked
   (non-uniform, honestly reported) edge-padding convention. A systematic scan
   of all 59 multi-row `<name>_OBJ_*` runs found two further candidates,
   `BIOS_OBJ_*` (`0x8003fec8`–`0x80041628`) and `UT_REV`
   (`0x80032afc`–`0x80032b98`), that meet criteria 1 and 2 but fail criterion 3
   outright (both edges dense, zero padding bytes anywhere) — recorded as real
   negative results, not confirmed. Every other `<name>_OBJ_*` run remains
   `candidate_only` until it independently passes the same checks. A bounded,
   ordered backlog toward object-name semantic identity (lowest priority;
   still open even for the confirmed objects) is defined in the
   [external linked-object-boundary work package](docs/workflows/external-agent-linked-object-boundary.md).

The HOW TO PLAY overlay's former 80-byte limit was explicitly reopened on
2026-07-25. Raw-MIPS call-chain, stride, and bounds proofs resolved the
32-byte bitmask table and both 24-byte zero-filled spans. The spans complete
an all-zero sentinel in a 14-slot initialization table and two dormant rows
in a 16-slot timing table; they are not independent padding runs. See the
fourth and fifth passes in
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
- [External linked-object-boundary work package](docs/workflows/external-agent-linked-object-boundary.md)
- [Legal provenance policy](docs/foundations/legal-provenance.md)

See [AGENTS.md](AGENTS.md) before making changes. Correctness and byte-match
claims require reproducible evidence tied to the exact input revision, tool
versions, command, and comparison result.