import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsCanonicalLaneLean

structure CharacterAdmissibleObject where
  carrier : Type
  multiplicativeCharacter : carrier → ℂ
  finiteField : Bool
  nontrivial : Bool

structure AdmissibleClass where
  object : CharacterAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CharacterWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def CharacterWitnessClosed (O : CharacterAdmissibleObject) : Prop :=
  O.nontrivial

end CharacterSumsGaussSumsCanonicalLaneLean
end HautevilleHouse