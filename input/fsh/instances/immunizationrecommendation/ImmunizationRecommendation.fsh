Instance: CHCoreImmunizationRecommendationExample
InstanceOf: CHCoreImmunizationRecommendation
Title: "CH Core ImmunizationRecommendation Example"
Description: "Example of ImmunizationRecommendation resource for use in Swiss specific use cases."
Usage: #example
* patient = Reference(ImmunizationPatientExample)
* authority = Reference(ImmunizationOrganizationExample)
* date = "2021-06-01T00:00:00+02:00"
* recommendation.vaccineCode = $SwissMedicVacCS#58317 "Fluad"
* recommendation.targetDisease = $sct#63650001 "Cholera (disorder)"
* recommendation.forecastStatus = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#due
* recommendation.forecastReason = http://fhir.ch/ig/ch-vacd/CodeSystem/ch-vacd-recommendation-categories-cs#41503 "Empfohlene Impfungen für Risikogruppen"
* recommendation.dateCriterion.code = $loinc#30980-7 "Date vaccine due"
* recommendation.dateCriterion.value = "2021-06-01T00:00:00+02:00"

// Instance: ImmunizationPatientExample
// InstanceOf: CHCorePatient
// Title: "Patient example for immunization"
// Description: "Example of Patient resource for use in Swiss specific immunization use cases."
// Usage: #example
// * identifier[+].system = "urn:oid:1.2.3.4"
// * identifier[=].value = "12345678"
// * identifier[=].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
// * name.family = "Wegmueller"
// * name.given = "Monika"
// * telecom.system = #phone
// * telecom.value = "tel:+41.32.685.12.34"
// * telecom.use = #home
// * gender = #female
// * birthDate = "1967-02-10"
// * address.type = #both
// * address.line = "Leidensweg 10"
// * address.city = "Specimendorf"
// * address.postalCode = "9876"
// * address.country = "CH"

// Instance: ImmunizationAuthorExample
// InstanceOf: CHCorePractitioner
// Title: "Author example for immunization"
// Description: "Example of Practitioner resource for use in Swiss specific immunization use cases."
// Usage: #example
// * identifier.system = "urn:oid:2.51.1.3"
// * identifier.value = "7601888888884"
// * active = true
// * name.family = "Bereit"
// * name.given = "Allzeit"
// * name.prefix = "Dr. med."
// * telecom[0].system = #phone
// * telecom[=].value = "tel:+41.32.234.55.66"
// * telecom[=].use = #work
// * telecom[+].system = #fax
// * telecom[=].value = "fax:+41.32.234.55.67"
// * telecom[=].use = #work
// * telecom[+].system = #email
// * telecom[=].value = "mailto:bereit@gruppenpraxis.ch"
// * telecom[=].use = #work
// * telecom[+].system = #url
// * telecom[=].value = "http://www.gruppenpraxis.ch"
// * telecom[=].use = #work
// * address.type = #physical
// * address.line = "Doktorgasse 2"
// * address.city = "Musterhausen"
// * address.postalCode = "8888"
// * address.country = "CH"

// Instance: ImmunizationPractitionerRoleExample
// InstanceOf: CHCorePractitionerRole
// Title: "PractitionerRole example for immunization"
// Description: "Example of PractitionerRole resource for use in Swiss specific immunization use cases."
// Usage: #example
// * active = true
// * practitioner = Reference(ImmunizationAuthorExample)
// * organization = Reference(ImmunizationOrganizationExample)

// Instance: ImmunizationOrganizationExample
// InstanceOf: CHCoreOrganization
// Title: "Organization example for immunization"
// Description: "Example of Organization resource for use in Swiss specific immunization use cases."
// Usage: #example
// * identifier.system = "urn:oid:2.51.1.3"
// * identifier.value = "7601888888884"
// * name = "Gruppenpraxis CH"
// * telecom[0].system = #phone
// * telecom[=].value = "tel:+41.32.234.55.66"
// * telecom[=].use = #work
// * telecom[+].system = #fax
// * telecom[=].value = "fax:+41.32.234.55.67"
// * telecom[=].use = #work
// * telecom[+].system = #email
// * telecom[=].value = "mailto:bereit@gruppenpraxis.ch"
// * telecom[=].use = #work
// * telecom[+].system = #url
// * telecom[=].value = "http://www.gruppenpraxis.ch"
// * telecom[=].use = #work
// * address.line = "Doktorgasse 2"
// * address.city = "Musterhausen"
// * address.state = "ZH"
// * address.postalCode = "8888"
// * address.country = "CH"