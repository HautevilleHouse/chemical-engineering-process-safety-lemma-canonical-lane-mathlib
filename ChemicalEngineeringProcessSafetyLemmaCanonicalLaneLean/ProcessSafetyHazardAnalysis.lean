import ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean

structure HazardAnalysisPackage where
  hazoStudy : Prop
  faultTreeAnalysis : Prop
  eventTreeAnalysis : Prop
  layerOfProtectionAnalysis : Prop
  safetyIntegrityLevel : Prop

structure HazardAnalysisEvidence (H : HazardAnalysisPackage) where
  hazoStudyClosed : H.hazoStudy
  faultTreeAnalysisClosed : H.faultTreeAnalysis
  eventTreeAnalysisClosed : H.eventTreeAnalysis
  layerOfProtectionAnalysisClosed : H.layerOfProtectionAnalysis
  safetyIntegrityLevelClosed : H.safetyIntegrityLevel

def HazardAnalysisClosed (H : HazardAnalysisPackage) : Prop :=
  H.hazoStudy ∧ H.faultTreeAnalysis ∧ H.eventTreeAnalysis ∧ H.layerOfProtectionAnalysis ∧ H.safetyIntegrityLevel

theorem hazard_analysis_closed_from_evidence
    (H : HazardAnalysisPackage) (E : HazardAnalysisEvidence H) :
    HazardAnalysisClosed H := by
  exact And.intro E.hazoStudyClosed
    (And.intro E.faultTreeAnalysisClosed
      (And.intro E.eventTreeAnalysisClosed
        (And.intro E.layerOfProtectionAnalysisClosed E.safetyIntegrityLevelClosed)))

end ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean
end HautevilleHouse