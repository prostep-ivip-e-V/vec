<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"    
    xmlns:xml="http://www.w3.org/XML/1998/namespace"
    xmlns:xmi="http://www.omg.org/spec/XMI/20131001" 
    xmlns:uml="http://www.omg.org/spec/UML/20131001"
    xmlns:Stereotypes="http://www.magicdraw.com/schemas/Stereotypes.xmi"
    xmlns:MagicDraw_Profile="http://www.omg.org/spec/UML/20131001/MagicDrawProfile"
    xmlns:owl="http://www.w3.org/2002/07/owl#"
    xmlns:sh="http://www.w3.org/ns/shacl#"
    xmlns:xs="http://www.w3.org/2001/XMLSchema#" 
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
    exclude-result-prefixes="uml xmi Stereotypes MagicDraw_Profile owl" version="2.0">
    
    <xsl:import href="rdf-tools.xsl"/>
    
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>
    
    <xsl:key name="idlookup" match="*" use="@xmi:id"/>
    
    
    <xsl:param name="VEC_VERSION">2.1.0</xsl:param>
    <xsl:param name="strict">false</xsl:param>
    <xsl:param name="revision">not-set</xsl:param>
    <xsl:param name="timestamp">not-set</xsl:param>
    
    <xsl:variable name="VEC-PREFIX">vec</xsl:variable>
    <xsl:variable name="VEC-BASE-IRI" select="'https://ecad.prostep.org/2023/vec'"/>
    <xsl:variable name="VEC-NS-IRI" select=" concat($VEC-BASE-IRI,'#')"/>
    <xsl:variable name="VEC-SH-PREFIX">vecsh</xsl:variable>
    <xsl:variable name="VEC-SH-NS-IRI" select=" concat($VEC-BASE-IRI,'-shacl','#')"/>
    <xsl:variable name="VEC-VERSION-NS-IRI" select=" concat($VEC-BASE-IRI,'/',$VEC_VERSION,'#')"/>
    
    <xsl:template match="/">
        <rdf:RDF>
            <xsl:namespace name="{$VEC-PREFIX}" select="$VEC-NS-IRI"></xsl:namespace>
            <xsl:namespace name="{$VEC-SH-PREFIX}" select="$VEC-SH-NS-IRI"></xsl:namespace>
            <xsl:attribute name="xml:base" select="$VEC-NS-IRI"></xsl:attribute>
            
            <owl:Ontology rdf:about="{$VEC-SH-NS-IRI}">
                <owl:imports rdf:resource="http://www.w3.org/ns/shacl#"/>
                <owl:imports rdf:resource="{$VEC-NS-IRI}"/>
                <sh:declare>
                    <rdf:Description>
                        <sh:prefix>vec</sh:prefix>
                        <sh:namespace><xsl:value-of select="$VEC-NS-IRI"/></sh:namespace>
                    </rdf:Description>
                </sh:declare>                
                <sh:declare>
                    <rdf:Description>
                        <sh:prefix>vecsh</sh:prefix>
                        <sh:namespace><xsl:value-of select="$VEC-SH-NS-IRI"/></sh:namespace>
                    </rdf:Description>
                </sh:declare>
                <rdfs:label xml:lang="en">SHACL for Vehicle Electric Container</rdfs:label>
                <rdfs:comment xml:lang="en">
