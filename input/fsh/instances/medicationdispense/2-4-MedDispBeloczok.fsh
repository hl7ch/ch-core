Instance: 2-4-MedDispBeloczok
InstanceOf: CHCoreMedicationDispense
Title: "1-2 Medication Dispense with Medication Beloc Zok"
Description: "Example for MedicationDispense (two dosage elements)"
Usage: #example
* contained = Beloczok
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:d8143fea-4778-11e6-beb8-9e71128cae77"
* status = #completed
* medicationReference.reference = "#Beloczok"
* subject.reference = "Patient/ElisabethBroennimannByBFH"
* quantity = 1 http://snomed.info/sct#1681000175101 "Package - unit of product usage (qualifier value)"
* performer.actor.reference = "PractitionerRole/HPWengerRole"
* whenHandedOver = "2012-02-04T14:00:00+01:00"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].patientInstruction = "-"
* dosageInstruction[=].timing.repeat.boundsPeriod.start = "2012-02-04"
* dosageInstruction[=].timing.repeat.when = #MORN
* dosageInstruction[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosageInstruction[=].route.text = "zum Einnehmen"
* dosageInstruction[=].doseAndRate.doseQuantity = 1 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
* dosageInstruction[+].sequence = 2
* dosageInstruction[=].timing.repeat.when = #EVE
* dosageInstruction[=].doseAndRate.doseQuantity = 0.5 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
* substitution.wasSubstituted = true
* substitution.type = http://terminology.hl7.org/CodeSystem/v3-substanceAdminSubstitution#E "equivalent"


Instance: Beloczok
InstanceOf: CHCoreMedication
Usage: #inline
* code = urn:oid:2.51.1.1#7680521101306 "BELOC ZOK Ret Tabl 50 mg 30 Stk"
* code.text = "BELOC ZOK Ret Tabl 50 mg"
* form = urn:oid:0.4.0.127.0.16.1.1.2.1#10219000 "Tablet"
* form.text = "Tablette"
* amount.numerator = 20 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
* amount.denominator = 1 http://snomed.info/sct#1681000175101 "Package - unit of product usage (qualifier value)"
* ingredient.itemCodeableConcept = $sct#372826007 "Metoprolol (substance)"
* ingredient.itemCodeableConcept.text = "Metoprolol"
* ingredient.strength.numerator = 50 'mg' "milligram"
* ingredient.strength.denominator = 1 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
