Instance: GeneralInvoice
InstanceOf: CHCoreClaimForumDatenaustausch
Usage: #example
Title: "General Invoice"
Description: "Partial example of an invoice (https://www.forum-datenaustausch.ch/de/xml-standards-formulare/release-45-451/generelle-rechnung-45/)"
* extension[biller].valueReference = Reference(Organization/ClaimBiller)
* identifier.system = "https://biller.ch/claim-identifier"
* identifier.value = "1511421400"
* status = #active 
* type = http://fhir.ch/ig/ch-core/CodeSystem/bfs-medstats-20-encounterclass#3 "stationär"
* use = #claim
* patient = Reference(Patient/ClaimPatient)
* created = "2017-11-24"
* provider = Reference(Organization/ClaimProvider)
* priority = http://terminology.hl7.org/CodeSystem/processpriority#normal "Normal"
* supportingInfo[treatmentReason][0]
  * sequence = 1
  * category = http://terminology.hl7.org/CodeSystem/claiminformationcategory#patientreasonforvisit "Patient Reason for Visit"
  * valueString = "Disease"
* supportingInfo[remark][+]
  * sequence = 1
  * category = http://terminology.hl7.org/CodeSystem/claiminformationcategory#info "Information"
  * valueString = "Lorem ipsum per nostra mi fune torectum mikonstra.diloru si limus mer fin per od per nostra mi fune torectum mi konstradiloru si limus mer fin itorectum mi konstradiloruko."
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
* item[0]
  * extension[responsible].valueReference.identifier 
    * system = "urn:oid:2.51.1.3"
    * value = "7634567890333"
  * sequence = 1
  * category.coding[tariff] = http://forum-datenaustausch.ch/tariff#030 "TARPSY"
  * productOrService.coding[TARPSY] = http://forum-datenaustausch.ch/tariff/030#TP25B "Schizophrene oder akut psychotische Störungen, Alter > 17 Jahre mit komplizierender somatischer Nebendiagnose"
  * servicedPeriod
    * start = "2017-10-27"
    * end = "2017-11-23"
  * quantity.value = 1


Instance: ClaimPatient
InstanceOf: CHCorePatient
Usage: #example
Title: "Peter Muster"
Description: "Example of a patient used in the general invoice example (Claim)"
* name
  * family = "Muster"
  * given = "Peter"
  * prefix = "Herr"
* gender = #male 
* birthDate = "1964-05-14"
* address
  * line = "Musterstrasse 5"
  * city = "Maienfeld"
  * postalCode = "7304"
* identifier[AHVN13].system = "urn:oid:2.16.756.5.32"
* identifier[AHVN13].value = "12345678901"
* identifier[insuranceCardNumber].system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* identifier[insuranceCardNumber].value = "12345678901234567890"
* identifier[insuranceCardNumber].period.end = "2018-03-03"


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
