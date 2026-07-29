import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterSumsGaussSumsCanonicalLaneLean.QuadraticGaussSums

namespace HautevilleHouse
namespace CharacterSumsGaussSumsCanonicalLaneLean

def ConstrainedGaussSumClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gauss_sum_endgame (A : AdmissibleClass) :
  ConstrainedGaussSumClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CharacterSumsGaussSumsCanonicalLaneLean
end HautevilleHouse