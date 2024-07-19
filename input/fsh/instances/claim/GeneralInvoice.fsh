Instance: GeneralInvoice
InstanceOf: Claim
Usage: #example
Title: "General Invoice"
Description: "Partial example of an invoice (https://www.forum-datenaustausch.ch/de/xml-standards-formulare/release-45-451/generelle-rechnung-45/)"
// Sushi: error The element or path you referenced does not exist: extension[biller].valueReference
// * extension[biller].valueReference = Reference(Organization/Biller) -> 
* extension[0].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-biller"
* extension[=].valueReference = Reference(Organization/ClaimBiller)
* identifier.system = "https://biller.ch/claim-identifier"
* identifier.value = "1511421400#2017-11-23"
* status = #active 
* type = http://fhir.ch/ig/ch-core/CodeSystem/bfs-medstats-20-encounterclass#3 "stationär"
* use = #claim
* patient = Reference(Patient/ClaimPatient)
* created = "2017-11-24"
* provider = Reference(Organization/ClaimProvider)
* priority = http://terminology.hl7.org/CodeSystem/processpriority#normal "Normal"
* diagnosis
  * sequence = 1
  * diagnosisCodeableConcept
    * coding
      * system = "http://fhir.de/CodeSystem/dimdi/icd-10-gm" // https://hl7.org/fhir/R4/icd.html#variants
      * code = #J18.9
    * text = "Sonstige Schizophrenie"
* insurance 
  * sequence = 1
  * focal = true
  * coverage = Reference(Coverage/ClaimCoverage)



Instance: ClaimPatient
InstanceOf: CHCorePatient
Usage: #example
Title: "Peter Muster"
Description: "Example of a patient used in the general invoice example (Claim)"
* name.family = "Muster"
* name.given = "Peter"


Instance: ClaimProvider
InstanceOf: CHCoreOrganization
Usage: #example
Title: "Klinik für Psychiatrie"
Description: "Example of a organization used in the general invoice example (Claim)"
* identifier[ZSR].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[ZSR].value = "P123456"
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7634567890111"
* name = "Klinik für Psychiatrie"
* address
  * line = "Spitalgasse 17b5"
  * city = "Basel"
  * postalCode = "4000"
  * state = "BS"
* telecom[phone]
  * system = #phone
  * value = "061 956 99 00"


Instance: ClaimBiller
InstanceOf: CHCoreOrganization
Usage: #example
Title: "Klinik für Psychiatrie"
Description: "Example of a organization used in the general invoice example (Claim)"
* identifier[UIDB].system = "urn:oid:2.16.756.5.35"
* identifier[UIDB].value = "CHE108791452"
* identifier[ZSR].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[ZSR].value = "H121111"
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "2011234567890"
* name = "Biller AG"
* address
  * line = "Billerweg 128"
  * city = "Frenkendorf"
  * postalCode = "4414"
* telecom[phone]
  * system = #phone
  * value = "061 956 99 00"
* telecom[email]
  * system = #email
  * value = "info@biller.ch"  


Instance: ClaimCoverage
InstanceOf: CHCoreCoverage
Usage: #example
Title: "Krankenkasse AG"
Description: "Example of a coverage used in the general invoice example (Claim)"
* contained = ClaimInsurance
* status = #active 
* beneficiary = Reference(Patient/ClaimPatient)
* payor = Reference(Organization/ClaimInsurance)

Instance: ClaimInsurance
InstanceOf: CHCoreOrganization
Usage: #inline
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7634567890000"
* name = "Krankenkasse AG"
* address
  * line = "Kassengraben 222"
  * city = "Basel"
  * postalCode = "4000"
