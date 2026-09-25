# Derived equivalence and mirror symmetry (WIP)

Author: Benjamin Stanley Frohman (@BenFrohman).
Copyright (c) 2026 Benjamin Stanley Frohman. Apache-2.0.
Not Hodge. Not Term B. Not a written partner Y.

## Derived equivalence

Two varieties X and Y are derived-equivalent when there is an exact
equivalence of triangulated categories

    D^b(Coh X) ≃ D^b(Coh Y).

Orlov: every such equivalence between smooth projective varieties is
Fourier-Mukai. There is a kernel E in D^b(X × Y) with

    Φ_E = Rq_* (p^*(-) ⊗^L E).

The identity kernel is O_Δ on X × X. That gives D^b(X) ≃ D^b(X),
not a partner.

### Examples that are written

1. Abelian variety A and its dual Â. Kernel: Poincaré bundle on A × Â.
2. K3 surfaces with a Hodge isometry of Mukai lattices (Mukai-Orlov).
   Partners need not be isomorphic.
3. Mukai flop of a plane with normal bundle O(-1) ⊕ O(-1).
   Not available on V(F): here c_1(N_{Π/X}) = -3h.
4. Pfaffian-Grassmannian / some cubic fourfolds: Kuznetsov component
   A_X ≃ D^b(S) or D^b(S, α). Wrong degree for V(F).
5. Orlov hypersurface theorem: D^b(V(F)) ≃ HMF^gr(F).
   Same polynomial. Not a second fourfold.

Bondal-Orlov: if ω or ω^{-1} is ample, derived equivalence implies
isomorphism. That is why D^b(S) reconstructs the residual quintic.
It fails on X = V(F) because K_X ≃ O. Failure permits a partner.
It does not name one.

## Homological mirror symmetry

Kontsevich: a Calabi-Yau X and a mirror X^vee should satisfy

    D^b(X) ≃ Fuk(X^vee)
    Fuk(X) ≃ D^b(X^vee)

(up to the usual completed / split-closed variants).

That is not D^b(X) ≃ D^b(X^vee) in general.

- The B-side is coherent sheaves (complex geometry).
- The A-side is the Fukaya category (symplectic geometry / Lagrangians).

Sheridan: HMS for Calabi-Yau hypersurfaces in projective space relates
the Fukaya category of the hypersurface to coherent sheaves on a
mirror orbifold / Landau-Ginzburg model, not to a second smooth
hypersurface with the same D^b.

Classical (Hodge) mirror symmetry swaps Hodge numbers.
Homological mirror symmetry swaps categories of different kinds.
A Fourier-Mukai partner is two algebraic varieties on the same side.

### Worked examples

- Quintic threefold in P^4. Greene-Plesser / Batyrev mirror is a
  quotient of a Fermat quintic. HMS (Sheridan) matches Fukaya of one
  side to D^b of the other orbifold. That pair is a mirror pair, not
  a statement that two smooth quintics are derived-equivalent.
- Fermat-type invertible polynomials: Berglund-Huebsch-Krawitz.
  W invertible, W^T the transpose polynomial, G a group of diagonal
  symmetries. The mirror is often an orbifold V(W^T)/G^T or an LG
  model (W^T, G^T). Chiodo-Ruan: Hodge diamonds rotate.
  Shoemaker: multiple BHK mirrors are birational to each other.
  That is classical / orbifold mirror symmetry. It is not automatically
  D^b(V(W)) ≃ D^b(V(W^T)).

## Application to the locked host

    F = x0^5 x3 + x3^6 + x1^5 x4 + x4^6 + x2^5 x5 + x5^6
    X = V(F) subset P^5

F is a sum of three chain blocks of type u^5 v + v^6.
Each block has exponent matrix [[5,1],[0,6]]. The transpose is
[[5,0],[1,6]], i.e. u^5 + u v^6.

A BHK *candidate* is therefore the orbifold / LG model attached to

    F^T = x0^5 + x0 x3^6 + x1^5 + x1 x4^6 + x2^5 + x2 x5^6

together with a dual group. That candidate, if written carefully, is a
mirror in the BHK sense. It is not yet:

- a smooth projective fourfold Y ≨ X,
- a kernel E on X × Y,
- a proof Φ_E : D^b(X) → D^b(Y).

HMS, if it held for this F, would compare D^b(X) to a Fukaya or matrix-
factorization category of the transpose model. That still does not fill
the six fields of WrittenPartner.

## What remains empty

Y, E, Φ_E. Status: openConjecture.
S, HMF^gr(F), and O_Δ stay rejected.
"Until now" is not a construction date. No hypersurface, complete
intersection, or Grassmannian section is recorded as derived-equivalent
to this sextic.
