Instance: AllergyToCatDander
InstanceOf: CHCoreAllergyIntolerance
Usage: #example
Description: "Example for AllergyIntolerance"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* category = #biologic
* criticality = #low
* code = $sct#232346004 "Allergy to cat dander (finding)"
* patient = Reference(ElisabethBroennimannByBFH)
* reaction.extension[certainty].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/reaction-event-certainty#confirmed "Confirmed"
* reaction.extension[exposureDescription].valueString = "Animal shelter"
* reaction.substance = $sct#260152009 "Cat dander (substance)"
* reaction.manifestation = $sct#271807003 "Eruption of skin (disorder)"
* reaction.severity = #mild
