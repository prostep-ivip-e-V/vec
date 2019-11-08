---
title: PinComponentType
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Specifies the type of a <i>PinComponent</i>.      </p>    </body> </html> 
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
| PowerSupply | <html>   <head>     </head>   <body> <i>PowerSupply</i> defines a <i>PinComponent </i>that is used to supply the component itself with power (in contrast to <i>PowerDistribution</i>). <i>PinComponentBehaviours</i> of <i>PinComponents</i> with this type always have the <i>SignalDirection</i> <i>&quot;In</i>&quot;.   </body> </html>  |
| PowerDistribution | <html>   <head>     </head>   <body> <i>PowerDistribution</i> defines a <i>PinComponent </i>that is used to distribute power to other components (in contrast to <i>PowerSupply</i>). The semantic of this type depends on the <i>SignalDirection</i>. <i>In</i> means, that this <i>PinComponent</i> is used to supply power to the EEComponent for further distribution to other components. <i>Out</i> means that the <i>PinComponent</i> is a source of power for other EEComponents.   </body> </html>  |
| Signal |  |
| NotConnected |  |
