# Berglund-Huebsch-Krawitz construction for the locked sextic

Author: Benjamin Stanley Frohman (@BenFrohman).
Copyright (c) 2026 Benjamin Stanley Frohman. Apache-2.0.
Not Y. Not Term B. Not a Clay close.

## What BHK is

Berglund-Huebsch (1993), dual group by Krawitz (2009).
Input: an *invertible* quasi-homogeneous polynomial

    F_A = sum_{i} prod_{j} x_j^{a_{ij}}

with square exponent matrix A = (a_{ij}) invertible over Q, a unique
critical point at the origin, and positive integer weights w_j such that
every monomial has the same degree d. Kreuzer-Skarke: every invertible
potential is a sum of three atomic types

    Fermat:  x^a
    loop:    x1^{a1} x2 + x2^{a2} x3 + ... + xm^{am} x1
    chain:   x1^{a1} x2 + x2^{a2} x3 + ... + xm^{am}.

Calabi-Yau condition: sum_j w_j = d.

The Berglund-Huebsch transpose is the polynomial F_{A^T} of A^T, living
in the weighted projective space of the *dual* weights. Krawitz supplies
a dual group G^T of diagonal symmetries. The BHK mirror of the orbifold
X_A / G is the orbifold

    X_{A^T} / G^T

or, on the Landau-Ginzburg side, the pair (F_{A^T}, G^T).

That is a mirror in the BHK / LG / orbifold sense. It is not automatically
a smooth projective fourfold Y with D^b(X) ≈ D^b(Y).

## This host

    F = x0^5 x3 + x3^6 + x1^5 x4 + x4^6 + x2^5 x5 + x5^6.

Three chain blocks of type u^5 v + v^6. Variable order for the matrix
(x0, x3, x1, x4, x2, x5):

    A = diag( [[5,1],[0,6]], [[5,1],[0,6]], [[5,1],[0,6]] ).

det A = 30^3 = 27000 ≠ 0, so F is invertible. Weights in unweighted P^5:

    w = (1,1,1,1,1,1),   d = 6,   sum w = d.

Jacobian vanishes only at the origin in A^6: X = V(F) is a smooth
Calabi-Yau fourfold in ordinary P^5.

## The transpose string

One block [[5,1],[0,6]]^T = [[5,0],[1,6]] is u^5 + u v^6. Hence

    F^T = x0^5 + x0 x3^6 + x1^5 + x1 x4^6 + x2^5 + x2 x5^6.

F^T is *not* homogeneous of one degree in unweighted P^5
(deg x0^5 = 5, deg x0 x3^6 = 7). The correct ambient is the weighted
space of the dual weights. For one block, 5 w_u = d_T and
w_u + 6 w_v = d_T. Integer solution: d_T = 15, w_u = 3, w_v = 2.
Three blocks:

    F^T lives in P(3,2,3,2,3,2), degree 15.
    sum of weights = 15 = d_T, still Calabi-Yau as a weighted hypersurface.

The actual BHK mirror is not the string F^T alone. It is the stack

    V(F^T) / G^T   subset   P(3,2,3,2,3,2)

or the LG pair (F^T, G^T), where G^T is Krawitz dual to a chosen
diagonal symmetry group of F. The trivial-group dual is SL(F^T)/J(F^T).
That group and a smoothness / crepant-resolution analysis are not written.

Lean lock: `lean/BHK.lean`, `lean/Equations.lean` (`F_ne_FT`).

## What "candidate string" means

A *string* here is a finite list of characters naming a polynomial.
`FT` in Lean is type `String`. Calling F^T a BHK candidate string means:

1. The exponent-matrix transpose of this invertible F is that polynomial.
2. BHK therefore *names* a weighted hypersurface / LG model as the
   formal transpose partner of F.
3. The ambient weights, the dual group, quasismoothness of V(F^T) in
   the weighted space, and any crepant resolution, are extra data.
   Only the polynomial string is recorded.

It does not mean a string in string theory, a 2-form, or a qubit.

## Does this resolve an open problem?

No.

| Question | Status after recording F^T |
|---|---|
| Is F invertible of chain type? | Yes. Classical Kreuzer-Skarke. |
| Does BHK assign a transpose potential? | Yes. That is the definition. |
| Is V(F^T)/G^T the BHK mirror of X/G? | By construction, once G and G^T are chosen. Not newly proved. |
| Is V(F^T) a smooth projective fourfold in ordinary P^N? | No. Weighted P(3,2,3,2,3,2). |
| Is there E on X × V(F^T) with Φ_E an equivalence? | Unwritten. BHK ≠ Fourier-Mukai partner. |
| Does this prove Hodge on X, or on all fourfolds? | No. BHK is Hodge-number / LG duality, not cycle-class surjectivity. |
| Does this inhabit Term B (Δ_miss ≠ ∅)? | No. |
| Does Chiodo-Ruan / Shoemaker close anything new for this F? | Those theorems apply to the general invertible class. Instantiating them on F is not a new theorem. |

BHK is a 1990s construction. Writing the transpose of this particular F
is bookkeeping. It does not fill WrittenPartner and does not release Clay.

## Residual numerals (in hand, already locked)

On X = V(F), with [S] = h^2 - [Π]:

    h^4 = 6,     h^2 · [Π] = 1,     Π^2 = 21,
    [S] · h^2 = 5,   [S] · [Π] = -20,   [S]^2 = 25,
    genus(Π ∩ S) = 6,   χ(O_S) = 5,   p_g(S) = 4,   e(S) = 55.

Lean: `lean/Intersections.lean`, `lean/SMore.lean`.
Docs: `docs/INTERSECTIONS.md`, `docs/S_MORE.md`, `docs/GRIND_LEDGER.md`.
Span of {h^2, [Π]} still has rank 2. No miss. S is not Y.
