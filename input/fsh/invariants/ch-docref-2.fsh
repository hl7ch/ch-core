Invariant: ch-docref-2
Description: "The codes from the following ValueSet shall be used if one of them can be applied (aka 'extensible'): http://fhir.ch/ig/ch-term/ValueSet/DocumentEntry.mimeType"
// codes in this element SHALL be from the specified value set if any of the codes within the value set can apply to the concept being communicated.
Severity: #error
Expression: "memberOf('http://fhir.ch/ig/ch-term/ValueSet/DocumentEntry.mimeType')"