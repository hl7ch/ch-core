Invariant: uidb-length
Description: "UIDB must start with 'CHE' followed by 9 digits"
Severity: #warning
Expression: "matches('^CHE[0-9]{9}$')"

Invariant: uidb-modulus-11
Description: "UIDB must pass the modulus 11 check"
Severity: #warning
Expression: "11-((substring(3,1).toInteger()*5)+(substring(4,1).toInteger()*4)+(substring(5,1).toInteger()*3)+(substring(6,1).toInteger()*2)+(substring(7,1).toInteger()*7)+(substring(8,1).toInteger()*6)+(substring(9,1).toInteger()*5)+(substring(10,1).toInteger()*4))mod(11)=substring(11,1).toInteger()"