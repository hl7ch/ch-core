Logical: CHAdministrativeCase
Id: ch-administrative-case
Title: "CH Administrative Case"
Description: "Defines the concept of a Swiss administrative case (Fall / Cas / Caso), a logical artifact defined for national health administration and billing guidelines."

* number 1..1 string "Case number" "The identifying number of the administrative case (visit number, hospitalization number, billing number, etc.)"
* admissionDate 0..1 dateTime "Admission date/time" "When and individual was admitted to the healthcare provider."
* admissionLocation 0..1 string "Admission location" "Physical location or medical division which admitted the invidual"
* dischargeDate 0..1 dateTime "Discharge date/time" "When and individual was discharged from the healthcare provider."
* dischargeLocation 0..1 string "Discharge location" "Physical location or medical division which discharged the invidual"


Mapping: CHCoreEncounterToCHAdministrativeCase
Id: ch-core-encounter-to-ch-administrative-case
Title: "CH Core Encounter to Administrative Case"
Source: CHCoreEncounter
Target: "CHAdministrativeCase"
Description: """
CH Core Encounter resources can be associated with an administrative case, if and only if, the `Encounter.identifier:CaseNumber` identifier is provided.
"""

* -> "CHAdministrativeCase"
* identifier[CaseNumber].value -> "CHAdministrativeCase.number"
* period.start -> "CHAdministrativeCase.admissionDate"
* period.end -> "CHAdministrativeCase.dischargeDate"


