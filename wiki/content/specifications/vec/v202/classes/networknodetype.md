---
title: NetworkNodeType
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - NetworkNodeType
menu_name: vec-2.0.2
---
<p> Defines the common agreed values for the Types of a NetworkNode.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | net |
| **Applied Stereotype**  |   |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| ECU | <p> Electronic Control Unit. An electronic control unit (ECU) is any embedded system in automotive electronics that controls one or more of the electrical systems or subsystems in a vehicle.      </p> |
| Sensor | <p> A sensor is a device that detects changes to the environment and sends them as information to other devices (e.g. an ECU).      </p> |
| Actuator | <p> An actuator is a device that is responsible for controlling or moving a mechanism.      </p> |
| CouplingDevice | <p> A CouplingDevice is the (virtual)&#160;device that separates / connects two or more wiring harnesses. &quot;Virtual&quot; because it can be interpreted as a device /&#160;interface definition between the harnesses, where one harness behaves like an E/E&#160;component form the point of view of the other harness.      </p> |
| EnergyStorage | <p> A&#160;device that stores energy in some kind of way (e.g. a battery).      </p> |
| Generator | <p> A device that can generate energy.      </p> |
| PowerDistribution | <p> A device that distributes power to other devices (e.g. a fuse box).      </p> |
| Switch | <p> A &quot;Switch&quot; is a device that can change its internal connectivity in reaction to some external action (e.g. connect /&#160;disconnect&#160;some pins). A switch has no &quot;active&quot; logic (in contrast to an ECU).      </p> |
| OpenEnd | <p> Defines that this NetworkNode is the end point for some unconnected nets that require wires and routings in the resulting harness (e.g. an antenna). A NetworkNode of this type is used whenever nets shall not be connected (on one side).      </p> |
| Ground | <p> Defines that this NetworkNode is a grounding point.      </p> |
