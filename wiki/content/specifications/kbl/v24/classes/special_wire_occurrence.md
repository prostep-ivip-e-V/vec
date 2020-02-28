---
title: Special_wire_occurrence
toc: false
type: specs
date: "2015-03-16"
draft: false
specification: KBL
version: 2.4
documentType: "Recommendation"
elementType: Class
classes:
  - Special_wire_occurrence
menu_name: kbl-2.4
---
<p>Mehrdrahtleitung  A Special_wire_occurrence is the occurrence of a multi-core wire in a module part list.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [General_wire_occurrence]({{< relref "general_wire_occurrence.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [Specified_special_wire_occurrence]({{< relref "specified_special_wire_occurrence.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Special_wire_id | [String]({{< relref "string.md" >}}) | 1 | <p>A special_wire_id specifies the identifier of the individual occurrence of multi-core wire. In contrast to the occurrence of a single wire which do not need to be identified in the module part list, each multi-core wire occurrence must be identified.</p> | [Special_wire_occurrence]({{< relref "special_wire_occurrence.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Core_occurrence]({{< relref "core_occurrence.md" >}}) | Core_occurrence | 0..* | 1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Specified_special_wire_occurrence]({{< relref "specified_special_wire_occurrence.md" >}}) | 0..* | Related_occurrence | 1 |  |
