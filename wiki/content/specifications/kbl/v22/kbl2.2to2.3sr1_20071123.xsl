<?xml version="1.0" encoding="UTF-8"?>
<!--
This file is provided under the terms of the MIT license reproduced here.
Copyright © 2021 prostep ivip association
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
-->
<!--KBL 2.2 to 2.3 XSL Version 1.1 (c) VDA, ProSTEP iViP 2007
     Build 2007-11-23        -->
<!-- XSL style sheet to migrate a KBL Version 2.2 XML document to KBL version 2.3 SR1 -->
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:kbl="http://www.prostep.org/Car_electric_container/KBL2.3/KBLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<xsl:output method="xml"/>
	
	<!-- Keys -->
	<xsl:key name="CavityIdKey" match="/KBL_schema/Harness/Connector_occurrence/Cavity|/KBL_schema/Assembly_part/Connector_occurrence/Cavity" use="concat(Id,Slot)"/>
	<xsl:key name="SlotKey" match="/KBL_schema/Connector_housing/Slot" use="../@id"/>
	<xsl:key name="CavityKey" match="/KBL_schema/Harness/Connector_occurrence/Cavity|/KBL_schema/Assembly_part/Connector_occurrence/Cavity" use="Slot"/>
	<xsl:key name="ElementIndex" match="*" use="@id"/>
	
	<xsl:template match="KBL_schema">
		<xsl:element name="kbl:KBL_container" namespace="http://www.prostep.org/Car_electric_container/KBL2.3/KBLSchema">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:attribute name="version_id">V2.3SR1</xsl:attribute>
			<!-- Create the top level elements -->
			<xsl:apply-templates select="Accessory"/>
			<xsl:apply-templates select="Approval"/>
			<xsl:apply-templates select="Assembly_part"/>
			
			<!-- Create a top level element for each Cartesian_point contained anywhere in the structure -->
			<xsl:apply-templates select="/KBL_schema/Harness/*/Placement/Transformation/Coordinates_3D/Cartesian_point|/KBL_schema/Assembly_part/*/Placement/Transformation/Coordinates_3D/Cartesian_point|/KBL_schema/Node/Coordinates_3D/Cartesian_point|/KBL_schema/Segment/Center_curve/B_spline_curve/Control_points/Cartesian_point" mode="create"/>
			
			<xsl:apply-templates select="Cavity_plug"/>
			<xsl:apply-templates select="Cavity_seal"/>
			<xsl:apply-templates select="Co_pack_part"/>
			<xsl:apply-templates select="Connector_housing"/>
			<xsl:apply-templates select="Creation"/>
			<xsl:apply-templates select="External_reference"/>
			<xsl:apply-templates select="Fixing"/>
			<xsl:apply-templates select="General_terminal"/>
			<xsl:apply-templates select="General_wire"/>
			<xsl:apply-templates select="Harness"/>
			<xsl:apply-templates select="Node"/>
			<xsl:apply-templates select="Routing"/>
			<xsl:apply-templates select="Segment"/>
			<xsl:apply-templates select="Unit"/>
			<xsl:apply-templates select="//Wire_size/Value_range" mode="create"/>
			<xsl:apply-templates select="//Cross_section_area/Value_range" mode="create"/>
			<xsl:apply-templates select="//Outside_diameter/Value_range" mode="create"/>
			<xsl:apply-templates select="Wire_protection"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Accessory">
		<xsl:element name="Accessory">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Part_number"/>
			<xsl:call-template name="emptyCompany_name"/>
			<xsl:apply-templates select="Alias_part"/>
			<xsl:apply-templates select="Version"/>
			<xsl:apply-templates select="Abbreviation"/>
			<xsl:apply-templates select="Description"/>
			<xsl:apply-templates select="Predecessor_part_number"/>
			<xsl:apply-templates select="Degree_of_maturity"/>
			<xsl:apply-templates select="Copyright_note"/>
			<xsl:apply-templates select="Mass_information"/>
			<xsl:call-template name="External_references"/>
			<xsl:apply-templates select="Change"/>
			<xsl:apply-templates select="Material_information"/>
			<xsl:apply-templates select="Processing_information/Processing_instruction"/>
			<xsl:apply-templates select="Accessory_type"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Accessory_type">
		<xsl:element name="Accessory_type">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Approval">
		<xsl:element name="Approval">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Name"/>
			<xsl:apply-templates select="Department"/>
			<xsl:apply-templates select="Date"/>
			<xsl:apply-templates select="Type_of_approval"/>
			<!-- concatenate all isAppliedTo -->
			<xsl:if test="Is_applied_to">
				<xsl:variable name="isAppliedTo">
					<xsl:for-each select="Is_applied_to">
						<xsl:value-of select="."/>
						<xsl:text> </xsl:text>
					</xsl:for-each>
				</xsl:variable>
				<xsl:element name="Is_applied_to">
					<xsl:value-of select="normalize-space($isAppliedTo)"/>
				</xsl:element>
			</xsl:if>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Name">
		<xsl:element name="Name">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Department">
		<xsl:element name="Department">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Date">
		<xsl:element name="Date">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Type_of_approval">
		<xsl:element name="Type_of_approval">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Is_applied_to">
		<xsl:element name="Is_applied_to">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Assembly_part">
		<xsl:element name="Assembly_part">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Part_number"/>
			<xsl:call-template name="emptyCompany_name"/>
			<xsl:apply-templates select="Alias_part"/>
			<xsl:apply-templates select="Version"/>
			<xsl:apply-templates select="Abbreviation"/>
			<xsl:apply-templates select="Description"/>
			<xsl:apply-templates select="Predecessor_part_number"/>
			<xsl:apply-templates select="Degree_of_maturity"/>
			<xsl:apply-templates select="Copyright_note"/>
			<xsl:apply-templates select="Mass_information"/>
			<xsl:call-template name="External_references"/>
			<xsl:apply-templates select="Change"/>
			<xsl:apply-templates select="Material_information"/>
			<xsl:apply-templates select="Processing_information/Processing_instruction"/>
			<xsl:apply-templates select="Part_type"/>
			<xsl:apply-templates select="Accessory_occurrence"/>
			<xsl:apply-templates select="Cavity_plug_occurrence"/>
			<xsl:apply-templates select="Cavity_seal_occurrence"/>
			<xsl:apply-templates select="Co_pack_occurrence"/>
			<xsl:apply-templates select="Connector_occurrence"/>
			<xsl:apply-templates select="Fixing_occurrence"/>
			<xsl:apply-templates select="General_wire_occurrence"/>
			<xsl:apply-templates select="Special_terminal_occurrence"/>
			<xsl:apply-templates select="Terminal_occurrence"/>
			<xsl:apply-templates select="Wire_protection_occurrence"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Part_type">
		<xsl:element name="Part_type">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Accessory_occurrence|Specified_accessory_occurrence">
		<xsl:element name="Accessory_occurrence">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:if test="local-name(.)='Specified_accessory_occurrence'">
				<xsl:attribute name="xsi:type">kbl:Specified_accessory_occurrence</xsl:attribute>
			</xsl:if>
			<xsl:apply-templates select="Id"/>
			<xsl:apply-templates select="Alias_id"/>
			<xsl:apply-templates select="Description"/>
			<xsl:apply-templates select="Placement"/>
			<xsl:apply-templates select="Part"/>
			<xsl:apply-templates select="Reference_element"/>
			<xsl:apply-templates select="Installation_information/Installation_instruction"/>
			<xsl:if test="local-name(.)='Specified_accessory_occurrence'">
				<xsl:apply-templates select="Related_assembly"/>
				<xsl:apply-templates select="Related_occurrence"/>
			</xsl:if>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Reference_element">
		<xsl:element name="Reference_element">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Cavity_plug_occurrence|Specified_cavity_plug_occurrence">
		<xsl:element name="Cavity_plug_occurrence">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:if test="local-name(.)='Specified_cavity_plug_occurrence'">
				<xsl:attribute name="xsi:type">kbl:Specified_cavity_plug_occurrence</xsl:attribute>
			</xsl:if>
			<xsl:apply-templates select="Part"/>
			<xsl:if test="local-name(.)='Specified_cavity_plug_occurrence'">
				<xsl:apply-templates select="Related_assembly"/>
				<xsl:apply-templates select="Related_occurrence"/>
			</xsl:if>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Cavity_seal_occurrence|Specified_cavity_seal_occurrence">
		<xsl:element name="Cavity_seal_occurrence">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:if test="local-name(.)='Specified_cavity_seal_occurrence'">
				<xsl:attribute name="xsi:type">kbl:Specified_cavity_seal_occurrence</xsl:attribute>
			</xsl:if>
			<xsl:apply-templates select="Part"/>
			<xsl:apply-templates select="Part_substitution"/>
			<xsl:if test="local-name(.)='Specified_cavity_seal_occurrence'">
				<xsl:apply-templates select="Related_assembly"/>
				<xsl:apply-templates select="Related_occurrence"/>
			</xsl:if>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Co_pack_occurrence|Specified_co_pack_occurrence">
		<xsl:element name="Co_pack_occurrence">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:if test="local-name(.)='Specified_co_pack_occurrence'">
				<xsl:attribute name="xsi:type">kbl:Specified_co_pack_occurrence</xsl:attribute>
			</xsl:if>
			<xsl:apply-templates select="Id"/>
			<xsl:apply-templates select="Alias_id"/>
			<xsl:apply-templates select="Description"/>
			<xsl:apply-templates select="Part"/>
			<xsl:apply-templates select="Installation_information/Installation_instruction"/>
			<xsl:if test="local-name(.)='Specified_co_pack_occurrence'">
				<xsl:apply-templates select="Related_assembly"/>
				<xsl:apply-templates select="Related_occurrence"/>
			</xsl:if>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Connector_occurrence|Specified_connector_occurrence">
		<xsl:element name="Connector_occurrence">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:if test="local-name(.)='Specified_connector_occurrence'">
				<xsl:attribute name="xsi:type">kbl:Specified_connector_occurrence</xsl:attribute>
			</xsl:if>
			<xsl:apply-templates select="Id"/>
			<xsl:apply-templates select="Alias_id"/>
			<xsl:apply-templates select="Usage"/>
			<xsl:apply-templates select="Placement"/>
			<xsl:apply-templates select="Part"/>
			<!-- create Contact_points -->
			<xsl:apply-templates select="Cavity" mode="createContactPoint"/>
			<xsl:apply-templates select="Installation_information/Installation_instruction"/>
			<!-- create Slot_occurrence on the basis of the corresponding Slot -->
			<xsl:apply-templates select="key('SlotKey',Part)" mode="create_occurrence">
				<xsl:with-param name="context" select="."/>
			</xsl:apply-templates>
			<xsl:if test="local-name(.)='Specified_connector_occurrence'">
				<xsl:apply-templates select="Related_assembly"/>
				<xsl:apply-templates select="Related_occurrence"/>
			</xsl:if>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Fixing_occurrence|Specified_fixing_occurrence">
		<xsl:element name="Fixing_occurrence">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:if test="local-name(.)='Specified_fixing_occurrence'">
				<xsl:attribute name="xsi:type">kbl:Specified_fixing_occurrence</xsl:attribute>
			</xsl:if>
			<xsl:apply-templates select="Id"/>
			<xsl:apply-templates select="Alias_id"/>
			<xsl:apply-templates select="Placement"/>
			<xsl:apply-templates select="Part"/>
			<xsl:apply-templates select="Installation_information/Installation_instruction"/>
			<xsl:if test="local-name(.)='Specified_fixing_occurrence'">
				<xsl:apply-templates select="Related_assembly"/>
				<xsl:apply-templates select="Related_occurrence"/>
			</xsl:if>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="General_wire_occurrence">
		<xsl:element name="General_wire_occurrence">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:attribute name="xsi:type"><xsl:value-of select="concat('kbl:',@xsi:type)"/></xsl:attribute>
			<xsl:apply-templates select="Part"/>
			<xsl:apply-templates select="Installation_information/Installation_instruction"/>
			<xsl:apply-templates select="Length_information/Wire_length"/>
			<xsl:if test="@xsi:type='Special_wire_occurrence'">
				<xsl:apply-templates select="Special_wire_id"/>
				<xsl:apply-templates select="Core_occurrence"/>
			</xsl:if>
			<xsl:if test="@xsi:type='Wire_occurrence'">
				<xsl:apply-templates select="Wire_number"/>
			</xsl:if>
			<xsl:if test="@xsi:type='Specified_wire_occurrence'">
				<xsl:apply-templates select="Wire_number"/>
				<xsl:apply-templates select="Related_assembly"/>
				<xsl:apply-templates select="Related_occurrence"/>
			</xsl:if>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Special_terminal_occurrence|Specified_special_terminal_occurrence">
		<xsl:element name="Special_terminal_occurrence">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:if test="local-name(.)='Specified_special_terminal_occurrence'">
				<xsl:attribute name="xsi:type">kbl:Specified_special_terminal_occurrence</xsl:attribute>
			</xsl:if>
			<xsl:apply-templates select="Id"/>
			<xsl:apply-templates select="Alias_id"/>
			<xsl:apply-templates select="Placement"/>
			<xsl:apply-templates select="Part"/>
			<xsl:apply-templates select="Installation_information/Installation_instruction"/>
			<xsl:apply-templates select="Part_substitution"/>
			<xsl:if test="local-name(.)='Specified_special_terminal_occurrence'">
				<xsl:apply-templates select="Related_assembly"/>
				<xsl:apply-templates select="Related_occurrence"/>
			</xsl:if>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Terminal_occurrence|Specified_terminal_occurrence">
		<xsl:element name="Terminal_occurrence">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:if test="local-name(.)='Specified_terminal_occurrence'">
				<xsl:attribute name="xsi:type">kbl:Specified_terminal_occurrence</xsl:attribute>
			</xsl:if>
			<xsl:apply-templates select="Part"/>
			<xsl:apply-templates select="Part_substitution"/>
			<xsl:if test="local-name(.)='Specified_terminal_occurrence'">
				<xsl:apply-templates select="Related_assembly"/>
				<xsl:apply-templates select="Related_occurrence"/>
			</xsl:if>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Wire_protection_occurrence|Specified_wire_protection_occurrence">
		<xsl:element name="Wire_protection_occurrence">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:if test="local-name(.)='Specified_wire_protection_occurrence'">
				<xsl:attribute name="xsi:type">kbl:Specified_wire_protection_occurrence</xsl:attribute>
			</xsl:if>
			<xsl:apply-templates select="Id"/>
			<xsl:apply-templates select="Alias_id"/>
			<xsl:apply-templates select="Protection_length"/>
			<xsl:apply-templates select="Part"/>
			<xsl:apply-templates select="Installation_information/Installation_instruction"/>
			<xsl:if test="local-name(.)='Specified_wire_protection_occurrence'">
				<xsl:apply-templates select="Related_assembly"/>
				<xsl:apply-templates select="Related_occurrence"/>
			</xsl:if>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Cavity_plug">
		<xsl:element name="Cavity_plug">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Part_number"/>
			<xsl:call-template name="emptyCompany_name"/>
			<xsl:apply-templates select="Alias_part"/>
			<xsl:apply-templates select="Version"/>
			<xsl:apply-templates select="Abbreviation"/>
			<xsl:apply-templates select="Description"/>
			<xsl:apply-templates select="Predecessor_part_number"/>
			<xsl:apply-templates select="Degree_of_maturity"/>
			<xsl:apply-templates select="Copyright_note"/>
			<xsl:apply-templates select="Mass_information"/>
			<xsl:call-template name="External_references"/>
			<xsl:apply-templates select="Change"/>
			<xsl:apply-templates select="Material_information"/>
			<xsl:apply-templates select="Processing_information/Processing_instruction"/>
			<xsl:apply-templates select="Colour"/>
			<xsl:apply-templates select="Plug_type"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Plug_type">
		<xsl:element name="Plug_type">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Cavity_seal">
		<xsl:element name="Cavity_seal">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Part_number"/>
			<xsl:call-template name="emptyCompany_name"/>
			<xsl:apply-templates select="Alias_part"/>
			<xsl:apply-templates select="Version"/>
			<xsl:apply-templates select="Abbreviation"/>
			<xsl:apply-templates select="Description"/>
			<xsl:apply-templates select="Predecessor_part_number"/>
			<xsl:apply-templates select="Degree_of_maturity"/>
			<xsl:apply-templates select="Copyright_note"/>
			<xsl:apply-templates select="Mass_information"/>
			<xsl:call-template name="External_references"/>
			<xsl:apply-templates select="Change"/>
			<xsl:apply-templates select="Material_information"/>
			<xsl:apply-templates select="Processing_information/Processing_instruction"/>
			<xsl:apply-templates select="Colour"/>
			<xsl:apply-templates select="Seal_type"/>
			<xsl:apply-templates select="Wire_size"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Connector_housing">
		<xsl:element name="Connector_housing">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Part_number"/>
			<xsl:call-template name="emptyCompany_name"/>
			<xsl:apply-templates select="Alias_part"/>
			<xsl:apply-templates select="Version"/>
			<xsl:apply-templates select="Abbreviation"/>
			<xsl:apply-templates select="Description"/>
			<xsl:apply-templates select="Predecessor_part_number"/>
			<xsl:apply-templates select="Degree_of_maturity"/>
			<xsl:apply-templates select="Copyright_note"/>
			<xsl:apply-templates select="Mass_information"/>
			<xsl:call-template name="External_references"/>
			<xsl:apply-templates select="Change"/>
			<xsl:apply-templates select="Material_information"/>
			<xsl:apply-templates select="Processing_information/Processing_instruction"/>
			<xsl:apply-templates select="Housing_colour"/>
			<xsl:apply-templates select="Housing_code"/>
			<xsl:apply-templates select="Housing_type"/>
			<xsl:apply-templates select="Slot"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Housing_colour">
		<xsl:element name="Housing_colour">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Housing_code">
		<xsl:element name="Housing_code">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Housing_type">
		<xsl:element name="Housing_type">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Creation">
		<xsl:element name="Creation">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Name"/>
			<xsl:apply-templates select="Department"/>
			<xsl:apply-templates select="Date"/>
			<!-- concatenate all isAppliedTo -->
			<xsl:if test="Is_applied_to">
				<xsl:variable name="isAppliedTo">
					<xsl:for-each select="Is_applied_to">
						<xsl:value-of select="."/>
						<xsl:text> </xsl:text>
					</xsl:for-each>
				</xsl:variable>
				<xsl:element name="Is_applied_to">
					<xsl:value-of select="normalize-space($isAppliedTo)"/>
				</xsl:element>
			</xsl:if>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="External_reference">
		<xsl:element name="External_reference">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Document_type"/>
			<xsl:apply-templates select="Document_number"/>
			<xsl:apply-templates select="Change_level"/>
			<xsl:apply-templates select="File_name"/>
			<xsl:apply-templates select="Location"/>
			<xsl:apply-templates select="Data_format"/>
			<xsl:apply-templates select="Creating_system"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Document_type">
		<xsl:element name="Document_type">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Document_number">
		<xsl:element name="Document_number">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Change_level">
		<xsl:element name="Change_level">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="File_name">
		<xsl:element name="File_name">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Data_format">
		<xsl:element name="Data_format">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Creating_system">
		<xsl:element name="Creating_system">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="General_terminal">
		<xsl:element name="General_terminal">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Part_number"/>
			<xsl:call-template name="emptyCompany_name"/>
			<xsl:apply-templates select="Alias_part"/>
			<xsl:apply-templates select="Version"/>
			<xsl:apply-templates select="Abbreviation"/>
			<xsl:apply-templates select="Description"/>
			<xsl:apply-templates select="Predecessor_part_number"/>
			<xsl:apply-templates select="Degree_of_maturity"/>
			<xsl:apply-templates select="Copyright_note"/>
			<xsl:apply-templates select="Mass_information"/>
			<xsl:call-template name="External_references"/>
			<xsl:apply-templates select="Change"/>
			<xsl:apply-templates select="Material_information"/>
			<xsl:apply-templates select="Processing_information/Processing_instruction"/>
			<xsl:apply-templates select="Terminal_type"/>
			<xsl:apply-templates select="Plating_material"/>
  			<xsl:apply-templates select="Cross_section_area" mode="Value_range"/>
			<xsl:apply-templates select="Outside_diameter" mode="Value_range"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Terminal_type">
		<xsl:element name="Terminal_type">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="General_wire">
		<xsl:element name="General_wire">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Part_number"/>
			<xsl:call-template name="emptyCompany_name"/>
			<xsl:apply-templates select="Alias_part"/>
			<xsl:apply-templates select="Version"/>
			<xsl:apply-templates select="Abbreviation"/>
			<xsl:apply-templates select="Description"/>
			<xsl:apply-templates select="Predecessor_part_number"/>
			<xsl:apply-templates select="Degree_of_maturity"/>
			<xsl:apply-templates select="Copyright_note"/>
			<xsl:apply-templates select="Mass_information"/>
			<xsl:call-template name="External_references"/>
			<xsl:apply-templates select="Change"/>
			<xsl:apply-templates select="Material_information"/>
			<xsl:apply-templates select="Processing_information/Processing_instruction"/>
			<xsl:apply-templates select="Cable_designator"/>
			<xsl:apply-templates select="Wire_type"/>
			<xsl:apply-templates select="Bend_radius"/>
			<xsl:apply-templates select="Cross_section_area"/>
			<xsl:apply-templates select="Outside_diameter"/>
			<xsl:apply-templates select="Core"/>
			<xsl:apply-templates select="Cover_colour/Wire_colour"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Cable_designator">
		<xsl:element name="Cable_designator">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Node">
		<xsl:element name="Node">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Id"/>
			<xsl:for-each select="Coordinates_3D/Cartesian_point">
				<xsl:element name="Cartesian_point">
					<xsl:value-of select="@id"/>
				</xsl:element>
			</xsl:for-each>
			<xsl:apply-templates select="Referenced_components"/>
			<xsl:apply-templates select="Processing_information/Processing_instruction"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Referenced_components">
		<xsl:element name="Referenced_components">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Routing">
		<xsl:element name="Routing">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Routed_wire"/>
			<xsl:apply-templates select="Segments"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Routed_wire">
		<xsl:element name="Routed_wire">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Segments">
		<xsl:element name="Segments">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Unit">
		<xsl:element name="Unit">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Unit_name"/>
			<xsl:apply-templates select="Si_unit_name"/>
			<xsl:apply-templates select="Si_prefix"/>
			<xsl:choose>
				<xsl:when test="Si_unit_name='square metre'">
					<xsl:element name="Si_dimension">
						<xsl:text>square</xsl:text>
					</xsl:element>
				</xsl:when>
			</xsl:choose>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Unit_name">
		<xsl:element name="Unit_name">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Si_unit_name">
		<xsl:element name="Si_unit_name">
			<xsl:choose>
				<xsl:when test="current()='meter'">
					<xsl:text>metre</xsl:text>
				</xsl:when>
				<xsl:when test="current()='square metre'">
					<xsl:text>metre</xsl:text>
				</xsl:when>
				<xsl:when test="current()='gramm'">
					<xsl:text>gram</xsl:text>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="."/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Si_prefix">
		<xsl:element name="Si_prefix">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Value_range" mode="create">
		<xsl:element name="Unit">
			<xsl:attribute name="id"><xsl:value-of select="Unit_component/Unit/@id"/></xsl:attribute>
			<xsl:apply-templates select="Unit_component/Unit/Unit_name"/>
			<xsl:apply-templates select="Unit_component/Unit/Si_unit_name"/>
			<xsl:apply-templates select="Unit_component/Unit/Si_prefix"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Wire_protection">
		<xsl:element name="Wire_protection">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Part_number"/>
			<xsl:call-template name="emptyCompany_name"/>
			<xsl:apply-templates select="Alias_part"/>
			<xsl:apply-templates select="Version"/>
			<xsl:apply-templates select="Abbreviation"/>
			<xsl:apply-templates select="Description"/>
			<xsl:apply-templates select="Predecessor_part_number"/>
			<xsl:apply-templates select="Degree_of_maturity"/>
			<xsl:apply-templates select="Copyright_note"/>
			<xsl:apply-templates select="Mass_information"/>
			<xsl:call-template name="External_references"/>
			<xsl:apply-templates select="Change"/>
			<xsl:apply-templates select="Material_information"/>
			<xsl:apply-templates select="Processing_information/Processing_instruction"/>
			<xsl:apply-templates select="Protection_type"/>
			<xsl:apply-templates select="Type_dependent_parameter"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Protection_type">
		<xsl:element name="Protection_type">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Type_dependent_parameter">
		<xsl:element name="Type_dependent_parameter">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Change_request">
		<xsl:element name="Change_request">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Change_date">
		<xsl:element name="Change_date">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Responsible_designer">
		<xsl:element name="Responsible_designer">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Designer_department">
		<xsl:element name="Designer_department">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Approver_name">
		<xsl:element name="Approver_name">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Approver_department">
		<xsl:element name="Approver_department">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Co_pack_part">
		<xsl:element name="Co_pack_part">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Part_number"/>
			<xsl:call-template name="emptyCompany_name"/>
			<xsl:apply-templates select="Alias_part"/>
			<xsl:apply-templates select="Version"/>
			<xsl:apply-templates select="Abbreviation"/>
			<xsl:apply-templates select="Description"/>
			<xsl:apply-templates select="Predecessor_part_number"/>
			<xsl:apply-templates select="Degree_of_maturity"/>
			<xsl:apply-templates select="Copyright_note"/>
			<xsl:apply-templates select="Mass_information"/>
			<xsl:call-template name="External_references"/>
			<xsl:apply-templates select="Change"/>
			<xsl:apply-templates select="Material_information"/>
			<xsl:apply-templates select="Processing_information/Processing_instruction"/>
			<xsl:apply-templates select="Part_type"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Harness">
		<xsl:element name="Harness">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Part_number"/>
			<xsl:apply-templates select="Company_name"/>
			<xsl:apply-templates select="Alias_part"/>
			<xsl:apply-templates select="Version"/>
			<xsl:apply-templates select="Abbreviation"/>
			<xsl:apply-templates select="Description"/>
			<xsl:apply-templates select="Predecessor_part_number"/>
			<xsl:apply-templates select="Degree_of_maturity"/>
			<xsl:apply-templates select="Copyright_note"/>
			<xsl:apply-templates select="Mass_information"/>
			<xsl:call-template name="External_references"/>
			<xsl:apply-templates select="Change"/>
			<xsl:apply-templates select="Material_information"/>
			<xsl:apply-templates select="Processing_information/Processing_instruction"/>
			<xsl:apply-templates select="Project_number"/>
			<xsl:apply-templates select="Car_classification_level_2"/>
			<xsl:apply-templates select="Car_classification_level_3"/>
			<xsl:apply-templates select="Car_classification_level_4"/>
			<xsl:apply-templates select="Model_year"/>
			<xsl:apply-templates select="Content"/>
			<xsl:apply-templates select="Accessory_occurrence"/>
			<xsl:apply-templates select="Specified_accessory_occurrence"/>
			<xsl:apply-templates select="Assembly_part_occurrence"/>
			<xsl:apply-templates select="Cavity_plug_occurrence"/>
			<xsl:apply-templates select="Specified_cavity_plug_occurrence"/>
			<xsl:apply-templates select="Cavity_seal_occurrence"/>
			<xsl:apply-templates select="Specified_cavity_seal_occurrence"/>
			<xsl:apply-templates select="Co_pack_occurrence"/>
			<xsl:apply-templates select="Specified_co_pack_occurrence"/>
			<xsl:apply-templates select="Connection"/>
			<xsl:apply-templates select="Connector_occurrence"/>
			<xsl:apply-templates select="Specified_connector_occurrence"/>
			<xsl:apply-templates select="Fixing_occurrence"/>
			<xsl:apply-templates select="Specified_fixing_occurrence"/>
			<xsl:apply-templates select="General_wire_occurrence"/>
			<xsl:apply-templates select="Specified_wire_occurrence"/>
			<xsl:apply-templates select="Specified_special_wire_occurrence"/>
			<xsl:apply-templates select="Special_terminal_occurrence"/>
			<xsl:apply-templates select="Specified_special_terminal_occurrence"/>
			<xsl:apply-templates select="Terminal_occurrence"/>
			<xsl:apply-templates select="Specified_terminal_occurrence"/>
			<xsl:apply-templates select="Wire_protection_occurrence"/>
			<xsl:apply-templates select="Specified_wire_protection_occurrence"/>
			<xsl:apply-templates select="Harness_configuration"/>
			<xsl:apply-templates select="Module"/>
			<xsl:apply-templates select="/KBL_schema/Module_configuration"/>
			<xsl:apply-templates select="Module_configuration"/>
			<xsl:apply-templates select="/KBL_schema/Module_family"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Project_number">
		<xsl:element name="Project_number">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template name="emptyProject_number">
		<xsl:element name="Project_number">
			<xsl:text>/NULL</xsl:text>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Car_classification_level_2">
		<xsl:element name="Car_classification_level_2">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template name="emptyCar_classification_level_2">
		<xsl:element name="Car_classification_level_2">
			<xsl:text>n/v</xsl:text>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Car_classification_level_3">
		<xsl:element name="Car_classification_level_3">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Car_classification_level_4">
		<xsl:element name="Car_classification_level_4">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Model_year">
		<xsl:element name="Model_year">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template name="emptyModel_year">
		<xsl:element name="Model_year">
			<xsl:text>n/v</xsl:text>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Content">
		<xsl:element name="Content">
			<xsl:choose>
				<xsl:when test="current()='Harness Complete Set'">
					<xsl:text>harness complete set</xsl:text>
				</xsl:when>
				<xsl:when test="current()='harness completeset'">
					<xsl:text>harness complete set</xsl:text>
				</xsl:when>
				<xsl:when test="current()='Kabelbaum-Komplettsatz'">
					<xsl:text>harness complete set</xsl:text>
				</xsl:when>
				<xsl:when test="current()='Module'">
					<xsl:text>module</xsl:text>
				</xsl:when>
				<xsl:when test="current()='Modul'">
					<xsl:text>module</xsl:text>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="."/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Assembly_part_occurrence">
		<xsl:element name="Assembly_part_occurrence">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Id"/>
			<xsl:apply-templates select="Alias_id"/>
			<xsl:apply-templates select="Description"/>
			<xsl:apply-templates select="Placement"/>
			<xsl:apply-templates select="Part"/>
			<xsl:apply-templates select="Installation_information/Installation_instruction"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Connection">
		<xsl:element name="Connection">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Id"/>
			<xsl:apply-templates select="Signal_name"/>
			<xsl:apply-templates select="Wire"/>
			<xsl:apply-templates select="Extremities"/>
			<xsl:apply-templates select="Installation_information/Installation_instruction"/>
			<xsl:apply-templates select="Processing_information/Processing_instruction"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Signal_name">
		<xsl:element name="Signal_name">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Wire">
		<xsl:element name="Wire">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Segment">
		<xsl:element name="Segment">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Id"/>
			<xsl:apply-templates select="Start_vector"/>
			<xsl:apply-templates select="End_vector"/>
			<xsl:apply-templates select="Represented_length"/>
			<xsl:apply-templates select="Real_length"/>
			<xsl:apply-templates select="End_node"/>
			<xsl:apply-templates select="Start_node"/>
			<xsl:apply-templates select="Center_curve/B_spline_curve"/>
			<xsl:apply-templates select="Fixing_assignment"/>
			<xsl:apply-templates select="Protection_area"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="End_node">
		<xsl:element name="End_node">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Fixing_assignment">
		<xsl:element name="Fixing_assignment">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Location"/>
			<xsl:apply-templates select="Orientation"/>
			<xsl:apply-templates select="Fixing" mode="Fixing_assignment"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Protection_area">
		<xsl:element name="Protection_area">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Start_location"/>
			<xsl:apply-templates select="End_location"/>
			<xsl:apply-templates select="Gradient"/>
			<xsl:apply-templates select="Associated_protection"/>
			<xsl:apply-templates select="Processing_information/Processing_instruction"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Start_location">
		<xsl:element name="Start_location">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="End_location">
		<xsl:element name="End_location">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Associated_protection">
		<xsl:element name="Associated_protection">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Start_node">
		<xsl:element name="Start_node">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Start_vector">
		<xsl:element name="Start_vector">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="End_vector">
		<xsl:element name="End_vector">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Module_family">
		<xsl:element name="Module_families">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Id"/>
			<xsl:apply-templates select="Description"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Module">
		<xsl:element name="Module">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Part_number"/>
			<xsl:apply-templates select="Company_name"/>
			<xsl:apply-templates select="Alias_part"/>
			<xsl:apply-templates select="Version"/>
			<xsl:apply-templates select="Abbreviation"/>
			<xsl:apply-templates select="Description"/>
			<xsl:apply-templates select="Predecessor_part_number"/>
			<xsl:apply-templates select="Degree_of_maturity"/>
			<xsl:apply-templates select="Copyright_note"/>
			<xsl:apply-templates select="Mass_information"/>
			<xsl:call-template name="External_references"/>
			<xsl:apply-templates select="Change"/>
			<xsl:apply-templates select="Material_information"/>
			<xsl:apply-templates select="Processing_information/Processing_instruction"/>
			<xsl:apply-templates select="Project_number"/>
			<xsl:apply-templates select="Car_classification_level_2"/>
			<xsl:apply-templates select="Car_classification_level_3"/>
			<xsl:apply-templates select="Car_classification_level_4"/>
			<xsl:apply-templates select="Model_year"/>
			<xsl:apply-templates select="Content"/>
			<xsl:apply-templates select="Of_family"/>
			<xsl:apply-templates select="Module_configuration"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Of_family">
		<xsl:element name="Of_family">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Harness_configuration">
		<xsl:element name="Harness_configuration">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Part_number"/>
			<xsl:call-template name="emptyCompany_name"/>
			<xsl:apply-templates select="Alias_part"/>
			<xsl:apply-templates select="Version"/>
			<xsl:apply-templates select="Abbreviation"/>
			<xsl:apply-templates select="Description"/>
			<xsl:apply-templates select="Predecessor_part_number"/>
			<xsl:apply-templates select="Degree_of_maturity"/>
			<xsl:apply-templates select="Copyright_note"/>
			<xsl:apply-templates select="Mass_information"/>
			<xsl:call-template name="External_references"/>
			<xsl:apply-templates select="Change"/>
			<xsl:apply-templates select="Material_information"/>
			<xsl:apply-templates select="Processing_information/Processing_instruction"/>
			<xsl:call-template name="emptyProject_number"/>
			<xsl:call-template name="emptyCar_classification_level_2"/>
			<xsl:call-template name="emptyModel_year"/>
			<xsl:apply-templates select="Logistic_control_information"/>
			<xsl:apply-templates select="Modules"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Modules">
		<xsl:element name="Modules">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Part_substitution">
		<xsl:element name="Replacing">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Replacing"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Replacing">
		<xsl:element name="Replaced">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Usage">
		<xsl:element name="Usage">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Protection_length">
		<xsl:element name="Protection_length">
			<xsl:attribute name="id"><xsl:value-of select="Numerical_value/@id"/></xsl:attribute>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Plating_material">
		<xsl:element name="Plating_material">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Core">
		<xsl:element name="Core">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Id"/>
			<xsl:apply-templates select="Cable_designator"/>
			<xsl:apply-templates select="Wire_type"/>
			<xsl:apply-templates select="Cross_section_area"/>
			<xsl:apply-templates select="Outside_diameter"/>
			<xsl:apply-templates select="Bend_radius"/>
			<xsl:apply-templates select="Core_colour/Wire_colour" mode="core"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Fixing">
		<xsl:element name="Fixing">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Part_number"/>
			<xsl:call-template name="emptyCompany_name"/>
			<xsl:apply-templates select="Alias_part"/>
			<xsl:apply-templates select="Version"/>
			<xsl:apply-templates select="Abbreviation"/>
			<xsl:apply-templates select="Description"/>
			<xsl:apply-templates select="Predecessor_part_number"/>
			<xsl:apply-templates select="Degree_of_maturity"/>
			<xsl:apply-templates select="Copyright_note"/>
			<xsl:apply-templates select="Mass_information"/>
			<xsl:call-template name="External_references"/>
			<xsl:apply-templates select="Change"/>
			<xsl:apply-templates select="Material_information"/>
			<xsl:apply-templates select="Processing_information/Processing_instruction"/>
			<xsl:apply-templates select="Fixing_type"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Orientation">
		<xsl:element name="Orientation">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Module_configuration">
		<xsl:element name="Module_configuration">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Logistic_control_information"/>
			<xsl:apply-templates select="Configuration_type"/>
			<xsl:if test="Controlled_components">
				<xsl:element name="Controlled_components">
					<xsl:variable name="controlledComponents">
						<xsl:for-each select="Controlled_components">
							<xsl:value-of select="."/>
							<xsl:text> </xsl:text>
						</xsl:for-each>
					</xsl:variable>
					<xsl:value-of select="normalize-space($controlledComponents)"/>
				</xsl:element>
			</xsl:if>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Wire_type">
		<xsl:element name="Wire_type">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Mass_information">
		<xsl:element name="Mass_information">
			<xsl:attribute name="id"><xsl:value-of select="Numerical_value/@id"/></xsl:attribute>
			<xsl:apply-templates select="Numerical_value/Unit_component"/>
			<xsl:apply-templates select="Numerical_value/Value_component"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Bend_radius">
		<xsl:element name="Bend_radius">
			<xsl:attribute name="id"><xsl:value-of select="Numerical_value/@id"/></xsl:attribute>
			<xsl:apply-templates select="Numerical_value/Unit_component"/>
			<xsl:apply-templates select="Numerical_value/Value_component"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Outside_diameter">
		<xsl:element name="Outside_diameter">
			<xsl:attribute name="id"><xsl:value-of select="Numerical_value/@id"/></xsl:attribute>
			<xsl:apply-templates select="Numerical_value/Unit_component"/>
			<xsl:apply-templates select="Numerical_value/Value_component"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Outside_diameter" mode="Value_range">
		<xsl:element name="Outside_diameter">
			<xsl:attribute name="id"><xsl:value-of select="Value_range/@id"/></xsl:attribute>
			<xsl:apply-templates select="Value_range/Unit_component"/>
			<xsl:apply-templates select="Value_range/Minimum"/>
			<xsl:apply-templates select="Value_range/Maximum"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Cross_section_area">
		<xsl:element name="Cross_section_area">
			<xsl:attribute name="id"><xsl:value-of select="Numerical_value/@id"/></xsl:attribute>
			<xsl:apply-templates select="Numerical_value/Unit_component"/>
			<xsl:apply-templates select="Numerical_value/Value_component"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Cross_section_area" mode="Value_range">
		<xsl:element name="Cross_section_area">
			<xsl:attribute name="id"><xsl:value-of select="Value_range/@id"/></xsl:attribute>
			<xsl:apply-templates select="Value_range/Unit_component"/>
			<xsl:apply-templates select="Value_range/Minimum"/>
			<xsl:apply-templates select="Value_range/Maximum"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Core_colour">
		<xsl:element name="Core_colour">
			<xsl:attribute name="id"><xsl:value-of select="Wire_colour/@id"/></xsl:attribute>
			<xsl:apply-templates select="Wire_colour/Colour_type"/>
			<xsl:apply-templates select="Wire_colour/Colour_value"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Alias_part">
		<xsl:element name="Alias_id">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Part_number" mode="Alias"/>
			<xsl:apply-templates select="Company_name" mode="Alias"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Company_name" mode="Alias">
		<xsl:element name="Scope">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Length_type">
		<xsl:element name="Length_type">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Length_value">
		<xsl:element name="Length_value">
			<xsl:attribute name="id"><xsl:value-of select="Numerical_value/@id"/></xsl:attribute>
			<xsl:apply-templates select="Numerical_value/Unit_component"/>
			<xsl:apply-templates select="Numerical_value/Value_component"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Numerical_value/Unit_component">
		<xsl:element name="Unit_component">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>	
	
	<xsl:template match="Value_range/Unit_component">
		<xsl:element name="Unit_component">
			<xsl:value-of select="Unit/@id"/>
		</xsl:element>
	</xsl:template>	
	
	<xsl:template match="Wire_size">
		<xsl:element name="Wire_size">
			<xsl:attribute name="id"><xsl:value-of select="Value_range/@id"/></xsl:attribute>
			<xsl:apply-templates select="Value_range/Unit_component"/>
			<xsl:apply-templates select="Value_range/Minimum"/>
			<xsl:apply-templates select="Value_range/Maximum"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Minimum">
		<xsl:element name="Minimum">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Maximum">
		<xsl:element name="Maximum">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Version">
		<xsl:element name="Version">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Description">
		<xsl:element name="Description">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Predecessor_part_number">
		<xsl:element name="Predecessor_part_number">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Degree_of_maturity">
		<xsl:element name="Degree_of_maturity">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Copyright_note">
		<xsl:element name="Copyright_note">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template name="External_references">
		<!-- concatenate all IDREFs of all External_references of an element -->
		<xsl:if test="External_references">
			<xsl:variable name="externalRefIDs">
				<xsl:for-each select="External_references">
					<xsl:value-of select="."/>
					<xsl:text> </xsl:text>
				</xsl:for-each>
			</xsl:variable>
			<xsl:element name="External_references">
				<xsl:value-of select="normalize-space($externalRefIDs)"/>
			</xsl:element>
		</xsl:if>
	</xsl:template>
	
	<xsl:template match="Change">
		<xsl:element name="Change">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Id"/>
			<xsl:apply-templates select="Description"/>
			<xsl:apply-templates select="Change_request"/>
			<xsl:apply-templates select="Change_date"/>
			<xsl:apply-templates select="Responsible_designer"/>
			<xsl:apply-templates select="Designer_department"/>
			<xsl:apply-templates select="Approver_name"/>
			<xsl:apply-templates select="Approver_department"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Fixing_type">
		<xsl:element name="Fixing_type">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Coordinates">
		<xsl:element name="Coordinates">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Represented_length">
		<xsl:element name="Virtual_length">
			<xsl:attribute name="id"><xsl:value-of select="Numerical_value/@id"/></xsl:attribute>
			<xsl:apply-templates select="Numerical_value/Unit_component"/>
			<xsl:apply-templates select="Numerical_value/Value_component"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Real_length">
		<xsl:element name="Physical_length">
			<xsl:attribute name="id"><xsl:value-of select="Numerical_value/@id"/></xsl:attribute>
			<xsl:apply-templates select="Numerical_value/Unit_component"/>
			<xsl:apply-templates select="Numerical_value/Value_component"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Value_component">
		<xsl:element name="Value_component">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Degree">
		<xsl:element name="Degree">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Control_points">
		<xsl:element name="Control_points">
			<xsl:for-each select="Cartesian_point">
				<xsl:value-of select="@id"/>
				<xsl:if test="position() != last()">
					<xsl:text> </xsl:text>
				</xsl:if>
			</xsl:for-each>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Gradient">
		<xsl:element name="Gradient">
			<xsl:attribute name="id"><xsl:value-of select="Numerical_value/@id"/></xsl:attribute>
			<xsl:apply-templates select="Numerical_value/Unit_component"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Location">
		<xsl:element name="Location">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Logistic_control_information">
		<xsl:element name="Logistic_control_information">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Configuration_type">
		<xsl:element name="Configuration_type">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Material_information">
		<xsl:element name="Material_information">
			<xsl:attribute name="id"><xsl:value-of select="Material/@id"/></xsl:attribute>		
			<xsl:apply-templates select="Material/Material_key"/>
			<xsl:apply-templates select="Material/Material_reference_system"/>
		</xsl:element>
	</xsl:template>	
	
	<xsl:template match="Material_key">
		<xsl:element name="Material_key">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Material_reference_system">
		<xsl:element name="Material_reference_system">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Instruction_type">
		<xsl:element name="Instruction_type">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Instruction_value">
		<xsl:element name="Instruction_value">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Placement">
		<xsl:element name="Placement">
			<xsl:attribute name="id"><xsl:value-of select="Transformation/@id"/></xsl:attribute>
			<xsl:choose>
				<xsl:when test="Transformation/U">
					<xsl:apply-templates select="Transformation/U"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:call-template name="EmptyU"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="Transformation/V">
					<xsl:apply-templates select="Transformation/V"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:call-template name="EmptyV"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:apply-templates select="Transformation/Coordinates_3D"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="U">
		<xsl:element name="U">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="V">
		<xsl:element name="V">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template name="EmptyU">
		<xsl:element name="U">
			<xsl:text>0.0</xsl:text>
		</xsl:element>
		<xsl:element name="U">
			<xsl:text>0.0</xsl:text>
		</xsl:element>
		<xsl:element name="U">
			<xsl:text>1.0</xsl:text>
		</xsl:element>
	</xsl:template>
	<xsl:template name="EmptyV">
		<xsl:element name="V">
			<xsl:text>1.0</xsl:text>
		</xsl:element>
		<xsl:element name="V">
			<xsl:text>0.0</xsl:text>
		</xsl:element>
		<xsl:element name="V">
			<xsl:text>0.0</xsl:text>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Id">
		<xsl:element name="Id">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Abbreviation">
		<xsl:element name="Abbreviation">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Part_number">
		<xsl:element name="Part_number">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Fixing" mode="Fixing_assignment">
		<xsl:element name="Fixing">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Part_number" mode="Alias">
		<xsl:element name="Alias_id">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Company_name">
		<xsl:element name="Company_name">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template name="emptyCompany_name">
		<xsl:element name="Company_name">
			<xsl:text>/NULL</xsl:text>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Coordinates_3D">
		<xsl:element name="Cartesian_point">
			<xsl:value-of select="Cartesian_point/@id"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Alias_id">
		<xsl:element name="Alias_id">
			<xsl:attribute name="id"><xsl:value-of select="generate-id(.)"/></xsl:attribute>
			<xsl:element name="Alias_id">
				<xsl:value-of select="."/>
			</xsl:element>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Cartesian_point">
		<xsl:element name="Cartesian_point">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Coordinates"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Cartesian_point" mode="create">
		<xsl:element name="Cartesian_point">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Coordinates"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Number_of_cavities">
		<xsl:element name="Number_of_cavities">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Slot">
		<xsl:element name="Slots">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Id"/>
			<xsl:apply-templates select="Number_of_cavities"/>
			<xsl:apply-templates select="key('CavityKey',@id)"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Slot" mode="create_occurrence">
		<xsl:param name="context"/>
		<xsl:variable name="Cavities" select="$context/Cavity[Slot=current()/@id]"/>
		<!-- create slot if a cavity exists -->
		<xsl:if test="$Cavities">
			<xsl:element name="Slots">
				<xsl:attribute name="id"><xsl:value-of select="concat($context/@id,generate-id(.))"/></xsl:attribute>
				<xsl:element name="Part">
					<xsl:value-of select="@id"/>
				</xsl:element>
				<xsl:apply-templates select="$Cavities" mode="create_occurrence"/>
			</xsl:element>
		</xsl:if>
	</xsl:template>
	
	<xsl:template match="Part">
		<xsl:element name="Part">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Cavity" mode="create_occurrence">
		<xsl:variable name="partId" select="/KBL_schema/Connector_housing/Slot[current()/Slot=@id]/../@id"/>
		<xsl:variable name="slotId" select="concat(/KBL_schema/Connector_housing/Slot[current()/Slot=@id]/@id,$partId)"/>
		<xsl:variable name="cavityId" select="key('CavityIdKey', concat(Id,Slot))[1]/@id"/>
		<xsl:element name="Cavities">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:variable name="associatedPlugs">
				<xsl:call-template name="associatedPart">
					<xsl:with-param name="list" select="Associated_parts"/>
					<xsl:with-param name="type">
						<xsl:text>plug</xsl:text>
					</xsl:with-param>
				</xsl:call-template>
			</xsl:variable>
			<xsl:if test="$associatedPlugs != ''">
				<xsl:element name="Associated_plug">
					<xsl:value-of select="$associatedPlugs"/>
				</xsl:element>
			</xsl:if>
			<xsl:element name="Part">
				<xsl:value-of select="concat($cavityId,$slotId)"/>
			</xsl:element>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Cavity">
		<xsl:variable name="AllCavitiesWithSameId" select="key('CavityIdKey', concat(Id,Slot))"/>
		<xsl:if test="@id=$AllCavitiesWithSameId[1]/@id">
			<xsl:variable name="partId" select="/KBL_schema/Connector_housing/Slot[current()/Slot=@id]/../@id"/>
			<xsl:variable name="slotId" select="concat(/KBL_schema/Connector_housing/Slot[current()/Slot=@id]/@id,$partId)"/>
			<xsl:element name="Cavities">
				<xsl:attribute name="id"><xsl:value-of select="concat(@id,$slotId)"/></xsl:attribute>
				<xsl:element name="Cavity_number">
					<xsl:value-of select="Id"/>
				</xsl:element>
			</xsl:element>
		</xsl:if>
	</xsl:template>
	
	<xsl:template match="Special_wire_id">
		<xsl:element name="Special_wire_id">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Core_occurrence">
		<xsl:element name="Core_occurrence">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Wire_number"/>
			<xsl:apply-templates select="Part"/>
			<xsl:apply-templates select="Length_information/Wire_length"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Wire_number">
		<xsl:element name="Wire_number">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Related_assembly">
		<xsl:element name="Related_assembly">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Related_occurrence">
		<xsl:element name="Related_occurrence">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Colour_type">
		<xsl:element name="Colour_type">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="Colour_value">
		<xsl:element name="Colour_value">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Wire_colour">
		<xsl:element name="Cover_colour">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Colour_type"/>
			<xsl:apply-templates select="Colour_value"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Wire_colour" mode="core">
		<xsl:element name="Core_colour">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Colour_type"/>
			<xsl:apply-templates select="Colour_value"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Creating_system">
		<xsl:element name="Creating_system">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Installation_instruction">
		<xsl:element name="Installation_information">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Instruction_type"/>
			<xsl:apply-templates select="Instruction_value"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="B_spline_curve">
		<xsl:element name="Center_curve">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Degree"/>
			<xsl:apply-templates select="Control_points"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Extremities">
		<xsl:call-template name="extremity">
			<xsl:with-param name="list" select="."/>
			<xsl:with-param name="first">
				<xsl:text>true</xsl:text>
			</xsl:with-param>
		</xsl:call-template>
	</xsl:template>
	
	<!-- Create extremity for each cavity in the white-space separated list -->
	<xsl:template name="extremity">
		<xsl:param name="list"/>
		<xsl:param name="first"/>
		<xsl:if test="$list != ''">
			<xsl:variable name="cavityId">
				<xsl:choose>
					<xsl:when test="contains($list, ' ')">
						<xsl:value-of select="substring-before($list, ' ')"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="$list"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:variable>
			<xsl:element name="Extremities">
				<xsl:attribute name="id"><xsl:value-of select="concat($cavityId,generate-id(.))"/></xsl:attribute>
				<xsl:variable name="positionOnWire">
					<xsl:value-of select="/KBL_schema/Harness/Connector_occurrence/Cavity[@id=$cavityId]/Position_on_wire/Numerical_value/Value_component"/>
				</xsl:variable>
				<xsl:element name="Position_on_wire">
					<xsl:choose>
						<xsl:when test="$positionOnWire != ''">
							<xsl:value-of select="$positionOnWire"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:choose>
								<xsl:when test="$first='true'">
									<xsl:text>0.0</xsl:text>
								</xsl:when>
								<xsl:when test="$first='false'">
									<xsl:text>1.0</xsl:text>
								</xsl:when>
							</xsl:choose>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:element>
				<!-- Create IDREF to ContactPoint -->
				<xsl:element name="Contact_point">
					<xsl:value-of select="concat($cavityId,'_CP')"/>
				</xsl:element>
			</xsl:element>
			
			<xsl:call-template name="extremity">
				<xsl:with-param name="list" select="substring-after($list, ' ')"/>
				<xsl:with-param name="first">
					<xsl:text>false</xsl:text>
				</xsl:with-param>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	
	<xsl:template match="Cavity" mode="createContactPoint">
		<xsl:element name="Contact_points">
			<xsl:attribute name="id"><xsl:value-of select="concat(@id,'_CP')"/></xsl:attribute>
			<xsl:element name="Id">
				<xsl:value-of select="concat('CP',Id)"/>
			</xsl:element>
			<!-- Create IDREF to associatedParts from Cavity -->
			<xsl:variable name="associatedParts">
				<xsl:call-template name="associatedPart">
					<xsl:with-param name="list" select="Associated_parts"/>
					<xsl:with-param name="type">
						<xsl:text>part</xsl:text>
					</xsl:with-param>
				</xsl:call-template>
			</xsl:variable>
			<xsl:if test="$associatedParts != ''">
				<xsl:element name="Associated_parts">
					<xsl:value-of select="$associatedParts"/>
				</xsl:element>
			</xsl:if>
			<xsl:element name="Contacted_cavity">
				<xsl:value-of select="@id"/>
			</xsl:element>
		</xsl:element>
	</xsl:template>
	
	<!-- Create IDREF for each associated Cavity_plug_occurrence  in the white-space separated list -->
	<xsl:template name="associatedPart">
		<xsl:param name="list"/>
		<xsl:param name="type"/>
		<xsl:choose>
			<xsl:when test="$list != ''">
				<xsl:variable name="associatedPartId">
					<xsl:choose>
						<xsl:when test="contains($list, ' ')">
							<xsl:value-of select="substring-before($list, ' ')"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="$list"/>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:variable>
				<xsl:variable name="first">
					<xsl:if test="$type='plug'">
						<xsl:value-of select="/KBL_schema/Harness/Cavity_plug_occurrence[@id=$associatedPartId]/@id"/>
					</xsl:if>
					<xsl:if test="$type='part'">
						<xsl:value-of select="/KBL_schema/Harness/Terminal_occurrence[@id=$associatedPartId]/@id | /KBL_schema/Harness/Cavity_seal_occurrence[@id=$associatedPartId]/@id | /KBL_schema/Harness/Special_terminal_occurrence[@id=$associatedPartId]/@id"/>
					</xsl:if>
				</xsl:variable>
				<xsl:variable name="rest">
					<xsl:call-template name="associatedPart">
						<xsl:with-param name="list" select="substring-after($list, ' ')"/>
						<xsl:with-param name="type" select="$type"/>
					</xsl:call-template>
				</xsl:variable>
				<xsl:value-of select="normalize-space(concat($first,' ',$rest))"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="''"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<xsl:template match="Seal_type">
		<xsl:element name="Seal_type">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Colour">
		<xsl:element name="Colour">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Processing_instruction">
		<xsl:element name="Processing_information">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Instruction_type"/>
			<xsl:apply-templates select="Instruction_value"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="Wire_length">
		<xsl:element name="Length_information">
			<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
			<xsl:apply-templates select="Length_type"/>
			<xsl:apply-templates select="Length_value"/>
		</xsl:element>
	</xsl:template>
	
</xsl:transform>
<!-- Stylus Studio meta-information - (c) 2004-2005. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="..\Testfiles\vobes_kblxml_H_10_06_2002.kbl" htmlbaseurl="" outputurl="..\Testfiles\vobes_kblxml_H_10_06_2002.xml" processortype="internal" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator=""/></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/><MapperBlockPosition></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
-->
