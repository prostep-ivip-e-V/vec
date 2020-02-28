---
title: Wire_or_core_occurrence
toc: false
type: specs
date: "2015-03-16"
draft: false
specification: KBL
version: 2.4
documentType: "Recommendation"
elementType: Class
classes:
  - Wire_or_core_occurrence
menu_name: kbl-2.4
---
<p>A Wire_or_core_occurrence is an occurrence of a single wire, a multi-core wire, or a individual core of a multi-core wire.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 4_Connectivity |
| **Applied Stereotype**  | [Selector]({{< relref "selector.md" >}})<br/>  |
| **Base Classifier**     |   |
| **Is Abstract**         | true |
| **Derived Classifiers** | [Core_occurrence]({{< relref "core_occurrence.md" >}}), [Wire_occurrence]({{< relref "wire_occurrence.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Wiring_group]({{< relref "wiring_group.md" >}}) | 0..* | Assigned_wire | 2..* |  |
| [Connection]({{< relref "connection.md" >}}) | 0..* | Wire | 1 |  |
