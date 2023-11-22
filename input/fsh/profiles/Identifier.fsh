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

Profile: ZSRIdentifier
Parent: Identifier
Id: ch-core-zsr-identifier
Title: "ZSR Identifier"
Description: "Identifier holding a number for ZSR (Zahlstellenregister), RCC (Registre des codes-créanciers), RCC (Registro dei codici creditori)"
* system 1..
* system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1" (exactly)
* system ^short = "OID of the ZSR/RCC"
* value 1..
* value ^short = "ZSR/RCC number"


// ------------------------------- Organization.identifier ------------------------------- //

Profile: BERIdentifier
Parent: Identifier
Id: ch-core-ber-identifier
Title: "BER Identifier"
Description: "Identifier holding a number for BER (Business and Enterprise Register), BUR (Betriebs- und Unternehmensregister), REE (Registre des entreprises et des établissements), RIS (Registro delle imprese e degli stabilimenti)"
* system 1..
* system = "urn:oid:2.16.756.5.45" (exactly)
* system ^short = "OID of the BER/BUR/REE/RIS"
* value 1..
* value ^short = "BER/BUR/REE/RIS number"

Profile: UIDBIdentifier
Parent: Identifier
Id: ch-core-uidb-identifier
Title: "UIDB Identifier"
Description: "Identifier holding a number for UIDB (Unique Identification Business), UID (Verwendung der Unternehmens-Identifikationsnummer), IDE (Utilisation du numéro d'identification des entreprises), IDI (Utilizzo del numero d'identificazione delle imprese)"
* system 1..
* system = "urn:oid:2.16.756.5.35" (exactly)
* system ^short = "OID of the UIDB/UID/IDE/IDI"
* value 1..
* value ^short = "UIDB/UID/IDE/IDI number"
