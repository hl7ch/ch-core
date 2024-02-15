Profile: CHCoreCoverage
Parent: Coverage
Id: ch-core-coverage
Title: "CH Core Coverage"
Description: "Base definition of the Coverage resource for use in Swiss specific use cases."

* ^purpose = "Coverage information which can be shared"
* . ^short = "CH Core Coverage"
* . ^definition = "This is basic constraint on Coverage for use in CH Core resources."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier.value 1..
* identifier contains insuranceCardNumber 0..*
* identifier[insuranceCardNumber] only VEKAIdentifier
* identifier[insuranceCardNumber] ^short = "Insurance card number of the patient (20 digits)"
* identifier[insuranceCardNumber] ^definition = "Cardnumber Swiss insurance card v1"
* identifier[insuranceCardNumber] ^patternIdentifier.system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* policyHolder only Reference(CHCorePatient or RelatedPerson or CHCoreOrganization)
* subscriber only Reference(CHCorePatient or RelatedPerson)
* beneficiary only Reference(CHCorePatient)
* payor only Reference(CHCoreOrganization or CHCorePatient or RelatedPerson)
* payor ^short = "Issuer of the policy (if it is not the patient him/herself, represent the payor as a contained resource)"
* payor ^type.aggregation[0] = #contained
* payor ^type.aggregation[+] = #referenced