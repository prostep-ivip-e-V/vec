---
title: CavityPlugRole
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - CavityPlugRole
menu_name: vec-1.1.1
---
<p> A CavityPlugRole defines the instance specific properties and relationships of a cavity plug.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Role]({{< relref "role.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies a unique identification of the Role. The identification is guaranteed to be unqiue within the OccurrenceOrUsage. </p> | [Role]({{< relref "role.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CavityPlugSpecification]({{< relref "cavityplugspecification.md" >}}) | cavityPlugSpecification | 1 | 0..* | <p> References the <i>CavityPlugSpecification </i>that is instanced by this <i>CavityPlugRole.</i>      </p> |
| [CavityReference]({{< relref "cavityreference.md" >}}) | pluggedCavityRef | 0..* | 0..* | Defines which cavity / cavities in a connector instance is sealed by the plug. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [CavityMounting]({{< relref "cavitymounting.md" >}}) | 0..* | replacedPlug | 0..* | References the cavity plugs that are obsolete if the cavity mounting is realized. |
