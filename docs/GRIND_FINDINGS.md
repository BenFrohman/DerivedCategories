# Grind findings — Bridgeland stability on the locked host

Author: Benjamin Stanley Frohman
Email: frohmanbenjamin@gmail.com
ORCID: 0009-0006-7068-3718
GitHub: BenFrohman
X: @Investor0x
Copyright (c) 2026 Benjamin Stanley Frohman. License: CC BY 4.0. See LICENSE.
Date: 26 September 2026.

This note records what Bridgeland stability is allowed to do on

    F = x0^5 x3 + x3^6 + x1^5 x4 + x4^6 + x2^5 x5 + x5^6,
    X = V(F) ⊂ P^5,    Π = V(x3, x4, x5).

It does not write a fourfold partner Y, a kernel E, or a term of
rational_hodge_conjecture_is_false.

## Two Bridgeland theorems

Flops (Invent. Math. 2002). Birational Calabi–Yau threefolds are derived
equivalent. A flop appears as a moduli space of perverse point sheaves;
the universal family is the Fourier–Mukai kernel. Three-fold statement.
Bl_Π X has K = 2E ≇ O, so it is not a crepant partner of X.

Stability conditions (Duke 2007). A stability condition on a triangulated
category T is a pair (Z, P):

- Z : K0(T) → C a central charge,
- P(φ) ⊂ T a slicing by phase φ ∈ R,

with Harder–Narasimhan filtrations and the support property.
Stab(T) is a complex manifold. Each σ ∈ Stab(T) has a moduli space of
σ-semistable objects.

## What exists in other geometries

- Curves; many surfaces; some Picard-rank-one threefolds.
- Kuznetsov components of Fano threefolds and of cubic fourfolds
  (Bayer–Lahoz–Macrì–Stellari). On a cubic,
  D^b(X) = ⟨Ku(X), O, O(1), O(2)⟩ and Ku(X) is a 2-CY K3 category.
  Stability on Ku produces hyperkähler moduli and, in special cases,
  associated (twisted) K3s / FM kernels.
- Some K3^[2] fourfolds (dual double EPW sextics, GM fourfolds).
- Cheng 2025: stability on certain generalized Kummers, covers of Hilbert
  schemes of Enriques / bielliptic surfaces, and Cynk–Hulek CY manifolds
  with an automorphism of order 2 or 3. Other hosts.

## What is not written for V(F)

D^b(X) is a 4-Calabi–Yau category (Serre functor [4]). There is no
cubic-type exceptional collection. BLMS induction does not fire.
Cheng’s examples are not this plane-containing sextic.

A stability condition on D^b(X), even if one existed, is a pair (Z, P).
It is not:

- a fourfold Y ≇ X with ω_Y ≃ O_Y,
- a kernel E ∈ D^b(X × Y),
- a proof that some γ misses im(cl_X).

Moduli of stable objects can in other geometries produce hyperkähler
fourfolds or FM kernels. That dictionary is written for cubics and for
some K3^[2]. It is not written for V(F).

An EPW sextic is a typically singular sextic in P^5 whose double cover is
HK of K3^[2]-type. It is not the smooth CY hypersurface X = V(F).

## Locked split, unchanged

1. Y unwritten.
2. E unwritten.
3. ExistsNontrivial92 unwritten (Collatz ledger, other repo).
4. RemainingLemma unwritten (same).
5. rational_hodge_conjecture_is_false unwritten.
   (V(F), [Π]) and [S] = h^2 − [Π] are algebraic classes.

Equivalence on disk: D^b(X) ≃ HMF^{gr}(F). Same host.
Theorem on disk: a general residual S is a smooth quintic surface of
general type on X, K_S ≃ O_S(1).

Wall-crossing changes which objects are stable. It does not mint I(Y).
