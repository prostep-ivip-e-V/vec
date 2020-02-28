---
title: KBL_container
toc: false
type: specs
date: "2015-03-20"
draft: false
specification: KBL
version: 2.4.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - KBL_container
menu_name: kbl-2.4.sr1
---
<p>The KBL_container is introduced to specify the information which can be exchanged by one file.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 1_Harness |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Dimension_specification]({{< relref "dimension_specification.md" >}}) | Dimension_specification | 0..* | 1 |  |
| [Segment]({{< relref "segment.md" >}}) | Segment | 0..* | 1 |  |
| [Cavity_seal]({{< relref "cavity_seal.md" >}}) | Cavity_seal | 0..* | 1 |  |
| [Harness]({{< relref "harness.md" >}}) | Harness | 0..1 | 1 |  |
| [Component]({{< relref "component.md" >}}) | Component | 0..* | 1 |  |
| [General_wire]({{< relref "general_wire.md" >}}) | General_wire | 0..* | 1 |  |
| [Cavity_plug]({{< relref "cavity_plug.md" >}}) | Cavity_plug | 0..* | 1 |  |
| [Default_dimension_specification]({{< relref "default_dimension_specification.md" >}}) | Default_dimension_specification | 0..* | 1 |  |
| [Creation]({{< relref "creation.md" >}}) | Creation | 0..* | 1 |  |
| [Component_box]({{< relref "component_box.md" >}}) | Component_box | 0..* |  |  |
| [External_reference]({{< relref "external_reference.md" >}}) | External_reference | 0..* | 1 |  |
| [Wire_protection]({{< relref "wire_protection.md" >}}) | Wire_protection | 0..* | 1 |  |
| [Connector_housing]({{< relref "connector_housing.md" >}}) | Connector_housing | 0..* | 1 |  |
| [Unit]({{< relref "unit.md" >}}) | Unit | 0..* | 1 |  |
| [Accessory]({{< relref "accessory.md" >}}) | Accessory | 0..* | 1 |  |
| [General_terminal]({{< relref "general_terminal.md" >}}) | General_terminal | 0..* | 1 |  |
| [Routing]({{< relref "routing.md" >}}) | Routing | 0..* | 1 |  |
| [Fixing]({{< relref "fixing.md" >}}) | Fixing | 0..* | 1 |  |
| [Cartesian_point]({{< relref "cartesian_point.md" >}}) | Cartesian_point | 0..* | 1 |  |
| [Assembly_part]({{< relref "assembly_part.md" >}}) | Assembly_part | 0..* | 1 |  |
| [Node]({{< relref "node.md" >}}) | Node | 0..* | 1 |  |
| [Change_description]({{< relref "change_description.md" >}}) | Change_descriptions | 0..* | 1 |  |
| [Co_pack_part]({{< relref "co_pack_part.md" >}}) | Co_pack_part | 0..* | 1 |  |
| [Approval]({{< relref "approval.md" >}}) | Approval | 0..* | 1 |  |
