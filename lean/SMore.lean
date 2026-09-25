/-
Copyright (c) 2026 Benjamin Stanley Frohman.
Released under Apache License 2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)

S is algebraic in the span of h^2 and [Pi]. Sorry-free.
-/
import Intersections

namespace Frohman.Residual

theorem S_class_is_difference : S_h2 = h4 - Pi_h2 := rfl

theorem S_class_not_independent :
    S2 = h4 - 2 * Pi_h2 + Pi2 := rfl

theorem algebraic_span_rank_two : spanRank = 2 := rfl

end Frohman.Residual
