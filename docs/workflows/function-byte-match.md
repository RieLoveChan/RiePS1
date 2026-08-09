---
type: Playbook
title: Per-function byte-match loop
description: Hash-gated assembly and comparison loop for reconstructed DDR 5th Mix functions.
tags: [ps1, workflow, matching, build, ddr5thmix]
timestamp: 2026-07-29T00:00:00-04:00
---

# Contract

`Invoke-FunctionMatch.ps1` assembles one bounded function into its own ELF
section, extracts that section as raw bytes, and compares it against the same
runtime-address range in a lawfully supplied PS-X EXE. It refuses an executable
whose SHA-256 differs from the revision manifest and refuses an unpinned
assembler version. Generated objects, reference slices, disassembly, and JSON
reports remain under ignored `/build/`; copyrighted bytes are never tracked.

The tracked machine-readable inputs are
`/config/ddr5thmix/build.json` and the assembly sources under
`/src/ddr5thmix/`. The initial open toolchain is GCC 14.2.0/binutils 2.43 for
`mipsel-none-elf`. This proves instruction-byte reproduction for bounded
assembly but does not prove that GNU GCC reproduces PsyQ 4.4.0 C output or link
layout.

# Invocation

Install the Windows MIPS toolchain documented by PCSX-Redux and select version
14.2.0. The script searches `-ToolchainBin`, `MIPS_TOOLCHAIN_BIN`, `PATH`, and
the tool manager's standard `%APPDATA%/mips/mips/bin` location.

```powershell
pwsh -File tools/build/Invoke-FunctionMatch.ps1 `
  -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 `
  -Function FUN_8007eea8
```

The manifest also defines named game-owned modules. Validate the initial
`mode-control` unit and produce one aggregate JSON report with:

```powershell
pwsh -File tools/build/Invoke-ModuleMatch.ps1 `
  -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 `
  -Module mode-control
```

The module contains twenty accepted functions and 1,660 compared bytes. Its
shared `/src/ddr5thmix/mode_control.h` records the two partial state layouts
used by the functions; compile-time offset assertions prevent a field-map edit
from silently moving an observed access.

Validate the game-owned per-frame runtime bridge with:

```powershell
pwsh -File tools/build/Invoke-ModuleMatch.ps1 `
  -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 `
  -Module runtime-core
```

`runtime-core` contains nineteen accepted functions and 4,420 compared bytes.
Validate the game-owned nested six-state screen selector with:

```powershell
pwsh -File tools/build/Invoke-ModuleMatch.ps1 `
  -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 `
  -Module screen-selector
```

`screen-selector` contains twenty-two accepted functions and 2,348 compared bytes.

# Accepted functions

## Screen-selector

The twenty-two-function unit implements the enter/update/exit callback hierarchy and next-state router for the 6-substate gameplay session selector. GNU binutils 2.43 matches all 2,348 selected bytes:

| Function | Bytes | Built/reference SHA-256 |
|---|---:|---|
| `FUN_80075258` | 604 | `7f75eb82b7ff9c223a2f3a6df9cd1aa58fc78cf7d8fdcebd293f0b2f6ef532b2` |
| `FUN_800754b4` | 204 | `ed3e2bfadab3ebcaab87fe76eb9a826456070685be44f0bcfd7d59850c9535eb` |
| `FUN_80075580` | 132 | `8ee08df11648a1c93a02a0b3e5ea167c9c0fbca11c0eb098e945112fa5727931` |
| `FUN_80075604` | 168 | `50702c2e0b503fd9eeea45eb8a1ffac157dfbb3cae5374e2d3bb639eb38bc933` |
| `FUN_800756ac` | 68 | `fc821fb9bece0e882eeef952f494f1c97ef157297e68cfb99092fc3f868c9ca7` |
| `FUN_800756f0` | 72 | `58572186fa5591edfaeeeb8c0ef7ea6bf466a9d7008c2fbdf4cfd1469e38ec2d` |
| `FUN_80075738` | 168 | `07d2c3ae945fc04dfca8b1a37c5ce9d7249b6b7724a3501064d1f2e96417743d` |
| `FUN_800757e0` | 56 | `a49704e6c382103f6f1c4eef7ee50e24ec1469ff0fdb3c07e0b5711ddc3d4f13` |
| `FUN_80075818` | 32 | `c717e58611412277ba87db35dcfbcc069da44d0c43888b5b8166ef2f856c59f1` |
| `FUN_80075838` | 8 | `6d64edf91449c1b17746c1ef18afa2eb25c70bdf1322ab3df5a2630993b7e2f1` |
| `FUN_80075840` | 84 | `efd9d288d0705ef2fe600ca41fcdd5e01df348e3cf3832c3fcf9fa76a084cbe2` |
| `FUN_80075894` | 168 | `0f0bf6083ef4a2bc1d7cecf1c0d5c07b469446d3e7af4ae8bc05bfdc3c6fd8c3` |
| `FUN_8007593c` | 48 | `ad22c2a0fdad1379ddcf34c4fca7af5ed4aeceea7cf2518e1efd630d63fe151c` |
| `FUN_8007596c` | 152 | `102b4bb2e23d702d08a54d6fa788cf503e7f4fe97bbcc3d2cae89b4f91efbbcb` |
| `FUN_80075a04` | 60 | `0e3fc9eeb7eb0e9aa73eb7aa04e0e56e3009fe91a0f913d3957ebefb3b7e8ff1` |
| `FUN_80075a40` | 80 | `6552bb76f28ceca47aeb6e2ac6ef554c602052c97486faecbf3cbb77eaecf414` |
| `FUN_80075a90` | 40 | `aa026d36e2f1a6f8742b7bc608ff87754b2d6ff36a29be8ec3715c0eeb7658bb` |
| `FUN_80075ab8` | 40 | `18bdcf7f7dfa737fe5cfbe218c50c5a31a4731be7bf93f7cd905be0f8fbf532d` |
| `FUN_80075ae0` | 8 | `6d64edf91449c1b17746c1ef18afa2eb25c70bdf1322ab3df5a2630993b7e2f1` |
| `FUN_80075ae8` | 8 | `e7363c7ea5cd57a5cadba4dee6094510a4203175e28f46f49f81257af95fed0d` |
| `FUN_80075af0` | 8 | `6d64edf91449c1b17746c1ef18afa2eb25c70bdf1322ab3df5a2630993b7e2f1` |
| `FUN_80075af8` | 140 | `51814c35d43b112da91fe0ffd09e73e92b2bd793d7fa297da2915d1220a1d36b` |

See the [screen-selector concept](/docs/games/ddr-5th-mix-jp-screen-selector.md)
for callback structure, router logic, and evidence.

## Runtime-core

The six-function unit connects the per-frame `main` loop to `mode-control`:
`main` itself, the PAD/auxiliary input adapter, 0x140-byte state-prefix reset,
mode/submode dispatcher, counter/derived-state updater, and screen-index range
flag. GNU binutils 2.43 matches all 2,232 selected bytes:

| Function | Bytes | Built/reference SHA-256 |
|---|---:|---|
| `FUN_8002112c` | 584 | `ec71afe8e5431d30698f04fd7a96f5961253072e99572749f9b40ba50512c1ba` |
| `FUN_8002216c` | 156 | `83a471a336ab3136da9cfc59b654b8e4065339abcc288cac11b72a552358e202` |
| `FUN_80022cf8` | 524 | `4057cd0604a3d2ef794d691ab19859e5a41507bcde9705c9eef3944d85fc5dae` |
| `FUN_80023744` | 476 | `1b640a8f4f92bedb9f77b8187577a3555ac4f1d5257a43b070c4b5c80db88aa9` |
| `FUN_8009971c` | 84 | `9b97a71eb74d113a9897b4374f924b4f81698830977427ba462d31f989481ce6` |
| `main` | 408 | `275cc516d5a5aca266a3d7789aadf4e22815bfc6775003b54bb9ec8fd7321303` |

See the [runtime-core concept](/docs/games/ddr-5th-mix-jp-runtime-core.md)
for boundary, negative attempts, global-layout evidence, and limitations.

## Completed `0x800230cc–0x800236cc` range

The final seven in-range functions add 596 exact bytes and close every function
boundary in the inventory. `FUN_800236bc` is a first-attempt direct C match;
the six handlers use bounded semantic inline sequences to retain PsyQ frame,
reload, register, and delay-slot layout.

| Function | Bytes | Built/reference SHA-256 |
|---|---:|---|
| `FUN_800232cc` | 168 | `6e0877b0ce7b9c852edc2b4dcf2354c1eb3274d8211974edfc4d6fe35f56c866` |
| `FUN_80023500` | 68 | `15d901088d507fdaaadfbe80921317cc15958fe16a8c7f8ec94845346101991e` |
| `FUN_80023544` | 40 | `4afac96478e4b9b2151461d7521d31587518a8fea3f4aa7df6f3137bae30b37c` |
| `FUN_8002358c` | 108 | `dbfe7b5c93180b8993cd9c910371ae43fd87b016921621b5d197f484b90e07c7` |
| `FUN_800235f8` | 152 | `3e40e705f0b079beae2ec7625ce7b301fbcbec9aef0f5cbbff915c3b67e464dc` |
| `FUN_80023690` | 44 | `db411f78d03c5e62b31287a760f49c485cd2de3a14e2ce0c1161f2d0615033b0` |
| `FUN_800236bc` | 16 | `11999692c02c317443898e7615fb70350b448e716aeccdc9e5ecaa5b3bbee78a` |

