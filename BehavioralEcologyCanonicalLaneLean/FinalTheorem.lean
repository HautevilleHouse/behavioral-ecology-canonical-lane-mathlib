import HautevilleHouse.BehavioralEcologyCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.BehavioralEcologyCanonicalLaneLean.OptimalForagingTheory
import HautevilleHouse.BehavioralEcologyCanonicalLaneLean.EvolutionaryGameTheory

namespace HautevilleHouse
namespace BehavioralEcologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BehavioralEcologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.equilibriumHolds

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedBehavioralEcologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_behavioral_ecology_endgame (A : AdmissibleClass) :
    ConstrainedBehavioralEcologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BehavioralEcologyCanonicalLaneLean
end HautevilleHouse