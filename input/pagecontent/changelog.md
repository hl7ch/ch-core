All significant changes to this FHIR implementation guide will be documented on this page.   

### STU 6 (2025-12)

#### Added

#### Changed / Updated
* [#316](https://github.com/hl7ch/ch-core/issues/316): Guidance - Narrative data idref invalid
* [#358](https://github.com/hl7ch/ch-core/issues/358): Entry Resource Cross References: Graphic added

#### Fixed
* [#356](https://github.com/hl7ch/ch-core/issues/356): Invalid xhtml for UPI EPR Test Krcmarevic
* [#364](https://github.com/hl7ch/ch-core/issues/364): Add missing extension context for ch-ext-author
* [#363](https://github.com/hl7ch/ch-core/issues/363): Invalid extension context

#### Issues resolved without amendment (in IG)
* [#360](https://github.com/hl7ch/ch-core/issues/360): CH Core Composition EPR: VS binding (Composition.category)
* [#308](https://github.com/hl7ch/ch-core/issues/308), [#389](https://github.com/hl7ch/ch-core/issues/389): Keep the slicing discriminator $this for Organization.identifier to differentiate GLN's by type for insurance organizations

### STU 6 Ballot (2025-05-22)

#### Added
* [#330](https://github.com/hl7ch/ch-core/issues/330): Add new VS imunglobulines for vaccinecode to Immunization
* [#333](https://github.com/hl7ch/ch-core/issues/333): Refactor binding of vaccineCode VS (Adapt Immunization to IPS (2.0.0))
* [#292](https://github.com/hl7ch/ch-core/issues/292): CH Core Claim profile, example, mapping to 'Forum Datenaustausch'
* [#309](https://github.com/hl7ch/ch-core/issues/309): Add warning to ZSR
* [#344](https://github.com/hl7ch/ch-core/issues/344): New base profile CH Core RelatedPerson

#### Changed / Updated
* [#318](https://github.com/hl7ch/ch-core/issues/318): Relax minimum cardinality of Location.name from 1 to 0
* [#328](https://github.com/hl7ch/ch-core/issues/328): Deprecate CH Core DocumentReference EPR
* [#323](https://github.com/hl7ch/ch-core/issues/323): Clarification of the correct use of the Patient Citizenship Extension for Staatsangehörigkeit/Nationalité (eCH)

#### Fixed
* [#302](https://github.com/hl7ch/ch-core/issues/302): Allow all possible references for Encounter.subject and Encounter.participant.individual
* [#313](https://github.com/hl7ch/ch-core/issues/313): Add [expansion-parameter](https://build.fhir.org/codesystem-guide-parameter-code.html#:~:text=expansion%2Dparameter,as%20SNOMED%20CT) for the usage of SNOMED CT Swiss Extension 
* [#329](https://github.com/hl7ch/ch-core/issues/329): Fix (and update) terminology dependency to avoid version mismatch: hl7.terminology#6.1.0 -> hl7.terminology.r4#6.2.0
* [#339](https://github.com/hl7ch/ch-core/issues/339): Fix URL values which should resolve, add the other to the suppressed messages
* [#338](https://github.com/hl7ch/ch-core/issues/338): Add [pin-canonicals](http://build.fhir.org/ig/FHIR/fhir-tools-ig/branches/master/CodeSystem-ig-parameters.html#:~:text=for%20further%20information-,pin%2Dcanonicals,-Pin%20Canonical%20Versions) parameter to define the handling of unversioned canonical references
* [#346](https://github.com/hl7ch/ch-core/issues/346): Add new sub-extension 'key' to extension 'additional-binding'
* [#329](https://github.com/hl7ch/ch-core/issues/329): Fix (and update) terminology dependency to avoid version mismatch: hl7.terminology#6.1.0 -> hl7.terminology.r4#6.3.0
* [#315](https://github.com/hl7ch/ch-core/issues/315): CH Core Patient - citizenship binding extensible as required, reduce to warning
* [#337](https://github.com/hl7ch/ch-core/issues/337): Homepage CH ATC and MHD: adapt the text


### STU 5 (2024-12-17)

#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH Core:

* [#299](https://github.com/hl7ch/ch-core/issues/299):
   * Add guidance for the [RESTful use](https://hl7.org/fhir/r4/http.html), including the [SMART on FHIR mechanism](https://hl7.org/fhir/smart-app-launch/).
   * Compatibility with the [International Patient Access (IPA) specification](https://hl7.org/fhir/uv/ipa/).
   * Define formal descriptions of capabilities per actor (server/client), e.g. [IPA-Patient](https://hl7.org/fhir/uv/ipa/StructureDefinition-ipa-patient.html). See also [implementation obligations](https://build.fhir.org/obligations.html).
   * Clarification of the relationship to the EPR and the supported exchange mechanisms. 
* [CH Term #41](https://github.com/hl7ch/ch-term/issues/41): Revision (harmonization, usage SCT) of code system and value set ServiceRequest Category

See also open issues on [GitHub](https://github.com/hl7ch/ch-core/issues).

#### Changed / Updated
* [#303](https://github.com/hl7ch/ch-core/issues/303): Entry Resource Cross References, Usage/Description
* [#294](https://github.com/hl7ch/ch-core/issues/294): Differentiation of severity of constraint ch-pat-1 for CH Core Patient (warning) and CH Core Patient EPR (error)
* [#293](https://github.com/hl7ch/ch-core/issues/293): Clarification of the description for Patient.gender
* [#300](https://github.com/hl7ch/ch-core/issues/293): Add guidance for readable representation of EPR documents and update example

#### Fixed
* [#306](https://github.com/hl7ch/ch-core/issues/306): Replace deprecated discriminator (`pattern` -> `value`)

#### Issues resolved without amendment (in IG)
* [#289](https://github.com/hl7ch/ch-core/issues/289): Validation issue with display values; fixed with new version of IG publisher


### STU 5 Ballot (2024-05-16)

#### Added
* [#284](https://github.com/hl7ch/ch-core/issues/284): Check BER/UIDB identifiers
* [#119](https://github.com/hl7ch/ch-core/issues/119): Introduce base profiles (from exchange formats) in CH Core
   * CH Core MedicationStatement, CH Core MedicationAdministration, CH Core MedicationDispense, CH Core MedicationRequest, CH Core Medication
   * CH Core Condition
   * CH Core AllergyIntolerance
   * CH Core Immunization, CH Core ImmunizationRecommendation
   * CH Core ServiceRequest
* [#116](https://github.com/hl7ch/ch-core/issues/116): Add value set bindings to these elements: 
   * Coverage.type -> http://fhir.ch/ig/ch-term/ValueSet/mainguarantor (preferred)
   * Coverage.class.type -> http://fhir.ch/ig/ch-core/ValueSet/bfs-medstats-21-encountertype (extensible)

#### Changed / Updated
* [#272](https://github.com/hl7ch/ch-core/issues/272): Update the CHCoreDocumentReference EPR-XDS mapping
* [#269](https://github.com/hl7ch/ch-core/issues/269): max cardinality for only one gln for practitioner
* [CH Term #23](https://github.com/hl7ch/ch-epr-term/issues/23): Changes according to the renaming of CH EPR Term to CH Term
* [#274](https://github.com/hl7ch/ch-core/issues/274): Move terminology to CH Term
* [#287](https://github.com/hl7ch/ch-core/issues/287): Unified identifier slicing (Coverage, Practitioner)

#### Fixed
* [#277](https://github.com/hl7ch/ch-core/issues/277): update the expression of constraints ch-docref-1/2

### STU 4 (2023-12-28)
* [#270](https://github.com/hl7ch/ch-core/issues/270): 4.0.1 Technical correction for invalid package

#### Added
* [#233](https://github.com/hl7ch/ch-core/issues/233): CH Core Address: Include eCH-0007 cantonAbbreviation
* [#244](https://github.com/hl7ch/ch-core/issues/244): Guidance how to use SNOMED CT codes from the Swiss Extension
* [#254](https://github.com/hl7ch/ch-core/issues/254): Separate data type profile for identifiers (ZSR, UIDB, BER)
* [#262](https://github.com/hl7ch/ch-core/issues/262): New extension to reference entries in i.e. other documents

#### Changed / Updated
* [#242](https://github.com/hl7ch/ch-core/issues/242): Update the description for type of [CH Core Composition EPR](StructureDefinition-ch-core-composition-epr.html)
* [#238](https://github.com/hl7ch/ch-core/issues/238): Update context of [Extension EPR Time](StructureDefinition-ch-ext-epr-time.html) with MedicationRequest.requester
* [#246](https://github.com/hl7ch/ch-core/issues/246): Only allow an UUID as Bundle.identifier in the EPR context
* [#181](https://github.com/hl7ch/ch-core/issues/181): Change slicing from Patient.contact:nameOfFahter/nameOfMother to Patient.contact:nameOfParent according to eCH RFC 2019-9: _geschlechtsneutrale Bezeichnung für Namen der Eltern_ and remove chapter numbers in mapping of eCH
* [#252](https://github.com/hl7ch/ch-core/issues/252): Technical Correction of FHIRPath constraints with .value

#### Fixed
* [#235](https://github.com/hl7ch/ch-core/issues/235)/[#265](https://github.com/hl7ch/ch-core/issues/265): Fix GLN constraint/adapt Practitioner.identifier in example
* [#247](https://github.com/hl7ch/ch-core/issues/247): Fix constraint text and refactor expression (ch-core-doc-1)
* [#256](https://github.com/hl7ch/ch-core/issues/256): Fix references in example with UUID as fullUrl based on rules around matching relative references
* [#257](https://github.com/hl7ch/ch-core/issues/257): Warning instead of errors for GLN, EPR-SPID, AHVN13 and VEKA datatype profiles
* [#266](https://github.com/hl7ch/ch-core/issues/266): Fix error with ConceptMap

### STU 4 Ballot (2023-06-27)

#### Added
* [#196](https://github.com/hl7ch/ch-core/issues/196): Data type profile [VEKAIdentifier](StructureDefinition-ch-core-veka-identifier.html) for [Coverage.identifier](StructureDefinition-ch-core-coverage.html) and new also for [Patient.identifier](StructureDefinition-ch-core-patient.html)
* [#204](https://github.com/hl7ch/ch-core/issues/204): Introduce data type profiles for ContactPoints (email, phone, internet) according eCH-0046 (including extensions and terminology) and add them to the telecom element of Patient, Practitioner, Organization, Location
* [#224](https://github.com/hl7ch/ch-core/issues/224): Forum Datenaustausch tariff Naming System

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
* [#217](https://github.com/hl7ch/ch-core/issues/217): Add language tag to instances, to be able to validate the translation of codes
* [#215](https://github.com/hl7ch/ch-core/issues/215): Relax binding strength to value sets from 'required' to 'extensible'
* [#225](https://github.com/hl7ch/ch-core/issues/225): Fix FHIRPath expression
* [#226](https://github.com/hl7ch/ch-core/issues/226): Change license for ImplementationGuide / StructureDefinition to CC0 1.0 Universal (CC0 1.0)
* [#222](https://github.com/hl7ch/ch-core/issues/222): PractitionerRole EPR: code binding

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
* [#167](https://github.com/hl7ch/ch-core/issues/167): Fix URIs in ConceptMaps 'MaritalStatus eCH-011 to FHIR mapping', 'Sex eCH-011 to FHIR mapping'
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
- [#63](https://github.com/hl7ch/ch-core/issues/63) PractitionerRole example HPWengerRole has an invalid specialty coding
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
