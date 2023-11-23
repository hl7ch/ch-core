Instance: MaxMuster
InstanceOf: CHCorePatientEPR
Usage: #example
Title: "Max Muster"
Description: "Patient EPR with eCH-0011 family & and given name, eCH-0046 contact points and reference to the organization that is the custodian of the patient record"
* id = "MaxMuster"
* meta.profile[0] = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient"
* meta.profile[+] = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient-epr"
* language = #de-CH
* identifier.type = $v2-0203#MR
* identifier.system = "urn:oid:2.16.756.888888.3.1"
* identifier.value = "8733"
* name.use = #official
* name.family.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-name"
* name.family.extension.valueCode = #officialName
* name.family = "Muster"
* name.given = "Max"
* name.given.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-firstname"
* name.given.extension.valueCode = #officialFirstName

* telecom[phone][0].system = #phone
* telecom[phone][=].value = "+41326851234"
* telecom[phone][=].use.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-46-phonecategory"
* telecom[phone][=].use.extension.valueCodeableConcept = $ech-46-phonecategory#1 "private Telefonnummer"
* telecom[phone][=].use = #home

* telecom[phone][+].system = #phone
* telecom[phone][=].value = "079 333 22 11"
* telecom[phone][=].use.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-46-phonecategory"
* telecom[phone][=].use.extension.valueCodeableConcept = $ech-46-phonecategory#2 "private Mobil-Nummer"
* telecom[phone][=].use = #mobile

* telecom[phone][+].system = #phone
* telecom[phone][=].value = "+41321237788"
* telecom[phone][=].use.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-46-phonecategory"
* telecom[phone][=].use.extension.valueCodeableConcept = $ech-46-phonecategory#6 "geschäftliche Nummer (Durchwahl)"
* telecom[phone][=].use = #work

* telecom[email][+].system = #email
* telecom[email][=].value = "max.muster@sampledomain.ch"
* telecom[email][=].use.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-46-emailcategory"
* telecom[email][=].use.extension.valueCodeableConcept = $ech-46-emailcategory#1 "private Email-Adresse"
* telecom[email][=].use = #home

* telecom[internet][+].system = #url
* telecom[internet][=].value = "www.sampledomain.ch"
* telecom[internet][=].use.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-46-internetcategory"
* telecom[internet][=].use.extension.valueCodeableConcept = $ech-46-internetcategory#2 "geschäftliche Internet-Adresse"
* telecom[internet][=].use = #work

* telecom[+].system = #sms
* telecom[=].value = "079 333 22 11"

* gender = #male
* birthDate = "1938-12-12"
* address.use = #home
* address.line[0] = "Leidensweg"
* address.line[+] = "10"
* address.city = "Specimendorf"
* address.postalCode = "9999"
* address.country = "CH"
* managingOrganization = Reference(GruppenpraxisCH)