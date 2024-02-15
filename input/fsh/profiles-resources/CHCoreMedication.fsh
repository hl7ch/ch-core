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
* informationSource only Reference(CHCorePatient or CHCorePractitioner or CHCorePractitionerRole or RelatedPerson or CHCoreOrganization)
* dosage only CHCoreDosage
