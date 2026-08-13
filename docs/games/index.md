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
* [DDR 5th Mix runtime helper 81f30 module](ddr-5th-mix-jp-runtime-helper-81f30.md) - Runtime cleanup and state classification matching 284 bytes.
* [DDR 5th Mix runtime helper 8204c module](ddr-5th-mix-jp-runtime-helper-8204c.md) - Runtime gameplay and resource state helper matching 1,228 bytes.
* [DDR 5th Mix runtime helper 8253c module](ddr-5th-mix-jp-runtime-helper-8253c.md) - Runtime gameplay initialization and state population helper matching 1,128 bytes.
* [DDR 5th Mix runtime helper 829a4 module](ddr-5th-mix-jp-runtime-helper-829a4.md) - Runtime gameplay and resource state helper matching 1,068 bytes.
* [DDR 5th Mix runtime helper 82dd0 module](ddr-5th-mix-jp-runtime-helper-82dd0.md) - Runtime gameplay, resource, and dispatch helper matching 2,980 bytes.
* [DDR 5th Mix runtime helper 83974 module](ddr-5th-mix-jp-runtime-helper-83974.md) - Runtime gameplay and resource state helper matching 632 bytes.
* [DDR 5th Mix runtime helper 83bec module](ddr-5th-mix-jp-runtime-helper-83bec.md) - Runtime gameplay and resource state helper matching 584 bytes.
* [DDR 5th Mix runtime helper 83f68 module](ddr-5th-mix-jp-runtime-helper-83f68.md) - Runtime gameplay and resource state helper matching 1,000 bytes.
* [DDR 5th Mix runtime helper 843dc module](ddr-5th-mix-jp-runtime-helper-843dc.md) - Runtime gameplay, resource, and dispatch helper matching 1,100 bytes.
* [DDR 5th Mix runtime helper 848cc module](ddr-5th-mix-jp-runtime-helper-848cc.md) - Runtime gameplay and resource state helper matching 436 bytes.
* [DDR 5th Mix runtime helper 84a80 module](ddr-5th-mix-jp-runtime-helper-84a80.md) - Runtime gameplay and resource state helper matching 1,384 bytes.
* [DDR 5th Mix runtime helper 84fe8 module](ddr-5th-mix-jp-runtime-helper-84fe8.md) - Runtime gameplay and resource state helper matching 620 bytes.
* [DDR 5th Mix runtime helper 85254 module](ddr-5th-mix-jp-runtime-helper-85254.md) - Runtime gameplay and resource state helper matching 772 bytes.
* [DDR 5th Mix runtime helper 85558 module](ddr-5th-mix-jp-runtime-helper-85558.md) - Runtime gameplay and resource state helper matching 208 bytes.
* [DDR 5th Mix runtime helper 85628 module](ddr-5th-mix-jp-runtime-helper-85628.md) - Runtime gameplay and resource state helper matching 996 bytes.
* [DDR 5th Mix runtime helper 85b50 module](ddr-5th-mix-jp-runtime-helper-85b50.md) - Runtime gameplay and resource state helper matching 260 bytes.
* [DDR 5th Mix runtime helper 85ff8 module](ddr-5th-mix-jp-runtime-helper-85ff8.md) - Runtime gameplay and resource state helper matching 256 bytes.
* [DDR 5th Mix runtime helper 860f8 module](ddr-5th-mix-jp-runtime-helper-860f8.md) - Runtime gameplay and resource state helper matching 452 bytes.
* [DDR 5th Mix runtime helper 86334 module](ddr-5th-mix-jp-runtime-helper-86334.md) - Runtime gameplay and resource state helper matching 324 bytes.
* [DDR 5th Mix runtime helper 86478 module](ddr-5th-mix-jp-runtime-helper-86478.md) - Runtime gameplay and resource state helper matching 444 bytes.
* [DDR 5th Mix runtime helper 866f0 module](ddr-5th-mix-jp-runtime-helper-866f0.md) - Runtime gameplay and resource state helper matching 392 bytes.
* [DDR 5th Mix runtime helper 86878 module](ddr-5th-mix-jp-runtime-helper-86878.md) - Runtime state, resource, and status helper matching 2,008 bytes.
* [DDR 5th Mix runtime helper 87050 module](ddr-5th-mix-jp-runtime-helper-87050.md) - Runtime record reorder and counter update helper matching 312 bytes.
* [DDR 5th Mix runtime helper 87188 module](ddr-5th-mix-jp-runtime-helper-87188.md) - Runtime record and counter update helper matching 776 bytes.
* [DDR 5th Mix runtime helper 87490 module](ddr-5th-mix-jp-runtime-helper-87490.md) - Runtime state and resource update helper matching 532 bytes.
* [DDR 5th Mix runtime helper 876a4 module](ddr-5th-mix-jp-runtime-helper-876a4.md) - Runtime record table initialization helper matching 332 bytes.
* [DDR 5th Mix runtime helper 877f0 module](ddr-5th-mix-jp-runtime-helper-877f0.md) - Runtime indexed-state and timing helper matching 328 bytes.
* [DDR 5th Mix runtime helper 87938 module](ddr-5th-mix-jp-runtime-helper-87938.md) - Runtime resource, record, and state update helper matching 2,172 bytes.
* [DDR 5th Mix runtime helper 881b4 module](ddr-5th-mix-jp-runtime-helper-881b4.md) - Runtime image and record update helper matching 704 bytes.
* [DDR 5th Mix runtime helper 88474 module](ddr-5th-mix-jp-runtime-helper-88474.md) - Runtime resource and record processing helper matching 1,044 bytes.
* [DDR 5th Mix runtime helper 88888 module](ddr-5th-mix-jp-runtime-helper-88888.md) - Runtime resource and record processing helper matching 1,176 bytes.
* [DDR 5th Mix runtime helper 88d20 module](ddr-5th-mix-jp-runtime-helper-88d20.md) - Runtime resource and record processing helper matching 1,012 bytes.
* [DDR 5th Mix runtime helper 89114 module](ddr-5th-mix-jp-runtime-helper-89114.md) - Runtime resource and timing update helper matching 604 bytes.
* [DDR 5th Mix runtime helper 89370 module](ddr-5th-mix-jp-runtime-helper-89370.md) - Runtime state, resource, and dispatch helper matching 1,348 bytes.
* [DDR 5th Mix runtime helper 898b4 module](ddr-5th-mix-jp-runtime-helper-898b4.md) - Runtime resource and state update helper matching 656 bytes.
* [DDR 5th Mix runtime helper 89b44 module](ddr-5th-mix-jp-runtime-helper-89b44.md) - Runtime state and resource helper matching 608 bytes.
* [DDR 5th Mix runtime helper 89da4 module](ddr-5th-mix-jp-runtime-helper-89da4.md) - Runtime resource, state, and dispatch helper matching 2,856 bytes.
* [DDR 5th Mix runtime helper 8a8cc module](ddr-5th-mix-jp-runtime-helper-8a8cc.md) - Runtime timing and resource index helper matching 268 bytes.
* [DDR 5th Mix runtime helper 8a9d8 module](ddr-5th-mix-jp-runtime-helper-8a9d8.md) - Runtime timing and resource state helper matching 612 bytes.
* [DDR 5th Mix runtime helper 8ac3c module](ddr-5th-mix-jp-runtime-helper-8ac3c.md) - Runtime resource and state dispatch helper matching 456 bytes.
* [DDR 5th Mix runtime helper 8ae04 module](ddr-5th-mix-jp-runtime-helper-8ae04.md) - Runtime resource, timing, and state helper matching 876 bytes.
* [DDR 5th Mix runtime helper 8b170 module](ddr-5th-mix-jp-runtime-helper-8b170.md) - Runtime resource, timing, and state coordinator matching 4,284 bytes.
* [DDR 5th Mix runtime helper 8c22c module](ddr-5th-mix-jp-runtime-helper-8c22c.md) - Runtime resource and state coordinator matching 780 bytes.
* [DDR 5th Mix runtime helper 8c538 module](ddr-5th-mix-jp-runtime-helper-8c538.md) - Runtime resource and state helper matching 636 bytes.
* [DDR 5th Mix runtime helper 8c7b4 module](ddr-5th-mix-jp-runtime-helper-8c7b4.md) - Runtime resource and dispatch helper matching 432 bytes.
* [DDR 5th Mix runtime helper 8c964 module](ddr-5th-mix-jp-runtime-helper-8c964.md) - Runtime resource, timing, and state helper matching 412 bytes.
* [DDR 5th Mix runtime helper 8cb00 module](ddr-5th-mix-jp-runtime-helper-8cb00.md) - Runtime resource, timing, and state helper matching 572 bytes.
* [DDR 5th Mix runtime helper 8cd3c module](ddr-5th-mix-jp-runtime-helper-8cd3c.md) - Runtime resource, timing, and state coordinator matching 6,784 bytes.
* [DDR 5th Mix runtime helper 8e7bc module](ddr-5th-mix-jp-runtime-helper-8e7bc.md) - Runtime resource and state helper matching 908 bytes.
* [DDR 5th Mix runtime helper 8ebac module](ddr-5th-mix-jp-runtime-helper-8ebac.md) - Runtime resource and state helper matching 380 bytes.
* [DDR 5th Mix runtime helper 8ed28 module](ddr-5th-mix-jp-runtime-helper-8ed28.md) - Runtime resource, timing, and state helper matching 1,324 bytes.
* [DDR 5th Mix runtime helper 8f254 module](ddr-5th-mix-jp-runtime-helper-8f254.md) - Runtime resource and state helper matching 760 bytes.
* [DDR 5th Mix runtime helper 8f54c module](ddr-5th-mix-jp-runtime-helper-8f54c.md) - Runtime resource, timing, and state coordinator matching 2,484 bytes.
* [DDR 5th Mix runtime helper 8ff00 module](ddr-5th-mix-jp-runtime-helper-8ff00.md) - Runtime resource and state helper matching 500 bytes.
* [DDR 5th Mix runtime helper 900f4 module](ddr-5th-mix-jp-runtime-helper-900f4.md) - Runtime resource and state helper matching 472 bytes.
* [DDR 5th Mix runtime helper 902cc module](ddr-5th-mix-jp-runtime-helper-902cc.md) - Runtime resource and state coordinator matching 1,364 bytes.
* [DDR 5th Mix runtime helper 90860 module](ddr-5th-mix-jp-runtime-helper-90860.md) - Runtime resource, timing, and state helper matching 1,812 bytes.
* [DDR 5th Mix runtime helper 90f74 module](ddr-5th-mix-jp-runtime-helper-90f74.md) - Runtime resource, timing, and state helper matching 2,672 bytes.
* [DDR 5th Mix runtime helper 919e4 module](ddr-5th-mix-jp-runtime-helper-919e4.md) - Runtime resource and state helper matching 448 bytes.
* [DDR 5th Mix runtime helper 91ba4 module](ddr-5th-mix-jp-runtime-helper-91ba4.md) - Runtime resource and state helper matching 636 bytes.
* [DDR 5th Mix runtime helper 91e20 module](ddr-5th-mix-jp-runtime-helper-91e20.md) - Runtime resource, dispatch, and state helper matching 1,684 bytes.
* [DDR 5th Mix HOW TO PLAY overlay module](ddr-5th-mix-jp-inst-demo-overlay.md) - Reconstructed executable overlay surface matching 70 functions and 9,372 code bytes, with command list script verification.
* [DDR 5th Mix (Japan) quirk log](ddr-5th-mix-jp-quirks.md) - Non-standard engineering practices found during review, tracked for byte-match reproduction.
* [DDR 5th Mix (Japan) screen flow](ddr-5th-mix-jp-screen-flow.md) - Maps the mode dispatcher to hypothesized and confirmed screen identities.
* [DDR 5th Mix (Japan) linked music database](ddr-5th-mix-jp-music-database.md) - Reproducible export and field map for the 47 linked music-info records associated with the `mdb.bin` build marker.
