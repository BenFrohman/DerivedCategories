# Locked record

Author: Benjamin Stanley Frohman (@BenFrohman). Apache-2.0.
Status: Frozen. Not a theorem of a partner. Not Hodge. Not Clay.

## Host

$$
F = x_0^5 x_3 + x_3^6 + x_1^5 x_4 + x_4^6 + x_2^5 x_5 + x_5^6
\qquad
X = V(F)\subset\mathbb{P}^5
\qquad
\Pi = V(x_3,x_4,x_5).
$$

## What is true

1. \(X\) is a smooth Calabi–Yau fourfold.
   Adjunction: \(K_X = \mathcal{O}_X(d-n-2) = \mathcal{O}_X(6-4-2) = \mathcal{O}_X\).
   The Jacobian of \(F\) vanishes only at the origin in \(\mathbb{A}^6\).
   Hodge numbers of a smooth sextic fourfold: \(h^{4,0}=1\), \(h^{3,1}=426\), \(h^{2,2}=1752\).

2. Ledger.
   \(I(X)=\langle F\rangle\), \(I(\Pi)=\langle x_3,x_4,x_5\rangle\), \(F\in I(\Pi)\), so \(\Pi\subset X\).
   \([\Pi]\) is algebraic. \(\Pi^2 = 21\).
   \(\operatorname{Pic}(X)=\mathbb{Z}h\).

3. Category.
   \(D^b(\operatorname{coh} X)\) is a 4-Calabi–Yau category (Serre functor \([4]\)).
   There is no Kuznetsov K3 component. \(h^{3,1}=426\) is not K3-like.

4. Equivalence that exists (Orlov).
   \(D^b(\operatorname{coh} X) \simeq \operatorname{HMF}^{\mathrm{gr}}(F)\).
   Same polynomial. Not a second fourfold.
   The diagonal \(\mathcal{O}_\Delta \in D^b(X\times X)\) is the identity kernel, not a partner kernel.

5. What CY permits and does not construct.
   Bondal–Orlov reconstruction fails because \(K_X\simeq\mathcal{O}\).
   A non-isomorphic Fourier–Mukai partner is *permitted*.
   Permission is not construction.

## What is not true

- There is no written fourfold \(Y\not\simeq X\).
- \(I(Y)\) is not in the ledger. A symbol is not an ideal.
- There is no kernel \(\mathcal{E}\in D^b(X\times Y)\).
- There is no theorem \(D^b(X)\simeq D^b(Y)\).
- There is no Lean proof of that equivalence.
- \([\Pi]\) is not a Mukai vector of a K3.
- This pair \((X,[\Pi])\) is an instance of an algebraic class, not a Hodge counterexample and not \(\forall X\,\forall\gamma\,\exists Z_i\).

## Named claim that remains open

**Conjecture.** There exist a smooth projective fourfold \(Y\not\simeq X\) and \(\mathcal{E}\in D^b(X\times Y)\) with \(\Phi_{\mathcal{E}}\) an equivalence \(D^b(X)\xrightarrow{\sim} D^b(Y)\).

Lean status: `fmPartnerStatus = .openConjecture`.
