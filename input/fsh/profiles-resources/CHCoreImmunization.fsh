Profile: CHCoreImmunization
Parent: Immunization
Id: ch-core-immunization
Title: "CH Core Immunization"
Description: "CH Core definition of the immunization."
* ^version = "0.2.0"
* ^status = #active
* ^experimental = false
* . ^short = "CH Core Immunization"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    Author named recorder 0..1 and
    EntryResourceCrossReferences named relatesTo 0..1 
* extension[recorder] ^definition = "The recorder Reference of the immunization. May be a Practitioner or a Patient"
* extension[relatesTo] ^definition = "The definition of a relation of this immunization entry in this document to an immunization entry in an other document."
* identifier 1..
* identifier ^short = "Immunization item ID"
* vaccineCode from $SwissVaccines (preferred)
* vaccineCode.coding ^slicing.discriminator.type = #pattern
* vaccineCode.coding ^slicing.discriminator.path = "$this"
* vaccineCode.coding ^slicing.description = "Slice based on code value"
* vaccineCode.coding ^slicing.rules = #open
* vaccineCode.coding contains 
    swissVaccines 0..1 and
    snomedctVaccines 0..1 
    // and absentOrUnknownImmunization 0..1
* vaccineCode.coding[swissVaccines] from $SwissVaccines (required)
* vaccineCode.coding[swissVaccines] ^short = "Swiss Vaccine Code"
* vaccineCode.coding[swissVaccines] ^definition = "Swiss Vaccine Code"
* vaccineCode.coding[snomedctVaccines] from $SnomedCTForVaccineCode (required)
* vaccineCode.coding[snomedctVaccines] ^short = "Vaccine Code by SNOMED CT"
* vaccineCode.coding[snomedctVaccines] ^definition = "Vaccine Code by SNOMED CT"
// * vaccineCode.coding[absentOrUnknownImmunization] from $NoImmunizationInfoUvIps (required)
// * vaccineCode.coding[absentOrUnknownImmunization] ^short = "Absent Unknown Immunization"
// * vaccineCode.coding[absentOrUnknownImmunization] ^definition = "A reference to a code indicating that there there are no known immunizations or that this information is unknown."
* patient only Reference(CHCorePatient)
* patient ^short = "Patient"
* encounter only Reference(CHCoreEncounter)
* encounter ^short = "Encounter"
* manufacturer only Reference(CHCoreOrganization)
* route from $RouteOfAdministrationImmunization (preferred)
* route ^short = "How vaccine entered body."
* performer.actor only Reference(CHCorePractitioner or CHCorePractitionerRole or CHCoreOrganization)
* performer.actor ^short = "The performer who applied the vaccine"
* protocolApplied 1..
* protocolApplied.targetDisease from $ChVacdTargetDiseasesAndIllnessesUndegone (preferred)
* protocolApplied.targetDisease ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* protocolApplied.targetDisease ^binding.extension[=].valueString = "Disease"
* protocolApplied.targetDisease ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* protocolApplied.targetDisease ^binding.extension[=].valueBoolean = true
* protocolApplied.targetDisease ^binding.description = "The code for disease."
* protocolApplied.authority only Reference(CHCoreOrganization)
