Profile: CHCoreContactPointECH46Phone
Parent: ContactPoint
Id: ch-core-contactpoint-ech-46-phone
Title: "CH Core ContactPoint eCH-0046 Phone"
Description: "Phone number as contact point of a person or organization according to eCH-0046"

* . ^short = "CH Core ContactPoint eCH-0046 Phone"
* system 1..
* system = #phone (exactly)
* value 1..
* use.extension ^slicing.discriminator.type = #value
* use.extension ^slicing.discriminator.path = "url"
* use.extension ^slicing.rules = #open
* use.extension contains ECH46PhoneCategory named phoneCategory 0..1


Mapping: eCH-for-CHCoreContactPointECH46Phone
Id: eCH
Title: "eCH Standards"
Source: CHCoreContactPointECH46Phone
Target: "https://www.ech.ch/"
* -> "eCH-0046: phone"
* system -> "eCH-0046: phoneType"
* value -> "eCH-0046: phoneNumber"
* use -> "eCH-0046: phoneCategory/otherPhoneCategory"
* use.extension[phoneCategory] -> "eCH-0046: phoneNumberCategory"
* period -> "eCH-0046: validity"
* period.start -> "eCH-0046: dateFrom"
* period.end -> "eCH-0046: dateTo"