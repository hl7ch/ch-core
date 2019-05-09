<xsl:stylesheet version="2.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
 xmlns="http://hl7.org/fhir" 
 xmlns:fhir="http://hl7.org/fhir">

    <xsl:output method="xml" indent="yes" />
    
    <xsl:param name="canonicalBase" required="yes" />
    <xsl:param name="resourceId" required="yes" />
    <xsl:param name="codeSystem" required="yes" />

    <xsl:param name="vs2" select="'../templates/2.16.756.5.30.1.1.11.2.xml'" />
    <xsl:param name="doc2" select="document($vs2)" />

    <xsl:variable name="system" select="concat('urn:oid:',$codeSystem)" />
    <xsl:variable name="codes" select="//fhir:ValueSet/fhir:compose/fhir:include[fhir:system[@value=$system]]/fhir:concept" />
    <xsl:variable name="codes2" select="$doc2/fhir:ValueSet/fhir:compose/fhir:include[fhir:system[@value=$system]]/fhir:concept" />

<!--
 <compose>
      <include>
         <system value="urn:oid:0.4.0.127.0.16.1.1.2.1"/>
         <concept>
-->

    <xsl:variable name="url" select="//fhir:ValueSet/fhir:url/@value" />

    <xsl:template match="fhir:ValueSet">
      <fhir:CodeSystem>
         <xsl:apply-templates />
      </fhir:CodeSystem>    
    </xsl:template>

    <xsl:template match="fhir:ValueSet/fhir:id">
      <fhir:id>
			<xsl:attribute name="value"><xsl:value-of select="$resourceId" /></xsl:attribute>
      </fhir:id>    
    </xsl:template>

    <!-- add meta source value with original url -->
    <xsl:template match="fhir:meta">
      <fhir:meta>
         <fhir:source>
			      <xsl:attribute name="value"><xsl:value-of select="$url" /></xsl:attribute>
         </fhir:source>         
      </fhir:meta>      
    </xsl:template>

    <xsl:template match="fhir:ValueSet/fhir:url">
      <fhir:url>
			<xsl:attribute name="value">urn:oid:<xsl:value-of select="$codeSystem" /></xsl:attribute>
      </fhir:url>   
    </xsl:template>

    <!-- <name value="PharmaceuticalDoseFormEDQM"/> -->
    <xsl:template match="fhir:ValueSet/fhir:name">
      <fhir:name value="EdqmStandardTerms" />
    </xsl:template>

    <!-- <title value="Pharmaceutical Dose Form (EDQM)"/> -->
    <xsl:template match="fhir:ValueSet/fhir:title">
      <fhir:title value="EDQM - Standard Terms" />
    </xsl:template>
   
   <!-- <description value="Valueset RouteOuPharmaceutical Dose Form from EDQM, PDF, export 24.4.2018, see https://standardterms.edqm.eu/#"/> -->
    <xsl:template match="fhir:ValueSet/fhir:description">
      <fhir:description value="EDQM - Standard Terms used in Swizerland (aggregations of codes of ValueSets RouteOfAdmministartion, Dose Form, see original codes system defined in https://standardterms.edqm.eu/#)" />
    </xsl:template>

    <xsl:template match="fhir:ValueSet/fhir:immutable">
       <fhir:content value="complete"/>
    </xsl:template>

    <xsl:template match="fhir:ValueSet/fhir:compose">
    <!--
       we need to merge two codes of valuesets into this codesystem, otherwise below approach would work
       <xsl:apply-templates />
-->
        <xsl:apply-templates select="$codes" />
        <xsl:apply-templates select="$codes2" />
 
    </xsl:template>

<!--    <xsl:template match="fhir:concept/fhir:extension" /> -->


    <xsl:template match="fhir:ValueSet/fhir:compose/fhir:include">
       <xsl:apply-templates />
    </xsl:template>

   <xsl:template match="fhir:ValueSet/fhir:system/fhir:include/fhir:concept/fhir:system" /> 

    <!-- The Coding provided is not in the value set http://hl7.org/fhir/ValueSet/designation-use (http://hl7.org/fhir/ValueSet/designation-use, and a code should come from this value set unless it has no suitable code) (error message = The code system "http://art-decor.org/ADAR/rv/DECOR.xsd#DesignationType" is not known; The code provided (http://art-decor.org/ADAR/rv/DECOR.xsd#DesignationType#preferred) is not valid in the value set DesignationUse) -->
    <!-- remove it -->
    <xsl:template match="fhir:concept/fhir:designation/fhir:use" />

    <!--ValueSet.compose.include.concept[1].extension.valueString	warning	value should not start or finish with whitespace -->
    <xsl:template match="fhir:valueString/@value">
      <xsl:attribute name="value" namespace="{namespace-uri()}">
        <xsl:value-of select="replace(., '^\s+|\s+$', '')"/>
      </xsl:attribute>
    </xsl:template>

    <xsl:template match="node()|@*">
      <xsl:copy>
         <xsl:apply-templates select="node()|@*"/>
      </xsl:copy>
    </xsl:template>

   
</xsl:stylesheet>