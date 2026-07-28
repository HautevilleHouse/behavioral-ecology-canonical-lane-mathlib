import BehavioralEcologyCanonicalLaneLean.OptimalForagingPackage

namespace HautevilleHouse
namespace BehavioralEcologyCanonicalLaneLean

structure ReproductiveSuccessPackage (P : PopulationDynamicsPackage) (E : EvolutionaryStabilityPackage P) (O : OptimalForagingPackage P E) where
  clutchSize : Prop
  offspringSurvival : Prop
  parentalInvestment : Prop
  tradeoffCurve : Prop
  optimalClutchSizeDerived : Prop

structure ReproductiveSuccessEvidence {P : PopulationDynamicsPackage} {E : EvolutionaryStabilityPackage P} {O : OptimalForagingPackage P E} (R : ReproductiveSuccessPackage P E O) where
  clutchSizeClosed : R.clutchSize
  offspringSurvivalClosed : R.offspringSurvival
  parentalInvestmentClosed : R.parentalInvestment
  tradeoffCurveClosed : R.tradeoffCurve
  optimalClutchSizeDerivedClosed : R.optimalClutchSizeDerived

def ReproductiveSuccessClosed {P : PopulationDynamicsPackage} {E : EvolutionaryStabilityPackage P} {O : OptimalForagingPackage P E} (R : ReproductiveSuccessPackage P E O) : Prop :=
  R.clutchSize ∧ R.offspringSurvival ∧ R.parentalInvestment ∧ R.tradeoffCurve ∧ R.optimalClutchSizeDerived

theorem reproductive_success_closed_from_evidence {P : PopulationDynamicsPackage} {E : EvolutionaryStabilityPackage P} {O : OptimalForagingPackage P E} (R : ReproductiveSuccessPackage P E O) (Ev : ReproductiveSuccessEvidence R) : ReproductiveSuccessClosed R :=
  by
    exact And.intro Ev.clutchSizeClosed
      (And.intro Ev.offspringSurvivalClosed
        (And.intro Ev.parentalInvestmentClosed
          (And.intro Ev.tradeoffCurveClosed Ev.optimalClutchSizeDerivedClosed)))

end BehavioralEcologyCanonicalLaneLean
end HautevilleHouse
