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
        <xsl:for-each select="/xmi:XMI/uml:Model/packagedElement[@name='VEC']//packagedElement[(@xmi:type='uml:Class' or @xmi:type='uml:Enumeration')and not(@xmi:id=//MagicDraw_Profile:Legend/@base_Class)]
            | /xmi:XMI/uml:Model/packagedElement[@name='VEC']//packagedElement[@xmi:type='uml:Enumeration']/ownedLiteral[@xmi:type='uml:EnumerationLiteral']">
            <element xmi:id="{@xmi:id}" nodeid="{concat('ns=',$PREFIX_NUM,';i=',position()+3000)}"/>
        </xsl:for-each>
    </xsl:variable>
    
    <xsl:key name="idlookup" match="*" use="@xmi:id"/>
    
    
        
    <xsl:variable name="VEC_PREFIX">vec</xsl:variable>
    <xsl:variable name="VEC_URL" select="'http://www.prostep.org/ecad-if/2011/vec'"/>
    
    <xsl:variable name="VEC_OPC_NS" select="'http://opcfoundation.org/UA/WireHarness/VEC/'"></xsl:variable>
     
     <xsl:param name="VEC_VERSION">2.1.0</xsl:param>
     <xsl:param name="strict">true</xsl:param>
     <xsl:param name="revision">not-set</xsl:param>
     <xsl:param name="timestamp">not-set</xsl:param>
     <xsl:variable name="PREFIX_NUM" select="'1'"/>
     
    <!-- Header -->
    <xsl:template match="/">
        <UANodeSet>
            <NamespaceUris>
                <Uri><xsl:value-of select="$VEC_OPC_NS"/></Uri>
            </NamespaceUris>
            <Models>
                <Model ModelUri="{$VEC_OPC_NS}" PublicationDate="2023-12-13T20:05:00Z" Version="1.0.0">
                    <RequiredModel ModelUri="http://opcfoundation.org/UA/" PublicationDate="2022-11-01T00:00:00Z" Version="1.05.02"/>
                </Model>
            </Models>
            <Aliases>
                <Alias Alias="Boolean">i=1</Alias>
                <Alias Alias="Integer">i=6</Alias>
                <Alias Alias="Double">i=11</Alias>
                <Alias Alias="String">i=12</Alias>
                <Alias Alias="DateTime">i=13</Alias>
                <Alias Alias="ByteString">i=15</Alias>
                <Alias Alias="NodeId">i=17</Alias>
                <Alias Alias="HasModellingRule">i=37</Alias>
                <Alias Alias="HasEncoding">i=38</Alias>
                <Alias Alias="HasDescription">i=39</Alias>
                <Alias Alias="HasTypeDefinition">i=40</Alias>
                <Alias Alias="HasSubtype">i=45</Alias>
                <Alias Alias="HasProperty">i=46</Alias>
                <Alias Alias="HasComponent">i=47</Alias>
                <Alias Alias="IdType">i=256</Alias>
                <Alias Alias="NumericRange">i=291</Alias>
                <Alias Alias="Range">i=884</Alias>
                <Alias Alias="EUInformation">i=887</Alias>
            </Aliases>
            <xsl:apply-templates select="xmi:XMI/uml:Model/packagedElement[@name='VEC']//packagedElement[(@xmi:type='uml:Class' or @xmi:type='uml:Enumeration')and not(@xmi:id=//MagicDraw_Profile:Legend/@base_Class)]" mode="create-type">
                <xsl:sort select="@name"/>
            </xsl:apply-templates>         
        </UANodeSet>
    </xsl:template>
    
    <xsl:template match="packagedElement[@xmi:type='uml:Class']" mode="create-type">
        <UADataType>
            <xsl:if test="@isAbstract='true'">
                <xsl:attribute name="IsAbstract" select="'true'"/>
            </xsl:if>                       
            <xsl:attribute name="NodeId" select="key('nodeid-lookup',@xmi:id,$nodeids-table)/@nodeid"></xsl:attribute>
            <xsl:attribute name="BrowseName">
                <xsl:value-of select="concat($PREFIX_NUM,':')"/>
                <xsl:apply-templates select="." mode="create-name"/>
            </xsl:attribute>            
            <DisplayName><xsl:apply-templates select="@name" mode="format-name"/></DisplayName>
            <Documentation><xsl:apply-templates select="." mode="documentation"/></Documentation>            
            <References>                
                <xsl:choose>
                    <xsl:when test="exists(generalization)">
                        <Reference ReferenceType="HasSubType" IsForward="false">
                            <xsl:value-of select="key('nodeid-lookup',generalization/@general,$nodeids-table)/@nodeid"/>
                        </Reference>                        
                    </xsl:when>
                    <xsl:otherwise>
                        <Reference ReferenceType="HasSubType" IsForward="false">i=22</Reference>
                    </xsl:otherwise>
                </xsl:choose>
            </References>
            <Definition>
                <xsl:attribute name="Name">
                    <xsl:value-of select="concat($PREFIX_NUM,':')"/>
                    <xsl:apply-templates select="." mode="create-name"/>
                </xsl:attribute>            
                <xsl:apply-templates select="." mode="create-content"/>
            </Definition>
        </UADataType>
    </xsl:template>

    <!-- Ignore VEC Units -->
    <!-- TODO Enumerations -->
    <xsl:template match="packagedElement[(@xmi:type='uml:Class' or @xmi:type='uml:Enumeration')and 
        (@name = 'Unit' or @name = 'SIUnit' or @name = 'OtherUnit' or 
        @name = 'IECUnit' or @name = 'USUnit' or @name = 'CustomUnit' or 
        @name = 'CompositeUnit' or @name = 'ImperialUnit' or 
        @name = 'SiPrefix' or @name = 'SiUnitName' or @name = 'OtherUnitName' or 
        @name = 'IECPrefix' or @name = 'IECUnitName') or @name = 'ImperialUnitName'or 
        @name = 'USUnitName']" mode="create-type" priority="5"></xsl:template>
    
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


    <!-- Ignore VEC Units -->
    <xsl:template match="ownedAttribute[@xmi:type='uml:Property' and  (not(exists(@association)) or @aggregation='composite') and key('idlookup',@type)[@name='Unit']]" mode="create-element" priority="3">
    </xsl:template>
    
    <!-- reference OPC UA Unit -->

    <xsl:template match="ownedAttribute[@xmi:type='uml:Property' and key('idlookup',@type)[@name='Unit']]" mode="create-element" priority="2">
        <Field DataType="EUInformation">
            <xsl:apply-templates select="." mode="create-name"/>      
            <xsl:apply-templates select="." mode="multiplicity-attributes"/>
            <Description><xsl:apply-templates select="." mode="documentation"/></Description>
        </Field>        
    </xsl:template>
    
    <!-- normal Embedding -->
    
    <xsl:template match="ownedAttribute[@xmi:type='uml:Property' and  (not(exists(@association)) or @aggregation='composite')]" mode="create-element">
        <xsl:variable name="type" select="key('idlookup',@type)"/>
        <Field>
            <xsl:apply-templates select="." mode="multiplicity-attributes"/>                        
            <xsl:apply-templates select="." mode="create-name"/>
            <xsl:attribute name="DataType"><xsl:apply-templates select="$type" mode="create-type-ref"/></xsl:attribute>
            <Description><xsl:apply-templates select="." mode="documentation"/></Description>
        </Field>            
    </xsl:template>
    
    <!-- IDREF Mechanism -->
    
   
    <xsl:template match="ownedAttribute[@xmi:type='uml:Property' and exists(@association) and not(@aggregation='composite')]" mode="create-element">
        <!-- Don't create reference to enums and CDATAs -->
        <xsl:variable name="type" select="key('idlookup',@type)"/>
        <xsl:if test="not($type/@xmi:type='uml:Enumeration')">
            <!-- use role name if exists; otherwise use type name for name atttribute -->
            <Field DataType="String">
                <xsl:apply-templates select="." mode="multiplicity-attributes"/>
                <xsl:apply-templates select="." mode="create-name"/>   
                <Description><xsl:apply-templates select="." mode="documentation"/></Description>
            </Field>               								                
       </xsl:if>		
    </xsl:template>
    
    <xsl:template match="ownedAttribute" mode="multiplicity-attributes">
        <xsl:variable name="lower">
            <xsl:apply-templates select=".//lowerValue" mode="create-cardinality-value"/>
        </xsl:variable>
        <xsl:variable name="upper">
            <xsl:apply-templates select=".//upperValue" mode="create-cardinality-value"/>                    
        </xsl:variable>
        <xsl:if test="$lower='0'">
            <xsl:attribute name="IsOptional">true</xsl:attribute>
        </xsl:if>
        <xsl:if test="$upper!='1'">
            <xsl:attribute name="ValueRank">1</xsl:attribute>
            <xsl:attribute name="ArrayDimensions">0</xsl:attribute>
        </xsl:if>
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
      
    
    <xsl:template match="*" mode="documentation">
        <xsl:apply-templates select="ownedComment" mode="documentation"/>
    </xsl:template>
    
    <xsl:template match="ownedComment[@xmi:type='uml:Comment']" mode="documentation">
         <xsl:apply-templates select="@body" mode="documentation"/>
    </xsl:template>
    
    <xsl:template match="@body" mode="documentation">
        <xsl:variable name="test" select="parse-xml-fragment(.)" as="document-node()"/>
            
        <xsl:variable name="text">            
            <xsl:apply-templates  select="$test"  mode="html"/>
        </xsl:variable> 
        
        <xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
            <xsl:value-of select="serialize($text)" disable-output-escaping="true" />
        <xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
        
        <!-- <xsl:attribute name="Documentation" select="serialize($text/*)"/> -->
    </xsl:template>
    
    <xsl:template match="html" mode="html">
        <xsl:apply-templates select="body/*" mode="html" />
    </xsl:template>
    
    <xsl:template match="node()" mode="html">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*" mode="html"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="text()" priority="2"  mode="html">
        <xsl:value-of select="normalize-space(.)"/>
    </xsl:template>
    
    <xsl:template match="@*" mode="html">
        <xsl:copy/>
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
    
    
    <xsl:template match="packagedElement[@xmi:type='uml:Enumeration' and @xmi:id=//Stereotypes:ClosedEnumeration/@base_Enumeration]" mode="create-type">
        <UADataType>
            <xsl:attribute name="NodeId" select="key('nodeid-lookup',@xmi:id,$nodeids-table)/@nodeid"></xsl:attribute>
            <xsl:attribute name="BrowseName">
                <xsl:value-of select="concat($PREFIX_NUM,':')"/>
                <xsl:apply-templates select="." mode="create-name"/>
            </xsl:attribute>
            <DisplayName><xsl:apply-templates select="@name" mode="format-name"/></DisplayName>
            <References>
                <Reference ReferenceType="HasSubType" IsForward="false">i=29</Reference>
            </References>
            <Definition>
                <xsl:attribute name="Name">
                    <xsl:value-of select="concat($PREFIX_NUM,':')"/>
                    <xsl:apply-templates select="." mode="create-name"/>
                </xsl:attribute>            
                <xsl:apply-templates
                    select="ownedLiteral[@xmi:type='uml:EnumerationLiteral']" mode="closed-enum-literals" />
            </Definition>
        </UADataType>                
    </xsl:template>

    <xsl:template match="packagedElement[@xmi:type='uml:Enumeration' and not(@xmi:id=//Stereotypes:ClosedEnumeration/@base_Enumeration)]" mode="create-type">
        <UAObjectType>
            <xsl:attribute name="NodeId" select="key('nodeid-lookup',@xmi:id,$nodeids-table)/@nodeid"></xsl:attribute>
            <xsl:attribute name="BrowseName">
                <xsl:value-of select="concat($PREFIX_NUM,':')"/>
                <xsl:apply-templates select="." mode="create-name"/>
            </xsl:attribute>            
            <DisplayName><xsl:apply-templates select="@name" mode="format-name"/></DisplayName>
            <Documentation><xsl:apply-templates select="." mode="documentation"/></Documentation>
            <References>
                <Reference ReferenceType="HasSubType" IsForward="false">i=58</Reference>
            </References>
        </UAObjectType>
        <xsl:apply-templates
            select="ownedLiteral[@xmi:type='uml:EnumerationLiteral']" mode="open-enum-literals" />
    </xsl:template>
    
    <xsl:template match="ownedLiteral[@xmi:type='uml:EnumerationLiteral']" mode="closed-enum-literals">
        <Field>
            <xsl:attribute name="Name">
                <xsl:apply-templates select="@name" mode="format-name"/>
            </xsl:attribute>
            <xsl:attribute name="Value" select="position()-1"></xsl:attribute>
            <Description><xsl:apply-templates select="." mode="documentation"/></Description>                 
        </Field>		
    </xsl:template>    
    
    <xsl:template match="ownedLiteral[@xmi:type='uml:EnumerationLiteral']" mode="open-enum-literals">
        <UAObjectType>
            <xsl:attribute name="NodeId" select="key('nodeid-lookup',@xmi:id,$nodeids-table)/@nodeid"></xsl:attribute>
            <xsl:attribute name="BrowseName">
                <xsl:value-of select="concat($PREFIX_NUM,':')"/>
                <xsl:apply-templates select="." mode="create-name"/>
            </xsl:attribute>            
            <DisplayName><xsl:apply-templates select="@name" mode="format-name"/></DisplayName>
            <Documentation><xsl:apply-templates select="." mode="documentation"/></Documentation>
            <References>
                <Reference ReferenceType="HasSubType" IsForward="false">
                    <xsl:value-of select="key('nodeid-lookup',../@xmi:id,$nodeids-table)/@nodeid"/>
                </Reference>
            </References>     
        </UAObjectType>		
    </xsl:template>    
   
   <!--

    <xsl:template match="ownedLiteral[@xmi:type='uml:EnumerationLiteral']">
        <xs:enumeration>
            <xsl:attribute name="value">
                <xsl:apply-templates select="@name" mode="format-name"/>
            </xsl:attribute>
            <xsl:apply-templates select="." mode="meta-information"/>           
        </xs:enumeration>		
    </xsl:template>    
  
-->

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
                    <xsl:text>String</xsl:text>
                </xsl:when>
                <xsl:when test="$name='Double'">
                    <xsl:text>Double</xsl:text>
                </xsl:when>
                <xsl:when test="$name='Integer'">
                    <xsl:text>Integer</xsl:text>
                </xsl:when>
                <xsl:when test="$name='Int'">
                    <xsl:text>Integer</xsl:text>
                </xsl:when>
                <xsl:when test="$name='Boolean'">
                    <xsl:text>Boolean</xsl:text>
                </xsl:when>
                <xsl:when test="$name='Date'">
                    <xsl:text>DateTime</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="key('nodeid-lookup',@xmi:id,$nodeids-table)/@nodeid"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:attribute>
    </xsl:template>
    
    

<!-- Overriding default templates -->
    <xsl:template match="*"/>
    
    <xsl:template match="@*"/>
    

</xsl:stylesheet>