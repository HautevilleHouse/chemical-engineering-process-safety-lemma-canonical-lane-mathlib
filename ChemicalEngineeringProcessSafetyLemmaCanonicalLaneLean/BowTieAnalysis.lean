import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyLemma

structure BowTieAnalysisModel where
  hazard : Type
  topEvent : Type
  threatBarriers : List Type
  consequenceBarriers : List Type
  escalationFactors : List Type

structure BowTieAnalysisEvidence (B : BowTieAnalysisModel) where
  hazardIdentified : B.hazard
  topEventDefined : B.topEvent -> Prop
  threatBarriersFunctional : B.threatBarriers -> Prop
  consequenceBarriersFunctional : B.consequenceBarriers -> Prop
  escalationFactorsControlled : B.escalationFactors -> Prop

end ChemicalEngineeringProcessSafetyLemma
end HautevilleHouse