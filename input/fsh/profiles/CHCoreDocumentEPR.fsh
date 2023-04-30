Profile: CHCoreDocumentEPR
Parent: CHCoreDocument
Id: ch-core-document-epr
Title: "CH Core Document EPR"
Description: "Base definition for a document in the context of the electronic patient record (EPR)."
* . ^short = "CH Core Document EPR"
* identifier.system = "urn:ietf:rfc:3986" (exactly)
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