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
    xmlns:def="http://www.prostep.org/ecad-if/2022/def"
    xmlns:Stereotypes="http://www.magicdraw.com/schemas/Stereotypes.xmi"
    xmlns:MagicDraw_Profile="http://www.omg.org/spec/UML/20131001/MagicDrawProfile"
    xmlns:ext="https://ecad.propstep.org/2023/xslt/extensions"
    exclude-result-prefixes="uml xmi Stereotypes MagicDraw_Profile xs mt ext" version="3.0">
    
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>

    

    
    <xsl:variable name="whitelist">
        <def:class name="String">"></def:class>
        <def:class name="Double"></def:class>
        <def:class name="Integer"></def:class>
        <def:class name="Int"></def:class>
        <def:class name="Date"></def:class>
        <def:class name="Boolean"></def:class>
        <def:class name="BoundingBox" no-id="true">
            <def:attribute name="X" lower="1"/>
            <def:attribute name="Y" lower="1"/>
            <def:attribute name="Z" lower="1"/>
        </def:class>
         <def:class name="CavityPartRole"></def:class>
        <def:class name="CavityPartSpecification"></def:class>
        <def:class name="CavitySealRole">
            <def:attribute name="CavitySealSpecification"/>
        </def:class>
        <def:class name="CavitySealSpecification"></def:class>
        <def:class name="Color" replacement="ns=1;i=1001">
        </def:class>
        <def:class name="CompositionSpecification">
            <def:attribute name="Component"/>
        </def:class>
        <def:class name="ConductorSpecification">
            <def:attribute name="Type"/>
            <def:attribute name="CrossSectionArea"/>
        </def:class>
        <def:class name="ConductorType"></def:class>
        <def:class name="ConfigurableElement"></def:class>
        <def:class name="ContactPoint">
            <def:attribute name="Identification"/>
            <def:attribute name="MountedTerminal"/>            
            <def:attribute name="WireMounting"/>            
        </def:class>
        <def:class name="ContactingSpecification">
            <def:attribute name="ContactPoint"/>
        </def:class>
        <def:class name="CoreSpecification">
            <def:attribute name="OutsideDiameter"/>
        </def:class>
        <def:class name="CrimpDetail">
            <def:attribute name="Size"></def:attribute>
        </def:class>
        <def:class name="CoreCrimpDetail">
            <def:attribute name="InsulationCrimpDetails"></def:attribute>
            <def:attribute name="AppliesTo" composite="true"></def:attribute>
            <def:ext-attribute name="PullOffForce" type="NumericalValue" lower="0" upper="1">
                <def:doc><![CDATA[The minimum force that the completed crimp (core crimp only, insulation crimp non-functional) should withstand when wire is being pulled off the terminal. Above that force, the crimp can be expected to be destroyed at any time.]]></def:doc>
            </def:ext-attribute>
        </def:class>
        <def:class name="InsulationCrimpDetail">
            <def:attribute name="PullOffForce"></def:attribute>
            <def:attribute name="AppliesTo"  composite="true"></def:attribute>
        </def:class>
        <def:class name="DocumentVersion">
            <def:attribute name="DocumentNumber" lower="0"/>            
            <def:attribute name="DocumentVersion" lower="0"/>            
            <def:attribute name="DigitalRepresentationIndex" lower="0"/>                        
            <def:attribute name="Specification"/>
        </def:class>
        <def:class name="ExtendableElement"></def:class>
        <def:class name="GeneralTechnicalPartSpecification">
            <def:attribute name="ColorInformation" upper="1"/>                        
            <def:attribute name="BoundingBox"/>                        
        </def:class>
        <def:class name="InsulationSpecification">            
            <def:attribute name="BaseColor" lower="1" upper="1"/>
            <def:attribute name="FirstIdentificationColor" lower="0" upper="1"/> 
            <def:attribute name="SecondIdentificationColor" lower="0" upper="1"/>
            <def:attribute name="Thickness"/>
        </def:class>
        <def:class name="ItemVersion">
            <def:attribute name="CompanyName" lower="0"/>            
        </def:class>
        <def:class name="Material" no-id="true">
            <def:attribute name="Key"/>
            <def:attribute name="ReferenceSystem"/>            
        </def:class>
        <def:class name="NumericalValue" no-id="true">
            <def:attribute name="ValueComponent"/>
            <def:attribute name="Tolerance"/>            
        </def:class>
        <def:class name="OccurrenceOrUsage">
            <def:attribute name="Identification"/>
            <def:attribute name="Role"/>
        </def:class>
        <def:class name="PartOccurrence">
            <def:attribute name="Part" composite="true"/>
        </def:class>
        <def:class name="PartOrUsageRelatedSpecification">
            <def:attribute name="SpecialPartType"/>
            <def:attribute name="DescribedPart" lower="1" composite="true"/>
        </def:class>
        <def:class name="PartVersion">
            <def:attribute name="PartNumber"/>
        </def:class>
        <def:class name="PluggableTerminalRole"></def:class>
        <def:class name="PluggableTerminalSpecification">
        </def:class>
        <def:class name="PrimaryPartType"></def:class>
        <def:class name="ResourceVersion">
            <def:attribute name="ResourceNumber"/>
            <def:attribute name="ResourceVersion"/>
        </def:class>
        <def:class name="Role">
            <def:attribute name="Identification"/>
        </def:class>
        <def:class name="RoutableElement"></def:class>
        <def:class name="Size" no-id="true">
            <def:attribute name="Width"/>
            <def:attribute name="Height"/>
        </def:class>
        <def:class name="Specification">
            <def:attribute name="Identification" lower="0" />
        </def:class>
        <def:class name="TerminalRole">
            <def:attribute name="TerminalSpecification"/>
            <def:attribute name="TerminalReceptionReference"/>
            <def:attribute name="WireReceptionReference"/>
        </def:class>
        <def:class name="TerminalSpecification">
            <def:attribute name="ConnectionALength"/>                        
            <def:attribute name="OverallLength" lower="1"/>                      
            <def:attribute name="WireReception"/>                      
        </def:class>
        <def:class name="Tolerance" no-id="true">
            <def:attribute name="LowerBoundary"/>                        
            <def:attribute name="UpperBoundary"/>                                                
        </def:class>
        <def:class name="Unit" replacement="EUInformation"></def:class>
        <def:class name="ValueRange" no-id="true">
            <def:attribute name="Minimum"/>
            <def:attribute name="Maximum"/>                        
        </def:class>
        <def:class name="ValueWithUnit" no-id="true">
            <def:attribute name="UnitComponent"/>
        </def:class>
        <def:class name="WireElement">
            <def:attribute name="Identification" lower="0"/>
            <def:attribute name="WireElementSpecification" composite="true"/>
            <def:attribute name="SubWireElement"/>
        </def:class>
        <def:class name="WireElementReference">
            <def:attribute name="Identification"/>
            <def:attribute name="ReferencedWireElement"/>
            <def:attribute name="WireEnd"/>
            <def:attribute name="WireLength"/>
        </def:class>
        <def:class name="WireElementSpecification">
            <def:attribute name="Type"/>
            <def:attribute name="OutsideDiameter"/>
            <def:attribute name="ConductorSpecification" composite="true"/>
            <def:attribute name="InsulationSpecification" composite="true"/>
        </def:class>
        <def:class name="WireEnd">
            <def:attribute name="Identification"/>
            <def:attribute name="PositionOnWire"/>
            <def:attribute name="StrippingLength"/>
            <def:ext-attribute name="InsulationPullbackLength" type="NumericalValue" lower="0" upper="1">
                <def:doc><![CDATA[Defines a partial stripping process in which the insulation is pulled back by the insulationPullbackLength after being cut at the strippingLength, and is left on the WireEnd e.g. for logistic reasons. The insulationPullbackLength must be shorter than the strippingLength; otherwise, it would not qualify as partial stripping.]]></def:doc>
            </def:ext-attribute>
        </def:class>
        <def:class name="WireLength" replacement="NumericalValue" lower="0" uppper="1">
            <def:attribute name="LengthType"/>
            <def:attribute name="LengthValue"/>            
        </def:class>
        <def:class name="WireMounting">
            <def:attribute name="MountedCavitySeal"/>
            <def:attribute name="ReferencedWireEnd"/>            
            <def:attribute name="WireMountingDetail" lower="1"/>            
        </def:class>
        <def:class name="WireMountingDetail">
            <def:attribute name="CoreCrimpSize"/>
            <def:attribute name="InsulationCrimpSize"/>
            <def:attribute name="WireTipProtrusion"/>
            <def:attribute name="ContactedWireReception"/>
            <def:attribute name="ReferencedWireEnd"/>
            <def:ext-attribute name="AbsoluteSealPosition" type="NumericalValue" lower="0" uppper="1">
                <def:doc><![CDATA[The absoluteSealPosition defines distance between the conductor tip and edge of the CavitySeal facing the conductor tip.]]></def:doc>
            </def:ext-attribute>
            <def:ext-attribute name="CorePullOffForce" type="NumericalValue" lower="0" upper="1">
                <def:doc><![CDATA[The minimum force that the completed crimp (core crimp only, insulation crimp non-functional) should withstand when wire is being pulled off the terminal. Above that force, the crimp can be expected to be destroyed at any time.]]></def:doc>
            </def:ext-attribute>
        </def:class>
        <def:class name="WireReception">
            <def:attribute name="Identification" lower="0"/>
            <def:attribute name="Rotation"/>
            <def:attribute name="WireReceptionSpecification" lower="1" composite="true"/>
        </def:class>
        <def:class name="WireReceptionReference">
            <def:attribute name="Identification"/>
            <def:attribute name="WireReception"/>            
        </def:class>
        <def:class name="WireReceptionSpecification">
            <def:attribute name="CrimpConnectionLength" lower="1"/>
            <def:attribute name="CoreCrimpDetails" lower="1"/>
            <def:attribute name="InsulationDisplacementLength" lower="1"/>
            <def:attribute name="WireTipProtrusion"/>
            <def:attribute name="ConductorCrimpLength"/>
            <def:attribute name="InsulationCrimpLength"/>     
            <def:ext-attribute name="CrimpBarrelType" type="ns=1;i=1003" lower="1" uppper="1">                
                <def:doc><![CDATA[When the crimp barrel is open, the wire can be laid into the terminal from above. If the crimp barrel is closed, the wire must be fed in from the front.]]></def:doc>
            </def:ext-attribute>
        </def:class>
        <def:class name="WireRole">
            <def:attribute name="WireSpecification"/>
            <def:attribute name="WireElementReference"/>
        </def:class>
        <def:class name="WireSpecification">
            <def:attribute name="WireElement"/>
        </def:class>
    </xsl:variable>
    
    
    <xsl:key name="idlookup" match="*" use="@xmi:id"/>
        
    <xsl:variable name="VEC_PREFeIX">vec</xsl:variable>
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
                <Alias Alias="UInt32">i=7</Alias>
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
                <Alias Alias="TrimmedString">i=31918</Alias>
                <Alias Alias="OpenEnum">ns=1;i=1000</Alias>
                <Alias Alias="IdBaseDataType">ns=1;i=1002</Alias>
            </Aliases>
            <UADataType NodeId="ns=1;i=1001" BrowseName="1:ARGB32ColorType">
                <DisplayName>ARGB32ColorType</DisplayName>
                <Documentation><![CDATA[]]></Documentation>
                <References>
                    <Reference ReferenceType="HasSubtype" IsForward="false">i=22</Reference>
                </References>
                <Definition Name="1:ARGB32ColorType">
                    <Field Name="Value" DataType="UInt32">
                        <Description><![CDATA[]]></Description>
                    </Field>
                    <Field Name="Name" DataType="String"  ValueRank="1" ArrayDimensions="1">
                        <Description><![CDATA[]]></Description>
                    </Field>
                </Definition>
            </UADataType>
            <UADataType NodeId="ns=1;i=1003" BrowseName="1:CrimpBarrelType">
                <DisplayName>CrimpBarrelType</DisplayName>
                <References>
                    <Reference ReferenceType="HasSubtype" IsForward="false">i=29</Reference>
                </References>
                <Definition Name="1:CrimpBarrelType">
                    <Field Name="Open" Value="0"/>
                    <Field Name="Closed" Value="1"/>
                </Definition>
            </UADataType>
            <UADataType IsAbstract="true" NodeId="ns=1;i=1002"  BrowseName="1:IdBaseDataType">
                <DisplayName>IdBaseDataType</DisplayName>
                <Documentation><![CDATA[]]></Documentation>
                <References>
                    <Reference ReferenceType="HasSubtype" IsForward="false">i=22</Reference>
                </References>
            </UADataType>      
            <xsl:apply-templates select="xmi:XMI/uml:Model/packagedElement[@name='VEC']//packagedElement[(@xmi:type='uml:Class' or @xmi:type='uml:Enumeration')and not(@xmi:id=//MagicDraw_Profile:Legend/@base_Class)]" mode="create-type">
                <xsl:sort select="@name"/>
            </xsl:apply-templates>         
        </UANodeSet>
    </xsl:template>
    
    <xsl:template match="packagedElement[@xmi:type='uml:Class' and ext:is-opc-type(.) and not(ext:is-replaced-with(.))]" mode="create-type">
            <UADataType>
                <xsl:if test="@isAbstract='true'">
                    <xsl:attribute name="IsAbstract" select="'true'"/>
                </xsl:if>                       
                <xsl:attribute name="NodeId" select="ext:node-id(@xmi:id)"></xsl:attribute>
                <xsl:attribute name="BrowseName">
                    <xsl:value-of select="concat($PREFIX_NUM,':')"/>
                    <xsl:apply-templates select="." mode="create-name"/>
                </xsl:attribute>
                <DisplayName><xsl:value-of select="ext:format-name(@name)" /></DisplayName>
                <Documentation><xsl:apply-templates select="." mode="documentation"/></Documentation>            
                <References>                
                    <xsl:choose>
                        <xsl:when test="exists(generalization)">
                            <Reference ReferenceType="HasSubtype" IsForward="false">
                                <xsl:value-of select="ext:node-id(generalization/@general)"/>
                            </Reference>                        
                        </xsl:when>
                        <xsl:otherwise>
                            <Reference ReferenceType="HasSubtype" IsForward="false">i=22</Reference>
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
            
            <xsl:if test="ext:has-id(.)">
                <UADataType>
                    <xsl:attribute name="NodeId" select="ext:id-obj-node-id(@xmi:id)"></xsl:attribute>
                    <xsl:variable name="name" select="concat(ext:format-name(@name),'IdDataType')"/>                    
                    <xsl:attribute name="BrowseName" select="concat($PREFIX_NUM,':',$name)">
                    </xsl:attribute>    
                    <DisplayName><xsl:value-of select="$name" /></DisplayName>
                    <References>
                        <Reference ReferenceType="HasSubtype" IsForward="false">ns=1;i=1002</Reference>
                    </References>
                    <Definition>
                        <xsl:attribute name="Name" select="concat($PREFIX_NUM,':',$name)"></xsl:attribute>    
                        <Field DataType="TrimmedString" Name="id"/>
                    </Definition>
                </UADataType>
            </xsl:if>
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
            <xsl:apply-templates select="ext:extension-attributes(.)" mode="create-element">
                <xsl:with-param name="context" select="/"></xsl:with-param>
            </xsl:apply-templates>
        </xsl:if>
        
        <xsl:variable name="className" select="ext:format-name(@name)"/>

        <xsl:if test="not(exists(generalization)) and ext:has-id(.)">
            <Field DataType="TrimmedString" Name="id">
                <xsl:attribute name="ValueRank">1</xsl:attribute>
                <xsl:attribute name="ArrayDimensions">1</xsl:attribute>
            </Field>
        </xsl:if>
    </xsl:template>

    <!-- normal Embedding -->
    
    <xsl:template match="ownedAttribute[@xmi:type='uml:Property' and  (not(exists(@association)) or @aggregation='composite')]" mode="create-element">
        <xsl:variable name="type" select="key('idlookup',@type)"/>
        <xsl:choose>
            <xsl:when test="ext:is-opc-type($type)">
                <xsl:variable name="className" select="ext:format-name(../@name)"/>
                <xsl:variable name="attributeName" select="ext:format-name(./@name)"/>
                
                <xsl:choose>
                    <xsl:when test="ext:is-opc-attribute(.)">
                        <Field>
                            <xsl:apply-templates select="." mode="multiplicity-attributes"/>                        
                            <xsl:apply-templates select="." mode="create-name"/>
                            <xsl:variable name="replacement" select="ext:is-replaced-with($type)"/>
                            <xsl:choose>
                                <xsl:when test="$replacement">
                                    <xsl:variable name="vec-type" select="ext:find-vec-type(/,$replacement)"/>
                                    <xsl:choose>
                                        <xsl:when test="exists($vec-type)">                                            
                                            <xsl:attribute name="DataType"><xsl:apply-templates select="$vec-type" mode="create-type-ref"/></xsl:attribute>
                                            <xsl:attribute name="AllowSubTypes" select="'true'"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:attribute name="DataType"  select="$replacement"></xsl:attribute>
                                            <xsl:attribute name="AllowSubTypes" select="'true'"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:attribute name="DataType"><xsl:apply-templates select="$type" mode="create-type-ref"/></xsl:attribute>
                                    <xsl:if test="$type/@xmi:type='uml:Class'">
                                        <xsl:attribute name="AllowSubTypes" select="'true'"/>
                                    </xsl:if>                                    
                                </xsl:otherwise>
                            </xsl:choose>
                            <Description><xsl:apply-templates select="." mode="documentation"/></Description>
                        </Field>                                        
                    </xsl:when>
                    <xsl:otherwise/>
                </xsl:choose>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    
    <!-- IDREF Mechanism -->
    
   
    <xsl:template match="ownedAttribute[@xmi:type='uml:Property' and exists(@association) and not(@aggregation='composite')]" mode="create-element">
        <!-- Don't create reference to enums and CDATAs -->
        <xsl:variable name="type" select="key('idlookup',@type)"/>
        <xsl:if test="not($type/@xmi:type='uml:Enumeration') and ext:is-opc-type($type)">
            <!-- use role name if exists; otherwise use type name for name atttribute -->
            <xsl:variable name="className" select="ext:format-name(../@name)"/>
            <xsl:variable name="attributeName" select="ext:format-name(./@name)"/>

            <xsl:choose>
                <xsl:when test="ext:is-opc-attribute(.)">               
                    <Field>
                        <xsl:variable name="replacement" select="ext:is-replaced-with($type)"/>
                        <xsl:choose>
                            <xsl:when test="$replacement">
                                <xsl:attribute name="DataType" select="$replacement"></xsl:attribute>
                            </xsl:when>
                            <xsl:when test="ext:is-composite(.)">
                                <xsl:attribute name="DataType" select="ext:node-id($type/@xmi:id)"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:if test="not(ext:has-id($type))">
                                    <xsl:message select="concat('Error: ',$className,'.',$attributeName, ' references the type ', $type/@name, ' that has no id.')" terminate="yes"/>
                                </xsl:if>
                                <xsl:attribute name="DataType" select="ext:id-obj-node-id($type/@xmi:id)"/>                                    
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:attribute name="AllowSubTypes" select="'true'"/>
                        <xsl:apply-templates select="." mode="multiplicity-attributes"/>
                        <xsl:apply-templates select="." mode="create-name"/>   
                        <Description><xsl:apply-templates select="." mode="documentation"/></Description>
                    </Field>
                </xsl:when>
               <xsl:otherwise/>
            </xsl:choose>                    
       </xsl:if>		
    </xsl:template>


    <!-- Extension Attributes -->
    <xsl:template match="def:ext-attribute" mode="create-element">
        <xsl:param name="context" required="yes"></xsl:param>
        <Field>
            <xsl:attribute name="Name" select="@name"></xsl:attribute>
            <xsl:variable name="vec-type" select="ext:find-vec-type($context,@type)"/>
            <xsl:choose>
                <xsl:when test="exists($vec-type)">                                            
                    <xsl:attribute name="DataType"><xsl:apply-templates select="$vec-type" mode="create-type-ref"/></xsl:attribute>
                    <xsl:attribute name="AllowSubTypes" select="'true'"/>                    
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="DataType" select="@type"/>
                </xsl:otherwise>
            </xsl:choose>                                               
            <xsl:if test="@lower='0' and @upper='1'">
                <xsl:attribute name="ValueRank">1</xsl:attribute>
                <xsl:attribute name="ArrayDimensions">1</xsl:attribute>
            </xsl:if>
            <xsl:if test="@upper!='1'">
                <xsl:attribute name="ValueRank">1</xsl:attribute>
                <xsl:attribute name="ArrayDimensions">0</xsl:attribute>
            </xsl:if>
            <Description><xsl:copy-of select="def:doc/node()"></xsl:copy-of></Description>
        </Field>
    </xsl:template>
    
    <xsl:template match="ownedAttribute" mode="multiplicity-attributes">
        
        <xsl:variable name="attribute-definition" select="ext:opc-attribute-definition(.)"/>
        <xsl:variable name="lower">
            <xsl:choose>
                <xsl:when test="$attribute-definition/@lower">
                    <xsl:apply-templates select="$attribute-definition/@lower" mode="create-cardinality-value"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates select=".//lowerValue" mode="create-cardinality-value"/>        
                </xsl:otherwise>
            </xsl:choose>            
        </xsl:variable>
        <xsl:variable name="upper">
            <xsl:choose>
                <xsl:when test="$attribute-definition/@upper">
                    <xsl:apply-templates select="$attribute-definition/@upper" mode="create-cardinality-value"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates select=".//upperValue" mode="create-cardinality-value"/>        
                </xsl:otherwise>
            </xsl:choose>                 
        </xsl:variable>        
        
        <xsl:if test="$lower='0' and $upper='1'">
            <xsl:attribute name="ValueRank">1</xsl:attribute>
            <xsl:attribute name="ArrayDimensions">1</xsl:attribute>
        </xsl:if>
        <xsl:if test="$upper!='1'">
            <xsl:attribute name="ValueRank">1</xsl:attribute>
            <xsl:attribute name="ArrayDimensions">0</xsl:attribute>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="ownedAttribute" mode="create-name">
        <xsl:choose>
            <xsl:when test="@name !=''">
                <xsl:attribute name="Name" select="ext:format-name(@name)"/>                
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="key('idlookup',@type)" mode="create-name"/>								
            </xsl:otherwise>
        </xsl:choose>                
    </xsl:template>
    
    <xsl:template match="*" mode="create-name">
        <xsl:attribute name="Name" select="ext:format-name(@name)"/>
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
    
    
    <!-- To differentiate between open an closed enums.
        
        <xsl:template match="packagedElement[@xmi:type='uml:Enumeration' and @xmi:id=//Stereotypes:ClosedEnumeration/@base_Enumeration  and ext:is-opc-type(.)]" mode="create-type">
        <xsl:template match="packagedElement[@xmi:type='uml:Enumeration' and not(@xmi:id=//Stereotypes:ClosedEnumeration/@base_Enumeration) and ext:is-opc-type(.)]" mode="create-type">
     -->
        
    <xsl:template match="packagedElement[@xmi:type='uml:Enumeration' and ext:is-opc-type(.)]" mode="create-type">
        <UADataType>
            <xsl:attribute name="NodeId" select="ext:node-id(@xmi:id)"></xsl:attribute>
            <xsl:attribute name="BrowseName">
                <xsl:value-of select="concat($PREFIX_NUM,':')"/>
                <xsl:apply-templates select="." mode="create-name"/>
            </xsl:attribute>
            <DisplayName><xsl:value-of select="ext:format-name(@name)"/></DisplayName>
            <References>
                <Reference ReferenceType="HasSubtype" IsForward="false">i=29</Reference>
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

    
    <xsl:template match="ownedLiteral[@xmi:type='uml:EnumerationLiteral']" mode="closed-enum-literals">
        <Field>
            <xsl:attribute name="Name" select="ext:format-name(@name)"/>
            <xsl:attribute name="Value" select="position()-1"></xsl:attribute>
            <Description><xsl:apply-templates select="." mode="documentation"/></Description>                 
        </Field>		
    </xsl:template>    
    
    <xsl:template match="ownedLiteral[@xmi:type='uml:EnumerationLiteral']" mode="open-enum-literals">
        <UAObjectType>
            <xsl:attribute name="NodeId" select="ext:node-id(@xmi:id)"></xsl:attribute>
            <xsl:attribute name="BrowseName">
                <xsl:value-of select="concat($PREFIX_NUM,':')"/>
                <xsl:apply-templates select="." mode="create-name"/>
            </xsl:attribute>            
            <DisplayName><xsl:value-of select="ext:format-name(@name)"/></DisplayName>
            <Documentation><xsl:apply-templates select="." mode="documentation"/></Documentation>
            <References>
                <Reference ReferenceType="HasSubtype" IsForward="false">
                    <xsl:value-of select="ext:node-id(../@xmi:id)"/>
                </Reference>
            </References>     
        </UAObjectType>		
    </xsl:template>    
           

    <xsl:template match="*" mode="create-type-ref">
        <xsl:param name="attribute-name" select="'type'"/>
        <xsl:variable name="name" select="ext:format-name(@name)"/>
            
        
        <xsl:attribute name="{$attribute-name}">
            <xsl:choose>
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
                    <xsl:value-of select="ext:node-id(@xmi:id)"/>    
                </xsl:otherwise>
            </xsl:choose>
        </xsl:attribute>
    </xsl:template>

