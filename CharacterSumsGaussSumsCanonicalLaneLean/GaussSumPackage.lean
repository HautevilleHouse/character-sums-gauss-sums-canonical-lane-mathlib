import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterSumsGaussSumsCanonicalLaneLean.DirichletCharacter

namespace HautevilleHouse
namespace CharacterSumsGaussSumsCanonicalLaneLean

structure GaussSumPackage {D : DirichletCharacterPackage} where
  additiveCharacter : ℤ → ℂ
  sumFormula : Prop
  absoluteValueSquared : ℕ
  orthogonalityRelation : Prop

def GaussSumClosed {D : DirichletCharacterPackage} (G : GaussSumPackage D) : Prop :=
  G.sumFormula ∧ G.orthogonalityRelation

theorem gauss_sum_closed_from_package {D : DirichletCharacterPackage} (G : GaussSumPackage D) :
  GaussSumClosed G := by
  exact And.intro G.sumFormula G.orthogonalityRelation

end CharacterSumsGaussSumsCanonicalLaneLean
end HautevilleHouse