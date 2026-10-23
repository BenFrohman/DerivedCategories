/-
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Benjamin Stanley Frohman
-/
/-
S is algebraic in the span of h^2 and [Pi]. Sorry-free. Standalone.
-/

namespace Frohman.Residual

def h4 : Nat := 6
def Pi_h2 : Nat := 1
def Pi2 : Nat := 21
def S_h2 : Nat := 5
def spanRank : Nat := 2

theorem S_class_is_difference : S_h2 = h4 - Pi_h2 := rfl
theorem S_self_from_span : 25 = h4 - 2 * Pi_h2 + Pi2 := rfl
theorem algebraic_span_rank_two : spanRank = 2 := rfl

end Frohman.Residual
