Invariant: ch-core-hm-1
Description: "if officalName with eCH-011 Extension is specified, it can only be put on a name where use attribute is official"
Severity: #error
Expression: "family.extension.where(url='http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-name' and value='officialName').empty() or (family.extension.where(url='http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-name' and value='officialName').exists() and use='official')"