// Test resource for a ballot comment on CH Core 7.0.0-ballot:
// CHCoreImmunizationRecommendation slices the indication code extension on the resource root
// (ImmunizationRecommendation.extension:indicationCode), but the extension context is
// ImmunizationRecommendation.recommendation. Validating this instance shows the resulting error.
Instance: CHCoreImmunizationRecommendationIndicationCodeOnRoot
InstanceOf: CHCoreImmunizationRecommendation
Title: "CH Core ImmunizationRecommendation with indication code on the resource root"
Description: "Test instance using the indication code extension as profiled in CHCoreImmunizationRecommendation (on the resource root), which conflicts with the extension context ImmunizationRecommendation.recommendation."
Usage: #example
* extension[indicationCode].valueString = "12345.01"
* patient = Reference(ImmunizationPatientExample)
* authority = Reference(ImmunizationOrganizationExample)
* date = "2021-06-01T00:00:00+02:00"
* recommendation.vaccineCode = $SwissMedicVacCS#58317 "Fluad"
* recommendation.targetDisease = $sct#63650001 "Cholera (disorder)"
* recommendation.forecastStatus = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#due
* recommendation.forecastReason = http://fhir.ch/ig/ch-vacd/CodeSystem/ch-vacd-recommendation-categories-cs#41503 "Empfohlene Impfungen für Risikogruppen"
* recommendation.dateCriterion.code = $loinc#30980-7 "Date vaccine due"
* recommendation.dateCriterion.value = "2021-06-01T00:00:00+02:00"