Together with the earlier eleven in-range matches, all 18 inventoried
functions and 1,168 attributed bytes now reproduce exactly. The module also
contains the 36-byte external dependency `FUN_80022148` and the 456-byte
mode-`0x10` menu handler `FUN_80022b30`, for 20 functions and 1,660 bytes
total. `FUN_80022b30` matches built/reference SHA-256
`8fcfaea11d4c06cb6a3415a4b7bc3ed2dd9b0b81563f096fbd3a8602d03f1893`.
This closes the logical range, not the still-unproven original PsyQ object
boundary.

## Mode-4 handler pair and external snapshot dependency

Three direct dependencies extend `mode-control` from nine functions/380 bytes
to twelve functions/608 bytes:

- `FUN_8002340c` (104 bytes) is the mode-4/submode-0 handler. It gates on
  `DAT_800ac88c`, reads secondary-state byte `+0x06`, and either advances to
  submode 2 or transitions to mode 2. Built/reference SHA-256:
  `aae54597ee08056bba1debab97825d7afdb0eb84d1981c5dec7e26ed7c4f8387`.
- `FUN_80023474` (88 bytes) is the mode-4/submode-2 completion handler. Once
  its readiness call succeeds it sets secondary-state byte `+0x06`, runs the
  audio/settings/init sequence, and transitions to mode 2. Built/reference
  SHA-256:
  `18e61d0289d4def33ce1ea53709b9149cc66d5376fb842f6e8619063d575994e`.
- `FUN_80022148` (36 bytes), called externally by the mode-`0xff` path, copies
  two opaque consecutive words from `0x800ac8f0` to `0x800e2ae0` and ignores
  the caller's argument. Built/reference SHA-256:
  `85a280ea5b4c136a4d727cd996d7ede89b7e6e67d499c625282766cad1ffcb94`.

Straight C reproduced each operation but not its PsyQ layout. For the two
handlers GCC shrink-wrapped frames, emitted tail calls, and duplicated
epilogues. For the snapshot copy it materialized each global independently or
selected different base/register ordering even when modeled as two contiguous
structures. The accepted C files therefore use bounded semantic inline
instructions with linker-resolved symbols; no raw reference bytes are
embedded, and this is a compiler-compatibility shim rather than a claim that
the original source used inline assembly.

## `FUN_8007eea8` — assembly

