---
title: Specified_component_box_occurrence
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Specified_component_box_occurrence
menu_name: kbl-2.5
---

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Component_box_occurrence]({{< relref "component_box_occurrence.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 1 |  | [Component_box_occurrence]({{< relref "component_box_occurrence.md" >}}) |
|Alias_id | [Alias_identification]({{< relref "alias_identification.md" >}}) | 0..* |  | [Component_box_occurrence]({{< relref "component_box_occurrence.md" >}}) |
|Description | [String]({{< relref "string.md" >}}) | 0..1 |  | [Component_box_occurrence]({{< relref "component_box_occurrence.md" >}}) |
|Localized_description | [Localized_string]({{< relref "localized_string.md" >}}) | 0..* |  | [Component_box_occurrence]({{< relref "component_box_occurrence.md" >}}) |
|Placement | [Transformation]({{< relref "transformation.md" >}}) | 0..1 |  | [Component_box_occurrence]({{< relref "component_box_occurrence.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Component_box_occurrence]({{< relref "component_box_occurrence.md" >}}) | Related_occurrence | 1..* | 0..* |  |
| [Assembly_part_occurrence]({{< relref "assembly_part_occurrence.md" >}}) | Related_assembly | 1..* | 0..* |  |
