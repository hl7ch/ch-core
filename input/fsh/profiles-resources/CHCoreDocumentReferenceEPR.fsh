Profile: CHCoreDocumentReferenceEPR
Parent: CHCoreDocumentReference
Id: ch-core-documentreference-epr
Title: "CH Core DocumentReference EPR"
Description: "Definition of the DocumentReference resource for use in the context of the electronic patient record (EPR)."
* . ^short = "CH Core DocumentReference EPR"

* type 1..
* type from $DocumentEntry.typeCode (extensible)

* category 1..
* category from $DocumentEntry.classCode (extensible)

* subject 1..
* subject only Reference(CHCorePatientEPR)
* subject.reference 1..
* date 1..
* author 1..
* author only Reference(CHCorePractitionerEPR or CHCorePractitionerRoleEpr or Device or CHCorePatientEPR or RelatedPerson)
* author.reference 1..
* authenticator only Reference(CHCorePractitionerEPR or CHCorePractitionerRoleEpr or CHCoreOrganizationEPR)
* custodian only Reference(CHCoreOrganizationEPR)

* securityLabel 1..
* securityLabel from $DocumentEntry.confidentialityCode (extensible)

* content.attachment.contentType 1..
// content.attachment.contentType from $DocumentEntry.mimeType (extensible) -> not allowed on a required binding in FHIR core -> add constraint, like in CHCoreDocumentReference
* content.attachment.contentType obeys ch-docref-2
* content.attachment.language 1..
* content.attachment.language from $DocumentEntry.languageCode (extensible)
* content.attachment.url 1..

* content.format 1..
* content.format from $DocumentEntry.formatCode (extensible)

* context.facilityType from $DocumentEntry.healthcareFacilityTypeCode (extensible)
* context.practiceSetting from $DocumentEntry.practiceSettingCode (extensible)
* context.sourcePatientInfo only Reference(CHCorePatientEPR)