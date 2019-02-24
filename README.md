# ch-core
CH Core Implementation Guide (FHIR)
Core FHIR profiles for Switzerland

## building the implementation guide

```
wget http://build.fhir.org/org.hl7.fhir.igpublisher.jar -O org.hl7.fhir.igpublisher.jar
java -Xms3550m -Xmx3550m -jar org.hl7.fhir.igpublisher.jar -ig ig.json
```

## validating against command line 

see [http://wiki.hl7.org/index.php?title=Using_the_FHIR_Validator](http://wiki.hl7.org/index.php?title=Using_the_FHIR_Validator) to install the validator on yoiur system

then terminal, command prompt:

```
java -jar org.hl7.fhir.validation.cli.jar <<pathtofile>> -ig ch.fhir.ig.core
```

if you want to validate a specific profile, e.g. the ch core patient profile

```
java -jar org.hl7.fhir.validation.cli.jar <<pathtofile>> -ig ch.fhir.ig.core  -profile http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient
```


## snippet for finding differentials from base profile

search in VS Code for differentials in profiles (e.g. Patient):

profiles-resources.xml
<differential>[\n|\s]*<element id="Patient
