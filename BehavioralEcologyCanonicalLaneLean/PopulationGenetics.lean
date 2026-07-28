import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BehavioralEcologyCanonicalLaneLean

structure PopulationGeneticsPackage where
  alleleFrequencies : Type u -> Prop
  selectionPressure : Prop
  geneticDrift : Prop
  geneFlow : Prop
  hardyWeinbergEquilibrium : Prop

def PopulationGeneticsClosed (P : PopulationGeneticsPackage) : Prop :=
  P.alleleFrequencies ∧ P.selectionPressure ∧ P.geneticDrift ∧ P.geneFlow ∧ P.hardyWeinbergEquilibrium

end BehavioralEcologyCanonicalLaneLean
end HautevilleHouse