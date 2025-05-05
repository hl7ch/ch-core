Instance: CoverageBroennimann
InstanceOf: CHCoreCoverage
Usage: #example
Title: "Coverage Broennimann"
Description: "Coverage with Mrs. Broenimann as beneficiary and the health insurance Sanitas as issuer of the policy (represented as contained resource)"
* meta.source = "https://www.bfh.ch/de/studium/bachelor/medizininformatik/" 
* contained = sanitas
* identifier[insuranceCardNumber][0].system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* identifier[insuranceCardNumber][=].value = "80756015090002647590"
// test case identifier slicing https://github.com/hl7ch/ch-core/issues/287
// * identifier[+].type = http://fhir.ch/ig/ch-orf/CodeSystem/ch-orf-cs-coverageidentifiertype#Self "Self-payer"
* status = #active
* beneficiary.reference = "Patient/ElisabethBroennimannByBFH"
* payor.reference = "#sanitas"
