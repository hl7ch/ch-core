Invariant: ch-pract-3
Description: "only one active gln is allowed"
Severity: #warning
Expression: "identifier.where(system='urn:oid:2.51.1.3' and (active.exists().not() or active)).count()<=1"