<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    xmlns:uax="http://opcfoundation.org/UA/2008/02/Types.xsd" 
    xmlns="http://opcfoundation.org/UA/2011/03/UANodeSet.xsd" 
    xmlns:s1="http://opcfoundation.org/UA/WireHarness/Types.xsd" 
    xmlns:s2="http://opcfoundation.org/UA/DI/Types.xsd" 
    xmlns:s3="http://opcfoundation.org/UA/Machinery/Types.xsd" 
    xmlns:ua="http://unifiedautomation.com/Configuration/NodeSet.xsd" 
    xmlns:s4="http://opcfoundation.org/UA/Machinery/Jobs/Types.xsd" 
    xmlns:s5="http://opcfoundation.org/UA/ISA95-JOBCONTROL_V2/Types.xsd" 
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"    
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:xmi="http://www.omg.org/spec/XMI/20131001" 
    xmlns:uml="http://www.omg.org/spec/UML/20131001"
    xmlns:mt="http://www.prostep.org/ecad-if/2022/model-meta"
    xmlns:Stereotypes="http://www.magicdraw.com/schemas/Stereotypes.xmi"
    xmlns:MagicDraw_Profile="http://www.omg.org/spec/UML/20131001/MagicDrawProfile"
    exclude-result-prefixes="uml xmi Stereotypes MagicDraw_Profile xs mt" version="3.0">
    
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>

    <xsl:key name="nodeid-lookup" match="*" use="@xmi:id"></xsl:key>
    
    <xsl:variable name="nodeids-table">
        <xsl:for-each select="/xmi:XMI/uml:Model/packagedElement[@name='VEC']//packagedElement[@xmi:type='uml:Class' and not(@xmi:id=//MagicDraw_Profile:Legend/@base_Class)]">
            <element xmi:id="{@xmi:id}" nodeid="{concat('ns=',$PREFIX_NUM,';i=',position()+3000)}"/>
        </xsl:for-each>
    </xsl:variable>
    
    <xsl:key name="idlookup" match="*" use="@xmi:id"/>
    
    
        
    <xsl:variable name="VEC_PREFIX">vec</xsl:variable>
    <xsl:variable name="VEC_URL" select="'http://www.prostep.org/ecad-if/2011/vec'"/>
     
     <xsl:param name="VEC_VERSION">2.1.0</xsl:param>
     <xsl:param name="strict">true</xsl:param>
     <xsl:param name="revision">not-set</xsl:param>
     <xsl:param name="timestamp">not-set</xsl:param>
     <xsl:variable name="PREFIX_NUM" select="'1'"/>
     
    <!-- Header -->
    <xsl:template match="/">
        <UANodeSet>
            <NamespaceUris>
                <Uri>http://opcfoundation.org/UA/WireHarness/</Uri>
                <Uri>http://opcfoundation.org/UA/DI/</Uri>
                <Uri>http://opcfoundation.org/UA/Machinery/</Uri>
                <Uri>http://opcfoundation.org/UA/Machinery/Jobs/</Uri>
                <Uri>http://opcfoundation.org/UA/ISA95-JOBCONTROL_V2</Uri>
            </NamespaceUris>
            <Models>
                <Model ModelUri="http://opcfoundation.org/UA/WireHarness/" PublicationDate="2023-12-13T20:05:00Z" Version="1.0.0">
                    <RequiredModel ModelUri="http://opcfoundation.org/UA/" PublicationDate="2022-11-01T00:00:00Z" Version="1.05.02"/>
                    <RequiredModel ModelUri="http://opcfoundation.org/UA/DI/" PublicationDate="2023-12-13T20:28:47Z" Version="1.04.0"/>
                    <RequiredModel ModelUri="http://opcfoundation.org/UA/Machinery/" PublicationDate="2023-08-01T00:00:00Z" Version="1.03.0"/>
                    <RequiredModel ModelUri="http://opcfoundation.org/UA/ISA95-JOBCONTROL_V2" PublicationDate="2023-03-31T00:00:00Z" Version="2.0.0"/>
                    <RequiredModel ModelUri="http://opcfoundation.org/UA/Machinery/Jobs/" PublicationDate="2023-05-10T00:00:00Z" Version="1.0.0"/>
                </Model>
            </Models>
            <xsl:apply-templates select="xmi:XMI/uml:Model/packagedElement[@name='VEC']//packagedElement[@xmi:type='uml:Class' and not(@xmi:id=//MagicDraw_Profile:Legend/@base_Class)]" mode="create-type">
                <xsl:sort select="@name"/>
            </xsl:apply-templates>            
        </UANodeSet>
        <!--
        <xsl:element name="xs:schema">
            <xsl:attribute name="targetNamespace" select="$VEC_URL" />
            <xsl:attribute name="version" select="$VEC_VERSION"/>
            <xsl:namespace name="{$VEC_PREFIX}" select="$VEC_URL"/>
            <xsl:namespace name="mt" select="'http://www.prostep.org/ecad-if/2022/model-meta'"></xsl:namespace>
            <xsl:namespace name="xsi" select="'http://www.w3.org/2001/XMLSchema-instance'"/>

            <xsl:apply-templates select="key('idlookup',//*:xml_root/@base_Class)" mode="create-element"/>
            <xsl:apply-templates select="xmi:XMI/uml:Model/packagedElement[@name='VEC']//packagedElement[@xmi:type='uml:Class' and not(@xmi:id=//MagicDraw_Profile:Legend/@base_Class)]" mode="create-type">
                <xsl:sort select="@name"/>
            </xsl:apply-templates>
            <xsl:apply-templates select="xmi:XMI/uml:Model/packagedElement[@name='VEC']//packagedElement[not(@name = 'Date' or @name = 'String' or @name = 'Double' or @name = 'Integer'  or @name = 'Boolean') and (@xmi:type='uml:Enumeration' or @xmi:type='uml:PrimitiveType')]" mode="create-type">
                <xsl:sort select="@name"/>                
            </xsl:apply-templates>
        </xsl:element>
        -->
    </xsl:template>
    
    <xsl:template match="packagedElement[@xmi:type='uml:Class']" mode="create-type">
        <UADataType>
            <xsl:if test="@isAbstract='true'">
                <xsl:attribute name="isAbstract" select="'true'"/>
            </xsl:if>                       
            <xsl:attribute name="NodeId" select="key('nodeid-lookup',@xmi:id,$nodeids-table)/@nodeid"></xsl:attribute>
            <xsl:attribute name="BrowseName">
                <xsl:value-of select="concat($PREFIX_NUM,':')"/>
                <xsl:apply-templates select="." mode="create-name"/>
            </xsl:attribute>
            <DisplayName><xsl:apply-templates select="." mode="create-name"/></DisplayName>
                <xsl:if test="exists(generalization)">
                    <References>
                        <Reference ReferenceType="HasSubType" IsForward="false">
                            <xsl:value-of select="key('nodeid-lookup',generalization/@general,$nodeids-table)/@nodeid"/>
                        </Reference>
                    </References>
                </xsl:if>
            <Definition>
                <xsl:attribute name="Name">
                    <xsl:value-of select="concat($PREFIX_NUM,':')"/>
                    <xsl:apply-templates select="." mode="create-name"/>
                </xsl:attribute>            
                <xsl:apply-templates select="." mode="create-content"/>
            </Definition>
        </UADataType>
        <!--
        <xsl:element name="xs:complexType">
            <xsl:apply-templates select="." mode="create-name"/>
            

            
            <xsl:apply-templates select="." mode="meta-information"/>

            <xsl:apply-templates select="." mode="create-content-header"></xsl:apply-templates>
        </xsl:element>
        -->
    </xsl:template>
    
    <xsl:template match="packagedElement[@xmi:type='uml:Class']" mode="create-content">
        <!-- Simple attributes -->
        <xsl:variable name="attributes" select=".//ownedAttribute[@xmi:type='uml:Property' and not(exists(@association))]"/>
        <!-- Compositions -->
        <xsl:variable name="compositionEnds" select=".//ownedAttribute[@xmi:type='uml:Property' and exists(@association) and @aggregation='composite']"/>
        <!-- Associations -->
        <xsl:variable name="associationEnds" select=".//ownedAttribute[@xmi:type='uml:Property' and exists(@association) and not(@aggregation='composite')]"/>
        
        
        <xsl:if test="$attributes or $compositionEnds or $associationEnds">
            <xsl:apply-templates select="$attributes" mode="create-element"/>
            <xsl:apply-templates select="$associationEnds" mode="create-element">
                <xsl:sort select="@name" order="ascending" data-type="text"/>
            </xsl:apply-templates>
            <xsl:apply-templates select="$compositionEnds" mode="create-element">
                <xsl:sort select="@name" order="ascending" data-type="text"/>
            </xsl:apply-templates>
        </xsl:if>
    </xsl:template>
    
    
    <!-- normal Embedding -->
    
    <xsl:template match="ownedAttribute[@xmi:type='uml:Property' and  (not(exists(@association)) or @aggregation='composite')]" mode="create-element">
        <xsl:variable name="type" select="key('idlookup',@type)"/>
        <Field>
                        
            <xsl:apply-templates select="." mode="create-name"/>
            <xsl:attribute name="DataType"><xsl:apply-templates select="$type" mode="create-name"/></xsl:attribute>
            
            <!--
            <xsl:apply-templates select="$type" mode="create-type-ref"/>
            
            <xsl:apply-templates select=".//lowerValue" mode="create-cardinalities"/>
            <xsl:apply-templates select=".//upperValue" mode="create-cardinalities"/>
            
            <xsl:apply-templates select="." mode="meta-information"/>
            -->
        </Field>            
    </xsl:template>
    
    <!-- IDREF Mechanism -->
    
    <xsl:template match="ownedAttribute[@xmi:type='uml:Property' and exists(@association) and not(@aggregation='composite')]" mode="create-element">
        <!-- Don't create reference to enums and CDATAs -->
        <xsl:variable name="type" select="key('idlookup',@type)"/>
        <xsl:if test="not($type/@xmi:type='uml:Enumeration')">
            <!-- use role name if exists; otherwise use type name for name atttribute -->
            <Field DataType="String">
                <xsl:apply-templates select="." mode="create-name"/>                
            </Field>
                								
                
