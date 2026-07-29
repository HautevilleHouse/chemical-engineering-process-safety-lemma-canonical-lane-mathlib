import ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean.SafetyIntegrityLevel

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean

structure ChemicalProcessAdmittedObject where
  processCarrier : Type u
  processTopology : TopologicalSpace processCarrier
  hazardScenarioList : List (HazardIdentificationPackage (R := sorry) (C := sorry) (H := sorry))
  safetyIntegrityLevel : SafetyIntegrityLevelPackage (R := sorry) (C := sorry) (H := sorry) (M := sorry)
  conclusion : Prop

structure AdmissibleClass where
  object : ChemicalProcessAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean
end HautevilleHouse