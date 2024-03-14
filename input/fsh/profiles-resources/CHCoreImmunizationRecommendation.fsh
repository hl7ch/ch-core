Profile: CHCoreImmunizationRecommendation
Parent: ImmunizationRecommendation
Id: ch-core-immunization-recommendation
Title: "CH Core Immunization Recommendation"
Description: "Base definition of the ImmunizationRecommendation resource for use in Swiss specific use cases."
* . ^short = "CH Core Immunization Recommendation"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains EntryResourceCrossReferences named relatesTo 0..1
* extension[relatesTo] ^definition = "The definition of a relation of this immunization entry in this document to an immunization entry in an other document."
* patient only Reference(CHCorePatient)
* patient ^short = "Patient"
* authority only Reference(CHCoreOrganization)
* recommendation.vaccineCode from $SwissVaccinationPlanImmunizationsVS (preferred)
* recommendation.vaccineCode ^short = "Immunization Recommendation Vaccine Code"
* recommendation.vaccineCode ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* recommendation.vaccineCode ^binding.extension[=].valueString = "VaccineCode"
* recommendation.vaccineCode ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* recommendation.vaccineCode ^binding.extension[=].valueBoolean = true
* recommendation.vaccineCode ^binding.description = "The code for vaccine product administered."

* recommendation.targetDisease from $ChVacdTargetDiseasesAndIllnessesUndegoneVS (preferred)
* recommendation.targetDisease ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* recommendation.targetDisease ^binding.extension[=].valueString = "Disease"
* recommendation.targetDisease ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* recommendation.targetDisease ^binding.extension[=].valueBoolean = true
* recommendation.targetDisease ^binding.description = "The code for disease."

* recommendation.forecastReason from $SwissImmunizationRecommendationCategoriesVS (preferred)
* recommendation.forecastReason ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* recommendation.forecastReason ^binding.extension[=].valueString = "Disease"
* recommendation.forecastReason ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* recommendation.forecastReason ^binding.extension[=].valueBoolean = true
* recommendation.forecastReason ^binding.description = "The reason the forecast is done."

* recommendation.supportingImmunization only Reference(CHCoreImmunization or ImmunizationEvaluation)