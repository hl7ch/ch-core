Extension: EncounterSupsectedReadmission
Id: ch-ext-encounter-susp-readmission
Title: "Encounter, Suspected Readmission"
Description: "Encounter Extension for suspected readmission"

* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^context.type = #element
* ^context.expression = "Encounter.hospitalization"

* . ^definition = "Extension"
* url only uri
* valueBoolean 0..1
* valueBoolean only boolean
* valueBoolean ^short = "Value of extension"
* valueBoolean ^definition = "True if it is a suspected readmission, false otherwise"
* valueBoolean ^isModifier = false
* valueBoolean ^isSummary = false