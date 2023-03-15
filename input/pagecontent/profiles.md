### Resource Profiles
The following profiles set the minimum expectations to record, search and fetch health data associated with a Patient:

{% include list-profiles.xhtml %}


### Data Type Profiles
These define constraints on FHIR data types for systems conforming to this implementation guide:

  <div>
{% for sd_hash in site.data.structuredefinitions -%}
{%- assign sd = sd_hash[1] -%}
{%- if sd.kind  == "complex-type" and sd.type != "Extension" -%}

    <li>
      <a href="{{sd.path}}">{{sd.title}}</a>
    </li>
{%- endif -%}
{%- endfor -%}  

  </div>
