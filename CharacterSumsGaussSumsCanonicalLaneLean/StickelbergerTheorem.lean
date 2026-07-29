import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsCanonicalLaneLean

structure StickelbergerPackage {G : GaussSumPackage} (Q : QuadraticGaussSumPackage G) where
  primeIdeal : Type u
  factorisationFormula : Prop
  valuationCondition : Prop

structure StickelbergerEvidence {G : GaussSumPackage} {Q : QuadraticGaussSumPackage G}
    (S : StickelbergerPackage Q) where
  factorisationFormulaClosed : S.factorisationFormula
  valuationConditionClosed : S.valuationCondition

def StickelbergerClosed {G : GaussSumPackage} {Q : QuadraticGaussSumPackage G}
    (S : StickelbergerPackage Q) : Prop :=
  S.factorisationFormula ∧ S.valuationCondition

theorem stickelberger_closed_from_evidence {G : GaussSumPackage} {Q : QuadraticGaussSumPackage G}
    (S : StickelbergerPackage Q) (E : StickelbergerEvidence S) : StickelbergerClosed S := by
  exact And.intro E.factorisationFormulaClosed E.valuationConditionClosed

end CharacterSumsGaussSumsCanonicalLaneLean
end HautevilleHouse