`FUN_8007eea8` is an 8-byte no-op body at runtime address `0x8007eea8`:
`jr $ra` followed by its `nop` delay slot. With executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`,
the address maps to file offset `0x64ea8`. GNU assembler/binutils 2.43 produces
the exact reference bytes `08 00 e0 03 00 00 00 00` from the tracked source.
The generated JSON report records both slice hashes and `byte_match: true`.

## `FUN_80023230` — C with relocations

`FUN_80023230` is a 28-byte `SetSubmode` primitive at `0x80023230`. It loads
the state pointer stored at `PTR_DAT_800ac8e8`, writes its `u16` argument to
offset `0x2a`, and clears the `menu_selection_index` at `0x2c` and the
still-unread `unknown_02e` field at `0x2e`. The manifest supplies the external
symbol address, while the generated linker script places the function at its
runtime address and resolves the MIPS `HI16`/`LO16` pair.

The reconstruction required three controlled attempts:

1. A literal integer-to-pointer cast produced 36 bytes because GCC materialized
   `0x800ac8e8` with `lui`/`ori` before loading through it.
2. Declaring an external symbol produced the correct relocation pair, but
   marking ordinary RAM `volatile` produced 32 bytes because GCC kept an empty
   return delay slot.
3. Using the external non-volatile RAM symbol allowed `-fdelayed-branch` to
   schedule the final store into the `jr $ra` delay slot. The result is the
   exact 28-byte reference sequence, with matching built/reference SHA-256
   `e5a72934d2e749864691d7b5e9a704e755dd6ed1fe89d1e6dbf95cba18a6390b`.

This is evidence that GCC 14.2.0 reproduces this small function under the
recorded flags. It does not establish general equivalence with PsyQ 4.4.0.

## `FUN_80023210` — sibling C pattern for mode transitions

`FUN_80023210` is the 32-byte `SetMode` primitive immediately preceding
`FUN_80023230` at `0x80023210`. It writes its `u16` argument to offset `0x28`,
then clears submode at `0x2a`, `menu_selection_index` at `0x2c`, and the
still-unread `unknown_02e` field at `0x2e`. With the same non-volatile external
`PTR_DAT_800ac8e8` declaration, structure layout, compiler flags, and generated
linker placement established for `FUN_80023230`, the first reconstruction
attempt matches all 32 reference bytes. The built function bytes and reference
slice share SHA-256
`29be0968527e9aad066ece450b275c22b0de70865a1e09cc4e5ef26db63b2e53`.

The generated sequence is `lui`/`lw` for the linked pointer, one load-delay
`nop`, four consecutive `sh` stores, and `jr $ra`, with the final store to
offset `0x2e` scheduled in the return delay slot. This establishes a reusable
local pattern for short state-mutator functions: model the state pointer as a
linked external symbol, retain ordinary RAM as non-volatile unless hardware or
concurrency evidence says otherwise, use exact-width fields at their observed
offsets, and keep `-fdelayed-branch` enabled. It is evidence for this sibling
pair, not a general compiler-equivalence claim.

## `FUN_800231b0` — register-allocation constraint without emitted code

`FUN_800231b0` is the 32-byte `NextSubmode` primitive at `0x800231b0`. It
clears the `menu_selection_index` at offset `0x2c`, reads and increments the
`u16` submode at `0x2a`, and writes the incremented value back in the return
delay slot. The accepted build and reference slice share SHA-256
`32cf79c2477fc88366732c01727b9c5b965bcced84a4c66612a29a7b546103d4`.

Straightforward C produced the correct eight-instruction shape and semantics,
but reversed the two working registers: GCC 14.2.0 kept the state pointer in
`v0` and the counter in `v1`, while the reference keeps the pointer in `v1`
and the counter in `v0`. Writing the global access directly did not change the
allocation. Binding the pointer to `v1` with an empty input/output constraint
added a `move`; changing that to an input-only constraint still added a
`move`. Binding the counter to `v0` with an input/output constraint selected
the right registers but introduced an extra load-delay `nop` and prevented the
reference instruction order.

The accepted source instead places an empty inline-assembly clobber of `$2`
(`v0`) immediately after loading the state pointer. It emits no instruction,
but makes `v0` unavailable while GCC allocates the live pointer, so the pointer
lands in `v1`; `v0` is then reused for the counter. The scheduler remains free
to place the clear of offset `0x2c` in the `lhu` load-delay slot and the final
submode store in the `jr $ra` delay slot. This is a narrow GCC compatibility
constraint for reproducing observed register allocation, not evidence that
the original source contained inline assembly.

## `FUN_8002313c` — multi-global termination-latch setter

`FUN_8002313c` is a 52-byte routine at `0x8002313c`. It copies the low byte
of `DAT_800e2a60` into `PTR_DAT_800ac8ec+0x66`, sets
`PTR_DAT_800ac8ec[4]` to one, and sets the outer-session termination latch at
`PTR_DAT_800ac8e8+0xff` to one. Ghidra 12.1.2 finds four direct call sites
across three functions: the `GAME_OVER` exit, the `ENDING` exit, and two
branches of the session Cross-hold detector.

The reconstruction exposed two independent compiler-compatibility problems.
Straightforward C with a volatile global pointer produced only 48 bytes by
hoisting both pointer loads. Two empty memory barriers restored the reference
store/reload phases and 52-byte shape, but GCC permuted `a0`, `v0`, and `v1`.
Clobber-only variants either left that permutation unchanged or destroyed the
reusable `a0` address base. Modeling an aligned page through an integer or
full symbol address introduced an unwanted address-construction instruction.
Fixing both the second pointer and its literal value made `li` precede `lw`,
which required a load-delay `nop` absent from the reference.

The accepted source fixes only the first pointer/value pair to `v1`/`v0`,
uses empty memory barriers at the two observed reload boundaries, and fixes
only the second pointer to `v0`. Leaving the literal unconstrained lets GCC
place `li v1,1` in the second pointer load's delay slot; `v1` then remains live
for the final store in the `jr $ra` delay slot. These constraints emit no
instructions and are narrow GCC compatibility aids, not a claim about the
original PsyQ source. The built function and reference slice share SHA-256
`849b35e29c1f8ffc60ea0b8d2e8fe8b7cd4d79ef6d70f85bd4fc9d230aea1346`.

## `FUN_80023170` — shared session-entry flag reset

`FUN_80023170` is a 32-byte routine at `0x80023170`. It loads the state
pointer from `PTR_DAT_800ac8e8` once and clears four still-unknown byte fields
at offsets `0xf7`, `0xf6`, `0x101`, and `0x100`, in that order. Its two direct
callers are the 15-state session child's state-0 `PLAY START` entry
(`FUN_80070664`) and state-1 selector entry (`FUN_80070730`). This supports
describing it as a shared session-entry flag reset, but does not establish the
meaning of any individual field.

The first C reconstruction matched all 32 reference bytes without an inline
assembly constraint. The same linked, non-volatile state-pointer pattern used
by the adjacent mode/submode primitives produces the expected `lui`/`lw`, load
delay `nop`, four `sb` stores, and final store in the `jr $ra` delay slot. The
built function and reference slice share SHA-256
`101d8bf4ee4e498991ec6a61004b1e4dbf1c8d54133af6a9005f72b63f0c816e`.

## `FUN_800236cc` — empty C hook

`FUN_800236cc` is an 8-byte no-op at `0x800236cc`, called from mode
`0x04`/submode `0x02`. An empty C function compiled with the established
flags produces exactly `jr $ra` followed by `nop`, matching all 8 reference
bytes on the first attempt. The built function and reference slice share
SHA-256
`6d64edf91449c1b17746c1ef18afa2eb25c70bdf1322ab3df5a2630993b7e2f1`.
Unlike the initial `FUN_8007eea8` assembly source, this proves the same no-op
shape directly from C under the pinned GCC configuration.

## `FUN_8002356c` — one-call wrapper and frame-layout boundary

`FUN_8002356c` is a 32-byte mode-`0xff`/submode-`0x03` handler at
`0x8002356c`; its only action is calling `FUN_800231b0` (`NextSubmode`).
Straightforward GCC C optimized the wrapper into an 8-byte tail call.
`-fno-optimize-sibling-calls` restored the 24-byte stack frame, `jal`, and
return sequence, but GCC saved `ra` at `sp+0x14`; the reference saves it at
`sp+0x10`. The frame size and every other instruction already agreed.

The accepted bounded source uses an inline sequence solely to preserve the
observed PsyQ frame slot and instruction order. It links the `jal` target
through the manifest and matches all 32 bytes, with built/reference SHA-256
`5b73884804fb5ff3d5b4e2742236b994d91ed57a487b99f89b8481a57da29882`.
This is a recorded GCC/PsyQ ABI-layout compatibility boundary, not evidence
that the original source contained inline assembly. A future whole-object
toolchain strategy may replace this shim.

## `FUN_800234cc` — conditional calls and shrink-wrap boundary

`FUN_800234cc` is a 52-byte mode-`0xff`/submode-`0x00` handler at
`0x800234cc`. If `DAT_800e2a60` is zero, it calls `FUN_80022148(0)` and then
`FUN_800231b0`; otherwise it returns through the shared epilogue.

Straightforward GCC C placed the frame only inside the taken branch and
tail-called the second function, producing 56 bytes and a different control
flow. Disabling shrink-wrap and sibling-call optimization moved the frame to
entry but duplicated the epilogue, grew the function to 68 bytes, and retained
GCC's `sp+0x14` `ra` slot instead of PsyQ's `sp+0x10`. The accepted bounded
inline sequence preserves the single shared epilogue and all three
manifest-linked relocations. One final correction used explicit `addu
$a0,$zero,$zero`: GNU assembler's `move` pseudo-op selected the equivalent
`or` encoding, while the reference uses `addu`.

The final function matches all 52 bytes; the built and reference slices share
SHA-256
`f89d1b763810e38465070c5d387121ad700729c11fd2e3f7febbc0b0111a9a8d`.
As with `FUN_8002356c`, the inline body is a documented compatibility shim,
not a claim about original source form.

## `FUN_800230cc` — three-way dispatcher with a shared tail

`FUN_800230cc` is a 112-byte mode-`0x04` handler at `0x800230cc`. It reads
the signed submode at `PTR_DAT_800ac8e8+0x2a`: zero calls `FUN_8002340c`, two
calls `FUN_80023474`, and other values call neither. All three paths converge
before copying `PTR_DAT_800ac8ec[0x52]` to offset `0xbb` and returning through
one epilogue.

The direct C reconstruction preserved the semantics but GCC duplicated the
copy and epilogue into all three paths and saved `ra` at its usual
`sp+0x14`, unlike the reference's `sp+0x10`. The accepted bounded inline
sequence retains the source-level dispatch structure while pinning the shared
tail, exact branch layout, four manifest-linked relocations, and load/branch
delay slots. It matches all 112 bytes; the built and reference slices share
SHA-256
`cb26535e271b9b4a3943fa914b8ce9d231ccef8c092f14964ec68d2865f1fe8a`.
This shim records a current GCC/PsyQ compatibility limit and may be replaced
when whole-object compiler/linker evidence supplies a better strategy.

## PsyQ `SetVertex` block — first real GTE/COP2 matches

The contiguous PsyQ 4.4.0 LIBGTE wrappers `SetVertex0` (`0x80055984`, 16
bytes), `SetVertex1` (`0x80055994`, 16 bytes), `SetVertex2` (`0x800559a4`,
16 bytes), and `SetVertexTri` (`0x800559b4`, 32 bytes) are the first accepted
functions containing real GTE/COP2 memory operations. They are executable
code in the main image, not the loader's synthetic one-byte `gte_*`
pseudo-functions at `0x20000000`.

The first three wrappers load one vertex's two words into GTE data-register
pairs 0/1, 2/3, or 4/5. `SetVertexTri` performs all six `lwc2` loads from
arguments `a0`, `a1`, and `a2`. Tracked assembly with explicit
`noreorder`/`nomacro` matches all 80 reference bytes on the first attempt.
The per-function built/reference SHA-256 values are:

- `SetVertex0`: `8901c82b29e97a0872c9fd5622f44111796ce9318a26a18975ce2f078be0889a`
- `SetVertex1`: `31d133f533d6ea6694167ba27242e6f92ba829910c13a98083b1fb8ea360f562`
- `SetVertex2`: `1f5f773f52612acebf941e8e82f5296a637277bc37c7c344a4083d8090a338f9`
- `SetVertexTri`: `3eccebd144d7b6f0d0646a1f467529f2fc7e48c9710d690f881bd866ac476944`

This is reusable evidence for recognizing and assembling the same LIBGTE
patterns in other legally analyzed PS1 software. Byte identity is established
only for this DDR 5th Mix revision and pinned toolchain; other PsyQ versions,
library builds, or link layouts still require their own hashes and comparison.

## PsyQ GTE color/vector arithmetic block

Eight further PsyQ 4.4.0 LIBGTE wrappers are reconstructed in the shared
tracked source `src/ddr5thmix/GteColorMath.s`: `LightColor` (`0x800551b8`, 40
bytes), `DpqColorLight` (`0x800551e0`, 40 bytes), `DpqColor3` (`0x80055208`,
60 bytes), `Intpl` (`0x80055244`, 36 bytes), `Square12` (`0x80055268`, 40
bytes), `Square0` (`0x80055290`, 40 bytes), `OuterProduct12` (`0x800552fc`,
88 bytes), and `OuterProduct0` (`0x80055354`, 88 bytes).

The wrappers expose three reusable instruction families. The color functions
load GTE interpolation/color inputs and store one or three packed color
results. The square pair differs only in the GTE shift-fraction bit and returns
the destination pointer in the `jr ra` delay slot. The outer-product pair
temporarily replaces three GTE control registers, performs the operation with
or without the 12-bit fractional shift, stores MAC1-MAC3, and restores the
saved control state. Explicit ordering and raw words for the GTE commands
reproduce all 432 bytes. The per-function built/reference SHA-256 values are:

- `LightColor`: `ae4cfe9745644b125bec4219d0660a7608bef37aec1d6cdb3d1e601e1112b0bf`
- `DpqColorLight`: `a9fd370295eb8d79a4f5a8803c448bec1ea52cb588cfa1b044c8278438f9d470`
- `DpqColor3`: `8e8ac1471c4c2028fb131b2ff67671b6d725c3169d777b44d4b717c2295a0563`
- `Intpl`: `91a892c2adb57022e700b10f8801c3726a207157cba716c763b67d4daac4c510`
- `Square12`: `8eb49b1a6805d4a218b9a35c2f9ab81c8cb702b3ced2c46674284158713c5aaf`
- `Square0`: `99cb1c8d0c79529e8c6f1a56f640ebd7400c2eb0f57312cdc2e252c1e34f201b`
- `OuterProduct12`: `51199c0b60ef58f1d276b5423b81401363531c429c7f335b84fdef9f4c3b1934`
- `OuterProduct0`: `b0df3db5528e30315b774c82d909799911f21a661fc9d23bf7ce2dbb33ef3f53`

Together with the four `SetVertex` wrappers, the accepted real GTE/COP2 set
now covers 12 functions and 512 executable bytes. The reconstruction proves
byte identity for the pinned executable and GNU assembler; it does not claim
that the tracked assembly is Sony's original source.

## PsyQ GTE register-setter block

The next ten contiguous LIBGTE wrappers are reconstructed in
`src/ddr5thmix/GteSetters.s`: `SetRGBfifo` (`0x800559d4`, 20 bytes),
`SetIR123` (`0x800559e8`, 20 bytes), `SetIR0` (`0x800559fc`, 12 bytes),
`SetSZfifo3` (`0x80055a08`, 20 bytes), `SetSZfifo4` (`0x80055a1c`, 24
bytes), `SetSXSYfifo` (`0x80055a34`, 20 bytes), `SetRii` (`0x80055a48`,
20 bytes), `SetMAC123` (`0x80055a5c`, 20 bytes), `SetData32`
(`0x80055a70`, 12 bytes), and `SetDQA` (`0x80055a7c`, 12 bytes).

Each wrapper performs only direct `lwc2`, `mtc2`, or `ctc2` transfers and
returns. The tracked order reproduces all 180 bytes. The per-function
built/reference SHA-256 values are:

- `SetRGBfifo`: `ad199cbaca41bcea007b37230fbf5b5b4d7564f69951259361790ac0a5b136cb`
- `SetIR123`: `6da9cf831c0db5d80eb5999464d1f03a4f775f37cc586406f93adc036b942b79`
- `SetIR0`: `96f7dcc76ee52f98f3c538025fe3d5df5f0a5e20df30714924f9f0fc134b2eb3`
- `SetSZfifo3`: `8087d1ed7c27a56546edfc5eb90c889963430f3eeccaf702df663c181854fcbd`
- `SetSZfifo4`: `72d848610c07f57d296c6b6b120efcfab9a91cee5d935a03dd4f2f11bde50ef6`
- `SetSXSYfifo`: `d1fe526732bfbe89e5afe1854f4b849aec907632f3461a18034aef3597b2a456`
- `SetRii`: `ebf2ab5b55d34164ce9d996740d82449e99f98e4a65da7dcd9ad6e2f3cae7f17`
- `SetMAC123`: `54b7eeb51ac9b243c2caf48a078814305b17ea82899ad749dc26ca4c547f5cbd`
- `SetData32`: `e9189e5454ae227c211de6f62fe1f2602ca0d3e8b81e2524c511ba5d4085ec02`
- `SetDQA`: `137430d515cfca2b9014536398a80cdb7341660e9b7ae4b91b8ffbe4fe866406`

The accepted real GTE/COP2 set now covers 22 functions and 692 executable
bytes. `SetDQB` immediately follows this block but is intentionally left for
a later unit so this change remains exactly ten newly accepted functions.

## Remaining exact-name PsyQ GTE functions

The 11 remaining real linked functions whose names exactly match the current
GTE catalog are reconstructed in `src/ddr5thmix/GteRemaining.s`. They cover
632 bytes: two identical `SetTransMatrix` copies (`0x8002b210` and
`0x80037848`, 32 bytes each), `MulMatrix0` (`0x80037208`, 268 bytes),
`SetRotMatrix` (`0x800377e8`, 48 bytes), `SetLightMatrix` (`0x80037818`, 48
bytes), `SetColorMatrix` (`0x80037f88`, 48 bytes), `SetFarColor`
(`0x80038008`, 32 bytes), `SetBackColor` (`0x80054998`, 32 bytes),
`AverageZ3` (`0x800552b8`, 32 bytes), `AverageZ4` (`0x800552d8`, 36 bytes),
and `Lzc` (`0x800553ac`, 24 bytes).

The matrix setters map packed matrix words directly to the corresponding GTE
control registers. The color setters scale each input by 16. `AverageZ3` and
`AverageZ4` issue AVSZ3/AVSZ4 and return OTZ; `Lzc` preserves the two no-op
latency slots between LZCS and LZCR. `MulMatrix0` performs three MVMVA
operations and packs their results into the destination matrix. Raw `.word`
directives are restricted to GTE command encodings that GNU objdump does not
render as ordinary mnemonics; CPU instructions remain semantic assembly.

The per-function built/reference SHA-256 values are:

- `SetTransMatrix` (`0x8002b210`): `2f228789930df0a6d6db76e145ba3301694d7c01b9df2dbf45d2f48ad7aaee1`
- `MulMatrix0`: `2cdd7a947dcf65933864dc985431b443aff64da08fe0b62b26cd8e2cdc3c9a30`
- `SetRotMatrix`: `095799477a23b46afa40d99dc027e7ef467cd14b8e135234d7e5b5c9ebc07883`
- `SetLightMatrix`: `b9ce521ecd6cadeda48a0828b73f9b37d260c4f83e4d3b099334608f9e8fe598`
- `SetTransMatrix` (`0x80037848`): `2f228789930df0a6d6db76e145ba3301694d7c01b9df2dbf45d2f48ad7aaee1`
- `SetColorMatrix`: `32169d0ce375b3a1a24a5beadfd11cd857ce0a89d610ddf3a1f3855fa6ed34f6`
- `SetFarColor`: `7c5febbc8fceb4e4b3065c8276416832651867316006f05c53e0a20b893d522d`
- `SetBackColor`: `e4dc8b65f4b8d01e34793cfd9e1ecc838abd27d016ca1c2a4291a20b613ab61e`
- `AverageZ3`: `72234e789d3afcc248b054abf035921eb4c095bb91a156c0df29e023db02b263`
- `AverageZ4`: `ca098524f15b22f4ea8ac38b7d348e2cdce3c58babac70b15baa82d7af5f4115`
- `Lzc`: `3ee60c6a11ec8f3821342fb5db4619b7c2f355e751f0614f0e77c2f32e7cd8df`

This raises accepted real GTE/COP2 coverage to 33 functions and 1,324
executable bytes. The evidence proves byte identity only for the pinned game
revision and recorded GNU binutils 2.43 workflow; it does not claim Sony's
original source.

## PsyQ BIOS/kernel trampoline block

Thirty-two 12-byte PsyQ wrappers are reconstructed through the project-authored
`BIOS_STUB` macro in `src/ddr5thmix/PsyqBiosStubs.s`. Each independently
extracted section loads `t2` with BIOS vector `0xa0` or `0xb0`, jumps through
`t2`, and loads the service number into `t1` in the `jr` delay slot. GNU
binutils 2.43 reproduces all 384 selected bytes from the pinned executable.

| Function | BIOS vector | Service | Built/reference SHA-256 |
|---|---:|---:|---|
| _bu_init | 0xa0 | 0x70 | 069d69bbe3437a869fba0234a94c0c3ccd061833fb108f2276c0fa79c2c30381 |
| _card_info | 0xa0 | 0xab | 53c1d988b2c0c6536bf7b9c90ff04fee92d7d1eb00c3143d0ae1f8cb0572b82a |
| _card_load | 0xa0 | 0xac | 6887fde04e1564fea90ebfec8d01b67f3eebf9f9b209d7165f72afc050d26edd |
| _card_auto | 0xa0 | 0xad | 9b3a16e2068172686806086b600ecabdaa16dca605601bda6fb3e3ecf911a0b5 |
| _card_write | 0xb0 | 0x4e | 75246fc473556dee52be69947e769e0e1f616e6b001e1ace3f220e5fb97711f7 |
| _new_card | 0xb0 | 0x50 | b840e8f38866a987e914f45adad3da1f58faa57994fb49869a7cc31cbf332ade |
| InitCARD2 | 0xb0 | 0x4a | 3dc545cd2a7eb02a71f69bb11d63a30fd43904f26456beaeba03a0b293cb6e02 |
| StartCARD2 | 0xb0 | 0x4b | 3265341abe40d382a64b7dd8b9d7abddc9d3c04ec0787bdb61031d89c666d589 |
| StopCARD2 | 0xb0 | 0x4c | 0bbe6cf1439cc86c67d4825252e8eec60a5f1959bcecab6e9c206f41278de0f8 |
| _card_read | 0xb0 | 0x4f | 875fa8774175cad7c553fa1bcaa28639e989aa4933dedc1475a3e5eb84d9b6c5 |
| _card_status | 0xb0 | 0x5c | f5716bf2e897fa21b1032ae94d5237405b67c3f14e059d64af038ea91e431ad8 |
| exit | 0xb0 | 0x38 | d8fcf49b3617b308d46baa593e6665d34fab35e9b2ebb5cee8494c93b2f3df7e |
| setjmp | 0xa0 | 0x13 | 0428ca0065f41fa0156f03a0626338006565f78c83f051dd0bcea81252136e5e |
| strcat | 0xa0 | 0x15 | 67605f8a2752259efa7205a1130ded95d6b9c63f6cef61d4e17342c1d0095513 |
| strcpy | 0xa0 | 0x19 | e920b48b8ffc89dc112ed9402a2880876d4654cbf215e0ecc3e47a016560f197 |
| strlen | 0xa0 | 0x1b | 9b43b77c5973b779161d6023dd1eb3e629d2aa60aa1efeaf828361bb1cf3c862 |
| bzero | 0xa0 | 0x28 | 2aa8646552ae17ada0051a3620196e0cf4b4608ee32803592285fec4a5e78320 |
| memcpy | 0xa0 | 0x2a | ad7c5bc50bc07966feaaee9043cbb18cd00d1ff4ffbcfbe37fdad2b22ea2876d |
| printf | 0xa0 | 0x3f | 698f6afd1bb5f561402d0aaf8212cde9ffe42f4e5d56589177383701bec561bd |
| InitHeap | 0xa0 | 0x39 | 4487ee3019aae533a71d191483e6876aa40c2530923670ec0e012a78204fb863 |
| FlushCache | 0xa0 | 0x44 | 86f1abc250b24950310dd74d53b0758baaa3393ae55aec766cc049a592b17cba |
| GPU_cw | 0xa0 | 0x49 | 0a2181041688617d14ca99a521daa4c6337a216c66ad027d9763d257157c7527 |
| DeliverEvent | 0xb0 | 0x07 | 1f3d5e03478b103c777dcf81a6aac086a8fe5763577fc1b7f3f63c137763e95a |
| OpenEvent | 0xb0 | 0x08 | 836f0e0a8413aabe596d01d3caa02911d25cb8381476610f35490ee31acee142 |
| CloseEvent | 0xb0 | 0x09 | b1b43358d552fbe8bd76d587dafc7b610606ca264232d149ac50d9fa8de2a369 |
| WaitEvent | 0xb0 | 0x0a | 78085ffececd5ad12f53d0f8a6e5d760bb49f899bc77a8ce685911162424d647 |
| TestEvent | 0xb0 | 0x0b | 5d756c5ef10f08bb8b4ef9304c79b2a3924ce3bea546c70a70a457bd6de497aa |
| EnableEvent | 0xb0 | 0x0c | bb630b11b300ca136ec849b32f013e682b1df95abbe8a39ee561b3751d68c1d1 |
| DisableEvent | 0xb0 | 0x0d | 8d198f2effdd0548cb262bb2893dc24159833d354326cbd2afde9140a0b858a4 |
| FUN_8003ba70 | 0xb0 | 0x3f | 859ccf6879a1def400ddcd0fab5063a5b8ee05bd985e429028e3322b6e149fd9 |
| FUN_8003bb30 | 0xa0 | 0x72 | d3eefd259eb1b5f648ec00610d2defbf4c6e5873f47895dd3d23a322bb0cfd7f |
| ReturnFromException | 0xb0 | 0x17 | 6403f02e44574f9166b7e8b8d3cb89a7a05b124c57f6427b05647750b30f0d1f |

These matches establish the linked trampoline encodings and service selectors;
they do not reconstruct the BIOS implementations reached through the vectors.

# State-transition lookup

`FUN_80028600` adds a 96-byte exact match in `src/ddr5thmix/StateTransition.s`.
The routine masks its argument to 16 bits, scans the three halfword entries at
`0x800e3a18`, returns the zero-based matching index, and returns `-1` after the
three entries are exhausted. `Invoke-FunctionMatch.ps1` matched 96/96 bytes
with GCC 14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`;
reference/built SHA-256 is
`8d302c9d83256f70af0515e918b4ed59215f3f1e4acc6c3e75afbb305aac2ebd`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# State-transition resource setup

