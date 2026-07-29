import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsCanonicalLaneLean

structure PrimitiveDirichletCharacter where
  modulus : ℕ
  target : ℤ → ℂ
  primitive : Prop
  conductor : ℕ
  primitiveProof : primitive
  conductorEqualsModulus : conductor = modulus

structure PrimitiveCharacterEvidence (χ : PrimitiveDirichletCharacter) where
  primitiveClosed : χ.primitive
  conductorClosed : χ.conductorEqualsModulus

def PrimitiveCharacterClosed (χ : PrimitiveDirichletCharacter) : Prop :=
  χ.primitive ∧ χ.conductorEqualsModulus

theorem primitive_character_closed_from_evidence
    (χ : PrimitiveDirichletCharacter) (E : PrimitiveCharacterEvidence χ) :
    PrimitiveCharacterClosed χ := by
  exact And.intro E.primitiveClosed E.conductorClosed

end CharacterSumsGaussSumsCanonicalLaneLean
end HautevilleHouse