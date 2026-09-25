/-
Copyright (c) 2026 Benjamin Stanley Frohman.
Released under Apache License 2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)

Type of a written Fourier-Mukai partner of V(F).
Sorry-free. No axiom. No inhabitant.
D^b(Y) is this type. It is not filled.
-/

namespace Frohman.Sextic

/-- What a written partner must carry. -/
structure WrittenPartner where
  equations : String
  dim : Nat
  notSameAsX : Bool
  canonicalTrivial : Bool
  kernelOnProduct : String
  equivalenceProof : String
  deriving Repr, DecidableEq

/-- Tags that would have to hold. Not a construction. -/
def partnerSpec : WrittenPartner where
  equations := ""
  dim := 4
  notSameAsX := true
  canonicalTrivial := true
  kernelOnProduct := ""
  equivalenceProof := ""

theorem partner_must_be_fourfold : partnerSpec.dim = 4 := rfl

theorem partner_must_not_be_X : partnerSpec.notSameAsX = true := rfl

/-- Empty equations means Y is not written. -/
theorem partner_equations_unwritten : partnerSpec.equations = "" := rfl

theorem kernel_unwritten : partnerSpec.kernelOnProduct = "" := rfl

/-- Residual surface is dim 2, so it is not this spec. -/
def residualAsFakePartner : WrittenPartner where
  equations := "R_{a,b,c}"
  dim := 2
  notSameAsX := true
  canonicalTrivial := false
  kernelOnProduct := ""
  equivalenceProof := ""

theorem residual_fails_dim : residualAsFakePartner.dim ≠ 4 := by decide

theorem residual_fails_canonical :
    residualAsFakePartner.canonicalTrivial = false := rfl

/-- Orlov's HMF is the same polynomial, so notSameAsX fails. -/
def hmfAsFakePartner : WrittenPartner where
  equations := "x0^5*x3 + x3^6 + x1^5*x4 + x4^6 + x2^5*x5 + x5^6"
  dim := 4
  notSameAsX := false
  canonicalTrivial := true
  kernelOnProduct := "Orlov HMF"
  equivalenceProof := "Orlov"

theorem hmf_is_same_host : hmfAsFakePartner.notSameAsX = false := rfl

/-- Identity kernel on X × X is not a partner. -/
def identityAsFakePartner : WrittenPartner where
  equations := "V(F)"
  dim := 4
  notSameAsX := false
  canonicalTrivial := true
  kernelOnProduct := "O_Delta"
  equivalenceProof := "id"

theorem identity_is_X : identityAsFakePartner.notSameAsX = false := rfl

end Frohman.Sextic