`FUN_800286bc` adds a 40-byte exact match in `src/ddr5thmix/StateTransition.s`.
The routine passes the 8-byte destination at `0x800e37e0` to `FUN_8003bac8`.
`Invoke-FunctionMatch.ps1` matched 40/40 bytes with GCC 14.2.0/binutils 2.43
against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`084fdf4cfcf3fc5e69d3a9e8bc5a73fff5ae6a6744ba4ed924fceb1262be8a5c`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# State-transition class predicate

`FUN_800286e4` adds a 28-byte exact match in `src/ddr5thmix/StateTransition.s`.
The routine masks its argument to 16 bits, returns `2` for values below `53`,
and returns `1` otherwise. `Invoke-FunctionMatch.ps1` matched 28/28 bytes with
GCC 14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`efe4561fac1208ad49676d97eb1b75d637237d476e363b78927eaa58ab61b020`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# State-transition dispatch predicate

`FUN_80028740` adds a 72-byte exact match in `src/ddr5thmix/StateTransition.s`.
It reads `0x800e3768`, dispatches values below `9` through the table at
`0x8002aa8c`, and calls `FUN_8002422c` for out-of-range values.
`Invoke-FunctionMatch.ps1` matched 72/72 bytes with GCC 14.2.0/binutils 2.43
against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`02495eb1cb7fee57b830ea0c68247e592c208f9eb03039a0ee3f23fdbdcfb32d`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# State-transition progression handler

