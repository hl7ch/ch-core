// CH Core Patient -> ch-pat-1

Instance: NoName-Correct
InstanceOf: CHCorePatient
Usage: #example
Title: "No Name"
Description: "Correct test example to check contraint 'ch-pat-1'"

Instance: OnlyGivenName-Wrong
InstanceOf: CHCorePatient
Usage: #example
Title: "Only Given Name"
Description: "Wrong test example to check contraint 'ch-pat-1'"
* name.given = "Franz"

Instance: OnlyFamilyName-Wrong
InstanceOf: CHCorePatient
Usage: #example
Title: "Only Family Name"
Description: "Wrong test example to check contraint 'ch-pat-1'"
* name.family = "Muster"

// CH Core Patient EPR -> ch-pat-1-epr

Instance: NameEPR-Correct
InstanceOf: CHCorePatientEPR
Usage: #example
Title: "Name (EPR)"
Description: "Correct test example to check contraint 'ch-pat-1-epr'"
* identifier.type = $v2-0203#MR
* identifier.system = "urn:oid:2.16.756.5.30.999999.1"
* identifier.value = "012/08.111111"
* gender = #male
* birthDate = "1995-01-27"
* name.given = "Franz"
* name.family = "Muster"

Instance: NoNameEPR-Wrong
InstanceOf: CHCorePatientEPR
Usage: #example
Title: "No Given/Family Name (EPR)"
Description: "Wrong test example to check contraint 'ch-pat-1-epr'"
* identifier.type = $v2-0203#MR
* identifier.system = "urn:oid:2.16.756.5.30.999999.1"
* identifier.value = "012/08.111111"
* gender = #male
* birthDate = "1995-01-27"
* name.text = "Franz Muster"

Instance: OnlyGivenNameEPR-Wrong
InstanceOf: CHCorePatientEPR
Usage: #example
Title: "Only Given Name (EPR)"
Description: "Wrong test example to check contraint 'ch-pat-1-epr'"
* identifier.type = $v2-0203#MR
* identifier.system = "urn:oid:2.16.756.5.30.999999.1"
* identifier.value = "012/08.111111"
* gender = #male
* birthDate = "1995-01-27"
* name.given = "Franz"

Instance: OnlyFamilyNameEPR-Wrong
InstanceOf: CHCorePatientEPR
Usage: #example
Title: "Only Family Name (EPR)"
Description: "Wrong test example to check contraint 'ch-pat-1-epr'"
* identifier.type = $v2-0203#MR
* identifier.system = "urn:oid:2.16.756.5.30.999999.1"
* identifier.value = "012/08.111111"
* gender = #male
* birthDate = "1995-01-27"
* name.family = "Muster"