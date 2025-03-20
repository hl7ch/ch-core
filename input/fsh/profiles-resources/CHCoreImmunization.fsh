Profile: CHCoreImmunization
Parent: Immunization
Id: ch-core-immunization
Title: "CH Core Immunization"
Description: "Base definition of the Immunization resource for use in Swiss specific use cases."
* . ^short = "CH Core Immunization"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    Author named recorder 0..1
* extension[recorder] ^definition = "The recorder Reference of the immunization. May be a Practitioner or a Patient"
* vaccineCode from $SwissVaccinesVS (preferred)

* vaccineCode ^binding.extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* vaccineCode ^binding.extension[=].extension[+].url = "purpose"
* vaccineCode ^binding.extension[=].extension[=].valueCode = #candidate
* vaccineCode ^binding.extension[=].extension[+].url = "valueSet"
* vaccineCode ^binding.extension[=].extension[=].valueCanonical = $SnomedCTForVaccineCodeVS
* vaccineCode ^binding.extension[=].extension[+].url = "documentation"
* vaccineCode ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a vaccines value set out of the SNOMED-CT code system."
* vaccineCode ^binding.extension[=].extension[+].url = "shortDoco"
* vaccineCode ^binding.extension[=].extension[=].valueString = "For when SNOMED-CT code system is preferred"

* vaccineCode ^binding.extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* vaccineCode ^binding.extension[=].extension[+].url = "purpose"
* vaccineCode ^binding.extension[=].extension[=].valueCode = #candidate
* vaccineCode ^binding.extension[=].extension[+].url = "valueSet"
* vaccineCode ^binding.extension[=].extension[=].valueCanonical = $SwissImunglobulineVS
* vaccineCode ^binding.extension[=].extension[+].url = "documentation"
* vaccineCode ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a vaccines value set out of the Swissmedic Immunglobuline code system."
* vaccineCode ^binding.extension[=].extension[+].url = "shortDoco"
* vaccineCode ^binding.extension[=].extension[=].valueString = "For when Swissmedic Immunglobuline code system is preferred"

//* vaccineCode.coding ^slicing.discriminator.type = #value
//* vaccineCode.coding ^slicing.discriminator.path = "$this"
//* vaccineCode.coding ^slicing.description = "Slice based on code value"
//* vaccineCode.coding ^slicing.rules = #open
//* vaccineCode.coding contains 
//    swissVaccines 0..1 and
//    snomedctVaccines 0..1 and
//    swissImunglobuline 0..1
//* vaccineCode.coding[swissVaccines] from $SwissVaccinesVS (required)
//* vaccineCode.coding[swissVaccines] ^short = "Swiss Vaccine Code"
//* vaccineCode.coding[swissVaccines] ^definition = "Swiss Vaccine Code  (ATC J07)"
//* vaccineCode.coding[snomedctVaccines] from $SnomedCTForVaccineCodeVS (required)
//* vaccineCode.coding[snomedctVaccines] ^short = "Vaccine Code by SNOMED CT"
//* vaccineCode.coding[snomedctVaccines] ^definition = "Vaccine Code by SNOMED CT"
//* vaccineCode.coding[swissImunglobuline] from $SwissImunglobulineVS (required)
//* vaccineCode.coding[swissImunglobuline] ^short = "Swiss Immunglobuline code"
//* vaccineCode.coding[swissImunglobuline] ^definition = "Swiss Immunglobuline code (ATC J06B)"
* patient only Reference(CHCorePatient)
* patient ^short = "Patient"
* encounter only Reference(CHCoreEncounter)
* encounter ^short = "Encounter"
* route from $RouteOfAdministrationImmunizationVS (preferred)
* route ^short = "How vaccine entered body."
* performer.actor only Reference(CHCorePractitioner or CHCorePractitionerRole or CHCoreOrganization)
* performer.actor ^short = "The performer who applied the vaccine"
* protocolApplied.targetDisease from $ChVacdTargetDiseasesAndIllnessesUndegoneVS (preferred)
* protocolApplied.targetDisease ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* protocolApplied.targetDisease ^binding.extension[=].valueString = "Disease"
* protocolApplied.targetDisease ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* protocolApplied.targetDisease ^binding.extension[=].valueBoolean = true
* protocolApplied.targetDisease ^binding.description = "The code for disease."

