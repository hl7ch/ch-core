Instance: CoverageBroennimann
InstanceOf: CHCoreCoverage
Usage: #example
Title: "Coverage Broennimann"
Description: "Coverage with Mrs. Broenimann as beneficiary and the health insurance Sanitas as issuer of the policy (represented as contained resource)"
* meta.source = "https://www.ti.bfh.ch/de/bachelor/medizininformatik.html"
* contained = sanitas
* identifier.system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* identifier.value = "80756015090002647590"
* status = #active
* beneficiary.reference = "Patient/ElisabethBroennimannByBFH"
* payor.reference = "#sanitas"