This shapes graph can be used to validate VEC graphs against the VEC Syntax rules (similiar to the XSD rules, plus a bit more..

This file is provided under the terms of the MIT license reproduced here.
Copyright © 2021 prostep ivip association

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.		

---------------------------------------------------------------------------------------------------

Generated Ontology from VEC model. Changelog can be found at https://track.prostep.com/browse/KBLFRM.
Attention: If this is a SNAPSHOT version, then this schema is produced by a nightly or preview build, 
is NO OFFICIAL RELEASE and can change at any time.

Version:   <xsl:value-of select="$VEC_VERSION"/>
Revision:  <xsl:value-of select="$revision"/>
Timestamp: <xsl:value-of select="$timestamp"/>
---------------------------------------------------------------------------------------------------                    
                </rdfs:comment>
            </owl:Ontology>
            
            <sh:NodeShape rdf:about="{$VEC-SH-NS-IRI}EnumerationShape">
                <sh:targetClass rdf:resource="#Enumeration"/>
                <sh:property>
                    <rdf:Description>
                        <sh:path rdf:resource="#enumLiteral"/>
                        <sh:datatype rdf:resource="http://www.w3.org/2001/XMLSchema#string"/>
                        <sh:minCount rdf:datatype="http://www.w3.org/2001/XMLSchema#integer">1</sh:minCount>
                        <sh:maxCount rdf:datatype="http://www.w3.org/2001/XMLSchema#integer">1</sh:maxCount>
                    </rdf:Description>
                </sh:property>
            </sh:NodeShape>
            
            <xsl:variable name="classes" select="xmi:XMI/uml:Model/packagedElement[@name='VEC']//packagedElement[@xmi:type='uml:Class' and not(@xmi:id=//MagicDraw_Profile:Legend/@base_Class)]"/>
            <xsl:variable name="enums" select="xmi:XMI/uml:Model/packagedElement[@name='VEC']//packagedElement[@xmi:type='uml:Enumeration']"/>
            
            <xsl:apply-templates select="$enums" mode="create-enums">
                <xsl:sort select="@name"/>
            </xsl:apply-templates>
            
            <xsl:apply-templates select="$classes" mode="create-class">
                <xsl:sort select="@name"/>
            </xsl:apply-templates>          
        </rdf:RDF>
    </xsl:template>
    
    <!-- ######################################################################################### -->
    <!-- ####      Classes                                                                     ### -->
    <!-- ######################################################################################### -->
    
    <xsl:template match="packagedElement[@xmi:type='uml:Class']" mode="create-class">
        <sh:NodeShape>
            <xsl:attribute name="rdf:about">
                   <xsl:apply-templates select="." mode="shape-name"></xsl:apply-templates>
            </xsl:attribute>
            <sh:targetClass>
                <xsl:apply-templates select="." mode="resource"></xsl:apply-templates>                
            </sh:targetClass>            
            <xsl:apply-templates select="." mode="subclass-of"/> 
            <xsl:apply-templates mode="properties"></xsl:apply-templates>
        </sh:NodeShape>
        
        <sh:NodeShape>
            <xsl:attribute name="rdf:about">
                <xsl:apply-templates select="." mode="inv-shape-name"></xsl:apply-templates>
            </xsl:attribute>
            <xsl:apply-templates select="." mode="subclass-of-inv"/> 
            <xsl:apply-templates mode="inverse-properties"></xsl:apply-templates>
            <sh:class><xsl:apply-templates select="." mode="resource"></xsl:apply-templates></sh:class>
        </sh:NodeShape>
    </xsl:template>
    
    <xsl:template match="*" mode="shape-name">
        <xsl:value-of select="$VEC-SH-NS-IRI"/>
        <xsl:apply-templates select="." mode="resource-name"></xsl:apply-templates>
        <xsl:text>Shape</xsl:text>
    </xsl:template>

    <xsl:template match="*" mode="inv-shape-name">
        <xsl:value-of select="$VEC-SH-NS-IRI"/>
        <xsl:apply-templates select="." mode="resource-name"></xsl:apply-templates>
        <xsl:text>InverseShape</xsl:text>
    </xsl:template>
    
    <xsl:template match="*" mode="enum-shape-name">
        <xsl:value-of select="$VEC-SH-NS-IRI"/>
        <xsl:apply-templates select="." mode="resource-name"></xsl:apply-templates>
        <xsl:text>EnumShape</xsl:text>
    </xsl:template>
    
    <xsl:template match="packagedElement[@xmi:type='uml:Class' and exists(generalization)]" mode="subclass-of-inv">
        <rdfs:subClassOf >
            <xsl:attribute name="rdf:resource">
                <xsl:apply-templates select="key('idlookup',generalization/@general)" mode="inv-shape-name"></xsl:apply-templates>
            </xsl:attribute>
        </rdfs:subClassOf>
    </xsl:template>
    
    <xsl:template match="packagedElement[@xmi:type='uml:Class' and exists(generalization)]" mode="subclass-of">
        <rdfs:subClassOf >
            <xsl:attribute name="rdf:resource">
                <xsl:apply-templates select="key('idlookup',generalization/@general)" mode="shape-name"></xsl:apply-templates>
            </xsl:attribute>
        </rdfs:subClassOf>
    </xsl:template>
    
    <xsl:template match="*[@xmi:type='uml:Enumeration']" mode="create-enums">
        <xsl:variable name="closedEnum" select="@xmi:id=//Stereotypes:ClosedEnumeration/@base_Enumeration"/>
        <xsl:if test="$strict or $closedEnum">
            <sh:NodeShape>
                <xsl:attribute name="rdf:about">
                    <xsl:apply-templates select="." mode="enum-shape-name"></xsl:apply-templates>
                </xsl:attribute>
                <sh:targetClass><xsl:apply-templates select="." mode="resource"></xsl:apply-templates></sh:targetClass>
                <xsl:if test="not($closedEnum)">
                    <sh:severity rdf:resource="http://www.w3.org/ns/shacl#Info"></sh:severity>
                </xsl:if>
                <sh:in rdf:parseType="Collection">
                    <xsl:apply-templates select="ownedLiteral" mode="enum-constraint"></xsl:apply-templates>
                </sh:in> 
            </sh:NodeShape>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="ownedLiteral" mode="enum-constraint">
        <rdf:Description>
            <xsl:apply-templates select="." mode="about"></xsl:apply-templates>
        </rdf:Description>
    </xsl:template>
    
    <!-- ######################################################################################### -->
    <!-- ####      Properties                                                                  ### -->
    <!-- ######################################################################################### -->
    
    <xsl:template match="ownedAttribute" mode="properties">        
        <xsl:variable name="type" select="key('idlookup',@type)"/>
        <xsl:if test="not(.//upperValue) or not(.//lowerValue)"><xsl:message select="concat(../@name,'.',@name, ' has missing cardinalities.')"></xsl:message></xsl:if>
        <sh:property>
            <rdf:Description>
                <sh:path>
                    <xsl:apply-templates select="." mode="resource"/>
                </sh:path>
                <xsl:apply-templates select="$type" mode="type-restriction"></xsl:apply-templates>
                <sh:minCount rdf:datatype="http://www.w3.org/2001/XMLSchema#integer"><xsl:apply-templates select=".//lowerValue" mode="create-cardinality-value"/></sh:minCount>                
                <xsl:variable name="upper">
                    <xsl:apply-templates select=".//upperValue" mode="create-cardinality-value"/>                    
                </xsl:variable>
                <xsl:if test="not($upper = '*')">
                    <sh:maxCount rdf:datatype="http://www.w3.org/2001/XMLSchema#integer"><xsl:value-of select="$upper"/></sh:maxCount>
                </xsl:if>
            </rdf:Description>
        </sh:property>           
    </xsl:template>
    

    
    <!-- ######################################################################################### -->
    <!-- ####      Inverse Properties                                                          ### -->
    <!-- ######################################################################################### -->
    
    <xsl:template match="ownedAttribute" mode="inverse-properties">
        <sh:targetSubjectsOf>
            <xsl:apply-templates select="." mode="resource"/>
        </sh:targetSubjectsOf>
    </xsl:template>
    
    
    <!-- ######################################################################################### -->
    <!-- ####       Cardinalities                                                              ### -->
    <!-- ######################################################################################### -->
    
    <xsl:template match="*[not(exists(@value))]" mode="create-cardinality-value">
        <xsl:value-of select="'0'"/>
    </xsl:template>
    
    <xsl:template match="*[exists(@value)]" mode="create-cardinality-value">
        <xsl:value-of select="@value"/>
    </xsl:template>
    
    <!-- ######################################################################################### -->
    <!-- ####       Type Restrictions                                                          ### -->
    <!-- ######################################################################################### -->
    
    <xsl:template match="*[@xmi:type='uml:PrimitiveType']" mode="type-restriction">
        <sh:datatype><xsl:apply-templates select="." mode="resource"/></sh:datatype>
    </xsl:template>
    
    <xsl:template match="*[@xmi:type='uml:Class' or @xmi:type='uml:Enumeration']" mode="type-restriction">
        <sh:class><xsl:apply-templates select="." mode="resource"/></sh:class>
    </xsl:template>
    
    <xsl:template match="*" mode="type-restriction">
        <xsl:message select="concat('Unhandled type:',@xmi:type)"></xsl:message>
    </xsl:template>
    
    
</xsl:stylesheet>