---
title: CavityMounting
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A CavityMounting defines the cavities (CavityReference) where the contacted elements (Terminal) will be mounted.      </p>    </body> </html> 
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
| [CavityReference]({{< relref "cavityreference.md" >}}) | equippedCavityRef | 1..* | 0..* | References the cavities that are used for the cavity mounting.   |
| [CavityMountingDetail]({{< relref "cavitymountingdetail.md" >}}) | cavityMountingDetail | 0..* | 1 | <html>   <head>     </head>   <body>     <p> Specifies the CavityMoutingDetails, if a detailed description of the relationships between Cavities and TerminalReceptions is needed.      </p>    </body> </html>  |
| [CavityPlugRole]({{< relref "cavityplugrole.md" >}}) | replacedPlug | 0..* | 0..* | References the cavity plugs that are obsolete if the cavity mounting is realized.   |
| [CavityAccessoryRole]({{< relref "cavityaccessoryrole.md" >}}) | cavityAccessory | 0..* | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ContactPoint]({{< relref "contactpoint.md" >}}) | 1 | cavityMounting | 0..* | Defines the mounting to a cavity of the terminal associated with the ContactPoint.  The cardinality is 0..* in order to allow a variant dependant cavity mounting. In such a scenario a cavity mounting is valid in a configuration if all addressed cavities and therefore the associated connector housing is available.   |
