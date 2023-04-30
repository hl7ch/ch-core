Invariant: ch-pat-1
Description: "At least one HumanName with given and family name must be provided."
Severity: #error
Expression: "name.where(family.exists() and given.exists()).count()>0 or name.empty()"