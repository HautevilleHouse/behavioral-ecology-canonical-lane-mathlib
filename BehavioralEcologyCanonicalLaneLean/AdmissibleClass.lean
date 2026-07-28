import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralEcologyCanonicalLaneLean

structure BehavioralEcologyAdmittedObject where
  population : Type u
  strategySet : Type v
  fitnessFunction : strategySet → ℝ
  equilibriumCondition : Prop
  equilibriumHolds : equilibriumCondition

def BehavioralEcologyWitnessClosed (O : BehavioralEcologyAdmittedObject) : Prop :=
  O.equilibriumCondition

structure AdmissibleClass where
  object : BehavioralEcologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BehavioralEcologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BehavioralEcologyCanonicalLaneLean
end HautevilleHouse