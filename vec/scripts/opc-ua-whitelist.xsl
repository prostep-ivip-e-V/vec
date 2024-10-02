<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    xmlns:ua="http://opcfoundation.org/UA/2011/03/UANodeSet.xsd"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:def="http://www.prostep.org/ecad-if/2022/def"
    exclude-result-prefixes="xs xsi" version="2.0">
    
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>
       
    <xsl:template match="/">
        <def:whitelist>
            <xsl:apply-templates select="//ua:Field"></xsl:apply-templates>
        </def:whitelist>
    </xsl:template>
    
    <xsl:template match="ua:Field">
        <def:field>
            <xsl:attribute name="class" select="../../@BrowseName"></xsl:attribute>
            <xsl:attribute name="attribute" select="@Name"></xsl:attribute>
        </def:field>        
    </xsl:template>
    


</xsl:stylesheet>