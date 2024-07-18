<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    xmlns:ua="http://opcfoundation.org/UA/2011/03/UANodeSet.xsd"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    exclude-result-prefixes="xs xsi" version="2.0">
    
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>
    
    <xsl:template match="/">
        <whitelist>
            <xsl:apply-templates select="//(ua:UADataType|ua:UAObjectType)"/>                            
        </whitelist>
    </xsl:template>
    
    <xsl:template match="ua:UADataType|ua:UAObjectType">
        <class><xsl:attribute name="name" select="ua:DisplayName"/>
            <xsl:apply-templates select="ua:Definition/ua:Field"/>
        </class>
    </xsl:template>
    
    <xsl:template match="ua:Field">
        <attribute><xsl:value-of select="@Name"/></attribute>
    </xsl:template>


</xsl:stylesheet>