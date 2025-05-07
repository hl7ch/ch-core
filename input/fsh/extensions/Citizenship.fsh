Extension: Citizenship
Id: ch-ext-citizenship
Title: "Citizenship"
Description: "Extension to define the citizenship of a person."
Context: RelatedPerson
* extension contains
    code 0..1 and
    period 0..1

* extension[code] only Extension
* extension[code] ^short = "Nation code of citizenship"
* extension[code] ^definition = "Nation code representing the citizenship."
* extension[code].url only uri
* extension[code].value[x] 1..
* extension[code].value[x] only CodeableConcept
* extension[code].value[x] from CountryValueSet (preferred)

* extension[period] only Extension
* extension[period] ^short = "Time period of citizenship"
* extension[period] ^definition = "Period when citizenship was effective."
* extension[period].url only uri
* extension[period].value[x] 1..
* extension[period].value[x] only Period
