Extension: ECH007MunicipalityId
Id: ch-ext-ech-7-municipalityid
Title: "eCH-0007 Municipality Id – BFS Gemeindenummer"
Description: "eCH-0007: Extension to define a BFS Number for a municipality"

* ^context.type = #element
* ^context.expression = "Address.city"

* . ^definition = "Extension for eCH-0011 - bfs number (ministry of statistics number)"
* url only uri
* valueString 0..1
* valueString only string
* valueString ^short = "Value of extension"
* valueString ^definition = "BFS number"
* valueString ^base.path = "Extension.value[x]"
* valueString ^base.min = 0
* valueString ^base.max = "1"
* valueString ^isModifier = false
* valueString ^isSummary = false