# Explicit equations

Author: Benjamin Stanley Frohman (@BenFrohman).
Copyright (c) 2026 Benjamin Stanley Frohman. Apache-2.0.
Not a written partner. Not Term B.

## Locked sextic (written)

In P^5 with coordinates [x0 : x1 : x2 : x3 : x4 : x5],

    F = x0^5 x3 + x3^6 + x1^5 x4 + x4^6 + x2^5 x5 + x5^6.

    X = V(F) subset P^5.
    Pi = V(x3, x4, x5).

Three chain blocks of type u^5 v + v^6:

    (x0, x3), (x1, x4), (x2, x5).

Jacobian of F vanishes only at the origin in A^6, so X is smooth.
Adjunction: K_X = O_X(6-5-1) = O_X. Calabi-Yau fourfold.

## BHK transpose string (candidate, not Y)

One block u^5 v + v^6 has exponent matrix [[5,1],[0,6]].
Transpose [[5,0],[1,6]] is u^5 + u v^6.

    F^T = x0^5 + x0 x3^6 + x1^5 + x1 x4^6 + x2^5 + x2 x5^6.

This is a Berglund-Huebsch-Krawitz *mirror candidate* (LG / orbifold
side after a dual group). It is not the six-field partner:
V(F^T) has not been proved smooth projective and derived-equivalent
to V(F), and no kernel on V(F) × V(F^T) is written.

## What the six-field partner would have to be

A term filling WrittenPartner / D^b(Y) is not a string. It is all six:

1. Equations of Y.
   A finite list of homogeneous polynomials in some P^N, or an
   equivalent geometric construction (complete intersection, GIT
   quotient with explicit weights, Grassmannian section), defining
   a variety Y. A transpose string without a smoothness proof and
   without a kernel is not this field filled.

2. dim Y = 4.
   A proof that every component of Y has dimension 4.
   S fails this field (dim 2).

3. Y ≨ V(F).
   A proof that Y is not isomorphic to X.
   O_Delta and HMF^gr(F) fail this field: same host / same polynomial.

4. ω_Y ≃ O_Y.
   Adjunction or a dualizing-sheaf computation on Y.
   S fails this field: K_S ≃ O_S(1).

5. E on X × Y.
   An explicit object of D^b(X × Y): a complex of sheaves, or at
   least a named correspondence whose class is written. O_Pi and O_S
   live on X, not on a product with a second fourfold.

6. Φ_E an equivalence.
   Fully faithful and essentially surjective, or an inverse kernel.
   Bondal-Orlov permission is not this proof.

Until all six are filled, fmPartnerStatus stays openConjecture.
F^T is recorded as a BHK string only.
