Extension: BfsDischargeDecision
Id: ch-ext-bfs-ms-dischargedecision
Title: "BFS Extension Medical Statistic: Discharge Décision for Encounter"
Description: "BFS Extension Discharge Décision for Encounter"

* ^context.type = #element
* ^context.expression = "Encounter.hospitalization"

* url only uri
* valueCoding 1..1
* valueCoding only Coding
* valueCoding from $bfs-medstats-27-dischargedecision_1 (extensible)
* valueCoding ^short = "Value of extension"
* valueCoding ^definition = "Value of extension - may be a resource or one of a constrained set of the data types (see Extensibility in the spec for list)."
* valueCoding ^binding.description = "A set of codes advising a system or user which name in a set of names to select for a given purpose."