# Games

* [Dance Dance Revolution 5th Mix (Japan)](ddr-5th-mix-jp.md) - The project's first target revision; byte-match decompilation.
* [DDR 5th Mix (Japan) symbol map](ddr-5th-mix-jp-symbol-map.md) - First-pass, tool-generated function symbol map with confidence tiers.
* [DDR 5th Mix (Japan) global map](ddr-5th-mix-jp-globals.md) - Fixed-address data symbols and partial layouts used by reconstructed game logic.
* [DDR 5th Mix mode-control module](ddr-5th-mix-jp-mode-control.md) - Reproducible game-owned reconstruction unit: nineteen functions covering the inventoried range plus one external dependency.
* [DDR 5th Mix runtime-core module](ddr-5th-mix-jp-runtime-core.md) - Five exact functions connecting main-loop input/reset work to mode dispatch and its shared epilogue.
* [DDR 5th Mix screen-selector module](ddr-5th-mix-jp-screen-selector.md) - Nested six-state screen selector hierarchy, callbacks, and next-state router matching twenty-two functions.
* [DDR 5th Mix game-session router module](ddr-5th-mix-jp-game-session-router.md) - Outer wrappers, 15-state child lifecycle routing, and terminal callbacks matching nine functions.
* [DDR 5th Mix (Japan) quirk log](ddr-5th-mix-jp-quirks.md) - Non-standard engineering practices found during review, tracked for byte-match reproduction.
* [DDR 5th Mix (Japan) screen flow](ddr-5th-mix-jp-screen-flow.md) - Maps the mode dispatcher to hypothesized and confirmed screen identities.
* [DDR 5th Mix (Japan) linked music database](ddr-5th-mix-jp-music-database.md) - Reproducible export and field map for the 47 linked music-info records associated with the `mdb.bin` build marker.
