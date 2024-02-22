<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xmi="http://www.omg.org/spec/XMI/20131001"     
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
    xmlns:ext="https://ecad.propstep.org/2023/xslt/extensions"
    exclude-result-prefixes="xs xmi ext"
    version="2.0">
    
    <!-- ######################################################################################### -->
    <!-- ####       Utilities                                                                  ### -->
    <!-- ######################################################################################### -->      
    
    <xsl:template match="*" mode="resource">
        <xsl:attribute name="rdf:resource"><xsl:apply-templates select="." mode="resource-iri"/></xsl:attribute>
    </xsl:template>
    
    <xsl:template match="*" mode="about">
        <xsl:attribute name="rdf:about"><xsl:apply-templates select="." mode="resource-iri"/></xsl:attribute>
    </xsl:template>
    
    <xsl:template match="*" mode="label">
        <rdfs:label xml:lang="en"><xsl:value-of select="@name"/></rdfs:label>
    </xsl:template>
    
    
    <xsl:template match="*" mode="resource-iri">        
        <xsl:text>#</xsl:text>
        <xsl:apply-templates select="." mode="resource-name"/>
    </xsl:template>
    
    <xsl:template match="*" mode="resource-name">
        <xsl:value-of select="ext:first-upper(@name)"/>
    </xsl:template>

    <xsl:template match="ownedAttribute" mode="resource-name">
        <xsl:if test="not(@name)"><xsl:message select="concat(../@name, ' has property with no name.')" /></xsl:if>
        <xsl:value-of select="ext:first-lower(../@name)"/>
        <xsl:value-of select="ext:first-upper(@name)"/>
    </xsl:template>
    
    <xsl:template match="ownedLiteral" mode="resource-name">
        <xsl:value-of select="ext:first-upper(../@name)"/>
        <xsl:text>_</xsl:text>
        <xsl:value-of select="ext:first-upper(@name)"/>
    </xsl:template>
    
   
    
    <xsl:template match="packagedElement[@xmi:type='uml:PrimitiveType']" mode="resource-iri" priority="3">
        <xsl:variable name="name" select="ext:first-upper(@name)"></xsl:variable>
        <xsl:choose>
            <xsl:when test="$name='String'">
                <xsl:text>http://www.w3.org/2001/XMLSchema#string</xsl:text>
            </xsl:when>
            <xsl:when test="$name='CodingName'">
                <xsl:text>http://www.w3.org/2001/XMLSchema#string</xsl:text>
            </xsl:when>
            <xsl:when test="$name='Double'">
                <xsl:text>http://www.w3.org/2001/XMLSchema#double</xsl:text>
            </xsl:when>
            <xsl:when test="$name='Integer'">
                <xsl:text>http://www.w3.org/2001/XMLSchema#integer</xsl:text>
            </xsl:when>
            <xsl:when test="$name='Int'">
                <xsl:text>http://www.w3.org/2001/XMLSchema#integer</xsl:text>
            </xsl:when>
            <xsl:when test="$name='Boolean'">
                <xsl:text>http://www.w3.org/2001/XMLSchema#boolean</xsl:text>
            </xsl:when>
            <xsl:when test="$name='Date'">
                <xsl:text>http://www.w3.org/2001/XMLSchema#dateTime</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:message select="concat('Found undefined primitive type: ' , $name)" terminate="yes"></xsl:message>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:function name="ext:first-lower">
        <xsl:param name="value" as="xs:string"  />
        <xsl:variable name="tempValue" select="ext:prep-name($value)"/>
        <xsl:value-of select="concat(translate(substring($tempValue,1,1),'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),substring($tempValue,2,string-length($tempValue)))"/>
    </xsl:function>

    <xsl:function name="ext:first-upper">
        <xsl:param name="value" as="xs:string"/>
        <xsl:variable name="tempValue" select="ext:prep-name($value)"/>
        <xsl:value-of select="concat(translate(substring($tempValue,1,1),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),substring($tempValue,2,string-length($tempValue)))"/>
    </xsl:function>
    

    <xsl:function name="ext:prep-name" >
        <xsl:param name="value" as="xs:string"/>
        <xsl:value-of select="encode-for-uri(normalize-space($value))"></xsl:value-of>
    </xsl:function>
    
    <!-- ######################################################################################### -->
    <!-- ####       RDF COMMENTS                                                               ### -->
    <!-- ######################################################################################### -->
    
    <xsl:template match="*" mode="comment">
        <xsl:apply-templates select="ownedComment" mode="comment"/>
    </xsl:template>
    
    <xsl:template match="ownedAttribute[@xmi:type='uml:Property' and exists(@association)]" mode="comment">
        <xsl:apply-templates select="key('idlookup',@association)/ownedComment" mode="comment"/>            
    </xsl:template>
    
    <xsl:template match="ownedComment[@xmi:type='uml:Comment']" mode="comment">
        <rdfs:comment xml:lang="en">                        
            <xsl:apply-templates select="@body" mode="comment" />
        </rdfs:comment>
    </xsl:template>
    
    <xsl:template match="@body" mode="comment">
        <xsl:choose>
            <xsl:when test="starts-with(.,'&lt;html&gt;')">                
                <xsl:apply-templates select="parse-xml(.)/html/body/(*|text())" mode="sanitize-html"></xsl:apply-templates>
            </xsl:when>
            <xsl:otherwise><xsl:value-of select="."/></xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="p" mode="sanitize-html" xml:space="preserve"><xsl:apply-templates mode="sanitize-html"></xsl:apply-templates><xsl:text>&#10;</xsl:text></xsl:template>
    
    <xsl:template match="*" mode="sanitize-html">
        <xsl:text> </xsl:text>
        <xsl:apply-templates mode="sanitize-html"></xsl:apply-templates>
        <xsl:text> </xsl:text>
    </xsl:template>
    
    <xsl:template match="text()" mode="sanitize-html" >
        <xsl:value-of select="normalize-space(.)" />
    </xsl:template>
    
    <!-- UniqueNess & Order -->
    
    <xsl:function name="ext:isAssociation" as="xs:boolean">
        <xsl:param name="ownedAttribute"/>
        <xsl:sequence select="exists($ownedAttribute/@association) and not(($ownedAttribute/@aggregation='composite'))"></xsl:sequence>        
    </xsl:function>
    
    <xsl:function name="ext:isNonUniqueOrOrdered" as="xs:boolean">
        <xsl:param name="ownedAttribute"/>
        <xsl:variable name="upper">
            <xsl:apply-templates select="$ownedAttribute//upperValue" mode="create-cardinality-value"/>                    
        </xsl:variable>   
        <xsl:sequence select="($upper != '1') and (($ownedAttribute/@isUnique='false') or ($ownedAttribute/@isOrdered='true'))"/>
    </xsl:function>
    
    <xsl:function name="ext:bucketClassName" as="xs:string">
        <xsl:param name="type"></xsl:param>
        <xsl:variable name="name">
            <xsl:apply-templates select="$type" mode="resource-name"/>
        </xsl:variable>
        <xsl:sequence select="concat($name,'Wrapper')"></xsl:sequence>
    </xsl:function>
    
    <!-- Overriding default templates -->
    <xsl:template match="*"/>
    
    <xsl:template match="@*"/>
    
    
</xsl:stylesheet>