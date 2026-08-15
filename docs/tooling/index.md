# Tooling

* [Initial toolchain](toolchain.md) - Recommended tools by analysis and rebuild stage.
* [BizHawk validation harness](bizhawk-harness.md) - Deterministic emulator smoke tests and behavioral evidence.
* [ISO 9660 boot-executable reader](iso9660-extraction.md) - Resolves SYSTEM.CNF and extracts/hashes a PS1 boot executable from a raw data track.
* [Portable Ghidra + ghidra_psx_ldr setup](ghidra-setup.md) - Self-contained Ghidra 12.1.2 install with the PSX loader extension, plus headless import/report scripts.
* [Synthetic GTE macro segment](gte-macro-segment.md) - Classification and audit limits for the 153 pseudo-function GTE entries.
* [Antivirus heuristic alert](antivirus-heuristic-observation.md) - Reproducibility and safety notes for endpoint alerts caused by long local analysis commands and event logging.
* [DDR 5th Mix main executable link skeleton](main-executable-skeleton.md) - Reproducible relocatable integration build for manifest-backed function sections.
* [DDR 5th Mix partial PS-X EXE candidate builder](main-executable-candidate.md) - Header-aware executable-image gate that rejects stale function evidence without copying game bytes.
* [DDR 5th Mix ISO asset inventory](iso-asset-inventory.md) - Inventory, hashes, and local extraction of the disc's asset containers.
* [DDR 5th Mix VAG sample inventory](vag-sample-inventory.md) - Metadata-only inventory proving that STR.BIN is a VAG ADPCM sample bank, not a standard video stream.
* [DDR 5th Mix VAB bank inventory](vab-bank-inventory.md) - Bounds-validates replay-observed VAB banks and extracts raw SPU-ADPCM samples locally.
* [DDR 5th Mix TMD model inventory](tmd-model-inventory.md) - Bounds-validates and extracts complete fixed-pointer TMD models locally.
* [DDR 5th Mix XA audio demultiplexing](xa-audio-demux.md) - Reconstructs raw XA sectors and extracts each routed audio stream locally.
* [DDR 5th Mix runtime CD-read asset mapping](cd-read-asset-mapping.md) - Maps replay-observed READ_DT requests to local, hashed slices.
* [TIM image inventory](tim-image-inventory.md) - Bounds-validates embedded PlayStation TIM images and records metadata only.
* [DDR 5th Mix indexed-resource table extraction](indexed-resource-table-extraction.md) - Separates the validated 0x44 descriptor family into neutral local sections.
* [DDR 5th Mix descriptor fill-resource inventory](descriptor-fill-inventory.md) - Proves uniform descriptor ranges are padding rather than assets.
* [DDR 5th Mix counted-offset resource extraction](counted-offset-resource-extraction.md) - Separates validated counted offset directories into neutral sections.
* [DDR 5th Mix descriptor extraction coverage](descriptor-extraction-coverage.md) - Hash-verifies every descriptor-addressed local range.
* [DDR 5th Mix music word-table inventory](music-word-table-inventory.md) - Corrects the central music-section model and validates its bounded 32-bit word streams.
