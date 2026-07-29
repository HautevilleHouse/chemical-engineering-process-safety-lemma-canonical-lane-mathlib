import ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean.HazardIdentification

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean

structure MitigationLayerPackage {R : ReactionKineticsPackage} {C : ConsequenceAnalysisPackage R} {H : HazardIdentificationPackage R C} where
  layerType : String
  riskReductionFactor : ℝ
  reliability : ℝ

structure MitigationLayerEvidence {R : ReactionKineticsPackage} {C : ConsequenceAnalysisPackage R} {H : HazardIdentificationPackage R C} (M : MitigationLayerPackage R C H) where
  riskReductionFactorPositive : M.riskReductionFactor > 0
  reliabilityBounds : 0 ≤ M.reliability ∧ M.reliability ≤ 1

end ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean
end HautevilleHouse