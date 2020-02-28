---
title: Wire_occurrence
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Wire_occurrence
menu_name: kbl-2.5
---
<p>A Wire_occurrence is the occurrence of a single wire in a module part list.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [General_wire_occurrence]({{< relref "general_wire_occurrence.md" >}})<br/> [Wire_or_core_occurrence]({{< relref "wire_or_core_occurrence.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [Specified_wire_occurrence]({{< relref "specified_wire_occurrence.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Wire_number | [String]({{< relref "string.md" >}}) | 1 | <p>The wire_number specifies the identification of a wire. This number is unique within a vehicle and usually automatically generated (dependent on "from-to" information).</p> | [Wire_occurrence]({{< relref "wire_occurrence.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Specified_wire_occurrence]({{< relref "specified_wire_occurrence.md" >}}) | 0..* | Related_occurrence | 1..* |  |
