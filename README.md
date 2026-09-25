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

- `docs/FINDINGS.md` — what is locked this pass
- `docs/LOCKED_RECORD.md` — host, CY, ledger
- `docs/THEOREM_RESIDUAL_SURFACE.md` — official theorem about the surface S
- `docs/DERIVED_SURFACES.md` — D^b(S) vs D^b(X) vs D^b(Y); S is not Y
- `docs/Y_AND_MISS.md` — partner Y and Term B stay named and empty
- `docs/RESIDUAL_QUINTICS.md` — family and smoothness
- `docs/INTERSECTIONS.md` — full work: Pi^2, [S], pairings, C, chi(O_S)
- `docs/WRITTEN_OBJECTS.md` — I(L), discriminant, chi(O_S)
- `docs/DERIVED_EQUIVALENCES.md` — equivalences; why S is not Y
- `docs/TRICHOTOMY_NOTE.md` — blowup is not Y and not not-Hodge
- `docs/CONJECTURE_FM_PARTNER.md` — open partner conjecture
- `docs/CUBIC_KUZNETSOV.md` — cubic dictionary does not apply to V(F)
- `lean/FmPartnerConjecture.lean` — `fmPartnerStatus = .openConjecture`
- `lean/ResidualIdentity.lean` — sample checks of F|_L = t R

Sister record: [BenFrohman/HODGE](https://github.com/BenFrohman/HODGE).
HODGE `main` is ruleset-locked; this repo is the write target for the residual-surface pass.
NS memoirs from the local tree are listed in `ARTIFACTS.md` and belong in [NS_Millennium_Proof](https://github.com/BenFrohman/NS_Millennium_Proof).
