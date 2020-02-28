---
title: Specified_wire_protection_occurrence
toc: false
type: specs
date: "2015-03-20"
draft: false
specification: KBL
version: 2.4.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Specified_wire_protection_occurrence
menu_name: kbl-2.4.sr1
---
<p>A Specified_wire_protection_occurrence is the occurrence of a Wire_protection_occurrence within an Assembly_part_occurrence.</p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Wire_protection_occurrence]({{< relref "wire_protection_occurrence.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 1 | <p>The id specifies the identifier of the Wire_protection.</p> | [Wire_protection_occurrence]({{< relref "wire_protection_occurrence.md" >}}) |
|Alias_id | [Alias_identification]({{< relref "alias_identification.md" >}}) | 0..* | <p>The alias_id specifies additional identifiers for the Wire_protection _occurrence.</p> | [Wire_protection_occurrence]({{< relref "wire_protection_occurrence.md" >}}) |
|Description | [String]({{< relref "string.md" >}}) | 0..1 | <p> The description specifies additional information about the object.      </p> | [Wire_protection_occurrence]({{< relref "wire_protection_occurrence.md" >}}) |
|Localized_description | [Localized_string]({{< relref "localized_string.md" >}}) | 0..* | <p> The description specifies additional information about the object. The Localized_description provides the possibility to define descriptions for different language codes.       </p> | [Wire_protection_occurrence]({{< relref "wire_protection_occurrence.md" >}}) |
|Protection_length | [Numerical_value]({{< relref "numerical_value.md" >}}) | 0..1 | <p>The protection_length specifies the length of the Wire_protection_occurrence with respect to the wrapping.  Note: The protection_length may differ from the real length of the material. E.g. for a tube, the protection_length and the real length are same, whereas for a tape they are different.</p> | [Wire_protection_occurrence]({{< relref "wire_protection_occurrence.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Assembly_part_occurrence]({{< relref "assembly_part_occurrence.md" >}}) | Related_assembly | 1 | 0..* |  |
| [Wire_protection_occurrence]({{< relref "wire_protection_occurrence.md" >}}) | Related_occurrence | 1 | 0..* |  |
