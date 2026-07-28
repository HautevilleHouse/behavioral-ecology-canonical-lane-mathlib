import BehavioralEcologyCanonicalLaneLean.PopulationDynamicsPackage

namespace HautevilleHouse
namespace BehavioralEcologyCanonicalLaneLean

structure EvolutionaryStabilityPackage (P : PopulationDynamicsPackage) where
  strategySet : Type
  fitnessFunction : Type
  nashEquilibriumExistence : Prop
  evolutionaryStableState : Prop
  replicatorDynamics : Prop
  mutationRate : Prop

structure EvolutionaryStabilityEvidence {P : PopulationDynamicsPackage} (E : EvolutionaryStabilityPackage P) where
  strategySetClosed : E.strategySet
  fitnessFunctionClosed : E.fitnessFunction
  nashEquilibriumExistenceClosed : E.nashEquilibriumExistence
  evolutionaryStableStateClosed : E.evolutionaryStableState
  replicatorDynamicsClosed : E.replicatorDynamics
  mutationRateClosed : E.mutationRate

def EvolutionaryStabilityClosed {P : PopulationDynamicsPackage} (E : EvolutionaryStabilityPackage P) : Prop :=
  E.strategySet ∧ E.fitnessFunction ∧ E.nashEquilibriumExistence ∧ E.evolutionaryStableState ∧ E.replicatorDynamics ∧ E.mutationRate

theorem evolutionary_stability_closed_from_evidence {P : PopulationDynamicsPackage} (E : EvolutionaryStabilityPackage P) (Ev : EvolutionaryStabilityEvidence E) : EvolutionaryStabilityClosed E :=
  by
    exact And.intro Ev.strategySetClosed
      (And.intro Ev.fitnessFunctionClosed
        (And.intro Ev.nashEquilibriumExistenceClosed
          (And.intro Ev.evolutionaryStableStateClosed
            (And.intro Ev.replicatorDynamicsClosed Ev.mutationRateClosed))))

end BehavioralEcologyCanonicalLaneLean
end HautevilleHouse
