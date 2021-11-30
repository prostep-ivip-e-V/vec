---
title: ComponentNodeType
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - ComponentNodeType
menu_name: vec-2.0.0-rc1
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
| ECU | <p> Electronic Control Unit. An electronic control unit (ECU) is any embedded system in automotive electronics that controls one or more of the electrical systems or subsystems in a vehicle.      </p> |
| Sensor | <p> A sensor is a device that detects changes to the environment and sends them as information to other devices (e.g. an ECU).      </p> |
| Actuator | <p> An actuator is a device that is responsible for controlling or moving a mechanism.      </p> |
| CouplingDevice | <p> A CouplingDevice is the (virtual) device that separates / connects two or more wiring harnesses. &quot;Virtual&quot; because it can be interpreted as a device / interface definition between the harnesses, where one harness behaves like an E/E component form the point of view of the other harness.      </p> |
| EnergyStorage | <p> A device that stores energy in some kind of way (e.g. a battery).      </p> |
| Generator | <p> A device that can generate energy.      </p> |
| PowerDistribution | <p> A device that distributes power to other devices (e.g. a fuse box).      </p> |
| Switch | <p> A &quot;Switch&quot; is a device that can change its internal connectivity in reaction to some external action (e.g. connect /&#160;disconnect&#160;some pins). A switch has no &quot;active&quot; logic (in contrast to an ECU).      </p> |
| Lamp | <p> <i>Deprecated since VEC V1.2. </i>Use ComponentNodeType &quot;Actuator&quot; instead and ComponentSubType <i>Lamp</i>.      </p> |
| Relay | <p> <i>Deprecated since VEC V1.2. </i>Use instead ComponentSubType Relay.&#160;      </p> |
| Fuse | <p> <i>Deprecated since VEC V1.2. </i>Use instead ComponentSubType Fuse.&#160;      </p> |
| Ground | <p> Defines that this ComponentNode is a grounding point.      </p> |
| OpenEnd | <p> Defines that this ComponentNode is the end point for some unconnected connections that require wires and routings in the resulting harness (e.g. an antenna). A component node of this type is used whenever connections shall not be connected (on one side), regardless if it is an individual wire or a core of a multi core wire.      </p> |
| OpenLink | <p> Defines that this ComponentNode is an OpenLink. In the description of partial systems, it can be necessary to reference a ComponentNode that is not defined in the scope of the partial system (e.g. vehicle infrastructure like power, ground, bus systems). OpenLinks must be resolved and replaced by a determined ComponentNode when a partial system is integrated into a vehicle system.      </p> |
| PotentialDistributor | <p> A passive device that distributes one or more potentials. Splits a network into different Connections with the same Signal.      </p> |
