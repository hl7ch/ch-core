Instance: 2-6-MedReqNorvasc
InstanceOf: CHCoreMedicationRequest
Title: "2-6 Medication Request with Medication Norvasc"
Description: "Example for MedicationRequest (with substitution)"
Usage: #example
* contained = Norvasc
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:d41d72ba-2100-11e6-b67b-9e71128cae77"
* status = #active
* intent = #order
* medicationReference.reference = "#Norvasc"
* subject.reference = "Patient/ElisabethBroennimannByBFH"
* authoredOn = "2012-02-04T14:00:00+01:00"
* requester.reference = "PractitionerRole/HPWengerRole"
* reasonCode.text = "Behandlungsgrund"
* dosageInstruction.patientInstruction = "Instruktion für die Patientin"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2012-02-04"
* dosageInstruction.timing.repeat.when[0] = #MORN
* dosageInstruction.timing.repeat.when[+] = #EVE
* dosageInstruction.route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosageInstruction.route.text = "zum Einnehmen"
* dosageInstruction.doseAndRate.doseQuantity = 1 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
* dispenseRequest.validityPeriod.start = "2012-02-04"
* dispenseRequest.validityPeriod.end = "2012-05-03"
* substitution.allowedCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-substanceAdminSubstitution#E "equivalent"


Instance: Norvasc
InstanceOf: CHCoreMedication
Usage: #inline
* code = urn:oid:2.51.1.1#7680500440334 "NORVASC Tabl 10 mg"
* code.text = "NORVASC Tabl 10 mg"
* form = urn:oid:0.4.0.127.0.16.1.1.2.1#10219000 "Tablet"
* form.text = "Tablette"
* amount.numerator = 20 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
* amount.denominator = 1 http://snomed.info/sct#1681000175101 "Package - unit of product usage (qualifier value)"
* ingredient.itemCodeableConcept = $sct#386864001 "Amlodipine (substance)"
* ingredient.itemCodeableConcept.text = "Amlodipine"
* ingredient.strength.numerator = 10 'mg' "milligram"
* ingredient.strength.denominator = 1 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
