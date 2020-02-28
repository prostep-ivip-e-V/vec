---
title: ComponentNodeType
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - ComponentNodeType
menu_name: vec-1.1.3
---
<p> Defines the common agreed values for the types of a ComponentNode.      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | schematic |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| ECU |  |
| Sensor |  |
| Actuator |  |
| CouplingDevice |  |
| EnergyStorage |  |
| Generator |  |
| PowerDistribution |  |
| Switch |  |
| Lamp |  |
| Relay |  |
| Fuse |  |
| Ground | <p> Defines that this ComponentNode is a grounding point.      </p> |
| OpenLink | <p> Defines that this ComponentNode is an OpenLink. In the description of partial systems it can be necessary to reference a ComponentNode that is not defined in the scope of the partial system (e.g. vehicle infrastructure like power, ground, bus systems). OpenLinks have to be resolved and replaced by a determined ComponentNode when a partial system is integrated into a vehicle system.       </p> |
