import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralEcologyCanonicalLaneLean

structure PredatorPreyDynamicsPackage where
  preyPopulation : Type u -> Type v
  predatorPopulation : Type u -> Type w
  growthRatePrey : Prop
  growthRatePredator : Prop
  predationRate : Prop
  equilibriumStability : Prop

def PredatorPreyDynamicsClosed (P : PredatorPreyDynamicsPackage) : Prop :=
  P.growthRatePrey ∧ P.growthRatePredator ∧ P.predationRate ∧ P.equilibriumStability

end BehavioralEcologyCanonicalLaneLean
end HautevilleHouse