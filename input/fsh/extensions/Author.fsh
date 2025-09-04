Extension: Author
Id: ch-ext-author
Title: "Author of the content"
Description: "Extension to reference the person (and her/his organization) who is responsible for the content 
    (e.g. an author of an eMedication document or a recorder of an immunization). 
    This extension is used to differentiate on entry level between the author of the content (represented with this extension) and 
    the author of the medical decision or the performer of an event (represented e.g. with Resource.performer/informationSource)."

* ^context[0].type = #element
* ^context[=].expression = "MedicationStatement"
* ^context[+].type = #element
* ^context[=].expression = "MedicationDispense"
* ^context[+].type = #element
* ^context[=].expression = "MedicationAdministration"
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"
* ^context[+].type = #element
* ^context[=].expression = "Observation"
* ^context[+].type = #element
* ^context[=].expression = "Immunization"
* url only uri
* valueReference 1..
* valueReference only Reference(CHCorePatient or CHCorePractitionerRole or CHCoreRelatedPerson)
* valueReference ^short = "Author of the content"
* valueReference.extension ^slicing.discriminator.type = #value
* valueReference.extension ^slicing.discriminator.path = "url"
* valueReference.extension ^slicing.rules = #open
* valueReference.extension contains 
    EPRTime named time 0..1
* valueReference.extension[time] ^short = "Timestamp of the authorship/data input"
* valueReference.reference 1..