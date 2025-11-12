Invariant: ber-length
Description: "BER must start with A or B, followed by a non-zero digit, then 7 more digits"
Severity: #warning
Expression: "matches('^[A-B][1-9][0-9]{7}$')"

Invariant: ber-modulus-11
Description: "BER must pass the modulus 11 check"
Severity: #warning
Expression: "11-((substring(1,1).toInteger()*5)+(substring(2,1).toInteger()*4)+(substring(3,1).toInteger()*3)+(substring(4,1).toInteger()*2)+(substring(5,1).toInteger()*7)+(substring(6,1).toInteger()*6)+(substring(7,1).toInteger()*5))mod(11)=substring(8,1).toInteger()"