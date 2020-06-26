---
title: Specified_wire_occurrence
toc: false
type: specs
date: "2020-06-25"
draft: false
specification: KBL
version: 2.5.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Specified_wire_occurrence
menu_name: kbl-2.5.sr1
---
<p>A Specified_wire_occurrence is the occurrence of a Wire_occurrence within an Assembly_part_occurrence.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Wire_occurrence]({{< relref "wire_occurrence.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Wire_number | [String]({{< relref "string.md" >}}) | 1 | <p>The wire_number specifies the identification of a wire. This number is unique within a vehicle and usually automatically generated (dependent on "from-to" information).</p> | [Wire_occurrence]({{< relref "wire_occurrence.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Wire_occurrence]({{< relref "wire_occurrence.md" >}}) | Related_occurrence | 1..* | 0..* |  |
| [Assembly_part_occurrence]({{< relref "assembly_part_occurrence.md" >}}) | Related_assembly | 1..* | 0..* |  |
