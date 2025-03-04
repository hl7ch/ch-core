Instance: LeukocytesPresence
InstanceOf: CHCoreObservationResultsLaboratory
Usage: #example
Title: "Leukocytes Presence"
Description: "Example for Observation Results: Laboratory"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code = $loinc#72163-9 "Leukocytes [Presence] in Specimen by Gram stain"
* subject.display = "Testpatient"
* effectiveDateTime = "2024-10-25T13:35:00+01:00"
* performer.display = "Dr. med. Max Muster"
* valueCodeableConcept = $sct#2667000 "Absent"
* valueCodeableConcept.text = "None observed"