<!--                <xsl:variable name="lower">
                    <xsl:apply-templates select=".//lowerValue" mode="create-cardinality-value"/>
                </xsl:variable>
                <xsl:variable name="upper">
                    <xsl:apply-templates select=".//upperValue" mode="create-cardinality-value"/>                    
                </xsl:variable>
                
                <xsl:choose>
                    <xsl:when test="$upper='1'">
                        <xsl:attribute name="type">xs:IDREF</xsl:attribute>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:attribute name="type">xs:IDREFS</xsl:attribute>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:if test="$lower='0'">
                    <xsl:attribute name="minOccurs"><xsl:value-of select="$lower"/></xsl:attribute>
                </xsl:if>
                <!-\- Eigentlich überflüssig -\->
                <xsl:if test="$upper>'1' and $upper!='unbounded'">
                    <xsl:attribute name="maxOccurs">1</xsl:attribute>
                </xsl:if>
                
                <xsl:apply-templates select="." mode="meta-information"/>
                
-->        </xsl:if>		
    </xsl:template>
    
    <xsl:template match="ownedAttribute" mode="create-name">
        <xsl:choose>
            <xsl:when test="@name !=''">
                <xsl:attribute name="Name">
                    <xsl:apply-templates select="@name" mode="format-name"/>
                </xsl:attribute>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="key('idlookup',@type)" mode="create-name"/>								
            </xsl:otherwise>
        </xsl:choose>                
    </xsl:template>
    
    <xsl:template match="*" mode="create-name">
        <xsl:attribute name="Name">
            <xsl:apply-templates select="@name" mode="format-name"/>
        </xsl:attribute>
    </xsl:template>
    
    
    
    
    
    
    <xsl:template match="*" mode="meta-information">
        <xs:annotation>
            <xsl:apply-templates select="." mode="documentation"/>
            <xsl:element name="xs:appinfo">
                <xsl:apply-templates select="." mode="relationship-meta"/>
                <xsl:apply-templates select="." mode="deprecation"/>
                <xsl:apply-templates select="." mode="package"/>
            </xsl:element>
        </xs:annotation>
    </xsl:template>
    
    <xsl:template match="*" mode="package"/>
    
    <xsl:template match="packagedElement[@xmi:type='uml:Class' or @xmi:type='uml:Enumeration' or @xmi:type='uml:PrimitiveType']" mode="package">
        <xsl:element name="mt:package">
            <xsl:attribute name="name" select="../@name"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="*" mode="deprecation"/>
    
    <xsl:template match="ownedAttribute[@xmi:type='uml:Property' and exists(@association)]" mode="deprecation">
        <xsl:apply-templates select="key('idlookup',@association)" mode="deprecation"/>            
    </xsl:template>
    
    <xsl:template match="*[@xmi:id=//Stereotypes:Deprecated/@*]" mode="deprecation">
        <xsl:variable name="id" select="@xmi:id"/>
        <xsl:variable name="deprecation" select="//Stereotypes:Deprecated[@*=$id]"/>            
        <xsl:element name="mt:deprecated">
            <xsl:if test="$deprecation/@reason">
                <xsl:attribute name="reason"><xsl:value-of select="$deprecation/@reason"/></xsl:attribute>
            </xsl:if>
            <xsl:if test="$deprecation/@since">
                <xsl:attribute name="since"><xsl:value-of select="$deprecation/@since"/></xsl:attribute>
            </xsl:if>            
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="*" mode="relationship-meta"/>
    
    <xsl:template match="ownedAttribute[@xmi:type='uml:Property']" mode="relationship-meta">
        <xsl:element name="mt:relationship">
            <xsl:variable name="type" select="key('idlookup',@type)"/>
            <xsl:variable name="upper">
                <xsl:apply-templates select=".//upperValue" mode="create-cardinality-value"/>                    
            </xsl:variable>           
            <xsl:if test="exists(@association) and not(@aggregation='composite')">
                <xsl:apply-templates select="$type" mode="create-type-ref">
                    <xsl:with-param name="attribute-name" select="'element-type'"></xsl:with-param>
                </xsl:apply-templates>
            </xsl:if>
            <xsl:attribute name="relationship-type">
                <xsl:choose>
                    <xsl:when test="exists(@association) and not(@aggregation='composite')">Association</xsl:when>
                    <xsl:when test="exists(@association)">Composition</xsl:when>
                    <xsl:otherwise>Attribute</xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>            
            <xsl:if test="$upper!='1'">
                <xsl:if test="not(@aggregation='composite')">
                    <xsl:attribute name="unique" select="if (@isUnique = 'false') then false() else true()"/>
                </xsl:if>
                <xsl:attribute name="ordered" select="if (@isOrdered = 'true') then true() else false()"/>
            </xsl:if>                
        </xsl:element>       
    </xsl:template>
    
    <xsl:template match="*" mode="documentation">
        <xsl:apply-templates select="ownedComment" mode="documentation"/>
    </xsl:template>
    
    <xsl:template match="ownedComment[@xmi:type='uml:Comment']" mode="documentation">
        <xs:documentation xml:lang="en">
            <xsl:apply-templates select="@body" mode="documentation"/>
        </xs:documentation>
    </xsl:template>
    
    <xsl:template match="@body" mode="documentation">
        <xsl:value-of select="." disable-output-escaping="yes"/>
    </xsl:template>
    
    <!-- normal Embedding -->
    
    <xsl:template match="ownedAttribute[@xmi:type='uml:Property' and not(exists(@association))]" mode="documentation">           
        <xsl:apply-templates select="ownedComment" mode="documentation"/>            
    </xsl:template>
    
    <!-- IDREF Mechanism -->
    
    <xsl:template match="ownedAttribute[@xmi:type='uml:Property' and exists(@association)]" mode="documentation">
        <xsl:apply-templates select="key('idlookup',@association)/ownedComment" mode="documentation"/>            
    </xsl:template>
    
    
    <xsl:template match="packagedElement[@xmi:type='uml:Class' and exists(generalization)]" mode="create-content-header">
        <xsl:element name="xs:complexContent">
            <xsl:element name="xs:extension">
                <xsl:apply-templates select="key('idlookup',generalization/@general)" mode="create-type-ref">
                    <xsl:with-param name="attribute-name" select="'base'"/>
                </xsl:apply-templates>
                <xsl:apply-templates select="." mode="create-content"/>
            </xsl:element>
        </xsl:element>        
    </xsl:template>

    <xsl:template match="packagedElement[@xmi:type='uml:Class' and not(exists(generalization))]" mode="create-content-header">
        <xsl:apply-templates select="." mode="create-content"/>
        <xs:attribute name="id" type="xs:ID" use="required"></xs:attribute>
        <xs:attribute name="immutable-global-iri" type="xs:anyURI"></xs:attribute>
    </xsl:template>
    
    

    

    
    <xsl:template match="upperValue" mode="create-cardinalities">
        <xsl:variable name="cardinality">
            <xsl:apply-templates select="." mode="create-cardinality-value"/>
        </xsl:variable>
        <xsl:if test="$cardinality!='1'">
            <xsl:attribute name="maxOccurs"><xsl:value-of select="$cardinality"/></xsl:attribute>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="lowerValue" mode="create-cardinalities">
        <xsl:variable name="cardinality">
            <xsl:apply-templates select="." mode="create-cardinality-value"/>
        </xsl:variable>                
        <xsl:if test="$cardinality!='1'">
            <xsl:attribute name="minOccurs"><xsl:value-of select="$cardinality"/></xsl:attribute>
        </xsl:if>        
    </xsl:template>
    
    <xsl:template match="*[not(exists(@value))]" mode="create-cardinality-value">
        <xsl:value-of select="'0'"/>
    </xsl:template>

    <xsl:template match="*[exists(@value)]" mode="create-cardinality-value">
        <xsl:choose>
            <xsl:when test="@value='*'"><xsl:text>unbounded</xsl:text></xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="@value"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    
    <xsl:template match="packagedElement[@xmi:type='uml:Enumeration']" mode="create-type">
        <xs:simpleType>
            <xsl:apply-templates select="." mode="create-name"/>
            <xsl:apply-templates select="." mode="meta-information"/>
            <xs:restriction base="xs:string">                
            	<!-- Only if close enum -->
				<xsl:if test="$strict='true' or @xmi:id=//Stereotypes:ClosedEnumeration/@base_Enumeration">
					<xsl:apply-templates
						select="ownedLiteral[@xmi:type='uml:EnumerationLiteral']" />
				</xsl:if>
            </xs:restriction>
        </xs:simpleType>
    </xsl:template>
    
    
    <!-- Create a simple type for every uml:PrimitiveType -->
    <xsl:template match="packagedElement[@xmi:type='uml:PrimitiveType']" mode="create-type">
        <xs:simpleType>
            <xsl:apply-templates select="." mode="create-name"/>
            <xsl:apply-templates select="." mode="meta-information"/>
            <xs:restriction base="xs:string">                
                <!-- Only for pattern restrictions -->
                <xsl:if test="($strict='true' and @xmi:id=//Stereotypes:OpenPatternRestriction/@base_PrimitiveType) 
                    or @xmi:id=//Stereotypes:ClosedPatternRestriction/@base_Enumeration">
                    <xs:pattern>
                        <xsl:attribute name="value" select="ownedRule[@xmi:type='uml:Constraint']/specification/body"></xsl:attribute>
                    </xs:pattern>
                </xsl:if>
            </xs:restriction>
        </xs:simpleType>
    </xsl:template>
    
    <xsl:template match="ownedLiteral[@xmi:type='uml:EnumerationLiteral']">
        <xs:enumeration>
            <xsl:attribute name="value">
                <xsl:apply-templates select="@name" mode="format-name"/>
            </xsl:attribute>
            <xsl:apply-templates select="." mode="meta-information"/>           
        </xs:enumeration>		
    </xsl:template>    
  


    <xsl:template match="packagedElement[@xmi:type='uml:Class']" mode="create-element">
        <xsl:element name="xs:element">
            <xsl:attribute name="name"><xsl:apply-templates select="." mode="create-name"/></xsl:attribute>
            <xsl:attribute name="type"><xsl:apply-templates select="." mode="create-type-ref"/></xsl:attribute>
        </xsl:element>        
    </xsl:template>
    

           
    <xsl:template match="@*" mode="format-name">
        <xsl:variable name="tempName" select="normalize-space(.)"/>
        <xsl:variable name="name">
            <!-- strip leading '/' -->
            <xsl:if test="substring($tempName,1,1) != '/'">
                <xsl:value-of select="translate(substring($tempName,1,1),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
            </xsl:if>
            <xsl:value-of select="substring($tempName,2,string-length($tempName))"/>
        </xsl:variable>
        <xsl:value-of select="$name"/>
    </xsl:template>
    
    <xsl:template match="*" mode="create-type-ref">
        <xsl:param name="attribute-name" select="'type'"/>
        <xsl:variable name="name">
            <xsl:apply-templates select="@name" mode="format-name"/>
        </xsl:variable>
        <xsl:attribute name="{$attribute-name}">
            <xsl:choose>
                <xsl:when test="$name='Key_type'">
                    <xsl:text>xs:ID</xsl:text>
                </xsl:when>
                <xsl:when test="$name='String'">
                    <xsl:text>xs:string</xsl:text>
                </xsl:when>
                <xsl:when test="$name='Double'">
                    <xsl:text>xs:double</xsl:text>
                </xsl:when>
                <xsl:when test="$name='Integer'">
                    <xsl:text>xs:integer</xsl:text>
                </xsl:when>
                <xsl:when test="$name='Int'">
                    <xsl:text>xs:integer</xsl:text>
                </xsl:when>
                <xsl:when test="$name='Boolean'">
                    <xsl:text>xs:boolean</xsl:text>
                </xsl:when>
                <xsl:when test="$name='Date'">
                    <xsl:text>xs:dateTime</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="concat($VEC_PREFIX,':',$name)"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:attribute>
    </xsl:template>
    
    

<!-- Overriding default templates -->
    <xsl:template match="*"/>
    
    <xsl:template match="@*"/>
    

</xsl:stylesheet>