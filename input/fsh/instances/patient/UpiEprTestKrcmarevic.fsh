Instance: UpiEprTestKrcmarevic
InstanceOf: CHCorePatient
Usage: #example
Title: "UPI EPR Test Krcmarevic"
Description: "Test Patient from UPI for Swiss EPR Projectathon"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div><ul><li><b>EPR-SPID</b>: 7560521127080</li><li><b>Date of Birth</b>: 20.03.1982</li><li><b>First Name</b>: Claude-Hélène Marguerite</li><li><b>Official Name</b>: Krcmarevic</li><li><b>Original Name</b>: Scheuble</li><li><b>Sex</b>: 2 (Needs transformation to HL7 ValueSet, see <a href=\"https://fhir.ch/ig/ch-term/ConceptMap-sex-ech11-to-fhir.html\">ConceptMap Sex eCH-011 to FHIR mapping</a>)</li><li><b>Mother</b><div><ul><li><b>First Name</b>: Hui Xue</li><li><b>Last Name</b>: Dalkiliç</li></ul></div></li><li><b>Father</b><div><ul><li><b>First Name</b>: Fabio Nicola</li><li><b>Last Name</b>: Dalkiliç</li></ul></div></li><li><b>Nationality</b>: Switzerland (8100)</li><li><b>Country of Birth</b>: Switzerland (8100)</li><li><b>Place of Birth</b>: Zürich (261)</li></ul></div><div>Base test data for Projectathon from UPI, see <a href=\"https://docs.google.com/spreadsheets/d/1yWPhTI7DDgYDMXPVFGRmdb50c8TuUnQp9fECM3iGTBo/edit#gid=0\">Google Doc for more examples.</a></div></div>"

* extension[citizenship].extension.url = "code"
* extension[citizenship].extension.valueCodeableConcept = urn:iso:std:iso:3166#CH "Switzerland"
* extension[citizenship].url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"

* extension[placeOfBirth].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[placeOfBirth].valueAddress.city.extension[bfs].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-7-municipalityid"
* extension[placeOfBirth].valueAddress.city.extension[bfs].valueString = "261"
* extension[placeOfBirth].valueAddress.city = "Zürich"
* extension[placeOfBirth].valueAddress.country.extension[countrycode].url = "http://hl7.org/fhir/StructureDefinition/iso21090-codedString"
* extension[placeOfBirth].valueAddress.country.extension[countrycode].valueCoding = urn:iso:std:iso:3166#CH
* extension[placeOfBirth].valueAddress.country = "Switzerland"

* identifier[EPR-SPID].system = "urn:oid:2.16.756.5.30.1.127.3.10.3"
* identifier[EPR-SPID].value = "761337611234567897"

* name[0].use = #official
* name[=].family = "Krcmarevic"
* name[=].given = "Claude-Hélène Marguerite"
* name[+].use = #maiden
* name[=].family = "Scheuble"
* gender = #female
* birthDate = "1982-03-20"

* contact[nameOfParent][0].relationship = $v3-RoleCode#PRN "parent"
* contact[nameOfParent][=].name.family = "Dalkiliç"
* contact[nameOfParent][=].name.given = "Hui Xue"
* contact[nameOfParent][+].relationship = $v3-RoleCode#PRN "parent"
* contact[nameOfParent][=].name.family = "Dalkiliç"
* contact[nameOfParent][=].name.given = "Fabio Nicola"
