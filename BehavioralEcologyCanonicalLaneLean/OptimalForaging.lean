import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralEcologyCanonicalLaneLean

structure OptimalForagingPackage where
  preyTypes : Type u
  energyGain : preyTypes -> Float
  handlingTime : preyTypes -> Float
  encounterRate : preyTypes -> Float
  optimalDiet : Prop
  marginalValueTheorem : Prop
  preyTypesFinite : Fintype preyTypes

structure OptimalForagingEvidence (O : OptimalForagingPackage) where
  optimalDietClosed : O.optimalDiet
  marginalValueTheoremClosed : O.marginalValueTheorem

def OptimalForagingClosed (O : OptimalForagingPackage) : Prop :=
  O.optimalDiet ∧ O.marginalValueTheorem

theorem optimal_foraging_closed_from_evidence (O : OptimalForagingPackage) (E : OptimalForagingEvidence O) :
    OptimalForagingClosed O := by
  exact And.intro E.optimalDietClosed E.marginalValueTheoremClosed

end BehavioralEcologyCanonicalLaneLean
end HautevilleHouse