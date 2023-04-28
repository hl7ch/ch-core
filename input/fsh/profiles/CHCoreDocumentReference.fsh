Profile: CHCoreDocumentReference
Parent: DocumentReference
Id: ch-core-documentreference
Title: "CH Core DocumentReference"
Description: "Base definition for a document reference with the CH Core profiles."

* . ^short = "CH Core DocumentReference"
* type from $DocumentEntry.typeCode (preferred)

* category from $DocumentEntry.classCode (preferred)

* subject only Reference(CHCorePatient or CHCorePractitioner or Group or Device)
* author only Reference(CHCorePractitioner or CHCorePractitionerRole or CHCoreOrganization or Device or CHCorePatient or RelatedPerson)
* authenticator only Reference(CHCorePractitioner or CHCorePractitionerRole or CHCoreOrganization)
* custodian only Reference(CHCoreOrganization)
* relatesTo.target only Reference(CHCoreDocumentReference)

* securityLabel from $DocumentEntry.confidentialityCode (extensible)

* content.attachment.contentType obeys ch-docref-1
* content.attachment.language from $DocumentEntry.languageCode (preferred)
* content.format from $DocumentEntry.formatCode (preferred)

* context.encounter only Reference(CHCoreEncounter or EpisodeOfCare)
* context.facilityType from $DocumentEntry.healthcareFacilityTypeCode (preferred)
* context.practiceSetting from $DocumentEntry.practiceSettingCode (preferred)
* context.sourcePatientInfo only Reference(CHCorePatient)


Mapping: EPR-XDS
Id: EPR-XDS
Title: "XDS"
Source: CHCoreDocumentReference
Target: "https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_MHD.pdf"
* status -> "Table 4.5.1.1-1 (FHIR DocumentReference mapping to DocumentEntry): approved -> status=current,\r\n\t\t\t\t\t\t\tdeprecated -> status=superseded. Other status values are allowed but are not defined in this mapping to XDS."