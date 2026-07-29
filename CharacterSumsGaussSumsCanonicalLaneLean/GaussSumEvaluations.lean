import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsCanonicalLaneLean

structure QuadraticGaussSumEvaluation where
  p : Nat
  a : ℤ
  sum : ℂ
  knownEvaluation : Prop
  evaluationProof : knownEvaluation

structure QuadraticGaussSumEvidence (Q : QuadraticGaussSumEvaluation) where
  knownEvaluationClosed : Q.knownEvaluation
  evaluatedCorrectly : Q.sum = 0 ∨ Q.sum ^ 2 = (if Q.p % 4 = 1 then Q.p else -Q.p : ℂ)

def QuadraticGaussSumClosed (Q : QuadraticGaussSumEvaluation) : Prop :=
  Q.knownEvaluation ∧ (Q.sum = 0 ∨ Q.sum ^ 2 = (if Q.p % 4 = 1 then Q.p else -Q.p : ℂ))

theorem quadratic_gauss_sum_closed_from_evidence
    (Q : QuadraticGaussSumEvaluation) (E : QuadraticGaussSumEvidence Q) :
    QuadraticGaussSumClosed Q := by
  exact And.intro E.knownEvaluationClosed E.evaluatedCorrectly

end CharacterSumsGaussSumsCanonicalLaneLean
end HautevilleHouse