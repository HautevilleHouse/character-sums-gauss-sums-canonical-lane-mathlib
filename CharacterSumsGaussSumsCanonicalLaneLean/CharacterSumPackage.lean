import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsCanonicalLaneLean

structure CharacterSumPackage where
  group : Type
  character : group → ℂ
  sumOverGroup : ℂ
  orthogonalityRelation : Prop
  inversionFormula : Prop

structure CharacterSumEvidence (C : CharacterSumPackage) where
  orthogonalityRelationClosed : C.orthogonalityRelation
  inversionFormulaClosed : C.inversionFormula

def CharacterSumPackageClosed (C : CharacterSumPackage) : Prop :=
  C.orthogonalityRelation ∧ C.inversionFormula

theorem character_sum_package_closed_from_evidence (C : CharacterSumPackage) (E : CharacterSumEvidence C) :
    CharacterSumPackageClosed C := by
  exact And.intro E.orthogonalityRelationClosed E.inversionFormulaClosed

end CharacterSumsGaussSumsCanonicalLaneLean
end HautevilleHouse