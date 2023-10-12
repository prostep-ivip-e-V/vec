---
title: WireLengthType
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - WireLengthType
menu_name: vec-2.1.0
---
<p> Specifies possible values for the <i>lengthType </i>of <i>WireLength</i>.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| DMU | <p> The length of the wire is calculated from the sum of the lengths of the neutral axes of the corresponding segments in the DMU model.      </p> |
| Drawing | <p> The length is rounded length from the DMU model (shown on the drawing), without any add-ons      </p> |
| Contract | <p> The agreed length for any negotiations and calculations.      </p> |
| Production | <p> The cutting length for the used in production environments.      </p> |
| Functional | <p> A <i>Functional</i> length is a length specification which must be precisely adhered to in production and which results from the design, for example due to signal/wave characteristics. This is in contrast to the <i>DMU</i> / <i>Drawing Length</i> which only specifies the length of the routed neutral phase.      </p> |
