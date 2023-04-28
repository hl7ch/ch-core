Invariant: ch-core-doc-1
Description: "The fullUrl must be an absolute URL server address or an URI for UUID/OID"
Severity: #error
Expression: "startsWith('http') or startsWith('urn:uuid:') = true"