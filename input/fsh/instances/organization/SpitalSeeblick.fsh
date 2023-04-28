Instance: SpitalSeeblick
InstanceOf: CHCoreOrganizationEPR
Usage: #example
Title: "Spital Seeblick"
Description: "Organization with specified healthcare facility type (Hospital)"
* meta.profile[0] = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization"
* meta.profile[+] = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization-epr"
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000618306"
* type = $sct#22232009 "Hospital"
* name = "Spital Seeblick"
* telecom.system = #phone
* telecom.value = "032 863 12 01"
* address.line = "Ausblick 11"
* address.city = "Zürich"
* address.postalCode = "8000"