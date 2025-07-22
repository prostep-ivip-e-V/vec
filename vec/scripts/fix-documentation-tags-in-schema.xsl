<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:uml="http://www.omg.org/spec/UML/20110701"
    xmlns:mt="http://www.prostep.org/ecad-if/2022/model-meta"
    xmlns:xmi="http://www.omg.org/spec/XMI/20110701" xmlns:Stereotypes="http://www.magicdraw.com/schemas/Stereotypes.xmi" exclude-result-prefixes="uml xmi Stereotypes" version="3.0">
    
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space  elements="*"/>
    
    <xsl:template match="xs:appinfo[not(*)]"/>
    
    <xsl:template match="xs:annotation[not(xs:appinfo/*) and not(xs:documentation)]"/>
    
    <xsl:template match="mt:deprecated/@reason">
        <xsl:attribute name="reason"
            select="replace(., '.*&lt;body&gt;(.*)&lt;/body&gt;.*', '$1', 's')"/>
    </xsl:template>
    
    <xsl:template match="html">
        <xsl:apply-templates select="body/*" />
    </xsl:template>
        
    <xsl:template match="node()">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="text()" priority="2">
        <xsl:value-of select="normalize-space(.)"/>
    </xsl:template>
    
    <xsl:template match="@*">
        <xsl:copy/>
    </xsl:template>
    

</xsl:stylesheet>