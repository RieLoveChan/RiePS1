"""Disassembles byte ranges of the lawful executable into this project's
.s source convention (per-instruction .L labels, $-prefixed registers,
GNU-assembler-ready operands) for the "disassemble and hand-transcribe"
batch reconstruction workflow described in
/docs/workflows/function-byte-match.md.

Local branch/jump targets (within the function's own address range) become
.L labels; everything else (calls to other functions, PsyQ library
addresses) stays a raw hex literal, matching this project's existing .s
sources. An absolute `j`/`jal` to a local label needs the manifest entry's
`"symbols": {}` (or a defined symbol map) so Invoke-FunctionMatch.ps1 links
the object at its real address before extracting bytes -- MIPS J-format
encoding depends on the placement of the instruction itself, and an
unlinked object assembles at address 0.

Works around a GNU objdump quirk: `objdump -D` silently collapses 2+
consecutive byte-identical instruction words into a bare "..." line,
dropping their addresses from linear disassembly. Detected as a gap in the
parsed address sequence and patched by re-disassembling each missing word
on its own (a lone word never triggers the compression).

Usage:
    python dis2asm.py <exe_path> <outdir> < functions.csv

Input on stdin: one "0xADDR,SIZE,NAME" triple per line (hex address,
decimal size in bytes, function/label name -- matches the manifest's
"address"/"size"/"name" fields in /config/ddr5thmix/build.json).

Output: one "<outdir>/<NAME>.s" file per input line, GNU-assembler-ready
(pair with a linker script/manifest entry per the existing convention
before running Invoke-FunctionMatch.ps1). Also prints one summary CSV line
per function to stdout: "name,addr,size,file_offset,has_local_j,n_insn" --
has_local_j indicates whether the manifest entry needs "symbols": {}.

Requires mipsel-none-elf-objdump on PATH, or set MIPS_TOOLCHAIN_BIN to its
directory (same convention as Invoke-FunctionMatch.ps1). The executable's
load address is read from /config/ddr5thmix/build.json.
"""
import subprocess, sys, os, re, json, shutil, tempfile

def find_objdump():
    env_dir = os.environ.get('MIPS_TOOLCHAIN_BIN')
    if env_dir:
        candidate = os.path.join(env_dir, 'mipsel-none-elf-objdump.exe')
        if os.path.isfile(candidate):
            return candidate
    appdata = os.environ.get('APPDATA')
    if appdata:
        candidate = os.path.join(appdata, 'mips', 'mips', 'bin', 'mipsel-none-elf-objdump.exe')
        if os.path.isfile(candidate):
            return candidate
    found = shutil.which('mipsel-none-elf-objdump')
    if found:
        return found
    raise RuntimeError('mipsel-none-elf-objdump not found; set MIPS_TOOLCHAIN_BIN')

def load_base_address(repo_root, manifest_rel=None):
    if manifest_rel is None:
        manifest_rel = os.path.join('config', 'ddr5thmix', 'build.json')
    manifest_path = os.path.join(repo_root, manifest_rel)
    with open(manifest_path, encoding='utf-8') as f:
        manifest = json.load(f)
    load_addr = int(manifest['executable']['load_address'], 16)
    header_size = int(manifest['executable']['header_size'])
    return load_addr - header_size

regs = set("""zero at v0 v1 a0 a1 a2 a3 t0 t1 t2 t3 t4 t5 t6 t7 s0 s1 s2 s3 s4 s5 s6 s7
t8 t9 k0 k1 gp sp fp ra s8""".split())

def dollarize(operands):
    parts = re.split(r'(\W+)', operands)
    return ''.join('$' + p if p in regs else p for p in parts)

def disasm_bytes(objdump, data, addr):
    """Disassemble a raw byte blob starting at addr, returns objdump stdout.
    Small/no-repeat slices never trigger objdump's '...' repeat compression."""
    with tempfile.NamedTemporaryFile(delete=False, suffix='.bin') as tf:
        tf.write(data)
        tmppath = tf.name
    try:
        result = subprocess.run(
            [objdump, "-b", "binary", "-m", "mips:isa32", "-EL", "-M", "no-aliases",
             "-D", tmppath, f"--adjust-vma=0x{addr:08x}"],
            capture_output=True, text=True, check=True)
        return result.stdout
    finally:
        os.unlink(tmppath)

