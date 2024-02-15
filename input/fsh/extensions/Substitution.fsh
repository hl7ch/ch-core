Extension: CHEMEDExtSubstitution
Id: ch-emed-ext-substitution
Title: "Substitution"
Description: "This extension is used to indicate whether the medication can be substituted for this patient, i.e. whether it is allowed. 
                        (For a prescription, MedicationRequest.substitution is used to record whether a substitution is allowed or not. 
                        When dispensing, a performed substitution is recorded in MedicationDispense.substitution.)"
* ^url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-substitution"
* ^context.type = #element
* ^context.expression = "MedicationStatement"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from http://terminology.hl7.org/ValueSet/v3-ActSubstanceAdminSubstitutionCode (preferred)
* value[x] ^short = "Whether substitution is allowed or not"