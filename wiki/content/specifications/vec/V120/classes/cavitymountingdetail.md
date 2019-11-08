---
title: CavityMountingDetail
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> With a CavityMountingDetail it is possible to describe a detailed cavity mounting.     </p>      <p> This is needed if the information which terminal reception is mounted into which cavity is important. There are cases where this information can be relevant (e.g. bridge contacts with an asymmetric wire mounting).      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | contacting |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TerminalReceptionReference]({{< relref "terminalreceptionreference.md" >}}) | terminalReceptionReference | 1 | 0..* | References the TerminalReception that is used for the detailed description of the cavity mounting.   |
| [CavityReference]({{< relref "cavityreference.md" >}}) | equippedCavityRef | 1 | 0..* | References the cavity that is used for the detailed description of the cavity mounting.   |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [CavityMounting]({{< relref "cavitymounting.md" >}}) | 1 | cavityMountingDetail | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the CavityMoutingDetails, if a detailed description of the relationships between Cavities and TerminalReceptions is needed.      </p>    </body> </html>  |
