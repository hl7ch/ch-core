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
<p>&nbsp;</p>

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
<p>&nbsp;</p>

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
<p>&nbsp;</p>

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
<p>&nbsp;</p>


### Original Representation (EPR)

Representation (display) of FHIR Documents (Bundle) in the the context of the Swiss EPR:

1. Exchange formats for the Swiss EPR require a readable representation.
2. For some exchange formats (e.g. Medication Card document, Medication Prescription document from CH EMED), it has been defined that the document must be embedded as a PDF/A. For this purpose, the 'originalRepresentation' section has been defined in the [CH Core Composition EPR profile](StructureDefinition-ch-core-composition-epr.html).

#### Adding the PDF to the FHIR Bundle
To represent the PDF (original representation) in the FHIR document, it is added to the Bundle ([CH Core Document EPR profile](StructureDefinition-ch-core-document-epr.html)) as a [Binary resource](https://hl7.org/fhir/R4/binary.html), which is then referenced by the narrative part of the corresponding section.

#### Referencing from Narrative to Data
The link from the narrative text should point to the corresponding `Bundle.entry.id`, where the Binary resource is. The below example snippets show the relevant parts of the EPR document example [Transfer note for radiological diagnostics](Bundle-DocumentContainingOriginalRepresentationAsPdfA.json.html):

Section `originalRepresentation` of the Composition entry -> `Composition.section.text`:
{% fragment Bundle/DocumentContainingOriginalRepresentationAsPdfA JSON BASE:Bundle.entry[0].resource.section.where(code.coding.code = '55108-5') %}

<p>&nbsp;</p>

Binary entry -> `Bundle.entry.id`: 
{% fragment Bundle/DocumentContainingOriginalRepresentationAsPdfA JSON EXCEPT:Bundle.entry.where(id = '8f304c87-ed20-4e9a-b928-db4116eb6594') %}

<p>&nbsp;</p>
