import BehavioralEcologyCanonicalLaneLean.EvolutionaryStabilityPackage

namespace HautevilleHouse
namespace BehavioralEcologyCanonicalLaneLean

structure OptimalForagingPackage (P : PopulationDynamicsPackage) (E : EvolutionaryStabilityPackage P) where
  resourcePatchDistribution : Prop
  searchTime : Prop
  handlingTime : Prop
  energyGainFunction : Prop
  patchDepartureRule : Prop
  marginalValueTheorem : Prop

structure OptimalForagingEvidence {P : PopulationDynamicsPackage} {E : EvolutionaryStabilityPackage P} (O : OptimalForagingPackage P E) where
  resourcePatchDistributionClosed : O.resourcePatchDistribution
  searchTimeClosed : O.searchTime
  handlingTimeClosed : O.handlingTime
  energyGainFunctionClosed : O.energyGainFunction
  patchDepartureRuleClosed : O.patchDepartureRule
  marginalValueTheoremClosed : O.marginalValueTheorem

def OptimalForagingClosed {P : PopulationDynamicsPackage} {E : EvolutionaryStabilityPackage P} (O : OptimalForagingPackage P E) : Prop :=
  O.resourcePatchDistribution ∧ O.searchTime ∧ O.handlingTime ∧ O.energyGainFunction ∧ O.patchDepartureRule ∧ O.marginalValueTheorem

theorem optimal_foraging_closed_from_evidence {P : PopulationDynamicsPackage} {E : EvolutionaryStabilityPackage P} (O : OptimalForagingPackage P E) (Ev : OptimalForagingEvidence O) : OptimalForagingClosed O :=
  by
    exact And.intro Ev.resourcePatchDistributionClosed
      (And.intro Ev.searchTimeClosed
        (And.intro Ev.handlingTimeClosed
          (And.intro Ev.energyGainFunctionClosed
            (And.intro Ev.patchDepartureRuleClosed Ev.marginalValueTheoremClosed))))

end BehavioralEcologyCanonicalLaneLean
end HautevilleHouse
