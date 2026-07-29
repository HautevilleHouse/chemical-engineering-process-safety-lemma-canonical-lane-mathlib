import ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean

structure ThermodynamicsPackage where
  energyBalance : Prop
  entropyGeneration : Prop
  equilibriumConstant : Prop
  gibbsFreeEnergy : Prop
  phaseStability : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  energyBalanceClosed : T.energyBalance
  entropyGenerationClosed : T.entropyGeneration
  equilibriumConstantClosed : T.equilibriumConstant
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  phaseStabilityClosed : T.phaseStability

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.energyBalance ∧ T.entropyGeneration ∧ T.equilibriumConstant ∧ T.gibbsFreeEnergy ∧ T.phaseStability

theorem thermodynamics_closed_from_evidence
    (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.energyBalanceClosed
    (And.intro E.entropyGenerationClosed
      (And.intro E.equilibriumConstantClosed
        (And.intro E.gibbsFreeEnergyClosed E.phaseStabilityClosed)))

end ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean
end HautevilleHouse