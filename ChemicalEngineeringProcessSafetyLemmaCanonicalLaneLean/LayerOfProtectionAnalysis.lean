import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean

structure LayerOfProtectionPackage where
  independentProtectionLayers : Nat
  demandRate : ℝ
  probabilityOfFailureOnDemand : ℝ
  riskReductionFactor : ℝ
  acceptableRiskFrequency : ℝ

structure LayerOfProtectionEvidence (L : LayerOfProtectionPackage) where
  independentProtectionLayersClosed : L.independentProtectionLayers ≥ 1
  demandRateClosed : L.demandRate > 0
  probabilityOfFailureOnDemandClosed : L.probabilityOfFailureOnDemand > 0

def LayerOfProtectionClosed (L : LayerOfProtectionPackage) : Prop :=
  L.independentProtectionLayers ≥ 1 ∧ L.demandRate > 0 ∧ L.probabilityOfFailureOnDemand > 0

theorem layer_of_protection_closed_from_evidence (L : LayerOfProtectionPackage) (E : LayerOfProtectionEvidence L) : LayerOfProtectionClosed L := by
  exact And.intro E.independentProtectionLayersClosed (And.intro E.demandRateClosed E.probabilityOfFailureOnDemandClosed)

end ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean
end HautevilleHouse