Invariant: zsr-length
Description: "ZSR must be exactly one letter and 6 digits long"
Severity: #warning
Expression: "matches('^[A-Z][0-9]{6}$')"

Invariant: zsr-check-digit
Description: "ZSR must pass the modulus 26 check, as described in https://confluence.sasis.ch/spaces/PublicZSR/pages/139460630/ZSR+Webservice+FAQ#ZSRWebserviceFAQ-Howisavalidnumberconstructed"
Severity: #warning
Expression: "((substring(1,1).toInteger()*6)+(substring(2,1).toInteger()*5)+(substring(3,1).toInteger()*4)+(substring(4,1).toInteger()*3)+(substring(5,1).toInteger()*2)+(substring(6,1).toInteger())) mod 26 = 'ZABCDEFGHIJKLMNOPQRSTUVWXY'.indexOf(substring(0,1))"
