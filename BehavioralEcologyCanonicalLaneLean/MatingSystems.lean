import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralEcologyCanonicalLaneLean

structure MatingSystemsPackage where
  maleStrategies : Type u
  femaleChoice : Prop
  maleCompetition : Prop
  parentalInvestment : Prop
  matingSystemClassified : Prop

def MatingSystemsClosed (M : MatingSystemsPackage) : Prop :=
  M.femaleChoice ∧ M.maleCompetition ∧ M.parentalInvestment ∧ M.matingSystemClassified

end BehavioralEcologyCanonicalLaneLean
end HautevilleHouse