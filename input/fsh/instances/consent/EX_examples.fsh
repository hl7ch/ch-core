Instance: GC-accepted
InstanceOf: CHCoreGeneralConsent
Usage: #example
Title: "General Consent accepted"
Description: "Example of a General Consent accepted by the patient"
* status = #active
* scope = $consentscope#research
* category.coding.system = $loinc
* category.coding.code = #59284-0 //Patient Consent
* patient.reference = "Patient/MaxMuster" //R5 'subject' -> R4 'patient'
* dateTime = "2025-03-17" //R5 'date' -> R4 'dateTime'
* provision.period.start = "2025-03-17"
// R5 'grantor' via xver extension
* extension[grantor].valueReference.reference = "Patient/MaxMuster"
* extension[grantor].valueReference.type = "Patient"
* extension[grantor].valueReference.identifier.system = "urn:oid:2.999.1.2.3.4"
* extension[grantor].valueReference.identifier.value = "8733"
// R5 'grantee' = Organization -> R4 'performer'
* performer.reference = "Organization/SpitalSeeblick"
* performer.type = "Organization"
* performer.identifier.system = "urn:oid:2.51.1.3"
* performer.identifier.value = "7601000618306"
* performer.display = "SpitalSeeblick"
// R5 'manager' via xver extension
* extension[manager].valueReference.reference = "HealthcareService/healthcareService-DemoCIS"
* extension[manager].valueReference.type = "HealthcareService"
* extension[manager].valueReference.identifier.system = "urn:oid:2.16.756.5.30.1"
* extension[manager].valueReference.identifier.value = "DemoCIS"
* extension[manager].valueReference.display = "DemoCIS"
// R5 'controller' via xver extension
* extension[controller].valueReference.reference = "Organization/SpitalSeeblick"
* extension[controller].valueReference.type = "Organization"
* extension[controller].valueReference.identifier.system = "urn:oid:2.51.1.3"
* extension[controller].valueReference.identifier.value = "7601000618306"
* extension[controller].valueReference.display = "SpitalSeeblick"
// R5 'policyBasis.url' -> R4 'policy.uri'
* policy.uri = "https://www.unimedsuisse.ch/de/projekte/generalkonsent"
// R5 'decision' via xver modifierExtension
* modifierExtension[decision].valueCode = #deny //decision will change in provision
* provision.code.coding.system = $CSConsentProvisionCodes
* provision.code.coding.code = #GC //General Consent
* provision.purpose.system = $v3-ActReason
* provision.purpose.code = #HRESCH //Healthcare research


Instance: GC-denied
InstanceOf: CHCoreGeneralConsent
Usage: #example
Title: "General Consent denied"
Description: "Example of a General Consent denied by a legal representative"
* status = #active
* scope = $consentscope#research
* category.coding.system = $loinc
* category.coding.code = #59284-0 //Patient Consent
* patient.reference = "Patient/MaxMuster"
* dateTime = "2025-03-17"
* provision.period.start = "2025-03-17"
// R5 'grantor' via xver extension - denied by a legal representative
* extension[grantor].valueReference.reference = "RelatedPerson/BiologicalFather"
* extension[grantor].valueReference.type = "RelatedPerson"
// R5 'grantee' = Organization -> R4 'performer'
* performer.reference = "Organization/SpitalSeeblick"
* performer.type = "Organization"
* performer.identifier.system = "urn:oid:2.51.1.3"
* performer.identifier.value = "7601000618306"
* performer.display = "SpitalSeeblick"
// R5 'manager' via xver extension
* extension[manager].valueReference.reference = "HealthcareService/healthcareService-DemoCIS"
* extension[manager].valueReference.type = "HealthcareService"
* extension[manager].valueReference.identifier.system = "urn:oid:2.16.756.5.30.1"
* extension[manager].valueReference.identifier.value = "DemoCIS"
* extension[manager].valueReference.display = "DemoCIS"
// R5 'controller' via xver extension
* extension[controller].valueReference.reference = "Organization/SpitalSeeblick"
* extension[controller].valueReference.type = "Organization"
* extension[controller].valueReference.identifier.system = "urn:oid:2.51.1.3"
* extension[controller].valueReference.identifier.value = "7601000618306"
* extension[controller].valueReference.display = "SpitalSeeblick"
* policy.uri = "https://www.unimedsuisse.ch/de/projekte/generalkonsent"
* modifierExtension[decision].valueCode = #permit //decision will change in provision
* provision.code.coding.system = $CSConsentProvisionCodes
* provision.code.coding.code = #GC //General Consent
* provision.purpose.system = $v3-ActReason
* provision.purpose.code = #HRESCH //Healthcare research


