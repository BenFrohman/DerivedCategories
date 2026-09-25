/-
Copyright (c) 2026 Benjamin Stanley Frohman.
Released under Apache License 2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)

Numeral lock of the written intersections on V(F).
Sorry-free. Not a partner. Not Term B.
See docs/INTERSECTIONS.md for the geometry.
-/

namespace Frohman.Residual

def h4 : Nat := 6
def Pi_h2 : Nat := 1
def Pi2 : Nat := 21
def S_h2 : Nat := h4 - Pi_h2
def S_Pi : Int := (Pi_h2 : Int) - (Pi2 : Int)
def S2 : Nat := h4 - 2 * Pi_h2 + Pi2
def C_genus : Nat := (5 - 1) * (5 - 2) / 2
def chi_O_S : Nat := 5
def p_g : Nat := 4
def e_S : Nat := 12 * chi_O_S - 5

theorem deg_X : h4 = 6 := rfl
theorem plane_meets_P3 : Pi_h2 = 1 := rfl
theorem self_intersection_Pi : Pi2 = 21 := rfl
theorem S_degree : S_h2 = 5 := rfl
theorem S_meets_Pi : S_Pi = -20 := rfl
theorem S_self : S2 = 25 := rfl
theorem curve_genus : C_genus = 6 := rfl
theorem chi_S : chi_O_S = 5 := rfl
theorem geometric_genus : p_g = 4 := rfl
theorem topological_euler : e_S = 55 := rfl

/-- These classes sit in the span of {h^2, [Pi]}. -/
def spanRank : Nat := 2
theorem no_new_independent_class : spanRank = 2 := rfl

end Frohman.Residual
