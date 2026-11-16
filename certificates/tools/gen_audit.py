#!/usr/bin/env python3
"""Kernel-certificate helper: list this repository's built Lean modules and write a Lean
file that runs `collectAxioms` (the function behind `#print axioms`) on every theorem
declared in them.  Usage: python3 certificates/tools/gen_audit.py OUT.lean MODULES.txt"""
import os, subprocess, sys
out, modlist = sys.argv[1], sys.argv[2]
files = subprocess.check_output(['git', 'ls-files', '*.lean']).decode().split()
root = next(r for r in ['.lake/build/lib/lean', '.lake/build/lib', 'build/lib'] if os.path.isdir(r))
tracked = set(f[:-5] for f in files if not f.startswith(('.lake/', 'lake-packages/')))
mods = []
for dp, _, fs in os.walk(root):
    for fn in fs:
        if not fn.endswith('.olean') or fn.count('.') != 1:
            continue
        rel = os.path.relpath(os.path.join(dp, fn), root)[:-6]
        # keep modules whose source file is tracked in this repository (possibly under a srcDir)
        if any(t == rel or t.endswith('/' + rel) for t in tracked):
            mods.append(rel.replace(os.sep, '.'))
mods.sort()
open(modlist, 'w').write('\n'.join(mods) + '\n')
split = len(sys.argv) > 3 and sys.argv[3] == 'split'
def q(m): return '.'.join('«' + p + '»' for p in m.split('.'))
def write(path, ms):
    names = ', '.join('`' + q(m) for m in ms)
    imports = '\n'.join('import ' + q(m) for m in ms)
    open(path, 'w').write(f"""import Lean
{imports}

open Lean Elab Command

/-- Prints `#print axioms`-style lines for every theorem declared in the listed modules. -/
elab "#kernel_certificate_audit" : command => do
  let env ← getEnv
  let mods : Array Name := #[{names}]
  for m in mods do
    match env.getModuleIdx? m with
    | none => IO.println s!"MODULE NOT LOADED {{m}}"
    | some i =>
      for n in (env.header.moduleData[i.toNat]!).constNames do
        match env.find? n with
        | some (.thmInfo _) =>
          if !n.isInternal then
            let ax ← collectAxioms n
            let axs := ", ".intercalate (ax.toList.map toString)
            if ax.isEmpty then IO.println s!"'{{n}}' does not depend on any axioms [module {{m}}]"
            else IO.println s!"'{{n}}' depends on axioms: [{{axs}}] [module {{m}}]"
        | _ => pure ()

#kernel_certificate_audit
""")
if split:
    for k, m in enumerate(mods):
        write(out[:-5] + f'_{k:03d}.lean', [m])
else:
    write(out, mods)
print(f'{len(mods)} modules' + (' (one audit file per module)' if split else ''))
