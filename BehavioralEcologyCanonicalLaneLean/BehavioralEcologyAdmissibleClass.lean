import BehavioralEcologyCanonicalLaneLean.PopulationDynamics

namespace HautevilleHouse
namespace BehavioralEcologyCanonicalLaneLean

structure BehavioralEcologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BehavioralEcologyAdmittedObject where
  space : BehavioralEcologySpace
  speciesInteraction : Prop
  resourceDistribution : Prop
  fitnessLandscape : Prop
  conclusion : speciesInteraction ∧ resourceDistribution ∧ fitnessLandscape

structure BehavioralEcologyEndgameState where
  object : BehavioralEcologyAdmittedObject

def BehavioralEcologyWitnessClosed (O : BehavioralEcologyAdmittedObject) : Prop :=
  O.speciesInteraction ∧ O.resourceDistribution ∧ O.fitnessLandscape

structure AdmissibleClass where
  object : BehavioralEcologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BehavioralEcologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BehavioralEcologyCanonicalLaneLean
end HautevilleHouse