Instance: PatPortalParticipation-accepted
InstanceOf: CHCoreConsent
Usage: #example
Title: "Consent for participation in a Patient Portal"
Description: "Example of a Consent for participation in a Patient Portal accepted by the patient"
* status = #active
* scope = $consentscope#patient-privacy
* category.coding.system = $loinc
* category.coding.code = #64292-6 //Release of information consent
* patient.reference = "Patient/MaxMuster"
* dateTime = "2025-03-17"
* provision.period.start = "2025-03-17"
// R5 'grantor' via xver extension
* extension[grantor].valueReference.reference = "Patient/MaxMuster"
* extension[grantor].valueReference.type = "Patient"
* extension[grantor].valueReference.identifier.system = "urn:oid:2.999.1.2.3.4"
* extension[grantor].valueReference.identifier.value = "8733"
// R5 'grantee' = HealthcareService -> performer.extension[grantee] (alternate-reference)
* performer.extension[grantee].valueReference.reference = "HealthcareService/healthcareService-DemoPatientPortal"
* performer.extension[grantee].valueReference.type = "HealthcareService"
* performer.extension[grantee].valueReference.identifier.system = "urn:oid:2.16.756.5.30.1"
* performer.extension[grantee].valueReference.identifier.value = "DemoPatientPortal"
* performer.extension[grantee].valueReference.display = "DemoPatientPortal"
// R5 'manager' via xver extension
* extension[manager].valueReference.reference = "HealthcareService/healthcareService-DemoPatientPortal"
* extension[manager].valueReference.type = "HealthcareService"
* extension[manager].valueReference.identifier.system = "urn:oid:2.16.756.5.30.1"
* extension[manager].valueReference.identifier.value = "DemoPatientPortal"
* extension[manager].valueReference.display = "DemoPatientPortal"
// R5 'controller' via xver extension
* extension[controller].valueReference.reference = "Organization/SpitalSeeblick"
* extension[controller].valueReference.type = "Organization"
* extension[controller].valueReference.identifier.system = "urn:oid:2.51.1.3"
* extension[controller].valueReference.identifier.value = "7601000618306"
* extension[controller].valueReference.display = "SpitalSeeblick"
* policy.uri = "https://example.org/patient-portal-policy"
* modifierExtension[decision].valueCode = #deny //decision will change in provision
* provision.code.coding.system = $CSConsentProvisionCodes
* provision.code.coding.code = #PATPORTAL //Patient Portal
* provision.purpose.system = $v3-ActReason
* provision.purpose.code = #PATADMIN //Patient administration


Instance: healthcareService-DemoCIS
InstanceOf: HealthcareService
Usage: #example
Title: "Clinical Information System"
Description: "Example of a Clinical Information System used in CH Core Consent profile"
* identifier.system = "urn:oid:2.16.756.5.30.1"
* identifier.value = "DemoCIS"
* name = "DemoCIS"
* category.text = "Clinical Information System"

Instance: healthcareService-DemoPatientPortal
InstanceOf: HealthcareService
Usage: #example
Title: "Patient Portal"
Description: "Example of a Patient Portal used in CH Core Consent profile"
* identifier.system = "urn:oid:2.16.756.5.30.1"
* identifier.value = "DemoPatientPortal"
* name = "DemoPatientPortal"
* category.text = "Patient Portal"
