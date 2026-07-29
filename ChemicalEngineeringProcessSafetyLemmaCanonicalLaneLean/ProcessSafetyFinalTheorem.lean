import ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean.BridgeLemmas
import ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean.ProcessSafetyKinetics
import ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean.ProcessSafetyThermodynamics
import ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean.ProcessSafetyRelief
import ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean.ProcessSafetyHazardAnalysis

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedProcessSafetyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_process_safety_endgame (A : AdmissibleClass) :
    ConstrainedProcessSafetyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean
end HautevilleHouse