<!-- Overriding default templates -->
    <xsl:template match="*"/>
    
    <xsl:template match="@*"/>
    
    <!-- functions -->
    
    <xsl:key name="nodeid-lookup" match="*" use="@xmi:id"></xsl:key>
    
    <xsl:variable name="nodeids-table">
        <xsl:for-each select="/xmi:XMI/uml:Model/packagedElement[@name='VEC']//packagedElement[(@xmi:type='uml:Class' or @xmi:type='uml:Enumeration')and not(@xmi:id=//MagicDraw_Profile:Legend/@base_Class)]
            | /xmi:XMI/uml:Model/packagedElement[@name='VEC']//packagedElement[@xmi:type='uml:Enumeration']/ownedLiteral[@xmi:type='uml:EnumerationLiteral']">
            <element xmi:id="{@xmi:id}" nodeid="{concat('ns=',$PREFIX_NUM,';i=',position()+3000)}"/>
        </xsl:for-each>
    </xsl:variable>    
    
    <xsl:variable name="idobj-nodeids-table">
        <xsl:for-each select="/xmi:XMI/uml:Model/packagedElement[@name='VEC']//packagedElement[(@xmi:type='uml:Class' or @xmi:type='uml:Enumeration')and not(@xmi:id=//MagicDraw_Profile:Legend/@base_Class)]
            | /xmi:XMI/uml:Model/packagedElement[@name='VEC']//packagedElement[@xmi:type='uml:Enumeration']/ownedLiteral[@xmi:type='uml:EnumerationLiteral']">
            <element xmi:id="{@xmi:id}" nodeid="{concat('ns=',$PREFIX_NUM,';i=',position()+6000)}"/>
        </xsl:for-each>
    </xsl:variable>
    
    <xsl:function name="ext:node-id" as="xs:string">
        <xsl:param name="xmi-id"></xsl:param>        
        <xsl:sequence select="key('nodeid-lookup',$xmi-id,$nodeids-table)/@nodeid"></xsl:sequence>
    </xsl:function>
    
    <xsl:function name="ext:id-obj-node-id" as="xs:string">
        <xsl:param name="xmi-id"></xsl:param>
        <xsl:sequence select="key('nodeid-lookup',$xmi-id,$idobj-nodeids-table)/@nodeid"></xsl:sequence>
    </xsl:function>
    
    <xsl:function name="ext:is-opc-type" as="xs:boolean">
        <xsl:param name="packaged-element" required="yes" />
        <xsl:variable name="local-name" select="ext:format-name($packaged-element/@name)"/>
        <xsl:sequence select="exists($whitelist/def:class[@name = $local-name])"></xsl:sequence>
    </xsl:function>

    <xsl:function name="ext:is-opc-attribute" as="xs:boolean">
        <xsl:param name="owned-attribute" required="yes" />
        <xsl:sequence select="exists(ext:opc-attribute-definition($owned-attribute))"></xsl:sequence>
    </xsl:function>
    
    <xsl:function name="ext:opc-attribute-definition">
        <xsl:param name="owned-attribute" required="yes" />
        <xsl:variable name="local-class-name" select="ext:format-name($owned-attribute/../@name)"/>
        <xsl:variable name="local-attr-name" select="ext:format-name($owned-attribute/@name)"/>
        <xsl:sequence select="$whitelist/def:class[@name = $local-class-name]/def:attribute[@name=$local-attr-name]"></xsl:sequence>
    </xsl:function>
    
    <xsl:function name="ext:is-composite">
        <xsl:param name="owned-attribute" required="yes" />
        <xsl:sequence select="exists(ext:opc-attribute-definition($owned-attribute)[@composite='true'])"></xsl:sequence>  
    </xsl:function>
    
    <xsl:function name="ext:is-replaced-with">
        <xsl:param name="packaged-element" required="yes" />
        <xsl:variable name="local-name" select="ext:format-name($packaged-element/@name)"/>
        <xsl:sequence select="$whitelist/def:class[@name =  $local-name]/@replacement"></xsl:sequence>        
    </xsl:function>
    
    <xsl:function name="ext:find-vec-type">
        <xsl:param name="model-root" required="yes"/>
        <xsl:param name="name" required="yes"/>
        <xsl:sequence select="$model-root/xmi:XMI/uml:Model/packagedElement[@name='VEC']//packagedElement[@name=$name]"></xsl:sequence>
    </xsl:function>
    
    <xsl:function name="ext:extension-attributes">
        <xsl:param name="packaged-element" required="yes" />
        <xsl:variable name="local-name" select="ext:format-name($packaged-element/@name)"/>
        <xsl:sequence select="$whitelist/def:class[@name =  $local-name]/def:ext-attribute"></xsl:sequence>        
    </xsl:function>
    
    <xsl:function name="ext:has-id">
        <xsl:param name="packaged-element" required="yes" />
        <xsl:variable name="local-name" select="ext:format-name($packaged-element/@name)"/>
        <xsl:sequence select="not(exists($whitelist/def:class[@name =  $local-name and @no-id='true']))"></xsl:sequence>    
    </xsl:function>
    
    <xsl:function name="ext:format-name" as="xs:string">
        <xsl:param name="source"/>
        <xsl:variable name="trimmed-source" select="normalize-space($source)"/>
        <xsl:variable name="name">
            <!-- strip leading '/' -->
            <xsl:if test="substring($trimmed-source,1,1) != '/'">
                <xsl:value-of select="translate(substring($trimmed-source,1,1),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
            </xsl:if>
            <xsl:value-of select="substring($trimmed-source,2,string-length($trimmed-source))"/>
        </xsl:variable>
        <xsl:value-of select="$name"/>
    </xsl:function>
    

    
    

</xsl:stylesheet>