import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsCanonicalLaneLean

structure CharacterSumEstimatePackage where
  sumValue : Type u
  bound : Type v
  sumDefined : Prop
  boundDerived : Prop
  estimatePolyaVinogradov : Prop

structure CharacterSumEstimateEvidence (C : CharacterSumEstimatePackage) where
  sumDefinedClosed : C.sumDefined
  boundDerivedClosed : C.boundDerived
  estimatePolyaVinogradovClosed : C.estimatePolyaVinogradov

def CharacterSumEstimateClosed (C : CharacterSumEstimatePackage) : Prop :=
  C.sumDefined ∧ C.boundDerived ∧ C.estimatePolyaVinogradov

theorem character_sum_estimate_closed_from_evidence (C : CharacterSumEstimatePackage) (E : CharacterSumEstimateEvidence C) : CharacterSumEstimateClosed C := by
  exact And.intro E.sumDefinedClosed (And.intro E.boundDerivedClosed E.estimatePolyaVinogradovClosed)

end CharacterSumsGaussSumsCanonicalLaneLean
end HautevilleHouse