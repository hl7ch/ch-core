Profile: CHCoreDocumentEPR
Parent: CHCoreDocument
Id: ch-core-document-epr
Title: "CH Core Document EPR"
Description: "Definition of the Bundle resource for use in the context of the electronic patient record (EPR)."
* . ^short = "CH Core Document EPR"
* identifier.system = "urn:ietf:rfc:3986" (exactly)
* identifier.value obeys ch-core-doc-2
* identifier.value ^example.label = "CH Core"
* identifier.value ^example.valueString = "urn:uuid:daa8cd41-34a1-4a9c-9a6d-cd3f850142e9"
* type = #document (exactly)
* type ^short = "document"
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry[Composition].resource only CHCoreCompositionEPR
* entry contains 
    Binary 0..*
* entry[Binary].resource 1..
* entry[Binary].resource ^type.profile = Canonical(Binary)