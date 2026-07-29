import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsCanonicalLaneLean

structure CharacterOrthogonalityPackage where
  group : Type u
  characters : List (group → ℂ)
  orthogonalityFirst : Prop
  orthogonalitySecond : Prop
  firstProof : orthogonalityFirst
  secondProof : orthogonalitySecond

structure CharacterOrthogonalityEvidence (P : CharacterOrthogonalityPackage) where
  orthogonalityFirstClosed : P.orthogonalityFirst
  orthogonalitySecondClosed : P.orthogonalitySecond

def CharacterOrthogonalityClosed (P : CharacterOrthogonalityPackage) : Prop :=
  P.orthogonalityFirst ∧ P.orthogonalitySecond

theorem character_orthogonality_closed_from_evidence
    (P : CharacterOrthogonalityPackage) (E : CharacterOrthogonalityEvidence P) :
    CharacterOrthogonalityClosed P := by
  exact And.intro E.orthogonalityFirstClosed E.orthogonalitySecondClosed

end CharacterSumsGaussSumsCanonicalLaneLean
end HautevilleHouse