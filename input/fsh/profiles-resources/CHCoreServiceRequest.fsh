Profile: CHCoreServiceRequest
Parent: ServiceRequest
Id: ch-core-servicerequest
Title: "CH Core ServiceRequest"
Description: "Base definition of the ServiceRequest resource for use in Swiss specific use cases."
* . ^short = "CH Core ServiceRequest"
* basedOn only Reference(CarePlan or CHCoreServiceRequest or CHCoreMedicationRequest)
* category from $vs-servicerequest-category (example)
* subject only Reference(CHCorePatient or Group or CHCoreLocation or Device)
* encounter only Reference(CHCoreEncounter)
* requester only Reference(CHCorePractitioner or CHCorePractitionerRole or CHCoreOrganization or CHCorePatient or CHCoreRelatedPerson or Device)
* performer only Reference(CHCorePractitioner or CHCorePractitionerRole or CHCoreOrganization or CareTeam or HealthcareService or CHCorePatient or Device or CHCoreRelatedPerson)
* reasonReference only Reference(CHCoreCondition or Observation or DiagnosticReport or CHCoreDocumentReference)
* insurance only Reference(CHCoreCoverage or ClaimResponse)
