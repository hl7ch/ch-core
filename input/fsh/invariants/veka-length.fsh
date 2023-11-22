Invariant: veka-length
Description: "Insurance card number must be exactly 20 characters long"
Severity: #warning
Expression: "value.matches('^[0-9]{20}$')"