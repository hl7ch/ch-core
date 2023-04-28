Profile: CHCorePractitionerRole
Parent: PractitionerRole
Id: ch-core-practitionerrole
Title: "CH Core PractitionerRole"
Description: "Core PractitionerRole definition in the swiss context."

* ^purpose = "Core PractitionerRole data which can be shared"
* . ^short = "CH Core PractitionerRole"
* practitioner only Reference(CHCorePractitioner)
* organization only Reference(CHCoreOrganization)
* code from $HCProfessional.hcProfession (preferred)
* specialty from $HCProfessional.hcSpecialisation (preferred)
* location only Reference(CHCoreLocation)