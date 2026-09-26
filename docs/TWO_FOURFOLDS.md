# Two fourfolds, two Hodge diamonds

Author: Benjamin Stanley Frohman
Email: frohmanbenjamin@gmail.com
ORCID: 0009-0006-7068-3718
GitHub: BenFrohman
X: @Investor0x
Copyright (c) 2026 Benjamin Stanley Frohman. License: Apache-2.0. See LICENSE.
Date: 26 September 2026.

No relabel. No dummy fills. These are different varieties.

## Host A — locked, stay here

    F = x0^5 x3 + x3^6 + x1^5 x4 + x4^6 + x2^5 x5 + x5^6,
    X = V(F) ⊂ P^5,    Π = V(x3, x4, x5).

A general smooth sextic fourfold in P^5 (any smooth degree-6 hypersurface,
this F included once the Jacobian vanishes only at the origin) has the
same Hodge numbers. Source: Griffiths residues / Jacobian ring;
Movasati table for hypersurfaces of degree d in P^5; JHEP 01 (2021) 207
for the Fermat-point count of h^{3,1}.

Lefschetz hyperplane theorem, i < 4:

    H^i(X) ≃ H^i(P^5).

So

    h^{1,0} = 0,    h^{2,0} = 0,    h^{1,1} = 1,    h^{2,1} = 0,
    Pic(X) = Z h,    b2(X) = 1.

Adjunction: K_X = O_X(6-6) = O_X. Calabi–Yau fourfold, not symplectic.
Serre functor of D^b(X) is [4].

Middle Hodge numbers of H^4:

    h^{4,0} = 1,    h^{3,1} = 426,    h^{2,2} = 1752,
    h^{1,3} = 426,    h^{0,4} = 1.

    h^{2,2}_prim = 1751,    b4 = 2606.

Betti: b0=1, b1=0, b2=1, b3=0, b4=2606, then Poincaré dual.
Euler number χ(X) = 2610.

The holomorphic volume form lives in H^{4,0}. There is no holomorphic
2-form. That is why this host is not hyperkähler.

Algebraic classes already written on this X:

    [Π],    [S] = h^2 − [Π],    Π^2 = 21,
    [S]·h^2 = 5,    [S]·[Π] = −20,    [S]^2 = 25.

Those sit in im(cl_X). They do not inhabit ¬rational Hodge.

## Host B — different variety, different paper

Irreducible hyperkähler fourfold of K3^{[2]}-type
(Hilbert square of a K3, or a deformation; double EPW-sextic when smooth).

Needs a holomorphic symplectic 2-form: h^{2,0} = 1.
Guan: b2 = 23 forces the K3^{[2]} Hodge diamond.

    h^{2,0} = 1,    h^{1,1} = 21,    b2 = 23,    b3 = 0,
    h^{4,0} = 1,    h^{3,1} = 21,    h^{2,2} = 232,    b4 = 276.

Hodge diamond (Debarre; hyperkaehler.info):

                    1
               0         0
          1        21        1
      0        0         0        0
    1      21      232      21      1
      0        0         0        0
          1        21        1
               0         0
                    1

Euler number 324. Serre functor of D^b is [4] as well, but the Hodge
lattice on H^2 is of K3 type, not Z h.

## EPW sextic is not Host A

Eisenbud–Popescu–Walter: a special sextic Y_A ⊂ P^5 attached to a
Lagrangian A ⊂ ∧3 C^6. Typically singular. About 20 moduli.
O’Grady: the double cover ̃X_A → Y_A, when smooth, is HK of K3^{[2]}-type.

So:

| Object | Smooth? | Type | h^{2,0} | b2 |
|---|---|---|---|---|
| X = V(F) | yes (Jacobian only at 0) | CY hypersurface | 0 | 1 |
| Y_A EPW sextic | typically no | singular sextic | — | — |
| ̃X_A double EPW | yes when general | HK, K3^{[2]} | 1 | 23 |

Different equations. Different singularities. The cubic / K3^{[2]}
Bridgeland dictionary runs on Host B and on Ku of cubics. It does not
run on Host A.

## What replacing the host would do

If the host is replaced by a genuine HK fourfold, one leaves F, leaves
Π ⊂ X, and leaves the residual-quintic theorem. That is a new paper.
It does not fill slots 1, 2, or 5 for this F.

Keep V(F) as the smooth CY hypersurface it is.

Equivalence on disk for Host A: D^b(X) ≃ HMF^{gr}(F) (Orlov 2005/2009).
Y and E stay unwritten.
