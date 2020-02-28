---
title: Wire_protection_occurrence
toc: false
type: specs
date: "2005-11-01"
draft: false
specification: KBL
version: 2.3.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Wire_protection_occurrence
menu_name: kbl-2.3.sr1
---
<p>A Wire_protection_occurrence is the occurrence of a Wire_protection in a module part list.</p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Connection_or_occurrence]({{< relref "connection_or_occurrence.md" >}})<br/> [Located_component]({{< relref "located_component.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [Specified_wire_protection_occurrence]({{< relref "specified_wire_protection_occurrence.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 1 | <p>The id specifies the identifier of the Wire_protection.</p> | [Wire_protection_occurrence]({{< relref "wire_protection_occurrence.md" >}}) |
|Alias_id | [Alias_identification]({{< relref "alias_identification.md" >}}) | 0..* | <p>The alias_id specifies additional identifiers for the Wire_protection _occurrence.</p> | [Wire_protection_occurrence]({{< relref "wire_protection_occurrence.md" >}}) |
|Description | [String]({{< relref "string.md" >}}) | 0..1 | <p>The description specifies additional information about the ob ject.</p> | [Wire_protection_occurrence]({{< relref "wire_protection_occurrence.md" >}}) |
|Protection_length | [Numerical_value]({{< relref "numerical_value.md" >}}) | 0..1 | <p>The protection_length specifies the length of the Wire_protection_occurrence with respect to the wrapping.  Note: The protection_length may differ from the real length of the material. E.g. for a tube, the protection_length and the real length are same, whereas for a tape they are different.</p> | [Wire_protection_occurrence]({{< relref "wire_protection_occurrence.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Installation_instruction]({{< relref "installation_instruction.md" >}}) | Installation_information | 0..* | 1 |  |
| [Wire_protection]({{< relref "wire_protection.md" >}}) | Part | 1 | 1..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Protection_area]({{< relref "protection_area.md" >}}) | 0..* | Associated_protection | 1 |  |
| [Specified_wire_protection_occurrence]({{< relref "specified_wire_protection_occurrence.md" >}}) | 0..* | Related_occurrence | 1 |  |
