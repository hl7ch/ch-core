Extension: ECH011Name
Id: ch-ext-ech-11-name
Title: "Name"
Description: "eCH-0011: Extension to define name type"

* ^context.type = #element
* ^context.expression = "HumanName.family"

* . ^definition = "Extension for eCH-0011 - namedatatype"
* url only uri
* valueCode 0..1
* valueCode only code
* valueCode from $ech-11-namedatatype (required)
* valueCode ^short = "Value of extension"
* valueCode ^definition = "Value of extension - may be a resource or one of a constrained set of the data types (see\r\n       Extensibility in the spec for list)."
* valueCode ^base.path = "Extension.value[x]"
* valueCode ^base.min = 0
* valueCode ^base.max = "1"
* valueCode ^isModifier = false
* valueCode ^isSummary = false
* valueCode ^binding.description = "A set of codes advising a system or user which name in a set of names to select for a\r\n         given purpose."