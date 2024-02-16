Invariant: ch-meddis-1
Description: "If no substitution was performed, no type is expected."
Severity: #warning
Expression: "wasSubstituted = true or (wasSubstituted = false and type.exists().not())"
