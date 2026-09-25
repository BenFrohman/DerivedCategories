# What the symbols actually are

Author: Benjamin Stanley Frohman (@BenFrohman).
Copyright (c) 2026 Benjamin Stanley Frohman. Apache-2.0.
Digestible glossary for the locked host. Not string theory.

## Polynomials and strings

- `F` and `F^T` in Lean are values of type `String`: finite lists of
  characters. Example: `"x0^5*x3 + x3^6 + ..."`.
- Geometrically they *name* polynomials in six variables.
- `F` is homogeneous of degree 6 in ordinary P^5.
- `F^T` is the Berglund-Huebsch transpose *potential*. It is not
  homogeneous of one degree in unweighted P^5 (degrees 5 and 7).
  The correct ambient is weighted P(3,2,3,2,3,2), degree 15.
- “String” = computer-science string. Not a vibrating string, not a
  qubit, not a differential form.

## Classes on the fourfold X = V(F)

- A (2,2)-class is a class in H^{2,2}(X) subset H^4(X, C).
  After Hodge, it can be represented by a closed (2,2)-form.
- Hdg^2(X) := H^4(X, Q) ∩ H^{2,2}(X). Rational Hodge classes of
  type (2,2).
- cl_X sends a rational combination of surfaces to Hdg^2(X).
- [Π] = cl_X(Π) and [S] = cl_X(S) = h^2 - [Π] live in the image.

## Term A and Term B

- Term A is the Π-sentence: every fourfold, every Hodge class, some
  surfaces. `instance (D) : CycleSection D` would be a term of that
  shape. Unwritten for variable D.
- Term B is the Σ-sentence: one fourfold, one class outside im(cl).
  Unwritten. [Π] and [S] cannot fill it.

Those two sentences contradict each other. Named-host sections are
neither.
