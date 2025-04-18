﻿---
title: PinComponentType
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - PinComponentType
menu_name: vec-2.0.1
---
<p> Specifies the type of a <i>PinComponent</i>.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| Switch |  |
| Coil |  |
| Ground |  |
| PowerSupply | <p> <i>PowerSupply</i> defines a <i>PinComponent </i>that is used to supply the component itself with power (in contrast to <i>PowerDistribution</i>). <i>PinComponentBehaviours</i> of <i>PinComponents</i> with this type always have the <i>SignalDirection</i> <i>&quot;In</i>&quot;.      </p> |
| PowerDistribution | <p> <i>PowerDistribution</i> defines a <i>PinComponent </i>that is used to distribute power to other components (in contrast to <i>PowerSupply</i>). The semantic of this type depends on the <i>SignalDirection</i>. <i>In</i> means, that this <i>PinComponent</i> is used to supply power to the EEComponent for further distribution to other components. <i>Out</i> means that the <i>PinComponent</i> is a source of power for other EEComponents.      </p> |
| Signal |  |
| NotConnected |  |
