Extension: ChEplRegulatedAuthorizationLimitationIndicationCode
Id: ch-ext-epl-regulated-authorization-limitation-indication-code
Title: "Indication Code"
Description: """
Indication Code, as defined by the [FOPH list of healthcare benefits](https://fhir.ch/ig/ch-epl/index.html) to be conveyed when referring to prescription/dispense/billing of medicinal products subject to a price model as defined by the FOPH.

**Background:** This extension was introduced in CH Core because the indication code of the FOPH Specialities List (SL) has to be conveyed in billing and medication workflows:
* **Billing:** The XML standard [generalInvoice 5.0](https://www.forum-datenaustausch.ch/xml-standards/rechnung) of Forum Datenaustausch conveys the SL indication code for drug records (tariff type 402) as `xtra_service` with the token `SLIndication` (e.g. `SLIndication='21316.01'`), see the documentation [generalInvoiceRequest500.chm](https://www.forum-datenaustausch.ch/download_file/a9603080-9f90-49c2-ad0d-f1f48f410f12/412) (chapter xtra_service). [CH ALIS Connect](https://fhir.ch/ig/ch-alis-connect/) maps the ALIS parameter `SLIndicationCode` to this extension in its [ChargeItem profile](https://fhir.ch/ig/ch-alis-connect/StructureDefinition-ch-alis-connect-chargeitem.html), so that the code can be conveyed from the clinical system to the invoice.

**Regulation:** Since 1 July 2026 the indication code has to be stated on every prescription and invoice in the ambulatory sector for medicinal products subject to a price model (mark "MP" in the SL). From 1 January 2027 insurers may return invoices without the indication code. For medicinal products without a price model, and for DRG case flat rates and supplementary remunerations, the indication code is recommended but optional. See the FOPH [circular of 19 February 2026](https://www.bag.admin.ch/dam/fr/sd-web/PtwrsnPGN-1j/Circulaire%20de%20l%27OFSP%20sur%20la%20transmission%20du%20code%20d%27indication%20du%2019%20f%C3%A9vrier%202026.pdf) and [information letter of 9 July 2026](https://www.bag.admin.ch/dam/fr/sd-web/jSVgsQjjcLZY/Lettre%20d%60information%20sur%20la%20transmission%20du%20code%20d%E2%80%99indication%20du%209%20juillet%202026.pdf), legal basis Art. 42 para. 3 KVG and Art. 59 para. 1 KVV.

**Usage:** The extension is optional in the CH Core profiles, derived implementation guides (e.g. CH ALIS Connect) define where it is required to fulfil the regulation above.

**Code list:** The indication codes are assigned and maintained by the FOPH as part of the SL and are published together with the SL (see [CH EPL](https://fhir.ch/ig/ch-epl/StructureDefinition-regulatedAuthorization-limitation.html), indicationCode). Since 1 August 2026 the ePL generates the indication code automatically for newly entered limitations. CH Core does not define or maintain this code list, updates follow the publication of the SL by the FOPH.
"""

* ^context[+].type = #element
* ^context[=].expression = "ChargeItem"
* ^context[+].type = #element
* ^context[=].expression = "Immunization"
* ^context[+].type = #element
* ^context[=].expression = "ImmunizationRecommendation.recommendation"
* ^context[+].type = #element
* ^context[=].expression = "MedicationAdministration"
* ^context[+].type = #element
* ^context[=].expression = "MedicationDispense"
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"
* ^context[+].type = #element
* ^context[=].expression = "MedicationStatement"

* value[x] 1..1
* value[x] only string
* value[x] ^short = "The indication code assigned by the FOPH for this medicinal product and indication."
* value[x] ^definition = "The [indication code assigned by the FOPH for this medicinal product and indication](https://fhir.ch/ig/ch-epl/StructureDefinition-regulatedAuthorization-limitation.html). Normally a code that looks like XXXXX.XX with the first 5 digits being the FOPH dossier number, followed by a dot and then by two digits which are a sequence of defined indications by the FOPH."