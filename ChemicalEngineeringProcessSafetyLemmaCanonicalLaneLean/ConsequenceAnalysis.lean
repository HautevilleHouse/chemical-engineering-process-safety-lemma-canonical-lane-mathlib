import ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean.ReactionKinetics

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean

structure ConsequenceAnalysisPackage {R : ReactionKineticsPackage} where
  heatReleaseRate : ℝ
  toxicReleaseRate : ℝ
  overpressure : ℝ
  harmCriteriaMet : Prop

structure ConsequenceAnalysisEvidence {R : ReactionKineticsPackage} (C : ConsequenceAnalysisPackage R) where
  heatReleaseRateFinite : C.heatReleaseRate < ⊤
  toxicReleaseRateControlled : C.toxicReleaseRate < 0.1
  overpressureWithinLimits : C.overpressure < 0.2

end ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean
end HautevilleHouse