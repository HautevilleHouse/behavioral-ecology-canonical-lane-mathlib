import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralEcologyCanonicalLaneLean

structure Trait where
  strategy : String
  fitnessFunction : ℝ

structure EvolutionaryStableState where
  residentTrait : Trait
  mutantTrait : Trait
  invasionFitness : ℝ

structure EvolutionaryStabilityPackage (E : EvolutionaryStableState) where
  residentESS : Prop
  invasionFitnessNegative : Prop
  convergeStability : Prop

structure EvolutionaryStabilityEvidence {E : EvolutionaryStableState} (S : EvolutionaryStabilityPackage E) where
  residentESSClosed : S.residentESS
  invasionFitnessNegativeClosed : S.invasionFitnessNegative
  convergeStabilityClosed : S.convergeStability

def EvolutionaryStabilityClosed {E : EvolutionaryStableState} (S : EvolutionaryStabilityPackage E) : Prop :=
  S.residentESS ∧ S.invasionFitnessNegative ∧ S.convergeStability

theorem evolutionary_stability_closed_from_evidence {E : EvolutionaryStableState}
    (S : EvolutionaryStabilityPackage E) (E' : EvolutionaryStabilityEvidence S) : EvolutionaryStabilityClosed S := by
  exact And.intro E'.residentESSClosed (And.intro E'.invasionFitnessNegativeClosed E'.convergeStabilityClosed)

end BehavioralEcologyCanonicalLaneLean
end HautevilleHouse