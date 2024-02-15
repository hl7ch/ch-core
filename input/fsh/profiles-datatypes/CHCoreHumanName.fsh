Profile: CHCoreHumanName
Parent: HumanName
Id: ch-core-humanname
Title: "Human Name"
Description: "Name with extensions for ech-11"

* obeys ch-core-hm-1 and ch-core-hm-2 and ch-core-hm-3 and ch-core-hm-4
* . ^short = "Name of a human - parts and usage"
* . ^definition = "A human's name with the ability to identify parts and usage."
* . ^comment = "Names may be changed, or repudiated, or people may have different names in different contexts. Names may be divided into parts of different type that have variable significance depending on context, though the division into parts does not always matter. With personal names, the different parts might or might not be imbued with some implicit meaning; various cultures associate different importance with the name parts and the degree to which systems must care about name parts around the world varies widely."
* family 0..1 SU
* family only string
* family ^short = "Family name (often called 'Surname')"
* family ^definition = "The part of a name that links to the genealogy. In some cultures (e.g. Eritrea) the family name of a son is the first name of his father."
* family ^comment = "Family Name may be decomposed into specific parts using extensions (de, nl, es related cultures)."
* family ^alias[0] = "surname"
* family.extension ^slicing.discriminator.type = #value
* family.extension ^slicing.discriminator.path = "url"
* family.extension ^slicing.rules = #open
* family.extension contains ECH011Name named ech11name 0..1
* given 0..* SU
* given only string
* given ^short = "Given names (not always 'first'). Includes middle names"
* given ^definition = "Given name."
* given ^comment = "If only initials are recorded, they may be used in place of the full name parts. Initials may be separated into multiple given names but often aren't due to paractical limitations.  This element is not called \"first name\" since given names do not always come first."
* given ^alias[0] = "first name"
* given ^alias[+] = "middle name"
* given ^orderMeaning = "Given Names appear in the correct order for presenting the name"
* given.extension ^slicing.discriminator.type = #value
* given.extension ^slicing.discriminator.path = "url"
* given.extension ^slicing.rules = #open
* given.extension contains ECH011FirstName named ech11firstname 0..1
* prefix 0..* SU
* prefix only string
* prefix ^short = "For a salutation use a prefix without the iso21090-EN-qualifier extension. For academical titles and legal status use the http://hl7.org/fhir/ExtensionDefinition/iso21090-EN-qualifier with the codes AC, LS."
* prefix ^definition = "Part of the name that is acquired as a title due to academic, legal, employment or nobility status, etc. and that appears at the start of the name."
* prefix ^orderMeaning = "Prefixes appear in the correct order for presenting the name"
* prefix.extension ^slicing.discriminator.type = #value
* prefix.extension ^slicing.discriminator.path = "url"
* prefix.extension ^slicing.rules = #open
* prefix.extension contains $iso21090-EN-qualifier named salutationandtitle 0..*
* prefix.extension[salutationandtitle] ^short = "For academical titles and legal status use the http://hl7.org/fhir/ExtensionDefinition/iso21090-EN-qualifier with the codes AC, LS."


Mapping: eCH-for-CHCoreHumanName
Id: eCH
Title: "eCH-Standards"
Source: CHCoreHumanName
Target: "http://www.ech.ch/"
* family -> "eCH-0010: lastName"
* family.extension[ech11name] -> "eCH-0011: officialName, originalName, allianceName, nameOnForeignPassport, aliasName, otherName, declaredForeignName"
* given -> "eCH-0010: firstName equivalent to callName of eCH-0011"
* given.extension[ech11firstname] -> "eCH-0011: officialFirstName, callName, allianceName, firstNameOnForeignPassport, declaredForeignFirstName"
* prefix -> "eCH-0010: mrMrs, title"
