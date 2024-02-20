Profile: CHCorePractitionerRoleEpr
Parent: CHCorePractitionerRole
Id: ch-core-practitionerrole-epr
Title: "CH Core PractitionerRole EPR"
Description: "Definition of the PractitionerRole resource for use in the context of the electronic patient record (EPR)."
* ^purpose = "Core PractitionerRole EPR data which can be shared"
* practitioner only Reference(CHCorePractitionerEPR)
* organization only Reference(CHCoreOrganizationEPR)
* code from $HCProfessional.hcProfession (extensible)
* specialty from $HCProfessional.hcSpecialisation (extensible)
