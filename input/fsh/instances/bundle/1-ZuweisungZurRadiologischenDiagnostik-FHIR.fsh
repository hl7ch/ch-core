Instance: 1-ZuweisungZurRadiologischenDiagnostik-FHIR
InstanceOf: CHCoreDocumentEPR
Usage: #example
Title: "Zuweisung zur radiologischen Diagnostik"
Description: "Document EPR (fullUrls of entries with ‘http’)"
* meta.profile[0] = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-document"
* meta.profile[+] = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-document-epr"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:31397b31-be60-47e1-bec6-f37816d42b0c"
* type = #document
* timestamp = "2017-10-03T17:33:00+01:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/ZuweisungZurRadiologischenDiagnostik"
* entry[=].resource = ZuweisungZurRadiologischenDiagnostik
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/AllzeitBereit"
* entry[=].resource = AllzeitBereit
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MaxMuster"
* entry[=].resource = MaxMuster
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/GruppenpraxisCH"
* entry[=].resource = GruppenpraxisCH
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/SchreibKraftAtGruppenpraxisCH"
* entry[=].resource = SchreibKraftAtGruppenpraxisCH
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/SchreibKraft"
* entry[=].resource = SchreibKraft