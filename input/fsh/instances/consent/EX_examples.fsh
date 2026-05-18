Instance: GC-accepted
InstanceOf: CHCoreConsent
Usage: #example
Title: "General Consent accepted"
Description: "Example of a General Consent accepted by the patient"
* status = #active
* category.coding.system = $loinc
* category.coding.code = #59284-0 //Patient Consent
* subject.reference = "Patient/MaxMuster" //existing Patient example in CH Core
* date = "2025-03-17"
* period.start = "2025-03-17" 
* grantor.reference = "Patient/MaxMuster" //accepted by the patient
* grantor.type = "Patient"
* grantor.identifier.system = #urn:oid:2.999.1.2.3.4
* grantor.identifier.value = "8733"
* grantee.reference = "Organization/SpitalSeeblick" //existing Organization example in CH Core
* grantee.type = "Organization"
* grantee.identifier.system = #urn:oid:2.51.1.3
* grantee.identifier.value = "7601000618306"
* grantee.display = "SpitalSeeblick"
* manager.reference = "HealthcareService/healthcareService-DemoCIS" //new HealthcareService example as defined below
* manager.type = "HealthcareService" 
* manager.identifier.system = #urn:oid:2.16.756.5.30.1
* manager.identifier.value = "DemoCIS"
* manager.display = "DemoCIS"
* controller.reference = "Organization/SpitalSeeblick" //existing Organization example in CH Core
* controller.type = "Organization"
* controller.identifier.system = #urn:oid:2.51.1.3
* controller.identifier.value = "7601000618306"
* controller.display = "SpitalSeeblick"
* policyBasis.url = "https://www.unimedsuisse.ch/de/projekte/generalkonsent"
* decision = #deny //decision will change in provision
* provision[+].code.coding.system = $CSConsentProvisionCodes
* provision[=].code.coding.code = #GC //General Consent
* provision[=].purpose.system = $v3-ActReason
* provision[=].purpose.code = #HRESCH //Healthcare research


Instance: GC-denied
InstanceOf: CHCoreConsent	
Usage: #example
Title: "General Consent denied"
Description: "Example of a General Consent denied by a legal representative"
* status = #active
* category.coding.system = $loinc
* category.coding.code = #59284-0 //Patient Consent
* subject.reference = "Patient/MaxMuster"  //existing Patient example in CH Core
* date = "2025-03-17"
* period.start = "2025-03-17"
* grantor.reference = "RelatedPerson/BiologicalFather" //existing RelatedPerson example in CH Core
* grantor.type = "RelatedPerson" //denied by a legal representative
* grantee.reference = "Organization/SpitalSeeblick" //existing Organization example in CH Core
* grantee.type = "Organization"
* grantee.identifier.system = #urn:oid:2.51.1.3
* grantee.identifier.value = "7601000618306"
* grantee.display = "SpitalSeeblick"
* manager.reference = "HealthcareService/healthcareService-DemoCIS" //new HealthcareService example as defined below
* manager.type = "HealthcareService" 
* manager.identifier.system = #urn:oid:2.16.756.5.30.1
* manager.identifier.value = "DemoCIS"
* manager.display = "DemoCIS"
* controller.reference = "Organization/SpitalSeeblick" //existing Organization example in CH Core
* controller.type = "Organization"
* controller.identifier.system = #urn:oid:2.51.1.3
* controller.identifier.value = "7601000618306"
* controller.display = "SpitalSeeblick"
* policyBasis.url = "https://www.unimedsuisse.ch/de/projekte/generalkonsent"
* decision = #permit //decision will change in provision
* provision[+].code.coding.system = $CSConsentProvisionCodes 
* provision[=].code.coding.code = #GC //General Consent
* provision[=].purpose.system = $v3-ActReason
* provision[=].purpose.code = #HRESCH //Healthcare research


Instance: PatPortalParticipation-accepted
InstanceOf: CHCoreConsent
Usage: #example
Title: "Consent for participation in a Patient Portal"
Description: "Example of a Consent for participation in a Patient Portal accepted by the patient"
* status = #active
* category.coding.system = $loinc
* category.coding.code = #64292-6 //Release of information consent
* subject.reference = "Patient/MaxMuster"  //existing Patient example in CH Core
* date = "2025-03-17"
* period.start = "2025-03-17"
* grantor.reference = "Patient/MaxMuster" //accepted by the patient
* grantor.type = "Patient"
* grantor.identifier.system = #urn:oid:2.999.1.2.3.4
* grantor.identifier.value = "8733"
* grantee.reference = "HealthcareService/healthcareService-DemoPatientPortal" //new HealthcareService example as defined below
* grantee.type = "HealthcareService" //in effect for the Patient Portal
* grantee.identifier.system = #urn:oid:2.16.756.5.30.1
* grantee.identifier.value = "DemoPatientPortal"
* grantee.display = "DemoPatientPortal"
* manager.reference = "HealthcareService/healthcareService-DemoPatientPortal" //new HealthcareService example as defined below
* manager.type = "HealthcareService" //entered via Patient Portal
* manager.identifier.system = #urn:oid:2.16.756.5.30.1
* manager.identifier.value = "DemoPatientPortal"
* manager.display = "DemoPatientPortal"
* controller.reference = "Organization/SpitalSeeblick" //existing Organization example in CH Core
* controller.type = "Organization"
* controller.identifier.system = #urn:oid:2.51.1.3
* controller.identifier.value = "7601000618306"
* controller.display = "SpitalSeeblick"
* decision = #deny //decision will change in provision
* provision[+].code.coding.system = $CSConsentProvisionCodes
* provision[=].code.coding.code = #PATPORTAL //Patient Portal
* provision[=].purpose.system = $v3-ActReason
* provision[=].purpose.code = #PATADMIN //Patient administration


Instance: healthcareService-DemoCIS
InstanceOf: HealthcareService
Usage: #example
Title: "Clinical Information System"
Description: "Example of a Clinical Information System used in CH Core Consent profile"
* identifier.system = #urn:oid:2.16.756.5.30.1
* identifier.value = "DemoCIS"
* name = "DemoCIS"
* category.text = "Clinical Information System"

Instance: healthcareService-DemoPatientPortal
InstanceOf: HealthcareService
Usage: #example
Title: "Patient Portal"
Description: "Example of a Patient Portal used in CH Core Consent profile"
* identifier.system = #urn:oid:2.16.756.5.30.1
* identifier.value = "DemoPatientPortal"
* name = "DemoPatientPortal"
* category.text = "Patient Portal"