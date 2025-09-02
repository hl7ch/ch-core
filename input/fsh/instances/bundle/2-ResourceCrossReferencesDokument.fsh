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
* entry[+].fullUrl = "http://test.fhir.ch/r4/Composition/ResourceCrossReferencesDokumentComposition"
* entry[=].resource = ResourceCrossReferencesDokumentComposition
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/AllzeitBereit"
* entry[=].resource = AllzeitBereit
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/MaxMuster"
* entry[=].resource = MaxMuster
* entry[+].fullUrl = "http://test.fhir.ch/r4/Immunization/ImmunizationEntry"
* entry[=].resource = ImmunizationEntry
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/GruppenpraxisCH"
* entry[=].resource = GruppenpraxisCH


Instance: ImmunizationEntry
InstanceOf: Immunization
Title: "Immunization example for Immunization Administration"
Description: "An Immunization example with extension for cross dokument referencing."
Usage: #example
* id = "ImmunizationEntry"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-ext-entry-resource-cross-references"
* extension[=].extension[+].url = "entry"
* extension[=].extension[=].valueReference.identifier.system = "urn:ietf:rfc:3986"
* extension[=].extension[=].valueReference.identifier.value = "urn:uuid:19aaeae7-05cc-4b97-9d03-a65ae4aac2ac"
* extension[=].extension[=].valueReference.type = ResourceType#Immunization
* extension[=].extension[+].url = "container"
* extension[=].extension[=].valueReference.identifier.system = "urn:ietf:rfc:3986"
* extension[=].extension[=].valueReference.identifier.value = "urn:uuid:1d118906-ede6-4109-bca1-0fc25f58bc69"
* extension[=].extension[=].valueReference.type = ResourceType#Composition
* extension[=].extension[+].url = "relationcode"
* extension[=].extension[=].valueCode = #replaces
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:9f326dee-1265-4b59-88b3-fd63bb2da934"
* status = #completed
* vaccineCode = $sct#871751006 "Vaccine product containing only Hepatitis A virus antigen (medicinal product)"
* patient = Reference(http://test.fhir.ch/r4/Patient/MaxMuster)
* occurrenceDateTime = "2021-06-01"
* recorded = "2021-06-02T00:00:00.390+02:00"
* lotNumber = "AHAVB946A"
* route = http://standardterms.edqm.eu#20035000 "Intramuscular use"
* performer.actor = Reference(http://test.fhir.ch/r4/Practitioner/AllzeitBereit)
* protocolApplied.targetDisease[0] = $sct#40468003 "Viral hepatitis, type A (disorder)"
* protocolApplied.doseNumberPositiveInt = 1
* note.authorReference = Reference(http://test.fhir.ch/r4/Practitioner/AllzeitBereit)
* note.time = "2021-06-01"
* note.text = "Der Patient hat diese Impfung ohne jegliche Nebenwirkungen gut vertragen."


Instance: ResourceCrossReferencesDokumentComposition
InstanceOf: Composition
Title: "Patient Document 1 Stammgemeinschaft Composition"
Description: "Example for Composition Immunization Administration"
Usage: #example
* id = "ResourceCrossReferencesDokumentComposition"
* language = #en-US
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e652561f-5df2-418e-8cb4-b4b07fd2ee42"
* status = #final
* type = $sct#41000179103 "Immunization record"
* subject = Reference(http://test.fhir.ch/r4/Patient/MaxMuster)
* date = "2021-06-01T00:00:00+02:00"
* author = Reference(http://test.fhir.ch/r4/Practitioner/AllzeitBereit)
* title = "Immunization Administration"
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N
* section[0].id = "administration"
* section[=].title = "Immunization Administration"
* section[=].code = $loinc#11369-6 "History of Immunization note"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en-US\" lang=\"en-US\"><p><b>Code: </b><span>History of Immunization note (http://loinc.org#11369-6)</span></p><p><b>Entries:</b></p><table><tr><td><a href=\"Immunization-ImmunizationEntry.html\">Immunization/ImmunizationEntry</a></td></tr></table></div>"
* section[=].entry = Reference(http://test.fhir.ch/r4/Immunization/ImmunizationEntry)
