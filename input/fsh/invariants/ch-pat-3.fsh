Invariant: ch-pat-3
Description: "ISO Country Alpha-2 or ISO Country Alpha-3 code"
Severity: #warning
Expression: "((extension.where(url='code').value.coding.code.length()=2) and extension.where(url='code').value.coding.code.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-2')) or ((extension.where(url='code').value.coding.code.length() = 3) and extension.where(url='code').value.coding.code.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-3'))"
// no error with Patient-UpiEprTestKrcmarevic.json Expression: "((extension.where(url='code').value.coding.code.length()=2) and extension.where(url='code').value.coding.code.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-2')) or ((extension.where(url='code').value.coding.code.length() = 3) and extension.where(url='code').value.coding.code.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-3'))"
// no error with Patient-UpiEprTestKrcmarevic.json Expression: "((extension.where(url='code').value.coding.code.length()=2) and extension.where(url='code').value.coding.code.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-2'))"
// no error with Patient-UpiEprTestKrcmarevic.json Expression: Expression: "(extension.where(url='code').value.coding.code.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-2'))"
// fails: Expression: "(extension.where(url='code').value.coding.code.memberOf('http://fhir.ch/ig/ch-term/ValueSet/bfs-country-codes'))"