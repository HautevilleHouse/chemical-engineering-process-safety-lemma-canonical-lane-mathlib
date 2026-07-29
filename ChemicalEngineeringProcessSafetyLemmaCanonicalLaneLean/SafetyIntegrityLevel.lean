import ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean.MitigationLayer

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean

structure SafetyIntegrityLevelPackage {R : ReactionKineticsPackage} {C : ConsequenceAnalysisPackage R} {H : HazardIdentificationPackage R C} {M : MitigationLayerPackage R C H} where
  silLevel : ℕ
  targetRiskReduction : ℝ
  achievedRiskReduction : ℝ
  sufficientReduction : Prop

structure SafetyIntegrityLevelEvidence {R : ReactionKineticsPackage} {C : ConsequenceAnalysisPackage R} {H : HazardIdentificationPackage R C} {M : MitigationLayerPackage R C H} (S : SafetyIntegrityLevelPackage R C H M) where
  achievedAtLeastTarget : S.achievedRiskReduction ≥ S.targetRiskReduction
  sufficientReductionClosed : S.sufficientReduction

def SafetyIntegrityLevelClosed {R : ReactionKineticsPackage} {C : ConsequenceAnalysisPackage R} {H : HazardIdentificationPackage R C} {M : MitigationLayerPackage R C H} (S : SafetyIntegrityLevelPackage R C H M) : Prop :=
  S.sufficientReduction ∧ S.achievedRiskReduction ≥ S.targetRiskReduction

theorem safety_integrity_level_closed_from_evidence {R : ReactionKineticsPackage} {C : ConsequenceAnalysisPackage R} {H : HazardIdentificationPackage R C} {M : MitigationLayerPackage R C H} (S : SafetyIntegrityLevelPackage R C H M) (E : SafetyIntegrityLevelEvidence S) : SafetyIntegrityLevelClosed S := by
  exact And.intro E.sufficientReductionClosed E.achievedAtLeastTarget

end ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean
end HautevilleHouse