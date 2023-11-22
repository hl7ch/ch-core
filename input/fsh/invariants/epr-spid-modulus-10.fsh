Invariant: epr-spid-modulus-10
Description: "EPR-SPID must pass the modulus 10 check - https://www.gs1.org/services/how-calculate-check-digit-manually"
Severity: #warning
Expression: "(((10-((68+(substring(8,1).toInteger()*3)+(substring(9,1).toInteger()*1)+(substring(10,1).toInteger()*3)+(substring(11,1).toInteger()*1)+(substring(12,1).toInteger()*3)+(substring(13,1).toInteger()*1)+(substring(14,1).toInteger()*3)+(substring(15,1).toInteger()*1)+(substring(16,1).toInteger()*3))mod(10)))mod(10))=substring(17,1).toInteger())"