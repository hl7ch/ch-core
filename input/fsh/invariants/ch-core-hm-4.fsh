Invariant: ch-core-hm-4
Description: "ch-ext-ech-11-firstname can only be put on a given name"
Severity: #error
Expression: "descendants().extension.where(url='http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-firstname').count()=given.extension.where(url='http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-firstname').count()"