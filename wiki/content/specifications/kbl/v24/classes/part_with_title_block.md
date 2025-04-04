﻿---
title: Part_with_title_block
toc: false
type: specs
date: "2015-03-16"
draft: false
specification: KBL
version: 2.4
documentType: "Recommendation"
elementType: Class
classes:
  - Part_with_title_block
menu_name: kbl-2.4
---
<p>A Part_with_title_block is a mechanism to assign additional information to a Harness, a Harness_configuration or a Module.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 2_Parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Part]({{< relref "part.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [Harness]({{< relref "harness.md" >}}), [Harness_configuration]({{< relref "harness_configuration.md" >}}), [Module]({{< relref "module.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Part_number | [String]({{< relref "string.md" >}}) | 1 | <p>The part_number specifies the identifier of the Part. The format of the part number is user defined (OEM specific).</p> | [Part]({{< relref "part.md" >}}) |
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
|Project_number | [String]({{< relref "string.md" >}}) | 0..1 | <p>The project_number specifies the development order number (car or engine project)</p> | [Part_with_title_block]({{< relref "part_with_title_block.md" >}}) |
|Car_classification_level_2 | [String]({{< relref "string.md" >}}) | 1 | <p>The car_classification_level_2 provides a classification according to "CC8 Recommended Practices Specification and Configuration, Product Structures". Car classification is the identification of a set of similar cars to be offered to the market. Level 2 stands for "Technical information / platform" and reflects the level of a product class in a BoM system which represents a main technical product base (e.g. project, platform, engineering series etc.). In some cases this level carries a complete BoM ("Maximum BoM") for a project, platform, engineering series etc. This level is in some cases called technical documentation.</p> | [Part_with_title_block]({{< relref "part_with_title_block.md" >}}) |
|Car_classification_level_3 | [String]({{< relref "string.md" >}}) | 0..1 | <p>The car_classification_level_3 provides a classification according to "CC8 Recommended Practices Specification and Configuration, Product Structures". Car classification is the identification of a set of similar cars to be offered to the market. Level 3 stands for "Configuration information / product family" where all variant control mechanism are attached.</p> | [Part_with_title_block]({{< relref "part_with_title_block.md" >}}) |
|Car_classification_level_4 | [String]({{< relref "string.md" >}}) | 0..1 | <p>The car_classification_level_4 provides a classification according to "CC8 Recommended Practices Specification and Configuration, Product Structures". Car classification is the identification of a set of similar cars to be offered to the market. Level 4 stands for "Furthest pre-configured abstract product class" and represents the furthest configured class of a product, which is not yet a real product. E.g. this could be a complete vehicle, engine, gear-box etc. which has not been evaluated against customer special choices or a abstract vehicle, engine, gear-box etc. which could become a real one after the associated BoM is evaluated. The purpose of this level of a product class instance is in any case to reflect that level of product class of a BoM system which leads to the individual BoM for a single product.</p> | [Part_with_title_block]({{< relref "part_with_title_block.md" >}}) |
|Model_year | [String]({{< relref "string.md" >}}) | 1 | <p>The model_year specifies the year of the car model.</p> | [Part_with_title_block]({{< relref "part_with_title_block.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Creation]({{< relref "creation.md" >}}) | 0..* | Is_applied_to | 1..* |  |
| [Approval]({{< relref "approval.md" >}}) | 0..* | Is_applied_to | 1..* |  |
