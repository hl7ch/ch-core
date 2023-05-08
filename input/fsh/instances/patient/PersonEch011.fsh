Instance: PersonEch011
InstanceOf: CHCorePatient
Usage: #example
Title: "Person eCH-011"
Description: "Patient eCH-011 with names, marital status and separation type, delivery address if it is not the address of the patient (detailed explanation in narrative)"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"de-CH\" lang=\"de-CH\"><div>Example according to eCH-011</div>\r\n\r\n            3.3.2 nameData – Namensangaben\r\n            <ul><li>Amtlicher Name (zwingend) – officialName, siehe Kapitel 3.3.2.1</li><li>Amtliche Vornamen (zwingend) – firstName, siehe Kapitel 3.3.2.2</li><li>Ledigname (optional) – originalName, siehe Kapitel 3.3.2.3</li><li>Allianzname (optional) – allianceName, siehe Kapitel 3.3.2.4</li><li>Aliasname (optional) – aliasName, siehe Kapitel 3.3.2.5</li><li>Andere amtliche Name (optional) – otherName, siehe Kapitel 3.3.2.6</li><li>Rufname (optional) – callName, siehe Kapitel 3.3.2.7</li><li>entweder\r\n                    <ul><li>Name im ausländischen Pass (optional) - nameOnForeignPassport, siehe Kapitel 3.3.2.8 oder</li><li>Name gemäss Deklaration (optional) – declaredForeignName, siehe Kapitel 3.3.2.9</li></ul></li></ul>\r\n            \r\n            3.3.5 maritalData - Zivilstandsangaben\r\n            <ul><li>Zivilstand in eingetragener Partnerschaft (married), aber freiwillig getrennt lebend</li></ul>\r\n\r\n            3.3.8 contactData – Kontaktangaben   \r\n            <ul><li>Zusätzlich Beispiel für Zustelladresse, falls es nicht die Adresse des Patienten direkt ist, mit Angaben von eCH-0010</li></ul></div>"
* language = #de-CH

* name[0].use = #official
// Amtlicher Name (zwingend) – officialName, siehe Kapitel 3.3.2.1, Extension is optional, but when used the use attribute value must be offical
* name[=].family.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-name"
* name[=].family.extension.valueCode = #officialName
* name[=].family = "Amtlicher Name"
// Amtliche Vornamen (zwingend) – firstName, siehe Kapitel 3.3.2.2
* name[=].given = "Amtliche Vornamen (zwingend)"
* name[=].given.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-firstname"
* name[=].given.extension.valueCode = #officialFirstName

// Allianzname (optional) – allianceName, siehe Kapitel 3.3.2.4
* name[+].family.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-name"
* name[=].family.extension.valueCode = #allianceName
* name[=].family = "Allianzname"

// Ledigname (optional) – originalName, siehe Kapitel 3.3.2.3
* name[+].use = #maiden
* name[=].family.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-name"
* name[=].family.extension.valueCode = #originalName
* name[=].family = "Ledigname (optional) – originalName"

* name[+].family.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-name"
* name[=].family.extension.valueCode = #aliasName
* name[=].family = "Alias name"

* gender = #female
* birthDate = "1982-03-20"
* maritalStatus.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-maritaldata-separation"
* maritalStatus.extension.valueCodeableConcept = $ech-11-maritaldata-separation#1 "Freiwillig getrennt"
* maritalStatus.coding[0] = $v3-MaritalStatus#M
* maritalStatus.coding[+] = $ech-11-maritalstatus#6 "in eingetragener Partnerschaft"
* contact.relationship = $ech-11#contactData
* contact.name.family = "Dalkiliç"
* contact.name.given = "Fabio Nicola"
* contact.address.line[0] = "addressLine1 sollte für personifizierte Adressangaben verwendet werden (z.B. c/o- Adresse)."
* contact.address.line[+] = "addressLine2 solle für unpersonifizierte Adressangaben verwendet werden (z.B. Zu- satzangaben zur Lokalisation, z.B. Chalet Edelweiss)."
* contact.address.line[+] = "Strassenbezeichnungen in Postadressen. Es kann sich dabei auch um den Namen einer Lokalität, eines Weilers etc. handeln. No. 10 Wohung 5"
* contact.address.line[+] = "Postfach"
* contact.address.line[0].extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-10-linetype"
* contact.address.line[=].extension.valueCode = #addressLine1
* contact.address.line[+].extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-10-linetype"
* contact.address.line[=].extension.valueCode = #addressLine2
* contact.address.line[+].extension[0].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-10-linetype"
* contact.address.line[=].extension[=].valueCode = #street
* contact.address.line[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* contact.address.line[=].extension[=].valueString = "Strassenbezeichnug"
* contact.address.line[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* contact.address.line[=].extension[=].valueString = "10"
* contact.address.line[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-unitID"
* contact.address.line[=].extension[=].valueString = "5"
* contact.address.line[+].extension[0].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-10-linetype"
* contact.address.line[=].extension[=].valueCode = #postOfficeBoxText
* contact.address.line[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox"
* contact.address.line[=].extension[=].valueString = "12345678"
* contact.address.city = "Ort"
* contact.address.postalCode = "PLZ"
* contact.address.country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding"
* contact.address.country.extension.valueCoding = urn:iso:std:iso:3166#CH
* contact.address.country = "Schweiz"
// Zustelladresse falls es nicht die Adresse des Patienten direkt ist