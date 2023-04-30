Extension: EPRConfidentialityCode
Id: ch-ext-epr-confidentialitycode
Title: "EPR Confidentiality Code"
Description: "Extension for the confidentiality code according to the Swiss EPR regulation"

* ^context.type = #element
* ^context.expression = "Composition.confidentiality"

* . ^definition = "Extension to define the confidentiality code of the document"
* url only uri
* valueCodeableConcept 1..1
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from $DocumentEntry.confidentialityCode (required)
* valueCodeableConcept ^short = "Value of extension"
* valueCodeableConcept.coding 1..1
* valueCodeableConcept.coding.system 1..1
* valueCodeableConcept.coding.code 1..1