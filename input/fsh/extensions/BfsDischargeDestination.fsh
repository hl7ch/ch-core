Extension: BfsDischargeDestination
Id: ch-ext-bfs-ms-dischargedestination
Title: "BFS Extension Medical Statistic: Discharge Destination for Encounter"
Description: "BFS Extension Discharge Destination for Encounter"

* ^context.type = #element
* ^context.expression = "Encounter.hospitalization"

* url only uri
* valueCoding 0..1
* valueCoding only Coding
* valueCoding from $bfs-medstats-28-dischargedestination_1 (required)
* valueCoding ^short = "Value of extension"
* valueCoding ^definition = "Value of extension - may be a resource or one of a constrained set of the data types (see Extensibility in the spec for list)."
* valueCoding ^binding.description = "A set of codes advising a system or user which name in a set of names to select for a given purpose."