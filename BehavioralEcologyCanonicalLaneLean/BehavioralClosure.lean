import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace BehavioralEcologyCanonicalLaneLean

def ConstrainedBehavioralEcologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem behavioral_ecology_endgame (A : AdmissibleClass) :
    ConstrainedBehavioralEcologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BehavioralEcologyCanonicalLaneLean
end HautevilleHouse