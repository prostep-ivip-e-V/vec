---
title: NetworkNodeType
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - NetworkNodeType
menu_name: vec-1.2.0
---
<p> Defines the common agreed values for the Types of a NetworkNode.      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | net |
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
| OpenEnd | <p> Defines that this NetworkNode is the end point for some unconnected nets that require wires and routings in the resulting harness (e.g. an antenna). A NetworkNode of this type is used whenever nets shall not be connected (on one side).      </p> |
| Ground | <p> Defines that this NetworkNode is a grounding point.      </p> |
