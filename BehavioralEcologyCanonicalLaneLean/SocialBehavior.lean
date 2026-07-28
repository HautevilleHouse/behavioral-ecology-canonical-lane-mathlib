import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralEcologyCanonicalLaneLean

structure SocialBehaviorPackage where
  groupSize : Type u
  altruism : Prop
  kinSelection : Prop
  reciprocalAltruism : Prop
  dominanceHierarchy : Prop

def SocialBehaviorClosed (S : SocialBehaviorPackage) : Prop :=
  S.altruism ∧ S.kinSelection ∧ S.reciprocalAltruism ∧ S.dominanceHierarchy

end BehavioralEcologyCanonicalLaneLean
end HautevilleHouse