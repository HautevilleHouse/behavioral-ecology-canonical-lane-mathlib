import BehavioralEcologyCanonicalLaneLean.ReproductiveSuccessPackage

namespace HautevilleHouse
namespace BehavioralEcologyCanonicalLaneLean

structure GameTheoryAdmissiblePackage (P : PopulationDynamicsPackage) (E : EvolutionaryStabilityPackage P) (O : OptimalForagingPackage P E) (R : ReproductiveSuccessPackage P E O) where
  payoffMatrix : Type
  mixedStrategyEquilibrium : Prop
  invasionDynamics : Prop
  frequencyDependentSelection : Prop
  inclusiveFitness : Prop
  hamiltonRule : Prop

structure GameTheoryAdmissibleEvidence {P : PopulationDynamicsPackage} {E : EvolutionaryStabilityPackage P} {O : OptimalForagingPackage P E} {R : ReproductiveSuccessPackage P E O} (G : GameTheoryAdmissiblePackage P E O R) where
  payoffMatrixClosed : G.payoffMatrix
  mixedStrategyEquilibriumClosed : G.mixedStrategyEquilibrium
  invasionDynamicsClosed : G.invasionDynamics
  frequencyDependentSelectionClosed : G.frequencyDependentSelection
  inclusiveFitnessClosed : G.inclusiveFitness
  hamiltonRuleClosed : G.hamiltonRule

def GameTheoryAdmissibleClosed {P : PopulationDynamicsPackage} {E : EvolutionaryStabilityPackage P} {O : OptimalForagingPackage P E} {R : ReproductiveSuccessPackage P E O} (G : GameTheoryAdmissiblePackage P E O R) : Prop :=
  G.payoffMatrix ∧ G.mixedStrategyEquilibrium ∧ G.invasionDynamics ∧ G.frequencyDependentSelection ∧ G.inclusiveFitness ∧ G.hamiltonRule

theorem game_theory_admissible_closed_from_evidence {P : PopulationDynamicsPackage} {E : EvolutionaryStabilityPackage P} {O : OptimalForagingPackage P E} {R : ReproductiveSuccessPackage P E O} (G : GameTheoryAdmissiblePackage P E O R) (Ev : GameTheoryAdmissibleEvidence G) : GameTheoryAdmissibleClosed G :=
  by
    exact And.intro Ev.payoffMatrixClosed
      (And.intro Ev.mixedStrategyEquilibriumClosed
        (And.intro Ev.invasionDynamicsClosed
          (And.intro Ev.frequencyDependentSelectionClosed
            (And.intro Ev.inclusiveFitnessClosed Ev.hamiltonRuleClosed))))

end BehavioralEcologyCanonicalLaneLean
end HautevilleHouse
