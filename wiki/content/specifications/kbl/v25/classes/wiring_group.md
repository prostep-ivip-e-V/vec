---
title: Wiring_group
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Wiring_group
menu_name: kbl-2.5
---
<p>A Wiring_goup is a mechanism to group wire or core occurrences together. Example: Twisted pairs.</p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 4_Connectivity |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Changed_element]({{< relref "changed_element.md" >}})<br/> [Connection_or_occurrence]({{< relref "connection_or_occurrence.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 1 | <p>The id specifies the identifier of the Wiring_group.</p> | [Wiring_group]({{< relref "wiring_group.md" >}}) |
|Type | [String]({{< relref "string.md" >}}) | 0..1 | <p>The type specifies the type of the grouping. Example: twisted-pair.</p> | [Wiring_group]({{< relref "wiring_group.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Wire_or_core_occurrence]({{< relref "wire_or_core_occurrence.md" >}}) | Assigned_wire | 2..* | 0..* |  |
| [Processing_instruction]({{< relref "processing_instruction.md" >}}) | Processing_information | 0..* | 1 |  |
| [Installation_instruction]({{< relref "installation_instruction.md" >}}) | Installation_information | 0..* | 1 |  |
