Profile: CHCoreEncounter
Parent: Encounter
Id: ch-core-encounter
Title: "CH Core Encounter"
Description: "Base definition of the `Encounter` resource for use in Swiss-specific use cases."

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains 
    visitNumber 0..*
* identifier[visitNumber] ^short = "Administrative visit number (Aufenthaltsnummer / Numéro de visite / Numero della visita)"
* identifier[visitNumber] ^definition = "The identifying number for the visit (Aufenthalt / Visite / Visita ) associated with the Encounter (if relevant) for administrative and/or billing purposes."
* identifier[visitNumber] ^patternIdentifier.type = $v2-0203#VN
* identifier[visitNumber].system 1..
* identifier[visitNumber].value 1..
* identifier contains 
    caseNumber 0..*
* identifier[caseNumber] ^short = "Administrative case number (Fallnummer /  Cas numéro / Numero del caso)"
* identifier[caseNumber] ^definition = "The identifying number for the case (Fall / Caso / Cas) associated with the Encounter (if relevant) for administrative and/or billing purposes."
* identifier[caseNumber] ^patternIdentifier.type = $v3-ActCode#PBILLACCT
* identifier[caseNumber].system 1..
* identifier[caseNumber].value 1..
* class ^definition = "See mapping from BFS Medizinische Statistik [BFS Encounter Class to FHIR mapping](http://fhir.ch/ig/ch-term/ConceptMap-bfs-encounter-class-to-fhir.html)"
* priority from $bfs-medstats-18-admittype_1 (extensible)
* priority ^short = "Admission mode (Eintrittsart / Mode d’admission / Genere di ricovero)"
* subject 1..
* subject only Reference(CHCorePatient or Group)
* participant.type from http://fhir.ch/ig/ch-core/ValueSet/ch-core-encounter-participation-type (extensible)
* participant.individual only Reference(CHCorePractitioner or CHCorePractitionerRole or CHCoreRelatedPerson)

* hospitalization.extension ^slicing.discriminator.type = #value
* hospitalization.extension ^slicing.discriminator.path = "url"
* hospitalization.extension ^slicing.rules = #open
* hospitalization.extension contains
    BfsMsAdmitRole named BfsAdmitRole 0..1 and
    Accident named accident 0..1 and
    EncounterSupsectedReadmission named readmission 0..1 and
    BfsMsEncounterType named BfsMsEncounterType 0..1 and
    BfsDischargeDecision named BfsDischargeDecision 0..1 and
    BfsDischargeDestination named BfsDischargeDestination 0..1
* hospitalization.extension[BfsAdmitRole] ^short = "Referrer type - (Einweisende Instanz / Décision d’envoi / Istanza ricoverante)"
* hospitalization.extension[accident] ^short = "Flag if hospitalization was due to an accident"
* hospitalization.extension[readmission] ^short = "Flag to indicate if it is a suspected readmission"
* hospitalization.extension[BfsMsEncounterType] ^short = "BFS Medizinische Statistik - Liegeklasse (Encounter Type)"
* hospitalization.extension[BfsDischargeDecision] ^short = "BFS Medizinische Statistik - Entscheid für Austritt"
* hospitalization.extension[BfsDischargeDestination] ^short = "BFS Medizinische Statistik - Aufenthalt nach Austritt"

* hospitalization.origin only Reference(CHCoreLocation or CHCoreOrganization)
* hospitalization.admitSource from $bfs-medstats-17-admitsource_1 (extensible)
* hospitalization.admitSource ^short = "Location of the patient prior to admission (Aufenthaltsort vor dem Eintritt / Séjour avant l’admission / Luogo di soggiorno prima dell’ammissione)"
* hospitalization.destination only Reference(CHCoreLocation or CHCoreOrganization)
* hospitalization.dischargeDisposition from $bfs-medstats-29-dischargeencounter_1 (preferred)
* hospitalization.dischargeDisposition ^short = "Type of therapy/disposition after discharge (Behandlung nach Austritt / Prise en charge après la sortie / Trattamento dopo l’uscita)"

* location.location only Reference(CHCoreLocation)
* serviceProvider only Reference(CHCoreOrganization)
* partOf only Reference(CHCoreEncounter)
