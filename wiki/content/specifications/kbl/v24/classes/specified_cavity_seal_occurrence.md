---
title: Specified_cavity_seal_occurrence
toc: false
type: specs
date: "2015-03-16"
draft: false
specification: KBL
version: 2.4
documentType: "Recommendation"
elementType: Class
classes:
  - Specified_cavity_seal_occurrence
menu_name: kbl-2.4
---
<p>A Specified_ cavity_seal _occurrence is the occurrence of a Cavity_seal_occurrence within an Assembly_part_occurrence.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Cavity_seal_occurrence]({{< relref "cavity_seal_occurrence.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 0..1 | <p> The id specifies the identifier of the Cavity_seal_occurrence.      </p> | [Cavity_seal_occurrence]({{< relref "cavity_seal_occurrence.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Assembly_part_occurrence]({{< relref "assembly_part_occurrence.md" >}}) | Related_assembly | 1 | 0..* |  |
| [Cavity_seal_occurrence]({{< relref "cavity_seal_occurrence.md" >}}) | Related_occurrence | 1 | 0..* |  |
