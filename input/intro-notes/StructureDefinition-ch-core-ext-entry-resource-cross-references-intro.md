### Scope and Usage

This Extension can be used to reference entry to entry in two different documents (i.e. Bundle[type=document]).
If you have to change attributes of an entry (i.e. Immunization) which is documented in a FHIR document Bundle/Composition,
you create a new document - or a copy of - with the same content.
* First you change the attributes of the entry which have to be changed.
* Second you add the *relatesTo* information to the *Composition* in the *new document*.
* Third you add this extension to the Immunization entry in the new document. 
  * The *entry* slice will be filled with the Identifier of the entry in the original document and define the resource type (Immunization). 
  * The *container* slice will be filled with the Identifier and resource type of the Composition in the original document.
  * The *relationcode* slice will be set with the corresponding code (i.e. replaces).

The following graphic describes the two documents with their entries and the extension with the references:
<div>{% include img.html img="ch-core-ext-entry-resource-cross-references.png" caption="Fig.: Entry Cross Reference Extension" width="70%" %}</div>

You can use this extension for all kind of resources and containers.


