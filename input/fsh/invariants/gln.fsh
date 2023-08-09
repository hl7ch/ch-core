Invariant: gln-length
Description: "GLN must be exactly 13 characters long"
Severity: #error
Expression: "value.matches('^[0-9]{13}$')"

Invariant: gln-modulus-10
Description: "GLN must pass the modulus 10 check - https://www.gs1.org/services/how-calculate-check-digit-manually"
Severity: #error
Expression: "(((10-((value.substring(0,1).toInteger()*1)+(value.substring(1,1).toInteger()*3)+(value.substring(2,1).toInteger()*1)+(value.substring(3,1).toInteger()*3)+(value.substring(4,1).toInteger()*1)+(value.substring(5,1).toInteger()*3)+(value.substring(6,1).toInteger()*1)+(value.substring(7,1).toInteger()*3)+(value.substring(8,1).toInteger()*1)+(value.substring(9,1).toInteger()*3)+(value.substring(10,1).toInteger()*1)+(value.substring(11,1).toInteger()*3))mod(10))mod(10))=value.substring(12,1).toInteger())"

Invariant: gln-startswith7601
Description: "GLN must start with 7601 for swiss hcp"
Severity: #error
Expression: "value.startsWith('7601')"
