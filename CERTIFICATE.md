# Verification certificate — DerivedCategories v1.1.0

Paper: [A Machine-Checked Numerical Ledger for the Locked Sextic Fourfold in P5 in Lean 4](paper/Frohman_Locked_Sextic_Numerical_Ledger_Lean_2026.pdf)  
Author: Benjamin Stanley Frohman <frohmanbenjamin@gmail.com>

- `lake build`: succeeds (enforced by `.github/workflows/certify.yml` and `lean.yml`).
- `sorry` / `admit`: none (`scripts/check_no_sorry.py`).
- `native_decide`: none.
- User `axiom` declarations: none.
- Axioms used: only Lean's standard `propext`, `Classical.choice`, `Quot.sound` (or none) — output of `#print axioms` over all 36 audited declarations (`AxiomAudit*.lean`) below.

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
'Frohman.Sextic.hmf_is_same_host' does not depend on any axioms
'Frohman.Sextic.identity_is_X' does not depend on any axioms
'Frohman.Sextic.kernel_unwritten' does not depend on any axioms
'Frohman.Sextic.partner_equations_unwritten' does not depend on any axioms
'Frohman.Sextic.partner_must_be_fourfold' does not depend on any axioms
'Frohman.Sextic.partner_must_not_be_X' does not depend on any axioms
'Frohman.Sextic.residual_fails_canonical' does not depend on any axioms
'Frohman.Sextic.residual_fails_dim' does not depend on any axioms
'Frohman.Residual.S_class_is_difference' does not depend on any axioms
'Frohman.Residual.S_self_from_span' does not depend on any axioms
'Frohman.Residual.algebraic_span_rank_two' does not depend on any axioms
```
