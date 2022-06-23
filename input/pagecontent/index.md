### Introduction
This implementation guide is provided to support the use of FHIR<sup>&reg;&copy;</sup> FHIR in Switzerland.

This guide is a working specification. We anticipate that it will be implemented and tested by FHIR system producers whose feedback will help improve its content. With this standard for trial use, we are looking for feedback on whether the following goals have been met: 
- The guide provides guidance on essential resources for identifiers, code systems, value sets and naming systems in Switzerland, specifically in relation to the Swiss Electronic Patient Record ([EPR](https://www.patientendossier.ch/en)).
- The guide defines extensions that are necessary for local use in Switzerland.
- The guide covers the requirements for [eCH-0010 postal address](https://www.ech.ch/vechweb/page?p=dossier&documentNumber=eCH-0010&documentVersion=7.0) and [eCH-0011 personal data](https://www.ech.ch/vechweb/page?p=dossier&documentNumber=eCH-0011&documentVersion=8.1).
- The guide defines data elements from HL7.ch CDA-CH V2.1 (2020) document standard (available in [German](https://www.hl7.ch/default/assets/File/Publikationen/20200406_CDA-CH-V2_1_de.pdf) and [French](https://www.hl7.ch/default/assets/File/Publikationen/20200406_CDA-CH-V2_1_fr.pdf)) in FHIR CH Core profiles.
- The guide incorporates Federal Statistics Office (BFS) variables for medical statistics. See [BFS](https://www.bfs.admin.ch/bfs/de/home/statistiken/kataloge-datenbanken/publikationen.assetdetail.7066232.html) (available in German, French and Italian).

**Note**: This implementation guide is not (yet) a FHIR API specification, this will be a goal for the next iteration.

<div markdown="1" class="stu-note">

[Significant Changes, Open and Closed Issues](changelog.html)

</div>

**Download**: You can download this implementation guide in npm format from [here](package.tgz).

### Relation to the Swiss EPR

The Annexes to the Swiss [Electronic Patient Record](https://www.patientendossier.ch/en) (EPR) law specify the technical and semantic requirements for interoperability.

#### Metadata (Annex 3 and Annex 9)

Metadata relating to the Swiss EPR is defined in Annexes 3 and 9 by the [Ministry of Health](https://www.bag.admin.ch/bag/de/home/gesetze-und-bewilligungen/gesetzgebung/gesetzgebung-mensch-gesundheit/gesetzgebung-elektronisches-patientendossier.html). [eHealth Suisse](https://www.e-health-suisse.ch/en/home.html) maintains the value sets with additional provided translations in ART-DECOR in the [CH-EPR](https://art-decor.org/art-decor/decor-project--ch-epr-) project. All code systems and value sets from the CH-EPR project are exported to the FHIR implementation guide [CH EPR Term](http://fhir.ch/ig/ch-epr-term/index.html), which forms the basis for CH Core.

#### Exchange formats (Annex 4)

There are currently three exchange formats defined in the draft of Annex 4. Those three exchange formats are based on CDA-CH V2. Exchange formats can also be represented with FHIR documents.

- [CH Core Document Profile EPR](StructureDefinition-ch-core-document.html): the base definition for a structured document in the Swiss EPR; it corresponds to a [CDA-CH derived document](https://art-decor.org/art-decor/decor-project--hl7chcda-).
- [CH Core Composition Profile EPR](StructureDefinition-ch-core-composition-epr.html): the base definition for a composition; it corresponds to the [CDA-CH v2.1 - structuredBody](https://art-decor.org/art-decor/decor-templates--hl7chcda-?section=templates&id=2.16.756.5.30.1.1.10.1.9&effectiveDate=2019-10-17T15:22:41&language=en-US) template.

#### XDS (Annex 5, Amendment 1)

Requirements for IHE XDS are given in Annex 5. The [CH Core DocumentReference Profile EPR](StructureDefinition-ch-core-documentreference-epr.html) defines how metadata used in the EPR is to be mapped to XDS Metadata. Please note that the IHE MHD profile, which includes the document reference resource, is not yet specified in the Annexes, a draft implementation guide is [CH EPR mHealth](http://fhir.ch/ig/ch-epr-mhealth/index.html).

#### CH:ATC Profile (Annex 5, Amendment 2.2)

The CH ATC profile defines the requirements for a patient’s audit trail. [CH ATC](http://fhir.ch/ig/ch-atc/index.html) is a FHIR implementation guide based on FHIR STU3 and R4. There is currently no relationship between CH ATC and CH Core.
### Scope

This document presents Swiss use concepts defined via FHIR processable artefacts.

* [Profiles](profiles.html) - useful constraints of essential FHIR resources and data types for Swiss use. 
* [Extensions](extensions.html) -  FHIR extensions that are added for local use, covering necessary Swiss concepts. 
* [Terminologies](terminology.html) - defined or referenced code systems and value sets for Switzerland. 

### Governance

The CH Core implementation guide is managed by HL7 Switzerland in the [HL7 Switzerland FHIR technical committee](https://www.hl7.ch/technisches-komitee/), see also [source](https://github.com/hl7ch/ch-core).
### Collaboration
This guide is the product of collaborative work undertaken with participants from:

* [Swiss FHIR Implementers Community](https://www.fhir.ch)
* [HL7 Switzerland](https://www.hl7.ch)
* [eHealth Suisse](https://www.e-health-suisse.ch/en/home.html)

### Safety considerations
This implementation guide defines data elements, resources, formats, and methods for exchanging healthcare data between different participants in the healthcare process. As such, clinical safety is a key concern. Additional guidance regarding safety for the specification’s many and various implementations is available at: [https://www.hl7.org/FHIR/safety.html](https://www.hl7.org/FHIR/safety.html).

Although the present specification does gives users the opportunity to observe data protection and data security regulations, its use does not guarantee compliance with these regulations. Effective compliance must be ensured by appropriate measures during implementation projects and in daily operations. The corresponding implementation measures are explained in the standard. 
In addition, the present specification can only influence compliance with the security regulations in the technical area of standardisation. It cannot influence organisational and contractual matters.

### License and Legal Terms 

This document is licensed under Creative Commons "No Rights Reserved" ([CC0](https://creativecommons.org/publicdomain/zero/1.0/)).

HL7®, HEALTH LEVEL SEVEN®, FHIR® and the FHIR <img src="icon-fhir-16.png" style="float: none; margin: 0px; padding: 0px; vertical-align: bottom"/>&reg; are trademarks owned by Health Level Seven International, registered with the United States Patent and Trademark Office.

This implementation guide contains and references intellectual property owned by third parties ("Third Party IP"). Acceptance of these License Terms does not grant any rights with respect to Third Party IP. The licensee alone is responsible for identifying and obtaining any necessary licenses or authorizations to utilize Third Party IP in connection with the specification or otherwise.

Following is a non-exhaustive list of third-party artifacts and terminologies that may require a separate license:

**SNOMED Clinical Terms® (SNOMED CT®)**
This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International (former known as International Health Terminology Standards Development Organisation IHTSDO). All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. “SNOMED” and “SNOMED CT” are registered trademarks of SNOMED International.

**Logical Observation Identifiers Names and Codes LOINC**
This material contains content from LOINC® (http://loinc.org). The LOINC table, LOINC codes, and LOINC panels and forms file are copyright © 1995-2013, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and available at no cost under the license at http://loinc.org/terms-of-use.
