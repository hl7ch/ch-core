Invariant: ch-core-hm-3
Description: "ch-ext-ech-11-name can only be put on a family name"
Severity: #error
Expression: "descendants().extension.where(url='http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-name').count()=family.extension.where(url='http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-name').count()"