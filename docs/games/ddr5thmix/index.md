# Dance Dance Revolution 5th Mix (Japan)

* [Overview and status](readme.md) - Target status, reconstruction progress, completed foundations, and next targets.
* [Revision manifest](revision-manifest.md) - The project's first target revision; byte-match decompilation.
* [DDR 5th Mix (Japan) symbol map](symbol-map.md) - First-pass, tool-generated function symbol map with confidence tiers.
* [DDR 5th Mix (Japan) global map](globals.md) - Fixed-address data symbols and partial layouts used by reconstructed game logic.
* [DDR 5th Mix leading executable rodata block](executable-rodata.md) - Structural map of the executable's leading non-code region: PsyQ debug strings, per-object function-pointer tables, game string and pointer tables, and the Shift-JIS UI message block.
* [DDR 5th Mix trailing executable data region](trailing-asset-region.md) - Structural map of the executable's trailing non-code region: the 445-entry READ_DT.BIN descriptor table, UI/asset data tables, PsyQ and game strings, the crt0 BSS range, and the post-BSS 0xff zone.
* [DDR 5th Mix mode-control module](mode-control.md) - Reproducible game-owned reconstruction unit: nineteen functions covering the inventoried range plus one external dependency.
* [DDR 5th Mix runtime-core module](runtime-core.md) - Five exact functions connecting main-loop input/reset work to mode dispatch and its shared epilogue.
* [DDR 5th Mix screen-selector module](screen-selector.md) - Nested six-state screen selector hierarchy, callbacks, and next-state router matching twenty-two functions.
* [DDR 5th Mix game-session router module](game-session-router.md) - Outer wrappers, 15-state child lifecycle routing, and terminal callbacks matching nine functions.
* [DDR 5th Mix game-session opening module](game-session-opening.md) - State 0-3 callback triples matching twelve functions across PLAY START, selector ownership, and NON STOP paths.
* [DDR 5th Mix game-session gameplay module](game-session-gameplay.md) - State 4-7 callback triples matching twelve functions across PREPARE, INTRO, DANCING, and STAGE END.
* [DDR 5th Mix music/resource state module](music-state.md) - Exact reconstruction of the 2,412-byte music/resource state dispatcher.
* [DDR 5th Mix game-session endgame module](game-session-endgame.md) - State 8-13 callback triples matching eighteen functions across RESULT, GAME_OVER, ENDING, PRE_END, LINK END, and NAME ENTRY, closing the 15-state gameplay session.
* [DDR 5th Mix state-transition module](state-transition.md) - 117 timing, input-event, resource-request, and state-transition helpers matching 16,132 bytes.
* [DDR 5th Mix runtime graphics initialization module](runtime-graphics-init.md) - Eight graphics, timing, and runtime initialization helpers matching 1,020 bytes.
* [DDR 5th Mix graphics primitive builder module](graphics-primitive-builder.md) - Four GPU ordering-table primitive builders matching 988 bytes.
* [DDR 5th Mix state-dispatch module](state-dispatch.md) - Top-level state dispatch bridge matching 124 bytes.
* [DDR 5th Mix runtime screen initialization module](runtime-screen-init.md) - Screen-image and sentinel-table initializer matching 172 bytes.
* [DDR 5th Mix runtime resource initialization module](runtime-resource-init.md) - Resource-table initializer matching 180 bytes.
* [DDR 5th Mix runtime graphics clear module](runtime-graphics-clear.md) - Conditional display-area clear helper matching 172 bytes.
* [DDR 5th Mix runtime player initialization module](runtime-player-init.md) - Two player-record initializer matching 176 bytes.
* [DDR 5th Mix runtime timing post-processor module](runtime-timing-postprocessor.md) - Per-player timing scaling around the unresolved FUN_80099314 provider, matching 156 bytes.
* [DDR 5th Mix runtime timing quantizer module](runtime-timing-quantizer.md) - Global timing-table quantizer with bounded 20..300 output, matching 312 bytes.
* [DDR 5th Mix runtime timing-table interpolator module](runtime-timing-interpolator.md) - Adjacent-record interpolation over the timing table, matching 288 bytes.
* [DDR 5th Mix runtime timing/resource state-machine module](runtime-timing-state-machine.md) - Four-phase asynchronous timing/resource coordinator, matching 316 bytes.
* [DDR 5th Mix runtime record-field propagation module](runtime-record-field-propagation.md) - Mode-gated strided propagation of selected record halfwords, matching 264 bytes.
* [DDR 5th Mix runtime record alignment module](runtime-record-alignment.md) - Mode-specific alignment and sentinel normalization over shared runtime records, matching 332 bytes.
* [DDR 5th Mix runtime state initialization module](runtime-state-init.md) - Selected-record and per-player flag initializer matching 176 bytes.
* [DDR 5th Mix runtime synchronization initialization module](runtime-sync-init.md) - Synchronization loop and three-structure initializer matching 176 bytes.
* [DDR 5th Mix runtime record initialization module](runtime-record-init.md) - Indexed record and region initializer matching 180 bytes.
* [DDR 5th Mix runtime timing-table module](runtime-timing-table.md) - 50-entry reset and threshold updater matching 184 bytes.
* [DDR 5th Mix runtime flag selector module](runtime-flag-selector.md) - State-dependent flag selection and event publication matching 188 bytes.
* [DDR 5th Mix runtime image update module](runtime-image-update.md) - Indexed image update and coordinate normalization matching 192 bytes.
* [DDR 5th Mix runtime descriptor build module](runtime-descriptor-build.md) - Indexed descriptor construction and image submission matching 192 bytes.
* [DDR 5th Mix runtime six-record initialization module](runtime-six-record-init.md) - Six-entry state reset and pointer initialization matching 192 bytes.
* [DDR 5th Mix runtime image-region update module](runtime-image-region-update.md) - Composite-index image region update matching 200 bytes.
* [DDR 5th Mix runtime player gate module](runtime-player-gate.md) - Per-player counter/flag gate matching 200 bytes.
* [DDR 5th Mix runtime image selection/update module](runtime-image-select-update.md) - Indexed image selection/update helpers matching 704 bytes across two functions.
* [DDR 5th Mix runtime state gate module](runtime-state-gate.md) - Runtime record reset and optional VSync/update gate matching 264 bytes.
* [DDR 5th Mix runtime image dispatch module](runtime-image-dispatch.md) - Indexed resource-table dispatch and image submission matching 356 bytes.
* [DDR 5th Mix runtime image batch initialization module](runtime-image-batch-init.md) - Twelve-image TIM/CLUT initialization matching 400 bytes.
* [DDR 5th Mix runtime object initialization module](runtime-object-init.md) - Model/object mapping and texture-page setup matching 424 bytes.
* [DDR 5th Mix runtime coordinate initialization module](runtime-coordinate-init.md) - Coordinate hierarchy and object-state initialization matching 360 bytes.
* [DDR 5th Mix runtime initialization loop module](runtime-init-loop.md) - Runtime startup selector loop and completion state machine matching 236 bytes.
* [DDR 5th Mix runtime table interpolation module](runtime-table-interpolate.md) - Indexed breakpoint lookup and signed interpolation matching 232 bytes.
* [DDR 5th Mix runtime object transform module](runtime-object-transform.md) - Animation sampling, matrix synthesis, and frame transform matching 1,308 bytes.
* [DDR 5th Mix runtime curve sampler module](runtime-curve-sampler.md) - Two-format curve sampling and frame-channel publication matching 1,108 bytes.
* [DDR 5th Mix runtime transform interpolation module](runtime-transform-interpolate.md) - Transform interpolation and GTE matrix synthesis matching 1,156 bytes.
* [DDR 5th Mix runtime transform coordinator module](runtime-transform-coordinator.md) - Transform-state coordination and terminal selection matching 656 bytes.
* [DDR 5th Mix runtime object frame initialization module](runtime-object-frame-init.md) - Frame-record initialization and sixteen-channel publication matching 332 bytes.
* [DDR 5th Mix runtime table dispatch module](runtime-table-dispatch.md) - Table-driven callback dispatch and sixteen-entry counter maintenance matching 1,552 bytes.
* [DDR 5th Mix secondary runtime table dispatch module](runtime-table-dispatch-secondary.md) - Secondary table-driven callback dispatch and sixteen-entry counter maintenance matching 1,340 bytes.
* [DDR 5th Mix tertiary runtime table dispatch module](runtime-table-dispatch-tertiary.md) - Tertiary table-driven callback dispatch and sixteen-entry counter maintenance matching 1,388 bytes.
* [DDR 5th Mix quaternary runtime table dispatch module](runtime-table-dispatch-quaternary.md) - Quaternary table-driven callback dispatch and sixteen-entry counter maintenance matching 1,252 bytes.
* [DDR 5th Mix runtime callback 7ea5c module](runtime-callback-7ea5c.md) - Record scan, status checks, and 160-entry flag publication matching 276 bytes.
* [DDR 5th Mix runtime callback 7eb70 module](runtime-callback-7eb70.md) - Indexed record and flag maintenance matching 316 bytes.
* [DDR 5th Mix runtime callback 7f218 module](runtime-callback-7f218.md) - Indexed record flag update helper matching 204 bytes.
* [DDR 5th Mix runtime callback 7f334 module](runtime-callback-7f334.md) - Subordinate state update and callback dispatch matching 416 bytes.
* [DDR 5th Mix runtime helper 7f9b8 module](runtime-helper-7f9b8.md) - Indexed runtime table state publication matching 248 bytes.
* [DDR 5th Mix runtime helper 7fab0 module](runtime-helper-7fab0.md) - Runtime timeline and state update matching 476 bytes.
* [DDR 5th Mix runtime helper 81f30 module](runtime-helper-81f30.md) - Runtime cleanup and state classification matching 284 bytes.
* [DDR 5th Mix runtime helper 8204c module](runtime-helper-8204c.md) - Runtime gameplay and resource state helper matching 1,228 bytes.
* [DDR 5th Mix runtime helper 8253c module](runtime-helper-8253c.md) - Runtime gameplay initialization and state population helper matching 1,128 bytes.
* [DDR 5th Mix runtime helper 829a4 module](runtime-helper-829a4.md) - Runtime gameplay and resource state helper matching 1,068 bytes.
* [DDR 5th Mix runtime helper 82dd0 module](runtime-helper-82dd0.md) - Runtime gameplay, resource, and dispatch helper matching 2,980 bytes.
* [DDR 5th Mix runtime helper 83974 module](runtime-helper-83974.md) - Runtime gameplay and resource state helper matching 632 bytes.
* [DDR 5th Mix runtime helper 83bec module](runtime-helper-83bec.md) - Runtime gameplay and resource state helper matching 584 bytes.
* [DDR 5th Mix runtime helper 83f68 module](runtime-helper-83f68.md) - Runtime gameplay and resource state helper matching 1,000 bytes.
* [DDR 5th Mix runtime helper 843dc module](runtime-helper-843dc.md) - Runtime gameplay, resource, and dispatch helper matching 1,100 bytes.
* [DDR 5th Mix runtime helper 848cc module](runtime-helper-848cc.md) - Runtime gameplay and resource state helper matching 436 bytes.
* [DDR 5th Mix runtime helper 84a80 module](runtime-helper-84a80.md) - Runtime gameplay and resource state helper matching 1,384 bytes.
* [DDR 5th Mix runtime helper 84fe8 module](runtime-helper-84fe8.md) - Runtime gameplay and resource state helper matching 620 bytes.
* [DDR 5th Mix runtime helper 85254 module](runtime-helper-85254.md) - Runtime gameplay and resource state helper matching 772 bytes.
* [DDR 5th Mix runtime helper 85558 module](runtime-helper-85558.md) - Runtime gameplay and resource state helper matching 208 bytes.
* [DDR 5th Mix runtime helper 85628 module](runtime-helper-85628.md) - Runtime gameplay and resource state helper matching 996 bytes.
* [DDR 5th Mix runtime helper 85b50 module](runtime-helper-85b50.md) - Runtime gameplay and resource state helper matching 260 bytes.
* [DDR 5th Mix runtime helper 85ff8 module](runtime-helper-85ff8.md) - Runtime gameplay and resource state helper matching 256 bytes.
* [DDR 5th Mix runtime helper 860f8 module](runtime-helper-860f8.md) - Runtime gameplay and resource state helper matching 452 bytes.
* [DDR 5th Mix runtime helper 86334 module](runtime-helper-86334.md) - Runtime gameplay and resource state helper matching 324 bytes.
* [DDR 5th Mix runtime helper 86478 module](runtime-helper-86478.md) - Runtime gameplay and resource state helper matching 444 bytes.
* [DDR 5th Mix runtime helper 866f0 module](runtime-helper-866f0.md) - Runtime gameplay and resource state helper matching 392 bytes.
* [DDR 5th Mix runtime helper 86878 module](runtime-helper-86878.md) - Runtime state, resource, and status helper matching 2,008 bytes.
* [DDR 5th Mix runtime helper 87050 module](runtime-helper-87050.md) - Runtime record reorder and counter update helper matching 312 bytes.
* [DDR 5th Mix runtime helper 87188 module](runtime-helper-87188.md) - Runtime record and counter update helper matching 776 bytes.
* [DDR 5th Mix runtime helper 87490 module](runtime-helper-87490.md) - Runtime state and resource update helper matching 532 bytes.
* [DDR 5th Mix runtime helper 876a4 module](runtime-helper-876a4.md) - Runtime record table initialization helper matching 332 bytes.
* [DDR 5th Mix runtime helper 877f0 module](runtime-helper-877f0.md) - Runtime indexed-state and timing helper matching 328 bytes.
* [DDR 5th Mix runtime helper 87938 module](runtime-helper-87938.md) - Runtime resource, record, and state update helper matching 2,172 bytes.
* [DDR 5th Mix runtime helper 881b4 module](runtime-helper-881b4.md) - Runtime image and record update helper matching 704 bytes.
* [DDR 5th Mix runtime helper 88474 module](runtime-helper-88474.md) - Runtime resource and record processing helper matching 1,044 bytes.
* [DDR 5th Mix runtime helper 88888 module](runtime-helper-88888.md) - Runtime resource and record processing helper matching 1,176 bytes.
* [DDR 5th Mix runtime helper 88d20 module](runtime-helper-88d20.md) - Runtime resource and record processing helper matching 1,012 bytes.
* [DDR 5th Mix runtime helper 89114 module](runtime-helper-89114.md) - Runtime resource and timing update helper matching 604 bytes.
* [DDR 5th Mix runtime helper 89370 module](runtime-helper-89370.md) - Runtime state, resource, and dispatch helper matching 1,348 bytes.
* [DDR 5th Mix runtime helper 898b4 module](runtime-helper-898b4.md) - Runtime resource and state update helper matching 656 bytes.
* [DDR 5th Mix runtime helper 89b44 module](runtime-helper-89b44.md) - Runtime state and resource helper matching 608 bytes.
* [DDR 5th Mix runtime helper 89da4 module](runtime-helper-89da4.md) - Runtime resource, state, and dispatch helper matching 2,856 bytes.
* [DDR 5th Mix runtime helper 8a8cc module](runtime-helper-8a8cc.md) - Runtime timing and resource index helper matching 268 bytes.
* [DDR 5th Mix runtime helper 8a9d8 module](runtime-helper-8a9d8.md) - Runtime timing and resource state helper matching 612 bytes.
* [DDR 5th Mix runtime helper 8ac3c module](runtime-helper-8ac3c.md) - Runtime resource and state dispatch helper matching 456 bytes.
* [DDR 5th Mix runtime helper 8ae04 module](runtime-helper-8ae04.md) - Runtime resource, timing, and state helper matching 876 bytes.
* [DDR 5th Mix runtime helper 8b170 module](runtime-helper-8b170.md) - Runtime resource, timing, and state coordinator matching 4,284 bytes.
* [DDR 5th Mix runtime helper 8c22c module](runtime-helper-8c22c.md) - Runtime resource and state coordinator matching 780 bytes.
* [DDR 5th Mix runtime helper 8c538 module](runtime-helper-8c538.md) - Runtime resource and state helper matching 636 bytes.
* [DDR 5th Mix runtime helper 8c7b4 module](runtime-helper-8c7b4.md) - Runtime resource and dispatch helper matching 432 bytes.
* [DDR 5th Mix runtime helper 8c964 module](runtime-helper-8c964.md) - Runtime resource, timing, and state helper matching 412 bytes.
* [DDR 5th Mix runtime helper 8cb00 module](runtime-helper-8cb00.md) - Runtime resource, timing, and state helper matching 572 bytes.
* [DDR 5th Mix runtime helper 8cd3c module](runtime-helper-8cd3c.md) - Runtime resource, timing, and state coordinator matching 6,784 bytes.
* [DDR 5th Mix runtime helper 8e7bc module](runtime-helper-8e7bc.md) - Runtime resource and state helper matching 908 bytes.
* [DDR 5th Mix runtime helper 8ebac module](runtime-helper-8ebac.md) - Runtime resource and state helper matching 380 bytes.
* [DDR 5th Mix runtime helper 8ed28 module](runtime-helper-8ed28.md) - Runtime resource, timing, and state helper matching 1,324 bytes.
* [DDR 5th Mix runtime helper 8f254 module](runtime-helper-8f254.md) - Runtime resource and state helper matching 760 bytes.
* [DDR 5th Mix runtime helper 8f54c module](runtime-helper-8f54c.md) - Runtime resource, timing, and state coordinator matching 2,484 bytes.
* [DDR 5th Mix runtime helper 8ff00 module](runtime-helper-8ff00.md) - Runtime resource and state helper matching 500 bytes.
* [DDR 5th Mix runtime helper 900f4 module](runtime-helper-900f4.md) - Runtime resource and state helper matching 472 bytes.
* [DDR 5th Mix runtime helper 902cc module](runtime-helper-902cc.md) - Runtime resource and state coordinator matching 1,364 bytes.
* [DDR 5th Mix runtime helper 90860 module](runtime-helper-90860.md) - Runtime resource, timing, and state helper matching 1,812 bytes.
* [DDR 5th Mix runtime helper 90f74 module](runtime-helper-90f74.md) - Runtime resource, timing, and state helper matching 2,672 bytes.
* [DDR 5th Mix runtime helper 919e4 module](runtime-helper-919e4.md) - Runtime resource and state helper matching 448 bytes.
* [DDR 5th Mix runtime helper 91ba4 module](runtime-helper-91ba4.md) - Runtime resource and state helper matching 636 bytes.
* [DDR 5th Mix runtime helper 91e20 module](runtime-helper-91e20.md) - Runtime resource, dispatch, and state helper matching 1,684 bytes.
* [DDR 5th Mix runtime helper 92538 module](runtime-helper-92538.md) - Runtime resource and state helper matching 540 bytes.
* [DDR 5th Mix runtime helper 92754 module](runtime-helper-92754.md) - Runtime resource and state helper matching 256 bytes.
* [DDR 5th Mix runtime helper 92854 module](runtime-helper-92854.md) - Runtime resource and state helper matching 276 bytes.
* [DDR 5th Mix runtime helper 92968 module](runtime-helper-92968.md) - Runtime resource and state helper matching 280 bytes.
* [DDR 5th Mix runtime helper 92a80 module](runtime-helper-92a80.md) - Runtime resource and state helper matching 552 bytes.
* [DDR 5th Mix runtime helper 92ca8 module](runtime-helper-92ca8.md) - Runtime resource and state helper matching 200 bytes.
* [DDR 5th Mix runtime helper 92d70 module](runtime-helper-92d70.md) - Runtime resource and state helper matching 244 bytes.
* [DDR 5th Mix runtime helper 93168 module](runtime-helper-93168.md) - Runtime resource, dispatch, and state helper matching 1,944 bytes.
* [DDR 5th Mix runtime helper 93900 module](runtime-helper-93900.md) - Runtime resource and state helper matching 436 bytes.
* [DDR 5th Mix runtime helper 93ae8 module](runtime-helper-93ae8.md) - Runtime resource and state helper matching 488 bytes.
* [DDR 5th Mix runtime helper 93cd0 module](runtime-helper-93cd0.md) - Runtime resource and state helper matching 372 bytes.
* [DDR 5th Mix runtime helper 93e44 module](runtime-helper-93e44.md) - Runtime resource and state helper matching 220 bytes.
* [DDR 5th Mix runtime helper 93f20 module](runtime-helper-93f20.md) - Runtime resource, dispatch, and state helper matching 1,792 bytes.
* [DDR 5th Mix runtime helper 94620 module](runtime-helper-94620.md) - Runtime resource, dispatch, and state helper matching 3,952 bytes.
* [DDR 5th Mix runtime helper 95590 module](runtime-helper-95590.md) - Runtime resource, dispatch, and state helper matching 1,616 bytes.
* [DDR 5th Mix runtime helper 95cf8 module](runtime-helper-95cf8.md) - Runtime resource and state helper matching 452 bytes.
* [DDR 5th Mix runtime helper 95ebc module](runtime-helper-95ebc.md) - Runtime resource and state helper matching 324 bytes.
* [DDR 5th Mix runtime helper 96000 module](runtime-helper-96000.md) - Runtime resource and state helper matching 384 bytes.
* [DDR 5th Mix runtime helper 96558 module](runtime-helper-96558.md) - Runtime resource and state helper matching 200 bytes.
* [DDR 5th Mix runtime event eligibility predicate 966f8 module](runtime-helper-966f8.md) - Tests event-specific input masks across shared/indexed snapshots; 640 bytes matched.
* [DDR 5th Mix runtime input-state transition 96978 module](runtime-helper-96978.md) - Updates one indexed input/event record and returns a table-scaled result; 1,856 bytes matched.
* [DDR 5th Mix runtime record-header wrapper 98050 module](runtime-helper-98050.md) - Reads a 12-byte runtime record header, computes a tagged mode word, and forwards the header fields to the record-field propagator FUN_800980c4; 116 bytes matched.
* [DDR 5th Mix runtime helper 972a4 module](runtime-helper-972a4.md) - Runtime resource and state helper matching 324 bytes.
* [DDR 5th Mix runtime graphics/resource initializer 973e8 module](runtime-helper-973e8.md) - Synchronizes 32 resource records, selects the graphics mode, initializes display descriptors, and republishes the active pair; 1,420 bytes matched.
* [DDR 5th Mix HOW TO PLAY overlay module](inst-demo-overlay.md) - Reconstructed executable overlay surface matching 70 functions and 9,372 code bytes, with command list script verification.
* [DDR 5th Mix (Japan) quirk log](quirks.md) - Non-standard engineering practices found during review, tracked for byte-match reproduction.
* [DDR 5th Mix (Japan) screen flow](screen-flow.md) - Maps the mode dispatcher to hypothesized and confirmed screen identities.
* [DDR 5th Mix (Japan) linked music database](music-database.md) - Reproducible export and field map for the 47 linked music-info records associated with the `mdb.bin` build marker.
