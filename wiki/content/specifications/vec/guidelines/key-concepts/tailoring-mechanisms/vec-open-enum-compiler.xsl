<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:uml="http://www.omg.org/spec/UML/20110701"
    xmlns:xmi="http://www.omg.org/spec/XMI/20110701" xmlns:Stereotypes="http://www.magicdraw.com/schemas/Stereotypes.xmi" exclude-result-prefixes="uml xmi Stereotypes" version="3.0">
    
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space  elements="*"/>
    <xsl:key name="enumKey" match="enum" use="@type"/>
    <xsl:variable name="enum-literal" select="document('enum-literals.xml')"/>
    
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
    
    <xsl:template match="xs:restriction">
        <xsl:copy>
            <xsl:copy-of select="@*|*|text()"/>
            <xsl:apply-templates select="key('enumKey',../@name,$enum-literal)/literal"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="literal">
        <xs:enumeration>
            <xsl:attribute name="value" select="@name"></xsl:attribute>
            <xsl:if test="node()">
                <xs:annotation>
                    <xs:documentation xml:lang="en">
                        <xsl:apply-templates select="node()"/>
                    </xs:documentation>
                </xs:annotation>
            </xsl:if>
         </xs:enumeration>
    </xsl:template>
</xsl:stylesheet>