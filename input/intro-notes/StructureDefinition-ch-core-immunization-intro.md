### Vaccine Code Bindings

#### Default
The [CH VACD All Swiss Vaccine Codes ValueSet](http://fhir.ch/ig/ch-vacd/ValueSet/ch-vacd-vaccines-vs) is the default binding for Immunization.vaccineCode. It includes the code [Vaccine product (medicinal product)](http://snomed.info/id/787859002) and two other ValueSets.

The first ValueSet, [CH VACD Swissmedic Authorized Vaccine Codes](http://fhir.ch/ig/ch-vacd/ValueSet/ch-vacd-swissmedic-vaccines-vs), contains the codes from the CodeSystem [CH VACD Swissmedic Authorized Vaccines](http://fhir.ch/ig/ch-vacd/CodeSystem/ch-vacd-swissmedic-cs).

The second ValueSet, [CH VACD Old Swiss Vaccine Codes](http://fhir.ch/ig/ch-vacd/ValueSet/ch-vacd-oldswiss-vaccines-vs), contains the codes from the CodeSystem [CH VACD Old Swiss Vaccines (Swiss Legacy)](http://fhir.ch/ig/ch-vacd/CodeSystem/ch-vacd-myvaccines-cs).

The additional code [Vaccine product (medicinal product)](http://snomed.info/id/787859002) is included so that a custom vaccination can be defined: use this code as the vaccineCode and specify the diseases the vaccination targets in protocolApplied.targetDisease.


#### Additional

As additional binding there are further ValueSets defined:

* **SNOMED-CT**:<br/>
The ValueSet [CH VACD Snomed CT for VaccineCode](https://fhir.ch/ig/ch-term/ValueSet-ch-vacd-vaccines-snomedct-vs.html) which contains the codes in context of vaccines from the CodeSystem [SNOMED-CT](http://www.snomed.org/).

* **Immunoglobulin**:<br/>
Immunoglobulins are no vaccinations but could protect patients for a short term of time.
The ValueSet [CH VACD Swissmedic Authorized Immunoglobulin Codes](https://fhir.ch/ig/ch-term/ValueSet-ch-vacd-swissmedic-immunoglobulin-vs.html) which contains immunoglobulin codes from the CodeSystem [CH VACD Swissmedic Authorized Immunoglobulin Codes](https://fhir.ch/ig/ch-term/CodeSystem-ch-vacd-swissmedic-immunoglobulin-cs.html).

* **Immunsera**:<br/>
Immune sera are purified antibodies derived from the blood serum of immunized humans or animals, which are used for passive immunization (immediate protection).
The ValueSet [CH VACD Swissmedic Authorized Immunsera Codes](https://fhir.ch/ig/ch-term/ValueSet-ch-vacd-swissmedic-immunesera-vs.html) which contains immunoglobulin codes from the CodeSystem [CH VACD Swissmedic Authorized Immunsera Codes](https://fhir.ch/ig/ch-term/CodeSystem-ch-vacd-swissmedic-immunesera-cs.html).

* **NUVA**:<br/>
The ValueSet [NUVA](https://smt.esante.gouv.fr/fhir/ValueSet/vs-nuva-all) which contains the codes from the CodeSystem [Terminologie - NUVA](https://smt.esante.gouv.fr/terminologie-nuva) defined by the [International Vaccine Codes Initiative (IVC)](https://ivci.org).

