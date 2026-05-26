Profile: CHCoreEncounter
Parent: Encounter
Id: ch-core-encounter
Title: "CH Core Encounter"
Description: """
Base definition of the `Encounter` resource for use in Swiss-specific use cases.

This profile constrains the base FHIR `Encounter` resource to support the exchange 
of patient visit and hospitalization data in Switzerland. It aligns with the data 
requirements for [BFS medical statistics](https://www.bfs.admin.ch/bfs/de/home/statistiken/gesundheit/erhebungen/ms.assetdetail.12167417.html) reporting (Federal Statistical Office).

If the encounter is associated with an administrative case (Fall / Cas / Caso), the `identifier:CaseNumber` slice SHOULD be used to report
it. However, this profile `CHCoreEncounter` does not represent an administrative case itself, it represents the clinical encounter that 
may be linked to such a case.   
"""

* ^purpose = "Core patient visit and hospitalization data which can be shared"
* . ^short = "CH Core Encounter"
* . ^definition = "This is basic constraint on Encounter for use in CH Core resources."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains 
    CaseNumber 0..*
* identifier[CaseNumber] ^short = "Administrative case number (Fallnummer / Numero del caso | Cas numéro)"
* identifier[CaseNumber] ^definition = "The identifying number for the case (Fall | Caso | Cas) associated with the Encounter (if relevant) for administrative and/or billing purposes."
* identifier[CaseNumber] ^patternIdentifier.type = $v2-0203#VN
* identifier[CaseNumber].system 1..
* identifier[CaseNumber].value 1..
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
    BfsDischargeDecision named BfsDischargeDecision 0..1 and
    BfsDischargeDestination named BfsDischargeDestination 0..1
* hospitalization.extension[BfsAdmitRole] ^short = "Referrer type - (Einweisende Instanz / Décision d’envoi / Istanza ricoverante)"
* hospitalization.extension[accident] ^short = "Flag if hospitalization was due to an accident"
* hospitalization.extension[readmission] ^short = "Flag to indicate if it is a suspected readmission"
* hospitalization.extension[BfsDischargeDecision] ^short = "Reason for the discharge decision (Entscheid für Austritt / Décision de sortie / Décisione dell’uscita)"
* hospitalization.extension[BfsDischargeDestination] ^short = "Location to which the patient was discharged (Aufenthalt nach Austritt / Séjour après la sortie / Destinazione dopo l’uscita)"

* hospitalization.origin only Reference(CHCoreLocation or CHCoreOrganization)
* hospitalization.admitSource from $bfs-medstats-17-admitsource_1 (extensible)
* hospitalization.admitSource ^short = "Location of the patient prior to admission (Aufenthaltsort vor dem Eintritt / Séjour avant l’admission / Luogo di soggiorno prima dell’ammissione)"
* hospitalization.destination only Reference(CHCoreLocation or CHCoreOrganization)
* hospitalization.dischargeDisposition from $bfs-medstats-29-dischargeencounter_1 (preferred)
* hospitalization.dischargeDisposition ^short = "Type of therapy/disposition after discharge (Behandlung nach Austritt / Prise en charge après la sortie / Trattamento dopo l’uscita)"

* location.location only Reference(CHCoreLocation)
* serviceProvider only Reference(CHCoreOrganization)
* partOf only Reference(CHCoreEncounter)
