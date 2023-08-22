Invariant: ch-pat-1
Description: "At least one HumanName with given name, family name or text representation of the full name must be provided."
Severity: #error
Expression: "name.where(family.exists() or given.exists() or text.exists()).count()>0 or name.empty()"
