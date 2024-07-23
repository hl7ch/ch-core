Profile: CHCoreClaim
Parent: Claim
Id: ch-core-claim
Title: "CH Core Claim"
Description: "Base definition of the Claim resource for use in Swiss specific use cases. The structure is based on a partial (not all elements are used at the moment) mapping to [Generelle Rechnung 4.5 (Forum Datenaustausch)](https://www.forum-datenaustausch.ch/de/xml-standards-formulare/release-45-451/generelle-rechnung-45/)."
* extension contains Biller named biller 0..1
* extension[biller] ^short = "Biller (Rechnungssteller / Auteur facture / Fatturante)"
* identifier ^short = "Document Identification (Dokument Identifikation / Document Identification / Documento Identificazione)"
* type ^short = "Treatment type (Behandlungsart / Type admission / Tipo di ammissione)"
* type from ForumDatenaustauschTreatmentType (extensible) // original binding is already extensible
* patient ^short = "Patient (Patient / Patient / Paziente)"
* patient only Reference(CHCorePatient)
* created ^short = "Invoice date (Rechnungsdatum / Date facture / Data fattura)"
* provider ^short = "Provider (Leistungserbringer / Four. de prestations / Prestatario)"
* provider only Reference(CHCorePractitioner or CHCorePractitionerRole or CHCoreOrganization)
* supportingInfo ^slicing.discriminator.type = #pattern
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo ^slicing.rules = #open
* supportingInfo contains 
    treatmentReason 0..1 and 
    remark 0..1
* supportingInfo[treatmentReason].category = http://terminology.hl7.org/CodeSystem/claiminformationcategory#patientreasonforvisit
* supportingInfo[treatmentReason].valueString from ForumDatenaustauschTreatmentReason (preferred)
* supportingInfo[treatmentReason].valueString ^short = "Treatment reason (Behandlungsgrund / Motif traitement / Motivo trattamento"
* supportingInfo[treatmentReason].valueString 1..
* supportingInfo[remark].category = http://terminology.hl7.org/CodeSystem/claiminformationcategory#info
* supportingInfo[remark].valueString ^short = "Remark (Bemerkung / Commentaire / Osservazioni)"
* supportingInfo[remark].valueString 1..
* diagnosis.diagnosis[x] only CodeableConcept
* diagnosis.diagnosis[x] ^short = "Diagnosis (Diagnose / Diagnostic / Diagnosi)"
* insurance.coverage only Reference(CHCoreCoverage)
* item.extension contains Responsible named responsible 0..1
* item.extension[responsible] ^short = "Responsible (Verantwortlicher / Responsable / Responsabile)"
// Tarif
* item.category.coding ^slicing.discriminator.type = #value
* item.category.coding ^slicing.discriminator.path = "system"
* item.category.coding ^slicing.rules = #open
* item.category.coding contains 
    tariff 0..1
* item.category.coding[tariff] ^short = "Tariff (Tarif / Tarif / Tarifa)"
* item.category.coding[tariff].system = "http://forum-datenaustausch.ch/tariff"
* item.productOrService ^short = "Tariff number (Tarifziffer / Code tarifaire / Cod. tariffa)"
// Tarifziffer
* item.productOrService.coding ^slicing.discriminator.type = #value
* item.productOrService.coding ^slicing.discriminator.path = "system"
* item.productOrService.coding ^slicing.rules = #open
* item.productOrService.coding contains
	GTIN 0..1 and
	Pharmacode 0..1 and 
	TARMED 0..1 and
    TARPSY 0..1
* item.productOrService.coding[GTIN].system = "urn:oid:2.51.1.1"
* item.productOrService.coding[Pharmacode].system = "urn:oid:2.16.756.5.30.2.6.1"
* item.productOrService.coding[TARMED].system = "urn:oid:2.16.756.5.30.1.129.1.4"
* item.productOrService.coding[TARPSY].system = "http://forum-datenaustausch.ch/tariff/030"
* item.servicedPeriod.end ^short = "Date (Datum / Date / Data)"
* item.quantity.value ^short = "Quantity (Anzahl / Quantité / Quantità)"


