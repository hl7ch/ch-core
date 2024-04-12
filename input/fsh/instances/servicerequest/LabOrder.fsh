Instance: LabOrder
InstanceOf: ServiceRequest
Usage: #example
Title: "Laboratory Order"
Description: "Example for ServiceRequest"
* status = #active
* intent = #order
* priority = #routine
* category = $cs-servicerequest-category#RequestForLabExam "Anforderung von Laboruntersuchungen"
* code = $loinc#2164-2 "Creatinine renal clearance in 24 hour Urine and Serum or Plasma"
* subject = Reference(Patient/ElisabethBroennimannByBFH)
* requester = Reference(PractitionerRole/HPWengerRole)
* insurance = Reference(Coverage/CoverageBroennimann)
