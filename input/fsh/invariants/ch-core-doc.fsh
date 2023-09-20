Invariant: ch-core-doc-1
Description: "The fullUrl must be an absolute URL server address or an UUID"
Severity: #error
Expression: "startsWith('http') or startsWith('urn:uuid:') = true"


Invariant: ch-core-doc-2
Description: "The identifier must be an UUID"
Severity: #error
Expression: "startsWith('urn:uuid:')"
