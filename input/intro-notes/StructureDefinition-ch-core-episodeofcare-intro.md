
### Scope and Usage

This profile constrains the base FHIR `EpisodeOfCare` resource to support the exchange of patient clinical episodes, programs, and problems in Switzerland. 

If the episode of care is associated with an administrative case (Fall / Cas / Caso), the `identifier:CaseNumber` slice **SHOULD** be used to report it. However, this profile `CHCoreEpisodeOfCare` does not represent an administrative case itself, it represents the clinical episode of care that may be linked to such a case (see [here](StructureDefinition-ch-administrative-case.html) for details).   
