import BehavioralEcologyCanonicalLaneLean.BehavioralEcologyBridge

namespace HautevilleHouse
namespace BehavioralEcologyCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end BehavioralEcologyCanonicalLaneLean
end HautevilleHouse