`FUN_800287e0` adds a 180-byte exact match in `src/ddr5thmix/StateTransition.s`.
It advances the state word at `0x800e376c` through states 0–3, runs the
initialization/check sequence for state 1, increments after success, and clears
state 3 back to zero. `Invoke-FunctionMatch.ps1` matched 180/180 bytes with
GCC 14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`b9c2660b518431709bfdf7392f790cf236b7f6738e4623d659318ac5591af2df`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# State-transition timing comparison

`FUN_80028894` adds a 72-byte exact match in `src/ddr5thmix/StateTransition.s`.
It computes elapsed state time from `0x800e3774`/`0x800e3778`, shifts it by
four bits, compares against `FUN_80028d3c`, and returns the unsigned result.
`Invoke-FunctionMatch.ps1` matched 72/72 bytes with GCC 14.2.0/binutils 2.43
against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`99ba85f8cd17c53d0beeeda5ff073259958a5c1c862804db97b9eade7119ffeb`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# State-transition activation wrapper

`FUN_800289d0` adds a 36-byte exact match in `src/ddr5thmix/StateTransition.s`.
It calls `FUN_8002ef5c` with arguments `0` and `0x00c00000`.
`Invoke-FunctionMatch.ps1` matched 36/36 bytes with GCC 14.2.0/binutils 2.43
against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`5ae9f7d9ce424e93d01f811ef8dd7d12bc0f8a61253d52f7ecf2bcb0f6f1ce58`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# State-transition descriptor initializer

`FUN_800289f4` adds a 152-byte exact match in `src/ddr5thmix/StateTransition.s`.
It initializes `0x800e2b40` twice with the observed mode, address, and halfword
fields, submitting each configuration through `FUN_8002f42c`.
`Invoke-FunctionMatch.ps1` matched 152/152 bytes with GCC 14.2.0/binutils 2.43
against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`ac9e5f6c1bf1e17ca09e4b512da8d05a9931823ba5d0d6e2e98823a334bc8bdd`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# State-transition subsystem wrapper

`FUN_80028a8c` adds a 32-byte exact match in `src/ddr5thmix/StateTransition.s`.
It invokes `FUN_80024e00` with no arguments and returns through the observed
24-byte stack frame. `Invoke-FunctionMatch.ps1` matched 32/32 bytes with GCC
14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`2fcf37804a7a80d559b721d2e3c3efb98df5aa50ce7ed83ade1a471dfa1a1fe7`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# State-transition timing value initializer

`FUN_80028aac` adds a 36-byte exact match in `src/ddr5thmix/StateTransition.s`.
It calls `FUN_800358f8(-1)` and stores the result at `0x800e3798`.
`Invoke-FunctionMatch.ps1` matched 36/36 bytes with GCC 14.2.0/binutils 2.43
against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`d2b846e2f46e72de7493cfbe475013abba75d16480c13580469644c4987acd00`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# State-transition transfer buffer wrapper

`FUN_80028ad0` adds a 48-byte exact match in `src/ddr5thmix/StateTransition.s`.
It submits the descriptor at `0x800e39b0` through `FUN_8003bac8` and sets the
completion flag to `1`. `Invoke-FunctionMatch.ps1` matched 48/48 bytes with
GCC 14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`6bed795af37927b996e22a8ccbcfa732af41aecbda0c6cc733bc445721f3f33a`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# State-transition queued transfer setup

`FUN_80028b00` adds a 108-byte exact match in `src/ddr5thmix/StateTransition.s`.
It prepares `0x800e39b0`, increments its request counter, resolves resource
`0x80025d44`, invokes the transfer/completion helpers, and returns zero.
`Invoke-FunctionMatch.ps1` matched 108/108 bytes with GCC 14.2.0/binutils 2.43
against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`f0a74b6fb541d2561bada1a7fb9668837ef622c9436fe3f00816c05873532a8a`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# State-transition completion flag getter

`FUN_80028b6c` adds a 16-byte exact match in `src/ddr5thmix/StateTransition.s`.
It returns the value stored at `0x800ae478`. `Invoke-FunctionMatch.ps1` matched
16/16 bytes with GCC 14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`f7be237b7ad8ad272afb5af429f4dfd2854cf0184f3b1fc8c65a61c5cc41439f`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# State-transition transfer size initializer

`FUN_80028c04` adds a 16-byte exact match in `src/ddr5thmix/StateTransition.s`.
It stores `0x1000` at `0x800e37a0` in the return delay slot.
`Invoke-FunctionMatch.ps1` matched 16/16 bytes with GCC 14.2.0/binutils 2.43
against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`9916caea0d8dbf1bf2b98bd4f0e35570e2590045da10e997ab151dcf2e33319b`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Graphics timing calculator

`FUN_80028c14` adds a 56-byte exact match in
`src/ddr5thmix/RuntimeGraphicsInit.s`. It scales `0x800e377c` through the
observed unsigned HI multiplication, then multiplies by `0x800e37a0` and
shifts the result. `Invoke-FunctionMatch.ps1` matched 56/56 bytes with GCC
14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`7b6d1025ba12bad69bd7204925319f48d68eb69068e1ebaf9a2157ff84ed5d39`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Transfer descriptor wrapper

