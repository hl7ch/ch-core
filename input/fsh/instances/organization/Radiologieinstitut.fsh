Instance: Radiologieinstitut
InstanceOf: CHCoreOrganizationEPR
Usage: #example
Title: "Radiologieinstitut"
Description: "Organization EPR with specified healthcare facility type (Diagnostic institution)"
* meta.profile[0] = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization"
* meta.profile[+] = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization-epr"
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000618627"
* type = $sct#722171005 "Diagnostic institution"
* name = "RoDiag Radiologieinstitut"
* address.use = #work
* address.line[0] = "Röntgenstr."
* address.line[+] = "1"
* address.city = "Musterhausen"
* address.postalCode = "8888"
* address.country = "CH"