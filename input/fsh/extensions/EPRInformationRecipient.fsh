Extension: EPRInformationRecipient
Id: ch-ext-epr-informationrecipient
Title: "EPR Information Recipient"
Description: "Extension for a recipient of this document (corresponds to the addressee of a letter - person or organization). **DEPRECATED**: This extension has CDA origins and will be removed in a future version."
* ^status = #retired

* ^context.type = #element
* ^context.expression = "Composition"
* . 0..*
* . ^short = "Extension"
* . ^definition = "Extension to define the information about the recipient"
* url only uri
* valueReference 1..
* valueReference only Reference(CHCorePractitioner or CHCorePatient or CHCoreRelatedPerson or CHCoreOrganization)