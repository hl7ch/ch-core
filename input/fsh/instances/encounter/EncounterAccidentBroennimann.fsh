Instance: EncounterAccidentBroennimann
InstanceOf: CHCoreEncounter
Usage: #example
Title: "Encounter Accident Broennimann"
Description: "Inpatient Encounter of Mrs. Broennimann which is flagged as an accident"
* meta.source = "https://www.ti.bfh.ch/de/bachelor/medizininformatik.html"
* identifier.type = $v2-0203#VN "Visit number"
* identifier.system = "http://www.ti.bfh.ch/example/fallnummerdomain"
* identifier.value = "12345"
* status = #finished
* class = $v3-ActCode#IMP "inpatient encounter"
* priority = $bfs-medstats-18-admittype#1 "Notfall (Behandlung innerhalb von 12 Std. unabdingbar)"
* subject.reference = "Patient/ElisabethBroennimannByBFH"
* period.start = "2020-12-20T16:00:00+02:00"
* period.end = "2020-12-22T16:15:00+02:00"
* hospitalization.extension[0].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-bfs-ms-admitrole"
* hospitalization.extension[=].valueCoding = $bfs-medstats-19-admitrole#2 "Rettungsdienst (Ambulanz, Polizei)"
* hospitalization.extension[+].extension[0].url = "tag"
* hospitalization.extension[=].extension[=].valueBoolean = true
* hospitalization.extension[=].extension[+].url = "dateTime"
* hospitalization.extension[=].extension[=].valueDateTime = "2020-12-20T15:15:00+02:00"
* hospitalization.extension[=].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-accident"
* hospitalization.extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-encounter-susp-readmission"
* hospitalization.extension[=].valueBoolean = false
* hospitalization.extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-bfs-ms-dischargedecision"
* hospitalization.extension[=].valueCoding = $bfs-medstats-27-dischargedecision#1 "auf Initiative des Behandelnden"
* hospitalization.extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-bfs-ms-dischargedestination"
* hospitalization.extension[=].valueCoding = $bfs-medstats-28-dischargedestination#1 "Zuhause"
* hospitalization.admitSource = $bfs-medstats-17-admitsource#1 "Zuhause"
* hospitalization.dischargeDisposition = $bfs-medstats-29-dischargeencounter#1 "geheilt/kein Behandlungsbedarf"