`FUN_80028c4c` adds a 40-byte exact match in
`src/ddr5thmix/StateTransition.s`. It passes the 8-byte buffer at
`0x800e38b8` to `FUN_8003bac8`, preserving the observed stack frame and
delay-slot epilogue. `Invoke-FunctionMatch.ps1` matched 40/40 bytes with GCC
14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`361c5660e10433405b3eb7e16c4ff0701f9473c2ecc6638aad95b2038ffe2e3c`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing accumulator

`FUN_80028c74` adds a 112-byte exact match in
`src/ddr5thmix/StateTransition.s`. It derives a delta from
`FUN_800358f8(-1)` and `0x800e37a4`, then updates both words of the 8-byte
buffer at `0x800e38b8` using `FUN_80028ce4` and `FUN_80028d5c`.
`Invoke-FunctionMatch.ps1` matched 112/112 bytes with GCC 14.2.0/binutils
2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`5edb698913e45eaea62425418175a4e8d1701d54e18d8f4c68785480c5589c0d`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing scale helper

`FUN_80028ce4` adds an 88-byte exact match in
`src/ddr5thmix/RuntimeGraphicsInit.s`. It multiplies the fields at
`0x800e37a0` and `0x800e37d8`, applies the unsigned factor `0xbe37c63b`,
and evaluates the observed shift/add scale. `Invoke-FunctionMatch.ps1`
matched 88/88 bytes with GCC 14.2.0/binutils 2.43 against lawful executable
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`;
the reference/built SHA-256 is
`6636878d5d3ca33c35dd84a9b0f4feb82237f9a56d0b49bfeb4d1c27c6238008`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing rate helper

`FUN_80028d3c` adds a 32-byte exact match in
`src/ddr5thmix/RuntimeGraphicsInit.s`. It scales the 8-byte timing
accumulator at `0x800e38b8` by `0xd1b71759` and returns the HI product shifted
right by 13 bits. `Invoke-FunctionMatch.ps1` matched 32/32 bytes with GCC
14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`011fa7c5049c82695b0c71528c739c7171f13fa60ff4b642ffad29cef1b6a4e1`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing interval helper

`FUN_80028d5c` adds a 52-byte exact match in
`src/ddr5thmix/RuntimeGraphicsInit.s`. It derives a scaled value from
`0x800e377c` using `0x88888889`, then multiplies it by `0x800e37d8` and
shifts right by 12 bits. `Invoke-FunctionMatch.ps1` matched 52/52 bytes with
GCC 14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`f5611b2a6f1468c379a3b20a649874f7a28e3a02162f8465e5d7f898b1078a45`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing configuration loader

`FUN_80028d90` adds an 80-byte exact match in
`src/ddr5thmix/RuntimeGraphicsInit.s`. It stores the selected index and
fields from the table at `0x800ad7e0` into the five-word record at
`0x800e3770`, adding the source `+4` field shifted right by 11 to the `+8`
field. `Invoke-FunctionMatch.ps1` matched 80/80 bytes with GCC
14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`e7e275a832b44894ca8c69901ba3820c78b7d62af659e90224de046bf55cb9b5`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing accumulator reset

`FUN_80028de0` adds a 12-byte exact match in
`src/ddr5thmix/RuntimeGraphicsInit.s`. It clears `0x800e37d8` in the return
delay slot. `Invoke-FunctionMatch.ps1` matched 12/12 bytes with GCC
14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`58961e84a23056aa7ed32541a69843510a57c9f5bafd34575091e84a67066014`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing mode dispatcher

`FUN_80028dec` adds a 108-byte exact match in
`src/ddr5thmix/StateTransition.s`. It stores the mode at `0x800e37d8`,
dispatches modes below 12 through `0x8002aab4`, and invokes `FUN_8002a174`
with arguments `0`–`3` for the four active table entries.
`Invoke-FunctionMatch.ps1` matched 108/108 bytes with GCC 14.2.0/binutils
2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`c957f5cd867f1914c50799727c9860837bdf3655f2fd312d96f7a642652dff61`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing buffer submission wrapper

`FUN_80028e58` adds a 40-byte exact match in
`src/ddr5thmix/StateTransition.s`. It passes the 276-byte buffer at
`0x800e3a28` to `FUN_8003bac8`. `Invoke-FunctionMatch.ps1` matched 40/40
bytes with GCC 14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`ce9886e3888e1b8cd87f57bcf0f0a0ca0ae5d1a38eab1549f8f862dcdd9b5f21`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing buffer update wrapper

`FUN_80028e80` adds a 112-byte exact match in
`src/ddr5thmix/StateTransition.s`. It submits the 276-byte buffer at
`0x800e3a28` through `FUN_8003bac8` while preserving and restoring its four
words at offsets `0x100`–`0x10c`. `Invoke-FunctionMatch.ps1` matched 112/112
bytes with GCC 14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`44d4410d92dcbfb173a2827067aa2dc3977c13d65ef6c8055bfbac333abf82f9`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing event ring-buffer writer

`FUN_80028ef0` adds a 132-byte exact match in
`src/ddr5thmix/StateTransition.s`. It advances the 16-entry index byte at
`0x800e3b39`, writes four argument words into the selected 16-byte entry at
`0x800e3a28`, and returns `-1` when the ring is full.
`Invoke-FunctionMatch.ps1` matched 132/132 bytes with GCC 14.2.0/binutils
2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`8628c444f148c3642516ed1daa5587c002ee2f6c419c33e8d4f0ef8e08d88faa`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing event predicate

`FUN_80028f74` adds a 32-byte exact match in
`src/ddr5thmix/StateTransition.s`. It returns one when the two control
bytes at `0x800e3b38` and `0x800e3b39` differ, and zero when they match.
`Invoke-FunctionMatch.ps1` matched 32/32 bytes with GCC 14.2.0/binutils
2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`1c9cec157b26d45e643826bb549f2678984d42eb514ce58e288ee197ff612835`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing request wrapper

`FUN_80028f94` adds a 52-byte exact match in
`src/ddr5thmix/StateTransition.s`. It submits the 20-byte record at
`0x800e37ac` through `FUN_8003bac8` and clears its `+0x10` counter.
`Invoke-FunctionMatch.ps1` matched 52/52 bytes with GCC 14.2.0/binutils
2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`c1b607fa297a2fce08827a83bf36de01d90db844af99ffce0f49fc74f08f1bdc`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing interval coordinator

`FUN_80028fc8` adds a 164-byte exact match in
`src/ddr5thmix/StateTransition.s`. It compares the requested value with
`0x800e37a0`, computes the interval and direction mode in the record at
`0x800e37ac`, initializes its count to `16` when empty, and updates
timestamps through `FUN_800358f8(-1)`. `Invoke-FunctionMatch.ps1` matched
164/164 bytes with GCC 14.2.0/binutils 2.43 against lawful executable
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`;
the reference/built SHA-256 is
`29aff723848227c8b69f941cede2139255592642e043052bf32a14d8a01d1526`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing record cleanup dispatcher

`FUN_800299dc` adds a 112-byte exact match in
`src/ddr5thmix/StateTransition.s`. It scans 20 slots at
`0x800e3818` for a matching 16-bit identifier and invokes
`FUN_80029b94` with the matched slot index. The verifier matched 112/112
bytes with GCC 14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is `713798ca07914f9f5efc72bad05bb464ce77ca850bb64073a4759c5f823c8abb`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing record threshold cleanup

`FUN_80029a4c` adds a 104-byte exact match in
`src/ddr5thmix/StateTransition.s`. It scans 20 slots at `0x800e3818`
and invokes `FUN_80029b94` for entries whose 16-bit value is at least
`819`. The verifier matched 104/104 bytes with GCC 14.2.0/binutils 2.43
against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is `82629980646ab8362fa95fb412e80bd3c50885d4c9941413bc6f50bd94252430`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing parameter assembler

`FUN_80029ab4` adds a 224-byte exact match in
`src/ddr5thmix/StateTransition.s`. It indexes timing data at
`0x800be2f8`, computes scaled values with `0x51eb851f`, prepares auxiliary
parameters and calls `FUN_80031cec`, returning a signed 16-bit result. The
verifier matched 224/224 bytes with GCC 14.2.0/binutils 2.43 against lawful
executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is `8dbc0bc153e55744252cdf2ab4fe48bc024b77b6d1d54ba4622c954cb48f6aee`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing slot reset

`FUN_80029b94` adds a 68-byte exact match in
`src/ddr5thmix/StateTransition.s`. It normalizes a slot index, performs
`FUN_80032048`, then clears the corresponding eight-byte record at
`0x800e3818` through `FUN_8003bac8`. The verifier matched 68/68 bytes with
GCC 14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is `6053fe59fcdb5a7efb26f909b653e846df6c6d9e8bb7b69952ba9442d9a3e87d`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing mode color setup

`FUN_80029c40` adds a 140-byte exact match in
`src/ddr5thmix/StateTransition.s`. It selects one of two RGB triplets
based on the mode, uploads it through `FUN_8003fca0`, updates
`0x800e38c8`, and calls `FUN_80024e00`. The verifier matched 140/140 bytes
with GCC 14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is `537fe283f4706b5702359feb249edca33d643e8b44d20348e1ce038a0d813b50`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing mode getter

