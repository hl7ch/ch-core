Extension: EncounterSupsectedReadmission
Id: ch-ext-encounter-susp-readmission
Title: "Encounter, Suspected Readmission"
Description: "Encounter Extension for suspected readmission"

* ^context.type = #element
* ^context.expression = "Encounter.hospitalization"

* url only uri
* valueBoolean 0..1
* valueBoolean only boolean
* valueBoolean ^short = "Value of extension"
* valueBoolean ^definition = "True if it is a suspected readmission, false otherwise"