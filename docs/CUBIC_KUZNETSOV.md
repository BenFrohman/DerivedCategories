# Cubic fourfolds, Kuznetsov components, and the locked sextic

Author: Benjamin Stanley Frohman (@BenFrohman). Apache-2.0.
Status: Draft literature note. Frozen ceiling.

Not Hodge. Not Tate. Not Clay. Not a counterexample.
Does not enlarge the special-sextic preprint past `[Pi]`.

## Ceiling

Hassett–Kuznetsov is a dictionary for *cubic* fourfolds. The locked host

    F = x0^5 x3 + x3^6 + x1^5 x4 + x4^6 + x2^5 x5 + x5^6
    X = V(F) subset P^5
    Pi = V(x3, x4, x5)

is a *sextic* Calabi–Yau fourfold: `K_X = O_X`, `h^{3,1} = 426`.
There is no Hassett divisor `C_d` for sextics, no cubic-type Kuznetsov
K3 component, and no theorem that `[Pi]` is the primitive cohomology of
a polarized K3. `O_Pi` in `D^b(X)` recovers the class already written.

The product `P^2 x P^2` is a different host (Beilinson collection).
It is not `V(F)`.

## The cubic side

A smooth cubic fourfold `X subset P^5` has

    h^{3,1}(X) = 1,    h^{2,2}(X) = 21,    b_4 = 23.

`A(X) = H^{2,2}(X) cap H^4(X, Z)` always contains `h^2`.
`X` is special if `rk A(X) >= 2`.

Hassett: the locus of special cubics whose saturated lattice
`K = <h^2, v>` has discriminant

    d = det ( h^4 , h^2.v ; h^2.v , v^2 )

is an irreducible divisor `C_d` in the 20-dimensional moduli space
of smooth cubics. `C_d` is nonempty iff

    d > 6    and    d ≡ 0 or 2 (mod 6).

A plane on a cubic gives `d = 8`: `C_8` is cubics containing a plane,
and `Pi^2 = 3`. A cubic scroll gives `d = 12`; a Veronese surface
gives `d = 20`.

## When a K3 appears (Hassett)

For `X in C_d` with labelling `K_d = <h^2, v>`, there is a
Hodge-theoretic associated polarized K3 `(S, L)` of degree `d` when

    H^2(S, Z)_prim (-1)  ≅  K_d^perp  subset  H^4(X, Z)_prim.

That happens iff

    d > 6,    4 does not divide d,    9 does not divide d,
    no prime p ≡ 2 (mod 3) divides d.

Then `C_d` is rationally related to K3 moduli `F_d = N_d`:
birational if `d ≡ 2 (mod 6)`, a double cover if `d ≡ 0 (mod 6)`.

So `d = 14, 26, 38, …` have associated K3s. `d = 8` (the plane)
does *not*, because `4 | 8`. Containing a plane is special, but it
is not the Hassett–K3 case.

## Kuznetsov matching

    D^b(X) = < A_X, O_X, O_X(1), O_X(2) >
    A_X = <O, O(1), O(2)>^perp

`A_X` is a K3 category: Serre functor `[2]`, Hochschild homology
of dimension 24. Geometricity `A_X ≅ D^b(S)` (or twisted
`D^b(S, α)`) matches Hassett on admissible `C_d`
(Addington–Thomas generically; BLMNPS in full).

On `C_8`, projection from the plane realizes `X` as a quadric
fibration over `P^2`. Kuznetsov: `A_X ≅ D^b(S, α)` for a
degree-2 K3 and a nontrivial Brauer class. Still no *untwisted*
associated K3 of degree 8.

For a very general cubic, `A_X` has no point objects: it is a
noncommutative deformation of `D^b(S)`, not `D^b` of a geometric K3.

## Rationality (open)

Working conjecture: a smooth cubic fourfold is rational iff it has
an associated K3 (equivalently, lies in some admissible `C_d`).
Known rational cubics fit. No cubic fourfold is proved irrational.
Hodge for cubics themselves is known (Zucker / Voisin / uniruledness).

`F(X)`, the Fano variety of lines, is hyperkähler of dimension 4
and deformation-equivalent to `Hilb^2(S)` when `S` is associated.

## SOD reminder

An exceptional sequence splits `D^b(X) = <A, E_1, …, E_m>`.
`A` is the Kuznetsov (residual) component.

| Variety | Split off | Residue |
|---|---|---|
| Cubic fourfold | `O, O(1), O(2)` | K3 category |
| GM fourfold / sixfold | `O, U^vee` and twists | K3 category |
| GM threefold / quartic double solid | shorter collection | Enriques category |
| Fano hypersurface, `d < n+2` | `O, …, O(n-d+1)` | fractional CY |
| Locked sextic in `P^5` | none of cubic type | `D^b(X)` is 4-CY |

## Locked host again

Hypersurface of degree `d` in `P^{n+1}`: `K_X = O_X(d-n-2)`.
Here `n = 4`, `d = 6`, so `K_X = O`. The Fano exceptional collection
used for cubics is empty in that range. Orlov’s comparison for CY
hypersurfaces goes to graded matrix factorizations of `F`, not to a K3.

Formal analogy only: `C_d` is to cubic moduli what `S_Pi` is to
sextic moduli — a Noether–Lefschetz component cut out by one extra
surface class. On cubics that extra class is sometimes a K3.
On `V(F)` it is just `[Pi]`.

## Sources (citation, not coauthorship)

- B. Hassett, Special cubic fourfolds, Compositio 2000
- B. Hassett, Cubic fourfolds, K3 surfaces, and rationality, arXiv:1601.05501
- N. Addington, R. Thomas, Hodge theory and derived categories of cubic fourfolds, Duke 2014
- A. Kuznetsov, Derived categories of cubic fourfolds, 2010
- Bayer–Lahoz–Macrì–Nuer–Perry–Stellari, stability / geometricity
