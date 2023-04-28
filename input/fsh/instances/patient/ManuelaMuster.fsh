Instance: ManuelaMuster
InstanceOf: CHCorePatient
Usage: #example
Title: "Manuela Muster"
Description: "Patient with EPR-SPID ending on 0"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Paris"
* extension[=].valueAddress.country = "Frankreich"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient-ech-11-placeoforigin"
* extension[=].valueAddress.city = "Köniz"
* extension[=].valueAddress.state = "BE"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
* extension[=].valueCodeableConcept = $v3-ReligiousAffiliation#1077 "Protestant"
* identifier.system = "urn:oid:2.16.756.5.30.1.127.3.10.3"
* identifier.value = "761337615317835750"
* name.family = "Muster"
* name.given = "Manuela"
* gender = #female
* birthDate = "1997-02-21"
* maritalStatus = $ech-11-maritalstatus#6 "in eingetragener Partnerschaft"
* communication.language = urn:ietf:bcp:47#de-CH
* communication.language.text = "Deutsch (Schweiz)"
* communication.preferred = true