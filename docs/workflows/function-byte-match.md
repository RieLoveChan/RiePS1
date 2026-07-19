---
type: Playbook
title: Per-function byte-match loop
description: Hash-gated assembly and comparison loop for reconstructed DDR 5th Mix functions.
tags: [ps1, workflow, matching, build, ddr5thmix]
timestamp: 2026-07-18T00:00:00-04:00
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

# Accepted functions

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
offset `0x2a`, and clears the still-unknown `u16` fields at `0x2c` and `0x2e`.
The manifest supplies the external symbol address, while the generated linker
script places the function at its runtime address and resolves the MIPS
`HI16`/`LO16` pair.

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
then clears submode and the two unknown fields at offsets `0x2a`, `0x2c`, and
`0x2e`. With the same non-volatile external `PTR_DAT_800ac8e8` declaration,
structure layout, compiler flags, and generated linker placement established
for `FUN_80023230`, the first reconstruction attempt matches all 32 reference
bytes. The built function bytes and reference slice share SHA-256
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
clears the unknown `u16` field at offset `0x2c`, reads and increments the
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

# Acceptance boundary

This closes the workflow's smallest-build backlog item and satisfies the
function gate only for the functions listed above. Expanding the executable
requires adding one manifest entry and source at a time, preserving section
boundaries, then introducing whole-object ordering evidence before any
whole-image match claim.
