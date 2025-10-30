The CH Core implementation guide provides the basis for a **layered approach to FHIR interoperability** in the Swiss context and aims to support a coherent and reusable set of FHIR artifacts across Switzerland.

Fig. 1 shows the dependencies between Swiss implementation guides. The CH Core IG is derived from CH Term, the implementation guide where Swiss-specific terminology (e.g., value sets, code systems) is defined. These terminologies can be used in CH Core as well as in exchange format IGs or organization-specific implementations. The CH Core IG defines core profiles as well as EPR (Electronic Patient Record) concepts.

{% include dependencies-igs.svg %}
*Fig. 1: Schematic overview of the dependencies between the Swiss IGs at the core (in red) and exchange format (in blue) level*

The core artifacts serve as guidance and recommendations for how FHIR can and should be used in Switzerland. Fig. 2 illustrates this approach. This is implemented, for example, by defining elements such as `Medication.code` (see Fig. 2) for GTIN, a commonly used code in Switzerland. Specific value sets are also bound to the corresponding elements, but with low binding strength. Data types are specified according to Swiss-specific requirements as well. **At the core level, the principle is to have no or as few mandatory constraints as possible, to ensure reusability.**

{% include dependencies-profiles.svg  %}
*Fig. 2: Schematic overview of the dependencies shown at the profile level with focus on reusing the core artifacts*

Also visible in Fig. 2, at the level of different exchange formats, is that these are derived from the core artifacts. The yellow highlighted text visualizes that requirements can become more strict at this level according to the specific use case.

This principle ensures both the **reusability of common core artifacts** as well as the ability to base further specifications (such as exchange formats) on them **without complex dependencies**.
