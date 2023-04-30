Invariant: ch-pat-2
Description: "gender unknown is currently not used in Switzerland in eCH and the EPR"
Severity: #warning
Expression: "gender.empty() or gender!='unknown'"