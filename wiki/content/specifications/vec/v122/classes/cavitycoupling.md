﻿---
title: CavityCoupling
toc: false
type: specs
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Class
classes:
  - CavityCoupling
menu_name: vec-1.2.2
---
<p> A <i>CavityCoupling</i> defines the mapping between two cavities of the <i>ConnectorHousingRoles</i> associated with the <i>CouplingPoint</i>.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | coupling |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 |  | [CavityCoupling]({{< relref "cavitycoupling.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CavityReference]({{< relref "cavityreference.md" >}}) | firstCavity | 1 | 0..* |  |
| [CavityReference]({{< relref "cavityreference.md" >}}) | secondCavity | 1 | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [SlotCoupling]({{< relref "slotcoupling.md" >}}) | 1 | cavityCoupling | 0..* |  |
