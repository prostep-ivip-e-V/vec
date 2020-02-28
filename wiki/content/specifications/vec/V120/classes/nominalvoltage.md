---
title: NominalVoltage
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - NominalVoltage
menu_name: vec-1.2.0
---

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | signal |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| 12V |  |
| 24V |  |
| 48V |  |
| HV | <p> HV defines all voltages that are dangerous to health or life. HV is a literal for a superset of HV1-5 where the concrete class is not known or not specified. That means in turn, that if a nominal voltage of HV1 - HV5 is defined, then it is also HV.       </p> |
| HV1 | <p> HV Class 1 (200V&#160;DC)      </p> |
| HV2 | <p> HV Class 2 (300V&#160;DC)      </p> |
| HV3 | <p> HV Class 3 (600V&#160;DC)      </p> |
| HV4 | <p> HV Class 4 (900V&#160;DC)      </p> |
| HV5 | <p> HV Class 5 (1200V&#160;DC)      </p> |
