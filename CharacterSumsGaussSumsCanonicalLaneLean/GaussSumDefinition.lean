import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterSumsGaussSumsCanonicalLaneLean

structure GaussSumPackage where
  char : Type u
  field : Type v
  additiveChar : Type w
  multiplicativeChar : Type x
  gaussSumValue : Type y
  charFinite : Prop
  fieldFinite : Prop
  additiveCharNontrivial : Prop
  multiplicativeCharPrimitive : Prop
  gaussSumDefined : Prop

structure GaussSumEvidence (G : GaussSumPackage) where
  charFiniteClosed : G.charFinite
  fieldFiniteClosed : G.fieldFinite
  additiveCharNontrivialClosed : G.additiveCharNontrivial
  multiplicativeCharPrimitiveClosed : G.multiplicativeCharPrimitive
  gaussSumDefinedClosed : G.gaussSumDefined

def GaussSumClosed (G : GaussSumPackage) : Prop :=
  G.charFinite ∧ G.fieldFinite ∧ G.additiveCharNontrivial ∧ G.multiplicativeCharPrimitive ∧ G.gaussSumDefined

theorem gauss_sum_closed_from_evidence (G : GaussSumPackage) (E : GaussSumEvidence G) : GaussSumClosed G := by
  exact And.intro E.charFiniteClosed (And.intro E.fieldFiniteClosed (And.intro E.additiveCharNontrivialClosed (And.intro E.multiplicativeCharPrimitiveClosed E.gaussSumDefinedClosed)))

end CharacterSumsGaussSumsCanonicalLaneLean
end HautevilleHouse