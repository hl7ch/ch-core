Profile: CHCorePractitionerRole
Parent: PractitionerRole
Id: ch-core-practitionerrole
Title: "CH Core PractitionerRole"
Description: "Base definition of the PractitionerRole resource for use in CH Core resources."

* ^purpose = "Core PractitionerRole data which can be shared"
* . ^short = "CH Core PractitionerRole"
* practitioner only Reference(CHCorePractitioner)
* organization only Reference(CHCoreOrganization)
* code from $HCProfessional.hcProfession (preferred)
* specialty from $HCProfessional.hcSpecialisation (preferred)
* location only Reference(CHCoreLocation)