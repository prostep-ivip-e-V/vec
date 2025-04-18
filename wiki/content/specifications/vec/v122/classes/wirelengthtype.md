﻿---
title: WireLengthType
toc: false
type: specs
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Class
classes:
  - WireLengthType
menu_name: vec-1.2.2
---
<p> Specifies possible values for the <i>lengthType </i>of <i>WireLength</i>.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| DMU | <p> The length of the wire is calculated from the sum of the lengths of the neutral axes of the corresponding segments in the DMU model.      </p> |
| Drawing | <p> The length is rounded length from the DMU model (shown on the drawing), without any add-ons      </p> |
| Contract | <p> The agreed length for any negotiations and calculations.      </p> |
| Production | <p> The cutting length for the used in production environments.      </p> |
