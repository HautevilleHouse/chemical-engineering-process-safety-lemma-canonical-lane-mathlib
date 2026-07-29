import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyLemma

structure HAZOPReview where
  node : Type
  parameter : Type
  deviation : Type
  cause : Type
  consequence : Type
  action : Type
  actionAssigned : Prop
  reviewComplete : Prop

structure HAZOPEvidence (H : HAZOPReview) where
  nodeAnalyzed : H.node
  parameterStudied : H.parameter -> Prop
  deviationDocumented : H.deviation -> Prop
  causeIdentified : H.cause -> Prop
  consequenceAssessed : H.consequence -> Prop
  actionAssignedClosed : H.actionAssigned
  reviewCompleteClosed : H.reviewComplete

end ChemicalEngineeringProcessSafetyLemma
end HautevilleHouse