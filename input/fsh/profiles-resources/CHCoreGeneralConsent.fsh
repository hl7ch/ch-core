Profile:        CHCoreGeneralConsent
Parent:         CHCoreConsent
Id:             CHCoreGeneralConsent
Title:          "CH Core General Consent" 
Description:    "Specialization of CHCoreConsent for the Unimedsuisse Generalkonsent (GC)."

// --- status: only active | inactive in the GC context ---
// Semantics:
//   active   = GC granted or rejected (a decision has been recorded)
//   inactive = GC withdrawn or canceled
//   "unknown" corresponds to the absence of a Consent resource
* status from CHCoreGeneralConsentStateVS (required)
* status ^short = "active | inactive (GC-specific subset of ConsentState)"
* status ^definition = "active = GC granted/rejected; inactive = GC withdrawn/canceled. The absence of a Consent resource corresponds to the state 'unknown' (no GC recorded yet)."

// --- date: mandatory, cardinality 1..1 ---
* dateTime 1..1
* dateTime ^short = "Date the consent entry was made (mandatory)"
* dateTime ^definition = "Represents the date when the entry to the system was made. Mandatory in the GC context."

* scope = $consentscope#research

// --- policyBasis: fixed URL to Unimedsuisse Generalkonsent ---
// Mapped onto R4 via Consent.policy.uri (functional equivalent of R5 policyBasis.url)
* policy 1..1
* policy ^short = "Backing policy (Unimedsuisse Generalkonsent)"
* policy.uri 1..1
* policy.uri = "https://www.unimedsuisse.ch/de/projekte/generalkonsent"

// --- grantee: only Organization, HealthcareService alternate-reference forbidden ---
* performer ^short = "Grantee (Organization). HealthcareService grantees are NOT allowed in this profile."
* performer.extension contains
    http://hl7.org/fhir/StructureDefinition/alternate-reference named alternateRef 0..0
* performer.extension[alternateRef] ^short = "Forbidden: HealthcareService as grantee is excluded in the CH Core General Consent."

// --- provision.purpose: must be HRESCH (healthcare research, CH) ---
* provision.purpose 1..
* provision.purpose ^short = "Context of activities covered by this provision (must be HRESCH)"
* provision.purpose ^definition = "Purpose of use is fixed to HRESCH in the Unimedsuisse Generalkonsent."
* provision.purpose.system 1..1
* provision.purpose.system = "http://terminology.hl7.org/CodeSystem/v3-ActReason"
* provision.purpose.code 1..1
* provision.purpose.code = #HRESCH