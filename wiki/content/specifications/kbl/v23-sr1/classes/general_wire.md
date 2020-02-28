---
title: General_wire
toc: false
type: specs
date: "2005-11-01"
draft: false
specification: KBL
version: 2.3.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - General_wire
menu_name: kbl-2.3.sr1
---
<p>A General_wire is a physical wire, performing electrical connection. A General_wire can either be used to define a single wire or a multi-core wire.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 2_Parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Part]({{< relref "part.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Part_number | [String]({{< relref "string.md" >}}) | 1 | <p>The part_number specifies the identifier of the Part. The format of the part number is user defined (OEM specific).</p> | [Part]({{< relref "part.md" >}}) |
|Company_name | [String]({{< relref "string.md" >}}) | 1 | <p>The company_name specifies the name of the organizational context in which the Part_number is defined.</p> | [Part]({{< relref "part.md" >}}) |
|Alias_id | [Alias_identification]({{< relref "alias_identification.md" >}}) | 0..* | <p>The alias_id specifies an additional part_number that is used to identify the Part in another organizational context (e.g. company).</p> | [Part]({{< relref "part.md" >}}) |
|Version | [String]({{< relref "string.md" >}}) | 1 | <p>The version specifies the version identifier of the Part. A version cumulates and consolidates one or more single changes.</p> | [Part]({{< relref "part.md" >}}) |
|Abbreviation | [String]({{< relref "string.md" >}}) | 1 | <p>The abbreviation specifies a short name for a Part.</p> | [Part]({{< relref "part.md" >}}) |
|Description | [String]({{< relref "string.md" >}}) | 1 | <p>The description specifies additional information about the Part.</p> | [Part]({{< relref "part.md" >}}) |
|Predecessor_part_number | [String]({{< relref "string.md" >}}) | 0..1 | <p>The predecessor_part_number specifies the part number of the predecessor of the Part.</p> | [Part]({{< relref "part.md" >}}) |
|Degree_of_maturity | [String]({{< relref "string.md" >}}) | 0..1 | <p>The degree_of_maturity specifies the degree of maturity of a Part. Where applicable the following values shall be used:  - 'draft' - 'planning' - 'equipment order' - 'disposition'</p> | [Part]({{< relref "part.md" >}}) |
|Copyright_note | [String]({{< relref "string.md" >}}) | 0..1 | <p>The copyright_note specifies copyright information for a Part.</p> | [Part]({{< relref "part.md" >}}) |
|Mass_information | [Numerical_value]({{< relref "numerical_value.md" >}}) | 0..1 | <p>The mass_information specifies the mass of a Part. Example:  Valid values for the unit of the Numerical_value specifying the mass are 'gram', 'kilogram', or also 'kg/piece', 'gram/meter'</p> | [Part]({{< relref "part.md" >}}) |
|Cable_designator | [String]({{< relref "string.md" >}}) | 0..1 | <p>The cable_designator specifies additional information to refer to a General_wire. </p> | [General_wire]({{< relref "general_wire.md" >}}) |
|Wire_type | [String]({{< relref "string.md" >}}) | 0..1 | <p>The wire_type specifies the type of a General_wire. Note: There are no values pre-defined. Special values have to be negotiated between exchange partners.  Example: 'individual wire', 'multi-core wire', 'protected wire', 'flat band'.</p> | [General_wire]({{< relref "general_wire.md" >}}) |
|Bend_radius | [Numerical_value]({{< relref "numerical_value.md" >}}) | 0..1 | <p>The bend_radius specifies the bend radius of a wire.</p> | [General_wire]({{< relref "general_wire.md" >}}) |
|Cross_section_area | [Numerical_value]({{< relref "numerical_value.md" >}}) | 0..1 | <p>The cross_section_area specifies the electrical cross section of the General_wire.</p> | [General_wire]({{< relref "general_wire.md" >}}) |
|Outside_diameter | [Numerical_value]({{< relref "numerical_value.md" >}}) | 0..1 | <p>The outside_diameter specifies the outer width of the General_wire.</p> | [General_wire]({{< relref "general_wire.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Core]({{< relref "core.md" >}}) | Core | 0..* | 1 |  |
| [Wire_colour]({{< relref "wire_colour.md" >}}) | Cover_colour | 1..* | 1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [KBL_container]({{< relref "kbl_container.md" >}}) | 1 | General_wire | 0..* |  |
| [General_wire_occurrence]({{< relref "general_wire_occurrence.md" >}}) | 1..* | Part | 1 |  |
