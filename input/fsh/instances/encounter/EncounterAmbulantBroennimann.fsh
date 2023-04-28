Instance: EncounterAmbulantBroennimann
InstanceOf: CHCoreEncounter
Usage: #example
Title: "Encounter Ambulant Broennimann"
Description: "Ambulant Encounter of Mrs. Broennimann, representing the visit number (Fallnummer) and the BFS variables"
* meta.source = "https://www.ti.bfh.ch/de/bachelor/medizininformatik.html"
* identifier.type = $v2-0203#VN "Visit number"
* identifier.system = "http://www.ti.bfh.ch/example/fallnummerdomain"
* identifier.value = "1234"
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* priority = $bfs-medstats-18-admittype#2 "angemeldet, geplant"
* subject.reference = "Patient/ElisabethBroennimannByBFH"
* period.start = "2019-04-22T16:00:00+02:00"
* period.end = "2019-04-22T16:15:00+02:00"
* hospitalization.extension[0].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-bfs-ms-admitrole"
* hospitalization.extension[=].valueCoding = $bfs-medstats-19-admitrole#1 "selbst, Angehörige"
* hospitalization.extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-bfs-ms-dischargedecision"
* hospitalization.extension[=].valueCoding = $bfs-medstats-27-dischargedecision#1 "auf Initiative des Behandelnden"
* hospitalization.extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-bfs-ms-dischargedestination"
* hospitalization.extension[=].valueCoding = $bfs-medstats-28-dischargedestination#1 "Zuhause"
* hospitalization.admitSource = $bfs-medstats-17-admitsource#1 "Zuhause"
* hospitalization.dischargeDisposition = $bfs-medstats-29-dischargeencounter#1 "geheilt/kein Behandlungsbedarf"