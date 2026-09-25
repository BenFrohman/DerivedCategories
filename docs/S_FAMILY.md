# Family S_{a,b,c} (in hand)

Author: Benjamin Stanley Frohman (@BenFrohman).
Copyright (c) 2026 Benjamin Stanley Frohman. Apache-2.0.
Written geometry on X = V(F). Six Y-fields stay empty.

## Screenshots stay correct

Intersection table on S is the arithmetic in `docs/RESIDUAL_NUMERALS.md`.
Partner-field table is the empty six-field ledger in `docs/GRIND_LEDGER.md`.

## Family

Base: [a:b:c] in P^2 minus V(abc(a^6+b^6+c^6)).
For each such point, L_{a,b,c} ≈ P^3 through Π, and

    X ∩ L_{a,b,c} = Π ∪ S_{a,b,c}.

Smooth fibre: quintic surface in that P^3.

    K_S ≈ O_S(1)   (very ample, general type)
    p_g = 4,   q = 0,   e(S) = 55
    C = Π ∩ S is a plane quintic, genus 6.

## Class on X

    [S] = h^2 - [Π].

Pairings 5, -20, 25 are the expansion of that difference against
{h^2, [Π]}:

    [S]·h^2 = h^4 - h^2·[Π] = 6-1 = 5
    [S]·[Π] = h^2·[Π] - Π^2 = 1-21 = -20
    [S]^2 = h^4 - 2 h^2·[Π] + Π^2 = 6-2+21 = 25.

Span of {h^2, [Π]} has rank 2. [S] is not a new direction in Hdg^2(X).
S is extra *algebraic* geometry on the locked host. named_fourfolds
still uses the plane span. Still not ∀ D. Still no miss.

## Insight worth teaching

Finding more algebraic surfaces on a special fourfold can *look* like
progress on Hodge. It is progress on the *easy arrow*: classes that
already come from cycles. Hodge on fourfolds asks whether every
rational (2,2)-class arises that way. Extra surfaces in the same span
do not enlarge the image and do not produce a class outside the image.

Bondal-Orlov reconstructs S from D^b(S) because K_S is ample.
That is a fact about the surface, not a partner fourfold of X.
