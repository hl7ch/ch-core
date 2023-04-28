Extension: EPRDataEnterer
Id: ch-ext-epr-dataenterer
Title: "EPR Data Enterer"
Description: "Extension to define the information about the person and organisation that entered data and the time of the data input"

* ^context.type = #element
* ^context.expression = "Composition"

* . ^definition = "Extension to define the information about the person and organization that entered data and the time of the data input"
* extension contains
    enterer 1..1 and
    EPRTime named timestamp 0..1
* extension[enterer] only Extension
* extension[enterer] ^short = "Information about the person and organization that entered data"
* extension[enterer].url only uri
* extension[enterer].valueReference 1..
* extension[enterer].valueReference only Reference(CHCorePractitionerRole)
* extension[enterer].valueReference ^short = "Person other than the author"
* extension[timestamp] ^short = "Timestamp of the authorship/data input"
* url only uri