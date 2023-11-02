Instance: 2-ResourceCrossReferencesDokument
InstanceOf: CHCoreDocument
Usage: #example
Title: "Dokument Eintrag referenz zu anderem Eintrag in einem anderen Dokument"
Description: "Ein Beispieldokument mit einem Eintrag welcher die Extension zur kreuzreferenzierung auf einen anderen Eintrag in einem anderen Dokument enthält."
* meta.profile[0] = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-document"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:66403c99-f41f-4225-bbea-3e34ac1c0d3c"
* type = #document
* timestamp = "2023-11-02T12:00:00+01:00"
* entry[+].fullUrl = "urn:uuid:e652561f-5df2-418e-8cb4-b4b07fd2ee42"
* entry[=].resource = ResourceCrossReferencesDokumentComposition
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/AllzeitBereit"
* entry[=].resource = AllzeitBereit
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MaxMuster"
* entry[=].resource = MaxMuster
* entry[+].fullUrl = "urn:uuid:9f326dee-1265-4b59-88b3-fd63bb2da934"
* entry[=].resource = ReferencingDocumentElement


Instance: ReferencingDocumentElement
InstanceOf: Immunization
* id = "9f326dee-1265-4b59-88b3-fd63bb2da934"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-ext-entry-resource-cross-references"
* extension[=].extension[+].url = "entry"
* extension[=].extension[=].extension[0].url = "identifier"
* extension[=].extension[=].extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[=].extension[=].extension[=].valueIdentifier.value = "urn:uuid:19aaeae7-05cc-4b97-9d03-a65ae4aac2ac"
* extension[=].extension[=].extension[+].url = "resource"
* extension[=].extension[=].extension[=].valueCode = ResourceType#Immunization
* extension[=].extension[+].url = "container"
* extension[=].extension[=].extension[0].url = "identifier"
* extension[=].extension[=].extension[=].valueIdentifier.system = "urn:ietf:rfc:3986"
* extension[=].extension[=].extension[=].valueIdentifier.value = "urn:uuid:1d118906-ede6-4109-bca1-0fc25f58bc69"
* extension[=].extension[=].extension[+].url = "resource"
* extension[=].extension[=].extension[=].valueCode = ResourceType#Composition
* extension[=].extension[+].url = "relationcode"
* extension[=].extension[=].valueCode = #replaces
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:9f326dee-1265-4b59-88b3-fd63bb2da934"
* status = #completed
* vaccineCode = $sct#871751006 "Vaccine product containing only Hepatitis A virus antigen (medicinal product)"
* patient = Reference(MaxMuster)
* occurrenceDateTime = "2021-06-01"
* recorded = "2021-06-02T00:00:00.390+02:00"
* lotNumber = "AHAVB946A"
* route = http://standardterms.edqm.eu#20035000 "Intramuscular use"
* performer.actor = Reference(AllzeitBereit)
* protocolApplied.targetDisease[0] = $sct#40468003 "Viral hepatitis, type A (disorder)"
* protocolApplied.doseNumberPositiveInt = 1
* note.authorReference = Reference(AllzeitBereit)
* note.time = "2021-06-01"
* note.text = "Der Patient hat diese Impfung ohne jegliche Nebenwirkungen gut vertragen."


Instance: ResourceCrossReferencesDokumentComposition
InstanceOf: Composition
Title: "Patient Document 1 Stammgemeinschaft Composition"
Description: "Example for Composition Immunization Administration"
Usage: #example
* id = "e652561f-5df2-418e-8cb4-b4b07fd2ee42"
* language = #en-US
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e652561f-5df2-418e-8cb4-b4b07fd2ee42"
* status = #final
* type = $sct#41000179103 "Immunization record"
* subject = Reference(MaxMuster)
* date = "2021-06-01T00:00:00+02:00"
* author = Reference(AllzeitBereit)
* title = "Immunization Administration"
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N
* section[0].id = "administration"
* section[=].title = "Immunization Administration"
* section[=].code = $loinc#11369-6 "Hx of Immunization"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en-US\" lang=\"en-US\"><p><b>Code: </b><span>Hx of Immunization (http://loinc.org#11369-6)</span></p><p><b>Entries:</b></p><table><tr><td><a href=\"Immunization-TCA01-IMMUN1-patient.html\">Immunization/TCA01-IMMUN1-patient</a></td></tr></table></div>"
* section[=].entry = Reference(ReferencingDocumentElement)
