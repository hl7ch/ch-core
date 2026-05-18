Profile: CHCoreConsent
Parent: Consent
Id: CHCoreConsent
Title: "CH Core Consent"
Description: "Base definition of the Consent resource for use in Swiss specific use cases."

* category 1.. 
* category from ConsentCategoriesVS (required) 
* category ^short = "Initial classification of consent, used with provision.code to identify consent types"
* category ^definition = "Provides the initial classification of the consent. In combination with provision.code, it enables distinct identification of different consent types."

* subject 1..1 //analog CH EPR
* subject only Reference(Patient) //or CH Core Patient
* subject ^short = "The patient to whom this consent applies to"

* grantor only Reference(Patient or RelatedPerson)  //or CH Core Patient + RelatedPerson

* grantee only Reference(Organization or HealthcareService)  //or CH Core Organization

* manager only Reference(HealthcareService)

* controller only Reference(Organization) //or CH Core Organization

* provision 1.. 
* provision ^short = "Exeptions/Constraints to the base decision"

* provision.code 1.. 
* provision.code from ConsentProvisionCodesVS (required)
* provision.code ^short = "Additional classification of consent, used with category to identify consent types"
* provision.code ^definition = "Provides additional classification of the consent. In combination with category, it enables distinct identification of different consent types."