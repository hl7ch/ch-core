Profile: CHCoreCondition
Parent: Condition
Id: ch-core-condition
Title: "CH Core Condition"
Description: "Base definition of the Condition resource for use in Swiss specific use cases."
* subject only Reference(CHCorePatient or Group)
* recorder only Reference(CHCorePractitioner or CHCorePractitionerRole or CHCorePatient or RelatedPerson)
* asserter only Reference(CHCorePractitioner or CHCorePractitionerRole or CHCorePatient or RelatedPerson)

* category from http://hl7.org/fhir/ValueSet/condition-category (extensible)
* category ^binding.extension[0].extension[0].url = "key"
* category ^binding.extension[=].extension[=].valueId = ch-etoc
* category ^binding.extension[=].extension[+].url = "purpose"
* category ^binding.extension[=].extension[=].valueCode = #candidate
* category ^binding.extension[=].extension[+].url = "valueSet"
* category ^binding.extension[=].extension[=].valueCanonical = "http://fhir.ch/ig/ch-term/ValueSet/condition-category"
* category ^binding.extension[=].extension[+].url = "documentation"
* category ^binding.extension[=].extension[=].valueMarkdown = "An alternative additional binding to the value set used in CH eTOC."
* category ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"

* code from http://hl7.org/fhir/ValueSet/condition-code (example)
* code ^binding.extension[0].extension[0].url = "key"
* code ^binding.extension[=].extension[=].valueId = ch-allergyintolerance
* code ^binding.extension[=].extension[+].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = "http://fhir.ch/ig/ch-allergyintolerance/ValueSet/CHAllergyIntoleranceConditionValueSet"
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "An alternative additional binding to the value set used in CH AllergyIntolerance."
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
