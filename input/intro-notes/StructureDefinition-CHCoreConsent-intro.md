<div markdown="1" class="stu-note">

**Warning: the representation of the consent decision is under discussion at HL7 International.**

This profile uses the R5 element `Consent.decision` on FHIR R4 through the cross-version
modifierExtension `http://hl7.org/fhir/5.0/StructureDefinition/extension-Consent.decision`.
In FHIR R4 the same information can be expressed with `Consent.provision.type` of the root
provision. How the two relate is not defined yet and is tracked in
[FHIR-59913](https://jira.hl7.org/browse/FHIR-59913), see also the
[discussion on chat.fhir.org](https://chat.fhir.org/#narrow/channel/179252-IG-creation/topic/R5.E2.86.92R4.20Consent.20backport.3A.20how.20model.20multiple.20provision.20entries/with/599826297).

Consequences for implementers:

- Applications that only know the FHIR R4 Consent model cannot process these resources and
  have to reject them because of the modifierExtension.
- Only one provision (exception to the decision) can be expressed, because
  `Consent.provision` is limited to 0..1 in FHIR R4.
- The representation of `decision` and of the provisions may change in a future version of
  this implementation guide, depending on the resolution of FHIR-59913. Such a change will be
  a breaking change.

Feedback is welcome in [CH Core issue #490](https://github.com/hl7ch/ch-core/issues/490).

</div>
