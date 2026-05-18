Instance: ConsentProvisionCodeSearch
InstanceOf: SearchParameter
Title: "ConsentProvisionCodeSearch"
Description: "Enables the search for Consent.provision.code.coding"
Usage: #definition

* url = "http://fhir.ch/ig/ch-core/SearchParameter/ConsentProvisionCodeSearch" 
* version = "0.1.0"
* name = "ConsentProvisionCodeSearch"
* status = #active
* experimental = false
* date = "2025-05-14"
* publisher = "HL7 Benutzergruppe Schweiz"
* code = #provision-code
* base = #Consent
* type = #token
* expression = "Consent.provision.code"
* target = #Consent
* processingMode = #normal