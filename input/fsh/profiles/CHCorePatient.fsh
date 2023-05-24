Profile: CHCorePatient
Parent: Patient
Id: ch-core-patient
Title: "CH Core Patient"
Description: "Core patient definition in the swiss context. Relevant are definitions by the eCH-0010 V7.0 data standard mailing address and eCH-0011 V8.1 data standard pesond data.
The CH Core Patient is based upon the core FHIR Patient Resource and designed to meet the applicable patient demographic data elements in Switzerland. 
See also [BFS](https://www.bfs.admin.ch/bfs/de/home/register/personenregister/registerharmonisierung/nomenklaturen.html) for further information"

* ^purpose = "Core patient demographics which can be shared"
* obeys ch-pat-1 and ch-pat-2
* . ^short = "CH Core Patient"
* . ^definition = "The CH Core Patient is based upon the core FHIR Patient Resource and designed to meet the applicable patient demographic data elements in Switzerland. See also https://www.bfs.admin.ch/bfs/de/home/register/personenregister/registerharmonisierung/nomenklaturen.html for further information"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    ChCorePatientEch11PlaceOfBirth named placeOfBirth 0..1 and
    ChCorePatientEch11PlaceOfOrigin named placeOfOrigin 0..* and
    $patient-citizenship named citizenship 0..* and
    $patient-religion named religion 0..1
* extension[placeOfBirth] ^short = "Place of birth of patient"
* extension[placeOfOrigin] ^short = "Place of origin(s) of patient"
* extension[citizenship] obeys ch-pat-3
* extension[citizenship] ^short = "Citizenship(s) of patient"
* extension[citizenship] ^definition = "The content of the country code element (if present) SHALL be selected EITHER from ValueSet ISO Country Alpha-2 http://hl7.org/fhir/ValueSet/iso3166-1-2 OR MAY be selected from ISO Country Alpha-3 Value Set http://hl7.org/fhir/ValueSet/iso3166-1-3, if the country is not specified in value Set ISO Country Alpha-2 http://hl7.org/fhir/ValueSet/iso3166-1-2."
* extension[religion] ^short = "Religion of patient"
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier.system 1..
* identifier.value 1..
* identifier contains
    EPR-SPID 0..* and
    AHVN13 0..* and
    LocalPid 0..* and
    insuranceCardNumber 0..*
* identifier[EPR-SPID] only EPRSPIDIdentifier
* identifier[EPR-SPID] ^short = "EPR-SPID"
* identifier[EPR-SPID] ^definition = "EPR-SPID: The Central Compensation Office (ZAS; CCO) assigns and manages the new patient identification number according to the EPRA (EPR-SPID), which is only linked internally in the CCO with the AHV number. It maintains the UPI identification database (Unique Personal Identifier Database), which the EPR communities may access. The law regulates how the the EPR-SPID can be used. SR 816.111 states (Art. 10 para. 3 EPDV) that communities must ensure that the EPR-SPID number cannot be not stored in document repositories or document registries."
* identifier[EPR-SPID] ^patternIdentifier.system = "urn:oid:2.16.756.5.30.1.127.3.10.3"
* identifier[AHVN13] only AHVN13Identifier
* identifier[AHVN13] ^short = "AHVN13 / NAVS13 of the patient (13 digits starting with 756, no separation points)"
* identifier[AHVN13] ^definition = "The AHVN13 / NAVS13 - (abbreviation for new thirteen-digit Social Security number) - is an administrative identifier for natural persons in Switzerland. It is issued, announced and administered by the Central Compensation Office. It is available to all organisations and communities for which there is a legal basis."
* identifier[AHVN13] ^patternIdentifier.system = "urn:oid:2.16.756.5.32"
* identifier[LocalPid] ^short = "Local patient identifier(s)"
* identifier[LocalPid] ^patternIdentifier.type = $v2-0203#MR
* identifier[insuranceCardNumber] only VEKAIdentifier
* identifier[insuranceCardNumber] ^short = "Insurance card number of the patient (20 digits)"
* identifier[insuranceCardNumber] ^definition = "Cardnumber Swiss insurance card v1"
* identifier[insuranceCardNumber] ^patternIdentifier.system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
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
* gender ^short = "male | female | other"
* deceased[x] only boolean or dateTime
* address only CHCoreAddress
* maritalStatus from $ch-core-maritalstatus (extensible)
* maritalStatus.extension ^slicing.discriminator.type = #value
* maritalStatus.extension ^slicing.discriminator.path = "url"
* maritalStatus.extension ^slicing.rules = #open
* maritalStatus.extension contains 
    ECH011MaritalDataSeparation named maritalDataSeparation 0..1
* maritalStatus.extension[maritalDataSeparation] ^short = "MaritalData Separation"

* contact ^slicing.discriminator.type = #value
* contact ^slicing.discriminator.path = "relationship"
* contact ^slicing.ordered = false
* contact ^slicing.rules = #open
* contact contains
    contact 0..1 and
    nameOfFather 0..1 and
    nameOfMother 0..1
* contact[contact] ^short = "Contact data if it is not address of patient"
* contact[contact].relationship ..1
* contact[contact].relationship = $ech-11#contactData
* contact[contact].telecom 0..0
* contact[contact].address 1..
* contact[contact].address only CHCoreAddressECH10
* contact[nameOfFather] ^short = "Name of father"
* contact[nameOfFather].relationship ..1
* contact[nameOfFather].relationship = $v3-RoleCode#FTH
* contact[nameOfFather].name 1..
* contact[nameOfMother] ^short = "Name of mother"
* contact[nameOfMother].relationship ..1
* contact[nameOfMother].relationship = $v3-RoleCode#MTH
* contact[nameOfMother].name 1..
* communication ^slicing.discriminator.type = #value
* communication ^slicing.discriminator.path = "preferred"
* communication ^slicing.ordered = false
* communication ^slicing.rules = #open
* communication contains 
    languageOfCorrespondence 0..1
* communication[languageOfCorrespondence] ^short = "Language of correspondence"
* communication[languageOfCorrespondence].preferred 1..
* communication[languageOfCorrespondence].preferred = true (exactly)



Mapping: eCH-for-CHCorePatient
Id: eCH
Title: "eCH-Standards"
Source: CHCorePatient
Target: "http://www.ech.ch/"
* extension[placeOfBirth] -> "eCH-0011: 3.3.3.2 placeOfBirth BFS-322, BFS-323, BFS 324"
* extension[placeOfOrigin] -> "eCH-0011: 3.3.10 placeOfOrigin, BFS-42"
* extension[citizenship] -> "eCH-0011: 3.3.6 nationalityData"
* extension[religion] -> "eCH-0011: 3.3.4.1 religion, BFS-711"
* name -> "eCH-0011: 3.3.2 nameData"
* telecom -> "eCH-0046: Contact"
* telecom[email] -> "eCH-0046: 4.3 email"
* telecom[phone] -> "eCH-0046: 4.4 phone"
* telecom[internet] -> "eCH-0046: 4.5 internet"
* gender -> "eCH-0011: 3.3.3 sex. sexType, BFS-33, see ConceptMap http://fhir.ch/ig/ch-core/ConceptMap/sex-ech11-to-fhir"
* birthDate -> "eCH-0011: 3.3.3 birthData, BFS-31"
* deceased[x] -> "eCH-0011: 3.3.7 deathData, deathPeriod, dateFrom, BFS-361"
* maritalStatus -> "eCH-0011: 3.3.5 maritalData, BFS-341, see ConceptMap http://fhir.ch/ig/ch-core/ConceptMap/maritalstatus-ech11-to-fhir"
* maritalStatus.extension[maritalDataSeparation] -> "eCH-0011: 3.3.5.5 separation - Trennung BFS-343"
* contact[contact] -> "eCH-0011: 3.3.8 contactData, BFS-61"
* contact[nameOfFather] -> "eCH-0021: 4.1.4.1 nameOfFather"
* contact[nameOfMother] -> "eCH-0021: 4.1.4.2 nameOfMother"
* communication[languageOfCorrespondence] -> "eCH-0011: 3.3.9 languageOfCorrespondance: de, fr, it, rm = Rhaeto-Romance, en, other languages ISO 639-1"

Mapping: v2-for-CHCorePatient
Id: v2
Title: "HL7 v2 Mapping"
Source: CHCorePatient
Target: "http://hl7.org/v2"
* telecom -> "-> as of HL7 v2.7 PID-40 (leave PID-13 and PID-14 empty)"

