### Vaccine Code Bindings

#### Default
The [CH VACD All Swiss Vaccine Codes](https://fhir.ch/ig/ch-term/ValueSet/ch-vacd-vaccines-vs) is the default binding for Immunization.vaccineCode.
The ValueSet contains the codes for from the CodeSystems [CH VACD Swissmedic Authorized Vaccines](http://fhir.ch/ig/ch-vacd/CodeSystem/ch-vacd-swissmedic-cs) and [CH VACD Old Swiss Vaccines (Swiss Legacy)](http://fhir.ch/ig/ch-vacd/CodeSystem/ch-vacd-myvaccines-cs).

#### Additional

Sometimes there are use cases or situations a vaccination has to be documented but there is no code available in the default valueset (i.e. there is no authorization for a product from Swissmedic, off label use) but there is an code in an alternative valueset available. So an code of an additional valueset can be used.

As additional binding there are further ValueSets defined:

* **SNOMED-CT**:<br/>
The ValueSet [CH VACD Snomed CT for VaccineCode](https://fhir.ch/ig/ch-term/ValueSet-ch-vacd-vaccines-snomedct-vs.html) which contains the codes in context of vaccines from the CodeSystem [SNOMED-CT](http://www.snomed.org/).

* **NUVA**:<br/>
The ValueSet [NUVA](https://smt.esante.gouv.fr/fhir/ValueSet/vs-nuva-all) which contains the codes from the CodeSystem [Terminologie - NUVA](https://smt.esante.gouv.fr/terminologie-nuva) defined by the [International Vaccine Codes Initiative (IVC)](https://ivci.org). The goal of the initiative is to have a golbal unique valueset to identifiy vaccinations and having mappings to the different existing codesystems.


There are some specialities with authorization of Swissmedic in context of immunization. See the description of the two ValueSets below:

* **Immunoglobulin**:<br/>
Immunoglobulins (also known as antibodies or gamma globulins) which are specialized Y-shaped proteins produced by B cells and plasma cells that identify, neutralize, and tag foreign invaders like bacteria and viruses.
The ValueSet [CH VACD Swissmedic Authorized Immunoglobulin Codes](https://fhir.ch/ig/ch-term/ValueSet-ch-vacd-swissmedic-immunoglobulin-vs.html) which contains immunoglobulin codes from the CodeSystem [CH VACD Swissmedic Authorized Immunoglobulin Codes](https://fhir.ch/ig/ch-term/CodeSystem-ch-vacd-swissmedic-immunoglobulin-cs.html).

* **Immunsera**:<br/>
Immunsera are blood serum preparations containing specific antibodies used to provide rapid, passive immunity or neutralize toxins (i.e. Snake Venom Immunsera).
The ValueSet [CH VACD Swissmedic Authorized Immunsera Codes](https://fhir.ch/ig/ch-term/ValueSet-ch-vacd-swissmedic-immunesera-vs.html) which contains immunoglobulin codes from the CodeSystem [CH VACD Swissmedic Authorized Immunsera Codes](https://fhir.ch/ig/ch-term/CodeSystem-ch-vacd-swissmedic-immunesera-cs.html).


#### Mappings

There are different mappings defined in the [CH Term IG](https://fhir.ch/ig/ch-term/conceptmaps.html) as ConceptMaps which allows to use the [$tranlate](https://hl7.org/fhir/conceptmap-operation-translate.html) operation to map codes from one codesystem into an other code from an other codesystem.
A graphical overview over the mappings can be found [here](https://fhir.ch/ig/ch-vacd/terminology.html#conceptmaps).