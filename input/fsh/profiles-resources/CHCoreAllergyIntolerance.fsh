Profile: CHCoreAllergyIntolerance
Parent: AllergyIntolerance
Id: ch-core-allergyintolerance
Title: "CH Core AllergyIntolerance"
Description: "Base definition of the AllergyIntolerance resource for use in Swiss specific use cases." 
// IPS: * extension contains http://hl7.org/fhir/uv/ips/StructureDefinition/abatement-dateTime-uv-ips named abatement-datetime ..1 
* code from  http://fhir.ch/ig/ch-allergyintolerance/ValueSet/CHAllergyIntoleranceValueSet (preferred)
* patient only Reference(CHCorePatient)
* recorder only Reference(CHCorePractitioner or CHCorePractitionerRole or CHCorePatient or RelatedPerson)
* asserter only Reference(CHCorePractitioner or CHCorePractitionerRole or CHCorePatient or RelatedPerson)
* reaction.extension contains 
    http://hl7.org/fhir/StructureDefinition/allergyintolerance-certainty named certainty 0..1 and
    http://hl7.org/fhir/StructureDefinition/allergyintolerance-duration named duration 0..1 and
    http://hl7.org/fhir/StructureDefinition/openEHR-location named location 0..1 and
    http://hl7.org/fhir/StructureDefinition/openEHR-exposureDate named exposureDate 0..1 and
    http://hl7.org/fhir/StructureDefinition/openEHR-exposureDuration named exposureDuration 0..1 and
    http://hl7.org/fhir/StructureDefinition/openEHR-exposureDescription named exposureDescription 0..1 and
    http://hl7.org/fhir/StructureDefinition/openEHR-management named management 0..1 
* reaction.substance from http://fhir.ch/ig/ch-allergyintolerance/ValueSet/CHAllergyIntoleranceReactionSubstanceValueSet (preferred)
* reaction.manifestation from http://fhir.ch/ig/ch-allergyintolerance/ValueSet/CHAllergyIntoleranceReactionManifestationValueSet (preferred)


Profile: CHCoreCondition
Parent: Condition
Id: ch-core-condition
Title: "CH Core Condition"
Description: "Base definition of the Condition resource for use in Swiss specific use cases."
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains allergyIntolerance 0..*
* code.coding[allergyIntolerance] from http://fhir.ch/ig/ch-allergyintolerance/ValueSet/CHAllergyIntoleranceConditionValueSet (required)
* subject only Reference(CHCorePatient or Group)
* recorder only Reference(CHCorePractitioner or CHCorePractitionerRole or CHCorePatient or RelatedPerson)
* asserter only Reference(CHCorePractitioner or CHCorePractitionerRole or CHCorePatient or RelatedPerson)
