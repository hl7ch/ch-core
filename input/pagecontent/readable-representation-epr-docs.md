Representation (display) of FHIR Documents (Bundle) in the the context of the Swiss EPR:

1. Exchange formats for the Swiss EPR require a readable representation.
2. For this purpose, the `originalRepresentation` section has been defined in the [CH Core Composition EPR profile](StructureDefinition-ch-core-composition-epr.html), from where a embedded PDF as a Binary resource is linked. According to the EPR ordinance the PDF has to be in PDF/A-1 or PDF/A-2 format.
3. This is one possible way for the readable representation of EPR documents. It is used, for example, in the CH EMED exchange format (Medication Card document, Medication Prescription document). 

### Including the PDF in the FHIR Document
To include the PDF in the FHIR document, it is added to the Bundle ([CH Core Document EPR profile](StructureDefinition-ch-core-document-epr.html)) as an entry containing a [Binary resource](https://hl7.org/fhir/R4/binary.html). The section `originalRepresentation` in the Composition ([CH Core Composition EPR profile](StructureDefinition-ch-core-composition-epr.html)) contains narrative text with an HTML element that is linked to the Binary resource through the [textLink extension](https://hl7.org/fhir/extensions/5.3.0-ballot-tc1/StructureDefinition-textLink.html) (5.3.0-ballot-tc1 version), which formally establishes the connection between the HTML element's ID and the referenced Binary resource, following [IPS best practices for linking narrative content to structured data](https://build.fhir.org/ig/HL7/fhir-ips/Design-Conventions.html#linking-narrative-to-discrete-fhir-resources) (current version).

### Example
The below example snippets show the relevant parts of the EPR document example [Transfer note for radiological diagnostics](Bundle-DocumentContainingOriginalRepresentationAsPdfA.json.html):

Section `originalRepresentation` of the Composition entry: 
{% fragment Bundle/DocumentContainingOriginalRepresentationAsPdfA JSON BASE:Bundle.entry[0].resource.section.where(code.coding.code = '55108-5') %}

<p>&nbsp;</p>

Binary entry: 
{% fragment Bundle/DocumentContainingOriginalRepresentationAsPdfA JSON EXCEPT:Bundle.entry.where(id = '8f304c87-ed20-4e9a-b928-db4116eb6594') %}

<p>&nbsp;</p>
