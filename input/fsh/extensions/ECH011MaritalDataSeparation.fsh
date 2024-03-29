Extension: ECH011MaritalDataSeparation
Id: ch-ext-ech-11-maritaldata-separation
Title: "Marital Data - Separation Type"
Description: "eCH-0011: Extension to define the separation type. For married but separated persons and for persons in a registered partnership but living separately."

* ^context.type = #element
* ^context.expression = "Patient.maritalStatus"

* . ^definition = "Extension for eCH-0011 - MaritalData - separation"
* url only uri
* valueCodeableConcept 0..1
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from $ech-11-maritaldata-separation_1 (extensible)
* valueCodeableConcept ^short = "Value of extension"
* valueCodeableConcept ^definition = "CodeableConcept for separation type"
* valueCodeableConcept ^binding.description = "ValueSet separation type"