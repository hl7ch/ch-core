Instance: ZuweisungZurRadiologischenDiagnostik
InstanceOf: CHCoreCompositionEPR  
Usage: #example
Title: "Zuweisung zur radiologischen Diagnostik"
Description: "Composition EPR with the information about the transfer in different sections"
* meta.profile[0] = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-composition"
* meta.profile[+] = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-composition-epr"
* language = #de-CH
* extension[0].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension[=].valueReference = Reference(Radiologieinstitut)
* extension[+].extension[0].url = "enterer"
* extension[=].extension[=].valueReference = Reference(PractitionerRole/SchreibKraftAtGruppenpraxisCH)
* extension[=].extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-time"
* extension[=].extension[=].valueDateTime = "2017-10-03T13:15:00+01:00"
* extension[=].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-dataenterer"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:31397b31-be60-47e1-bec6-f37816d42b0c"
* status = #final
* type.coding[0] = $loinc#28616-1 "Physician Transfer note"
* type.coding[+] = $sct#371535009 "Transfer summary report"
* subject = Reference(MaxMuster)
* date = "2017-10-03T17:33:00+01:00"
* author.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-time"
* author.extension.valueDateTime = "2017-10-03T16:09:00+01:00"
* author = Reference(AllzeitBereit)
* title = "Zuweisung zur Radiologischen Diagnostik"
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normal"
* confidentiality = #N
* attester.mode = #legal
* attester.time = "2017-10-03"
* attester.party = Reference(AllzeitBereit)
* custodian = Reference(GruppenpraxisCH)
* section[0].title = "Gewünschte Untersuchung"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n        Der Patient erwartet Ihr Aufgebot zur Untersuchung.<br/><i>Spezifizierung der gewünschten Untersuchung</i><br/></div>"
* section[+].title = "Dringlichkeit / Wunschtermin"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><i>Angaben zum gewünschten Termin</i></div>"
* section[+].title = "Fragestellung"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><i>Grund für die Durchführung der Untersuchung und Angaben zum aktuellen Leiden resp. zum Grund der Untersuchung</i></div>"
* section[+].title = "Angaben zum Patienten"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><i>Erfolgte Voruntersuchungen<br/>\r\n        Befundkopie – Empfänger</i><br/></div>"
* section[+].title = "Klinische Angaben"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><i>Beschreibung des aktuellen Leidens<br/>\r\n\t\t\t\tSchwangerschaft ja / nein<br/>\r\n\t\t\t\tLaborwerte (Quick / Tc, Kreatinin)<br/>\r\n\t\t\t\tBekannte Allergien</i><br/></div>"