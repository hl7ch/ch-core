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

### How to read decision and provision

The CH Core General Consent follows the [R5 Consent](https://hl7.org/fhir/R5/consent.html) model, represented in R4 with [cross-version extensions](https://hl7.org/fhir/uv/xver/). In this model the `decision` (R4: `Consent.modifierExtension:decision`) is **not** the answer of the patient. It is the *default* rule, and each `provision` is an *exception* to that default:

> The default decision of the consent is stated by the decision attribute (permit or deny) and provisions state the exceptions to the base decision.

Because `Consent.provision` (with `code` = `GC` and `purpose` = `HRESCH`) is mandatory in this profile, the provision always describes the activity of the General Consent: the further use of health-related data and samples for research. The answer of the patient (or legal representative) is therefore always the **opposite** of `decision`:

| GC state | `status` | `decision` | Meaning | Example |
|---|---|---|---|---|
| GC accepted | `active` | `deny` | deny by default, except research (HRESCH) which is **permitted** | [GC-accepted](Consent-GC-accepted.html) |
| GC denied | `active` | `permit` | permit by default, except research (HRESCH) which is **denied** | [GC-denied](Consent-GC-denied.html) |
| GC withdrawn / canceled | `inactive` | as recorded | the consent no longer applies | |
| unknown (no GC recorded yet) | | | no Consent resource exists | |
{:.grid}

**Do not interpret `decision` on its own.** A receiver must always evaluate `decision` together with the provision: a `decision` of `deny` means that the General Consent has been *accepted*, a `decision` of `permit` means that it has been *denied*.

The default rule (`decision`) applies only within the context of the Consent, i.e. its `scope` (`research`) and its `policy` (the [Unimedsuisse Generalkonsent](https://www.unimedsuisse.ch/de/projekte/generalkonsent)). The default `permit` of a denied General Consent does therefore not grant any permission outside the General Consent and must not be read as a consent to other activities. Other consents (e.g. for a specific research project) have to be recorded in separate Consent resources.
