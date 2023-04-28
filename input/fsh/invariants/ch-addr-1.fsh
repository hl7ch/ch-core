Invariant: ch-addr-1
Description: "ISO Country Alpha-2 or ISO Country Alpha-3 code"
Severity: #error
Expression: "((valueCoding.code.length()=2) and valueCoding.code.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-2')) or ((valueCoding.code.length() = 3) and valueCoding.code.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-3'))"