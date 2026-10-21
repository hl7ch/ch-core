Invariant: ch-addr-1
Description: "ISO Country Alpha-2 or ISO Country Alpha-3 code"
Severity: #warning
Expression: "((value.code.length()=2) and value.code.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-2')) or ((value.code.length() = 3) and value.code.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-3'))"


Invariant: ch-addr-2
Description: "For a Swiss address, a canton abbreviation from the value set 'eCH-0007 Canton Abbreviation' must be used."
Severity: #error
Expression: "country.extension.where(url = 'http://hl7.org/fhir/StructureDefinition/iso21090-codedString' and (value.code = 'CH' or value.code = 'CHE')).empty() or 
            state.empty() or state.memberOf('http://fhir.ch/ig/ch-core/ValueSet/ech-7-cantonabbreviation')"
