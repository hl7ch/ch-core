Instance: UpiEprTestKrcmarevic
InstanceOf: CHCorePatient
Usage: #example
Title: "UPI EPR Test Krcmarevic"
Description: "Test Patient from UPI for Swiss EPR Projectathon"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div><ul><li><b>EPR-SPID</b>: 7560521127080</li><li><b>Date of Birth</b>: 20.03.1982</li><li><b>First Name</b>: Claude-Hélène Marguerite</li><li><b>Official Name</b>: Krcmarevic</li><li><b>Original Name</b>: Scheuble</li><li><b>Sex</b>: 2 (Needs transformation to HL7 ValueSet, see <a href=\"ConceptMap-sex-ech11-to-fhir.html\">ConceptMap Sex eCH-011 to FHIR mapping</a>)</li><li><b>Mother</b></li><ul><li><b>First Name</b>: Hui Xue</li><li><b>Last Name</b>: Dalkiliç</li></ul><li><b>Father</b></li><ul><li><b>First Name</b>: Fabio Nicola</li><li><b>Last Name</b>: Dalkiliç</li></ul><li><b>Nationality</b>: Switzerland (8100)</li><li><b>Country of Birth</b>: Switzerland (8100)</li><li><b>Place of Birth</b>: Zürich (261)</li></ul></div><div>\r\n                Base test data for Projectathon from UPI, see <a href=\"https://docs.google.com/spreadsheets/d/1yWPhTI7DDgYDMXPVFGRmdb50c8TuUnQp9fECM3iGTBo/edit#gid=0\">Google Doc for more examples.</a></div></div>"
* extension[0].extension.url = "code"
* extension[=].extension.valueCodeableConcept = urn:iso:std:iso:3166#CH "Switzerland"
* extension[=].url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-7-municipalityid"
* extension[=].valueAddress.city.extension.valueString = "261"
* extension[=].valueAddress.city = "Zürich"
* extension[=].valueAddress.country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding"
* extension[=].valueAddress.country.extension.valueCoding = urn:iso:std:iso:3166#CH
* extension[=].valueAddress.country = "Switzerland"
* identifier.system = "urn:oid:2.16.756.5.30.1.127.3.10.3" // EPR-SPID
* identifier.value = "761337611234567897"
* name[0].use = #official
* name[=].family = "Krcmarevic"
* name[=].given = "Claude-Hélène Marguerite"
* name[+].use = #maiden
* name[=].family = "Scheuble"
* gender = #female
* birthDate = "1982-03-20"
* contact[0].relationship = $v3-RoleCode#MTH "mother"
* contact[=].name.family = "Dalkiliç"
* contact[=].name.given = "Hui Xue"
// http://build.fhir.org/valueset-parent-relationship-codes.html
* contact[+].relationship = $v3-RoleCode#FTH "father"
* contact[=].name.family = "Dalkiliç"
* contact[=].name.given = "Fabio Nicola"