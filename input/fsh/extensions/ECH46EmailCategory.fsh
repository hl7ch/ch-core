Extension: ECH46EmailCategory
Id: ch-ext-ech-46-emailcategory
Title: "eCH-0046 Email Category"
Description: "Extension to define the e-mail category according to eCH-0046"

* ^context.type = #element
* ^context.expression = "ContactPoint.use"
* url only uri
* valueCodeableConcept 1..1
* valueCodeableConcept from http://fhir.ch/ig/ch-core/ValueSet/ech-46-emailcategory (extensible)
* valueCodeableConcept.coding ^short = "Predefined category"
* valueCodeableConcept.text ^short = "Category as free text should only be used if none of the predefined categories apply"