Extension: EPRTime
Id: ch-ext-epr-time
Title: "EPR Time"
Description: "Additional timestamp for the author or other elements."

* ^context[0].type = #element
* ^context[=].expression = "Composition.author"
* ^context[+].type = #element
* ^context[=].expression = "Composition.section.author"
* ^context[+].type = #extension
* ^context[=].expression = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-author"
* ^context[+].type = #extension
* ^context[=].expression = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-dataenterer"

* . ^definition = "Extension to define the timestamp of the authorship/data input"
* value[x] 1..1
* value[x] only dateTime
* value[x] ^short = "Value of extension"
