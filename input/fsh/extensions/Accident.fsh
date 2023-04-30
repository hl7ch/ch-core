Extension: Accident
Id: ch-ext-accident
Title: "If an encounter is caused by an accident"
Description: "Extension to define an encounter that is caused by an accident and at which time the accident happened"

* ^context.type = #element
* ^context.expression = "Encounter.hospitalization"

* . ^definition = "Extension to define an encounter is caused by an accident and at which time the accident happened"
* extension contains
    tag 0..1 and
    dateTime 0..1
* extension[tag] only Extension
* extension[tag] ^short = "Information if it was an accident"
* extension[tag].url only uri
* extension[tag].valueBoolean 1..
* extension[tag].valueBoolean only boolean
* extension[tag].valueBoolean ^short = "Flag to indicate that it was an accident"
* extension[dateTime] ^short = "Timestamp of the authorship/data input"
* extension[dateTime].url only uri
* extension[dateTime].valueDateTime 1..
* extension[dateTime].valueDateTime only dateTime
* extension[dateTime].valueDateTime ^short = "date and time of accident"
* url only uri





