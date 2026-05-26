Profile: CHCoreEpisodeOfCare
Parent: EpisodeOfCare
Id: ch-core-episodeofcare
Title: "CH Core EpisodeOfCare"
Description: "Base definition of the `EpisodeOfCare` resource for use in Swiss-specific use cases."

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains 
    CaseNumber 0..*
* identifier[CaseNumber] ^short = "Administrative case number (Fallnummer / Numero del caso | Cas numéro)"
* identifier[CaseNumber] ^definition = "The identifying number for the case (Fall | Caso | Cas) associated with the EpisodeOfCare (if relevant) for administrative and/or billing purposes."
* identifier[CaseNumber] ^patternIdentifier.type = $v2-0203#VN
* identifier[CaseNumber].system 1..
* identifier[CaseNumber].value 1..


* diagnosis.condition only Reference(CHCoreCondition)
* patient only Reference(CHCorePatient)
* managingOrganization only Reference(CHCoreOrganization)
* referralRequest only Reference(CHCoreServiceRequest)
* careManager only Reference(CHCorePractitioner or CHCorePractitionerRole)


