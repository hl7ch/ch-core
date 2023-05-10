Extension: ECH46InternetCategory
Id: ch-ext-ech-46-internetcategory
Title: "eCH-0046 Internet Category"
Description: "Extension to define the internet category according to eCH-0046"

* ^context.type = #element
* ^context.expression = "ContactPoint.use"
* url only uri
* valueCodeableConcept 1..1
* valueCodeableConcept from ECH46InternetCategory (extensible)
* valueCodeableConcept.coding ^short = "Predefined category"
* valueCodeableConcept.text ^short = "Category as free text should only be used if none of the predefined categories apply"