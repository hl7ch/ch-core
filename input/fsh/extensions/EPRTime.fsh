Extension: EPRTime
Id: ch-ext-epr-time
Title: "EPR Time"
Description: "Additional timestamp for the author or other elements."

* ^context[0].type = #element
* ^context[=].expression = "Composition.extension"
* ^context[+].type = #element
* ^context[=].expression = "Composition.author"
* ^context[+].type = #element
* ^context[=].expression = "Composition.section.author"
* ^context[+].type = #element
* ^context[=].expression = "MedicationStatement.informationSource"
* ^context[+].type = #element
* ^context[=].expression = "MedicationStatement.extension"
* ^context[+].type = #element
* ^context[=].expression = "Observation.extension"
* ^context[+].type = #element
* ^context[=].expression = "Observation.performer"
* ^context[+].type = #element
* ^context[=].expression = "MedicationDispense.extension"
* ^context[+].type = #element
* ^context[=].expression = "MedicationDispense.performer.actor"
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest.extension"
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest.performer"
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest.requester"
* ^context[+].type = #element
* ^context[=].expression = "Extension.valueReference"

* . ^definition = "Extension to define the timestamp of the authorship/data input"
* url only uri
* valueDateTime 1..1
* valueDateTime only dateTime
* valueDateTime ^short = "Value of extension"