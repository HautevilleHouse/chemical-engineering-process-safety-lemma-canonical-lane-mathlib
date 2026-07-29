import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean

structure RunawayReactionMitigationPackage where
  thermalStabilityAnalysis : Prop
  pressureReliefSizing : Prop
  quenchSystemDesign : Prop
  inhibitionChemistry : Prop
  emergencyVentHandling : Prop
  thermalStabilityAnalysisClosed : thermalStabilityAnalysis
  pressureReliefSizingClosed : pressureReliefSizing
  quenchSystemDesignClosed : quenchSystemDesign
  inhibitionChemistryClosed : inhibitionChemistry
  emergencyVentHandlingClosed : emergencyVentHandling

structure RunawayReactionMitigationEvidence (R : RunawayReactionMitigationPackage) where
  thermalStabilityAnalysisClosed : R.thermalStabilityAnalysis
  pressureReliefSizingClosed : R.pressureReliefSizing
  quenchSystemDesignClosed : R.quenchSystemDesign
  inhibitionChemistryClosed : R.inhibitionChemistry
  emergencyVentHandlingClosed : R.emergencyVentHandling

def RunawayReactionMitigationClosed (R : RunawayReactionMitigationPackage) : Prop :=
  R.thermalStabilityAnalysis ∧ R.pressureReliefSizing ∧
  R.quenchSystemDesign ∧ R.inhibitionChemistry ∧ R.emergencyVentHandling

theorem runaway_reaction_mitigation_closed_from_evidence (R : RunawayReactionMitigationPackage)
    (E : RunawayReactionMitigationEvidence R) : RunawayReactionMitigationClosed R := by
  exact And.intro E.thermalStabilityAnalysisClosed
    (And.intro E.pressureReliefSizingClosed
      (And.intro E.quenchSystemDesignClosed
        (And.intro E.inhibitionChemistryClosed E.emergencyVentHandlingClosed)))

end ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean
end HautevilleHouse
