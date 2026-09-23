# Residual quintics through Π

Author: Benjamin Stanley Frohman. Apache-2.0.
Status: Derived from (F, Π). **Not I(Y). Not a fourfold partner.**

## Input (already locked)

$$
F = x_0^5 x_3 + x_3^6 + x_1^5 x_4 + x_4^6 + x_2^5 x_5 + x_5^6,
\qquad
\Pi = V(x_3,x_4,x_5).
$$

## P³s through Π

A point `[a:b:c] ∈ ℝ²` determines the linear span

$$
L_{a,b,c} = \bigl\{ [x_0:x_1:x_2: t a : t b : t c] \bigr\} \cong \mathbb{P}^3.
$$

Restrict F:

$$
F\big|_{L_{a,b,c}}
= t\bigl( a x_0^5 + b x_1^5 + c x_2^5 + t^5(a^6+b^6+c^6) \bigr).
$$

The factor `t=0` is Π. The residual is the quintic surface

$$
R_{a,b,c}
= a x_0^5 + b x_1^5 + c x_2^5 + t^5(a^6+b^6+c^6)
\in \mathbb{C}[x_0,x_1,x_2,t]_5.
$$

As `[a:b:c]` varies this is a family of quintic surfaces over `ℝ²`.
Each fibre is a surface in `ℝ³`, not a fourfold. Canonical class of a
smooth quintic surface is ample. Not Calabi–Yau. Not I(Y).

## What this is not

- Not a second polynomial for a fourfold Y.
- Not a Fourier–Mukai kernel on X × Y.
- Not the cubic C_8 quadric-fibration dictionary.
