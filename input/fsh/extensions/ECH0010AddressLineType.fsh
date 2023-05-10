Extension: ECH0010AddressLineType
Id: ch-ext-ech-10-linetype
Title: "Address Line Type"
Description: "eCH-0010: Extension to define line types for addresses"

* ^context.type = #element
* ^context.expression = "Address.line"

* . ^definition = "eCH-0010: Extension to define line types for an address"
* url only uri
* valueCode 0..1
* valueCode only code
* valueCode from $ech-10-linetype (extensible)
* valueCode ^short = "Value of extension"
* valueCode ^definition = "Value of extension - may be a resource or one of a constrained set of the data types (see\r\n       Extensibility in the spec for list)."
* valueCode ^binding.description = "A set of codes advising a system or user which name in a set of names to select for a\r\n         given purpose."