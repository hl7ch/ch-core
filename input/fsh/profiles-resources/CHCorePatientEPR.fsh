Profile: CHCorePatientEPR
Parent: CHCorePatient
Id: ch-core-patient-epr
Title: "CH Core Patient EPR"
Description: "Core patient definition in the context of the electronic patient record (EPR). 
                        It is used to include the patient in an EPR document (referenced in Composition/DocumentReference)."

* ^purpose = "Core patient demographics which can be shared"
* . ^short = "CH Core Patient EPR (to include the patient in an EPR document)"
* identifier 1..
* identifier[EPR-SPID] 0..0
* identifier[AHVN13] 0..0
* name 1..
* gender 1..
* birthDate 1..