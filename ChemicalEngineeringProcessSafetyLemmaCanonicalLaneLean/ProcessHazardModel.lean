import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyLemma

structure ProcessHazardModel where
  scenario : Type
  deviation : Type
  cause : Type
  consequence : Type
  safeguard : Type
  severity : Nat
  likelihood : Nat
  riskPriorityNumber : Nat

structure ProcessHazardEvidence (P : ProcessHazardModel) where
  scenarioIdentified : P.scenario
  deviationDefined : P.deviaition -> Prop
  causeLinked : P.cause -> P.deviation -> Prop
  consequenceAssessed : P.consequence -> P.severity -> P.likelihood -> Prop
  safeguardAssigned : P.safeguard -> Prop

end ChemicalEngineeringProcessSafetyLemma
end HautevilleHouse