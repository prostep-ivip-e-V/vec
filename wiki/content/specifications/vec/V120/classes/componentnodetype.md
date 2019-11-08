---
title: ComponentNodeType
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Defines the common agreed values for the types of a ComponentNode.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | schematic |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| ECU |  |
| Sensor |  |
| Actuator |  |
| CouplingDevice |  |
| EnergyStorage |  |
| Generator |  |
| PowerDistribution |  |
| Switch |  |
| Lamp | <html>   <head>     </head>   <body>     <p> <i>Deprecated since VEC V1.2. </i>Use ComponentNodeType &quot;Actuator&quot; instead and ComponentSubType <i>Lamp</i>.      </p>  </body> </html> |
| Relay | <html>   <head>     </head>   <body>     <p> &#160;      </p>  </body> </html> |
| Fuse | <html>   <head>     </head>   <body>     <p> <i>Deprecated since VEC V1.2. </i>Use instead ComponentSubType Fuse.&#160;      </p>  </body> </html> |
| Ground | <html>   <head>     </head>   <body>     <p> Defines that this ComponentNode is a grounding point.      </p>    </body> </html>  |
| OpenEnd | <html>   <head>     </head>   <body> Defines that this ComponentNode is the end point for some unconnected connections that require wires and routings in the resulting harness (e.g. an antenna). A component node of this type is used whenever connections shall not be connected (on one side), regardless if it is an individual wire or a core of a multi core wire.</body> </html> |
| OpenLink | <html>   <head>     </head>   <body>     <p> Defines that this ComponentNode is an OpenLink. In the description of partial systems it can be necessary to reference a ComponentNode that is not defined in the scope of the partial system (e.g. vehicle infrastructure like power, ground, bus systems). OpenLinks have to be resolved and replaced by a determined ComponentNode when a partial system is integrated into a vehicle system.       </p>    </body> </html>  |
