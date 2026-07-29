import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsCanonicalLaneLean

structure DirichletCharacterPackage where
  modulus : ℕ
  conductor : ℕ
  primitive : Prop
  characterValue : ℤ → ℂ
  multiplicativeClosed : Prop
  periodicClosed : Prop

def DirichletCharacterClosed (D : DirichletCharacterPackage) : Prop :=
  D.multiplicativeClosed ∧ D.periodicClosed

end CharacterSumsGaussSumsCanonicalLaneLean
end HautevilleHouse