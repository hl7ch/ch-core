Extension: BfsMsAdmitRole
Id: ch-ext-bfs-ms-admitrole
Title: "BFS Extension Medical Statistic: Admit Role for Encounter"
Description: "BFS Extension Admit Role for Encounter"

* ^context.type = #element
* ^context.expression = "Encounter.hospitalization"

* . ^definition = "Extension"
* url only uri
* valueCoding 0..1
* valueCoding only Coding
* valueCoding from $bfs-medstats-28-dischargedestination_1 (required)
* valueCoding ^short = "Value of extension"
* valueCoding ^definition = "Value of extension - may be a resource or one of a constrained set of the data types (see Extensibility in the spec for list)."
* valueCoding ^binding.description = "A set of codes advising a system or user which name in a set of names to select for a given purpose."



