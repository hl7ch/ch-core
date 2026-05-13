Instance: MedReqAbirateron
InstanceOf: CHCoreMedicationRequest
Title: "MedicationRequest with Abirateron"
Description: "Instance of a medication request with Abirateron, which is a drug subject to the FOPH price model and exemplifies the usage of the indication code extension."
* extension[+].url = Canonical(ChEplRegulatedAuthorizationLimitationIndicationCode)
* extension[=].valueString = "21423.01"
* contained = AbirateronAccordTab500mg
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:f3ab7b8f-3eb4-4211-aba4-ce83c202f04e"
* status = #active
* intent = #order
* medicationReference = Reference(AbirateronAccordTab500mg)
* subject = Reference(FranzMuster)
* authoredOn = "2026-06-13T13:31:00Z"
* requester = Reference(HPWengerRole)
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
* dispenseRequest.quantity = 1 $sct#1681000175101 "Package - unit of product usage (qualifier value)"
* substitution.allowedCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-substanceAdminSubstitution#E "equivalent"
