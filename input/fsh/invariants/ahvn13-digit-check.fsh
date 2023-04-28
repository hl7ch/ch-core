Invariant: ahvn13-digit-check
Description: "AHVN13 / NAVS13 must pass digit check - https://www.gs1.org/services/how-calculate-check-digit-manually"
Severity: #error
Expression: "(((10-(28+(value.substring(3,1).toInteger()*3)+(value.substring(4,1).toInteger()*1)+(value.substring(5,1).toInteger()*3)+(value.substring(6,1).toInteger()*1)+(value.substring(7,1).toInteger()*3)+(value.substring(8,1).toInteger()*1)+(value.substring(9,1).toInteger()*3)+(value.substring(10,1).toInteger()*1)+(value.substring(11,1).toInteger()*3))mod(10))mod(10))=value.substring(12,1).toInteger())"