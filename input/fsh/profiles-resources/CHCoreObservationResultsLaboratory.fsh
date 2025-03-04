Profile: CHCoreObservationResultsLaboratory
Parent: Observation
Id: ch-core-observation-results-laboratory
Title: "CH Core Observation Results: Laboratory"
Description: "Base definition of the Observation resource for the use of laboratory results in Swiss-specific use cases." 
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains
    laboratory 0..1 and
    studyType 0..* and
    specialty 0..*
* category[laboratory] = $observation-category#laboratory
* category[studyType] from $lab-studyType-eu-lab (required) // has to be required according to the slicing discriminator, but slicing is open
* category[specialty] from $lab-specialty-eu-lab (required)
* code from $lab-obsCode-eu-lab (preferred)
* subject only Reference(CHCorePatient or Group or Device or CHCoreLocation)
* performer only Reference(CHCorePractitioner or CHCorePractitionerRole or CHCoreOrganization or CareTeam or CHCorePatient or RelatedPerson)
* valueCodeableConcept from $results-coded-values-laboratory-uv-ips (preferred)
* valueCodeableConcept ^binding.extension[0].extension[0].url = "purpose"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #candidate
* valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/results-blood-group-snomed-ct-ips-free-set"
* valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a blood group findings value set for laboratory result values from the SNOMED CT IPS free set for use globally (in SNOMED member and non-member jurisdictions)."
* valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* valueCodeableConcept ^binding.extension[+].extension[0].url = "purpose"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #candidate
* valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/results-presence-absence-snomed-ct-ips-free-set"
* valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a presence and absence findings (qualifier values) value set for laboratory result values from the SNOMED CT IPS free set for use globally (in SNOMED member and non-member jurisdictions)."
* valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* valueCodeableConcept ^binding.extension[+].extension[0].url = "purpose"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #candidate
* valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/results-microorganism-snomed-ct-ips-free-set"
* valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a microorganisms value set for laboratory result values from the SNOMED CT IPS free set for use globally (in SNOMED member and non-member jurisdictions)."
* valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* method from $lab-technique-eu-lab (preferred)
* component.valueCodeableConcept from $results-coded-values-laboratory-uv-ips (preferred)
* component.valueCodeableConcept ^binding.extension[0].extension[0].url = "purpose"
* component.valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #candidate
* component.valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* component.valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/results-blood-group-snomed-ct-ips-free-set"
* component.valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* component.valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a blood group findings value set for laboratory result values from the SNOMED CT IPS free set for use globally (in SNOMED member and non-member jurisdictions)."
* component.valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* component.valueCodeableConcept ^binding.extension[+].extension[0].url = "purpose"
* component.valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #candidate
* component.valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* component.valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/results-presence-absence-snomed-ct-ips-free-set"
* component.valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* component.valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a presence and absence findings (qualifier values) value set for laboratory result values from the SNOMED CT IPS free set for use globally (in SNOMED member and non-member jurisdictions)."
* component.valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* component.valueCodeableConcept ^binding.extension[+].extension[0].url = "purpose"
* component.valueCodeableConcept ^binding.extension[=].extension[=].valueCode = #candidate
* component.valueCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* component.valueCodeableConcept ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/results-microorganism-snomed-ct-ips-free-set"
* component.valueCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* component.valueCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a microorganisms value set for laboratory result values from the SNOMED CT IPS free set for use globally (in SNOMED member and non-member jurisdictions)."
* component.valueCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
