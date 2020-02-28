---
title: CavityMounting
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - CavityMounting
menu_name: vec-1.1.2
---
<p> A CavityMounting defines the cavities (CavityReference) where the contacted elements (Terminal) will be mounted.      </p>
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
| [CavityMountingDetail]({{< relref "cavitymountingdetail.md" >}}) | cavityMountingDetail | 0..* | 1 | <p> Specifies the CavityMoutingDetails, if a detailed description of the relationships between Cavities and TerminalReceptions is needed.      </p> |
| [CavityReference]({{< relref "cavityreference.md" >}}) | equippedCavityRef | 1..* | 0..* | References the cavities that are used for the cavity mounting. |
| [CavityPlugRole]({{< relref "cavityplugrole.md" >}}) | replacedPlug | 0..* | 0..* | References the cavity plugs that are obsolete if the cavity mounting is realized. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ContactPoint]({{< relref "contactpoint.md" >}}) | 1 | cavityMounting | 0..* | Defines the mounting to a cavity of the terminal associated with the ContactPoint.  The cardinality is 0..* in order to allow a variant dependant cavity mounting. In such a scenario a cavity mounting is valid in a configuration if all addressed cavities and therefore the associated connector housing is available. |
