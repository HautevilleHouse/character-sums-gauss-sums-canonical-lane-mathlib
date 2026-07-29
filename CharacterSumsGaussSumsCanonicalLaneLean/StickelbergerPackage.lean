import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsCanonicalLaneLean

structure StickelbergerPackage where
  field : Type
  cyclotomicField : Type
  gaussSumIdeal : Type
  stickelbergerTheorem : Prop
  factorizationOfGaussSum : Prop

structure StickelbergerEvidence (S : StickelbergerPackage) where
  stickelbergerTheoremClosed : S.stickelbergerTheorem
  factorizationOfGaussSumClosed : S.factorizationOfGaussSum

def StickelbergerPackageClosed (S : StickelbergerPackage) : Prop :=
  S.stickelbergerTheorem ∧ S.factorizationOfGaussSum

theorem stickelberger_package_closed_from_evidence (S : StickelbergerPackage) (E : StickelbergerEvidence S) :
    StickelbergerPackageClosed S := by
  exact And.intro E.stickelbergerTheoremClosed E.factorizationOfGaussSumClosed

end CharacterSumsGaussSumsCanonicalLaneLean
end HautevilleHouse