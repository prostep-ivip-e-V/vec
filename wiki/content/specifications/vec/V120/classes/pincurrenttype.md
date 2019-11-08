---
title: PinCurrentType
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Defines the different available current types of a pin.      </p>    </body> </html> 
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
| leakageCurrent | <html>   <head>     </head>   <body> Defines the current that leaks at this pin.   </body> </html>  |
| deepSleepCurrent | <html>   <head>     </head>   <body>     <p> Defines the current on the pin, when the EEComponent is in deep sleep mode.      </p>    </body> </html>  |
