curl --request PUT \
  -i \
  --url 'http://localhost:8080/fhir/Practitioner/HanspeterWengerByBFH' \
  --header 'Content-Type: application/xml' \
  --header 'Accept: application/xml' \
  --http1.1 \
  --data '@./examples/practitioner/HanspeterWengerByBFH.xml'
curl --request PUT \
  -i \
  --url 'http://localhost:8080/fhir/Patient/ElisabethBroennimannByBFH' \
  --header 'Content-Type: application/xml' \
  --header 'Accept: application/xml' \
  --http1.1 \
  --data '@./examples/patient/ElisabethBroennimannByBFH.xml'