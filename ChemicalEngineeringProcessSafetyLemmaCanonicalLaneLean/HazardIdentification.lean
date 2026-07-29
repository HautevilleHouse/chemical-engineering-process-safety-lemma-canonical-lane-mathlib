import ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean.ConsequenceAnalysis

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean

structure HazardIdentificationPackage {R : ReactionKineticsPackage} {C : ConsequenceAnalysisPackage R} where
  hazardScenario : Type u
  likelihood : hazardScenario → ℝ
  severity : hazardScenario → ℝ
  risk := λ s => likelihood s * severity s
  acceptableRiskThreshold : ℝ

structure HazardIdentificationEvidence {R : ReactionKineticsPackage} {C : ConsequenceAnalysisPackage R} (H : HazardIdentificationPackage R C) where
  likelihoodNormalized : ∀ s, H.likelihood s ∈ Set.Icc (0 : ℝ) 1
  severityFinite : ∀ s, H.severity s < ⊤
  riskBelowThreshold : ∀ s, H.risk s ≤ H.acceptableRiskThreshold

end ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean
end HautevilleHouse