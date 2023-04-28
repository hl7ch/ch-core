Invariant: ahvn13-length
Description: "AHVN13 / NAVS13 must be exactly 13 characters long"
Severity: #error
Expression: "value.matches('^[0-9]{13}$')"