def disasm(objdump, exe_path, base, addr, size):
    off = addr - base
    with open(exe_path, 'rb') as f:
        f.seek(off)
        data = f.read(size)
    out_text = disasm_bytes(objdump, data, addr)

    insn_re = re.compile(r'^([0-9a-f]{8}):')
    seen = [int(m.group(1), 16) for m in (insn_re.match(l) for l in out_text.splitlines()) if m]
    patches = {}
    prev = None
    for a in seen:
        if prev is not None and a - prev != 4:
            gap_addr = prev + 4
            while gap_addr < a:
                word = data[gap_addr - addr: gap_addr - addr + 4]
                patch_text = disasm_bytes(objdump, word, gap_addr)
                for line in patch_text.splitlines():
                    m = insn_re.match(line)
                    if m and int(m.group(1), 16) == gap_addr:
                        patches[gap_addr] = line
                        break
                gap_addr += 4
        prev = a
    if patches:
        merged = []
        patch_addrs = sorted(patches)
        pi = 0
        for line in out_text.splitlines():
            m = insn_re.match(line)
            if m:
                a = int(m.group(1), 16)
                while pi < len(patch_addrs) and patch_addrs[pi] < a:
                    merged.append(patches[patch_addrs[pi]])
                    pi += 1
            merged.append(line)
        while pi < len(patch_addrs):
            merged.append(patches[patch_addrs[pi]])
            pi += 1
        out_text = '\n'.join(merged)
    return out_text, off

def convert(dis_text, start_addr, end_addr, func_name):
    insn_re = re.compile(r'^([0-9a-f]{8}):\s+[0-9a-f]{8}\s+\t(\S+)(?:\s+(.*))?$')
    addrs = []
    for line in dis_text.splitlines():
        m = insn_re.match(line.rstrip('\n'))
        if not m:
            continue
        addr = int(m.group(1), 16)
        if addr < start_addr or addr >= end_addr:
            continue
        addrs.append((addr, m.group(2), m.group(3) or ''))

    def fix_branch_target(operands):
        m = re.search(r'0x([0-9a-f]{8})$', operands)
        if not m:
            return operands, None
        tgt = int(m.group(1), 16)
        if start_addr <= tgt < end_addr:
            return operands[:m.start()] + '.L%08x' % tgt, tgt
        return operands, None

    has_local_j = False
    out = ['.set noreorder', '.set noat', '.set nomacro', '',
           '.section .text.%s' % func_name, '.globl %s' % func_name,
           '.type %s, @function' % func_name, '%s:' % func_name,
           '.L%08x:' % start_addr]
    for addr, mnem, operands in addrs:
        operands, localtgt = fix_branch_target(operands)
        if localtgt is not None and mnem == 'j':
            has_local_j = True
        operands = dollarize(operands)
        if operands:
            out.append('/* 0x%08x */ %s\t%s' % (addr, mnem, operands))
        else:
            out.append('/* 0x%08x */ %s' % (addr, mnem))
        nxt = addr + 4
        if nxt < end_addr:
            out.append('.L%08x:' % nxt)
    out.append('.size %s, .-%s' % (func_name, func_name))
    return '\n'.join(out) + '\n', has_local_j, len(addrs)

if __name__ == '__main__':
    exe_path, outdir = sys.argv[1], sys.argv[2]
    manifest_rel = sys.argv[3] if len(sys.argv) > 3 else None
    repo_root = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..'))
    objdump = find_objdump()
    base = load_base_address(repo_root, manifest_rel)

    funcs = []  # (addr, size, name)
    for line in sys.stdin:
        line = line.strip()
        if not line:
            continue
        addr_s, size_s, name = line.split(',')
        funcs.append((int(addr_s, 16), int(size_s), name))

    os.makedirs(outdir, exist_ok=True)
    for addr, size, name in funcs:
        dis_text, off = disasm(objdump, exe_path, base, addr, size)
        src, has_j, n_insn = convert(dis_text, addr, addr + size, name)
        sfile = os.path.join(outdir, f"{name}.s")
        with open(sfile, 'w', newline='\n') as f:
            f.write(src)
        print(f"{name},0x{addr:08x},{size},0x{off:x},{has_j},{n_insn}")
