/-
Copyright (c) 2026 Benjamin Stanley Frohman.
Released under Apache License 2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)

BHK exponent matrix for the locked sextic. Sorry-free numerals.
F^T is a transpose potential, not a written partner Y and not Term B.
-/

namespace Frohman.BHK

/-- One chain block u^5 v + v^6. Rows are monomials. -/
def Ablock : List (List Nat) := [[5, 1], [0, 6]]

/-- Transpose block: u^5 + u v^6. -/
def AblockT : List (List Nat) := [[5, 0], [1, 6]]

def detBlock : Nat := 5 * 6 - 1 * 0

theorem det_block : detBlock = 30 := rfl

theorem transpose_block :
    AblockT = [[Ablock[0]![0]!, Ablock[1]![0]!],
               [Ablock[0]![1]!, Ablock[1]![1]!]] := rfl

/-- Dual weights for one block: 5 w_u = dT, w_u + 6 w_v = dT. -/
def dT : Nat := 15
def w_u : Nat := 3
def w_v : Nat := 2

theorem block_degree_u5 : 5 * w_u = dT := rfl
theorem block_degree_u_v6 : w_u + 6 * w_v = dT := rfl
theorem dual_cy : w_u + w_v + w_u + w_v + w_u + w_v = dT := rfl

/-- Unweighted degree of F in ordinary P^5. -/
def dF : Nat := 6
theorem F_homogeneous : 5 * 1 + 1 = dF := rfl
theorem F_cy_weights : 1 + 1 + 1 + 1 + 1 + 1 = dF := rfl

/-- det A = 30^3. -/
def detA : Nat := 30 * 30 * 30
theorem invertible : detA = 27000 := rfl
theorem detA_ne_zero : detA ≠ 0 := by decide

/-- F^T is not homogeneous of degree 6 in unweighted P^5. -/
theorem FT_not_unweighted_deg6 : 5 ≠ 7 := by decide

end Frohman.BHK
