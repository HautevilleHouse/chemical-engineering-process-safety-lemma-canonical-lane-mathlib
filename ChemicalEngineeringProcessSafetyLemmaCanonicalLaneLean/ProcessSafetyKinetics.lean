import ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean

structure ReactionKineticsPackage where
  rateConstant : Prop
  activationEnergy : Prop
  arrheniusLaw : Prop
  reactionOrder : Prop
  temperatureDependence : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateConstantClosed : R.rateConstant
  activationEnergyClosed : R.activationEnergy
  arrheniusLawClosed : R.arrheniusLaw
  reactionOrderClosed : R.reactionOrder
  temperatureDependenceClosed : R.temperatureDependence

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateConstant ∧ R.activationEnergy ∧ R.arrheniusLaw ∧ R.reactionOrder ∧ R.temperatureDependence

theorem reaction_kinetics_closed_from_evidence
    (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) :
    ReactionKineticsClosed R := by
  exact And.intro E.rateConstantClosed
    (And.intro E.activationEnergyClosed
      (And.intro E.arrheniusLawClosed
        (And.intro E.reactionOrderClosed E.temperatureDependenceClosed)))

end ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean
end HautevilleHouse