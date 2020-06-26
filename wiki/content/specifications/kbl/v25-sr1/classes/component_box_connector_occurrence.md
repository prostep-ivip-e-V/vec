---
title: Component_box_connector_occurrence
toc: false
type: specs
date: "2020-06-25"
draft: false
specification: KBL
version: 2.5.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Component_box_connector_occurrence
menu_name: kbl-2.5.sr1
---


## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Located_component]({{< relref "located_component.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Component_box_connector]({{< relref "component_box_connector.md" >}}) | Part | 1 |  |  |
| [Abstract_slot_occurrence]({{< relref "abstract_slot_occurrence.md" >}}) | Slots | 0..* | 1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Component_box_occurrence]({{< relref "component_box_occurrence.md" >}}) | 1 | Component_box_connectors | 0..* |  |
