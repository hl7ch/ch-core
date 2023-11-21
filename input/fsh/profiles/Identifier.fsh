// ------------------------------- Patient.identifier ------------------------------- //

Profile: AHVN13Identifier
Parent: Identifier
Id: ch-core-ahvn13-identifier
Title: "AHVN13 / NAVS13 Identifier"
Description: "Identifier holding a 13 digit social security number. The number shall have exactly 13 digits and shall not contain point characters for separation."
* system 1..
* system = "urn:oid:2.16.756.5.32" (exactly)
* value 1..
* value obeys ahvn13-length and ahvn13-startswith756 and ahvn13-digit-check

Profile: EPRSPIDIdentifier
Parent: Identifier
Id: ch-core-epr-spid-identifier
Title: "EPR-SPID Identifier"
Description: "EPR-SPID Identifier (https://www.fedlex.admin.ch/eli/cc/2017/205/de)"
* system 1..
* system = "urn:oid:2.16.756.5.30.1.127.3.10.3" (exactly)
* value 1..
* value obeys epr-spid-length and epr-spid-startswith76133761 and epr-spid-modulus-10

Profile: VEKAIdentifier
Parent: Identifier
Id: ch-core-veka-identifier
Title: "Insurance Card Number (Identifier)"
Description: "Identifier in 20-digit format. The number shall have exactly 20 digits and start with 756."
* system 1..
* system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1" (exactly)
* value 1..
* value obeys veka-length and veka-startswith807560
* period.end ^short = "Expiration date of the insurance card"


// ------------------------------- Practitioner/Organization.identifier ------------------------------- //

Profile: GLNIdentifier
Parent: Identifier
Id: ch-core-gln-identifier
Title: "GLN Identifier"
Description: "Identifier holding a 13 digit GLN"
* system 1..
* system = "urn:oid:2.51.1.3" (exactly)
* value 1..
* value obeys gln-length and gln-modulus-10 and gln-startswith76


// ------------------------------- Organization.identifier ------------------------------- //