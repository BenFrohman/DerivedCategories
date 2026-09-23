# Findings (2026-09-23)

Author: Benjamin Stanley Frohman. Apache-2.0.
Status: Frozen notes. Not a fourfold partner. Not Hodge. Not Clay.

## Locked host

$$
F = x_0^5 x_3 + x_3^6 + x_1^5 x_4 + x_4^6 + x_2^5 x_5 + x_5^6,
\qquad X=V(F)\subset\mathbb{P}^5,
\qquad \Pi=V(x_3,x_4,x_5).
$$

X is a smooth Calabi–Yau fourfold: K_X ≃ O_X, Jacobian of F vanishes only at the origin.
Hodge numbers of a smooth sextic fourfold: h^{4,0}=1, h^{3,1}=426, h^{2,2}=1752.
Ledger: I(X)=⟨F⟩, I(Π)=⟨x3,x4,x5⟩, [Π] algebraic, Π²=21, Pic(X)=ℤh.

## Theorem (new this pass)

Residual quintics of (F, Π). For [a:b:c] with abc(a^6+b^6+c^6)≠0,
S = V(R_{a,b,c}) ⊂ L_{a,b,c} ≅ ℝ³ is a smooth quintic surface of general type,
S ⊂ X, K_S ≃ O_S(1), and [S] = h² − [Π] in H^4(X).

See `docs/THEOREM_RESIDUAL_SURFACE.md`.

## Notation lock

S is a surface on X. Y is an unwritten partner fourfold. S ≠ Y.

## Equivalences

Orlov: D^b(coh X) ≃ HMF^{gr}(F). Same polynomial, not a second fourfold.
Bondal–Orlov reconstructs S (K_S ample) and does not reconstruct X (K_X trivial).
D^b(X) has Serre functor [4]. D^b(S) has Serre functor (− ⊗ K_S)[2]. Not equivalent.

See `docs/DERIVED_EQUIVALENCES.md`.

## Still open

Conjecture: a fourfold Y ≢ X and a kernel E ∈ D^b(X×Y) with Φ_E an equivalence.
Lean: fmPartnerStatus = openConjecture.

## Not claimed

Hodge conjecture, a Clay counterexample, D^b(X) ≃ D^b(S), D^b(X) ≃ D^b(Y), a new independent Hodge class, a Kuznetsov K3 component.
