Instance: GruppenpraxisCH
InstanceOf: CHCoreOrganizationEPR
Usage: #example
Title: "Gruppenpraxis CH"
Description: "Organization EPR with GLN, different contact details (e.g. phone, email) and address"
* id = "GruppenpraxisCH"
* meta.profile[0] = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization"
* meta.profile[+] = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization-epr"
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000201041"
* name = "Gruppenpraxis CH"
* telecom[phone][0].system = #phone
* telecom[phone][=].value = "+41322345566"
* telecom[phone][=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "+41322346677"
* telecom[=].use = #work
* telecom[email][+].system = #email
* telecom[email].value = "bereit@gruppenpraxis.ch"
* telecom[email].use = #work
* telecom[internet][+].system = #url
* telecom[internet][=].value = "http://www.gruppenpraxis.ch"
* telecom[internet][=].use = #work
* address.use = #work
* address.line[0] = "Doktorgasse"
* address.line[+] = "2"
* address.city = "Musterhausen"
* address.postalCode = "8888"
* address.country = "CH"