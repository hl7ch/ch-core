### Introduction
This implementation guide is provided to support the use of FHIR<sup>&reg;&copy;</sup> in a Swiss context, realm.

This document is a working specification that is expected to be implemented and tested by FHIR<sup>&reg;&copy;</sup> system producers to enable feedback to improve the content of this guide. With this first Standard for Trial Use ballot version we are looking for feedback if the following goals are met:  
- provide guidance on core resources for identifiers, code system, value sets and naming systems in a Swiss specific context, especially related to the Swiss [Electronic Patient Record](https://www.patientendossier.ch/en)
- define extensions that are necessary for local use covering needed Swiss concepts
- covering the requirements from [eCH-0010 postal adress](https://www.ech.ch/vechweb/page?p=dossier&documentNumber=eCH-0010&documentVersion=7.0) and [eCH-0011 person data](https://www.ech.ch/vechweb/page?p=dossier&documentNumber=eCH-0011&documentVersion=8.1)
- define data elements from [HL7.ch CDA-CH V2.1 (2020) document standard](http://e-health-wiki.ch/index.php/Ehscda:CDA-CH_2017_(specification)) in FHIR CH-Core profiles.
- incorporate BFS variables for medical statistic (german, french, italian) see [BFS](https://www.bfs.admin.ch/bfs/de/home/statistiken/kataloge-datenbanken/publikationen.assetdetail.7066232.html).

**Note**: This implementation guide is not (yet) a FHIR API specification, this will be a goal for the next iteration.

**Download**: You can download this implementation guide in npm format from [here](package.tgz).

### Relation to the Swiss EPR

The Annexes in the Swiss [Electronic Patient Record](https://www.patientendossier.ch/en) specify the technical and semantical requirements.

#### Metadata (Annex 3 and Annex 9)

 In Annex 3 and 9 metadata in the context of the EPR is defined. The metadata in these Annexes is defined by the [Ministry of Health](https://www.bag.admin.ch/bag/de/home/gesetze-und-bewilligungen/gesetzgebung/gesetzgebung-mensch-gesundheit/gesetzgebung-elektronisches-patientendossier.html), [eHealth Suisse](https://www.e-health-suisse.ch/startseite.html) maintains the ValueSets with additional provided translations in ART-DECOR in the [ch-epr](https://art-decor.org/art-decor/decor-project--ch-epr-) project. All CodeSystems and ValueSets from this project are exported to the [CH-EPR-TERM](http://fhir.ch/ig/ch-epr-term/index.html) FHIR implementation guide. This implementation guide is dependent on CH-EPR-TERM.

#### Exchange formats (Annex 4)

In Annex 4 exchange formats will be listed. There are currently three CDA specifications exchange formats defined in the draft of Annex 4. Those three CDA specifications are based on CDA-CH V2. With FHIR, exchange formats in documents can also be defined. CH-Core defines the equivalent concepts to CDA-CH V2 so that in the future derived exchange formats can be represented and mapped between FHIR and CDA:
- [CH Core Document Profile EPR](StructureDefinition-ch-core-document.html) is the base definition for a document in the context of the electronic patient record (EPR) and can correspond to a [CDA-CH derived document](https://art-decor.org/art-decor/decor-project--hl7chcda-).
- [CH Core Composition Profile EPR](StructureDefinition-ch-core-composition-epr.html) is the base definition for a composition and can corresponds to the [CDA-CH v2.1 - structuredBody](https://art-decor.org/art-decor/decor-templates--hl7chcda-?section=templates&id=2.16.756.5.30.1.1.10.1.9&effectiveDate=2019-10-17T15:22:41&language=en-US) template.

#### XDS (Annex 5, Amendment 1)

Annex 5 has requirements on IHE XDS. The [CH Core DocumentReference Profile EPR](StructureDefinition-ch-core-documentreference-epr.html) defines a mapping to the XDS Metadata used in the EPR.
Please note that the IHE MHD profile which includes the DocumentReference resource is not yet specified in the Annexes.

#### CH:ATC Profile (Annex 5, Amendment 2.2)

CH:ATC profile defines the audit trail consumption requirements a community has to provide for a patient’s audit trail. CH:ATC is also a FHIR implementation guide, based on FHIR STU3. There is no relation to this implementation guide currently.

### Scope

This document presents Swiss use concepts defined via FHIR processable artefacts:

* [Profiles](profiles.html) - are useful constraints of core FHIR resources and datatype for Swiss use
* [Extensions](extensions.html) - are FHIR extensions that are added for local use, covering needed Swiss concepts
* [Terminologies](terminology.html) - are defined or referenced code systems and value sets for Swiss context

### Governance

The CH-Core implementation guide is managed by HL7 Switzerland in the [HL7 Switzerland FHIR technical committee](https://www.hl7.ch/technisches-komitee/), see also [source](https://github.com/hl7ch/ch-core).
### Collaboration
This guide is the product of collaborative work undertaken with participants from:

* [Swiss FHIR Implementers Community](https://www.fhir.ch)
* [HL7 Switzerland](https://www.hl7.ch)
* [eHealth Suisse](https://www.e-health-suisse.ch/startseite.html)