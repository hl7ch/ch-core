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