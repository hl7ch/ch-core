Profile: CHCoreContactPointECH46Internet
Parent: ContactPoint
Id: ch-core-contactpoint-ech-46-internet
Title: "CH Core ContactPoint eCH-0046 Internet"
Description: "Internet address as contact point of a person or organization according to eCH-0046"

* . ^short = "CH Core ContactPoint eCH-0046 Internet"
* system 1..
* system = #url (exactly)
* value 1..
* use.extension ^slicing.discriminator.type = #value
* use.extension ^slicing.discriminator.path = "url"
* use.extension ^slicing.rules = #open
* use.extension contains ECH46InternetCategory named internetCategory 0..1

Mapping: eCH-for-CHCoreContactPointECH46Internet
Id: eCH
Title: "eCH Standards"
Source: CHCoreContactPointECH46Internet
Target: "https://www.ech.ch/"
* -> "eCH-0046: 4.5 internet"
* system -> "eCH-0046: 4.5 internetType"
* value -> "eCH-0046: 4.5 internetAddress"
* use -> "eCH-0046: 4.5 internetCategory/otherInternetCategory"
* use.extension[internetCategory] -> "eCH-0046: 4.5.1 internetCategory"
* period -> "eCH-0046: 4.5 validity"
* period.start -> "eCH-0046: dateFrom"
* period.end -> "eCH-0046: dateTo"