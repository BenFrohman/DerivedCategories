/-!
# FM partner conjecture for the locked sextic

This file is a *status tag*, not a proof.
It type-checks in core Lean 4 with no Mathlib.
It does **not** construct a fourfold `Y` and does **not** prove
`D^b(X) ≃ D^b(Y)`.

Do not replace `openConjecture` by a `sorry` theorem or by `\u2203 _, True`.
-/

namespace Frohman.Sextic

/-- Locked equation, as a string. Not a scheme. -/
def F_string : String :=
  "x0^5*x3 + x3^6 + x1^5*x4 + x4^6 + x2^5*x5 + x5^6"

/-- Status of the partner claim. -/
inductive PartnerStatus where
  | openConjecture
  | theoremProved
  deriving DecidableEq, Repr

/-- The named claim is open. This assignment is the whole file. -/
def fmPartnerStatus : PartnerStatus := .openConjecture

/-- Refuse the vacuous gate. -/
theorem not_vacuous_true : fmPartnerStatus ≠ PartnerStatus.theoremProved := by
  decide

end Frohman.Sextic
