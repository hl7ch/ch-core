Profile: CHCoreAddressECH11PlaceOfOrigin
Parent: CHCoreAddress
Id: ch-core-address-ech-11-placeoforigin
Title: "Address for Place of Origin"
Description: "Place of Origin for eCH-0011"

* . ^short = "An address expressed using postal conventions (as opposed to GPS or other location definition formats)"
* use 0..0
* use only code
* use ^short = "home | work | temp | old | billing - purpose of this address"
* use ^definition = "The purpose of this address."
* use ^comment = "Applications can assume that an address is current unless it explicitly says that it is temporary or old."
* use ^requirements = "Allows an appropriate address to be chosen from a list of many."
* type 0..0
* type only code
* type ^short = "postal | physical | both"
* text 0..0
* text only string
* text ^short = "Text representation of the address"
* text ^definition = "Specifies the entire address as it should be displayed e.g. on a postal label. This may be provided instead of or as well as the specific parts."
* text ^comment = "Can provide both a text representation and parts. Applications updating an address SHALL ensure that  when both text and parts are present,  no content is included in the text that isn't found in a part."
* text ^requirements = "A renderable, unencoded form."
* line 0..0
* line only string
* line ^short = "Street name, number, direction & P.O. Box etc."
* line ^definition = "This component contains the house number, apartment number, street name, street direction,  P.O. Box number, delivery hints, and similar address information."
* city 0..1 SU
* city only string
* city ^short = "Name of place of origin (municipality)"
* city ^definition = "optional if country is not Switzerland"
* city ^alias[0] = "Municpality"
* district 0..0 SU
* district only string
* district ^short = "District name (aka county)"
* district ^definition = "The name of the administrative area (county)."
* district ^comment = "District is sometimes known as county, but in some regions 'county' is used in place of city (municipality), so county name should be conveyed in city instead."
* district ^alias[0] = "County"
* state 1..1
* state ^short = "Canton"
* state ^definition = "Canton 2 letter abbreviation"
* state ^alias[0] = "Province"
* state ^alias[+] = "Territory"
* postalCode 0..0
* postalCode only string
* postalCode ^short = "Postal code for area"
* postalCode ^definition = "A postal code designating a region defined by the postal service."
* postalCode ^alias[0] = "Zip"
* country 0..0 SU
* country only string
* country ^short = "Country if place of orgin is not Switzerland"
* country ^definition = "Country if place of orgin is not Switzerland"
* country.extension[countrycode] 0..1
* country.extension[countrycode] only $iso21090-SC-coding
* country.extension[countrycode] ^short = "ISO Country Alpha-2 or ISO Country Alpha-3 code"
* country.extension[countrycode] ^definition = "The content of the country code element (if present) SHALL be selected EITHER from ValueSet ISO Country Alpha-2 http://hl7.org/fhir/ValueSet/iso3166-1-2 OR MAY be selected from ISO Country Alpha-3 Value Set http://hl7.org/fhir/ValueSet/iso3166-1-3, if the country is not specified in value Set ISO Country Alpha-2 http://hl7.org/fhir/ValueSet/iso3166-1-2."
* period 0..0
* period only Period
* period ^short = "Time period when address was/is in use"
* period ^definition = "Time period when address was/is in use."
* period ^requirements = "Allows addresses to be placed in historical context."


Mapping: eCH-0011-for-CHCoreAddressECH11PlaceOfOrigin
Id: eCH-0011
Title: "eCH-0011 Datenstandard Personendaten"
Source: CHCoreAddressECH11PlaceOfOrigin
Target: "http://www.ech.ch/standards/39485"
* -> "3.3.10 placeoforigin"
* city -> "3.3.10.1 originName, BFS-42"
* state -> "3.3.10.2 canton"
* country.extension[countrycode] -> "3.3.6 nationalityData"
