<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:uml="http://www.omg.org/spec/UML/20110701"
    xmlns:xmi="http://www.omg.org/spec/XMI/20110701"
    xmlns:vc="http://www.w3.org/2007/XMLSchema-versioning"
    xmlns:Stereotypes="http://www.magicdraw.com/schemas/Stereotypes.xmi" 
    exclude-result-prefixes="uml xmi Stereotypes" version="3.0">
    
    <xsl:output method="xml" indent="yes"/>
    <xsl:param name="data-file" required="true" />
    <xsl:strip-space  elements="*"/>
    <xsl:key name="ctxKey" match="context" use="@type"/>
    <xsl:variable name="assertions" select="document($data-file)"/>
    
    <xsl:template match="xs:schema">
        <xsl:copy>
            <xsl:attribute name="vc:minVersion">1.1</xsl:attribute>
            <xsl:apply-templates select="@*|*|text()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="*">
        <xsl:copy>
            <xsl:apply-templates select="@*|*|text()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="text()">
        <xsl:value-of select="normalize-space(.)"/>
    </xsl:template>
    
    <xsl:template match="@*">
        <xsl:copy/>
    </xsl:template>
    
    <!-- Elements with inheritance -->
    <xsl:template match="xs:extension">
        <xsl:copy>
            <xsl:apply-templates select="@*|*|text()"/>
            <xsl:apply-templates select="key('ctxKey',../../@name,$assertions)/rule"/>
        </xsl:copy>
    </xsl:template>
    
    <!-- Elements without inheritance -->
    <xsl:template match="xs:complexType[not(xs:complexContent)]">
        <xsl:copy>
            <xsl:apply-templates select="@*|*|text()"/>
            <xsl:apply-templates select="key('ctxKey',@name,$assertions)/rule"/>
        </xsl:copy>        
    </xsl:template>

    <xsl:template match="rule">
        <xs:assert>
            <xsl:attribute name="test" select="@test"></xsl:attribute>
            <xs:annotation>
                <xs:documentation xml:lang="en"><xsl:copy-of select="node()"/></xs:documentation>
            </xs:annotation>
        </xs:assert>
    </xsl:template>
</xsl:stylesheet>