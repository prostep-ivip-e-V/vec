---
title: CavitySealRole
toc: false
type: specs
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - CavitySealRole
menu_name: vec-1.2.0
---
<p> A CavitySealRole defines the instance specific properties and relationships of a cavity seal.      </p>

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
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the Role. The identification is guaranteed to be unique within the OccurrenceOrUsage.      </p> | [Role]({{< relref "role.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CavitySealSpecification]({{< relref "cavitysealspecification.md" >}}) | cavitySealSpecification | 1 | 0..* | <p> References the <i>CavitySealSpecification </i>that is instanced by this <i>CavitySealRole.</i>      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireMounting]({{< relref "wiremounting.md" >}}) | 0..* | mountedCavitySeal | 0..1 | <p> References the cavity seal that is used for the wire mounting.      </p> |
| [CableLeadThroughReference]({{< relref "cableleadthroughreference.md" >}}) | 0..* | usedSeals | 0..* |  |
