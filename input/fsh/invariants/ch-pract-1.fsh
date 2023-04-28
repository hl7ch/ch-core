Invariant: ch-pract-1
Description: "If a HumanName is provided, at least one HumanName must have a given and family name."
Severity: #error
Expression: "name.where(family.exists() and given.exists()).count()>0 or name.empty()"