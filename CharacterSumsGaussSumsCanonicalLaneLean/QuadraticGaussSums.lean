import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterSumsGaussSumsCanonicalLaneLean.GaussSumPackage

namespace HautevilleHouse
namespace CharacterSumsGaussSumsCanonicalLaneLean

structure QuadraticGaussSumPackage {D : DirichletCharacterPackage} (G : GaussSumPackage D) where
  quadraticCharacter : D.characterValue = λ n => (n / D.modulus).legendreSymbol
  explicitFormula : Prop
  signDetermination : Prop

def QuadraticGaussSumClosed {D : DirichletCharacterPackage} {G : GaussSumPackage D} (Q : QuadraticGaussSumPackage G) : Prop :=
  Q.explicitFormula ∧ Q.signDetermination

end CharacterSumsGaussSumsCanonicalLaneLean
end HautevilleHouse