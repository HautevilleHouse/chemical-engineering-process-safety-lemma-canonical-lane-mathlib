import ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean

structure ReactionKineticsPackage where
  temperature : Type u
  pressure : Type v
  rateConstant : temperature → pressure → ℝ
  activationEnergy : ℝ
  preExponentialFactor : ℝ
  reactionOrder : ℕ

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateEquationValid : ∀ T : R.temperature, ∀ P : R.pressure, R.rateConstant T P = R.preExponentialFactor * Real.exp (-R.activationEnergy / (8.314 * (T : ℝ)))
  activationEnergyPositive : R.activationEnergy > 0
  preExponentialFactorPositive : R.preExponentialFactor > 0

end ChemicalEngineeringProcessSafetyLemmaCanonicalLaneLean
end HautevilleHouse