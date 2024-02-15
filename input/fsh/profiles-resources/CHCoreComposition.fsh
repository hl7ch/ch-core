Profile: CHCoreComposition
Parent: Composition
Id: ch-core-composition
Title: "CH Core Composition"
Description: "Base definition of the Composition resource for use in Swiss specific use cases"

* . ^short = "CH Core Composition"
* subject only Reference(CHCorePatient)
* subject.reference 1..
* encounter only Reference(CHCoreEncounter)
* author only Reference(CHCorePractitioner or CHCorePractitionerRole or Device or CHCorePatient or RelatedPerson or CHCoreOrganization)
* author.reference 1..
* attester.party only Reference(CHCorePatient or RelatedPerson or CHCorePractitioner or CHCorePractitionerRole or CHCoreOrganization)
* attester.party.reference 1..
* custodian only Reference(CHCoreOrganization)
* custodian.reference 1..
* relatesTo.target[x] only Identifier or Reference(CHCoreComposition)
* section.author only Reference(CHCorePractitioner or CHCorePractitionerRole or Device or CHCorePatient or RelatedPerson or CHCoreOrganization)