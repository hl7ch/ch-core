Instance: HanspeterWengerByBFH
InstanceOf: CHCorePractitioner
Usage: #example
Title: "Hanspeter Wenger by BFH"
Description: "Practitioner with GLN and ZSR, name with prefixes, gender and birth date"
* meta.source = "https://www.ti.bfh.ch/de/bachelor/medizininformatik.html"
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000050717"
* identifier[ZSR].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[ZSR].value = "Q123456"
* name.family = "Wenger"
* name.given = "Hanspeter"
* name.prefix[0] = "Herr"
* name.prefix[+] = "Dr. med."
* name.prefix[=].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix[=].extension.valueCode = #AC
* gender = #male
* birthDate = "1965-12-13"