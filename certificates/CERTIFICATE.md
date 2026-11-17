# Kernel certificate: DerivedCategories

This file records a reproducible machine check of the Lean 4 development in this repository. Lean does not issue a signed "official" certificate. What is recorded here is the exact commit and toolchain, the complete `lake build` log, a scan for `sorry`/`admit`/`native_decide`/`axiom`, the `#print axioms` result for every theorem the build produces, and a replay of every module through Lean's kernel with the toolchain's `leanchecker`. Each check can be rerun with the command at the end.

| Item | Value |
|---|---|
| Repository | https://github.com/BenFrohman/DerivedCategories |
| Certified commit | `e6c1e585ccef61023088d7ad0851a43675f56ef0` (branch `main`) |
| Lean sources | the certified commit is the `main` head itself; the certificate files were committed afterwards in a commit that changes no `.lean`, lakefile, manifest or toolchain file |
| lean-toolchain | `leanprover/lean4:v4.34.0` |
| Lean | Lean (version 4.34.0, x86_64-unknown-linux-gnu, commit 293d5d0c0c3f3dded4688b3ccd6a33939ac5102b, Release) |
| Mathlib | none (no Mathlib dependency) |
| Date (UTC) | 2026-11-16T20:49:07Z |
| CI run | https://github.com/BenFrohman/DerivedCategories/actions/runs/43953535475 |
| `lake build` | `Build completed successfully (9 jobs).` ([build.log](build.log)) |
| sorry / admit / native_decide / axiom scan | `RESULT: 0 hits` ([sorry-scan.txt](sorry-scan.txt)) |
| `#print axioms` | `AUDIT PASS: 42 theorems in 7 modules depend only on propext, Classical.choice, Quot.sound (or on no axioms)` ([axioms.txt](axioms.txt)) |
| Kernel replay (leanchecker) | `RESULT: 7 of 7 modules replayed through the kernel, 0 failures` ([leanchecker.txt](leanchecker.txt)) |

## What each check means

- **Build.** `lake build` of the default targets with the pinned toolchain. Mathlib comes from `lake exe cache get` (it is never rebuilt from source). The build elaborates every proof and sends each declaration to Lean's kernel.
- **Scan.** `certificates/tools/sorry_scan.py` strips comments and strings from every tracked `.lean` file and reports any `sorry`, `admit`, `native_decide` or `axiom` declaration. Result: RESULT: 0 hits.
- **Axioms.** `certificates/tools/gen_audit.py` imports all 7 built modules ([modules.txt](modules.txt)) and calls `Lean.collectAxioms`, the function behind `#print axioms`, on every theorem declared in them (42 theorems, auto-generated internal names excluded). `check_audit.py` fails unless each depends only on `propext`, `Classical.choice` and `Quot.sound`, or on no axioms. Raw output: [axioms.raw.txt](axioms.raw.txt); generated Lean file: [KernelCertificateAudit.lean.txt](KernelCertificateAudit.lean.txt).
- **Kernel replay.** checker: leanchecker source shipped with v4.34.0 (src/lean/LeanChecker.lean), prefix match -> exact match, run with lean --run. For each module, the checker loads the module's imports from their `.olean` files and replays every declaration of that module through the kernel. The stock checker treats its argument as a module-name prefix and replays all matching modules in parallel, which runs out of memory on a root module, so it is run once per module with exact matching (the one-line patch is printed in [leanchecker.txt](leanchecker.txt)). The checker's own documentation describes it as a tool to detect environment hacking, not an independent external verifier; imported Mathlib and core declarations are trusted from their `.olean` files.

## Scope

The axiom result says the listed theorems are proved from Lean's standard axioms. It does not by itself say what the theorems mean; read the statements in the sources. Conditional theorems remain conditional on their hypotheses.

Full `#print axioms` output (verbatim from `axioms.txt`):

```
'Frohman.BHK.FT_not_unweighted_deg6' does not depend on any axioms
'Frohman.BHK.F_cy_weights' does not depend on any axioms
'Frohman.BHK.F_homogeneous' does not depend on any axioms
'Frohman.BHK.block_degree_u5' does not depend on any axioms
'Frohman.BHK.block_degree_u_v6' does not depend on any axioms
'Frohman.BHK.detA_ne_zero' does not depend on any axioms
'Frohman.BHK.det_block' does not depend on any axioms
'Frohman.BHK.dual_cy' does not depend on any axioms
'Frohman.BHK.invertible' does not depend on any axioms
'Frohman.BHK.transpose_block' depends on axioms: [propext]
'Frohman.Sextic.F_has_three_chain_blocks' depends on axioms: [propext, Classical.choice, Quot.sound]
'Frohman.Sextic.F_ne_FT' does not depend on any axioms
'Frohman.Sextic.PartnerStatus.ofNat_ctorIdx' does not depend on any axioms
'Frohman.Sextic.PartnerStatus.openConjecture.sizeOf_spec' does not depend on any axioms
'Frohman.Sextic.PartnerStatus.theoremProved.sizeOf_spec' does not depend on any axioms
'Frohman.Sextic.not_vacuous_true' does not depend on any axioms
'Frohman.Residual.S_degree' does not depend on any axioms
'Frohman.Residual.S_meets_Pi' does not depend on any axioms
'Frohman.Residual.S_self' does not depend on any axioms
'Frohman.Residual.chi_S' does not depend on any axioms
'Frohman.Residual.curve_genus' does not depend on any axioms
'Frohman.Residual.deg_X' does not depend on any axioms
'Frohman.Residual.geometric_genus' does not depend on any axioms
'Frohman.Residual.no_new_independent_class' does not depend on any axioms
'Frohman.Residual.plane_meets_P3' does not depend on any axioms
'Frohman.Residual.self_intersection_Pi' does not depend on any axioms
'Frohman.Residual.topological_euler' does not depend on any axioms
'Frohman.Residual.samples_hold' does not depend on any axioms
'Frohman.Residual.S_class_is_difference' does not depend on any axioms
'Frohman.Residual.S_self_from_span' does not depend on any axioms
'Frohman.Residual.algebraic_span_rank_two' does not depend on any axioms
'Frohman.Sextic.WrittenPartner.mk.inj' does not depend on any axioms
'Frohman.Sextic.WrittenPartner.mk.injEq' depends on axioms: [propext]
'Frohman.Sextic.WrittenPartner.mk.sizeOf_spec' does not depend on any axioms
'Frohman.Sextic.hmf_is_same_host' does not depend on any axioms
'Frohman.Sextic.identity_is_X' does not depend on any axioms
'Frohman.Sextic.kernel_unwritten' does not depend on any axioms
'Frohman.Sextic.partner_equations_unwritten' does not depend on any axioms
'Frohman.Sextic.partner_must_be_fourfold' does not depend on any axioms
'Frohman.Sextic.partner_must_not_be_X' does not depend on any axioms
'Frohman.Sextic.residual_fails_canonical' does not depend on any axioms
'Frohman.Sextic.residual_fails_dim' does not depend on any axioms
```

## Rebuild

```
git clone https://github.com/BenFrohman/DerivedCategories.git && cd DerivedCategories && git checkout e6c1e585ccef61023088d7ad0851a43675f56ef0 && lake build && python3 certificates/tools/sorry_scan.py && python3 certificates/tools/gen_audit.py /tmp/KernelCertificateAudit.lean /tmp/modules.txt && lake env lean /tmp/KernelCertificateAudit.lean > /tmp/axioms.raw.txt && python3 certificates/tools/check_audit.py /tmp/axioms.raw.txt | tail -n 1
```
