Extension: ChEplRegulatedAuthorizationLimitationIndicationCode
Id: ch-epl-regulated-authorization-limitation-indication-code
Title: "Indication Code"
Description: "Indication Code, as defined by the [FOPH list of healthcare benefits](https://fhir.ch/ig/ch-epl/index.html) to be conveyed when referring to prescription/dispense/billing of medicinal products subject to a price model as defined by the FOPH."

* ^context[+].type = #element
* ^context[=].expression = "Immunization"
* ^context[+].type = #element
* ^context[=].expression = "ImmunizationRecommendation.recommendation"
* ^context[+].type = #element
* ^context[=].expression = "MedicationAdministration"
* ^context[+].type = #element
* ^context[=].expression = "MedicationDispense"
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"
* ^context[+].type = #element
* ^context[=].expression = "MedicationStatement"


* value[x] 1..1
* value[x] only string
* value[x] ^short = "The indication code assigned by the FOPH for this medicinal product and indication."
* value[x] ^definition = "The [indication code assigned by the FOPH for this medicinal product and indication](https://fhir.ch/ig/ch-epl/StructureDefinition-regulatedAuthorization-limitation.html). Normally a code that looks like XXXXX.XX with the first 5 digits being the FOPH dossier number, followed by a dot and then by two digits which are a sequence of defined indications by the FOPH."