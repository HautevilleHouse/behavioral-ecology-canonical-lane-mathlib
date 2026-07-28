import HautevilleHouse.BehavioralEcologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralEcologyCanonicalLaneLean

structure GameTheoryPackage where
  payoffMatrix : Type u
  strategySet : Type v
  evolutionaryStableStrategy : Prop
  replicatorDynamics : Prop
  hawkDoveEquilibrium : Prop
  frequencyDependentSelection : Prop

structure GameTheoryEvidence (G : GameTheoryPackage) where
  evolutionaryStableStrategyClosed : G.evolutionaryStableStrategy
  replicatorDynamicsClosed : G.replicatorDynamics
  hawkDoveEquilibriumClosed : G.hawkDoveEquilibrium
  frequencyDependentSelectionClosed : G.frequencyDependentSelection

def GameTheoryClosed (G : GameTheoryPackage) : Prop :=
  G.evolutionaryStableStrategy ∧ G.replicatorDynamics ∧ G.hawkDoveEquilibrium ∧ G.frequencyDependentSelection

theorem game_theory_closed_from_evidence (G : GameTheoryPackage) (E : GameTheoryEvidence G) :
    GameTheoryClosed G := by
  exact And.intro E.evolutionaryStableStrategyClosed
    (And.intro E.replicatorDynamicsClosed
      (And.intro E.hawkDoveEquilibriumClosed E.frequencyDependentSelectionClosed))

end BehavioralEcologyCanonicalLaneLean
end HautevilleHouse