Profile: CHCoreLocation
Parent: Location
Id: ch-core-location
Title: "CH Core Location"
Description: "Defines basic constraints and extensions on the Location resource for use with other CH Core resources"

* . ^short = "CH Core Location"
* name 1..
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
* address only CHCoreAddressECH10
* managingOrganization only Reference(CHCoreOrganization)


Mapping: eCH-for-CHCoreLocation
Id: eCH
Title: "eCH Standards"
Source: CHCoreLocation
Target: "https://www.ech.ch/"
* telecom -> "eCH-0046: Contact"
* telecom[email] -> "eCH-0046: 4.3 email"
* telecom[phone] -> "eCH-0046: 4.4 phone"
* telecom[internet] -> "eCH-0046: 4.5 internet"
