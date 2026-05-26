
This logical model is based on the [`AdministrativeCase`](https://www.biomedit.ch/rdf/sphn-schema/sphn#AdministrativeCase) schema defined by the Swiss Personalized Healthcare Network (SPHN). 

### Scope and Usage

This is **NOT** a resource and cannot appear directly in FHIR instances. It defined a logical pattern adhered to by other resources. It serves two purposes:

* It provides implementation guidance to help map internal business logic conceptually to the HL7 CH Core FHIR resources used for data exchange.
* It includes explicit mappings that document where specific model details can be extracted from the corresponding FHIR resources.

### Mapping to FHIR 

The table below lists the FHIR resources that can instanciate the logical model and their corresponding mappings.

| FHIR Profile | Mapping Details | Scope 
|-------|-------|-------|
| [`CH Core Encounter`](StructureDefinition-ch-core-encounter.html) | [`CH Core Encounter to Administrative Case`](StructureDefinition-ch-core-encounter-mappings.html) | |