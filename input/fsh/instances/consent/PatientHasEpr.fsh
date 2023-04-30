Instance: PatientHasEpr
InstanceOf: CHCoreEPRConsent
Usage: #example
Title: "Consent for Swiss EPR"
Description: "Consent that Patient has a Swiss EPR"
* status = #active
* scope = $consentscope#patient-privacy "Privacy Consent"
* category[VSCat] = $v3-ActCode#IDSCL "information disclosure"
* patient.reference = "Patient/FranzMuster"
* patient.display = "Franz Muster"
* dateTime = "2020-12-28"
* organization.display = "Stammgemeinschaft XYZ"
* policy.authority = "https://www.admin.ch/opc/de/classified-compilation/20111795/index.html"
* policyRule = $consentpolicycodes#ch-epr