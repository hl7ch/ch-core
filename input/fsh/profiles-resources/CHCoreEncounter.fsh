Profile: CHCoreEncounter
Parent: Encounter
Id: ch-core-encounter
Title: "CH Core Encounter"
Description: "Base definition of the Encounter resource for use in Swiss specific use cases."

* ^purpose = "Core patient demographics which can be shared"
* . ^short = "CH Core Encounter"
* . ^definition = "This is basic constraint on Encounter for use in CH Core resources."
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains 
    VisitNumber 0..*
* identifier[VisitNumber] ^short = "Visit number (Fallnummer)"
* identifier[VisitNumber] ^patternIdentifier.type = $v2-0203#VN
* identifier[VisitNumber].system 1..
* identifier[VisitNumber].value 1..
* class ^short = "AMB | IMP : See mapping from BFS Medizinische Statistik BFS Encounter Class to FHIR"
* class ^definition = "See mapping from BFS Medizinische Statistik [BFS Encounter Class to FHIR mapping](http://fhir.ch/ig/ch-core/ConceptMap/bfs-encounter-class-to-fhir)"
* priority from $bfs-medstats-18-admittype_1 (extensible)
* priority ^short = "BFS Medizinische Statistik - Eintrittsart / Mode d’admission / Genere di ricovero"
* subject 1..
* subject only Reference(CHCorePatient)
* participant.type from ChCoreEncounterParticipationType (extensible)
* participant.individual only Reference(CHCorePractitioner)

* hospitalization.extension ^slicing.discriminator.type = #value
* hospitalization.extension ^slicing.discriminator.path = "url"
* hospitalization.extension ^slicing.rules = #open
* hospitalization.extension contains
    BfsMsAdmitRole named BfsAdmitRole 0..1 and
    Accident named accident 0..1 and
    EncounterSupsectedReadmission named readmission 0..1 and
    BfsDischargeDecision named BfsDischargeDecision 0..1 and
    BfsDischargeDestination named BfsDischargeDestination 0..1
* hospitalization.extension[BfsAdmitRole] ^short = "BFS Medizinische Statistik - Einweisende Instanz"
* hospitalization.extension[accident] ^short = "Flag if hospitalization was due to an accident"
* hospitalization.extension[readmission] ^short = "Flag to indicate if it is a suspected readmission"
* hospitalization.extension[BfsDischargeDecision] ^short = "BFS Medizinische Statistik - Entscheid für Austritt"
* hospitalization.extension[BfsDischargeDestination] ^short = "BFS Medizinische Statistik - Aufenthalt nach Austritt"

* hospitalization.origin only Reference(CHCoreLocation or CHCoreOrganization)
* hospitalization.admitSource from $bfs-medstats-17-admitsource_1 (extensible)
* hospitalization.admitSource ^short = "BFS Medizinische Statistik - Aufenthaltsort vor dem Eintritt / Séjour avant l’admission / Luogo di soggiorno prima dell’ammissione"
* hospitalization.destination only Reference(CHCoreLocation or CHCoreOrganization)
* hospitalization.dischargeDisposition from $bfs-medstats-29-dischargeencounter_1 (preferred)
* hospitalization.dischargeDisposition ^short = "BFS Medizinische Statistik - Behandlung nach Austritt"
* hospitalization.dischargeDisposition ^binding.description = "BFS Medizinische Statistik - Behandlung nach Austritt"

* location.location only Reference(CHCoreLocation)
* serviceProvider only Reference(CHCoreOrganization)
* partOf only Reference(CHCoreEncounter)
