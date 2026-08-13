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
| Main-executable function inventory | 2,609 total: 1,594 verified, 102 manually reviewed, 167 library signatures, 643 unverified |
| Main-executable code-region byte accounting | 572,577 of 1,050,624 code-region bytes (54.5%) fall within a catalogued function boundary; a whole-executable gap sweep found the remaining 478,047 bytes are not 478KB of undiscovered functions -- 476,784 of them are two already-identified non-code regions (a leading debug-string/pointer table and a trailing asset-data-plus-BSS region), and the true residue is now fully classified: 1,204 bytes of zero-alignment padding and 59 bytes of already-evidenced PsyQ object-header markers. No unclassified bytes remain in the code region. See [linked-object evidence §5](docs/foundations/linked-object-evidence.md) |
| Exact reconstruction | 1,664 functions / 282,652 selected bytes: 1,594/273,464 main executable plus 70/9,372 HOW TO PLAY overlay |
| PsyQ coverage | 60 BIOS/kernel trampolines and 34 real GTE/COP2 functions |
| Game-owned modules | `mode-control`: 20/1,660; `runtime-core`: 6/2,232; `screen-selector`: 22/2,348; session router/opening/gameplay/endgame: 51/8,736; `state-transition`: 117/16,132; `runtime-graphics-init`: 8/1,020; `graphics-primitive-builder`: 4/988; `state-dispatch`: 1/124; `runtime-screen-init`: 1/172; `runtime-resource-init`: 1/180; `runtime-graphics-clear`: 1/172; `runtime-player-init`: 1/176; `runtime-state-init`: 1/176; `runtime-sync-init`: 1/176; `runtime-record-init`: 1/180; `runtime-timing-table`: 1/184; `runtime-flag-selector`: 1/188; `runtime-image-update`: 1/192; `runtime-descriptor-build`: 1/192; `runtime-six-record-init`: 1/192; `runtime-image-region-update`: 1/200; `runtime-player-gate`: 1/200; `runtime-image-select-update`: 2/704; `runtime-state-gate`: 1/264; `runtime-image-dispatch`: 1/356; `runtime-image-batch-init`: 1/400; `runtime-object-init`: 1/424; `runtime-coordinate-init`: 1/360; `runtime-init-loop`: 1/236; `runtime-table-interpolate`: 1/232; `runtime-object-transform`: 1/1,308; `runtime-curve-sampler`: 1/1,108; `runtime-transform-interpolate`: 1/1,156; `runtime-transform-coordinator`: 1/656; `runtime-object-frame-init`: 1/332; `runtime-table-dispatch`: 1/1,552; `runtime-table-dispatch-secondary`: 1/1,340; `runtime-table-dispatch-tertiary`: 1/1,388; `runtime-table-dispatch-quaternary`: 1/1,252; `runtime-callback-7ea5c`: 1/276; `runtime-callback-7eb70`: 1/316; `runtime-callback-7f218`: 1/204; `runtime-callback-7f334`: 1/416; `runtime-helper-7f9b8`: 1/248; `runtime-helper-7fab0`: 1/476; `runtime-helper-81f30`: 1/284; `runtime-helper-8204c`: 1/1,228; `runtime-helper-8253c`: 1/1,128; `runtime-helper-829a4`: 1/1,068; `runtime-helper-82dd0`: 1/2,980; `runtime-helper-83974`: 1/632; `runtime-helper-83bec`: 1/584; `runtime-helper-83f68`: 1/1,000; `runtime-helper-843dc`: 1/1,100; `runtime-helper-848cc`: 1/436; `runtime-helper-84a80`: 1/1,384; `runtime-helper-84fe8`: 1/620; `runtime-helper-85254`: 1/772; `runtime-helper-85558`: 1/208; `runtime-helper-85628`: 1/996; `runtime-helper-85b50`: 1/260; `runtime-helper-85ff8`: 1/256; `runtime-helper-860f8`: 1/452; `runtime-helper-86334`: 1/324; `runtime-helper-86478`: 1/444; `runtime-helper-866f0`: 1/392; `runtime-helper-86878`: 1/2,008; `runtime-helper-87050`: 1/312; `runtime-helper-87188`: 1/776; `runtime-helper-87490`: 1/532; `runtime-helper-876a4`: 1/332; `runtime-helper-877f0`: 1/328; `runtime-helper-87938`: 1/2,172; `runtime-helper-881b4`: 1/704; `runtime-helper-88474`: 1/1,044; `runtime-helper-88888`: 1/1,176; `runtime-helper-88d20`: 1/1,012; `runtime-helper-89114`: 1/604; `runtime-helper-89370`: 1/1,348; `runtime-helper-898b4`: 1/656; `runtime-helper-89b44`: 1/608 |
| Latest game-owned module | `runtime-helper-92a80`: 1/552 |
| Global data map | 16 globals/ranges plus two asserted partial state layouts |
| Screen flow | 1-state wrapper, 14-state child, 7-state attract loop, 15-state session, and 6-state selector mapped |
| HOW TO PLAY overlay | Full 11,864-byte structural map; 70 functions/9,372 code bytes plus 12 semantic data sections/2,492 bytes exact (11,864 selected bytes, 100% whole-overlay match); all 748 tail bytes resolved; 1,910-tick script verified |
| Music metadata | 47 statically linked music-info records mapped |

