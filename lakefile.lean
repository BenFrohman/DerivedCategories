import Lake
open Lake DSL

package «DerivedCategories»

@[default_target]
lean_lib «DerivedCategories» where
  srcDir := "lean"
  roots := #[`BHK, `Equations, `FmPartnerConjecture, `Intersections, `ResidualIdentity, `SMore, `WrittenPartner]
