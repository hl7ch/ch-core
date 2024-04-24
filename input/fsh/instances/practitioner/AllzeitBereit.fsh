Instance: AllzeitBereit
InstanceOf: CHCorePractitionerEPR
Usage: #example
Title: "Allzeit Bereit"
Description: "Practitioner EPR with name with prefixes (salutation, academic title, legal status) and suffix (‘Facharzt für Allgemeine Medizin’)"
* id = "AllzeitBereit"
* meta.profile[0] = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner"
* meta.profile[+] = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner-epr"
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000201041"
* name.use = #official
* name.family = "Bereit"
* name.given = "Allzeit"
* name.prefix[0] = "Herr"
* name.prefix[+] = "Dr. med."
* name.prefix[+] = "Allg. Gruppenpraxis AG"
* name.prefix[1].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix[=].extension.valueCode = #AC
* name.prefix[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix[=].extension.valueCode = #LS
* name.suffix = "Facharzt für Allgemeine Medizin"