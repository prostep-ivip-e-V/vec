---
title: Core_occurrence
toc: false
type: specs
date: "2015-03-16"
draft: false
specification: KBL
version: 2.4
documentType: "Recommendation"
elementType: Class
classes:
  - Core_occurrence
menu_name: kbl-2.4
---
<p>A Core_occurrence is the occurrence of a Core within a Special_wire_occurrence.</p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Wire_or_core_occurrence]({{< relref "wire_or_core_occurrence.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Wire_number | [String]({{< relref "string.md" >}}) | 1 | <p>The wire_number specifies the identification of a wire. This number is unique within a vehicle and usually automatically generated (dependent on "from- to" information).  Note: Each interior conductor of a multi-core wire produces an  own wire number.</p> | [Core_occurrence]({{< relref "core_occurrence.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Core]({{< relref "core.md" >}}) | Part | 1 | 1..* |  |
| [Wire_length]({{< relref "wire_length.md" >}}) | Length_information | 1..* | 1 |  |
| [Installation_instruction]({{< relref "installation_instruction.md" >}}) | Installation_information | 0..* | 0..1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Special_wire_occurrence]({{< relref "special_wire_occurrence.md" >}}) | 1 | Core_occurrence | 0..* |  |
