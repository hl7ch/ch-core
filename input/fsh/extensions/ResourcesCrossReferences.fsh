Extension: EntryResourceCrossReferences
Id: ch-vacd-ext-entry-resource-cross-references
Title: "Entry Resource Cross References"
Description: "Extension to make a reference beween resources as entries in i.e. document bundles."
* ^status = #draft
* ^date = "2021-11-09T00:00:00+00:00"
* ^publisher = "HL7 Schweiz"
* ^context.type = #element
* ^context.expression = "DomainResource"
* . 0..*
* . ^short = "Entry Resource Cross References"
* . ^definition = "Extension to make a reference beween resources as entries in i.e. document bundles."
* extension contains
    entry 1..1 and
    container 1..1 and
    relationcode 1..1
* extension[entry] only Extension
* extension[entry] ^short = "Reference to the related entry"
* extension[entry] ^definition = "Reference to the related entry."
* extension[entry].url only uri
* extension[entry].extension 2..2
* extension[entry].extension contains
   identifier 1..1 and
   resource 1..1
* extension[entry].extension[identifier] only Extension
* extension[entry].extension[identifier].url only uri   
* extension[entry].extension[identifier].valueIdentifier 1.. 
* extension[entry].extension[identifier].extension 0..0
* extension[entry].extension[identifier].valueIdentifier ^short = "The identifier of the entry."
* extension[entry].extension[identifier].extension 0..0
* extension[entry].extension[resource] only Extension
* extension[entry].extension[resource].url only uri   
* extension[entry].extension[resource].valueCode ^short = "The resource type of the entry."
* extension[entry].extension[resource].valueCode from ResourceType (required)
* extension[entry].extension[resource].extension 0..0

* extension[container] only Extension
* extension[container] ^short = "Reference to the related container resource"
* extension[container] ^definition = "Reference to the related container resource"
* extension[container].url only uri
* extension[container].extension 2..2
* extension[container].extension contains
   identifier 1..1 and
   resource 1..1
* extension[container].extension[identifier] only Extension
* extension[container].extension[identifier].url only uri   
* extension[container].extension[identifier].valueIdentifier 1.. 
* extension[container].extension[identifier].valueIdentifier ^short = "The identifier of the entry."
* extension[container].extension[identifier].extension 0..0
* extension[container].extension[resource] only Extension
* extension[container].extension[resource].url only uri   
* extension[container].extension[resource].valueCode ^short = "The resource type of the entry."
* extension[container].extension[resource].valueCode from ResourceType (required)
* extension[container].extension[resource].extension 0..0

* extension[relationcode] only Extension
* extension[relationcode] ^short = "Reference to the related document"
* extension[relationcode] ^definition = "Reference to the related document"
* extension[relationcode].url only uri
* extension[relationcode].valueCode 1.. 
* extension[relationcode].valueCode only code
* extension[relationcode].valueCode from DocumentRelationshipType (required)
* extension[relationcode].valueCode ^short = "The type of relationship between the elements in the documents."