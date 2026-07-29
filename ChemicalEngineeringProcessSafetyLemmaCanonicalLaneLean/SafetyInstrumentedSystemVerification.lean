import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyLemma

structure SafetyInstrumentedSystem where
  silTarget : Nat
  probabilityOfFailureOnDemand : Nat
  architecture : Type
  proofTestInterval : Nat
  dangerousFailureRate : Nat

structure SISEligibility (S : SafetyInstrumentedSystem) where
  silTargetMet : S.silTarget >= 1
  pfdSatisfied : S.probabilityOfFailureOnDemand <= 10 ^ (S.silTarget : Int - 1)
  architectureValid : S.architecture
  proofTestScheduled : S.proofTestInterval > 0
  dangerousFailureRateBounded : S.dangerousFailureRate <= 10 ^ (S.silTarget : Int - 1)

end ChemicalEngineeringProcessSafetyLemma
end HautevilleHouse