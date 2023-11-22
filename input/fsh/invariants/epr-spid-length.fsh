Invariant: epr-spid-length
Description: "EPR-SPID must be exactly 18 characters long"
Severity: #warning
Expression: "value.matches('^[0-9]{18}$')"