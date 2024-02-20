Profile: CHCoreContactPointECH46Email
Parent: ContactPoint
Id: ch-core-contactpoint-ech-46-email
Title: "CH Core ContactPoint eCH-0046 Email"
Description: "E-mail address as contact point of a person or organization according to eCH-0046"

* . ^short = "CH Core ContactPoint eCH-0046 Email"
* system 1..
* system = #email (exactly)
* value 1..
* use.extension ^slicing.discriminator.type = #value
* use.extension ^slicing.discriminator.path = "url"
* use.extension ^slicing.rules = #open
* use.extension contains ECH46EmailCategory named emailCategory 0..1

Mapping: eCH-for-CHCoreContactPointECH46Email
Id: eCH
Title: "eCH Standards"
Source: CHCoreContactPointECH46Email
Target: "https://www.ech.ch/"
* -> "eCH-0046: email"
* system -> "eCH-0046: emailType"
* value -> "eCH-0046: emailAddress"
* use -> "eCH-0046: emailCategory/otherEmailCategory"
* use.extension[emailCategory] -> "eCH-0046: emailCategory"
* period -> "eCH-0046: validity"
* period.start -> "eCH-0046: dateFrom"
* period.end -> "eCH-0046: dateTo"