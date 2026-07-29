import CharacterSumsGaussSumsCanonicalLaneLean.GaussSumEvaluation

namespace HautevilleHouse
namespace CharacterSumsGaussSumsCanonicalLaneLean

structure JacobiSumPackage {G : GaussSumPackage} where
  multiplicativeCharacters : (α → ℂ) × (α → ℂ)
  jacobiSum : ℂ
  relationToGauss : Prop
  productFormula : Prop

structure JacobiSumEvidence {G : GaussSumPackage} (J : JacobiSumPackage G) where
  relationToGaussClosed : J.relationToGauss
  productFormulaClosed : J.productFormula

def JacobiSumClosed {G : GaussSumPackage} (J : JacobiSumPackage G) : Prop :=
  J.relationToGauss ∧ J.productFormula

theorem jacobi_sum_closed_from_evidence {G : GaussSumPackage} (J : JacobiSumPackage G)
    (E : JacobiSumEvidence J) : JacobiSumClosed J := by
  exact And.intro E.relationToGaussClosed E.productFormulaClosed

end CharacterSumsGaussSumsCanonicalLaneLean
end HautevilleHouse