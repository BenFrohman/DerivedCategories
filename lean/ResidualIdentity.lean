/-!
Polynomial identity for residual quintics.
Not a proof of D^b(X) ≃ D^b(Y). Not Hodge.
This file uses only core Lean 4 (no Mathlib).
-/ 

namespace Frohman.Residual

def F (x0 x1 x2 x3 x4 x5 : Int) : Int :=
  x0^5 * x3 + x3^6 + x1^5 * x4 + x4^6 + x2^5 * x5 + x5^6

def R (a b c t x0 x1 x2 : Int) : Int :=
  a * x0^5 + b * x1^5 + c * x2^5 + t^5 * (a^6 + b^6 + c^6)

/-- Sample checks of F(x0,x1,x2,t*a,t*b,t*c) = t * R. -/
def samples : List (Int × Int × Int × Int × Int × Int × Int) :=
  [ (1,1,1,1,1,1,1)
  , (2,3,5,7,11,13,17)
  , (0,1,1,2,3,4,5)
  , (1,0,-1,3,2,2,2) ]

def holds : (Int × Int × Int × Int × Int × Int × Int) → Bool
  | (a,b,c,t,x0,x1,x2) =>
    F x0 x1 x2 (t*a) (t*b) (t*c) == t * R a b c t x0 x1 x2

theorem samples_hold : samples.all holds = true := by native_decide

end Frohman.Residual
