Invariant: ch-core-hm-2
Description: "if orginalName with eCH-011 Extension is specified, it can only be put on a name where use attribute is maiden"
Severity: #error
Expression: "family.extension.where(url='http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-name' and valueCode='originalName').empty() or ((family.extension.where(url='http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-name' and valueCode='originalName').exists() and use='maiden'))"