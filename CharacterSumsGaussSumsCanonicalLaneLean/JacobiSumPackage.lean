import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsCanonicalLaneLean

structure JacobiSumPackage where
  field : Type
  char : Type
  multiplicativeCharacters : List (char → ℂ)
  jacobiSum : char → char → ℂ
  relationToGaussSum : Prop
  hasseDavenportRelation : Prop

structure JacobiSumEvidence (J : JacobiSumPackage) where
  relationToGaussSumClosed : J.relationToGaussSum
  hasseDavenportRelationClosed : J.hasseDavenportRelation

def JacobiSumPackageClosed (J : JacobiSumPackage) : Prop :=
  J.relationToGaussSum ∧ J.hasseDavenportRelation

theorem jacobi_sum_package_closed_from_evidence (J : JacobiSumPackage) (E : JacobiSumEvidence J) :
    JacobiSumPackageClosed J := by
  exact And.intro E.relationToGaussSumClosed E.hasseDavenportRelationClosed

end CharacterSumsGaussSumsCanonicalLaneLean
end HautevilleHouse