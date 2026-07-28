import BehavioralEcologyCanonicalLaneLean.BehavioralEcologyAdmissibleClass

namespace HautevilleHouse
namespace BehavioralEcologyCanonicalLaneLean

structure PopulationDynamicsPackage where
  growthRateModel : Prop
  carryingCapacity : Prop
  predationPressure : Prop
  competitionCoefficient : Prop
  stochasticFluctuation : Prop

structure PopulationDynamicsEvidence (P : PopulationDynamicsPackage) where
  growthRateModelClosed : P.growthRateModel
  carryingCapacityClosed : P.carryingCapacity
  predationPressureClosed : P.predationPressure
  competitionCoefficientClosed : P.competitionCoefficient
  stochasticFluctuationClosed : P.stochasticFluctuation

def PopulationDynamicsClosed (P : PopulationDynamicsPackage) : Prop :=
  P.growthRateModel ∧ P.carryingCapacity ∧ P.predationPressure ∧ P.competitionCoefficient ∧ P.stochasticFluctuation

theorem population_dynamics_closed_from_evidence (P : PopulationDynamicsPackage) (E : PopulationDynamicsEvidence P) : PopulationDynamicsClosed P :=
  by
    exact And.intro E.growthRateModelClosed
      (And.intro E.carryingCapacityClosed
        (And.intro E.predationPressureClosed
          (And.intro E.competitionCoefficientClosed E.stochasticFluctuationClosed)))

end BehavioralEcologyCanonicalLaneLean
end HautevilleHouse
