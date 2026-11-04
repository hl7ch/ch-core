### Relation to Swiss billing standards

| Standard | Scope | Mapping in CH Core |
|---|---|---|
| [Forum Datenaustausch – generalInvoice 5.0](https://www.forum-datenaustausch.ch/xml-standards/rechnung) | Content of the invoice | Yes, see [Mappings](StructureDefinition-ch-core-claim-mappings.html) |
| SHIP ([eCH-0234](https://www.ech.ch/de/ech/ech-0234), [eCH-0235](https://www.ech.ch/de/ech/ech-0235), [eCH-0236](https://www.ech.ch/de/ech/ech-0236), [eCH-0237](https://www.ech.ch/de/ech/ech-0237), [eCH-0253](https://www.ech.ch/de/ech/ech-0253)) | Process and message exchange for administrative cases between service providers and payers | No |

The mapping covers the Forum Datenaustausch generalInvoice 5.0, which replaces version 4.5 (mapped in CH Core STU 6).

SHIP (Swiss Health Information Processing), operated by SASIS AG and published as eCH standards, defines the process and messages for administrative cases (e.g. opening a case, cost approval, transmitting the invoice and the payer's response). SHIP does not define its own invoice content: in the sub-process for invoicing, the invoice is sent as an XML attachment in the Forum Datenaustausch format, and the SHIP message itself only carries process metadata and a reference to the invoice. The version of the Forum Datenaustausch invoice to be used with SHIP is defined by the respective eCH process standard; at the time of publication, eCH-0236 V2.0.0 and eCH-0253 V1.0.0 still reference generalInvoice 4.5. Process and messaging aspects of SHIP are not represented by the Claim resource and are out of scope of this profile.
