import BehavioralEcologyCanonicalLaneLean.ForagingOptimalityPackage

namespace HautevilleHouse
namespace BehavioralEcologyCanonicalLaneLean

structure GameTheoryStrategy where
  payoffs : Prop
  nashEquilibrium : Prop
  evolutionaryStableStrategy : Prop
  frequencyDependence : Prop

structure GameTheoryStrategyEvidence (S : GameTheoryStrategy) where
  payoffsClosed : S.payoffs
  nashEquilibriumClosed : S.nashEquilibrium
  evolutionaryStableStrategyClosed : S.evolutionaryStableStrategy
  frequencyDependenceClosed : S.frequencyDependence

def GameTheoryStrategyClosed (S : GameTheoryStrategy) : Prop :=
  S.payoffs ∧ S.nashEquilibrium ∧ S.evolutionaryStableStrategy ∧ S.frequencyDependence

theorem game_theory_strategy_closed_from_evidence (S : GameTheoryStrategy)
    (E : GameTheoryStrategyEvidence S) : GameTheoryStrategyClosed S := by
  exact And.intro E.payoffsClosed
    (And.intro E.nashEquilibriumClosed
      (And.intro E.evolutionaryStableStrategyClosed E.frequencyDependenceClosed))

end BehavioralEcologyCanonicalLaneLean
end HautevilleHouse