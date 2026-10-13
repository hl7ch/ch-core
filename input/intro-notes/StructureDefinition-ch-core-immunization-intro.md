### Vaccine Code Bindings

#### Default
The [CH VACD All Swiss Vaccine Codes](https://fhir.ch/ig/ch-term/ValueSet/ch-vacd-vaccines-vs) is the default binding for Immunization.vaccineCode.
The ValueSet contains the codes for from the CodeSystems [CH VACD Swissmedic Authorized Vaccines](http://fhir.ch/ig/ch-vacd/CodeSystem/ch-vacd-swissmedic-cs) and [CH VACD Old Swiss Vaccines (Swiss Legacy)](http://fhir.ch/ig/ch-vacd/CodeSystem/ch-vacd-myvaccines-cs).

#### Additional
In some situations a vaccination has to be documented, but no suitable code is available in the default ValueSet (e.g. the product has no Swissmedic authorization, or it is used off-label), while a code does exist in another ValueSet. In these cases, a code from one of the additional ValueSets can be used.

The following ValueSets are defined as additional bindings:

* **SNOMED-CT**:<br/>
The ValueSet [CH VACD Snomed CT for VaccineCode](https://fhir.ch/ig/ch-term/ValueSet-ch-vacd-vaccines-snomedct-vs.html) contains the vaccine-related codes from the CodeSystem [SNOMED-CT](http://www.snomed.org/).

* **NUVA**:<br/>
The ValueSet [NUVA](https://smt.esante.gouv.fr/fhir/ValueSet/vs-nuva-all) contains the codes from the CodeSystem [Terminologie - NUVA](https://smt.esante.gouv.fr/terminologie-nuva), which is maintained by the [International Vaccine Codes Initiative (IVC)](https://ivci.org). The initiative aims to provide a single, globally unique code system for identifying vaccines, with mappings to the various existing code systems.


Some products authorized by Swissmedic are relevant to immunization but are not vaccines. They are covered by the following two ValueSets:

* **Immunoglobulin**:<br/>
Immunoglobulins (also known as antibodies or gamma globulins) are specialized Y-shaped proteins produced by B cells and plasma cells. They identify, neutralize and tag foreign invaders such as bacteria and viruses.
The ValueSet [CH VACD Swissmedic Authorized Immunoglobulin Codes](https://fhir.ch/ig/ch-term/ValueSet-ch-vacd-swissmedic-immunoglobulin-vs.html) contains the immunoglobulin codes from the CodeSystem [CH VACD Swissmedic Authorized Immunoglobulin Codes](https://fhir.ch/ig/ch-term/CodeSystem-ch-vacd-swissmedic-immunoglobulin-cs.html).

* **Immunsera**:<br/>
Immune sera are blood serum preparations containing specific antibodies. They are used to provide rapid, passive immunity or to neutralize toxins (e.g. snake antivenom).
The ValueSet [CH VACD Swissmedic Authorized Immunsera Codes](https://fhir.ch/ig/ch-term/ValueSet-ch-vacd-swissmedic-immunesera-vs.html) contains the immune serum codes from the CodeSystem [CH VACD Swissmedic Authorized Immunsera Codes](https://fhir.ch/ig/ch-term/CodeSystem-ch-vacd-swissmedic-immunesera-cs.html).


#### Mappings

The [CH Term IG](https://fhir.ch/ig/ch-term/conceptmaps.html) defines several mappings as ConceptMaps. These allow the [$tranlate](https://hl7.org/fhir/conceptmap-operation-translate.html) operation to be used to translate a code from one CodeSystem into the corresponding code of another CodeSystem.
A [graphical overview over the mappings](https://fhir.ch/ig/ch-vacd/terminology.html#conceptmaps) is available in the CH VACD IG.
