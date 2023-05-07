Profile: CHCorePractitionerRoleEpr
Parent: CHCorePractitionerRole
Id: ch-core-practitionerrole-epr
Title: "CH Core PractitionerRole EPR"
Description: "Core PractitionerRole definition in the swiss context of the electronic patient record (EPR)."
* ^purpose = "Core PractitionerRole EPR data which can be shared"
* practitioner only Reference(CHCorePractitionerEPR)
* organization only Reference(CHCoreOrganizationEPR)
* specialty from $HCProfessional.hcSpecialisation (extensible)
