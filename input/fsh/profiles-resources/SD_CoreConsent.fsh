Profile: CHCoreConsent
Parent: http://hl7.org/fhir/5.0/StructureDefinition/profile-Consent
Id: CHCoreConsent
Title: "CH Core Consent"
Description: "Base definition of the Consent resource for use in Swiss specific use cases. Uses the cross-version profile from hl7.fhir.uv.xver-r5.r4 to expose R5 Consent fields (grantor, manager, controller, decision, ...) as extensions on R4 Consent."

* category 1..
* category from ConsentCategoriesVS (required)
* category ^short = "Initial classification of consent, used with provision.code to identify consent types"
* category ^definition = "Provides the initial classification of the consent. In combination with provision.code, it enables distinct identification of different consent types."

// R5 'subject' maps to R4 'patient' (renamed in R5)
* patient 1..1
* patient only Reference(Patient)
* patient ^short = "The patient to whom this consent applies to"

// R5 'grantor' via xver extension
* extension[grantor].valueReference only Reference(Patient or RelatedPerson or Organization)

// R5 'grantee' maps to R4 'performer'. R4 performer cannot reference HealthcareService directly;
// use the standard alternate-reference extension on performer for HealthcareService grantees.
* performer only Reference(Organization)
* performer ^short = "Grantee (Organization). For HealthcareService grantees, use the alternate-reference extension on performer."

// R5 'manager' via xver extension
* extension[manager].valueReference only Reference(HealthcareService)

// R5 'controller' via xver extension
* extension[controller].valueReference only Reference(Organization)

* provision 1..
* provision ^short = "Exeptions/Constraints to the base decision"

* provision.code 1..
* provision.code from ConsentProvisionCodesVS (required)
* provision.code ^short = "Additional classification of consent, used with category to identify consent types"
* provision.code ^definition = "Provides additional classification of the consent. In combination with category, it enables distinct identification of different consent types."
