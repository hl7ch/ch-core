Instance: PhysiotherapieCH
InstanceOf: CHCoreOrganizationEPR
Usage: #example
Title: "Physiotherapie CH"
Description: "Organization with GLN (ending on 0), UIDB, BER"
* meta.profile[0] = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization"
* meta.profile[+] = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization-epr"
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601002331470"
* identifier[UIDB].system = "urn:oid:2.16.756.5.35"
* identifier[UIDB].value = "CHE109322551"
* identifier[BER].system = "urn:oid:2.16.756.5.45"
* identifier[BER].value = "A62088168"
* name = "Physiotherapie CH"