---
title: PinCurrentType
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - PinCurrentType
menu_name: vec-1.2.0
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
| leakageCurrent | <p> Defines the current that leaks at this pin.      </p> |
| deepSleepCurrent | <p> Defines the current on the pin, when the EEComponent is in deep sleep mode.      </p> |
| clippingCurrent | <p> Current at which the output driver of an ECU turns off or limits the current on an output in (a behavior similar to a fuse).      </p> |
