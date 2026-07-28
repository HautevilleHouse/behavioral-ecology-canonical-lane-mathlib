import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralEcologyCanonicalLaneLean

structure AlternativeReproductiveTacticsPackage where
  sneakerStrategy : Prop
  satelliteStrategy : Prop
  conditionalStrategy : Prop
  frequencyDependence : Prop

structure AlternativeReproductiveTacticsEvidence (A : AlternativeReproductiveTacticsPackage) where
  sneakerStrategyClosed : A.sneakerStrategy
  satelliteStrategyClosed : A.satelliteStrategy
  conditionalStrategyClosed : A.conditionalStrategy
  frequencyDependenceClosed : A.frequencyDependence

def AlternativeReproductiveTacticsClosed (A : AlternativeReproductiveTacticsPackage) : Prop :=
  A.sneakerStrategy ∧ A.satelliteStrategy ∧ A.conditionalStrategy ∧ A.frequencyDependence

theorem alternative_reproductive_tactics_closed_from_evidence (A : AlternativeReproductiveTacticsPackage) (E : AlternativeReproductiveTacticsEvidence A) :
    AlternativeReproductiveTacticsClosed A := by
  exact And.intro E.sneakerStrategyClosed (And.intro E.satelliteStrategyClosed (And.intro E.conditionalStrategyClosed E.frequencyDependenceClosed))

end BehavioralEcologyCanonicalLaneLean
end HautevilleHouse