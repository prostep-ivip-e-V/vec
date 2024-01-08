---
title: PinCurrentType
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - PinCurrentType
menu_name: vec-2.1.0
---
<p> Defines the different available current types of a pin.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| MinCurrent |  |
| MaxCurrent |  |
| TypicalCurrent |  |
| StandbyCurrent |  |
| InitCurrent |  |
| BlockCurrent |  |
| StartStopCurrent |  |
| OverrunCurrent |  |
| LeakageCurrent | <p> Defines the current that leaks at this pin.      </p> |
| DeepSleepCurrent | <p> Defines the current on the pin, when the EEComponent is in deep sleep mode.      </p> |
| ClippingCurrent | <p> Current at which the output driver of an ECU turns off or limits the current on an output in (a behavior similar to a fuse).      </p> |
