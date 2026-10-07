Profile: CHCoreEpisodeOfCare
Parent: EpisodeOfCare
Id: ch-core-episodeofcare
Title: "CH Core EpisodeOfCare"
Description: "Base definition of the `EpisodeOfCare` resource for use in Swiss-specific use cases."

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains 
    caseNumber 0..*
* identifier[caseNumber] ^short = "Administrative case number (Fallnummer / Cas numéro / Numero del caso)"
* identifier[caseNumber] ^definition = "The identifying number for the case (Fall / Cas / Caso) associated with the EpisodeOfCare (if relevant) for administrative and/or billing purposes."
* identifier[caseNumber] ^patternIdentifier.type = $v3-ActCode#PBILLACCT
* identifier[caseNumber].system 1..
* identifier[caseNumber].value 1..


* diagnosis.condition only Reference(CHCoreCondition)
* patient only Reference(CHCorePatient)
* managingOrganization only Reference(CHCoreOrganization)
* referralRequest only Reference(CHCoreServiceRequest)
* careManager only Reference(CHCorePractitioner or CHCorePractitionerRole)


