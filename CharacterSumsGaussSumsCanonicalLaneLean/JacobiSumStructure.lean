import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsCanonicalLaneLean

structure JacobiSumPackage {G : GaussSumPackage} (Q : QuadraticGaussSumPackage G) where
  jacobiSum : ℂ
  relationToGauss : Prop
  characterProduct : Prop

structure JacobiSumEvidence {G : GaussSumPackage} {Q : QuadraticGaussSumPackage G}
    (J : JacobiSumPackage Q) where
  relationToGaussClosed : J.relationToGauss
  characterProductClosed : J.characterProduct

def JacobiSumClosed {G : GaussSumPackage} {Q : QuadraticGaussSumPackage G}
    (J : JacobiSumPackage Q) : Prop :=
  J.relationToGauss ∧ J.characterProduct

theorem jacobi_sum_closed_from_evidence {G : GaussSumPackage} {Q : QuadraticGaussSumPackage G}
    (J : JacobiSumPackage Q) (E : JacobiSumEvidence J) : JacobiSumClosed J := by
  exact And.intro E.relationToGaussClosed E.characterProductClosed

end CharacterSumsGaussSumsCanonicalLaneLean
end HautevilleHouse