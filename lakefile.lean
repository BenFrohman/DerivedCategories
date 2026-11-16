/-
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Benjamin Stanley Frohman
-/

import Lake

/-!
# lakefile

Machine-checked Lean 4 module.
-/

open Lake DSL

package «DerivedCategories»

@[default_target]
lean_lib «DerivedCategories» where
  srcDir := "lean"
  roots := #[`BHK, `Equations, `FmPartnerConjecture, `Intersections, `ResidualIdentity, `SMore, `WrittenPartner]
