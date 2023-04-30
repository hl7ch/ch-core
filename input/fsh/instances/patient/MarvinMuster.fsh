Instance: MarvinMuster
InstanceOf: CHCorePatient
Usage: #example
Title: "Marvin Muster"
Description: "Patient with AHVN13/NAVS13 as identifier"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Salzburg"
* extension[=].valueAddress.country = "Österreich"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient-ech-11-placeoforigin"
* extension[=].valueAddress.city = "Zug"
* extension[=].valueAddress.state = "ZG"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
* extension[=].valueCodeableConcept = $v3-ReligiousAffiliation#1036 "Orthodox"
* identifier.system = "urn:oid:2.16.756.5.32"
* identifier.value = "7562295883070"
* name.family = "Muster"
* name.given = "Marvin"
* gender = #male
* birthDate = "1997-01-26"
* maritalStatus = $ech-11-maritalstatus#6 "in eingetragener Partnerschaft"
* communication.language = urn:ietf:bcp:47#de-CH
* communication.language.text = "Deutsch (Schweiz)"
* communication.preferred = true