# CH Core Implementation Guide (R4) 
Core FHIR profiles for Switzerland


## Building the Implementation Guide

You can build the Implementation Guide with the [IG Publisher](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation).

- For building the Implementation Guide you need to install [Jekyll](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation#IGPublisherDocumentation-Jekyll).

- Clone this repository and change into its main directory.
- Download the latest version of IG Publisher:
```
wget https://fhir.github.io/latest-ig-publisher/org.hl7.fhir.publisher.jar -O org.hl7.fhir.publisher.jar
```
- Build the Implementation Guide:
```
java -Xms3550m -Xmx3550m -jar org.hl7.fhir.publisher.jar -ig ig.ini
```

### Validate a Resource
If you are in the main directory of the Implementation Guide you can check your example against the specification of this IG with the [Validator](https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Validator).

- Download the latest version of Validator: 
```
wget https://fhir.github.io/latest-ig-publisher/org.hl7.fhir.validator.jar -O org.hl7.fhir.validator.jar
```
- Validate the resource: 
```
java -jar org.hl7.fhir.validator.jar [file path]
 ```


## Validating without Building the IG

If you do not want to build the IG locally, you can validate your example against the Implementation Guide with the [Validator](https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Validator) as follows:

- Download the latest version of Validator: 
```
wget https://fhir.github.io/latest-ig-publisher/org.hl7.fhir.validator.jar -O org.hl7.fhir.validator.jar
```
- Validate the resource:
```
java -jar org.hl7.fhir.validator.jar [file path] -version 4.0.1 -ig ch.fhir.ig.ch-core#current
```
