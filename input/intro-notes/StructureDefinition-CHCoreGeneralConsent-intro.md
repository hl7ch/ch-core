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
