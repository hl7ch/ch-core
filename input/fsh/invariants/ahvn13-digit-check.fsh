Invariant: ahvn13-digit-check
Description: "AHVN13 / NAVS13 must pass digit check - https://www.gs1.org/services/how-calculate-check-digit-manually"
Severity: #warning
Expression: "(((10-(28+(substring(3,1).toInteger()*3)+(substring(4,1).toInteger()*1)+(substring(5,1).toInteger()*3)+(substring(6,1).toInteger()*1)+(substring(7,1).toInteger()*3)+(substring(8,1).toInteger()*1)+(substring(9,1).toInteger()*3)+(substring(10,1).toInteger()*1)+(substring(11,1).toInteger()*3))mod(10))mod(10))=substring(12,1).toInteger())"