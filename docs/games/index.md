# Games

* [Dance Dance Revolution 5th Mix (Japan)](ddr-5th-mix-jp.md) - The project's first target revision; byte-match decompilation.
* [DDR 5th Mix (Japan) symbol map](ddr-5th-mix-jp-symbol-map.md) - First-pass, tool-generated function symbol map with confidence tiers.
* [DDR 5th Mix (Japan) global map](ddr-5th-mix-jp-globals.md) - Fixed-address data symbols and partial layouts used by reconstructed game logic.
* [DDR 5th Mix mode-control module](ddr-5th-mix-jp-mode-control.md) - Reproducible game-owned reconstruction unit: nineteen functions covering the inventoried range plus one external dependency.
* [DDR 5th Mix runtime-core module](ddr-5th-mix-jp-runtime-core.md) - Five exact functions connecting main-loop input/reset work to mode dispatch and its shared epilogue.
* [DDR 5th Mix screen-selector module](ddr-5th-mix-jp-screen-selector.md) - Nested six-state screen selector hierarchy, callbacks, and next-state router matching twenty-two functions.
* [DDR 5th Mix game-session router module](ddr-5th-mix-jp-game-session-router.md) - Outer wrappers, 15-state child lifecycle routing, and terminal callbacks matching nine functions.
* [DDR 5th Mix game-session opening module](ddr-5th-mix-jp-game-session-opening.md) - State 0-3 callback triples matching twelve functions across PLAY START, selector ownership, and NON STOP paths.
* [DDR 5th Mix game-session gameplay module](ddr-5th-mix-jp-game-session-gameplay.md) - State 4-7 callback triples matching twelve functions across PREPARE, INTRO, DANCING, and STAGE END.
* [DDR 5th Mix music/resource state module](ddr-5th-mix-jp-music-state.md) - Exact reconstruction of the 2,412-byte music/resource state dispatcher.
* [DDR 5th Mix game-session endgame module](ddr-5th-mix-jp-game-session-endgame.md) - State 8-13 callback triples matching eighteen functions across RESULT, GAME_OVER, ENDING, PRE_END, LINK END, and NAME ENTRY, closing the 15-state gameplay session.
* [DDR 5th Mix state-transition module](ddr-5th-mix-jp-state-transition.md) - 117 timing, input-event, resource-request, and state-transition helpers matching 16,132 bytes.
* [DDR 5th Mix runtime graphics initialization module](ddr-5th-mix-jp-runtime-graphics-init.md) - Eight graphics, timing, and runtime initialization helpers matching 1,020 bytes.
* [DDR 5th Mix graphics primitive builder module](ddr-5th-mix-jp-graphics-primitive-builder.md) - Four GPU ordering-table primitive builders matching 988 bytes.
* [DDR 5th Mix state-dispatch module](ddr-5th-mix-jp-state-dispatch.md) - Top-level state dispatch bridge matching 124 bytes.
* [DDR 5th Mix runtime screen initialization module](ddr-5th-mix-jp-runtime-screen-init.md) - Screen-image and sentinel-table initializer matching 172 bytes.
* [DDR 5th Mix runtime resource initialization module](ddr-5th-mix-jp-runtime-resource-init.md) - Resource-table initializer matching 180 bytes.
* [DDR 5th Mix runtime graphics clear module](ddr-5th-mix-jp-runtime-graphics-clear.md) - Conditional display-area clear helper matching 172 bytes.
* [DDR 5th Mix runtime player initialization module](ddr-5th-mix-jp-runtime-player-init.md) - Two player-record initializer matching 176 bytes.
* [DDR 5th Mix runtime state initialization module](ddr-5th-mix-jp-runtime-state-init.md) - Selected-record and per-player flag initializer matching 176 bytes.
* [DDR 5th Mix runtime synchronization initialization module](ddr-5th-mix-jp-runtime-sync-init.md) - Synchronization loop and three-structure initializer matching 176 bytes.
* [DDR 5th Mix runtime record initialization module](ddr-5th-mix-jp-runtime-record-init.md) - Indexed record and region initializer matching 180 bytes.
* [DDR 5th Mix runtime timing-table module](ddr-5th-mix-jp-runtime-timing-table.md) - 50-entry reset and threshold updater matching 184 bytes.
* [DDR 5th Mix runtime flag selector module](ddr-5th-mix-jp-runtime-flag-selector.md) - State-dependent flag selection and event publication matching 188 bytes.
* [DDR 5th Mix runtime image update module](ddr-5th-mix-jp-runtime-image-update.md) - Indexed image update and coordinate normalization matching 192 bytes.
* [DDR 5th Mix runtime descriptor build module](ddr-5th-mix-jp-runtime-descriptor-build.md) - Indexed descriptor construction and image submission matching 192 bytes.
* [DDR 5th Mix runtime six-record initialization module](ddr-5th-mix-jp-runtime-six-record-init.md) - Six-entry state reset and pointer initialization matching 192 bytes.
* [DDR 5th Mix runtime image-region update module](ddr-5th-mix-jp-runtime-image-region-update.md) - Composite-index image region update matching 200 bytes.
* [DDR 5th Mix runtime player gate module](ddr-5th-mix-jp-runtime-player-gate.md) - Per-player counter/flag gate matching 200 bytes.
* [DDR 5th Mix runtime image selection/update module](ddr-5th-mix-jp-runtime-image-select-update.md) - Indexed image selection/update helpers matching 704 bytes across two functions.
* [DDR 5th Mix runtime state gate module](ddr-5th-mix-jp-runtime-state-gate.md) - Runtime record reset and optional VSync/update gate matching 264 bytes.
* [DDR 5th Mix runtime image dispatch module](ddr-5th-mix-jp-runtime-image-dispatch.md) - Indexed resource-table dispatch and image submission matching 356 bytes.
* [DDR 5th Mix runtime image batch initialization module](ddr-5th-mix-jp-runtime-image-batch-init.md) - Twelve-image TIM/CLUT initialization matching 400 bytes.
* [DDR 5th Mix runtime object initialization module](ddr-5th-mix-jp-runtime-object-init.md) - Model/object mapping and texture-page setup matching 424 bytes.
* [DDR 5th Mix runtime coordinate initialization module](ddr-5th-mix-jp-runtime-coordinate-init.md) - Coordinate hierarchy and object-state initialization matching 360 bytes.
* [DDR 5th Mix runtime initialization loop module](ddr-5th-mix-jp-runtime-init-loop.md) - Runtime startup selector loop and completion state machine matching 236 bytes.
* [DDR 5th Mix runtime table interpolation module](ddr-5th-mix-jp-runtime-table-interpolate.md) - Indexed breakpoint lookup and signed interpolation matching 232 bytes.
* [DDR 5th Mix runtime object transform module](ddr-5th-mix-jp-runtime-object-transform.md) - Animation sampling, matrix synthesis, and frame transform matching 1,308 bytes.
* [DDR 5th Mix runtime curve sampler module](ddr-5th-mix-jp-runtime-curve-sampler.md) - Two-format curve sampling and frame-channel publication matching 1,108 bytes.
* [DDR 5th Mix runtime transform interpolation module](ddr-5th-mix-jp-runtime-transform-interpolate.md) - Transform interpolation and GTE matrix synthesis matching 1,156 bytes.
* [DDR 5th Mix runtime transform coordinator module](ddr-5th-mix-jp-runtime-transform-coordinator.md) - Transform-state coordination and terminal selection matching 656 bytes.
* [DDR 5th Mix runtime object frame initialization module](ddr-5th-mix-jp-runtime-object-frame-init.md) - Frame-record initialization and sixteen-channel publication matching 332 bytes.
* [DDR 5th Mix runtime table dispatch module](ddr-5th-mix-jp-runtime-table-dispatch.md) - Table-driven callback dispatch and sixteen-entry counter maintenance matching 1,552 bytes.
* [DDR 5th Mix secondary runtime table dispatch module](ddr-5th-mix-jp-runtime-table-dispatch-secondary.md) - Secondary table-driven callback dispatch and sixteen-entry counter maintenance matching 1,340 bytes.
* [DDR 5th Mix tertiary runtime table dispatch module](ddr-5th-mix-jp-runtime-table-dispatch-tertiary.md) - Tertiary table-driven callback dispatch and sixteen-entry counter maintenance matching 1,388 bytes.
* [DDR 5th Mix quaternary runtime table dispatch module](ddr-5th-mix-jp-runtime-table-dispatch-quaternary.md) - Quaternary table-driven callback dispatch and sixteen-entry counter maintenance matching 1,252 bytes.
* [DDR 5th Mix runtime callback 7ea5c module](ddr-5th-mix-jp-runtime-callback-7ea5c.md) - Record scan, status checks, and 160-entry flag publication matching 276 bytes.
* [DDR 5th Mix runtime callback 7eb70 module](ddr-5th-mix-jp-runtime-callback-7eb70.md) - Indexed record and flag maintenance matching 316 bytes.
* [DDR 5th Mix runtime callback 7f218 module](ddr-5th-mix-jp-runtime-callback-7f218.md) - Indexed record flag update helper matching 204 bytes.
* [DDR 5th Mix runtime callback 7f334 module](ddr-5th-mix-jp-runtime-callback-7f334.md) - Subordinate state update and callback dispatch matching 416 bytes.
* [DDR 5th Mix runtime helper 7f9b8 module](ddr-5th-mix-jp-runtime-helper-7f9b8.md) - Indexed runtime table state publication matching 248 bytes.
* [DDR 5th Mix runtime helper 7fab0 module](ddr-5th-mix-jp-runtime-helper-7fab0.md) - Runtime timeline and state update matching 476 bytes.
* [DDR 5th Mix HOW TO PLAY overlay module](ddr-5th-mix-jp-inst-demo-overlay.md) - Reconstructed executable overlay surface matching 70 functions and 9,372 code bytes, with command list script verification.
* [DDR 5th Mix (Japan) quirk log](ddr-5th-mix-jp-quirks.md) - Non-standard engineering practices found during review, tracked for byte-match reproduction.
* [DDR 5th Mix (Japan) screen flow](ddr-5th-mix-jp-screen-flow.md) - Maps the mode dispatcher to hypothesized and confirmed screen identities.
* [DDR 5th Mix (Japan) linked music database](ddr-5th-mix-jp-music-database.md) - Reproducible export and field map for the 47 linked music-info records associated with the `mdb.bin` build marker.
