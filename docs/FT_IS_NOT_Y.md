# F^T is a BHK mirror candidate. It is not Y. It does not prove Hodge.

Author: Benjamin Stanley Frohman (@BenFrohman).
Copyright (c) 2026 Benjamin Stanley Frohman. Apache-2.0.

Correct polynomial (do not use the truncated string):

    F   = x0^5 x3 + x3^6 + x1^5 x4 + x4^6 + x2^5 x5 + x5^6
    F^T = x0^5 + x0 x3^6 + x1^5 + x1 x4^6 + x2^5 + x2 x5^6

## Two different words: mirror vs partner

A *BHK mirror* of an orbifold X_A / G is the orbifold

    V(F^T) / G^T    in    P(3,2,3,2,3,2)

or the Landau-Ginzburg pair (F^T, G^T).

That is a real construction (Berglund-Huebsch 1993, Krawitz 2009).
Chiodo-Ruan: Chen-Ruan Hodge diamonds rotate. That is what
“mirror” means here.

A *WrittenPartner Y* on this ledger is a smooth projective fourfold
Y ≢≈ V(F), ω_Y ≈ O_Y, plus E in D^b(X × Y) with Φ_E an equivalence.

Those are not the same sentence. Calling F^T “just Y” changes the
definition of Y that is already locked.

Why the raw hypersurface V(F^T) fails the locked Y:

1. Equations — the string F^T is only the potential. Ambient is
   weighted P(3,2,3,2,3,2), degree 15, not ordinary P^5.
2. Smooth projective fourfold — weighted space is singular.
   Quasismoothness of V(F^T) and a crepant resolution are extra.
3. Y ≢≈ X — F^T ≠ F as strings (`F_ne_FT`). That is not an
   isomorphism type of varieties.
4. ω trivial — CY as a weighted hypersurface, after the right
   quotient. Not yet checked as a smooth manifold Y.
5. Kernel E on X × Y — unwritten.
6. Φ_E an equivalence — unwritten.

Favero-Kelly (Adv. Math. 2019): BHK mirrors of two invertible
hypersurfaces in the *same* Gorenstein Fano toric ambient are
derived-equivalent *to each other*. HMS for BHK pencils in
projective space is

    Fuk(X) ≈ D^b(BHK pencil of F^T),

not D^b(X) ≈ D^b(smooth V(F^T)). So even the best derived-category
theorems about BHK do not identify F^T with the locked Y.

## Groups for this F (sketch)

Each chain block u^5 v + v^6 has Aut ≈ Z/30Z.
Three blocks: Aut(F) contains a group of order 30^3 = 27000 = det A.
J(F) for unweighted P^5, degree 6, is μ_6 acting by simultaneous
scaling (order 6). For the smooth hypersurface X = V(F) itself one
takes G = J(F), so the acting group on X is trivial. The BHK mirror
of that choice is

    V(F^T) / (SL(F^T) / J(F^T)).

G^T is not written as an explicit list of tuples in this repo.
Recording the shape is not computing the quotient stack.

## Does F^T prove Hodge?

No. “Close” was the wrong word. “Prove” is also the wrong word.

Hodge (Term A) is: every rational Hodge class is a Q-combination of
cycles. BHK / Chiodo-Ruan compares Hodge *numbers* of an orbifold
and its transpose orbifold. Matching or rotating diamonds does not
produce surfaces Z_i with cl(∑ a_i [Z_i]) = γ for every γ in Hdg^2(X),
and it does not do that for every fourfold D.

Term B is a miss class. A mirror candidate is not a miss.

What BHK *does* release: a named transpose potential and a named
weighted ambient. That is a construction in mirror symmetry, not a
Clay sentence.

## Other uses of this invertible F (not Y, not Hodge)

- FJRW / LG A-model of (F, G) and B-model of (F^T, G^T).
- Chen-Ruan cohomology of the orbifolds (Hodge-number duality).
- Point counts / hypergeometric Picard-Fuchs of the dual weights
  (Mukai-Oka, Kloosterman-type arithmetic of invertible pencils).
- Sasakian links of the isolated singularity F=0 in A^6
  (Gomez: BH transpose produces associated Sasaki manifolds).
- Orlov: D^b(X) ≈ HMF^gr(F). Same polynomial, still not Y.
- Kreuzer-Skarke classification: this F is three chain atoms.
  Atomic type is bookkeeping, not a partner.

## Ledger

F^T stays a BHK candidate string. Y stays the empty six-field slot.
Term A and Term B stay uninhabited. Residual numerals on S unchanged.
