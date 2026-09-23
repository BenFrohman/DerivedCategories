# Conjecture: Fourier–Mukai partner of the locked sextic

Author: Benjamin Stanley Frohman (@BenFrohman). Apache-2.0.
Status: **Conjecture. Not a theorem.** Draft.

Not Hodge. Not Tate. Not Clay. Not a counterexample.
Not a Frohman equivalence. Not a constructed fourfold $Y$.

## Host

$$
F = x_0^5 x_3 + x_3^6 + x_1^5 x_4 + x_4^6 + x_2^5 x_5 + x_5^6
\qquad
X = V(F)\subset\mathbb{P}^5
\qquad
\Pi = V(x_3,x_4,x_5).
$$

$X$ is a smooth Calabi–Yau fourfold ($K_X\simeq\mathcal{O}_X$, $h^{3,1}=426$).
$\operatorname{Pic}(X)=\mathbb{Z}h$. $\Pi\subset X$ with $N_{\Pi/X}$ of Chern character $1-3h+21h^2$.

## Named claim (conjecture)

**Conjecture (FM partner of $V(F)$).**
There exist a smooth projective fourfold $Y\not\simeq X$ and an object
$\mathcal{E}\in D^b(X\times Y)$ such that the Fourier–Mukai functor

$$
\Phi_{\mathcal{E}} = Rq_*\bigl(p^*(-)\otimes^{\mathbf{L}}\mathcal{E}\bigr)
$$

is an equivalence $D^b(X)\xrightarrow{\sim} D^b(Y)$.

This is open. The symbol $Y$ is not a variety. $I(Y)$ is not in the ledger.
$\mathcal{O}_\Pi$ is not a kernel on a product and does not fill $\mathcal{E}$.

## Why this is not written as a theorem

A partner is a variety + a kernel + a proof. Writing the sentence above
does not create $Y$. No equations for $Y$ are known. No kernel is known.
No proof exists to type-check.

## The theorem that *does* attach to $F$

**Theorem (Orlov).** If $X=V(F)\subset\mathbb{P}^5$ is a smooth hypersurface
of degree $6$, then

$$
D^b(\operatorname{coh} X)\;\simeq\;\operatorname{HMF}^{\mathrm{gr}}(F).
$$

The right-hand side is graded matrix factorizations of the *same*
polynomial. It is not a second fourfold.

## Geometries that do not produce $Y$ for this $F$

- Mukai flop of a plane: needs $N\simeq\mathcal{O}(-1)\oplus\mathcal{O}(-1)$. Here $c_1(N)=-3h$.
- Cubic $\mathcal{C}_8$ / Kuznetsov: projection from a plane on a cubic is a quadric fibration. Projection from $\Pi$ on this sextic has residual quintics in $\mathbb{P}^3$s through $\Pi$.
- Hassett–Kuznetsov, Pfaffian–Grassmannian, Gushel–Mukai: wrong degree, wrong $h^{3,1}$.
- Bondal–Orlov reconstruction: fails because $K_X$ is trivial. That permits partners; it does not construct one.

## Lean

`lean/FmPartnerConjecture.lean` records the status as `openConjecture`.
It contains no theorem $D^b(X)\simeq D^b(Y)$.
