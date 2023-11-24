Extension: EntryResourceCrossReferences
Id: ch-core-ext-entry-resource-cross-references
Title: "Entry Resource Cross References"
Description: "Extension to make a reference beween resources as entries in i.e. document bundles."
* ^status = #active
* ^date = "2023-11-02T00:00:00+00:00"
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
* extension[entry].extension 0..0
* extension[entry].url only uri
* extension[entry].valueReference ^short = "Reference to the entry resource in an other container i.e. Bundle"
* extension[entry].valueReference.reference 0..0
* extension[entry].valueReference.type 1..1
* extension[entry].valueReference.type ^short = "Entry resource type"
* extension[entry].valueReference.type ^definition = "The resource type of the referenced entry"
* extension[entry].valueReference.identifier 1..1
* extension[entry].valueReference.identifier ^short = "Identifier of entry"
* extension[entry].valueReference.identifier ^definition = "A identifier of the referenced entry"
* extension[container] only Extension
* extension[container] ^short = "Reference to the related container resource"
* extension[container] ^definition = "Reference to the related container resource"
* extension[container].extension 0..0
* extension[container].url only uri
* extension[container].valueReference ^short = "Reference to the container resource i.e. Bundle.composition containinig the referenced entry"
* extension[container].valueReference.reference 0..0
* extension[container].valueReference.type 1..1
* extension[entry].valueReference.type ^short = "Container resource type"
* extension[entry].valueReference.type ^definition = "The resource type of the container containing the referenced entry"
* extension[entry].valueReference.identifier 1..1
* extension[entry].valueReference.identifier ^short = "Identifier of container"
* extension[entry].valueReference.identifier ^definition = "A identifier of the container containing the referenced entry"

* extension[relationcode] only Extension
* extension[relationcode] ^short = "Reference to the related document"
* extension[relationcode] ^definition = "Reference to the related document"
* extension[relationcode].extension 0..0
* extension[relationcode].url only uri
* extension[relationcode].valueCode 1.. 
* extension[relationcode].valueCode only code
* extension[relationcode].valueCode from DocumentRelationshipType (required)
* extension[relationcode].valueCode ^short = "The type of relationship between the elements in the documents."