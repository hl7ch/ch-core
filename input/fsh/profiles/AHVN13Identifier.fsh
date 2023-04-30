Profile: AHVN13Identifier
Parent: Identifier
Id: ch-core-ahvn13-identifier
Title: "AHVN13 / NAVS13 Identifier"
Description: "Identifier holding a 13 digit social security number. The number shall have exactly 13 digits and shall not contain point characters for separation."

* system 1..
* system = "urn:oid:2.16.756.5.32" (exactly)
* value 1..
* value obeys ahvn13-length and ahvn13-startswith756 and ahvn13-digit-check