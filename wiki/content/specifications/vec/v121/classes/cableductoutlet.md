---
title: CableDuctOutlet
toc: false
type: specs
date: "2021-10-18"
draft: false
specification: VEC
version: 1.2.1
documentType: "Recommendation"
elementType: Class
classes:
  - CableDuctOutlet
menu_name: vec-1.2.1
---
<p> Specifies one outlet of the cable duct.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the identification of the Outlet. This must be unique within a CableDuctSpecification.  </p> | [CableDuctOutlet]({{< relref "cableductoutlet.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PlacementPoint]({{< relref "placementpoint.md" >}}) | placementPoint | 0..1 | 0..* | <p> Specifies the <i>PlacementPoint</i> that represents this <i>CableDuctOutlet</i> in a PlaceableElementSpecification.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [CableDuctSpecification]({{< relref "cableductspecification.md" >}}) | 1 | outlet | 0..* |  |
