import HautevilleHouse.BehavioralEcologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralEcologyCanonicalLaneLean

structure ForagingModelPackage where
  preyTypes : Type u
  encounterRates : preyTypes → ℝ
  handlingTimes : preyTypes → ℝ
  energyValues : preyTypes → ℝ
  optimalDietRule : Prop
  patchDepartureRule : Prop
  marginalValueTheoremCompliance : Prop

structure ForagingModelEvidence (M : ForagingModelPackage) where
  optimalDietRuleClosed : M.optimalDietRule
  patchDepartureRuleClosed : M.patchDepartureRule
  marginalValueTheoremComplianceClosed : M.marginalValueTheoremCompliance

def ForagingModelClosed (M : ForagingModelPackage) : Prop :=
  M.optimalDietRule ∧ M.patchDepartureRule ∧ M.marginalValueTheoremCompliance

theorem foraging_model_closed_from_evidence (M : ForagingModelPackage) (E : ForagingModelEvidence M) :
    ForagingModelClosed M := by
  exact And.intro E.optimalDietRuleClosed (And.intro E.patchDepartureRuleClosed E.marginalValueTheoremComplianceClosed)

end BehavioralEcologyCanonicalLaneLean
end HautevilleHouse