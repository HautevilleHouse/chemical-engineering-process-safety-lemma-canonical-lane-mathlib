import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ConsequenceAnalysisClosed A.consequence ∧ LayerOfProtectionClosed A.lop ∧ HazardIdentificationClosed A.hazard

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  obtain ⟨hazEv, conEv, lopEv⟩ := A.evidence
  exact And.intro (consequence_analysis_closed_from_evidence A.consequence conEv) (And.intro (layer_of_protection_closed_from_evidence A.lop lopEv) (hazard_identification_closed_from_evidence A.hazard hazEv))

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean
end HautevilleHouse