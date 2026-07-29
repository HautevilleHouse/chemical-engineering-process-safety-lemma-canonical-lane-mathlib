import ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean

structure ReliefSystemPackage where
  pressureReliefValve : Prop
  ruptureDisk : Prop
  flareSystem : Prop
  blowdown : Prop
  containment : Prop

structure ReliefSystemEvidence (R : ReliefSystemPackage) where
  pressureReliefValveClosed : R.pressureReliefValve
  ruptureDiskClosed : R.ruptureDisk
  flareSystemClosed : R.flareSystem
  blowdownClosed : R.blowdown
  containmentClosed : R.containment

def ReliefSystemClosed (R : ReliefSystemPackage) : Prop :=
  R.pressureReliefValve ∧ R.ruptureDisk ∧ R.flareSystem ∧ R.blowdown ∧ R.containment

theorem relief_system_closed_from_evidence
    (R : ReliefSystemPackage) (E : ReliefSystemEvidence R) :
    ReliefSystemClosed R := by
  exact And.intro E.pressureReliefValveClosed
    (And.intro E.ruptureDiskClosed
      (And.intro E.flareSystemClosed
        (And.intro E.blowdownClosed E.containmentClosed)))

end ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean
end HautevilleHouse