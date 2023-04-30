Instance: EncounterExcludedForEpr
InstanceOf: CHCoreEPRConsent
Usage: #example
Title: "Consent for Swiss EPR with Encounter exclusions"
Description: "Consent that Patient has a Swiss EPR but exclude it for a specific Encounter"
* status = #active
* scope = $consentscope#patient-privacy "Privacy Consent"
* category[VSCat] = $v3-ActCode#IDSCL "information disclosure"
* patient.reference = "Patient/ElisabethBroennimannByBFH"
* patient.display = "Elisabeth Broennimann"
* dateTime = "2020-12-28"
* organization.display = "Stammgemeinschaft XYZ"
* policy.authority = "https://www.admin.ch/opc/de/classified-compilation/20111795/index.html"
* policyRule = $consentpolicycodes#ch-epr
* provision.type = #deny
* provision.data.meaning = #instance
* provision.data.reference.type = "Encounter"
* provision.data.reference.reference = "Encounter/EncounterAccidentBroennimann"