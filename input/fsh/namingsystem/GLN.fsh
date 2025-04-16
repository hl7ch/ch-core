// https://hl7.org/fhir/namingsystem-example-id.json.html

Instance: gln
InstanceOf: NamingSystem
Usage: #definition
* name = "GLN"
* status = #active
* kind = #identifier
* date = "2018-12-05"
* publisher = "HL7 Switzerland"
* contact[0].name = "HL7 Switzerland"
* contact[=].telecom.system = #url
* contact[=].telecom.value = "https://www.hl7.ch/"
* contact[+].name = "HL7 Switzerland"
* contact[=].telecom.system = #url
* contact[=].telecom.value = "https://www.hl7.ch/"
* contact[=].telecom.use = #work
* responsible = "GS1"
* description = "Each healthcare partner (natural or legal person) is referenced with a unique code of type GLN (former name: EAN code) of the [GS1](https://www.gs1.ch/de/home) system. See [refdata](https://www.refdata.ch/content/partner_d.aspx)"
* jurisdiction = urn:iso:std:iso:3166#CH
* uniqueId.type = #oid
* uniqueId.value = "2.51.1.3"
* uniqueId.comment = "This is the official identifier"
// * uniqueId.preferred = true