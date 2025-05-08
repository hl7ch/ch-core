Instance: EncounterAccidentBroennimann
InstanceOf: CHCoreEncounter
Usage: #example
Title: "Encounter Accident Broennimann"
Description: "Inpatient Encounter of Mrs. Broennimann which is flagged as an accident"
* meta.source = "https://www.bfh.ch/de/studium/bachelor/medizininformatik/"
* identifier[VisitNumber].type = $v2-0203#VN "Visit number"
* identifier[VisitNumber].system = "http://example.com/fallnummerdomain"
* identifier[VisitNumber].value = "12345"
* status = #finished
* class = $v3-ActCode#IMP "inpatient encounter"
* priority = $bfs-medstats-18-admittype#1 "Notfall (Behandlung innerhalb von 12 Std. unabdingbar)"
* subject.reference = "Patient/ElisabethBroennimannByBFH"
* period.start = "2020-12-20T16:00:00+02:00"
* period.end = "2020-12-22T16:15:00+02:00"

* hospitalization.extension[BfsAdmitRole].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-bfs-ms-admitrole"
* hospitalization.extension[BfsAdmitRole].valueCoding = $bfs-medstats-19-admitrole#2 "Rettungsdienst (Ambulanz, Polizei)"

* hospitalization.extension[accident].extension[tag].url = "tag"
* hospitalization.extension[accident].extension[tag].valueBoolean = true
* hospitalization.extension[accident].extension[dateTime].url = "dateTime"
* hospitalization.extension[accident].extension[dateTime].valueDateTime = "2020-12-20T15:15:00+02:00"
* hospitalization.extension[accident].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-accident"

* hospitalization.extension[readmission].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-encounter-susp-readmission"
* hospitalization.extension[readmission].valueBoolean = false

* hospitalization.extension[BfsDischargeDecision].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-bfs-ms-dischargedecision"
* hospitalization.extension[BfsDischargeDecision].valueCoding = $bfs-medstats-27-dischargedecision#1 "auf Initiative des Behandelnden"

* hospitalization.extension[BfsDischargeDestination].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-bfs-ms-dischargedestination"
* hospitalization.extension[BfsDischargeDestination].valueCoding = $bfs-medstats-28-dischargedestination#1 "Zuhause"

* hospitalization.admitSource = $bfs-medstats-17-admitsource#1 "Zuhause"

* hospitalization.dischargeDisposition = $bfs-medstats-29-dischargeencounter#1 "geheilt/kein Behandlungsbedarf"