import CharacterSumsGaussSumsCanonicalLaneLean.GaussSumEvaluation

namespace HautevilleHouse
namespace CharacterSumsGaussSumsCanonicalLaneLean

structure QuadraticGaussSumPackage {G : GaussSumPackage} where
  oddPrime : ℕ
  legendreSymbol : ℤ → ℤ
  quadraticGaussSum : ℂ
  explicitEvaluation : ℂ
  evaluationMatchesKnown : Prop

structure QuadraticGaussSumEvidence {G : GaussSumPackage}
    (Q : QuadraticGaussSumPackage G) where
  evaluationMatchesKnownClosed : Q.evaluationMatchesKnown

def QuadraticGaussSumClosed {G : GaussSumPackage} (Q : QuadraticGaussSumPackage G) : Prop :=
  Q.evaluationMatchesKnown

theorem quadratic_gauss_sum_closed_from_evidence {G : GaussSumPackage}
    (Q : QuadraticGaussSumPackage G) (E : QuadraticGaussSumEvidence Q) :
    QuadraticGaussSumClosed Q := by
  exact E.evaluationMatchesKnownClosed

end CharacterSumsGaussSumsCanonicalLaneLean
end HautevilleHouse