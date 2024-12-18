Profile: CHCoreClaim
Parent: Claim
Id: ch-core-claim
Title: "CH Core Claim"
Description: "Base definition of the claim resource for the representation of a list of professional services (e.g. doctor's visit) and products (e.g. medication) that have been or are to be provided for a patient. The profile defines general basic elements that can occur in Swiss use cases. In Switzerland, there are external standards for administrative processes between service providers and payers (e.g. Forum Datenaustausch, SHIP, eCH), therefore see the corresponding mapping."
* extension contains Biller named biller 0..1
* extension[biller] ^short = "Biller in the case of a professional service or poduct provided."
* type from BfsMedstats20Encounterclass (extensible) // original binding is already extensible
* patient only Reference(CHCorePatient)
* provider only Reference(CHCorePractitioner or CHCorePractitionerRole or CHCoreOrganization)
* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo ^slicing.rules = #open
* supportingInfo contains 
    treatmentReason 0..1 and 
    remark 0..1
* supportingInfo[treatmentReason].category = http://terminology.hl7.org/CodeSystem/claiminformationcategory#patientreasonforvisit
* supportingInfo[treatmentReason].code from http://fhir.ch/ig/ch-term/ValueSet/treatmentreason (preferred)
* supportingInfo[treatmentReason].code ^short = "Treatment reason"
* supportingInfo[treatmentReason].code 1..
* supportingInfo[remark].category = http://terminology.hl7.org/CodeSystem/claiminformationcategory#info
* supportingInfo[remark].valueString ^short = "Remark"
* supportingInfo[remark].valueString 1..
* insurance.coverage only Reference(CHCoreCoverage)
* item.extension contains Responsible named responsible 0..1
* item.extension[responsible] ^short = "Responsible for the service or product provided"
// Tarif
* item.category.coding ^slicing.discriminator.type = #value
* item.category.coding ^slicing.discriminator.path = "system"
* item.category.coding ^slicing.rules = #open
* item.category.coding contains 
    tariff 0..1
* item.category.coding[tariff] ^short = "Tariff"
* item.category.coding[tariff].system = "http://forum-datenaustausch.ch/tariff"
// * item.categroy.coding[tariff].code 1.. -> Sushi: error No element found at path item.categroy.coding[tariff].code
* item.productOrService ^short = "Tariff number"
// Tarifziffer
* item.productOrService.coding ^slicing.discriminator.type = #value
* item.productOrService.coding ^slicing.discriminator.path = "system"
* item.productOrService.coding ^slicing.rules = #open
* item.productOrService.coding contains
	GTIN 0..1 and
	TARMED 0..1
* item.productOrService.coding[GTIN].system = "urn:oid:2.51.1.1"
* item.productOrService.coding[TARMED].system = "urn:oid:2.16.756.5.30.1.129.1.4"



Mapping: CHCoreClaim-to-ForumDatenaustausch
Source: CHCoreClaim
Target: "https://www.forum-datenaustausch.ch/de/xml-standards-formulare/release-45-451/generelle-rechnung-45/"
Id: ch-core-claim-to-forum-datenaustausch
Title: "Forum Datenaustausch: Generelle Rechnung 4.5"
* -> "invoice:request/invoice:payload"
* extension[biller]                                 -> "invoice:body/{invoice:tiers_payant, invoice:tiers_garant}/invoice:biller"
* extension[biller]                                 -> "Biller / Rechnungssteller / Auteur facture / Fatturante"
* identifier                                        -> "invoice:invoice (request_timestamp)"
* identifier                                        -> "Document identifier / Dokument Identifikation / Document Identification / Documento Identificazione"
* type                                              -> "invoice:body/invoice:treatment (treatment)"
* type                                              -> "Treatment type / Behandlungsart / Type admission / Tipo di ammissione"
* patient                                           -> "invoice:body/{invoice:tiers_payant, invoice:tiers_garant}/invoice:patient"
* patient                                           -> "Patient / Patient / Patient / Paziente"
* created                                           -> "invoice:invoice (request_date)"
* created                                           -> "Invoice date / Rechnungsdatum / Date facture / Data fattura"
* provider                                          -> "invoice:body/{invoice:tiers_payant, invoice:tiers_garant}/invoice:provider"
* provider                                          -> "Provider / Leistungserbringer / Four. de prestations / Prestatario"
* supportingInfo[treatmentReason].code              -> "invoice:body/invoice:treatment (reason)"
* supportingInfo[treatmentReason].code              -> "Treatment reason / Behandlungsgrund / Motif traitement / Motivo trattamento"
* supportingInfo[remark].valueString                -> "invoice:body/invoice:remark"
* supportingInfo[remark].valueString                -> "Remark / Bemerkung / Commentaire / Osservazioni"
* diagnosis.diagnosis[x]                            -> "invoice:body/invoice:treatment/invoice:diagnosis (type, code)"
* diagnosis.diagnosis[x]                            -> "Diagnosis / Diagnose / Diagnostic / Diagnosi"
* insurance.coverage                                -> "invoice:body/{invoice:tiers_payant, invoice:tiers_garant}/invoice:insurance"
* item.extension[responsible]                       -> "invoice:body/invoice:services/invoice:service (responsible_id)"
* item.extension[responsible]                       -> "Responsible / Verantwortlicher / Responsable / Responsabile"
* item.sequence                                     -> "invoice:body/invoice:services/invoice:service (record_id)"
* item.category.coding[tariff]                      -> "Tariff / Tarif / Tarif / Tarifa"
* item.category.coding[tariff].code                 -> "invoice:body/invoice:services/invoice:service (tariff_type)"
* item.productOrService                             -> "Tariff number / Tarifziffer / Code tarifaire / Cod. tariffa"
* item.productOrService.coding.code                 -> "invoice:body/invoice:services/invoice:service (code)"
* item.productOrService.coding.display              -> "invoice:body/invoice:services/invoice:service (name)"
* item.serviced[x]                                  -> "invoice:body/invoice:services/invoice:service (date_begin, date_end)"
* item.quantity.value                               -> "invoice:body/invoice:services/invoice:service (quantity)"
* item.quantity.value                               -> "Quantity / Anzahl / Quantité / Quantità"






Extension: Biller
Id: ch-ext-biller
Title: "Biller"
Description: "Extension to reference the biller in the case of a professional service or poduct provided."
Context: Claim
* value[x] only Reference(CHCorePractitioner or CHCorePractitionerRole or CHCoreOrganization)
* value[x] 1..


Extension: Responsible
Id: ch-ext-responsible
Title: "Responsible"
Description: "Extension to reference the responsible for a professional service or product provided."
Context: Claim.item
* value[x] only Reference(CHCorePractitioner or CHCorePractitionerRole or CHCoreOrganization)
* value[x] 1..

