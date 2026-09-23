# Residual quintics through Π

Author: Benjamin Stanley Frohman. Apache-2.0.
Status: Completed family. **Not I(Y). Not a partner. Not a new Hodge class.**

## Locked input

$$
F = x_0^5 x_3 + x_3^6 + x_1^5 x_4 + x_4^6 + x_2^5 x_5 + x_5^6,
\qquad
\Pi = V(x_3,x_4,x_5),
\qquad
X=V(F)\subset\mathbb{P}^5.
$$

## Family

For `[a:b:c]\in\mathbb{P}^2` let

$$
L_{a,b,c}=\bigl\{[x_0:x_1:x_2:ta:tb:tc]\bigr\}\cong\mathbb{P}^3.
$$

$$
F\big|_{L}= t\,R_{a,b,c},
\qquad
R_{a,b,c}= a x_0^5 + b x_1^5 + c x_2^5 + t^5(a^6+b^6+c^6).
$$

Write `S_{a,b,c}=V(R)\subset L`. Then `X\cap L = \Pi \cup S` as surfaces.

## Class on X

`L` is a linear `\mathbb{P}^3`, so `[X\cap L]=h^2` in `H^4(X)`.
On `L\cong\mathbb{P}^3` the degrees split `6=1+5`.
On `X`:

$$
[S]=h^2-[\Pi].
$$

This class already lives in the span of `{h^2,[\Pi]}`. It is not a new independent Hodge class.

## Smoothness

Let `\mu=a^6+b^6+c^6`.

- If `a,b,c` and `\mu` are all nonzero, `R` is a Fermat-type quintic
  `A z_0^5+B z_1^5+C z_2^5+D z_3^5` with four nonzero coefficients.
  Partials `5A z_0^4,\ldots,5D z_3^4` vanish only at the origin, so `S` is smooth.
- If `\mu=0` and `abc\neq 0`, `R` is independent of `t`: a cone on the plane quintic
  `a x_0^5+b x_1^5+c x_2^5`, singular at `[0:0:0:1]`.
- If some of `a,b,c` vanish, the surface is degenerate (missing monomials).

The discriminant curve in the base `\mathbb{P}^2` contains `V(a^6+b^6+c^6)`.

## Canonical class of a smooth fibre (classical)

A smooth quintic surface in `\mathbb{P}^3` has

$$
K_S=(K_{\mathbb{P}^3}+S)\big|_S=\mathcal{O}_S(-4+5)=\mathcal{O}_S(1),
$$

which is ample. That is adjunction, not a new class on `X` and not a fourfold partner.
`S` is of general type (`\kappa=2`). It is not Calabi–Yau.

## What this is not

- Not `I(Y)` for a fourfold `Y\not\simeq X`.
- Not a Fourier–Mukai kernel.
- Not Kuznetsov / cubic `C_8` (those residuals are quadrics).
- Not Hodge and not Clay.

## Algebra identity

`F(x0,x1,x2,t a, t b, t c) = t R` in `\mathbb{Z}[x0,x1,x2,t,a,b,c]`.
See `lean/ResidualIdentity.lean` for sample evaluations. No Mathlib `ring` cert in this environment.
