---
title: Fixed_component
toc: false
type: specs
date: "2005-11-01"
draft: false
specification: KBL
version: 2.3.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Fixed_component
menu_name: kbl-2.3.sr1
---
<p>A Fixed_component is an object that can be assigned by a fixing.</p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 5_Topology |
| **Applied Stereotype**  | [Selector]({{< relref "selector.md" >}})<br/>  |
| **Base Classifier**     |   |
| **Is Abstract**         | true |
| **Derived Classifiers** | [Accessory_occurrence]({{< relref "accessory_occurrence.md" >}}), [Fixing_occurrence]({{< relref "fixing_occurrence.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Fixing_assignment]({{< relref "fixing_assignment.md" >}}) | 0..* | Fixing | 1 |  |