`FUN_80029ccc` adds a 16-byte exact match in
`src/ddr5thmix/StateTransition.s`. It returns the mode/state word stored at
`0x800e38c8`. The verifier matched 16/16 bytes with GCC 14.2.0/binutils 2.43
against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is `8cfabba7e7a2cfd8991dad1fa4648430a0b02360ff0d625f876d305dbbcd04ae`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing index mapper

`FUN_80029cdc` adds a 72-byte exact match in
`src/ddr5thmix/StateTransition.s`. It clamps a 16-bit index to `30`, looks
up a signed halfword in the table at `0x8002a854`, and forwards it to
`FUN_800302bc`. The verifier matched 72/72 bytes with GCC 14.2.0/binutils
2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is `9dc151dfd4318d6985eeda941ebdfd2ca924576777014bde01f091d3ed3a3021`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing state transition

`FUN_80029d24` adds a 124-byte exact match in
`src/ddr5thmix/StateTransition.s`. It compares the current state through
`FUN_80029e08`, writes a requested halfword into the indexed state table,
updates the current state, and returns success or `-1`. The verifier matched
124/124 bytes with GCC 14.2.0/binutils 2.43 against lawful executable
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`;
the reference/built SHA-256 is `52bd5e091989f75d3440f63d77ad709fe7329a53a9203444a4b1db10a0c0af6b`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing state cleanup

`FUN_80029da0` adds a 104-byte exact match in
`src/ddr5thmix/StateTransition.s`. It clears the previous indexed state
entry when the current and target states differ, updates the current state
through `FUN_80029e08`, and returns the cleared value or zero. The verifier
matched 104/104 bytes with GCC 14.2.0/binutils 2.43 against lawful
executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is `144f6a5c6a376365d8e571a80e0cf4b31bb60064cbfa82a75848934365829292`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing state increment/clamp

`FUN_80029e08` adds a 44-byte exact match in
`src/ddr5thmix/StateTransition.s`. It increments a signed 16-bit state and
returns it when below `16`, otherwise returning zero. The verifier matched
44/44 bytes with GCC 14.2.0/binutils 2.43 against lawful executable
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`;
the reference/built SHA-256 is `4f0883e980876c6c517eb13370481d77595b53e6ba4b0ba0d27f292ca59f233f`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing state counter

`FUN_80029e34` adds a 60-byte exact match in
`src/ddr5thmix/StateTransition.s`. It counts nonzero halfword entries across
16 slots at `0x800e3988`. The verifier matched 60/60 bytes with GCC
14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is `1b033a5b810863e7ae1bdd869467ee736464b244865f62e9b4dd3e83e0f384b1`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing table reset

`FUN_80029ed0` adds a 40-byte exact match in
`src/ddr5thmix/StateTransition.s`. It clears three words beginning at
`0x800e3a18`. The verifier matched 40/40 bytes with GCC 14.2.0/binutils
2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is `8ed56828bd499ad79570c7d0664d6f1754935431b69f830395763540d522583f`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing record initializer

`FUN_80029ef8` adds a 56-byte exact match in
`src/ddr5thmix/StateTransition.s`. It clears the 44-byte shared record at
`0x800e3730` and sets its state byte to `6`. The verifier matched 56/56
bytes with GCC 14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is `c3ac575f320b1c55109c7d8c23dd67cfcf96474ae6eb585d0371f5ffa22fa84e`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing resource lookup

`FUN_80029f40` adds a 196-byte exact match in
`src/ddr5thmix/StateTransition.s`. It searches three category tables for a
16-bit identifier, returning the category and entry index through output
pointers or `-1`. The verifier matched 196/196 bytes with GCC
14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is `2eabee04f43a14f8b9eebbde9ad663e49dc0d0877af0dc282e6c52ef4ccc7708`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing slot sweep

`FUN_8002a004` adds a 72-byte exact match in
`src/ddr5thmix/StateTransition.s`. It invokes `FUN_8002a04c` once for each
of 20 eight-byte records beginning at `0x800e3818`. The verifier matched
72/72 bytes with GCC 14.2.0/binutils 2.43 against lawful executable
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`;
the reference/built SHA-256 is `29b7bc9e653f3fc945aff347e70c137f183be258a8279457f03fe91457819fd9`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing slot clear wrapper

`FUN_8002a04c` adds a 32-byte exact match in
`src/ddr5thmix/StateTransition.s`. It clears the pointed-to eight-byte
record through `FUN_8003bac8`. The verifier matched 32/32 bytes with GCC
14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is `70015ddb5c1643ee4b96bae57e322cfc4bceee9fb4321360de6ff2f6c6c1a596`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing slot writer

`FUN_8002a0b8` adds a 56-byte exact match in
`src/ddr5thmix/StateTransition.s`. For slot indices below `21`, it stores
three halfword fields and one stack-supplied byte into the record at
`0x800e3818`. The verifier matched 56/56 bytes with GCC 14.2.0/binutils
2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is `b30b9dfec3420dcfa209eb3960ea6f6bad88b3ca8092cd72244a9b8d2c4d763a`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing subset sweep

`FUN_8002a108` adds a 56-byte exact match in
`src/ddr5thmix/StateTransition.s`. It invokes `FUN_8002a140` for normalized
indices `0` through `4`. The verifier matched 56/56 bytes with GCC
14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is `7733b2e0d1720c65a74a0b4be675b6c4fd2a1d341825bb9851d1b3f1dd9539af`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing subset clear wrapper

`FUN_8002a140` adds a 52-byte exact match in
`src/ddr5thmix/StateTransition.s`. It clears a four-byte record selected by
a byte index from `0x800e3a00` through `FUN_8003bac8`. The verifier matched
52/52 bytes with GCC 14.2.0/binutils 2.43 against lawful executable
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`;
the reference/built SHA-256 is `97077c086c026ce219cea2441958547421abadc1a5af6e37cba90d2bea4392b2`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing subset initializer

`FUN_8002a174` adds a 60-byte exact match in
`src/ddr5thmix/StateTransition.s`. It invokes `FUN_800358f8` with `-1` and
stores its result in the four-byte entry selected from `0x800e3a00`. The
verifier matched 60/60 bytes with GCC 14.2.0/binutils 2.43 against lawful
executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is `b810cca1e574521a14ad2dd60b4cfdf08c347d77a4197dace42bb15a59323774`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing resource resolver

`FUN_80029920` adds a 188-byte exact match in
`src/ddr5thmix/StateTransition.s`. It clamps the third input to `100`,
queries `FUN_80029f40`, maps signed indices through `0x800e3a18`,
submits the resolved ID and parameters to `FUN_80029ab4`, and propagates
failure as `-1`. The verifier matched 188/188 bytes with GCC
14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`1409bdbcf5e0b75975ceb36ed7dbaa53544f3a1a850857953080c49208bb57e8`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing slot allocator

`FUN_80029868` adds a 152-byte exact match in
`src/ddr5thmix/StateTransition.s`. It scans 17 eight-byte slots at
`0x800e3818`, skips occupied entries, tests availability through
`FUN_8002f11c`, records the first valid index at `0x800e2b84`, and
returns `-1` on failure. The verifier matched 152/152 bytes with GCC
14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`90a1108846ef2795bb5e4e60ef0dcc4ce6c80b9937901622772d3dce9493b482`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing record address helper

`FUN_80029850` adds a 24-byte exact match in
`src/ddr5thmix/StateTransition.s`. It masks the input to one byte, scales
it by eight, and returns `0x800e3818` plus that offset. The verifier
matched 24/24 bytes with GCC 14.2.0/binutils 2.43 against lawful executable
SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`216ae4eb5f0418a1e8b9c8bf105f9e105444af8eceb87c7d6b202f599e9a2409`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing subsystem initializer

`FUN_800297c4` adds a 104-byte exact match in
`src/ddr5thmix/StateTransition.s`. It submits two records through
`FUN_8002f42c` with flags `0x4000` and `0x2000`, status `3`, then
invokes `FUN_8002ef5c(0, 0x300000)`. The verifier matched 104/104 bytes
with GCC 14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`f0ab5a1d55b83a169523485c3e90b686b6bbe5ee05b9369c50df62a0e648ce34`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing record subsystem reset

`FUN_80029788` adds a 60-byte exact match in
`src/ddr5thmix/StateTransition.s`. It invokes `FUN_800297c4`, clears
fields at `0x800e37fa` and `0x800e380e`, clears record flags at
`0x800e37f8` and `0x800e3800`, and clears byte `0x800e39b9`. The
verifier matched 60/60 bytes with GCC 14.2.0/binutils 2.43 against lawful
executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`b30967594fc5518e465320cc8a51e941ef556b5cd9210092f56168fc1e5cfcd3`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing record submitter

`FUN_80029750` adds a 40-byte exact match in
`src/ddr5thmix/StateTransition.s`. It passes the 28-byte record at
`0x800e37f8` to `FUN_8003bac8`. The verifier matched 40/40 bytes with
GCC 14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`06befb48f91eb7c1e8dff16e2f5cf51ba637dfdab1de9f59e0b9fab6d5b16bf8`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing record finalizer

