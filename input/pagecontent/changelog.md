All significant changes to this FHIR implementation guide will be documented on this page.   

### Current Ballot (2023)

#### Added
* [#196](https://github.com/hl7ch/ch-core/issues/196): Data type profile [VEKAIdentifier](StructureDefinition-ch-core-veka-identifier.html) for [Coverage.identifier](StructureDefinition-ch-core-coverage.html) and new also for [Patient.identifier](StructureDefinition-ch-core-patient.html)
* [#204](https://github.com/hl7ch/ch-core/issues/204): Introduce data type profiles for ContactPoints (email, phone, internet) according eCH-0046 (including extensions and terminology) and add them to the telecom element of Patient, Practitioner, Organization, Location

#### Changed / Updated
* [#206](https://github.com/hl7ch/ch-core/issues/206): Improve acronyms definition
* [#191](https://github.com/hl7ch/ch-core/issues/191): [CH Core Patient](StructureDefinition-ch-core-patient.html) - Relax max cardinality to * for EPR-SPID and AHVN13
* [#195](https://github.com/hl7ch/ch-core/issues/195): [CH Core Address](StructureDefinition-ch-core-address.html) - Add extension iso21090-ADXP-streetName to CH Core Address line
* [#198](https://github.com/hl7ch/ch-core/issues/198): [CH Core Composition EPR](StructureDefinition-ch-core-composition-epr-definitions.html#diff_Composition.extension:informationRecipient) - Relax information recipient cardinality to zero
* [#194](https://github.com/hl7ch/ch-core/issues/194): [CH Core Composition EPR](StructureDefinition-ch-core-composition-epr.html) - Relax attester:legalAuthenticator.time cardinality to zero
* [#200](https://github.com/hl7ch/ch-core/issues/200): Remove display values from patternCodeableConcepts or fixedValues, remove minimum cardinality = 1 for display values, using official display values in examples (valid with http://tx.fhir.org/r4).
* [#193](https://github.com/hl7ch/ch-core/issues/193): Remove CDA elements (mapping, ch-ext-epr-sectionid, ch-ext-epr-versionnumber, adapt descriptions) 
* [#31](https://github.com/hl7ch/ch-core/issues/31): Improve profiling for identifiers to avoid duplicated elements in the snapshot table
* [#205](https://github.com/hl7ch/ch-core/issues/205): Concretization of the mapping of Patient.telecom for versions as of HL7 v2.7
* [#181](https://github.com/hl7ch/ch-core/issues/181): Updated used eCH standards (incl. versions) to [introduction (home)](index.html#introduction) (standards themselves currently have no updates)
* [#215](https://github.com/hl7ch/ch-core/issues/215): Relax binding strength to value sets from 'required' to 'extensible'




### STU 3 (2022-12-20)

#### Added
* [#172](https://github.com/hl7ch/ch-core/issues/172): Generic CH Core extension [Author of the content](StructureDefinition-ch-ext-author.html) (fusion of the extensions from CH EMED and CH VACD)
* [#158](https://github.com/hl7ch/ch-core/issues/158), [#189](https://github.com/hl7ch/ch-core/issues/189): Include new IG fragments (IP Statements, Cross Version Analysis, Dependency Table, Globals Table); CH Core can be used for both R4 and R4B, packages are available for both versions

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


### STU 3 Ballot (2022-06-29)

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



### STU 2 (2021-04-24)

- [#57](https://github.com/hl7ch/ch-core/issues/57) cardinality 0..1 for ch-ext-epr-versionNumber in Composition
- [#58](https://github.com/hl7ch/ch-core/issues/58) IMP instead of INP in encounter
- [#59](https://github.com/hl7ch/ch-core/issues/59) adapt extension EPR Information Recipient for ch-core
- [#60](https://github.com/hl7ch/ch-core/issues/60) relax card. in CH Core Organization
- [#61](https://github.com/hl7ch/ch-core/issues/61) slice setup incorrect on address lines
- [#63](https://github.com/hl7ch/ch-core/issues/63) PractitionerRole example HPWengerRole has an invalid speciality coding
- [#65](https://github.com/hl7ch/ch-core/issues/65) CH-Core dependsOn CH-EPR-TERM current
- [#66](https://github.com/hl7ch/ch-core/issues/66) Encounter: specify a type for the visit number Fallnummer
- [#67](https://github.com/hl7ch/ch-core/issues/67) Add CC license to ch-core implementation guide
- [#70](https://github.com/hl7ch/ch-core/issues/70) fix resource narrative status if narrative text has been defined
- [#77](https://github.com/hl7ch/ch-core/issues/77) ch-core-document: add check that fullUrl exists and is an absolute url
- [#85](https://github.com/hl7ch/ch-core/issues/85) EPRDataEnterer: valueReference only to Practitioner (not Person)
- [#90](https://github.com/hl7ch/ch-core/issues/90) description callName in eCH-011 Types
- [#91](https://github.com/hl7ch/ch-core/issues/91) dataenterer as PractitionerRole
- [#92](https://github.com/hl7ch/ch-core/issues/92) PDF requirements for CH Core Composition  
- [#93](https://github.com/hl7ch/ch-core/issues/93) EPR Data Enterer map to PractitionerRole instead of Practitioner
- [#94](https://github.com/hl7ch/ch-core/issues/94) Precise description for salutation, title in HumanName
- [#95](https://github.com/hl7ch/ch-core/issues/95) EPR Document fix Bundler.identifier to uuid
- [#96](https://github.com/hl7ch/ch-core/issues/96), [#97](https://github.com/hl7ch/ch-core/issues/97) Composition.identifier instead of setId Extension 
- [#98](https://github.com/hl7ch/ch-core/issues/98) renamed Composition Patient Profile EPR to Patient Profile EPR
- [#100](https://github.com/hl7ch/ch-core/issues/100), [#101](https://github.com/hl7ch/ch-core/issues/101), [#102](https://github.com/hl7ch/ch-core/issues/102), [#103](https://github.com/hl7ch/ch-core/issues/103) Reference to CH Core profiles
- [#104](https://github.com/hl7ch/ch-core/issues/104) CH Core Consent Profile naming





### STU 1 (2020-04-21)
- [Initial version, summary of changes](https://github.com/hl7ch/ch-core/issues?q=is%3Aissue+milestone%3A%22v1.0.0+STU1+Final+Publication%22+is%3Aclosed)
