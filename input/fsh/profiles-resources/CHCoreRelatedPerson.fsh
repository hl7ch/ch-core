Profile: CHCoreRelatedPerson
Parent: RelatedPerson
Id: ch-core-relatedperson
Title: "CH Core RelatedPerson"
Description: "Base definition of the RelatedPerson resource for use in Swiss specific use cases."
* . ^short = "CH Core RelatedPerson"
* extension contains Citizenship named citizenship 0..*
* extension[citizenship] ^short = "Citizenship(s) of related person"    
* patient only Reference(CHCorePatient)
* name only CHCoreHumanName
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom.system 1..
* telecom.value 1..
* telecom contains
    email 0..* and
    phone 0..* and
    internet 0..*
* telecom[email] only CHCoreContactPointECH46Email
* telecom[phone] only CHCoreContactPointECH46Phone
* telecom[internet] only CHCoreContactPointECH46Internet
* address only CHCoreAddress
* communication ^slicing.discriminator.type = #value
* communication ^slicing.discriminator.path = "preferred"
* communication ^slicing.ordered = false
* communication ^slicing.rules = #open
* communication contains 
    languageOfCorrespondence 0..1
* communication[languageOfCorrespondence] ^short = "Language of correspondence"
* communication[languageOfCorrespondence].preferred 1..
* communication[languageOfCorrespondence].preferred = true (exactly)
