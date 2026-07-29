import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyLemma

structure SafetyInstrumentedSystemPackage where
  sifDefinition : Type u
  reliabilityData : Type v
  proofTestInterval : Type w
  requiredSIL : Prop
  achievedPFD : Prop
  sifDefined : Prop
  reliabilityAssessed : Prop
  testIntervalDefined : Prop
  silMet : Prop
  pfdCalculated : Prop

structure SafetyInstrumentedSystemEvidence (S : SafetyInstrumentedSystemPackage) where
  sifDefinedClosed : S.sifDefined
  reliabilityAssessedClosed : S.reliabilityAssessed
  testIntervalDefinedClosed : S.testIntervalDefined
  silMetClosed : S.silMet
  pfdCalculatedClosed : S.pfdCalculated

def SafetyInstrumentedSystemClosed (S : SafetyInstrumentedSystemPackage) : Prop :=
  S.sifDefined ∧ S.reliabilityAssessed ∧ S.testIntervalDefined ∧
  S.silMet ∧ S.pfdCalculated

theorem safety_instrumented_system_closed_from_evidence
    (S : SafetyInstrumentedSystemPackage) (E : SafetyInstrumentedSystemEvidence S) :
    SafetyInstrumentedSystemClosed S := by
  exact And.intro E.sifDefinedClosed
    (And.intro E.reliabilityAssessedClosed
      (And.intro E.testIntervalDefinedClosed
        (And.intro E.silMetClosed E.pfdCalculatedClosed)))

end ChemicalEngineeringProcessSafetyLemma
end HautevilleHouse