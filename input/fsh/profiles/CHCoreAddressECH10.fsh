Profile: CHCoreAddressECH10
Parent: CHCoreAddress
Id: ch-core-address-ech-10
Title: "CH Core Postal Address"
Description: "Postal address according to eCH-0010"

* . ^short = "An address expressed using postal conventions (as opposed to GPS or other location definition formats)"
* type 0..1
* type only code
* type = #postal (exactly)
* type ^short = "postal"
* city 1..1 SU
* city only string
* city ^alias = "Municpality"
* postalCode 1..1
* postalCode only string
* postalCode ^short = "Postal code for area"
* postalCode ^definition = "A postal code designating a region defined by the postal service."
* postalCode ^alias = "Zip"
* country 1..1
* country only string
* period 0..0
* period only Period
* period ^short = "Time period when address was/is in use"
* period ^definition = "Time period when address was/is in use."
* period ^requirements = "Allows addresses to be placed in historical context."

Mapping: eCH-for-CHCoreAddressECH10
Id: eCH
Title: "eCH Standards"
Source: CHCoreAddressECH10
Target: "https://www.ech.ch/"
* -> "eCH-0010: 5.5 addressInformation"
* city -> "eCH-0010: 5.23 town"
* postalCode -> "eCH-0010: 5.18 swissZipCode, 5.19 swissZipCodeAddOn, 5.20 swissZipCodeId, 5.21 foreignZipCode"
* country -> "eCH-0010: 5.24 country"