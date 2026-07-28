import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralEcologyCanonicalLaneLean

structure PopulationState where
  populationSize : ℝ
  traitDistribution : (String → ℝ)

structure GrowthModel where
  intrinsicGrowthRate : ℝ
  carryingCapacity : ℝ
  competitionCoefficient : ℝ

structure PopulationDynamicsPackage (P : PopulationState) (G : GrowthModel) where
  logisticEquationSatisfied : Prop
  equilibriumStability : Prop
  invasionAnalysis : Prop

structure PopulationDynamicsEvidence {P : PopulationState} {G : GrowthModel} (D : PopulationDynamicsPackage P G) where
  logisticEquationSatisfiedClosed : D.logisticEquationSatisfied
  equilibriumStabilityClosed : D.equilibriumStability
  invasionAnalysisClosed : D.invasionAnalysis

def PopulationDynamicsClosed {P : PopulationState} {G : GrowthModel} (D : PopulationDynamicsPackage P G) : Prop :=
  D.logisticEquationSatisfied ∧ D.equilibriumStability ∧ D.invasionAnalysis

theorem population_dynamics_closed_from_evidence {P : PopulationState} {G : GrowthModel}
    (D : PopulationDynamicsPackage P G) (E : PopulationDynamicsEvidence D) : PopulationDynamicsClosed D := by
  exact And.intro E.logisticEquationSatisfiedClosed (And.intro E.equilibriumStabilityClosed E.invasionAnalysisClosed)

end BehavioralEcologyCanonicalLaneLean
end HautevilleHouse