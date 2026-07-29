import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ProcessSafetyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean
end HautevilleHouse