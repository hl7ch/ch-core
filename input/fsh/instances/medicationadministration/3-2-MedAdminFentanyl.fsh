Instance: 3-2-MedAdminFentanyl
InstanceOf: CHCoreMedicationAdministration
Title: "Medication Administration Fentanyl"
Description: "Example for MedicationAdministration (DIS)"
Usage: #example
* contained = Fentanyl
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:8ef0d745-e218-4636-abac-ea842ca6a421"
* status = #completed
* medicationReference.reference = "#Fentanyl"
* subject = Reference(ElisabethBroennimannByBFH)
* effectiveDateTime = "2020-02-03T14:32:00+01:00"
* performer.actor = Reference(HPWengerRole)
* reasonCode.text = "Schmerzbehandlung"
* dosage.route = urn:oid:0.4.0.127.0.16.1.1.2.1#20045000 "Intravenous use"
* dosage.route.text = "intravenöse Anwendung"
* dosage.dose = 1 http://snomed.info/sct#732978007 "Ampule (unit of presentation)"


Instance: Fentanyl
InstanceOf: CHCoreMedication
Usage: #inline
* code = urn:oid:2.51.1.1#7680539870027 "FENTANYL Sintetica Inj Lös 0.5 mg/10ml" // = 0.05 mg/ml
* code.text = "FENTANYL Sintetica Inj Lös 0.5 mg/10ml"
* form = urn:oid:0.4.0.127.0.16.1.1.2.1#11201000 "Solution for injection"
* form.text = "Injektionslösung"
* amount.numerator = 10 http://snomed.info/sct#732978007 "Ampule (unit of presentation)"
* amount.denominator = 1 http://snomed.info/sct#1681000175101 "Package - unit of product usage (qualifier value)"
* ingredient.itemCodeableConcept = $sct#373492002 "Fentanyl (substance)"
* ingredient.itemCodeableConcept.text = "Fentanyl"
* ingredient.strength.numerator = 0.5 'mg' "milligram"
* ingredient.strength.denominator = 10 'mL' "milligram"
