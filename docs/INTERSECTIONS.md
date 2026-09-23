# Intersections of S on X — full work

Author: Benjamin Stanley Frohman. Apache-2.0.
Status: Written geometry. Not a partner fourfold.

## 1. Degree of X

X = V(F) is a hypersurface of degree 6 in P^5. The hyperplane class h = c1(O_X(1)) satisfies

    h^4 = deg(X) = 6.

## 2. Intersection of Π with a linear P^3

Π ≅ P^2 ⊂ P^5. A general linear P^3 meets a P^2 in one point. That point lies on X because Π ⊂ X. The class of X ∩ P^3 is h^2. Therefore

    h^2 · [Π] = 1.

## 3. Self-intersection Π^2 from the normal bundle

Inclusions Π ⊂ X ⊂ P^5, both smooth, give

    0 → N_{Π/X} → N_{Π/P^5} → N_{X/P^5}|_Π → 0.

N_{Π/P^5} = O_Π(1)^⊕3 because Π = V(x3,x4,x5).
N_{X/P^5} = O_X(6), so the restriction is O_Π(6).

On Π the map O(1)^3 → O(6) is given by the normal derivatives of F:

    ∂F/∂x3 |_Π = x0^5,  ∂F/∂x4 |_Π = x1^5,  ∂F/∂x5 |_Π = x2^5.

At every point of Π at least one of x0,x1,x2 is nonzero, so the map is surjective and

    0 → N_{Π/X} → O_Π(1)^3 → O_Π(6) → 0.

Chern classes on Π ≅ P^2, with L = c1(O_Π(1)) and L^3 = 0:

    c(O(1)^3) = (1+L)^3 = 1 + 3L + 3L^2,
    c(O(6)) = 1 + 6L,
    c(N) = (1+3L+3L^2)(1+6L)^{-1} = (1+3L+3L^2)(1-6L+36L^2)
         = 1 + (3-6)L + (3-18+36)L^2
         = 1 - 3L + 21 L^2.

Thus c1(N_{Π/X}) = -3L and c2(N_{Π/X}) = 21.
On a fourfold, Z^2 = ∫_Z c2(N_{Z/X}). Therefore

    Π^2 = 21.

## 4. Class of S

L is a linear P^3, so [X ∩ L] = h^2.
The factorization F|_L = t R gives X ∩ L = Π ∪ S as surfaces. Cycle additivity:

    [S] = h^2 - [Π].

## 5. Pairings

    [S] · h^2 = h^4 - [Π]·h^2 = 6 - 1 = 5.
    [S] · [Π] = h^2·[Π] - Π^2 = 1 - 21 = -20.
    [S]^2 = (h^2 - [Π])^2 = h^4 - 2 h^2·[Π] + Π^2 = 6 - 2 + 21 = 25.

## 6. Curve C = Π ∩ S

On L, Π is t=0. Substitute t=0 into R:

    C : a x0^5 + b x1^5 + c x2^5 = 0  ⊂ Π ≅ P^2.

If abc ≠ 0 this is a smooth plane quintic. Genus formula:

    g = (d-1)(d-2)/2 = 4·3/2 = 6.

## 7. Discriminant in the base P^2

R is singular when abc(a^6+b^6+c^6)=0. Under abc ≠ 0 the discriminant is the Fermat sextic a^6+b^6+c^6=0, genus (5)(4)/2 = 10.

## 8. Invariants of a smooth fibre S ⊂ P^3

Adjunction in P^3: K_S = O_S(5-4) = O_S(1), so K_S^2 = deg S = 5.

Structure sequence 0 → O_{P^3}(-5) → O_{P^3} → O_S → 0.
χ(O_{P^3}) = 1.
Serre duality: H^i(O_{P^3}(-5)) = H^{3-i}(O_{P^3}(1))^*.
H^0(O(1)) = 4 and higher vanish, so H^3(O(-5)) = 4 and χ(O(-5)) = -4.
Therefore χ(O_S) = 1 - (-4) = 5.

From 0 → O(-4) → O(1) → O_S(1) → 0 and H^0(O(-4))=0,
H^0(O_S(1)) = H^0(O_{P^3}(1)) = 4. But O_S(1) = K_S, so p_g = 4.
Then q = p_g + 1 - χ = 4 + 1 - 5 = 0.

Noether: 12 χ(O_S) = K_S^2 + e(S) ⇒ 60 = 5 + e(S) ⇒ e(S) = 55.
b2 = e - 2 + 4q = 55 - 2 = 53.
h^{1,1} = b2 - 2 p_g = 53 - 8 = 45.

## Not claimed

These numbers live in the span of {h^2, [Π]}. Not a new independent Hodge class. Not Y. Bl_Π X has K = 2E ≠ O.
