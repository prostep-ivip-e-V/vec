---
title: Fuse
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Fuse
menu_name: kbl-2.5
---

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 2_Parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Component]({{< relref "component.md" >}})<br/>  |
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
|type | [Fuse_type]({{< relref "fuse_type.md" >}}) | 0..1 | <p> Defines the type of the fuse.      </p> | [Fuse]({{< relref "fuse.md" >}}) |
|Nominal_current | [Numerical_value]({{< relref "numerical_value.md" >}}) | 0..1 |  | [Fuse]({{< relref "fuse.md" >}}) |
|Colour | [String]({{< relref "string.md" >}}) | 0..1 |  | [Fuse]({{< relref "fuse.md" >}}) |

