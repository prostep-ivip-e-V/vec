---
title: NetworkNodeType
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Defines the common agreed values for the Types of a NetworkNode.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | net |
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
| OpenEnd | <html>   <head>     </head>   <body> Defines that this NetworkNode is the end point for some unconnected nets that require wires and routings in the resulting harness (e.g. an antenna). A NetworkNode of this type is used whenever nets shall not be connected (on one side).</body> </html> |
| Ground | <html>   <head>     </head>   <body>     <p> Defines that this NetworkNode is a grounding point.      </p>  </body> </html> |
