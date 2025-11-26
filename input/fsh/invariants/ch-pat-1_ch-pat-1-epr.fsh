Invariant: ch-pat-1
Description: "If one ore more human names are provided, at least one human name should have a family and a given name."
Severity: #warning
Expression: "name.where(family.exists() and given.exists()).count()>0 or name.empty()"

Invariant: ch-pat-1-epr
Description: "At least one human name shall have a family name."
Severity: #error
Expression: "name.where(family.exists()).count()>0"
