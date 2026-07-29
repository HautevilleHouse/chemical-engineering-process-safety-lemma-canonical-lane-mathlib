import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ProcessSafetySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ProcessSafetyAdmittedObject where
  space : ProcessSafetySpace
  processSafetyProperty : Prop
  model : Type
  modelTopology : TopologicalSpace model
  safetyCondition : Prop
  conclusion : safetyCondition

structure ProcessSafetyEndgameState where
  object : ProcessSafetyAdmittedObject

def ProcessSafetyWitnessClosed (O : ProcessSafetyAdmittedObject) : Prop :=
  O.safetyCondition

end ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean
end HautevilleHouse