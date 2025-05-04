Instance: CHCoreImmunizationExample
InstanceOf: CHCoreImmunization
Title: "CH Core Immunization Example"
Description: "Example of Immunization resource for use in Swiss specific use cases."
Usage: #example
* extension[0].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-author"
* extension[=].valueReference = Reference(ImmunizationPractitionerRoleExample)
* status = #completed
* vaccineCode = $SwissMedicVacCS#637 "Boostrix"
* patient = Reference(ImmunizationPatientExample)
* occurrenceDateTime = "2017-09-15T09:12:56+02:00"
* recorded = "2017-09-15T09:12:56+02:00"
* lotNumber = "12-34244"
* route = $standardterms#20035000 "Intramuscular use"
* performer.actor = Reference (ImmunizationPractitionerRoleExample)
* protocolApplied.targetDisease[0] = $sct#397430003 "Diphtheria caused by Corynebacterium diphtheriae (disorder)"
* protocolApplied.targetDisease[+] = $sct#76902006 "Tetanus (disorder)"
* protocolApplied.targetDisease[+] = $sct#27836007 "Pertussis (disorder)"
* protocolApplied.doseNumberPositiveInt = 1

Instance: ImmunizationPatientExample
InstanceOf: CHCorePatient
Title: "Patient example for immunization"
Description: "Example of Patient resource for use in Swiss specific immunization use cases."
Usage: #example
* identifier[+].system = "urn:oid:2.999.1.2.3.4"
* identifier[=].value = "12345678"
* identifier[=].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* name.family = "Wegmueller"
* name.given = "Monika"
* telecom.system = #phone
* telecom.value = "tel:+41.32.685.12.34"
* telecom.use = #home
* gender = #female
* birthDate = "1967-02-10"
* address.type = #both
* address.line = "Leidensweg 10"
* address.city = "Specimendorf"
* address.postalCode = "9876"
* address.country = "CH"

Instance: ImmunizationAuthorExample
InstanceOf: CHCorePractitioner
Title: "Author example for immunization"
Description: "Example of Practitioner resource for use in Swiss specific immunization use cases."
Usage: #example
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601888888884"
* active = true
* name.family = "Bereit"
* name.given = "Allzeit"
* name.prefix = "Dr. med."
* telecom[0].system = #phone
* telecom[=].value = "tel:+41.32.234.55.66"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "fax:+41.32.234.55.67"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "mailto:bereit@gruppenpraxis.ch"
* telecom[=].use = #work
* telecom[+].system = #url
* telecom[=].value = "http://www.gruppenpraxis.ch"
* telecom[=].use = #work
* address.type = #physical
* address.line = "Doktorgasse 2"
* address.city = "Musterhausen"
* address.postalCode = "8888"
* address.country = "CH"

Instance: ImmunizationPractitionerRoleExample
InstanceOf: CHCorePractitionerRole
Title: "PractitionerRole example for immunization"
Description: "Example of PractitionerRole resource for use in Swiss specific immunization use cases."
Usage: #example
* active = true
* practitioner = Reference(ImmunizationAuthorExample)
* organization = Reference(ImmunizationOrganizationExample)

Instance: ImmunizationOrganizationExample
InstanceOf: CHCoreOrganization
Title: "Organization example for immunization"
Description: "Example of Organization resource for use in Swiss specific immunization use cases."
Usage: #example
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601888888884"
* name = "Gruppenpraxis CH"
* telecom[0].system = #phone
* telecom[=].value = "tel:+41.32.234.55.66"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "fax:+41.32.234.55.67"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "mailto:bereit@gruppenpraxis.ch"
* telecom[=].use = #work
* telecom[+].system = #url
* telecom[=].value = "http://www.gruppenpraxis.ch"
* telecom[=].use = #work
* address.line = "Doktorgasse 2"
* address.city = "Musterhausen"
* address.state = "ZH"
* address.postalCode = "8888"
* address.country = "CH"