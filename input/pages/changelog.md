All significant changes to this FHIR implementation guide will be documented on this page.   

### Current Ballot (2023)

#### Changed / Updated
* [#195](https://github.com/hl7ch/ch-core/issues/195): [CH Core Address](StructureDefinition-ch-core-address.html) - Add extension iso21090-ADXP-streetName to CH Core Address line
* [#198](https://github.com/hl7ch/ch-core/issues/198): [CH Core Composition EPR](StructureDefinition-ch-core-composition-epr-definitions.html#diff_Composition.extension:informationRecipient): Relax information recipient cardinality to zero
* [200](https://github.com/hl7ch/ch-core/issues/200): Remove display values from patternCodeableConcepts or fixedValues, remove minimum cardinality = 1 for display values, using official display values in examples (valid with http://tx.fhir.org/r4).


{% include_relative changes-stu3.md %}


{% include_relative changes-stu2.md %}

### STU 1 (2020-04-21)
- [Initial version, summary of changes](https://github.com/hl7ch/ch-core/issues?q=is%3Aissue+milestone%3A%22v1.0.0+STU1+Final+Publication%22+is%3Aclosed)
