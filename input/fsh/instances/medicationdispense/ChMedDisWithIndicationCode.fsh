Instance: MedDisAbirateron
InstanceOf: CHCoreMedicationDispense
Title: "Medication dispense of Abirateron"
Description: "Instance of a medication dispense of Abirateron, which is a drug subject to the FOPH price model and exemplifies the usage of the indication code extension."
* contained = AbirateronAccordTab500mg
* extension[+].url = Canonical(ChEplRegulatedAuthorizationLimitationIndicationCode)
* extension[=].valueString = "21423.01"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:92e13e19-9bd4-43ec-807d-a78d6962bad3"
* status = #completed
* medicationReference = Reference(AbirateronAccordTab500mg)
* subject = Reference(FranzMuster)
* performer.actor = Reference(SchreibKraftAtGruppenpraxisCH)
* authorizingPrescription = Reference(MedReqAbirateron)
* type = http://terminology.hl7.org/CodeSystem/v3-ActCode#FFC
* quantity = 1 $sct#1681000175101 "Package - unit of product usage (qualifier value)"
* daysSupply = 28 $ucum#d "d"
* whenHandedOver = "2026-06-14T09:00:00Z"
* receiver = Reference(FranzMuster)
* dosageInstruction[+].text = "1 tablet in the morning, 1 tablet in the evening. To be taken at least 1h before or 2h after meals."
* dosageInstruction[=].patientInstruction = "To be taken at least 1h before or 2h after meals."
* dosageInstruction[=].timing.repeat.frequency = 2
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].timing.repeat.when[+] = #MORN
* dosageInstruction[=].timing.repeat.when[+] = #EVE
* dosageInstruction[=].route = $swissStandardTerms#20053000 "Oral use"
* dosageInstruction[=].method = $swissStandardTerms#0019 "Swallowing"
* dosageInstruction[=].doseAndRate.doseQuantity = 1 $sct#732936001 "Tablet (unit of presentation)"
* substitution.wasSubstituted = false