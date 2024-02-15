Profile: CHCoreDocument
Parent: Bundle
Id: ch-core-document
Title: "CH Core Document"
Description: "Base definition of the Bundle resource for use in CH Core resources."

* . ^short = "CH Core Document"
* identifier 1..
* identifier.system 1..
* identifier.value 1..
* type = #document (exactly)
* type ^short = "document"
* timestamp 1..

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry.fullUrl 1..
* entry.fullUrl obeys ch-core-doc-1
* entry contains
    Composition 1..1 and
    Patient 0..* and
    Practitioner 0..* and
    PractitionerRole 0..* and
    Organization 0..* and
    RelatedPerson 0..* and
    Device 0..* and
    Encounter 0..* and
    Location 0..*
* entry[Composition].resource 1..
* entry[Composition].resource ^type.profile = Canonical(CHCoreComposition)
* entry[Patient].resource 1..
* entry[Patient].resource ^type.profile = Canonical(CHCorePatient)
* entry[Practitioner].resource 1..
* entry[Practitioner].resource ^type.profile = Canonical(CHCorePractitioner)
* entry[PractitionerRole].resource 1..
* entry[PractitionerRole].resource ^type.profile = Canonical(CHCorePractitionerRole)
* entry[Organization].resource 1..
* entry[Organization].resource ^type.profile = Canonical(CHCoreOrganization)
* entry[RelatedPerson].resource 1..
* entry[RelatedPerson].resource ^type.profile = Canonical(RelatedPerson)
* entry[Device].resource 1..
* entry[Device].resource ^type.profile = Canonical(Device)
* entry[Encounter].resource 1..
* entry[Encounter].resource ^type.profile = Canonical(CHCoreEncounter)
* entry[Location].resource 1..
* entry[Location].resource ^type.profile = Canonical(CHCoreLocation)