# DerivedCategories

**Status:** Draft literature notes plus one geometric theorem about a surface.
**Author:** Benjamin Stanley Frohman (@BenFrohman)

Copyright (c) 2026 Benjamin Stanley Frohman. Apache License 2.0. See `LICENSE`.

Not Hodge. Not Tate. Not Clay. Not a counterexample. Not a fourfold partner.

## Paper

- `paper/Frohman_Residual_Surface_Preprint_2026.tex` — official residual-surface note. `pdflatex` twice.
- `paper/Frohman_Host_Ideals_2026.tex`
- `paper/Frohman_Determinantal_Correction_2026.tex`
- `ARTIFACTS.md` — full local-tree inventory vs this repo. PDFs are local-only.

## Start here

- `docs/STANDALONE_LEAN.md` — what “import would break a standalone file” means
- `docs/SYMBOLS.md` — F / F^T are CS strings; (2,2)-class; Hdg^2; Term A / Term B
- `docs/S_FAMILY.md` — family S_{a,b,c}; pairings from [S]=h^2-[Pi]; rank 2; not \u2200D
- `docs/BHK_CONSTRUCTION.md` — invertible F, chain blocks, A^T, dual weights P(3,2,3,2,3,2); F^T is a BHK *candidate string*, not Y
- `docs/RESIDUAL_NUMERALS.md` — locked intersections on V(F)
- `docs/FINDINGS.md` — what is locked this pass
- `docs/LOCKED_RECORD.md` — host, CY, ledger
- `docs/THEOREM_RESIDUAL_SURFACE.md` — official theorem about the surface S
- `docs/DERIVED_SURFACES.md` — D^b(S) vs D^b(X) vs D^b(Y); S is not Y
- `docs/DERIVED_EQUIVALENCE_AND_MIRRORS.md` — FM equivalence vs HMS; BHK transpose is not Y
- `docs/EQUATIONS.md` — F and F^T as polynomials
- `docs/DB_Y.md` — type of a written partner; inhabitant empty
- `docs/Y_AND_MISS.md` — partner Y and Term B stay named and empty
- `docs/RESIDUAL_QUINTICS.md` — family and smoothness
- `docs/INTERSECTIONS.md` — full work: Pi^2, [S], pairings, C, chi(O_S)
- `docs/S_MORE.md` — family, class, no new Hodge direction
- `docs/GRIND_LEDGER.md` — six partner fields empty; in-hand list
- `docs/WRITTEN_OBJECTS.md` — I(L), discriminant, chi(O_S)
- `docs/DERIVED_EQUIVALENCES.md` — equivalences; why S is not Y
- `docs/TRICHOTOMY_NOTE.md` — blowup is not Y and not not-Hodge
- `docs/CONJECTURE_FM_PARTNER.md` — open partner conjecture
- `docs/CUBIC_KUZNETSOV.md` — cubic dictionary does not apply to V(F)
- `lean/BHK.lean` — exponent matrix, det 27000, dual weights 3+2, dT=15
- `lean/Equations.lean` — F, FT, F_ne_FT
- `lean/Intersections.lean` — residual numerals, sorry-free
- `lean/SMore.lean` — span rank 2, standalone (no project import)
- `lean/FmPartnerConjecture.lean` — `fmPartnerStatus = .openConjecture`
- `lean/WrittenPartner.lean` — six-field type; rejects S, HMF, O_Delta
- `lean/ResidualIdentity.lean` — sample checks of F|_L = t R

Sister record: [BenFrohman/HODGE](https://github.com/BenFrohman/HODGE).
HODGE `main` is ruleset-locked; this repo is the write target for the residual-surface pass.
