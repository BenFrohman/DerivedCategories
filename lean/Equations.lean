/-
Copyright (c) 2026 Benjamin Stanley Frohman.
Released under Apache License 2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)

Explicit polynomials. Sorry-free. F^T is a BHK string, not Y.
-/

namespace Frohman.Sextic

def F : String :=
  "x0^5*x3 + x3^6 + x1^5*x4 + x4^6 + x2^5*x5 + x5^6"

def FT : String :=
  "x0^5 + x0*x3^6 + x1^5 + x1*x4^6 + x2^5 + x2*x5^6"

def Pi : String :=
  "V(x3, x4, x5)"

theorem F_ne_FT : F ≠ FT := by decide

theorem F_has_three_chain_blocks :
    (F.splitOn "+").length = 6 := rfl

end Frohman.Sextic
