
### Scope and Usage

This profile constrains the base FHIR `Encounter` resource to support the exchange of patient visit and hospitalization data in Switzerland. It aligns with the data requirements for [BFS medical statistics](https://www.bfs.admin.ch/bfs/de/home/statistiken/gesundheit/erhebungen/ms.assetdetail.12167417.html) reporting (Federal Statistical Office).

If the encounter is associated with an administrative case (Fall / Cas / Caso), the `identifier:caseNumber` slice **SHOULD** be used to report it. However, the `CHCoreEncounter`  profile does not represent an administrative case itself, it represents the clinical encounter that may be linked to such a case (see [here](StructureDefinition-ch-administrative-case.html) for details). Any identifier related to the visit (Afenthaltssnummer / Numéro de visite / Numero della visita), **SHOULD** reported using the `identifier:visitNumber` slice.   
