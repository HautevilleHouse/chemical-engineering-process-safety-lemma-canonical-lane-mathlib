import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyLemma

structure ConsequenceModelPackage where
  releaseScenario : Type u
  dispersionModel : Type v
  flammableEffects : Type w
  toxicEffects : Type x
  overpressureEffects : Type y
  releaseModeled : Prop
  dispersionComputed : Prop
  flammableImpactAssessed : Prop
  toxicImpactAssessed : Prop
  overpressureImpactAssessed : Prop

structure ConsequenceModelEvidence (C : ConsequenceModelPackage) where
  releaseModeledClosed : C.releaseModeled
  dispersionComputedClosed : C.dispersionComputed
  flammableImpactAssessedClosed : C.flammableImpactAssessed
  toxicImpactAssessedClosed : C.toxicImpactAssessed
  overpressureImpactAssessedClosed : C.overpressureImpactAssessed

def ConsequenceModelClosed (C : ConsequenceModelPackage) : Prop :=
  C.releaseModeled ∧ C.dispersionComputed ∧ C.flammableImpactAssessed ∧
  C.toxicImpactAssessed ∧ C.overpressureImpactAssessed

theorem consequence_model_closed_from_evidence (C : ConsequenceModelPackage)
    (E : ConsequenceModelEvidence C) : ConsequenceModelClosed C := by
  exact And.intro E.releaseModeledClosed
    (And.intro E.dispersionComputedClosed
      (And.intro E.flammableImpactAssessedClosed
        (And.intro E.toxicImpactAssessedClosed E.overpressureImpactAssessedClosed)))

end ChemicalEngineeringProcessSafetyLemma
end HautevilleHouse