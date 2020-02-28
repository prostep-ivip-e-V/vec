---
title: ComponentNodeType
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - ComponentNodeType
menu_name: vec-1.2.0
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
| Lamp | <p> <i>Deprecated since VEC V1.2. </i>Use ComponentNodeType &quot;Actuator&quot; instead and ComponentSubType <i>Lamp</i>.      </p> |
| Relay | <p> &#160;      </p> |
| Fuse | <p> <i>Deprecated since VEC V1.2. </i>Use instead ComponentSubType Fuse.&#160;      </p> |
| Ground | <p> Defines that this ComponentNode is a grounding point.      </p> |
| OpenEnd | <p> Defines that this ComponentNode is the end point for some unconnected connections that require wires and routings in the resulting harness (e.g. an antenna). A component node of this type is used whenever connections shall not be connected (on one side), regardless if it is an individual wire or a core of a multi core wire.      </p> |
| OpenLink | <p> Defines that this ComponentNode is an OpenLink. In the description of partial systems, it can be necessary to reference a ComponentNode that is not defined in the scope of the partial system (e.g. vehicle infrastructure like power, ground, bus systems). OpenLinks must be resolved and replaced by a determined ComponentNode when a partial system is integrated into a vehicle system.      </p> |
