Instance: ElisabethBroennimannByBFH
InstanceOf: CHCorePatient
Usage: #example
Title: "Elisabeth Broennimann by BFH"
Description: "Patient with insurance card number as identifier, contact details, marital status (eCH & FHIR) and reference to the general practitioner (GP)"
* meta.source = "https://www.ti.bfh.ch/de/bachelor/medizininformatik.html"
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
* address.use = #home
* address.line = "Kreuzweg 11"
* address.city = "Biel/Bienne"
* address.postalCode = "2500"
* maritalStatus.coding[0] = $ech-11-maritalstatus#2 "verheiratet"
* maritalStatus.coding[+] = $v3-MaritalStatus#M "married"
* generalPractitioner.reference = "Practitioner/HanspeterWengerByBFH"