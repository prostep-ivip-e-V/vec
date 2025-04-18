﻿---
title: General_terminal
toc: false
type: specs
date: "2020-06-25"
draft: false
specification: KBL
version: 2.5.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - General_terminal
menu_name: kbl-2.5.sr1
---
<p>Kontakt  A General_terminal is a device designed to terminate a conductor to be affixed usually to a post, stud, chassis, or other conductor or the like in order to establish electrical connection. Note:  A General_terminal describes the active part of the connector, which connects electrical, equal to "contact".</p>

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
|Part_number | [String]({{< relref "string.md" >}}) | 1 | <p> The part_number specifies the identifier of the Part. The format of the part number is user defined (company specific).      </p> | [Part]({{< relref "part.md" >}}) |
|Company_name | [String]({{< relref "string.md" >}}) | 1 | <p>The company_name specifies the name of the organizational context in which the Part_number is defined.</p> | [Part]({{< relref "part.md" >}}) |
|Alias_id | [Alias_identification]({{< relref "alias_identification.md" >}}) | 0..* | <p>The alias_id specifies an additional part_number that is used to identify the Part in another organizational context (e.g. company).</p> | [Part]({{< relref "part.md" >}}) |
|Version | [String]({{< relref "string.md" >}}) | 1 | <p>The version specifies the version identifier of the Part. A version cumulates and consolidates one or more single changes.</p> | [Part]({{< relref "part.md" >}}) |
|Abbreviation | [String]({{< relref "string.md" >}}) | 1 | <p>The abbreviation specifies a short name for a Part.</p> | [Part]({{< relref "part.md" >}}) |
|Description | [String]({{< relref "string.md" >}}) | 1 | <p>The description specifies additional information about the Part.</p> | [Part]({{< relref "part.md" >}}) |
|Localized_description | [Localized_string]({{< relref "localized_string.md" >}}) | 0..* | <p> The description specifies additional information about the object. The Localized_description provides the possibility to define descriptions for different language codes.       </p> | [Part]({{< relref "part.md" >}}) |
|Predecessor_part_number | [String]({{< relref "string.md" >}}) | 0..1 | <p>The predecessor_part_number specifies the part number of the predecessor of the Part.</p> | [Part]({{< relref "part.md" >}}) |
|Degree_of_maturity | [String]({{< relref "string.md" >}}) | 0..1 | <p>The degree_of_maturity specifies the degree of maturity of a Part. Where applicable the following values shall be used:  - 'draft' - 'planning' - 'equipment order' - 'disposition'</p> | [Part]({{< relref "part.md" >}}) |
|Copyright_note | [String]({{< relref "string.md" >}}) | 0..1 | <p>The copyright_note specifies copyright information for a Part.</p> | [Part]({{< relref "part.md" >}}) |
|Mass_information | [Numerical_value]({{< relref "numerical_value.md" >}}) | 0..1 | <p>The mass_information specifies the mass of a Part. Example:  Valid values for the unit of the Numerical_value specifying the mass are 'gram', 'kilogram', or also 'kg/piece', 'gram/meter'</p> | [Part]({{< relref "part.md" >}}) |
|Part_number_type | [Part_number_type]({{< relref "part_number_type.md" >}}) | 0..1 | <p> Defines the type of a Part_number since part numbers are used in the process to identify different characteristics. See the OpenEnumeration Part_number_type. The default value is 'real part' the attribute is not defined.      </p> | [Part]({{< relref "part.md" >}}) |
|Terminal_type | [Terminal_type]({{< relref "terminal_type.md" >}}) | 0..1 | <p> The terminal_type specifies the type of a General_terminal. Note: For predefined values refer to the open enumeration <i>Terminal_type.</i>      </p> | [General_terminal]({{< relref "general_terminal.md" >}}) |
|Plating_material | [String]({{< relref "string.md" >}}) | 0..1 | <p>The plating_material specifies the overlaying of a thin coating of metal on components to improve conductivity, provide for easy soldering or prevent rusting or corrosion.</p> | [General_terminal]({{< relref "general_terminal.md" >}}) |
|Cross_section_area | [Value_range]({{< relref "value_range.md" >}}) | 0..1 | <p>The cross_section_area specifies the electrical cross section, which can be accommodated by the General_terminal.</p> | [General_terminal]({{< relref "general_terminal.md" >}}) |
|Outside_diameter | [Value_range]({{< relref "value_range.md" >}}) | 0..1 | <p>The outside_diameter specifies the outer width of the isolation, which can be accommodated by the General_terminal.</p> | [General_terminal]({{< relref "general_terminal.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [KBL_container]({{< relref "kbl_container.md" >}}) | 1 | General_terminal | 0..* |  |
| [Special_terminal_occurrence]({{< relref "special_terminal_occurrence.md" >}}) | 1..* | Part | 1 |  |
| [Terminal_occurrence]({{< relref "terminal_occurrence.md" >}}) | 1..* | Part | 1 |  |
