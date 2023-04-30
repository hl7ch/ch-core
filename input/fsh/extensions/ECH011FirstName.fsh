Extension: ECH011FirstName
Id: ch-ext-ech-11-firstname
Title: "First Name"
Description: "eCH-0011: Extension to define first name type"

* ^context.type = #element
* ^context.expression = "HumanName.given"

* . ^short = "Extension"
* . ^definition = "eCH-0011: Extension to define first name type"
* url only uri
* valueCode 0..1
* valueCode only code
* valueCode from $ech-11-firstnamedatatype (required)
* valueCode ^short = "Value of extension"
* valueCode ^definition = "Value of extension - may be a resource or one of a constrained set of the data types (see\r\n       Extensibility in the spec for list)."
* valueCode ^binding.description = "A set of codes advising a system or user which name in a set of names to select for a\r\n         given purpose."