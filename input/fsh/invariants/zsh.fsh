Invariant: zsr-length
Description: "ZSR must be exactly one letter and 6 digits long"
Severity: #warning
Expression: "matches('^[A-Z][0-9]{6}$')"

Invariant: zsr-check-digit
Description: "ZSR must pass the modulus 26 check - https://confluence.sasis.ch/display/PublicZSR/ZSR+Webservice+FAQ"
Severity: #warning
Expression: "((substring(1,1).toInteger()*6)+(substring(2,1).toInteger()*5)+(substring(3,1).toInteger()*4)+(substring(4,1).toInteger()*3)+(substring(5,1).toInteger()*2)+(substring(6,1).toInteger()))mod(26)=iif(substring(0,1)='A',1,iif(substring(0,1)='B',2,iif(substring(0,1)='C',3,iif(substring(0,1)='D',4,iif(substring(0,1)='E',5,iif(substring(0,1)='F',6,iif(substring(0,1)='G',7,iif(substring(0,1)='H',8,iif(substring(0,1)='I',9,iif(substring(0,1)='J',10,iif(substring(0,1)='K',11,iif(substring(0,1)='L',12,iif(substring(0,1)='M',13,iif(substring(0,1)='N',14,iif(substring(0,1)='O',15,iif(substring(0,1)='P',16,iif(substring(0,1)='Q',17,iif(substring(0,1)='R',18,iif(substring(0,1)='S',19,iif(substring(0,1)='T',20,iif(substring(0,1)='U',21,iif(substring(0,1)='V',22,iif(substring(0,1)='W',23,iif(substring(0,1)='X',24,iif(substring(0,1)='Y',25,iif(substring(0,1)='Z',26,-1))))))))))))))))))))))))))"
