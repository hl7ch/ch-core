Invariant: ch-addr-1
Description: "ISO Country Alpha-2 or ISO Country Alpha-3 code"
Severity: #error
Expression: "((value.code.length()=2) and value.code.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-2')) or ((value.code.length() = 3) and value.code.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-3'))"