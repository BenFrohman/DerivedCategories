# Worked programs for this F / F^T

Author: Benjamin Stanley Frohman (@BenFrohman).
Copyright (c) 2026 Benjamin Stanley Frohman. Apache-2.0.
These are real uses of the invertible pair. None of them is Term A.
None of them is Term B. None of them is WrittenPartner Y.

## The pair

    F  = x0^5 x3 + x3^6 + x1^5 x4 + x4^6 + x2^5 x5 + x5^6
    F^T = x0^5 + x0 x3^6 + x1^5 + x1 x4^6 + x2^5 + x2 x5^6

F is three chain atoms u^5 v + v^6. det A = 30^3 = 27000 = Milnor number.
X = V(F) subset P^5, smooth CY fourfold. Weights (1^6), degree 6.
Central charge chat(F) = sum (1 - 2 w_i/d) = 6*(1-1/3) = 4 = dim X.
F^T lives in P(3,2,3,2,3,2), degree 15. chat(F^T) = 4 as well.

## 1. Orlov, same polynomial

Orlov: for a smooth hypersurface of degree d in P^n,

    d = n+1  (CY)  =>  D^b(X) ≅ HMF^gr(F).

Here n=5, d=6, so D^b(X) ≅ HMF^gr(F). Same F, already on the ledger.
Separately, the weighted hypersurface of F^T has its own
HMF^gr(F^T), equivalent (stacky Orlov) to D^b of that orbifold.
Those are two equivalences. They do not give D^b(X) ≅ D^b(V(F^T)).

## 2. FJRW / quantum singularity theory

FJRW is the LG A-model of a pair (W,G). For invertible W the B-model
of the transpose is Saito-Givental of (W^T, G^T). He-Li-Shen-Webb:
this holds at all genera for invertible potentials (no weight 1/2).
Our weights 1/6 and 2/15, 3/15 have no 1/2, so the theorem applies
to each atomic block and to the sum once G is admissible.

Guere: genus-zero FJRW of every chain polynomial with G_max is computed
by matrix factorizations, including broad insertions. Each block
u^5 v + v^6 is such a chain. The three-block sum is Thom-Sebastiani;
invariants of the sum are not just a product, but the atomic computation
is available as input.

What you get: numbers (Hodge integrals on spin moduli). What you do
not get: a surface Z on X with cl(Z) a prescribed primitive class.

## 3. LG/CY of state spaces

Chiodo-Ruan: the FJRW state space of (F, <J>) matches Chen-Ruan
cohomology of X, and the BHK dual matches the transpose orbifold.
Hodge diamonds rotate. For a CY fourfold that identifies
h^{p,q}(X) with h^{4-p,q} of the dual orbifold. In particular h^{2,2}
matches. Matching dimensions is not a list of algebraic cycles.

## 4. HMS of potentials

Takahashi and later work: the singularity category of W is expected
to match the Fukaya-Seidel category of W^T. Chain case has partial
results (Varolgunes-Polishchuk and related). Favero-Kelly HMS for
BHK *pencils in projective space* is Fuk(X) ≅ D^b(pencil of F^T)
over the Novikov field. Again D^b vs Fukaya, not D^b vs D^b(Y).

## 5. Point counts over F_q

Whitcher and others count points on BH orbifolds and crepant
resolutions using the exponent matrix. Input is A and A^T. Output
is a Weil polynomial / zeta. Not a cycle class on X(C).

## 6. Heterotic / Gepner-style

Gepner's original models tensor N=2 minimal models to c = 3 dim.
Fermat quintic is (3)^5. This F is not Fermat; the analogous object
is the LG orbifold of the invertible potential (Gepner-Berglund-Hubsch).
Belavin-Gepner study deformations of BH loop/chain mirrors.
A CY fourfold has N=2 central charge 12, not the heterotic CY3 value 9.
So this pair is a 4-fold compactification ingredient, not a drop-in
Gepner quintic. Compactifying on X still does not produce surfaces
spanning Hdg^2(X).

## 7. Ebeling-Gusein-Zade monodromy / strange duality

For a nondegenerate invertible chain or loop, the reduced monodromy
zeta of f and of f^T are Saito-dual after taking geometric roots of
degree gcd(weights) (arXiv:1008.4021). One block u^5 v + v^6 is
exactly that atomic chain. The three-block sum is allowed in their
"some polynomials in an arbitrary number of variables" clause.
Output: a relation between monodromy zeta functions. Not cl.

Strange duality of Dolgachev/Gabrielov numbers is proved for invertible
polynomials in *three* variables (Ebeling-Takahashi). Our F has six
variables. The 3-variable theorem does not apply to F itself; it does
apply to one block if you add a dummy Fermat factor and reduce, which
is a different singularity.

## Term A and Term B, locked

    A:  ∀ X ∀ γ ∈ Hdg^2(X), γ ∈ im(cl_X)
    B:  ∃ X ∃ γ ∈ Hdg^2(X), γ ∉ im(cl_X)

Exactly one is true in mathematics.
A missing *term* of B is not a proof of A.
Supplying a geometric term of B proves A *false*.
Supplying a term of A (surfaces for every class on every fourfold)
proves B false.
Empty B and empty A together are the open conjecture.
F^T and the seven programs above fill neither slot.
