<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"    
    xmlns:xs="http://www.w3.org/2001/XMLSchema#" 
    xmlns:xmi="http://www.omg.org/spec/XMI/20131001" 
    xmlns:uml="http://www.omg.org/spec/UML/20131001"
    xmlns:Stereotypes="http://www.magicdraw.com/schemas/Stereotypes.xmi"
    xmlns:MagicDraw_Profile="http://www.omg.org/spec/UML/20131001/MagicDrawProfile"
    xmlns:owl="http://www.w3.org/2002/07/owl#"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:xml="http://www.w3.org/XML/1998/namespace"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
    exclude-result-prefixes="uml xmi Stereotypes MagicDraw_Profile" version="2.0">
    
    <xsl:import href="rdf-tools.xsl"/>
    
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>
    
    <xsl:key name="idlookup" match="*" use="@xmi:id"/>
    
     
     <xsl:param name="VEC_VERSION">2.1.0</xsl:param>
     <xsl:param name="strict">true</xsl:param>
     <xsl:param name="revision">not-set</xsl:param>
     <xsl:param name="timestamp">not-set</xsl:param>

    <xsl:variable name="VEC-PREFIX">vec</xsl:variable>
    <xsl:variable name="VEC-BASE-IRI" select="'https://ecad.prostep.org/2023/vec'"/>
    <xsl:variable name="VEC-NS-IRI" select=" concat($VEC-BASE-IRI,'#')"/>
    <xsl:variable name="VEC-VERSION-NS-IRI" select=" concat($VEC-BASE-IRI,'/',$VEC_VERSION,'#')"/>
    
    <xsl:template match="/">
        <rdf:RDF>
            <xsl:namespace name="{$VEC-PREFIX}" select="$VEC-NS-IRI"></xsl:namespace>
            <xsl:attribute name="xml:base" select="$VEC-NS-IRI"></xsl:attribute>
            
            <owl:Ontology rdf:about="{$VEC-NS-IRI}">
                <owl:versionIRI rdf:resource="{$VEC-VERSION-NS-IRI}"/>
                <rdfs:label xml:lang="en">Vehicle Electric Container Ontology</rdfs:label>
                <rdfs:comment xml:lang="en">
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
            
            <owl:Class rdf:about="#Enumeration">
                <rdfs:label xmlns:xmi="http://www.omg.org/spec/XMI/20131001" xml:lang="en">Enumeration</rdfs:label>
                <rdfs:comment xmlns:xmi="http://www.omg.org/spec/XMI/20131001" xml:lang="en">Classes in the model that can be enumerated, either closed or open (see VEC Specicification)</rdfs:comment>                
            </owl:Class>

            <owl:Class rdf:about="#OpenEnumeration">
                <rdfs:label xmlns:xmi="http://www.omg.org/spec/XMI/20131001" xml:lang="en">OpenEnumeration</rdfs:label>
                <rdfs:comment xmlns:xmi="http://www.omg.org/spec/XMI/20131001" xml:lang="en">Classes in the model where some value can be enumerated, but not all values are known (Open).</rdfs:comment>
                <rdfs:subClassOf rdf:resource="#Enumeration"/>
            </owl:Class>
            
            <owl:Class rdf:about="#ClosedEnumeration">
                <rdfs:label xmlns:xmi="http://www.omg.org/spec/XMI/20131001" xml:lang="en">ClosedEnumeration</rdfs:label>
                <rdfs:comment xmlns:xmi="http://www.omg.org/spec/XMI/20131001" xml:lang="en">Classes in the model that can be enumerated and where all values are known (closed).</rdfs:comment>
                <rdfs:subClassOf rdf:resource="#Enumeration"/>
            </owl:Class>
            
            

            <xsl:variable name="classes" select="xmi:XMI/uml:Model/packagedElement[@name='VEC']//packagedElement[@xmi:type='uml:Class' and not(@xmi:id=//MagicDraw_Profile:Legend/@base_Class)]"/>
            <xsl:variable name="enums" select="xmi:XMI/uml:Model/packagedElement[@name='VEC']//packagedElement[@xmi:type='uml:Enumeration' and not(@xmi:id=//MagicDraw_Profile:Legend/@base_Class)]"/>
            
            <xsl:apply-templates select="$classes" mode="create-class">
                <xsl:sort select="@name"/>
            </xsl:apply-templates>
            <xsl:apply-templates select="$classes//ownedAttribute[@xmi:type='uml:Property']" mode="dataproperties">
                <xsl:sort select="../@name"></xsl:sort>
                <xsl:sort select="@name"></xsl:sort>
            </xsl:apply-templates>
            <xsl:apply-templates select="$classes//ownedAttribute[@xmi:type='uml:Property']" mode="objectproperties">
                <xsl:sort select="../@name"></xsl:sort>
                <xsl:sort select="@name"></xsl:sort>
            </xsl:apply-templates>
            
            <xsl:apply-templates select="$enums" mode="create-class">
                <xsl:sort select="@name"/>
            </xsl:apply-templates>
            
            <!-- General Extensions of the UML Model -->
            
            <owl:ObjectProperty rdf:about="#contains">
                <rdfs:label xml:lang="en">contains</rdfs:label>
                <rdfs:comment xml:lang="en">This is the representation of the containment modeled in the UML. All associations that are a "containment" in the UML model are subproperties of this property.</rdfs:comment>
            </owl:ObjectProperty>

            <owl:ObjectProperty rdf:about="#parent">
                <rdfs:label xml:lang="en">parent</rdfs:label>
                <rdfs:comment xml:lang="en">The inverse of 'contains'.</rdfs:comment>
                <owl:inverseOf rdf:resource="#contains"/>                
            </owl:ObjectProperty>
            
            <xsl:for-each-group select="$classes" group-by="if (generalization/@general) then generalization/@general else 'root'" >
                <owl:AllDisjointClasses>
                    <owl:members rdf:parseType="Collection">
                        <xsl:for-each select="current-group()">
                            <rdf:Description>
                                <xsl:apply-templates select="." mode="about"/>
                            </rdf:Description>
                        </xsl:for-each>
                    </owl:members>
                </owl:AllDisjointClasses>
            </xsl:for-each-group>
        </rdf:RDF>
    </xsl:template>
    
    <!-- Start Classes -->
    
    <xsl:template match="packagedElement[@xmi:type='uml:Class']" mode="create-class">
        <owl:Class>
            <xsl:apply-templates select="." mode="about"></xsl:apply-templates>
            <xsl:apply-templates select="." mode="label"/>
            <xsl:apply-templates select="." mode="comment"/>
            <xsl:apply-templates select="." mode="deprecation"/>
            <xsl:apply-templates select="." mode="subclass-of"/>
            <!--
            <xsl:apply-templates select="ownedAttribute" mode="property-restrictions"/>
            -->
        </owl:Class>
    </xsl:template>
    
    <xsl:template match="ownedAttribute" mode="property-restrictions">
        <xsl:variable name="type" select="key('idlookup',@type)"/>
        <owl:equivalentClass>
            <owl:Restriction>
                <owl:onProperty>
                    <xsl:apply-templates select="." mode="resource"/>
                </owl:onProperty>
                <owl:allValuesFrom>
                    <xsl:apply-templates select="$type" mode="resource"/>
                </owl:allValuesFrom>
            </owl:Restriction>
        </owl:equivalentClass>
    </xsl:template>
    
    <xsl:template match="packagedElement[@xmi:type='uml:Enumeration']" mode="create-class">
        <owl:Class>
            <xsl:apply-templates select="." mode="about"></xsl:apply-templates>
            <xsl:apply-templates select="." mode="label"/>
            <xsl:apply-templates select="." mode="comment"/>
            <xsl:apply-templates select="." mode="deprecation"/>
            <xsl:choose>
                <xsl:when test="@xmi:id=//Stereotypes:ClosedEnumeration/@base_Enumeration">
                    <rdfs:subClassOf rdf:resource="#ClosedEnumeration"></rdfs:subClassOf>
                    <owl:equivalentClass>
                        <owl:Class>
                            <owl:oneOf rdf:parseType="Collection">
                                <xsl:apply-templates select="ownedLiteral" mode="create-class"></xsl:apply-templates> 
                            </owl:oneOf>
                        </owl:Class>
                    </owl:equivalentClass>
                </xsl:when>
                <xsl:otherwise>
                    <rdfs:subClassOf rdf:resource="#OpenEnumeration"></rdfs:subClassOf>
                </xsl:otherwise>
            </xsl:choose>
        </owl:Class>
        
        <xsl:apply-templates select="ownedLiteral" mode="literals"></xsl:apply-templates>                  
    </xsl:template>

    <xsl:template match="ownedLiteral" mode="create-class">
        <rdf:Description>
            <xsl:apply-templates select="." mode="about"/>
        </rdf:Description>
    </xsl:template>
    

    <xsl:template match="ownedLiteral" mode="literals">
        <owl:NamedIndividiual>
            <xsl:apply-templates select="." mode="about"/>
            <xsl:apply-templates select="." mode="label"/>
            <xsl:apply-templates select="." mode="comment"/>
            <rdf:type>
                <xsl:apply-templates select=".." mode="resource"></xsl:apply-templates>
            </rdf:type>            
        </owl:NamedIndividiual>
    </xsl:template>
    
    <xsl:template match="packagedElement[@xmi:type='uml:Class' and exists(generalization)]" mode="subclass-of">
        <rdfs:subClassOf >
            <xsl:apply-templates select="key('idlookup',generalization/@general)" mode="resource"></xsl:apply-templates>
        </rdfs:subClassOf>
    </xsl:template>
    
    <!-- End Classes -->
    
    <!-- ######################################################################################### -->
    <!-- ####       DataProperties                                                             ### -->
    <!-- ######################################################################################### -->
    
    <xsl:template match="ownedAttribute[key('idlookup',@type)[@xmi:type='uml:PrimitiveType']]" mode="dataproperties">
        <xsl:variable name="type" select="key('idlookup',@type)"/>
        <owl:DatatypeProperty>
            <xsl:apply-templates select="." mode="about"/>
            <xsl:apply-templates select="." mode="label"/>
            <xsl:apply-templates select="." mode="comment"/>
            <xsl:apply-templates select="." mode="deprecation"/>
            <!--
            <rdfs:range>
                <xsl:apply-templates select="$type" mode="resource"/>
            </rdfs:range>
            -->
        </owl:DatatypeProperty>
    </xsl:template>
    
    <!-- ######################################################################################### -->
    <!-- ####       ObjectProperties                                                           ### -->
    <!-- ######################################################################################### -->
    
    
    <xsl:template match="ownedAttribute[key('idlookup',@type)[not(@xmi:type='uml:PrimitiveType')]]" mode="objectproperties">
        <xsl:variable name="type" select="key('idlookup',@type)"/>
        <owl:ObjectProperty>
            <xsl:apply-templates select="." mode="about"/>
            <xsl:apply-templates select="." mode="label"/>
            <xsl:apply-templates select="." mode="comment"/>
            <xsl:apply-templates select="." mode="deprecation"/>
            
            <!--
            <rdfs:range>
                <xsl:apply-templates select="$type" mode="resource"/>
            </rdfs:range>
            <rdfs:domain>
                <xsl:apply-templates select=".." mode="resource"/>
            </rdfs:domain> -->
            <xsl:if test="not(exists(@association)) or (@aggregation='composite')">
            <rdfs:subPropertyOf rdf:resource="#contains"/>
            </xsl:if>
            
        </owl:ObjectProperty>
    </xsl:template>
    
    <!-- ######################################################################################### -->
    <!-- ####       Disjoint Classes                                                           ### -->
    <!-- ######################################################################################### -->

    
    <!-- ######################################################################################### -->
    <!-- ####      Deprecation                                                                 ### -->
    <!-- ######################################################################################### -->
    
    <xsl:template match="*" mode="deprecation"/>
    
    <xsl:template match="ownedAttribute[@xmi:type='uml:Property' and exists(@association)]" mode="deprecation">
        <xsl:apply-templates select="key('idlookup',@association)" mode="deprecation"/>            
    </xsl:template>
    
    <xsl:template match="*[@xmi:id=//Stereotypes:Deprecated/@*]" mode="deprecation">
        <owl:deprecated rdf:datatype="http://www.w3.org/2001/XMLSchema#boolean">true</owl:deprecated>
        <rdfs:comment xml:lang="en">
            <xsl:variable name="id" select="@xmi:id"/>
            <xsl:variable name="deprecation" select="//Stereotypes:Deprecated[@*=$id]"/>            
            <xsl:if test="$deprecation/@reason">
                <xsl:value-of select="$deprecation/@reason"/>
            </xsl:if>
            <xsl:if test="$deprecation/@since">
                <xsl:text>&#10;Since: </xsl:text>
                <xsl:value-of select="$deprecation/@since"/>
            </xsl:if>            
        </rdfs:comment>
    </xsl:template>
    
    

</xsl:stylesheet>