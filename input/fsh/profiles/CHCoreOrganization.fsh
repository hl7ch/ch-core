Profile: CHCoreOrganization
Parent: Organization
Id: ch-core-organization
Title: "CH Core Organization"
Description: "Defines basic constraints and extensions on the Organization resource for use with other CH Core resources"

* . ^short = "CH Core Organization"
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier.value 1..
* identifier contains
    BER 0..1 and
    UIDB 0..1 and
    ZSR 0..1 and
    GLN 0..1
* identifier[BER] ^short = "BER (Business and Enterprise Register), BUR (Betriebs- und Unternehmensregister), REE (Registre des entreprises et des établissements), RIS (Registro delle imprese e degli stabilimenti)"
* identifier[BER] ^definition = "See [BER](http://fhir.ch/ig/ch-core/NamingSystem/ber)"
* identifier[BER] ^patternIdentifier.system = "urn:oid:2.16.756.5.45"
* identifier[UIDB] ^short = "UIDB (Unique Identification Business), UID (Verwendung der Unternehmens-Identifikationsnummer), IDE (Utilisation du numéro d'identification des entreprises), IDI (Utilizzo del numero d'identificazione delle imprese)"
* identifier[UIDB] ^definition = "See [UIDB](http://fhir.ch/ig/ch-core/NamingSystem/uidb)"
* identifier[UIDB] ^patternIdentifier.system = "urn:oid:2.16.756.5.35"
* identifier[ZSR] ^short = "ZSR (Zahlstellenregister), RCC (Registre des codes-créanciers), RCC (Registro dei codici creditori)"
* identifier[ZSR] ^definition = "See [ZSR/RCC](http://fhir.ch/ig/ch-core/NamingSystem/zsr)"
* identifier[ZSR] ^patternIdentifier.system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[GLN] only GLNIdentifier
* identifier[GLN] ^short = "Global Location Number (GLN)"
* identifier[GLN] ^definition = "See [GLN](http://fhir.ch/ig/ch-core/NamingSystem/gln)"
* identifier[GLN] ^patternIdentifier.system = "urn:oid:2.51.1.3"
* type from $DocumentEntry.healthcareFacilityTypeCode (preferred)

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


Mapping: eCH-for-CHCoreOrganization
Id: eCH
Title: "eCH Standards"
Source: CHCoreOrganization
Target: "https://www.ech.ch/"
* telecom -> "eCH-0046: Contact"
* telecom[email] -> "eCH-0046: email"
* telecom[phone] -> "eCH-0046: phone"
* telecom[internet] -> "eCH-0046: internet"
