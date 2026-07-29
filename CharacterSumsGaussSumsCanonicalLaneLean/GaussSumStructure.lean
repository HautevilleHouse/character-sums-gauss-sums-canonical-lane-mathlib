import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsCanonicalLaneLean

structure GaussSumPackage where
  characterGroup : Type u
  finiteField : Type v
  additiveChar : characterGroup → ℂ
  multiplicativeChar : characterGroup → ℂ
  sumValue : ℂ
  normEstimate : Prop

structure GaussSumEvidence (G : GaussSumPackage) where
  sumValueClosed : G.sumValue = G.additiveChar 0 + G.multiplicativeChar 0
  normEstimateClosed : G.normEstimate

def GaussSumClosed (G : GaussSumPackage) : Prop :=
  G.sumValue = G.additiveChar 0 + G.multiplicativeChar 0 ∧ G.normEstimate

theorem gauss_sum_closed_from_evidence (G : GaussSumPackage) (E : GaussSumEvidence G) :
    GaussSumClosed G := by
  exact And.intro E.sumValueClosed E.normEstimateClosed

end CharacterSumsGaussSumsCanonicalLaneLean
end HautevilleHouse