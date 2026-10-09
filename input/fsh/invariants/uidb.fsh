Invariant: uidb-length
Description: "UIDB must start with 'CHE' followed by a non-zero digit, then 8 more digits"
Severity: #warning
Expression: "matches('^CHE[1-9][0-9]{8}$')"

Invariant: uidb-modulus-11
Description: "UIDB must pass the modulus 11 check, as described in https://www.ech.ch/sites/default/files/dosvers/hauptdokument/STAN_d_REP_2020-11-26_eCH-0097_V5.1_Datenstandard%20Unternehmensidentifikation.pdf"
Severity: #warning
Expression: "(11 - ((substring(3,1).toInteger()*5) + (substring(4,1).toInteger()*4) + (substring(5,1).toInteger()*3) + (substring(6,1).toInteger()*2) + (substring(7,1).toInteger()*7) + (substring(8,1).toInteger()*6) + (substring(9,1).toInteger()*5) + (substring(10,1).toInteger()*4)) mod 11) mod 11 = substring(11,1).toInteger()"
// eCH-0108 only says the UIDB follows the modulo 11 check digit algorithm, without more details.
// eCH-0097 (now retired) gives the full algorithm being used.