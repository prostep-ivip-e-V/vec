---
title: Specified_special_wire_occurrence
toc: false
type: specs
date: "2020-06-25"
draft: false
specification: KBL
version: 2.5.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Specified_special_wire_occurrence
menu_name: kbl-2.5.sr1
---
<p>A Specified_ special_wire _occurrence is the occurrence of a Special_wire_occurrence within an Assembly_part_occurrence.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Special_wire_occurrence]({{< relref "special_wire_occurrence.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Special_wire_id | [String]({{< relref "string.md" >}}) | 1 | <p>A special_wire_id specifies the identifier of the individual occurrence of multi-core wire. In contrast to the occurrence of a single wire which do not need to be identified in the module part list, each multi-core wire occurrence must be identified.</p> | [Special_wire_occurrence]({{< relref "special_wire_occurrence.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Special_wire_occurrence]({{< relref "special_wire_occurrence.md" >}}) | Related_occurrence | 1..* | 0..* |  |
| [Assembly_part_occurrence]({{< relref "assembly_part_occurrence.md" >}}) | Related_assembly | 1..* | 0..* |  |
