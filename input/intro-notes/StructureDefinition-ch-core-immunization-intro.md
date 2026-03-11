### Vaccine Code Bindings

#### Default
The [CH VACD All Swiss Vaccine Codes](https://fhir.ch/ig/ch-term/ValueSet/ch-vacd-vaccines-vs) is the default binding for Immunization.vaccineCode.
The ValueSet contains the codes for from the CodeSystems [CH VACD Swissmedic Authorized Vaccines](http://fhir.ch/ig/ch-vacd/CodeSystem/ch-vacd-swissmedic-cs) and [CH VACD Old Swiss Vaccines (Swiss Legacy)](http://fhir.ch/ig/ch-vacd/CodeSystem/ch-vacd-myvaccines-cs).

#### Additional

As additional binding there are further ValueSets defined:

* **SNOMED-CT**:<br/>
The ValueSet [CH VACD Snomed CT for VaccineCode](http://fhir.ch/ig/ch-vacd/ValueSet/ch-vacd-vaccines-snomedct-vs) which contains the codes in context of vaccines from the CodeSystem [SNOMED-CT](http://www.snomed.org/).

* **Immunoglobulin**:<br/>
Immunoglobulins are no vaccinations but could protect patients for a short term time.
The ValueSet [CH VACD Swissmedic Authorized Immunoglobulin Codes](http://fhir.ch/ig/ch-vacd/ValueSet/ch-vacd-swissmedic-immunoglobulin-vs) which contains immunoglobulin codes from the CodeSystem [CH VACD Swissmedic Authorized Immunoglobulin Codes](http://fhir.ch/ig/ch-vacd/CodeSystem/ch-vacd-swissmedic-immunoglobulin-cs).

* **NUVA**:<br/>
The ValueSet [NUVA](https://smt.esante.gouv.fr/fhir/ValueSet/vs-nuva-all) which contains the codes from the CodeSystem [Terminologie - NUVA](https://smt.esante.gouv.fr/terminologie-nuva) defined by the [International Vaccine Codes Initiative (IVC)](https://ivci.org).
