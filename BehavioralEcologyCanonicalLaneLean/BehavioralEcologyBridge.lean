import BehavioralEcologyCanonicalLaneLean.BehavioralEcologyAdmissibleClass

namespace HautevilleHouse
namespace BehavioralEcologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BehavioralEcologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end BehavioralEcologyCanonicalLaneLean
end HautevilleHouse