# ch-core
CH Core Implementation Guide (FHIR)
Core FHIR profiles for Switzerland

## building the implementation guide

```
wget https://fhir.github.io/latest-ig-publisher/org.hl7.fhir.publisher.jar -O org.hl7.fhir.igpublisher.jar
java -Xms3550m -Xmx3550m -jar org.hl7.fhir.igpublisher.jar -ig ig.json
```

## validating against command line 

see [http://wiki.hl7.org/index.php?title=Using_the_FHIR_Validator](http://wiki.hl7.org/index.php?title=Using_the_FHIR_Validator) to install the validator on yoiur system

then terminal, command prompt:

```
java -jar org.hl7.fhir.validation.cli-3.8.0.jar <<pathtofile>> -ig http://build.fhir.org/ig/hl7ch/ch-core/ -version 4.0.1
```

if you want to validate a specific profile, e.g. the ch core patient profile

```
java -jar org.hl7.fhir.validation.cli-3.8.0.jar <<pathtofile>> -ig  http://build.fhir.org/ig/hl7ch/ch-core/ -version 4.0.1 -profile http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient
```

## validating against https://test.fhir.ch/r4

You can directly validate the resource against the test.fhir.ch/r4 server with the [validation operation](https://www.hl7.org/fhir/operation-resource-validate.html) and specify the content of your resource in the parameters. see


## snippet for finding differentials from base profile

search in VS Code for differentials in profiles (e.g. Patient):

profiles-resources.xml
<differential>[\n|\s]*<element id="Patient
