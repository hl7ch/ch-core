Instance: ch-core-forum-datenaustausch-tariff
InstanceOf: NamingSystem
Usage: #definition
* name = "ForumDatenaustauschTariffType"
* status = #active
* kind = #identifier
* date = "2023-04-20T00:00:00+02:00"
* description = "Identification for Forum Datenaustausch tariff types. 

The detailed tariff list is avaible at this [url](https://www.forum-datenaustausch.ch/de/referenzdaten/)

Naming Convention for fore each tariff type is:

http://forum-datenaustausch.ch/tariff/[A-Z0-9]{3}
"
* uniqueId[0].type = #uri
* uniqueId[=].value = "http://forum-datenaustausch.ch/tariff"
* uniqueId[=].preferred = true
