import BehavioralEcologyCanonicalLaneLean.BehavioralEcologyAdmissibleClass

namespace HautevilleHouse
namespace BehavioralEcologyCanonicalLaneLean

structure ForagingOptimalityPackage where
  energyIntakeRate : Prop
  handlingTime : Prop
  searchEfficiency : Prop
  optimalPatchChoice : Prop

structure ForagingOptimalityEvidence (F : ForagingOptimalityPackage) where
  energyIntakeRateClosed : F.energyIntakeRate
  handlingTimeClosed : F.handlingTime
  searchEfficiencyClosed : F.searchEfficiency
  optimalPatchChoiceClosed : F.optimalPatchChoice

def ForagingOptimalityClosed (F : ForagingOptimalityPackage) : Prop :=
  F.energyIntakeRate ∧ F.handlingTime ∧ F.searchEfficiency ∧ F.optimalPatchChoice

theorem foraging_optimality_closed_from_evidence (F : ForagingOptimalityPackage)
    (E : ForagingOptimalityEvidence F) : ForagingOptimalityClosed F := by
  exact And.intro E.energyIntakeRateClosed
    (And.intro E.handlingTimeClosed
      (And.intro E.searchEfficiencyClosed E.optimalPatchChoiceClosed))

end BehavioralEcologyCanonicalLaneLean
end HautevilleHouse