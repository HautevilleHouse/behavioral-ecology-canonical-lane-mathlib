import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralEcologyCanonicalLaneLean

structure ForagingStrategy where
  patchChoice : Type u
  timeAllocation : patchChoice → ℝ
  energyIntakeRate : ℝ
  handlingTime : patchChoice → ℝ
  encounterRate : patchChoice → ℝ

structure ForagingEnvironment where
  patchTypes : List (String × ℝ × ℝ) -- (patchName, energyContent, handlingTime)
  travelTime : ℝ

structure ForagingPackage (S : ForagingStrategy) (E : ForagingEnvironment) where
  rateMaximizing : Prop
  marginalValueTheoremSatisfied : Prop
  patchExploitationTime : S.patchChoice → ℝ

end BehavioralEcologyCanonicalLaneLean
end HautevilleHouse