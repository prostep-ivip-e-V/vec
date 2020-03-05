---
title: PinCurrentType
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - PinCurrentType
menu_name: vec-1.1.3
---
<p> Defines the different available current types of a pin.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| minCurrent |  |
| maxCurrent |  |
| typicalCurrent |  |
| standbyCurrent |  |
| initCurrent |  |
| blockCurrent |  |
| startStopCurrent |  |
| overrunCurrent |  |
| leakageCurrent | Defines the current that leaks at this pin. |
| deepSleepCurrent | <p> Defines the current on the pin, when the EEComponent is in deep sleep mode.      </p> |
