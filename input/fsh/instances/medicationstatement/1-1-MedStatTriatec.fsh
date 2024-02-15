Instance: 1-1-MedStatTriatec
InstanceOf: CHCoreMedicationStatement
Title: "1-1 Medication Statement with Medication Triatec"
Description: "Example for MedicationStatement (MTP)"
Usage: #example
* contained = Triatec
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:c9f758a1-296c-4710-84d4-e181db8c7478"
* status = #active
* medicationReference.reference = "#Triatec"
* subject.reference = "Patient/ElisabethBroennimannByBFH"
* dateAsserted = "2011-11-29T11:00:00+01:00"
* informationSource.reference = "PractitionerRole/HPWengerRole"
* reasonCode.text = "Bluthochdruck"
* dosage.patientInstruction = "-"
* dosage.timing.repeat.boundsPeriod.start = "2011-11-29"
* dosage.timing.repeat.when = #MORN
* dosage.route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage.route.text = "zum Einnehmen"
* dosage.doseAndRate.doseQuantity = 0.5 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
