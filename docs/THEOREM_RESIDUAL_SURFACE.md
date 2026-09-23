# Theorem: residual quintic surfaces of (F, Π)

Author: Benjamin Stanley Frohman. Apache-2.0.
Status: Theorem about a **surface S on X**. Not a fourfold partner Y. Not Hodge. Not Clay.

## Notation lock

| Symbol | Meaning |
|---|---|
| X = V(F) | locked smooth CY fourfold in P^5 |
| Π = V(x3,x4,x5) | locked plane on X |
| S = S_{a,b,c} | residual quintic **surface** on X |
| Y | unwritten FM-partner fourfold. Still empty. |

Do not write Y for S.

## Theorem

Let

$$
F = x_0^5 x_3 + x_3^6 + x_1^5 x_4 + x_4^6 + x_2^5 x_5 + x_5^6,
\qquad
X=V(F)\subset\mathbb{P}^5,
\qquad
\Pi=V(x_3,x_4,x_5).
$$

For `[a:b:c]\in\mathbb{P}^2` with `abc(a^6+b^6+c^6)\neq 0`, set

$$
L_{a,b,c}=\bigl\{[x_0:x_1:x_2:ta:tb:tc]\bigr\}\cong\mathbb{P}^3,
$$
$$
R_{a,b,c}= a x_0^5 + b x_1^5 + c x_2^5 + t^5(a^6+b^6+c^6),
\qquad
S_{a,b,c}=V(R_{a,b,c})\subset L_{a,b,c}.
$$

Then:

1. `X \cap L_{a,b,c} = \Pi \cup S_{a,b,c}` as surfaces.
2. `S_{a,b,c}` is a smooth quintic surface in `L_{a,b,c}\cong\mathbb{P}^3`.
3. `K_S \cong \mathcal{O}_S(1)`, which is very ample, so `S` is of general type.
4. In `H^4(X)`, `[S] = h^2 - [\Pi]`.

## Proof

**Factorization.** Substitute `x3=ta`, `x4=tb`, `x5=tc` into F:

$$
F\big|_L = t\,R_{a,b,c}.
$$

The zero locus of the left side on L is X ∩ L. The factor t=0 is Π. The residual is V(R)=S. Hence (1).

**Smoothness.** On L with coordinates [x0:x1:x2:t],

$$
\partial R/\partial x_0 = 5a x_0^4,\quad
\partial R/\partial x_1 = 5b x_1^4,\quad
\partial R/\partial x_2 = 5c x_2^4,\quad
\partial R/\partial t = 5t^4(a^6+b^6+c^6).
$$

If `abc(a^6+b^6+c^6)\neq 0`, these vanish only at the origin of A^4. So S is smooth in P^3. Hence (2).

**Adjunction.** For a smooth degree-d surface in P^3, `K_S = O_S(d-4)`. Here d=5, so `K_S = O_S(1)`. This is the restriction of O_{P^3}(1), hence very ample. Kodaira dimension 2. Hence (3).

**Class.** L is a linear P^3 in P^5, so X ∩ L is the intersection of X with two hyperplanes and `[X\cap L]=h^2`. Cycle additivity on X gives `[X\cap L]=[\Pi]+[S]`. Hence `[S]=h^2-[\Pi]`. That class already lies in the span of `{h^2,[\Pi]}`. Hence (4).

## Ideals of S

In the coordinates of L: `I(S) = \langle R_{a,b,c}\rangle \subset \mathbb{C}[x_0,x_1,x_2,t]`.

In P^5, L is cut by the 2×2 minors of

$$
\begin{pmatrix} x_3 & x_4 & x_5 \\ a & b & c \end{pmatrix},
$$

and S is the residual of X ∩ L after Π. S is not a hypersurface of P^5, so there is no single generator I(S)⊂C[x0,…,x5] analogous to ⟨F⟩.

## What this theorem is not

S is a surface. Y is not written. K_S is a line bundle on S, not an object of D^b(X×Y). The statement is not Hodge, not Clay, and not D^b(X)≃D^b(Y).
