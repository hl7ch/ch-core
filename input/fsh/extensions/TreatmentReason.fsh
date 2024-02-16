Extension: CHEMEDExtTreatmentReason
Id: ch-emed-ext-treatmentreason
Title: "Treatment Reason"
Description: "Extension to represent the treatment reason"
* ^url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-treatmentreason"
* ^context.type = #element
* ^context.expression = "MedicationDispense"
* value[x] 1..1
* value[x] only string
* value[x] ^short = "Treatment reason"
