import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean

structure ProcessSafetyKinetcsPackage where
  reactionRateModel : Prop
  activationEnergyBarrier : Prop
  temperatureDependence : Prop
  pressureEffect : Prop
  catalystInfluence : Prop
  reactionRateModelClosed : reactionRateModel
  activationEnergyBarrierClosed : activationEnergyBarrier
  temperatureDependenceClosed : temperatureDependence
  pressureEffectClosed : pressureEffect
  catalystInfluenceClosed : catalystInfluence

structure ProcessSafetyKinetcsEvidence (P : ProcessSafetyKinetcsPackage) where
  reactionRateModelClosed : P.reactionRateModel
  activationEnergyBarrierClosed : P.activationEnergyBarrier
  temperatureDependenceClosed : P.temperatureDependence
  pressureEffectClosed : P.pressureEffect
  catalystInfluenceClosed : P.catalystInfluence

def ProcessSafetyKinetcsClosed (P : ProcessSafetyKinetcsPackage) : Prop :=
  P.reactionRateModel ∧ P.activationEnergyBarrier ∧
  P.temperatureDependence ∧ P.pressureEffect ∧ P.catalystInfluence

theorem process_safety_kinetcs_closed_from_evidence (P : ProcessSafetyKinetcsPackage)
    (E : ProcessSafetyKinetcsEvidence P) : ProcessSafetyKinetcsClosed P := by
  exact And.intro E.reactionRateModelClosed
    (And.intro E.activationEnergyBarrierClosed
      (And.intro E.temperatureDependenceClosed
        (And.intro E.pressureEffectClosed E.catalystInfluenceClosed)))

end ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean
end HautevilleHouse