`FUN_80029644` adds a 104-byte exact match in
`src/ddr5thmix/StateTransition.s`. It scans records marked `3` at
`0x800e3958`, matches the input argument, marks the record with byte value
`4`, and returns zero. The verifier matched 104/104 bytes with GCC
14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`628935d92121f1c22d27f7332ab3f5c5614970819212f37a87fca8d1166575a6`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing record matcher

`FUN_800295ac` adds a 152-byte exact match in
`src/ddr5thmix/StateTransition.s`. It scans active records at
`0x800e3958`, compares each argument against the input, marks a match with
byte value `3`, and returns the corresponding result from `0x800ae480`. The
verifier matched 152/152 bytes with GCC 14.2.0/binutils 2.43 against lawful
executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`0d9e6085b92e7f0758f9d1cb2bffe24e0974e55444b01c15630fa283043472cb`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing record lookup

`FUN_80029520` adds a 140-byte exact match in
`src/ddr5thmix/StateTransition.s`. It scans up to the active mode count in
the four/eight-byte record table at `0x800e3958`, dispatches record kinds
through `0x8001aae4`, compares the per-record argument, and returns the
matching result from `0x800ae480`. The verifier matched 140/140 bytes with
GCC 14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`033f9b71e7a91f36c63bdf565b6a35fb66787d1e91be1dff8a4ce4259f887c9d`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing record cleanup loop

`FUN_800294f8` adds a 40-byte exact match in
`src/ddr5thmix/StateTransition.s`. It clears the first byte of each of
four eight-byte slots beginning at `0x800e3958`. The verifier matched
40/40 bytes with GCC 14.2.0/binutils 2.43 against lawful executable
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`;
the reference/built SHA-256 is
`0320c5728b50b7d4d04e0e978c7f8132d4d538d351bc44e6836f6e7ac441029a`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing record reset

`FUN_800294d4` adds a 36-byte exact match in
`src/ddr5thmix/StateTransition.s`. It clears the active byte at
`0x800e3978` in the `FUN_800294f8` call delay slot, then delegates record
cleanup. The verifier matched 36/36 bytes with GCC 14.2.0/binutils 2.43
against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`81564b537e36dabd9adad30dd3275fdcde1edc810b47526671fe369cda61624b`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing record initializer

`FUN_80029480` adds an 84-byte exact match in
`src/ddr5thmix/StateTransition.s`. If the active byte at `0x800e3978` is
clear, it initializes the 16-byte record at `0x800e3958` with the two
arguments; otherwise it delegates to `FUN_800294f8`. The verifier matched
84/84 bytes with GCC 14.2.0/binutils 2.43 against lawful executable
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`;
the reference/built SHA-256 is
`41b3232a5c7ccc0e4994613c1e6dcb35910a0bdcf584e91104ec944af8de16b9`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing mode byte setter

`FUN_80029474` adds a 12-byte exact match in
`src/ddr5thmix/StateTransition.s`. It stores the first argument as a byte
at `0x800e397a`; the second argument is unused by the observed
implementation. The verifier matched 12/12 bytes with GCC
14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`e5496676138733641df07bdaf8e90d8bfcd7f6b725151c55e42a326023680146`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing buffer coordinator

`FUN_80029440` adds a 52-byte exact match in
`src/ddr5thmix/StateTransition.s`. It submits the 48-byte record at
`0x800e3958` through `FUN_8003bac8`, then invokes `FUN_80029474(4, 16)`.
The verifier matched 52/52 bytes with GCC 14.2.0/binutils 2.43 against
lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`bebdf92175ffcd4c8ae52e97b16ed5a8e0e872aa1ce81e6f5d678a0488856099`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Configuration index scaler

`FUN_80029410` adds a 48-byte exact match in
`src/ddr5thmix/StateTransition.s`. It evaluates the observed shift/add
polynomial, multiplies by `0xd722fb11`, and returns the HI product shifted
right by 11 bits. The verifier matched 48/48 bytes with GCC
14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`b834910c76dd480a6f55cb283ce9671db14d7aa7a86afc9feece88cda855fe58`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing state initializer

`FUN_8002906c` adds a 24-byte exact match in
`src/ddr5thmix/StateTransition.s`. It stores `0x3f01` at `0x800e37c0` and
clears byte `0x800e37d4`. `Invoke-FunctionMatch.ps1` matched 24/24 bytes with
GCC 14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`818c1c16989be3017c052b902fa428d86d8249345240999e8c68f07e765c5ce1`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing configuration updater

`FUN_80029084` adds a 216-byte exact match in
`src/ddr5thmix/StateTransition.s`. It clamps the input to `127`, scales it
by `127`, updates `0x800e37c0`, and either resets via `FUN_80024e00` or
computes direction/rate fields and timestamps through `FUN_800358f8(-1)`.
`Invoke-FunctionMatch.ps1` matched 216/216 bytes with GCC 14.2.0/binutils
2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`275e63b146ba9ee52e11c8d5dd86d3fa4c85beb85b97ce1633928aef4c8b3093`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing state getter

`FUN_8002915c` adds a 16-byte exact match in
`src/ddr5thmix/StateTransition.s`. It returns the value stored at
`0x800e37c0`. `Invoke-FunctionMatch.ps1` matched 16/16 bytes with GCC
14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`f6df0c9dd59a3bbedf69aab774844b4de09efe7c5451122befe6ebebaf44ab3d`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing value progression

`FUN_8002916c` adds a 188-byte exact match in
`src/ddr5thmix/StateTransition.s`. Mode `1` advances `0x800e37c0` with
saturation, mode `2` decrements it with a lower bound, clears mode byte
`0x800e37d4`, and invokes `FUN_80024e00`. `Invoke-FunctionMatch.ps1` matched
188/188 bytes with GCC 14.2.0/binutils 2.43 against lawful executable
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`;
the reference/built SHA-256 is
`787cd75d330ae92b52f4dcb824e2c4116b06b04a33a6dcc9a294d1ca6cc94474`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing byte initializer

`FUN_80029228` adds a 16-byte exact match in
`src/ddr5thmix/StateTransition.s`. It stores `0xff` at `0x800e38c0`.
`Invoke-FunctionMatch.ps1` matched 16/16 bytes with GCC 14.2.0/binutils
2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`f8a1807c87ea9c3b859c555c09e1f5cb3f8f0323a5b70deb30a23d5bd9ee1e9e`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing limit setter

`FUN_80029238` adds a 48-byte exact match in
`src/ddr5thmix/StateTransition.s`. It clamps the argument to `0xff`, stores
it at `0x800e38c0`, and invokes `FUN_80024e00`.
`Invoke-FunctionMatch.ps1` matched 48/48 bytes with GCC 14.2.0/binutils
2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`ef9b051954a42684ab2aff56dc01c864faa29f48c16e28422ccbd2050335e986`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing flag handler

`FUN_80029268` adds a 128-byte exact match in
`src/ddr5thmix/StateTransition.s`. It tests `0x800ae46c` and the `0x10`
result bit from `FUN_8003f738`, updates `0x800ae474`, and invokes
`FUN_80025c1c(3)` on the reset paths. `Invoke-FunctionMatch.ps1` matched
128/128 bytes with GCC 14.2.0/binutils 2.43 against lawful executable
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`;
the reference/built SHA-256 is
`caa8cbf4e89051770eed77111d8d450c33defaf395d8ff67990b1bc4ef75c12d`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing state initializer

`FUN_80029390` adds a 128-byte exact match in
`src/ddr5thmix/StateTransition.s`. It clears the completion word at
`0x800e39c0`, sets the active flag at `0x800ae478`, mirrors the cleared
value into `0x800ac890` and `0x800ac88c`, runs reset calls, invokes
`CdControlF(9, 0)`, and stores mode `5` at `0x800e39bc`. The verifier
matched 128/128 bytes with GCC 14.2.0/binutils 2.43 against lawful
executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`b4371577fe84a2c724ec00f79b96d0ade665551d13bd4864aa51672f53c102f7`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing mode-4 watchdog

`FUN_80029324` adds a 108-byte exact match in
`src/ddr5thmix/StateTransition.s`. It increments the record counter at
`0x800e39d4` only when mode is `4` and the completion field at `+0x28` is
zero; after `180` increments it calls `CdControlF(9, 0)`. The verifier
matched 108/108 bytes with GCC 14.2.0/binutils 2.43 against lawful
executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`cd8c94b7f2f738015a3ee3d612b58daaf7f0a601eaa77ba1dde4d7da721fdaa7`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Timing scale calculation

`FUN_800292e8` adds a 60-byte exact match in
`src/ddr5thmix/StateTransition.s`. It evaluates the observed polynomial in
the input and scales it with `0x51eb851f`, returning the HI product shifted
right by 5 bits. `Invoke-FunctionMatch.ps1` matched 60/60 bytes with GCC
14.2.0/binutils 2.43 against lawful executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`; the
reference/built SHA-256 is
`601b8d5baa37d5339c844c85236e97eb34a151d56ea82852ad79304bcd40aea6`.
This is a bounded semantic assembly reconstruction, not a claim about the
original source form.

# Acceptance boundary

This closes the workflow's smallest-build backlog item and satisfies the
function gate only for the functions listed above. Expanding the executable
requires adding one manifest entry and source at a time, preserving section
boundaries, then introducing whole-object ordering evidence before any
whole-image match claim.
