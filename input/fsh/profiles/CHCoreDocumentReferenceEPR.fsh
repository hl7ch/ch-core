Profile: CHCoreDocumentReferenceEPR
Parent: CHCoreDocumentReference
Id: ch-core-documentreference-epr
Title: "CH Core DocumentReference EPR"
Description: "Base definition for a document reference in the context of the electronic patient record (EPR)."
* . ^short = "CH Core DocumentReference EPR"

* type 1..
* type from $DocumentEntry.typeCode (required)

* category 1..
* category from $DocumentEntry.classCode (required)

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
* securityLabel from $DocumentEntry.confidentialityCode (required)

* content.attachment.contentType 1..
// content.attachment.contentType from $DocumentEntry.mimeType (required) -> not allowed on a required binding in FHIR core -> add constraint, like in CHCoreDocumentReference
* content.attachment.contentType obeys ch-docref-2
* content.attachment.language 1..
* content.attachment.language from $DocumentEntry.languageCode (required)
* content.attachment.url 1..

* content.format 1..
* content.format from $DocumentEntry.formatCode (required)

* context.facilityType from $DocumentEntry.healthcareFacilityTypeCode (required)
* context.practiceSetting from $DocumentEntry.practiceSettingCode (required)
* context.sourcePatientInfo only Reference(CHCorePatientEPR)