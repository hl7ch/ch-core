Profile: CHCoreEPRConsent
Parent: Consent
Id: ch-core-epr-consent
Title: "CH Core EPR-Consent"
Description: "Definition of the Consent resource to document in an external system (outside the EPR) that a patient has an electronic patient record (EPR) in Switzerland. 
This profile is used by healthcare organizations to track which patients have an EPR. Optionally, specific encounters can be excluded from EPR publication by referencing them in the provision element, documenting the patient's request that certain information should not be published to their EPR. 

Note: This profile is NOT used to manage actual consent conditions within the EPR itself - those are managed through proper PPQ Consents (see CH EPR FHIR IG).
"
* . ^short = "CH Core EPR-Consent"
* scope = $consentscope#patient-privacy
* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[=].path = "coding.code"
* category ^slicing.discriminator[+].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.ordered = false
* category ^slicing.rules = #open
* category contains VSCat 1..1
* category[VSCat].coding 1..
* category[VSCat].coding.system 1..1
* category[VSCat].coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode" (exactly)
* category[VSCat].coding.code 1..1
* category[VSCat].coding.code = #IDSCL (exactly)
* category[VSCat].coding.code ^short = "information disclosure"
* patient 1..
* patient only Reference(CHCorePatient)
* patient ^short = "The patient to whom this EPR consent applies"
* performer only Reference(CHCoreOrganization or CHCorePatient or CHCorePractitioner or CHCoreRelatedPerson or CHCorePractitionerRole)
* organization only Reference(CHCoreOrganization)
* policyRule = $consentpolicycodes#ch-epr
* provision ^short = "Exceptions to the EPR consent"
* provision.type 1..
* provision.type = #deny (exactly)
* provision.type ^short = "deny"
* provision.type ^definition = "Encounters can be added here where the consent for publication to the EPR do not apply."
* provision.data.meaning = #instance (exactly)
* provision.data.reference only Reference(CHCoreEncounter)
* provision.data.reference ^short = "Excluded encounter for EPR"
* provision.data.reference ^definition = "A reference to the encounter where the consent for publication to the EPR do not apply."