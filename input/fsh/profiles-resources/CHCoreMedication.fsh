Profile: CHCoreMedication
Parent: Medication
Id: ch-core-medication
Title: "CH Core Medication"
Description: "Base definition of the Medication resource for use in Swiss specific use cases."
* . ^short = "CH Core Medication"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains 
    GTIN 0..* and
    ATC 0..*
* code.coding[GTIN] ^short = "GTIN for Swiss products"
* code.coding[GTIN].system 1..1
* code.coding[GTIN].system = "urn:oid:2.51.1.1" (exactly)
* code.coding[GTIN].system ^short = "Global Trade Item Number (GS1)"
* code.coding[GTIN].code 1..1
* code.coding[ATC] ^short = "ATC for foreign products"
* code.coding[ATC].system 1..1
* code.coding[ATC].system = "http://www.whocc.no/atc" (exactly)
* code.coding[ATC].system ^short = "Anatomical Therapeutic Chemical (ATC) Classification"
* code.coding[ATC].code 1..1
* form from http://fhir.ch/ig/ch-term/ValueSet/edqm-pharmaceuticaldoseform (preferred)
* amount only CHCoreRatioWithEmedUnits
* ingredient.item[x] only CodeableConcept or Reference(http://hl7.org/fhir/StructureDefinition/Substance or CHCoreMedication)
* ingredient.item[x] from http://fhir.ch/ig/ch-term/ValueSet/ActivePharmaceuticalIngredient (preferred)
* ingredient.strength only CHCoreRatioWithEmedUnits


Profile: CHCoreMedicationStatement
Parent: MedicationStatement
Id: ch-core-medicationstatement
Title: "CH Core MedicationStatement"
Description: "Base definition of the MedicationStatement resource for use in Swiss specific use cases."
* . ^short = "CH Core MedicationStatement"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains CHEMEDExtSubstitution named substitution 0..1
* extension[substitution] ^short = "Whether substitution is allowed or not"
* medication[x] only CodeableConcept or Reference(CHCoreMedication) 
* subject only Reference(CHCorePatient or Group)
* informationSource only Reference(CHCorePatient or CHCorePractitioner or CHCorePractitionerRole or CHCoreRelatedPerson or CHCoreOrganization)
* dosage only CHCoreDosage


Profile: CHCoreMedicationAdministration
Parent: MedicationAdministration
Id: ch-core-medicationadministration
Title: "CH Core MedicationAdministration"
Description: "Base definition of the MedicationAdministration resource for use in Swiss specific use cases."
* . ^short = "CH Core MedicationAdministration"
* medication[x] only CodeableConcept or Reference(CHCoreMedication)
* subject only Reference(CHCorePatient or Group)
* performer.actor only Reference(CHCorePractitioner or CHCorePractitionerRole or CHCorePatient or CHCoreRelatedPerson or Device)
// BackboneElement in this resource
* dosage.route from http://fhir.ch/ig/ch-term/ValueSet/edqm-routeofadministration (preferred)
* dosage.method from http://fhir.ch/ig/ch-term/ValueSet/edqm-administrationmethod (preferred)
* dosage.dose only CHCoreQuantityWithEmedUnits
* dosage.rate[x] only CHCoreRatioWithEmedUnits or CHCoreQuantityWithEmedUnits


Profile: CHCoreMedicationDispense
Parent: MedicationDispense
Id: ch-core-medicationdispense
Title: "CH Core MedicationDispense"
Description: "Base definition of the MedicationDispense resource for use in Swiss specific use cases."
* . ^short = "CH Core MedicationDispense"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains CHEMEDExtTreatmentReason named treatmentReason 0..*
* medication[x] only CodeableConcept or Reference(CHCoreMedication)
* subject only Reference(CHCorePatient or Group)
* performer.actor only Reference(CHCorePractitioner or CHCorePractitionerRole or CHCoreOrganization or CHCorePatient or Device or CHCoreRelatedPerson)
* dosageInstruction only CHCoreDosage
* substitution obeys ch-meddis-1
* substitution.wasSubstituted ^short = "Whether a substitution was (true) or was not (false) performed on the dispense"
* substitution.type from http://fhir.ch/ig/ch-term/ValueSet/ActSubstanceAdminSubstitutionCode (preferred)
* substitution.type ^short = "If 'wasSubstituted = true', the type can be defined in addition (optional). If 'wasSubstituted = false', no type is expected."


Profile: CHCoreMedicationRequest
Parent: MedicationRequest
Id: ch-core-medicationrequest
Title: "CH Core MedicationRequest"
Description: "Base definition of the MedicationRequest resource for use in Swiss specific use cases."
* . ^short = "CH Core MedicationRequest"
* medication[x] only CodeableConcept or Reference(CHCoreMedication)
* subject only Reference(CHCorePatient or Group)
* requester only Reference(CHCorePractitioner or CHCorePractitionerRole or CHCoreOrganization or CHCorePatient or CHCoreRelatedPerson or Device)
* dosageInstruction only CHCoreDosage
* substitution.allowedCodeableConcept from http://fhir.ch/ig/ch-term/ValueSet/ActSubstanceAdminSubstitutionCode (preferred)