Mapping: ForumDatenaustausch-for-CHCoreClaim
Source: CHCoreClaim
Target: "https://www.forum-datenaustausch.ch/de/xml-standards-formulare/release-45-451/generelle-rechnung-45/"
Id: forum-datenaustausch
Title: "Forum Datenaustausch: Generelle Rechnung 4.5"
* -> "invoice:request -> invoice:payload"
* extension[biller]                                 -> "invoice:body -> invoice:tiers_payant or invoice:tiers_garant -> invoice:biller"
* identifier                                        -> "invoice:invoice (request_timestamp # request_date)"
* type                                              -> "invoice:body -> invoice:treatment (treatment)"
* patient                                           -> "invoice:body -> invoice:tiers_payant or invoice:tiers_garant -> invoice:patient"
* created                                           -> "invoice:invoice (request_date)"
* provider                                          -> "invoice:body -> invoice:tiers_payant or invoice:tiers_garant -> invoice:provider"
* supportingInfo[treatmentReason].valueString       -> "invoice:body -> invoice:treatment (reason)"
* supportingInfo[remark].valueString                -> "invoice:body -> invoice:remark"
* diagnosis                                         -> "invoice:body -> invoice:treatment -> invoice:diagnosis"
* diagnosis.diagnosisCodeableConcept.coding.system  -> "invoice:body -> invoice:treatment -> invoice:diagnosis (type)"
* diagnosis.diagnosisCodeableConcept.coding.code    -> "invoice:body -> invoice:treatment -> invoice:diagnosis (code)"
* diagnosis.diagnosisCodeableConcept.text           -> "invoice:body -> invoice:treatment -> invoice:diagnosis"
* insurance.coverage                                -> "invoice:body -> invoice:tiers_payant or invoice:tiers_garant -> invoice:insurance"
* item.extension[responsible]                       -> "invoice:body -> invoice:services -> invoice:service (responsible_id)"
* item.sequence                                     -> "invoice:body -> invoice:services -> invoice:service (record_id)"
* item.category.coding[tariff].code                 -> "invoice:body -> invoice:services -> invoice:service (tariff_type)"
* item.productOrService.coding.code                 -> "invoice:body -> invoice:services -> invoice:service (code)"
* item.productOrService.coding.display              -> "invoice:body -> invoice:services -> invoice:service (name)"
* item.servicedPeriod.start                         -> "invoice:body -> invoice:services -> invoice:service (date_begin)"
* item.servicedPeriod.end                           -> "invoice:body -> invoice:services -> invoice:service (date_end)"
* item.quantity.value                               -> "invoice:body -> invoice:services -> invoice:service (quantity)"


Extension: Biller
Id: ch-ext-biller
Title: "Biller"
Description: "Extension to reference the biller (Leistungserbringer / Four. de prestations / Prestatario) in a claim. The element is mapped to [Generelle Rechnung 4.5 (Forum Datenaustausch)](https://www.forum-datenaustausch.ch/de/xml-standards-formulare/release-45-451/generelle-rechnung-45/)."
Context: Claim
* value[x] only Reference(CHCorePractitioner or CHCorePractitionerRole or CHCoreOrganization)
* value[x] 1..


Extension: Responsible
Id: ch-ext-responsible
Title: "Responsible"
Description: "Extension to reference the responsible (Verantwortlicher / Responsable / Responsabile) in a claim. The element is mapped to [Generelle Rechnung 4.5 (Forum Datenaustausch)](https://www.forum-datenaustausch.ch/de/xml-standards-formulare/release-45-451/generelle-rechnung-45/)."
Context: Claim.item
* value[x] only Reference(CHCorePractitioner or CHCorePractitionerRole or CHCoreOrganization)
* value[x] 1..


ValueSet: ForumDatenaustauschTreatmentType
Id: forumdatenaustausch-treatmenttype
Title: "Forum Datenaustausch - Treamtent Type"
Description: "Value set including the values for treatment type (Behandlungsart / Type admission / Tipo di ammissione). The values are based on the usage in the claim based on [Generelle Rechnung 4.5 (Forum Datenaustausch)](https://www.forum-datenaustausch.ch/de/xml-standards-formulare/release-45-451/generelle-rechnung-45/)."
* ^experimental = false
* http://fhir.ch/ig/ch-core/CodeSystem/bfs-medstats-20-encounterclass#1 "ambulant"
* http://fhir.ch/ig/ch-core/CodeSystem/bfs-medstats-20-encounterclass#3 "sationär"


ValueSet: ForumDatenaustauschTreatmentReason
Id: forumdatenaustausch-treatmentreason
Title: "Forum Datenaustausch - Treamtent Reason"
Description: "Value set including the values for treatment reason (Behandlungsgrund / Motif traitement / Motivo trattamento). The values are based on the usage in the claim based on [Generelle Rechnung 4.5 (Forum Datenaustausch)](https://www.forum-datenaustausch.ch/de/xml-standards-formulare/release-45-451/generelle-rechnung-45/)."
* ^experimental = false
* $sct#64572001 "Disease"
* $sct#55566008 "Accident"
* $sct#77386006 "Pregnancy"
* $sct#169443000 "Prevention"
* $sct#276720006 "Birth defect"
* $sct#261665006 "Unknown"
