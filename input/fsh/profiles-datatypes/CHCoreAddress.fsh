Profile: CHCoreAddress
Parent: Address
Id: ch-core-address
Title: "CH Core Address"
Description: "address incorporating eCH-0010 postal address extensions"

* . ^short = "An address expressed using postal conventions (as opposed to GPS or other location definition formats)"
* obeys ch-addr-2
* line.extension ^slicing.discriminator[0].type = #value
* line.extension ^slicing.discriminator[=].path = "url"
* line.extension ^slicing.discriminator[+].type = #value
* line.extension ^slicing.discriminator[=].path = "value"
* line.extension ^slicing.ordered = true
* line.extension ^slicing.rules = #open
* line.extension contains
    ECH0010AddressLineType named addressLine1 0..1 and
    ECH0010AddressLineType named addressLine2 0..1 and
    ECH0010AddressLineType named street 0..1 and
    $iso21090-ADXP-streetName named streetName 0..1 and
    $iso21090-ADXP-houseNumber named houseNumber 0..1 and
    $iso21090-ADXP-unitID named unitID 0..1 and
    ECH0010AddressLineType named postOfficeBoxText 0..1 and
    $iso21090-ADXP-postBox named postOfficeBoxNumber 0..1
* line.extension[addressLine1].valueCode 1..
* line.extension[addressLine1].valueCode only code
* line.extension[addressLine1].valueCode = #addressLine1 (exactly)
* line.extension[addressLine2].valueCode 1..
* line.extension[addressLine2].valueCode only code
* line.extension[addressLine2].valueCode = #addressLine2 (exactly)
* line.extension[street].valueCode 1..
* line.extension[street].valueCode only code
* line.extension[street].valueCode = #street (exactly)
* line.extension[streetName] ^short = "street part of the street line, e.g. withouth housenumber"
* line.extension[houseNumber] ^short = "houseNumber part of the street line"
* line.extension[unitID] ^short = "unitID, dwellingNumber part of the street line"
* line.extension[postOfficeBoxText] ^short = "Postbox addresses need an postbox text and optional postbox number"
* line.extension[postOfficeBoxText].valueCode 1..
* line.extension[postOfficeBoxText].valueCode only code
* line.extension[postOfficeBoxText].valueCode = #postOfficeBoxText (exactly)
* line.extension[postOfficeBoxNumber] ^short = "Optional postOfficeBoxNumber as a separate part of the postOfficeBoxText"
* city.extension ^slicing.discriminator[0].type = #value
* city.extension ^slicing.discriminator[=].path = "url"
* city.extension ^slicing.rules = #open
* city.extension contains 
    ECH007MunicipalityId named bfs 0..1
* state from http://fhir.ch/ig/ch-core/ValueSet/ech-7-cantonabbreviation (example)
* state ^binding.description = "Use these values for a Swiss or Liechtenstein address"
* country from http://fhir.ch/ig/ch-term/ValueSet/bfs-country-codes (extensible)
* country ^binding.description = "BFS defines the valid set of countries. Values are from the 'ISO 3166-1 country codes' code system."
* country.extension ^slicing.discriminator[0].type = #value
* country.extension ^slicing.discriminator[=].path = "url"
* country.extension ^slicing.rules = #open
* country.extension contains 
    $iso21090-SC-coding named countrycode 0..1
* country.extension[countrycode] obeys ch-addr-1
* country.extension[countrycode] ^short = "ISO Country Alpha-2 or ISO Country Alpha-3 code"
* country.extension[countrycode] ^definition = "The content of the country code element (if present) SHALL be selected EITHER from ValueSet ISO Country Alpha-2 http://hl7.org/fhir/ValueSet/iso3166-1-2 OR MAY be selected from ISO Country Alpha-3 Value Set http://hl7.org/fhir/ValueSet/iso3166-1-3, if the country is not specified in value Set ISO Country Alpha-2 http://hl7.org/fhir/ValueSet/iso3166-1-2."




Mapping: eCH-0011-for-CHCoreAddress
Id: eCH-0011
Title: "eCH-0011 Datenstandard Personendaten"
Source: CHCoreAddress
Target: "http://www.ech.ch/standards/39485"
* city.extension[bfs] -> "BFS Number for municipality Switzerland"

Mapping: eCH-for-CHCoreAddress
Id: eCH
Title: "eCH Standards"
Source: CHCoreAddress
Target: "https://www.ech.ch/"
* -> "eCH-0010: addressInformation"
* line.extension[addressLine1] -> "eCH-0010: addressLine1"
* line.extension[addressLine2] -> "eCH-0010: addressLine2"
* line.extension[street] -> "eCH-0010: street"
* line.extension[streetName] -> "eCH-0010: streetName"
* line.extension[houseNumber] -> "eCH-0010: houseNumber"
* line.extension[unitID] -> "eCH-0010: dwellingNumber"
* line.extension[postOfficeBoxText] -> "eCH-0010: postOfficeBoxText"
* line.extension[postOfficeBoxNumber] -> "eCH-0010: postOfficeBoxNumber"
* city -> "eCH-0010: town"
* district -> "eCH-0010: locality"
* state -> "eCH-0010: locality"
* postalCode -> "eCH-0010: swissZipCode, swissZipCodeAddOn, swissZipCodeId, foreignZipCode"
* country -> "eCH-0010: country"