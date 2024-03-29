### SNOMED CT Swiss Extension
Within the EPR, SNOMED CT is used for the metadata and in the exchange formats, see [here](index.html#metadata-annex-3-and-annex-9).   
SNOMED CT is designed so that the International Edition can be complemented by creating extensions to meet national or local requirements. Since December 2021, the Swiss Extension is available and includes translations in German, French and Italian. 

* [SNOMED CT Browser](https://browser.ihtsdotools.org/): International Edition & Swiss Extension
* [Swiss Extension](https://confluence.ihtsdotools.org/display/DOCEXTPG/4.4.2+Edition+URI+Examples): 
   * Focus Module ID: 2011000195101
   * Edition URI: [http://snomed.info/sct/2011000195101](http://snomed.info/sct/2011000195101) 

The **guidance** for Switzerland is that the `version` element should only be added when using codes from the Swiss extension.    
In the following sections, the usage in [instances](#usage-in-instances) and [value sets](#usage-in-value-sets) is illustrated exemplarily.

#### Usage in Instances
To illustrate how the SNOMED CT codes (international vs. Swiss extension) are used in instances, examples of the CH EMED exchange format are shown below.  

**SNOMED CT international**: 721912009 "Medication summary document (record artifact)"   

Composition.type of a Medication Prescription document (see [full example](https://fhir.ch/ig/ch-emed/Bundle-2-6-MedicationPrescription.json.html)):
```json
"type" : {
  "coding" : [
    {
      "system" : "http://snomed.info/sct",
      "code" : "761938008",
      "display" : "Medicinal prescription record (record artifact)"
    }
  ]
}
```

**SNOMED CT Swiss extension**: 82291000195104 "Medication dispense document (record artifact)"   

Composition.type of a Medication Dispense document (see [full example](https://fhir.ch/ig/ch-emed/Bundle-1-2-MedicationDispense.json.html)): 
```json
"type" : {
  "coding" : [
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/2011000195101",
      "code" : "82291000195104",
      "display" : "Medication dispense document (record artifact)"
    }
  ]
}
```

#### Usage in Value Sets
To illustrate how the SNOMED CT codes (international vs. Swiss extension) are used in value sets, examples of the CH Term are shown below.  

**SNOMED CT international**: 17621005 "Normal (qualifier value)"    

ValueSet.compose.include of the DocumentEntry.confidentialityCode ValueSet (see [full ValueSet](https://fhir.ch/ig/ch-term/ValueSet-DocumentEntry.confidentialityCode.html)):
```json
"compose" : {
  "include" : [
    {
      "system" : "http://snomed.info/sct",
      "concept" : [
        {
          "code" : "17621005",
          "display" : "Normal (qualifier value)"
        }
      ]
    }
  ]
}
```

**SNOMED CT Swiss extension**: 1141000195107 "Secret (qualifier value)"      

ValueSet.compose.include of the DocumentEntry.confidentialityCode ValueSet (see [full ValueSet](https://fhir.ch/ig/ch-term/ValueSet-DocumentEntry.confidentialityCode.html)):
```json
"compose" : {
  "include" : [
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/2011000195101",
      "concept" : [
        {
          "code" : "1141000195107",
          "display" : "Secret (qualifier value)",
        }
      ]
    }
  ]
}
```
