Profile: CHCorePractitioner
Parent: Practitioner
Id: ch-core-practitioner
Title: "CH Core Practitioner"
Description: "Base definition of the Practitioner resource for use in Swiss specific use cases."

* ^purpose = "Core practitioner data which can be shared"
* obeys ch-pract-1 and ch-pract-2
* . ^short = "CH Core Practitioner"
* . ^definition = "The CH Core Practitioner is based upon the core FHIR Practitioner Resource and designed to meet the applicable practitioner demographic data elements in Switzerland. See also https://www.bfs.admin.ch/bfs/de/home/register/personenregister/registerharmonisierung/nomenklaturen.html for further information"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    GLN 0..1 and
    ZSR 0..*
* identifier[GLN] only GLNIdentifier
* identifier[GLN] ^short = "GLN (Global Location Number)"
* identifier[GLN] ^definition = "See [GLN](http://fhir.ch/ig/ch-term/NamingSystem/gln)"
* identifier[ZSR] only ZSRIdentifier
* identifier[ZSR] ^short = "ZSR (Zahlstellenregister), RCC (Registre des codes-créanciers), RCC (Registro dei codici creditori)"
* identifier[ZSR] ^definition = "The [ZSR/RCC](http://fhir.ch/ig/ch-term/NamingSystem/zsr) number is issued to self-employed, natural or legal persons (organisations) who can and want to work at the expense of health insurance."
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
* gender ^short = "male | female | other"



Mapping: eCH-for-CHCorePractitioner
Id: eCH
Title: "eCH-Standards"
Source: CHCorePractitioner
Target: "http://www.ech.ch/"
* name -> "eCH-0011: nameData"
* telecom -> "eCH-0046: Contact"
* telecom[email] -> "eCH-0046: email"
* telecom[phone] -> "eCH-0046: phone"
* telecom[internet] -> "eCH-0046: internet"
* gender -> "eCH-0011: sex. sexType, BFS-33, see ConceptMap http://fhir.ch/ig/ch-core/ConceptMap/sex-ech11-to-fhir"
* birthDate -> "eCH-0011: birthData, BFS-31"
* communication -> "eCH-0011: languageOfCorrespondance: de, fr, it, rm = Rhaeto-Romance, en, other languages ISO 639-1"