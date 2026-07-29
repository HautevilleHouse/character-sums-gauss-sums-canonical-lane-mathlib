import CharacterSumsGaussSumsCanonicalLaneLean.CharacterSumAdmissible

namespace HautevilleHouse
namespace CharacterSumsGaussSumsCanonicalLaneLean

structure GaussSumPackage where
  finiteField : Fintype α
  additiveCharacter : α → ℂ
  multiplicativeCharacter : α → ℂ
  gaussSum : ℂ
  evaluation : ℂ
  quadraticCase : Bool
  magnitudeSquared : ℂ
  magnitudeSquaredMatchesFieldSize : Prop

structure GaussSumEvidence (G : GaussSumPackage) where
  quadraticCaseClosed : G.quadraticCase
  magnitudeSquaredMatchesFieldSizeClosed : G.magnitudeSquaredMatchesFieldSize

def GaussSumClosed (G : GaussSumPackage) : Prop :=
  G.quadraticCase ∧ G.magnitudeSquaredMatchesFieldSize

theorem gauss_sum_closed_from_evidence (G : GaussSumPackage) (E : GaussSumEvidence G) :
    GaussSumClosed G := by
  exact And.intro E.quadraticCaseClosed E.magnitudeSquaredMatchesFieldSizeClosed

end CharacterSumsGaussSumsCanonicalLaneLean
end HautevilleHouse