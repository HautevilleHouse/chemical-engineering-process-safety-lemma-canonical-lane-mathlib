import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean

structure HazardScenarioFaultTreePackage where
  topEventDefinition : Prop
  faultTreeConstruction : Prop
  minimalCutSets : Prop
  probabilityAssessment : Prop
  severityClassification : Prop
  topEventDefinitionClosed : topEventDefinition
  faultTreeConstructionClosed : faultTreeConstruction
  minimalCutSetsClosed : minimalCutSets
  probabilityAssessmentClosed : probabilityAssessment
  severityClassificationClosed : severityClassification

structure HazardScenarioFaultTreeEvidence (H : HazardScenarioFaultTreePackage) where
  topEventDefinitionClosed : H.topEventDefinition
  faultTreeConstructionClosed : H.faultTreeConstruction
  minimalCutSetsClosed : H.minimalCutSets
  probabilityAssessmentClosed : H.probabilityAssessment
  severityClassificationClosed : H.severityClassification

def HazardScenarioFaultTreeClosed (H : HazardScenarioFaultTreePackage) : Prop :=
  H.topEventDefinition ∧ H.faultTreeConstruction ∧
  H.minimalCutSets ∧ H.probabilityAssessment ∧ H.severityClassification

theorem hazard_scenario_fault_tree_closed_from_evidence (H : HazardScenarioFaultTreePackage)
    (E : HazardScenarioFaultTreeEvidence H) : HazardScenarioFaultTreeClosed H := by
  exact And.intro E.topEventDefinitionClosed
    (And.intro E.faultTreeConstructionClosed
      (And.intro E.minimalCutSetsClosed
        (And.intro E.probabilityAssessmentClosed E.severityClassificationClosed)))

end ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean
end HautevilleHouse
