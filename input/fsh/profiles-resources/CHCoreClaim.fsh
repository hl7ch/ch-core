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
* insurance.coverage only Reference(CHCoreCoverage)


Mapping: ForumDatenaustausch-for-CHCoreClaim
Source: CHCoreClaim
Target: "https://www.forum-datenaustausch.ch/de/xml-standards-formulare/release-45-451/generelle-rechnung-45/"
Id: forum-datenaustausch
Title: "Forum Datenaustausch: Generelle Rechnung 4.5"
* -> "invoice:request -> invoice:payload"
* extension[biller]             -> "invoice:body -> invoice:tiers_payant or invoice:tiers_garant -> invoice:biller"
* identifier                    -> "invoice:invoice (request_timestamp # request_date)"
* type                          -> "invoice:body -> invoice:treatment (treatment)"
* patient                       -> "invoice:body -> invoice:tiers_payant or invoice:tiers_garant -> invoice:patient"
* created                       -> "invoice:invoice (request_date)"
* provider                      -> "invoice:body -> invoice:tiers_payant or invoice:tiers_garant -> invoice:provider"
* insurance.coverage            -> "invoice:body -> invoice:tiers_payant or invoice:tiers_garant -> invoice:insurance"


Extension: Biller
Id: ch-ext-biller
Title: "Biller"
Description: "Extension to reference the biller (Leistungserbringer / Four. de prestations / Prestatario) in a claim. The element is mapped to [Generelle Rechnung 4.5 (Forum Datenaustausch)](https://www.forum-datenaustausch.ch/de/xml-standards-formulare/release-45-451/generelle-rechnung-45/)."
Context: Claim
* value[x] only Reference(CHCorePractitioner or CHCorePractitionerRole or CHCoreOrganization)
* value[x] 1..


ValueSet: ForumDatenaustauschTreatmentType
Id: forumdatenaustausch-treatmenttype
Title: "Forum Datenaustausch - Treamtent Type"
Description: "Value set including the values for treatment type (de: Behandlungsart, fr: Type admission, it: Tipo di ammissione). The values are based on the usage in the claim based on [Generelle Rechnung 4.5 (Forum Datenaustausch)](https://www.forum-datenaustausch.ch/de/xml-standards-formulare/release-45-451/generelle-rechnung-45/)."
* ^experimental = false
* http://fhir.ch/ig/ch-core/CodeSystem/bfs-medstats-20-encounterclass#1 "ambulant"
* http://fhir.ch/ig/ch-core/CodeSystem/bfs-medstats-20-encounterclass#3 "sationär"
