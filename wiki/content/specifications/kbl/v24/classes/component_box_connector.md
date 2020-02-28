---
title: Component_box_connector
toc: false
type: specs
date: "2015-03-16"
draft: false
specification: KBL
version: 2.4
documentType: "Recommendation"
elementType: Class
classes:
  - Component_box_connector
menu_name: kbl-2.4
---
<p> A connector in the component_box where either a harness connector is attached to or where wires from the harness are attached directly.      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 2_Parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 1 |  | [Component_box_connector]({{< relref "component_box_connector.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Abstract_slot]({{< relref "abstract_slot.md" >}}) | Integrated_slots | 0..* | 1 |  |
| [Connector_housing]({{< relref "connector_housing.md" >}}) | Compatible_housings | 0..* | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Component_box]({{< relref "component_box.md" >}}) | 1 | Component_box_connectors | 0..* |  |
| [Component_box_connector_occurrence]({{< relref "component_box_connector_occurrence.md" >}}) |  | Part | 1 |  |
