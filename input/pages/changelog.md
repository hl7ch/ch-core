All significant changes to this FHIR implementation guide will be documented on this page.   

### STU3 (2022-xx-xx)

#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH Core:
* ...

See also open issues on [GitHub](https://github.com/hl7ch/ch-core/issues).

#### Added

#### Changed / Updated
* [#150](https://github.com/hl7ch/ch-core/issues/150): Expansion of the context of the extension [EPR Time](StructureDefinition-ch-ext-epr-time.html)
* [#160](https://github.com/hl7ch/ch-core/issues/160): Slicing on repeating element
* [#154](https://github.com/hl7ch/ch-core/issues/154): Improve description of example instances, see [Artifacts](artifacts.html#example-example-instances)
* [#162](https://github.com/hl7ch/ch-core/issues/162): Update narrative text in examples
* [#176](https://github.com/hl7ch/ch-core/issues/162): Clean up differentials
* [#175](https://github.com/hl7ch/ch-core/issues/175): Rename the profile [CH Core EPR-Consent](StructureDefinition-ch-core-epr-consent.html)
* [#173](https://github.com/hl7ch/ch-core/issues/173): Define aggregation mode (contained, referenced) for [Coverage.payor](StructureDefinition-ch-core-coverage.html)
* [#170](https://github.com/hl7ch/ch-core/issues/170): Check the slicing and update suppressed messages
* [#153](https://github.com/hl7ch/ch-core/issues/153): Rephrasing of the sentence for the exchange formats (current and general validity)
* [#158](https://github.com/hl7ch/ch-core/issues/158): Update to FHIR Release #4B (v4.3.0)

#### Fixed
* [#163](https://github.com/hl7ch/ch-core/issues/163): Typo
* [#159](https://github.com/hl7ch/ch-core/issues/159): Add element 'experimental' (false) to CS/VS
* [#161](https://github.com/hl7ch/ch-core/issues/161): Use 'patternCodeableConcept' instead of 'fixedCodeableConcept' for [Consent.policyRule](StructureDefinition-ch-core-epr-consent.html)
* [#167](https://github.com/hl7ch/ch-core/issues/167): Fix URIs in ConceptMaps ([MaritalStatus eCH-011 to FHIR mapping](ConceptMap-maritalstatus-ech11-to-fhir.html), [Sex eCH-011 to FHIR mapping](ConceptMap-sex-ech11-to-fhir.html))
* [#152](https://github.com/hl7ch/ch-core/issues/152): Changes status form 'draft' to 'active'

#### Issues resolved without amendment (in IG)
* [#39](https://github.com/hl7ch/ch-core/issues/39): Consent code for ch-epr has been added in [hl7.terminology](https://terminology.hl7.org/4.0.0/CodeSystem-consentpolicycodes.html) published 2022-09-14	(version 4.0.0)
* [#174](https://github.com/hl7ch/ch-core/issues/174): Verification/confirmation that the eCH-011 values for gender are still up-to-date
* [#157](https://github.com/hl7ch/ch-core/issues/157): Fixed dead link on the [HL7.ch FHIR IG Balloting](https://github.com/hl7ch/ch-core/wiki/HL7.ch-FHIR-IG-Balloting) page
* [#156](https://github.com/hl7ch/ch-core/issues/156): Change default branch from 'master' to 'main' to postponed to a later publication due to dependence on IG Publisher


### STU3 Ballot (2022-06-29)

#### Added
* [#123](https://github.com/hl7ch/ch-core/issues/123) ([#137](https://github.com/hl7ch/ch-core/issues/137), [#140](https://github.com/hl7ch/ch-core/issues/140)): GLN and EPR-SPID checks
* [#135](https://github.com/hl7ch/ch-core/issues/135): Add an Identifier data type for AHVN13 with check for correctness
* [#131](https://github.com/hl7ch/ch-core/issues/131): Update change log/STU note box according to the latest requirements
  
#### Changed / Updated
* [#133](https://github.com/hl7ch/ch-core/issues/133): Fix example OIDs
* [#129](https://github.com/hl7ch/ch-core/issues/129): Wrong slicing for Composition.author.extension:ch-ext-epr-time profiles/structures
* [#144](https://github.com/hl7ch/ch-core/issues/144): Improve slicing that info entry[x] warnings are not shown (CH Core Document, CH Core Document EPR)
* [#122](https://github.com/hl7ch/ch-core/issues/122): No fixed value for Status of Composition EPR
* [#121](https://github.com/hl7ch/ch-core/issues/121): Relax Custodian cardinality in CH Core Composition EPR
* [#118](https://github.com/hl7ch/ch-core/issues/118), [#127](https://github.com/hl7ch/ch-core/issues/127), [#142](https://github.com/hl7ch/ch-core/issues/142): Typos
* [#132](https://github.com/hl7ch/ch-core/issues/132): Fix link of concept map
* [#124](https://github.com/hl7ch/ch-core/issues/124): Fix description for a least one given/family HumanName if provided
* [#145](https://github.com/hl7ch/ch-core/issues/145): Update title of the profiles

### STU2 (2021-04-24)
{% include_relative changes-stu2.md %}

### STU1 (2020-04-21)
- [Initial version, summary of changes](https://github.com/hl7ch/ch-core/issues?q=is%3Aissue+milestone%3A%22v1.0.0+STU1+Final+Publication%22+is%3Aclosed)
