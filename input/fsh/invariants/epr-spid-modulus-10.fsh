Invariant: epr-spid-modulus-10
Description: "EPR-SPID must pass the modulus 10 check - https://www.gs1.org/services/how-calculate-check-digit-manually"
Severity: #error
Expression: "(((10-((68+(value.substring(8,1).toInteger()*3)+(value.substring(9,1).toInteger()*1)+(value.substring(10,1).toInteger()*3)+(value.substring(11,1).toInteger()*1)+(value.substring(12,1).toInteger()*3)+(value.substring(13,1).toInteger()*1)+(value.substring(14,1).toInteger()*3)+(value.substring(15,1).toInteger()*1)+(value.substring(16,1).toInteger()*3))mod(10)))mod(10))=value.substring(17,1).toInteger())"