Ghidra's approximately 49% attributed function-body coverage is an analysis
inventory figure, not reconstruction progress; so is the 54.5% code-region
byte accounting above (a catalogued boundary is not a byte-exact match).
Exact accepted reconstruction currently covers 1,564 of 2,579 main-executable
functions (about 60.6%; 237,668 of 1,050,624 code-region bytes, about 22.6%),
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
- **First confirmed PsyQ object boundaries:** `SYS`, `FORMAT`, `SSSTART`,
  `S_SCA`, `PRESET`, `PADENTRY`, `PADMAIN`, and `PADCMD` each independently
  satisfy this project's own four-criterion `object_boundary_confirmed` bar —
  complete byte account, an independently-derived boundary agreeing with a
  hand-reviewed function entry point, and a checked edge-padding convention.
  Three further candidates (`BIOS_OBJ_*`, `UT_REV`, `VSYNC`) each met two of
  the four criteria with a checked negative result (no edge padding at all)
  on the third, recorded honestly rather than as confirmed. See
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
   met for eight objects** — `SYS`, `FORMAT`, `SSSTART`, `S_SCA`, `PRESET`,
   `PADENTRY`, `PADMAIN`, and `PADCMD` (the latter three consecutive/adjacent
   in the same PAD cluster), spanning three distinct library regions
   (SPU/sequencer, `GS_*` graphics, PAD driver) — each with a complete
   zero-gap byte account, an independently-derived boundary agreeing with a
   hand-reviewed/byte-matched function entry point, and a checked
   (non-uniform, honestly reported) edge-padding convention. A systematic scan
   of the 59 multi-row `<name>_OBJ_*` runs also found three real negative
   results (`BIOS_OBJ_*`, `UT_REV`, `VSYNC` — complete byte account and a
   corroborated boundary, but dense edges with no padding anywhere; all three
   sit in the same tightly packed SPU-library region, suggestively one dense
   object rather than several small ones). Full per-object detail, addresses,
   and reproduction commands are in
   [linked-object evidence](docs/foundations/linked-object-evidence.md). Every
   other `<name>_OBJ_*` run remains `candidate_only` until it independently
   passes the same checks. A bounded, ordered backlog toward object-name
   semantic identity (lowest priority; still open even for the confirmed
   objects) is defined in the
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
- [State-transition module](docs/games/ddr-5th-mix-jp-state-transition.md)
- [Runtime graphics initialization module](docs/games/ddr-5th-mix-jp-runtime-graphics-init.md)
- [Graphics primitive builder module](docs/games/ddr-5th-mix-jp-graphics-primitive-builder.md)
- [State-dispatch module](docs/games/ddr-5th-mix-jp-state-dispatch.md)
- [Runtime screen initialization module](docs/games/ddr-5th-mix-jp-runtime-screen-init.md)
- [Runtime resource initialization module](docs/games/ddr-5th-mix-jp-runtime-resource-init.md)
- [Runtime graphics clear module](docs/games/ddr-5th-mix-jp-runtime-graphics-clear.md)
- [Runtime player initialization module](docs/games/ddr-5th-mix-jp-runtime-player-init.md)
- [Runtime state initialization module](docs/games/ddr-5th-mix-jp-runtime-state-init.md)
- [Runtime synchronization initialization module](docs/games/ddr-5th-mix-jp-runtime-sync-init.md)
- [Runtime record initialization module](docs/games/ddr-5th-mix-jp-runtime-record-init.md)
- [Runtime timing-table module](docs/games/ddr-5th-mix-jp-runtime-timing-table.md)
- [Runtime flag selector module](docs/games/ddr-5th-mix-jp-runtime-flag-selector.md)
- [Runtime image update module](docs/games/ddr-5th-mix-jp-runtime-image-update.md)
- [Runtime descriptor build module](docs/games/ddr-5th-mix-jp-runtime-descriptor-build.md)
- [Runtime six-record initialization module](docs/games/ddr-5th-mix-jp-runtime-six-record-init.md)
- [Runtime image-region update module](docs/games/ddr-5th-mix-jp-runtime-image-region-update.md)
- [Runtime image selection/update module](docs/games/ddr-5th-mix-jp-runtime-image-select-update.md)
- [Runtime state gate module](docs/games/ddr-5th-mix-jp-runtime-state-gate.md)
- [Runtime image dispatch module](docs/games/ddr-5th-mix-jp-runtime-image-dispatch.md)
- [Runtime image batch initialization module](docs/games/ddr-5th-mix-jp-runtime-image-batch-init.md)
- [Runtime object initialization module](docs/games/ddr-5th-mix-jp-runtime-object-init.md)
- [Runtime coordinate initialization module](docs/games/ddr-5th-mix-jp-runtime-coordinate-init.md)
- [Runtime initialization loop module](docs/games/ddr-5th-mix-jp-runtime-init-loop.md)
- [Runtime table interpolation module](docs/games/ddr-5th-mix-jp-runtime-table-interpolate.md)
- [Runtime object transform module](docs/games/ddr-5th-mix-jp-runtime-object-transform.md)
- [Runtime curve sampler module](docs/games/ddr-5th-mix-jp-runtime-curve-sampler.md)
- [Runtime transform interpolation module](docs/games/ddr-5th-mix-jp-runtime-transform-interpolate.md)
- [Runtime transform coordinator module](docs/games/ddr-5th-mix-jp-runtime-transform-coordinator.md)
- [Runtime object frame initialization module](docs/games/ddr-5th-mix-jp-runtime-object-frame-init.md)
- [Runtime table dispatch module](docs/games/ddr-5th-mix-jp-runtime-table-dispatch.md)
- [Secondary runtime table dispatch module](docs/games/ddr-5th-mix-jp-runtime-table-dispatch-secondary.md)
- [Tertiary runtime table dispatch module](docs/games/ddr-5th-mix-jp-runtime-table-dispatch-tertiary.md)
- [Quaternary runtime table dispatch module](docs/games/ddr-5th-mix-jp-runtime-table-dispatch-quaternary.md)
- [Runtime callback 7ea5c module](docs/games/ddr-5th-mix-jp-runtime-callback-7ea5c.md)
- [Runtime callback 7eb70 module](docs/games/ddr-5th-mix-jp-runtime-callback-7eb70.md)
- [Runtime callback 7f218 module](docs/games/ddr-5th-mix-jp-runtime-callback-7f218.md)
- [Runtime callback 7f334 module](docs/games/ddr-5th-mix-jp-runtime-callback-7f334.md)
- [Runtime helper 7f9b8 module](docs/games/ddr-5th-mix-jp-runtime-helper-7f9b8.md)
- [Runtime helper 7fab0 module](docs/games/ddr-5th-mix-jp-runtime-helper-7fab0.md)
- [Runtime helper 81f30 module](docs/games/ddr-5th-mix-jp-runtime-helper-81f30.md)
- [Runtime helper 8204c module](docs/games/ddr-5th-mix-jp-runtime-helper-8204c.md)
- [Runtime helper 8253c module](docs/games/ddr-5th-mix-jp-runtime-helper-8253c.md)
- [Runtime helper 829a4 module](docs/games/ddr-5th-mix-jp-runtime-helper-829a4.md)
- [Runtime helper 82dd0 module](docs/games/ddr-5th-mix-jp-runtime-helper-82dd0.md)
- [Runtime helper 83974 module](docs/games/ddr-5th-mix-jp-runtime-helper-83974.md)
- [Runtime helper 83bec module](docs/games/ddr-5th-mix-jp-runtime-helper-83bec.md)
- [Runtime helper 83f68 module](docs/games/ddr-5th-mix-jp-runtime-helper-83f68.md)
- [Runtime helper 843dc module](docs/games/ddr-5th-mix-jp-runtime-helper-843dc.md)
- [Runtime helper 848cc module](docs/games/ddr-5th-mix-jp-runtime-helper-848cc.md)
- [Runtime helper 84a80 module](docs/games/ddr-5th-mix-jp-runtime-helper-84a80.md)
- [Runtime helper 84fe8 module](docs/games/ddr-5th-mix-jp-runtime-helper-84fe8.md)
- [Runtime helper 85254 module](docs/games/ddr-5th-mix-jp-runtime-helper-85254.md)
- [Runtime helper 85558 module](docs/games/ddr-5th-mix-jp-runtime-helper-85558.md)
- [Runtime helper 85628 module](docs/games/ddr-5th-mix-jp-runtime-helper-85628.md)
- [Runtime helper 85b50 module](docs/games/ddr-5th-mix-jp-runtime-helper-85b50.md)
- [Runtime helper 85ff8 module](docs/games/ddr-5th-mix-jp-runtime-helper-85ff8.md)
- [Runtime helper 860f8 module](docs/games/ddr-5th-mix-jp-runtime-helper-860f8.md)
- [Runtime helper 86334 module](docs/games/ddr-5th-mix-jp-runtime-helper-86334.md)
- [Runtime helper 86478 module](docs/games/ddr-5th-mix-jp-runtime-helper-86478.md)
- [Runtime helper 866f0 module](docs/games/ddr-5th-mix-jp-runtime-helper-866f0.md)
- [Runtime helper 86878 module](docs/games/ddr-5th-mix-jp-runtime-helper-86878.md)
- [Runtime helper 87050 module](docs/games/ddr-5th-mix-jp-runtime-helper-87050.md)
- [Runtime helper 87188 module](docs/games/ddr-5th-mix-jp-runtime-helper-87188.md)
- [Runtime helper 87490 module](docs/games/ddr-5th-mix-jp-runtime-helper-87490.md)
- [Runtime helper 876a4 module](docs/games/ddr-5th-mix-jp-runtime-helper-876a4.md)
- [Runtime helper 877f0 module](docs/games/ddr-5th-mix-jp-runtime-helper-877f0.md)
- [Runtime helper 87938 module](docs/games/ddr-5th-mix-jp-runtime-helper-87938.md)
- [Runtime helper 881b4 module](docs/games/ddr-5th-mix-jp-runtime-helper-881b4.md)
- [Runtime helper 88474 module](docs/games/ddr-5th-mix-jp-runtime-helper-88474.md)
- [Runtime helper 88888 module](docs/games/ddr-5th-mix-jp-runtime-helper-88888.md)
- [Runtime helper 88d20 module](docs/games/ddr-5th-mix-jp-runtime-helper-88d20.md)
- [Runtime helper 89114 module](docs/games/ddr-5th-mix-jp-runtime-helper-89114.md)
- [Runtime helper 89370 module](docs/games/ddr-5th-mix-jp-runtime-helper-89370.md)
- [Runtime helper 898b4 module](docs/games/ddr-5th-mix-jp-runtime-helper-898b4.md)
- [Runtime helper 89da4 module](docs/games/ddr-5th-mix-jp-runtime-helper-89da4.md)
- [Runtime helper 8a8cc module](docs/games/ddr-5th-mix-jp-runtime-helper-8a8cc.md)
- [Runtime helper 8a9d8 module](docs/games/ddr-5th-mix-jp-runtime-helper-8a9d8.md)
- [Runtime helper 8ac3c module](docs/games/ddr-5th-mix-jp-runtime-helper-8ac3c.md)
- [Runtime helper 8ae04 module](docs/games/ddr-5th-mix-jp-runtime-helper-8ae04.md)
- [Runtime helper 8b170 module](docs/games/ddr-5th-mix-jp-runtime-helper-8b170.md)
- [Runtime helper 8c22c module](docs/games/ddr-5th-mix-jp-runtime-helper-8c22c.md)
- [Runtime helper 8c538 module](docs/games/ddr-5th-mix-jp-runtime-helper-8c538.md)
- [Runtime helper 8c7b4 module](docs/games/ddr-5th-mix-jp-runtime-helper-8c7b4.md)
- [Runtime helper 8c964 module](docs/games/ddr-5th-mix-jp-runtime-helper-8c964.md)
- [Runtime helper 8cb00 module](docs/games/ddr-5th-mix-jp-runtime-helper-8cb00.md)
- [Runtime helper 8cd3c module](docs/games/ddr-5th-mix-jp-runtime-helper-8cd3c.md)
- [Runtime helper 8e7bc module](docs/games/ddr-5th-mix-jp-runtime-helper-8e7bc.md)
- [Runtime helper 8ebac module](docs/games/ddr-5th-mix-jp-runtime-helper-8ebac.md)
- [Runtime helper 8ed28 module](docs/games/ddr-5th-mix-jp-runtime-helper-8ed28.md)
- [Runtime helper 8f254 module](docs/games/ddr-5th-mix-jp-runtime-helper-8f254.md)
- [Runtime helper 8f54c module](docs/games/ddr-5th-mix-jp-runtime-helper-8f54c.md)
- [Runtime helper 8ff00 module](docs/games/ddr-5th-mix-jp-runtime-helper-8ff00.md)
- [Runtime helper 900f4 module](docs/games/ddr-5th-mix-jp-runtime-helper-900f4.md)
- [Runtime helper 902cc module](docs/games/ddr-5th-mix-jp-runtime-helper-902cc.md)
- [Runtime helper 90860 module](docs/games/ddr-5th-mix-jp-runtime-helper-90860.md)
- [Runtime helper 90f74 module](docs/games/ddr-5th-mix-jp-runtime-helper-90f74.md)
- [Runtime helper 919e4 module](docs/games/ddr-5th-mix-jp-runtime-helper-919e4.md)
- [Runtime helper 91ba4 module](docs/games/ddr-5th-mix-jp-runtime-helper-91ba4.md)
- [Runtime helper 91e20 module](docs/games/ddr-5th-mix-jp-runtime-helper-91e20.md)
- [Runtime helper 92538 module](docs/games/ddr-5th-mix-jp-runtime-helper-92538.md)
- [Runtime helper 92754 module](docs/games/ddr-5th-mix-jp-runtime-helper-92754.md)
- [Runtime helper 92854 module](docs/games/ddr-5th-mix-jp-runtime-helper-92854.md)
- [Runtime helper 92968 module](docs/games/ddr-5th-mix-jp-runtime-helper-92968.md)
- [Runtime helper 92a80 module](docs/games/ddr-5th-mix-jp-runtime-helper-92a80.md)
- [Runtime helper 89b44 module](docs/games/ddr-5th-mix-jp-runtime-helper-89b44.md)
- [Runtime player gate module](docs/games/ddr-5th-mix-jp-runtime-player-gate.md)
- [Music/resource state module](docs/games/ddr-5th-mix-jp-music-state.md)
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
