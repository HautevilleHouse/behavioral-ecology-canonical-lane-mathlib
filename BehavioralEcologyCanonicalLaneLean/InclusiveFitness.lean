import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralEcologyCanonicalLaneLean

structure InclusiveFitnessPackage where
  directFitness : Prop
  indirectFitness : Prop
  relatednessCoefficient : Prop
  hamiltonsRule : Prop

structure InclusiveFitnessEvidence (I : InclusiveFitnessPackage) where
  directFitnessClosed : I.directFitness
  indirectFitnessClosed : I.indirectFitness
  relatednessCoefficientClosed : I.relatednessCoefficient
  hamiltonsRuleClosed : I.hamiltonsRule

def InclusiveFitnessClosed (I : InclusiveFitnessPackage) : Prop :=
  I.directFitness ∧ I.indirectFitness ∧ I.relatednessCoefficient ∧ I.hamiltonsRule

theorem inclusive_fitness_closed_from_evidence (I : InclusiveFitnessPackage) (E : InclusiveFitnessEvidence I) :
    InclusiveFitnessClosed I := by
  exact And.intro E.directFitnessClosed (And.intro E.indirectFitnessClosed (And.intro E.relatednessCoefficientClosed E.hamiltonsRuleClosed))

end BehavioralEcologyCanonicalLaneLean
end HautevilleHouse