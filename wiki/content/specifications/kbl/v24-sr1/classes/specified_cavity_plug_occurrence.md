---
title: Specified_cavity_plug_occurrence
toc: false
type: specs
date: "2015-03-20"
draft: false
specification: KBL
version: 2.4.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Specified_cavity_plug_occurrence
menu_name: kbl-2.4.sr1
---
<p>A Specified_ cavity _plug _occurrence is the occurrence of Cavity_plug_occurrence within an Assembly_part_occurrence.</p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Cavity_plug_occurrence]({{< relref "cavity_plug_occurrence.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 0..1 | <p> The id specifies the identifier of the Cavity_plug_occurrence.      </p> | [Cavity_plug_occurrence]({{< relref "cavity_plug_occurrence.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Assembly_part_occurrence]({{< relref "assembly_part_occurrence.md" >}}) | Related_assembly | 1 | 0..* |  |
| [Cavity_plug_occurrence]({{< relref "cavity_plug_occurrence.md" >}}) | Related_occurrence | 1 | 0..* |  |
