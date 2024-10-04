Profile: CHCoreCompositionEPR
Parent: CHCoreComposition
Id: ch-core-composition-epr
Title: "CH Core Composition EPR"
Description: "Definition of the Composition resource for use in the context of the electronic patient record (EPR)."
* . ^short = "CH Core Composition EPR"
* language 1..
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    EPRInformationRecipient named informationRecipient 0..* and
    EPRDataEnterer named dataEnterer 0..1
* identifier 1..
* identifier.system 1..
* identifier.system = "urn:ietf:rfc:3986" (exactly)
* identifier.value 1..
* type 1..
* type from $DocumentEntry.typeCode (extensible)
* type ^short = "Kind of composition"

* subject 1..
* subject only Reference(CHCorePatientEPR)
* author only Reference(CHCorePractitionerEPR or CHCorePractitionerRoleEpr or Device or CHCorePatientEPR or RelatedPerson or CHCoreOrganizationEPR)
* author.extension ^slicing.discriminator.type = #value
* author.extension ^slicing.discriminator.path = "url"
* author.extension ^slicing.rules = #open
* author.extension contains 
    EPRTime named time 0..1
* author.extension[time] ^short = "Timestamp of the authorship/data input"
* confidentiality 1..
* confidentiality.extension ^slicing.discriminator.type = #value
* confidentiality.extension ^slicing.discriminator.path = "url"
* confidentiality.extension ^slicing.rules = #open
* confidentiality.extension contains EPRConfidentialityCode named confidentialityCode 1..1
* attester ^slicing.discriminator.type = #value
* attester ^slicing.discriminator.path = "mode"
* attester ^slicing.rules = #open
* attester contains 
    legalAuthenticator 0..1
* attester[legalAuthenticator] ^short = "legal authenticator"
* attester[legalAuthenticator].mode = #legal (exactly)
* attester[legalAuthenticator].party 1..
* attester[legalAuthenticator].party only Reference(CHCorePatientEPR or RelatedPerson or CHCorePractitionerEPR or CHCorePractitionerRoleEpr)
* custodian only Reference(CHCoreOrganizationEPR)
* relatesTo.target[x] only Identifier or Reference(CHCoreCompositionEPR)

* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section.author only Reference(CHCorePractitionerEPR or CHCorePractitionerRoleEpr or Device or CHCorePatientEPR or RelatedPerson or CHCoreOrganizationEPR)

* section contains 
    originalRepresentation 0..1
* section[originalRepresentation] ^short = "Contains the original representation as a PDF of the current document."
* section[originalRepresentation].title 1..1
* section[originalRepresentation].title ^short = "Original representation"
* section[originalRepresentation].code 1..
* section[originalRepresentation].code = $loinc#55108-5
* section[originalRepresentation].text 1..1
* section[originalRepresentation].text ^short = "Representation of the original view"
* section[originalRepresentation].entry 1..1
* section[originalRepresentation].entry only Reference(Binary)
* section[originalRepresentation].entry ^short = "According to the EPR ordonnance the PDF has to be in PDF/A-1 or PDF/A-2 format."
* section[originalRepresentation].section 0..0
