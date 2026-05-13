Instance: MedicationStatementAbirateron
InstanceOf: CHCoreMedicationStatement
Title: "MedicationStatement with Abirateron"
Description: "Instance of a medication statement with Abirateron, which is a drug subject to the FOPH price model and exemplifies the usage of the indication code extension."
* contained = AbirateronAccordTab500mg
* extension[+].url = "http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-ext-substitution"
* extension[=].valueCodeableConcept = https://terminology.hl7.org/7.0.1/CodeSystem-v3-substanceAdminSubstitution.html#E "equivalent"
* extension[+].url = Canonical(ChEplRegulatedAuthorizationLimitationIndicationCode)
* extension[=].valueString = "21423.01" 
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "8ff72c70-15c0-44b5-a758-e99daacd3da0"
* status = #active
* medicationReference = Reference(AbirateronAccordTab500mg)
* subject = Reference(FranzMuster)
* dateAsserted = "2026-06-13T13:30:00Z"
* informationSource = Reference(HPWengerRole)
* dosage[+].text = "1 tablet in the morning, 1 tablet in the evening. To be taken at least 1h before or 2h after meals."
* dosage[=].patientInstruction = "To be taken at least 1h before or 2h after meals."
* dosage[=].timing.repeat.frequency = 2
* dosage[=].timing.repeat.period = 1
* dosage[=].timing.repeat.periodUnit = #d
* dosage[=].timing.repeat.when[+] = #MORN
* dosage[=].timing.repeat.when[+] = #EVE
* dosage[=].route = $swissStandardTerms#20053000 "Oral use"
* dosage[=].method = $swissStandardTerms#0019 "Swallowing"
* dosage[=].doseAndRate.doseQuantity = 1 $sct#732936001 "Tablet (unit of presentation)"

Instance: AbirateronAccordTab500mg
InstanceOf: CHCoreMedication
Usage: #inline
* code.coding[+] = urn:oid:2.51.1.1#7680679500013 "ABIRATERON Accord FCT 500 mg, blister 56 pce"
* code.coding[+] = $atc#L02BX03 "abiraterone"
* code.text = "ABIRATERON Accord FCT 500 mg, blister 56 pce"
* form = $swissStandardTerms#10221000 "Film-coated tablet"
* form.text = "Film-coated tablet"
* amount.numerator = 56 $sct#732936001 "Tablet (unit of presentation)"
* amount.denominator = 1 $sct#1681000175101 "Package - unit of product usage (qualifier value)"
* ingredient[+].itemCodeableConcept.text = "Abiraterone acetate"
* ingredient[=].isActive = true
* ingredient[=].strength.numerator = 500 $ucum#mg "mg"
* ingredient[=].strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"
* ingredient[+].itemCodeableConcept.text = "Lactose monohydrate"
* ingredient[=].isActive = false
* ingredient[=].strength.numerator = 253.2 $ucum#mg "mg"
* ingredient[=].strength.denominator = 1 $sct#732936001 "Tablet (unit of presentation)"
* ingredient[+].itemCodeableConcept.text = "Microcrystalline cellulose"
* ingredient[=].isActive = false
* ingredient[+].itemCodeableConcept.text = "Sodium croscarmellose"
* ingredient[=].isActive = false
* ingredient[+].itemCodeableConcept.text = "Hypromellose"
* ingredient[=].isActive = false
* ingredient[+].itemCodeableConcept.text = "Sodium lauryl sulfate"
* ingredient[=].isActive = false
* ingredient[+].itemCodeableConcept.text = "Colloidal anhydrous silica"
* ingredient[=].isActive = false
* ingredient[+].itemCodeableConcept.text = "Magnesium stearate"
* ingredient[=].isActive = false
* ingredient[+].itemCodeableConcept.text = "Polyvinyl alcohol"
* ingredient[=].isActive = false
* ingredient[+].itemCodeableConcept.text = "Titanium dioxide"
* ingredient[=].isActive = false
* ingredient[+].itemCodeableConcept.text = "Macrogol"
* ingredient[=].isActive = false
* ingredient[+].itemCodeableConcept.text = "Talc"
* ingredient[=].isActive = false
* ingredient[+].itemCodeableConcept.text = "Iron(III) oxide"
* ingredient[=].isActive = false