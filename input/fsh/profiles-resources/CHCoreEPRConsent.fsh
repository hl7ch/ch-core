Profile: CHCoreEPRConsent
Parent: Consent
Id: ch-core-epr-consent
Title: "CH Core EPR-Consent"
Description: "Definition of the Consent resource to document that a patient has an electronic patient record (EPR) in Switzerland. The actual consent conditions are held within the EPR, this consent is the documentation in an organization that the patient has stated he/she has an EPR and this needs to be verified at the time of document publishing or reading. In addition a patient can request that specific information will not be published from the organization to the EPR. This can be documented with one or more references to encounters to exclude the consent for these."

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
* provision.type ^definition = "Encounters can be added here where the consent for the EPR does not apply."
* provision.data.meaning = #instance (exactly)
* provision.data.reference only Reference(CHCoreEncounter)
* provision.data.reference ^short = "Excluded encounter for EPR"
* provision.data.reference ^definition = "A reference to the encounter where the consent for the EPR does not apply."