import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsCanonicalLaneLean

structure CharacterOrthogonalityPackage where
  characterGroup : Type u
  dualitySum : ℂ → ℂ
  orthogonalityRelation : Prop
  sumOverGroup : Prop

structure CharacterOrthogonalityEvidence (C : CharacterOrthogonalityPackage) where
  orthogonalityRelationClosed : C.orthogonalityRelation
  sumOverGroupClosed : C.sumOverGroup

def CharacterOrthogonalityClosed (C : CharacterOrthogonalityPackage) : Prop :=
  C.orthogonalityRelation ∧ C.sumOverGroup

theorem character_orthogonality_closed_from_evidence (C : CharacterOrthogonalityPackage)
    (E : CharacterOrthogonalityEvidence C) : CharacterOrthogonalityClosed C := by
  exact And.intro E.orthogonalityRelationClosed E.sumOverGroupClosed

end CharacterSumsGaussSumsCanonicalLaneLean
end HautevilleHouse