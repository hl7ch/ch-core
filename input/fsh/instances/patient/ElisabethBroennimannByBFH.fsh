Instance: ElisabethBroennimannByBFH
InstanceOf: CHCorePatient
Usage: #example
Title: "Elisabeth Broennimann by BFH"
Description: "Patient with insurance card number as identifier, contact details, marital status (eCH & FHIR) and reference to the general practitioner (GP)"
* meta.source = "https://www.bfh.ch/de/studium/bachelor/medizininformatik/"
* identifier.system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* identifier.value = "80756015090002647590"
* name.family = "Brönnimann-Bertholet"
* name.given = "Elisabeth"
* telecom[0].system = #phone
* telecom[=].value = "+41 32 321 61 11"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "elisabeth@broennimann.today"
* gender = #female
* birthDate = "1937-05-03"
// [0] ch-addr-2 correct
* address[0].use = #home
* address[=].line = "Kreuzweg 11"
* address[=].city = "Biel/Bienne"
* address[=].postalCode = "2500"
* address[=].state = "BE"
* address[=].country = "Schweiz"
* address[=].country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding"
* address[=].country.extension.valueCoding = urn:iso:std:iso:3166#CH
/* test cases for invariant ch-addr-2 
// [1] ch-addr-2 correct
* address[+].use = #home
* address[=].line = "Kreuzweg 11"
* address[=].city = "Biel/Bienne"
* address[=].postalCode = "2500"
* address[=].state = "BE"
* address[=].country = "Schweiz"
* address[=].country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding"
* address[=].country.extension.valueCoding = urn:iso:std:iso:3166#CHE
// [2] ch-addr-2 correct
* address[+].use = #home
* address[=].line = "Kreuzweg 11"
* address[=].city = "Biel/Bienne"
* address[=].postalCode = "2500"
* address[=].state = "BE"
* address[=].country = "Schweiz"
// [3] ch-addr-2 correct
* address[+].use = #home
* address[=].line = "Kreuzweg 11"
* address[=].city = "Biel/Bienne"
* address[=].postalCode = "2500"
* address[=].state = "BE"
* address[=].country = "Schweiz"
* address[=].country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding"
* address[=].country.extension.valueCoding = urn:iso:std:iso:3166#DE
// [4] ch-addr-2 incorrect
* address[+].use = #home
* address[=].line = "Kreuzweg 11"
* address[=].city = "Biel/Bienne"
* address[=].postalCode = "2500"
* address[=].state = "Bern"
* address[=].country = "Schweiz"
* address[=].country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding"
* address[=].country.extension.valueCoding = urn:iso:std:iso:3166#CH
// [5] ch-addr-2correct
* address[+].use = #home
* address[=].line = "Kreuzweg 11"
* address[=].city = "Biel/Bienne"
* address[=].postalCode = "2500"
* address[=].state = "Bern"
* address[=].country = "Schweiz"
* address[=].country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding"
* address[=].country.extension.valueCoding = urn:iso:std:iso:3166#DE
*/
* maritalStatus.coding[0] = $ech-11-maritalstatus#2 "verheiratet"
* maritalStatus.coding[+] = $v3-MaritalStatus#M "married"
* generalPractitioner.reference = "Practitioner/HanspeterWengerByBFH"