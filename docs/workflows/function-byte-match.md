---
type: Playbook
title: Per-function byte-match loop
description: Hash-gated assembly and comparison loop for reconstructed DDR 5th Mix functions.
tags: [ps1, workflow, matching, build, ddr5thmix]
timestamp: 2026-07-17T00:00:00-04:00
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

# Acceptance boundary

This closes the workflow's smallest-build backlog item and satisfies the
function gate only for the functions listed above. Expanding the executable
requires adding one manifest entry and source at a time, preserving section
boundaries, then introducing whole-object ordering evidence before any
whole-image match claim.
